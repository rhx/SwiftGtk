//
//  GLibObject.swift
//  GObject
//
//  Created by Rene Hexel on 20/06/2016.
//  Copyright © 2016, 2017, 2018, 2019, 2020, 2021 Rene Hexel.  All rights reserved.
//
import CGLib
import GLib
import GObjectCHelpers

/// Union of primitive glib values
public typealias GObjectTypeValueUnion = GObjectCHelpers.GObjectTypeValueUnion

/// Protocol for signal name enums
public protocol SignalNameProtocol: Hashable {
    var rawValue: String { get }
}

/// Protocol extension for signal name enums
public extension SignalNameProtocol {
    @inlinable var name: String { return rawValue }
    /// Hashable conformance
    @inlinable func hash(into hasher: inout Hasher) {
        hasher.combine(rawValue)
    }
}

/// Protocol for property name enums
public protocol PropertyNameProtocol: Hashable {
    var rawValue: String { get }
}

/// Protocol extension for signal name enums
public extension PropertyNameProtocol {
    @inlinable var name: String { return rawValue }
    /// Hashable conformance
    @inlinable func hash(into hasher: inout Hasher) {
        hasher.combine(rawValue)
    }
}

/// Type representing the name of a property
public struct PropertyName {
    public let name: String
    @inlinable public init(_ n: String) { name = n }
    @inlinable public init<T: PropertyNameProtocol>(_ p: T) { name = p.rawValue }
}

extension PropertyName: PropertyNameProtocol {
    /// Returns a Boolean value indicating whether two values are equal.
    ///
    /// Equality is the inverse of inequality. For any values `a` and `b`,
    /// `a == b` implies that `a != b` is `false`.
    ///
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    @inlinable public static func ==(lhs: PropertyName, rhs: PropertyName) -> Bool {
        return lhs.name == rhs.name
    }

    /// Property name as a String
    @inlinable public var rawValue: String { return name }
}

extension PropertyName: ExpressibleByStringLiteral {
    public typealias UnicodeScalarLiteralType = String
    public typealias ExtendedGraphemeClusterLiteralType = String
    public typealias StringLiteralType = String

    @inlinable public init(stringLiteral value: StringLiteralType) { self.init(value) }
    @inlinable public init(extendedGraphemeClusterLiteral value: ExtendedGraphemeClusterLiteralType) { self.init(value) }
    @inlinable public init(unicodeScalarLiteral value: UnicodeScalarLiteralType) { self.init(value) }
}

/// A Void closure to use as a signal handler, that takes no parameters.
public typealias SignalHandler = () -> ()

/// A conversion closure transforming the first value into the second
/// This closure needs to return true if successful, or false otherwise
public typealias ValueTransformer = (ValueRef, ValueRef) -> Bool


/// Internal Class that wraps a binding to make sure it is retained
/// until no longer required
public class BindingHolder<S,T> {
    public let transform_from: (S, T) -> Bool
    public let transform_to:   (T, S) -> Bool

    @inlinable public init(_ transform_from: @escaping (S, T) -> Bool, _ transform_to: @escaping (T, S) -> Bool) {
        self.transform_from = transform_from
        self.transform_to   = transform_to
    }
}

/// Internal type for SignalHandler closure holder
public typealias SignalHandlerClosureHolder = ClosureHolder<Void,Void>

/// Internal type for a binding closure holder
public typealias BindingClosureHolder = BindingHolder<ValueRef, ValueRef>

/// Convenience extensions for Objects
public extension ObjectProtocol {
    /// Create a new instance of a given type
    ///
    /// - Parameter type: a type registered with g_type_register_*()
    /// - Returns: pointer to the instance of the given type
    @inlinable static func new(type: GType) -> gpointer! {
        return gpointer(g_object_new_with_properties(type, 0, nil, nil))
    }
    /// Create a reference to an instance of a given type
    ///
    /// - Parameter t: a type registered with g_type_register_*()
    /// - Returns: `ObjectRef` wrapping the pointer to the given type instance
    @inlinable static func newReferenceTo(instanceOf t: GType) -> ObjectRef! {
        let ptr: gpointer? = Self.new(type: t)
        return ptr.map { ObjectRef($0.assumingMemoryBound(to: GObject.self)) }
    }
    /// Create an instance of a given type
    ///
    /// - Parameter t: a type registered with g_type_register_*()
    /// - Returns: reference-counted object, wrapping the pointer to the given type instance
    @inlinable static func new(_ t: GType) -> Object! {
        let ptr: gpointer? = Self.new(type: t)
        return ptr.map { Object($0.assumingMemoryBound(to: GObject.self)) }
    }

    /// Connection helper function for signal handler closure
    @usableFromInline internal func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
        let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
        let callback = unsafeBitCast(handler, to: Callback.self)
        let rv = signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
            if let swift = UnsafeRawPointer($0) {
                let holder = Unmanaged<SignalHandlerClosureHolder>.fromOpaque(swift)
                holder.release()
            }
            _ = $1
        }, connectFlags: flags)
        return rv
    }

    /// Binding helper function for binding closure
    @usableFromInline internal func _bind<T: ObjectProtocol>(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .syncCreate, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
        let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
        let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
        let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
        let rv = bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
            if let swift = UnsafeRawPointer($0) {
                let holder = Unmanaged<BindingClosureHolder>.fromOpaque(swift)
                holder.release()
            }
        }
        return rv.map { BindingRef($0) }
    }

    /// Connects a (Void) -> Void closure or function to a typed signal for
    /// the receiver object.  Similar to `g_signal_connect()`, but allows
    /// to provide a Swift closure that can capture its surrounding context.
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - handler: A Swift closure to run whenever the given signal was emitted
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @discardableResult @inlinable func connect<S: SignalNameProtocol>(_ signal: S, flags f: ConnectFlags = ConnectFlags(0), handler: @escaping SignalHandler) -> Int {
        let rv = _connect(signal: signal.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            let call = holder.call
            call(())
        }
        return rv
    }

    /// Type-safe wrapper for `g_signal_connect_data()`.
    /// Connects a @convention(c) function to a typed signal for
    /// the receiver object.
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @discardableResult @inlinable func connectSignal<S: SignalNameProtocol>(_ signal: S, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer! = nil, destroyData destructor: GClosureNotify? = nil, handler: @escaping GCallback) -> Int {
        signalConnectData(detailedSignal: signal.name, cHandler: handler, data: userData, destroyData: destructor, connectFlags: f)
    }

    /// Creates a binding between @source_property on @source and @target_property
    /// on @target. Whenever the @source_property is changed the @target_property is
    /// updated using the same value. For instance:
    ///
    /// |[
    ///   g_object_bind_property (action, "active", widget, "sensitive", 0);
    /// ]|
    ///
    /// Will result in the "sensitive" property of the widget #GObject instance to be
    /// updated with the same value of the "active" property of the action #GObject
    /// instance.
    ///
    /// If @flags contains %G_BINDING_BIDIRECTIONAL then the binding will be mutual:
    /// if @target_property on @target changes then the @source_property on @source
    /// will be updated as well.
    ///
    /// The binding will automatically be removed when either the @source or the
    /// @target instances are finalized. To remove the binding without affecting the
    /// @source and the @target you can just call g_object_unref() on the returned
    /// #GBinding instance.
    ///
    /// A #GObject can have multiple bindings.
    @inlinable @discardableResult func bind<P: PropertyNameProtocol, Q: PropertyNameProtocol, T: ObjectProtocol>(_ source_property: P, target: T, property target_property: Q, flags: BindingFlags = .syncCreate) -> BindingRef! {
        guard let rv = g_object_bind_property(ptr, source_property.name, target.ptr, target_property.name, flags.value) else { return nil }
        return BindingRef(rv)
    }

    /// Complete version of bind().
    ///
    /// Creates a binding between @source_property on @source and @target_property
    /// on @target, allowing you to set the transformation functions to be used by
    /// the binding.
    ///
    /// If @flags contains %G_BINDING_BIDIRECTIONAL then the binding will be mutual:
    /// if @target_property on @target changes then the @source_property on @source
    /// will be updated as well. The @transform_from function is only used in case
    /// of bidirectional bindings, otherwise it will be ignored
    ///
    /// The binding will automatically be removed when either the @source or the
    /// @target instances are finalized. To remove the binding without affecting the
    /// @source and the @target you can just call g_object_unref() on the returned
    /// #GBinding instance.
    ///
    /// A #GObject can have multiple bindings.
    @inlinable @discardableResult func bind<P: PropertyNameProtocol, Q: PropertyNameProtocol, T: ObjectProtocol>(_ source_property: P, to target: T, property target_property: Q, flags f: BindingFlags = .syncCreate, transformFrom transform_from: @escaping ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping ValueTransformer) -> BindingRef! {
        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(ValueRef(raw: $1), ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(ValueRef(raw: $1), ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }

    /// Complete version of bind() with strongly typed transformers.
    ///
    /// Creates a binding between @source_property on @source and @target_property
    /// on @target, allowing you to set the transformation functions to be used by
    /// the binding.
    ///
    /// If @flags contains %G_BINDING_BIDIRECTIONAL then the binding will be mutual:
    /// if @target_property on @target changes then the @source_property on @source
    /// will be updated as well. The @transform_from function is only used in case
    /// of bidirectional bindings, otherwise it will be ignored
    ///
    /// The binding will automatically be removed when either the @source or the
    /// @target instances are finalized. To remove the binding without affecting the
    /// @source and the @target you can just call g_object_unref() on the returned
    /// #GBinding instance.
    ///
    /// A #GObject can have multiple bindings.
    @inlinable @discardableResult func bind<P: PropertyNameProtocol, Q: PropertyNameProtocol, T: ObjectProtocol, U, V>(_ source_property: P, to target: T, property target_property: Q, flags fl: BindingFlags = .syncCreate, convertFrom f: @escaping (U?) -> V? = { _ in nil }, convertTo g: @escaping (V?) -> U?) -> BindingRef! {
        let ft: ValueTransformer = { $0.transform(to: $1, f) }
        let gt: ValueTransformer = { $1.transform(to: $0, g) }
        return bind(source_property, to: target, property: target_property, flags: fl, transformFrom: ft, transformTo: gt)
    }

    /// Complete version of bind() with strongly typed transformers.
    ///
    /// Creates a binding between @source_property on @source and @target_property
    /// on @target, allowing you to set the transformation functions to be used by
    /// the binding.
    ///
    /// If @flags contains %G_BINDING_BIDIRECTIONAL then the binding will be mutual:
    /// if @target_property on @target changes then the @source_property on @source
    /// will be updated as well. The @transform_from function is only used in case
    /// of bidirectional bindings, otherwise it will be ignored
    ///
    /// The binding will automatically be removed when either the @source or the
    /// @target instances are finalized. To remove the binding without affecting the
    /// @source and the @target you can just call g_object_unref() on the returned
    /// #GBinding instance.
    ///
    /// A #GObject can have multiple bindings.
    @inlinable @discardableResult func bind<P: PropertyNameProtocol, Q: PropertyNameProtocol, T: ObjectProtocol, U, V>(_ source_property: P, to target: T, property target_property: Q, flags fl: BindingFlags = .syncCreate, convertFrom f: @escaping (U) -> V? = { _ in nil }, convertTo g: @escaping (V) -> U?) -> BindingRef! {
        let ft: ValueTransformer = {
            return $0.transform(to: $1, f)
        }
        let gt: ValueTransformer = {
            return $0.transform(to: $1, g)
        }
        return bind(source_property, to: target, property: target_property, flags: fl, transformFrom: ft, transformTo: gt)
    }
}

//MARK:- Swift Object

@usableFromInline let swiftObjKey = "swiftobj";

@usableFromInline let gtrue: gboolean = 1

@usableFromInline let gfalse: gboolean = 0

public extension GLibObject.ObjectProtocol {
	/// The swift wrapper for this object.
    @inlinable var swiftObj: AnyObject? {
		get {
            guard let pointer = getData(key: swiftObjKey) else { return nil }
            return Unmanaged<AnyObject>.fromOpaque(pointer).takeUnretainedValue()
		}
		nonmutating set {
			// Setting swift object to the already existing swiftObj is a no-op, in order to avoid duplicate toggleRefs, which never fire and thus cause reference cycles.
			guard let newValue = newValue, newValue !== swiftObj else {
				return
			}
			// Get a strong pointer to swiftObj
			let pointer = Unmanaged<AnyObject>.passRetained(newValue).toOpaque();
			setData(key: swiftObjKey, data: pointer);
			// In the majority of cases, swiftObj will be the swift wrapper for this gobject's c implementation. To prevent orphaning, these should be equivalent for memory management purposes; If one is referenced, the other is referenced. A naive way to implement this is to have both strongly reference each other, but this creates a strong reference cycle. Therefore, the wrapper has a strong toggle reference to the gobject, which tells us when there are other references. In this instance, the wrapper should be referenced, so the gobject strongly references it. Otherwise, the gobject weakly references it, allowing it, and thus the gobject, to be released once it is not referenced in swift-space.
			addToggleRef { (_, selfPointer, lastRef) in
				let swiftObjPointer = Unmanaged<AnyObject>.fromOpaque(g_object_get_data(selfPointer, swiftObjKey))
				switch lastRef {
				case gfalse:
					// Make the gobject strongly reference the wrapper.
					_ = swiftObjPointer.retain()
				case gtrue:
					// Make the gobject weakly reference the wrapper.
					swiftObjPointer.release()
				default:
					break
				}
			}
			// Release the regular reference so we don't have two references from the wrapper.
			unref()
		}
	}
	
}

public extension GLibObject.Object {
	/// Will set this swift instance to be the swiftObj.
    @inlinable func becomeSwiftObj() {
		swiftObj = self;
	}
}

/// Fetches the swift object from the given pointers, if any. Assume pointer is a GObject, so only call this function if this is known.
@inlinable public func swiftObj(fromRaw raw: UnsafeMutableRawPointer) -> AnyObject? {
	let objPointer = g_object_get_data(raw.assumingMemoryBound(to: GObject.self), swiftObjKey);
	if let objPointer = objPointer {
		return Unmanaged<AnyObject>.fromOpaque(objPointer).takeUnretainedValue();
	} else {
		return nil;
	}
}
