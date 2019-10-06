import CGLib
import CCairo
import CPango
import CGdkPixbuf
import CGdk
import CAtk
import CGtk
import GLib
import GLibObject
import GIO
import Pango
import Cairo
import PangoCairo
import GdkPixbuf
import Gdk
import Atk

// MARK: - GestureClass Record

/// The `GestureClassProtocol` protocol exposes the methods and properties of an underlying `GtkGestureClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GestureClass`.
/// Alternatively, use `GestureClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol GestureClassProtocol {
    /// Untyped pointer to the underlying `GtkGestureClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkGestureClass` instance.
    var _ptr: UnsafeMutablePointer<GtkGestureClass> { get }
}

/// The `GestureClassRef` type acts as a lightweight Swift reference to an underlying `GtkGestureClass` instance.
/// It exposes methods that can operate on this data type through `GestureClassProtocol` conformance.
/// Use `GestureClassRef` only as an `unowned` reference to an existing `GtkGestureClass` instance.
///

public struct GestureClassRef: GestureClassProtocol {
    /// Untyped pointer to the underlying `GtkGestureClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension GestureClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkGestureClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `GestureClassProtocol`
    init<T: GestureClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `GestureClass` type acts as an owner of an underlying `GtkGestureClass` instance.
/// It provides the methods that can operate on this data type through `GestureClassProtocol` conformance.
/// Use `GestureClass` as a strong reference or owner of a `GtkGestureClass` instance.
///

open class GestureClass: GestureClassProtocol {
    /// Untyped pointer to the underlying `GtkGestureClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `GestureClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkGestureClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `GestureClassProtocol`
    /// `GtkGestureClass` does not allow reference counting.
    public convenience init<T: GestureClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkGestureClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkGestureClass`.
    deinit {
        // no reference counting for GtkGestureClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkGestureClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkGestureClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkGestureClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkGestureClass>(opaquePointer))
    }



}

// MARK: - no GestureClass properties

// MARK: - no signals


public extension GestureClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGestureClass` instance.
    var _ptr: UnsafeMutablePointer<GtkGestureClass> { return ptr.assumingMemoryBound(to: GtkGestureClass.self) }

}



// MARK: - GestureDragClass Record

/// The `GestureDragClassProtocol` protocol exposes the methods and properties of an underlying `GtkGestureDragClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GestureDragClass`.
/// Alternatively, use `GestureDragClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol GestureDragClassProtocol {
    /// Untyped pointer to the underlying `GtkGestureDragClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkGestureDragClass` instance.
    var _ptr: UnsafeMutablePointer<GtkGestureDragClass> { get }
}

/// The `GestureDragClassRef` type acts as a lightweight Swift reference to an underlying `GtkGestureDragClass` instance.
/// It exposes methods that can operate on this data type through `GestureDragClassProtocol` conformance.
/// Use `GestureDragClassRef` only as an `unowned` reference to an existing `GtkGestureDragClass` instance.
///

public struct GestureDragClassRef: GestureDragClassProtocol {
    /// Untyped pointer to the underlying `GtkGestureDragClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension GestureDragClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkGestureDragClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `GestureDragClassProtocol`
    init<T: GestureDragClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureDragClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureDragClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureDragClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureDragClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureDragClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `GestureDragClass` type acts as an owner of an underlying `GtkGestureDragClass` instance.
/// It provides the methods that can operate on this data type through `GestureDragClassProtocol` conformance.
/// Use `GestureDragClass` as a strong reference or owner of a `GtkGestureDragClass` instance.
///

open class GestureDragClass: GestureDragClassProtocol {
    /// Untyped pointer to the underlying `GtkGestureDragClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `GestureDragClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkGestureDragClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `GestureDragClassProtocol`
    /// `GtkGestureDragClass` does not allow reference counting.
    public convenience init<T: GestureDragClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkGestureDragClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkGestureDragClass`.
    deinit {
        // no reference counting for GtkGestureDragClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureDragClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkGestureDragClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureDragClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkGestureDragClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureDragClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkGestureDragClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureDragClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkGestureDragClass>(opaquePointer))
    }



}

// MARK: - no GestureDragClass properties

// MARK: - no signals


public extension GestureDragClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGestureDragClass` instance.
    var _ptr: UnsafeMutablePointer<GtkGestureDragClass> { return ptr.assumingMemoryBound(to: GtkGestureDragClass.self) }

}



// MARK: - GestureLongPressClass Record

/// The `GestureLongPressClassProtocol` protocol exposes the methods and properties of an underlying `GtkGestureLongPressClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GestureLongPressClass`.
/// Alternatively, use `GestureLongPressClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol GestureLongPressClassProtocol {
    /// Untyped pointer to the underlying `GtkGestureLongPressClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkGestureLongPressClass` instance.
    var _ptr: UnsafeMutablePointer<GtkGestureLongPressClass> { get }
}

/// The `GestureLongPressClassRef` type acts as a lightweight Swift reference to an underlying `GtkGestureLongPressClass` instance.
/// It exposes methods that can operate on this data type through `GestureLongPressClassProtocol` conformance.
/// Use `GestureLongPressClassRef` only as an `unowned` reference to an existing `GtkGestureLongPressClass` instance.
///

public struct GestureLongPressClassRef: GestureLongPressClassProtocol {
    /// Untyped pointer to the underlying `GtkGestureLongPressClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension GestureLongPressClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkGestureLongPressClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `GestureLongPressClassProtocol`
    init<T: GestureLongPressClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureLongPressClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureLongPressClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureLongPressClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureLongPressClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureLongPressClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `GestureLongPressClass` type acts as an owner of an underlying `GtkGestureLongPressClass` instance.
/// It provides the methods that can operate on this data type through `GestureLongPressClassProtocol` conformance.
/// Use `GestureLongPressClass` as a strong reference or owner of a `GtkGestureLongPressClass` instance.
///

open class GestureLongPressClass: GestureLongPressClassProtocol {
    /// Untyped pointer to the underlying `GtkGestureLongPressClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `GestureLongPressClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkGestureLongPressClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `GestureLongPressClassProtocol`
    /// `GtkGestureLongPressClass` does not allow reference counting.
    public convenience init<T: GestureLongPressClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkGestureLongPressClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkGestureLongPressClass`.
    deinit {
        // no reference counting for GtkGestureLongPressClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureLongPressClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkGestureLongPressClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureLongPressClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkGestureLongPressClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureLongPressClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkGestureLongPressClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureLongPressClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkGestureLongPressClass>(opaquePointer))
    }



}

// MARK: - no GestureLongPressClass properties

// MARK: - no signals


public extension GestureLongPressClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGestureLongPressClass` instance.
    var _ptr: UnsafeMutablePointer<GtkGestureLongPressClass> { return ptr.assumingMemoryBound(to: GtkGestureLongPressClass.self) }

}



// MARK: - GestureMultiPressClass Record

/// The `GestureMultiPressClassProtocol` protocol exposes the methods and properties of an underlying `GtkGestureMultiPressClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GestureMultiPressClass`.
/// Alternatively, use `GestureMultiPressClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol GestureMultiPressClassProtocol {
    /// Untyped pointer to the underlying `GtkGestureMultiPressClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkGestureMultiPressClass` instance.
    var _ptr: UnsafeMutablePointer<GtkGestureMultiPressClass> { get }
}

/// The `GestureMultiPressClassRef` type acts as a lightweight Swift reference to an underlying `GtkGestureMultiPressClass` instance.
/// It exposes methods that can operate on this data type through `GestureMultiPressClassProtocol` conformance.
/// Use `GestureMultiPressClassRef` only as an `unowned` reference to an existing `GtkGestureMultiPressClass` instance.
///

public struct GestureMultiPressClassRef: GestureMultiPressClassProtocol {
    /// Untyped pointer to the underlying `GtkGestureMultiPressClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension GestureMultiPressClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkGestureMultiPressClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `GestureMultiPressClassProtocol`
    init<T: GestureMultiPressClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureMultiPressClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureMultiPressClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureMultiPressClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureMultiPressClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureMultiPressClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `GestureMultiPressClass` type acts as an owner of an underlying `GtkGestureMultiPressClass` instance.
/// It provides the methods that can operate on this data type through `GestureMultiPressClassProtocol` conformance.
/// Use `GestureMultiPressClass` as a strong reference or owner of a `GtkGestureMultiPressClass` instance.
///

open class GestureMultiPressClass: GestureMultiPressClassProtocol {
    /// Untyped pointer to the underlying `GtkGestureMultiPressClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `GestureMultiPressClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkGestureMultiPressClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `GestureMultiPressClassProtocol`
    /// `GtkGestureMultiPressClass` does not allow reference counting.
    public convenience init<T: GestureMultiPressClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkGestureMultiPressClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkGestureMultiPressClass`.
    deinit {
        // no reference counting for GtkGestureMultiPressClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureMultiPressClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkGestureMultiPressClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureMultiPressClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkGestureMultiPressClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureMultiPressClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkGestureMultiPressClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureMultiPressClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkGestureMultiPressClass>(opaquePointer))
    }



}

// MARK: - no GestureMultiPressClass properties

// MARK: - no signals


public extension GestureMultiPressClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGestureMultiPressClass` instance.
    var _ptr: UnsafeMutablePointer<GtkGestureMultiPressClass> { return ptr.assumingMemoryBound(to: GtkGestureMultiPressClass.self) }

}



// MARK: - GesturePanClass Record

/// The `GesturePanClassProtocol` protocol exposes the methods and properties of an underlying `GtkGesturePanClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GesturePanClass`.
/// Alternatively, use `GesturePanClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol GesturePanClassProtocol {
    /// Untyped pointer to the underlying `GtkGesturePanClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkGesturePanClass` instance.
    var _ptr: UnsafeMutablePointer<GtkGesturePanClass> { get }
}

/// The `GesturePanClassRef` type acts as a lightweight Swift reference to an underlying `GtkGesturePanClass` instance.
/// It exposes methods that can operate on this data type through `GesturePanClassProtocol` conformance.
/// Use `GesturePanClassRef` only as an `unowned` reference to an existing `GtkGesturePanClass` instance.
///

public struct GesturePanClassRef: GesturePanClassProtocol {
    /// Untyped pointer to the underlying `GtkGesturePanClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension GesturePanClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkGesturePanClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `GesturePanClassProtocol`
    init<T: GesturePanClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GesturePanClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GesturePanClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GesturePanClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GesturePanClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GesturePanClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `GesturePanClass` type acts as an owner of an underlying `GtkGesturePanClass` instance.
/// It provides the methods that can operate on this data type through `GesturePanClassProtocol` conformance.
/// Use `GesturePanClass` as a strong reference or owner of a `GtkGesturePanClass` instance.
///

open class GesturePanClass: GesturePanClassProtocol {
    /// Untyped pointer to the underlying `GtkGesturePanClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `GesturePanClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkGesturePanClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `GesturePanClassProtocol`
    /// `GtkGesturePanClass` does not allow reference counting.
    public convenience init<T: GesturePanClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkGesturePanClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkGesturePanClass`.
    deinit {
        // no reference counting for GtkGesturePanClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GesturePanClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkGesturePanClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GesturePanClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkGesturePanClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GesturePanClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkGesturePanClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GesturePanClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkGesturePanClass>(opaquePointer))
    }



}

// MARK: - no GesturePanClass properties

// MARK: - no signals


public extension GesturePanClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGesturePanClass` instance.
    var _ptr: UnsafeMutablePointer<GtkGesturePanClass> { return ptr.assumingMemoryBound(to: GtkGesturePanClass.self) }

}



// MARK: - GestureRotateClass Record

/// The `GestureRotateClassProtocol` protocol exposes the methods and properties of an underlying `GtkGestureRotateClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GestureRotateClass`.
/// Alternatively, use `GestureRotateClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol GestureRotateClassProtocol {
    /// Untyped pointer to the underlying `GtkGestureRotateClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkGestureRotateClass` instance.
    var _ptr: UnsafeMutablePointer<GtkGestureRotateClass> { get }
}

/// The `GestureRotateClassRef` type acts as a lightweight Swift reference to an underlying `GtkGestureRotateClass` instance.
/// It exposes methods that can operate on this data type through `GestureRotateClassProtocol` conformance.
/// Use `GestureRotateClassRef` only as an `unowned` reference to an existing `GtkGestureRotateClass` instance.
///

public struct GestureRotateClassRef: GestureRotateClassProtocol {
    /// Untyped pointer to the underlying `GtkGestureRotateClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension GestureRotateClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkGestureRotateClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `GestureRotateClassProtocol`
    init<T: GestureRotateClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureRotateClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureRotateClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureRotateClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureRotateClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureRotateClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `GestureRotateClass` type acts as an owner of an underlying `GtkGestureRotateClass` instance.
/// It provides the methods that can operate on this data type through `GestureRotateClassProtocol` conformance.
/// Use `GestureRotateClass` as a strong reference or owner of a `GtkGestureRotateClass` instance.
///

open class GestureRotateClass: GestureRotateClassProtocol {
    /// Untyped pointer to the underlying `GtkGestureRotateClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `GestureRotateClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkGestureRotateClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `GestureRotateClassProtocol`
    /// `GtkGestureRotateClass` does not allow reference counting.
    public convenience init<T: GestureRotateClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkGestureRotateClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkGestureRotateClass`.
    deinit {
        // no reference counting for GtkGestureRotateClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureRotateClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkGestureRotateClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureRotateClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkGestureRotateClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureRotateClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkGestureRotateClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureRotateClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkGestureRotateClass>(opaquePointer))
    }



}

// MARK: - no GestureRotateClass properties

// MARK: - no signals


public extension GestureRotateClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGestureRotateClass` instance.
    var _ptr: UnsafeMutablePointer<GtkGestureRotateClass> { return ptr.assumingMemoryBound(to: GtkGestureRotateClass.self) }

}



// MARK: - GestureSingleClass Record

/// The `GestureSingleClassProtocol` protocol exposes the methods and properties of an underlying `GtkGestureSingleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GestureSingleClass`.
/// Alternatively, use `GestureSingleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol GestureSingleClassProtocol {
    /// Untyped pointer to the underlying `GtkGestureSingleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkGestureSingleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkGestureSingleClass> { get }
}

/// The `GestureSingleClassRef` type acts as a lightweight Swift reference to an underlying `GtkGestureSingleClass` instance.
/// It exposes methods that can operate on this data type through `GestureSingleClassProtocol` conformance.
/// Use `GestureSingleClassRef` only as an `unowned` reference to an existing `GtkGestureSingleClass` instance.
///

public struct GestureSingleClassRef: GestureSingleClassProtocol {
    /// Untyped pointer to the underlying `GtkGestureSingleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension GestureSingleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkGestureSingleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `GestureSingleClassProtocol`
    init<T: GestureSingleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSingleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSingleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSingleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSingleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSingleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `GestureSingleClass` type acts as an owner of an underlying `GtkGestureSingleClass` instance.
/// It provides the methods that can operate on this data type through `GestureSingleClassProtocol` conformance.
/// Use `GestureSingleClass` as a strong reference or owner of a `GtkGestureSingleClass` instance.
///

open class GestureSingleClass: GestureSingleClassProtocol {
    /// Untyped pointer to the underlying `GtkGestureSingleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `GestureSingleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkGestureSingleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `GestureSingleClassProtocol`
    /// `GtkGestureSingleClass` does not allow reference counting.
    public convenience init<T: GestureSingleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkGestureSingleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkGestureSingleClass`.
    deinit {
        // no reference counting for GtkGestureSingleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSingleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkGestureSingleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSingleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkGestureSingleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSingleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkGestureSingleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSingleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkGestureSingleClass>(opaquePointer))
    }



}

// MARK: - no GestureSingleClass properties

// MARK: - no signals


public extension GestureSingleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGestureSingleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkGestureSingleClass> { return ptr.assumingMemoryBound(to: GtkGestureSingleClass.self) }

}



// MARK: - GestureStylusClass Record

/// The `GestureStylusClassProtocol` protocol exposes the methods and properties of an underlying `GtkGestureStylusClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GestureStylusClass`.
/// Alternatively, use `GestureStylusClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol GestureStylusClassProtocol {
    /// Untyped pointer to the underlying `GtkGestureStylusClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkGestureStylusClass` instance.
    var _ptr: UnsafeMutablePointer<GtkGestureStylusClass> { get }
}

/// The `GestureStylusClassRef` type acts as a lightweight Swift reference to an underlying `GtkGestureStylusClass` instance.
/// It exposes methods that can operate on this data type through `GestureStylusClassProtocol` conformance.
/// Use `GestureStylusClassRef` only as an `unowned` reference to an existing `GtkGestureStylusClass` instance.
///

public struct GestureStylusClassRef: GestureStylusClassProtocol {
    /// Untyped pointer to the underlying `GtkGestureStylusClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension GestureStylusClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkGestureStylusClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `GestureStylusClassProtocol`
    init<T: GestureStylusClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureStylusClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureStylusClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureStylusClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureStylusClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureStylusClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `GestureStylusClass` type acts as an owner of an underlying `GtkGestureStylusClass` instance.
/// It provides the methods that can operate on this data type through `GestureStylusClassProtocol` conformance.
/// Use `GestureStylusClass` as a strong reference or owner of a `GtkGestureStylusClass` instance.
///

open class GestureStylusClass: GestureStylusClassProtocol {
    /// Untyped pointer to the underlying `GtkGestureStylusClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `GestureStylusClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkGestureStylusClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `GestureStylusClassProtocol`
    /// `GtkGestureStylusClass` does not allow reference counting.
    public convenience init<T: GestureStylusClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkGestureStylusClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkGestureStylusClass`.
    deinit {
        // no reference counting for GtkGestureStylusClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureStylusClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkGestureStylusClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureStylusClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkGestureStylusClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureStylusClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkGestureStylusClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureStylusClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkGestureStylusClass>(opaquePointer))
    }



}

// MARK: - no GestureStylusClass properties

// MARK: - no signals


public extension GestureStylusClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGestureStylusClass` instance.
    var _ptr: UnsafeMutablePointer<GtkGestureStylusClass> { return ptr.assumingMemoryBound(to: GtkGestureStylusClass.self) }

}



// MARK: - GestureSwipeClass Record

/// The `GestureSwipeClassProtocol` protocol exposes the methods and properties of an underlying `GtkGestureSwipeClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GestureSwipeClass`.
/// Alternatively, use `GestureSwipeClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol GestureSwipeClassProtocol {
    /// Untyped pointer to the underlying `GtkGestureSwipeClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkGestureSwipeClass` instance.
    var _ptr: UnsafeMutablePointer<GtkGestureSwipeClass> { get }
}

/// The `GestureSwipeClassRef` type acts as a lightweight Swift reference to an underlying `GtkGestureSwipeClass` instance.
/// It exposes methods that can operate on this data type through `GestureSwipeClassProtocol` conformance.
/// Use `GestureSwipeClassRef` only as an `unowned` reference to an existing `GtkGestureSwipeClass` instance.
///

public struct GestureSwipeClassRef: GestureSwipeClassProtocol {
    /// Untyped pointer to the underlying `GtkGestureSwipeClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension GestureSwipeClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkGestureSwipeClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `GestureSwipeClassProtocol`
    init<T: GestureSwipeClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSwipeClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSwipeClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSwipeClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSwipeClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSwipeClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `GestureSwipeClass` type acts as an owner of an underlying `GtkGestureSwipeClass` instance.
/// It provides the methods that can operate on this data type through `GestureSwipeClassProtocol` conformance.
/// Use `GestureSwipeClass` as a strong reference or owner of a `GtkGestureSwipeClass` instance.
///

open class GestureSwipeClass: GestureSwipeClassProtocol {
    /// Untyped pointer to the underlying `GtkGestureSwipeClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `GestureSwipeClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkGestureSwipeClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `GestureSwipeClassProtocol`
    /// `GtkGestureSwipeClass` does not allow reference counting.
    public convenience init<T: GestureSwipeClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkGestureSwipeClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkGestureSwipeClass`.
    deinit {
        // no reference counting for GtkGestureSwipeClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSwipeClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkGestureSwipeClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSwipeClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkGestureSwipeClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSwipeClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkGestureSwipeClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSwipeClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkGestureSwipeClass>(opaquePointer))
    }



}

// MARK: - no GestureSwipeClass properties

// MARK: - no signals


public extension GestureSwipeClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGestureSwipeClass` instance.
    var _ptr: UnsafeMutablePointer<GtkGestureSwipeClass> { return ptr.assumingMemoryBound(to: GtkGestureSwipeClass.self) }

}



// MARK: - GestureZoomClass Record

/// The `GestureZoomClassProtocol` protocol exposes the methods and properties of an underlying `GtkGestureZoomClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GestureZoomClass`.
/// Alternatively, use `GestureZoomClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol GestureZoomClassProtocol {
    /// Untyped pointer to the underlying `GtkGestureZoomClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkGestureZoomClass` instance.
    var _ptr: UnsafeMutablePointer<GtkGestureZoomClass> { get }
}

/// The `GestureZoomClassRef` type acts as a lightweight Swift reference to an underlying `GtkGestureZoomClass` instance.
/// It exposes methods that can operate on this data type through `GestureZoomClassProtocol` conformance.
/// Use `GestureZoomClassRef` only as an `unowned` reference to an existing `GtkGestureZoomClass` instance.
///

public struct GestureZoomClassRef: GestureZoomClassProtocol {
    /// Untyped pointer to the underlying `GtkGestureZoomClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension GestureZoomClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkGestureZoomClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `GestureZoomClassProtocol`
    init<T: GestureZoomClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureZoomClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureZoomClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureZoomClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureZoomClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureZoomClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `GestureZoomClass` type acts as an owner of an underlying `GtkGestureZoomClass` instance.
/// It provides the methods that can operate on this data type through `GestureZoomClassProtocol` conformance.
/// Use `GestureZoomClass` as a strong reference or owner of a `GtkGestureZoomClass` instance.
///

open class GestureZoomClass: GestureZoomClassProtocol {
    /// Untyped pointer to the underlying `GtkGestureZoomClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `GestureZoomClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkGestureZoomClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `GestureZoomClassProtocol`
    /// `GtkGestureZoomClass` does not allow reference counting.
    public convenience init<T: GestureZoomClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkGestureZoomClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkGestureZoomClass`.
    deinit {
        // no reference counting for GtkGestureZoomClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureZoomClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkGestureZoomClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureZoomClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkGestureZoomClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureZoomClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkGestureZoomClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureZoomClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkGestureZoomClass>(opaquePointer))
    }



}

// MARK: - no GestureZoomClass properties

// MARK: - no signals


public extension GestureZoomClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGestureZoomClass` instance.
    var _ptr: UnsafeMutablePointer<GtkGestureZoomClass> { return ptr.assumingMemoryBound(to: GtkGestureZoomClass.self) }

}



// MARK: - Gradient Record

/// The `GradientProtocol` protocol exposes the methods and properties of an underlying `GtkGradient` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Gradient`.
/// Alternatively, use `GradientRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkGradient is a boxed type that represents a gradient.
/// It is the result of parsing a
/// [gradient expression](#gtkcssprovider-gradients).
/// To obtain the gradient represented by a GtkGradient, it has to
/// be resolved with `gtk_gradient_resolve()`, which replaces all
/// symbolic color references by the colors they refer to (in a given
/// context) and constructs a `cairo_pattern_t` value.
/// 
/// It is not normally necessary to deal directly with `GtkGradients`,
/// since they are mostly used behind the scenes by `GtkStyleContext` and
/// `GtkCssProvider`.
/// 
/// `GtkGradient` is deprecated. It was used internally by GTK’s CSS engine
/// to represent gradients. As its handling is not conforming to modern
/// web standards, it is not used anymore. If you want to use gradients in
/// your own code, please use Cairo directly.
public protocol GradientProtocol {
    /// Untyped pointer to the underlying `GtkGradient` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkGradient` instance.
    var gradient_ptr: UnsafeMutablePointer<GtkGradient> { get }
}

/// The `GradientRef` type acts as a lightweight Swift reference to an underlying `GtkGradient` instance.
/// It exposes methods that can operate on this data type through `GradientProtocol` conformance.
/// Use `GradientRef` only as an `unowned` reference to an existing `GtkGradient` instance.
///
/// GtkGradient is a boxed type that represents a gradient.
/// It is the result of parsing a
/// [gradient expression](#gtkcssprovider-gradients).
/// To obtain the gradient represented by a GtkGradient, it has to
/// be resolved with `gtk_gradient_resolve()`, which replaces all
/// symbolic color references by the colors they refer to (in a given
/// context) and constructs a `cairo_pattern_t` value.
/// 
/// It is not normally necessary to deal directly with `GtkGradients`,
/// since they are mostly used behind the scenes by `GtkStyleContext` and
/// `GtkCssProvider`.
/// 
/// `GtkGradient` is deprecated. It was used internally by GTK’s CSS engine
/// to represent gradients. As its handling is not conforming to modern
/// web standards, it is not used anymore. If you want to use gradients in
/// your own code, please use Cairo directly.
public struct GradientRef: GradientProtocol {
    /// Untyped pointer to the underlying `GtkGradient` instance.
    /// For type-safe access, use the generated, typed pointer `gradient_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension GradientRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkGradient>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `GradientProtocol`
    init<T: GradientProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GradientProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GradientProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GradientProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GradientProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GradientProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new linear gradient along the line defined by (x0, y0) and (x1, y1). Before using the gradient
    /// a number of stop colors must be added through `gtk_gradient_add_color_stop()`.
    ///
    /// **new_linear is deprecated:**
    /// #GtkGradient is deprecated.
    @available(*, deprecated) init(linear x0: gdouble, y0: gdouble, x1: gdouble, y1: gdouble) {
        let rv = gtk_gradient_new_linear(x0, y0, x1, y1)
        self.init(cast(rv))
    }

    /// Creates a new radial gradient along the two circles defined by (x0, y0, radius0) and
    /// (x1, y1, radius1). Before using the gradient a number of stop colors must be added
    /// through `gtk_gradient_add_color_stop()`.
    ///
    /// **new_radial is deprecated:**
    /// #GtkGradient is deprecated.
    @available(*, deprecated) init(radial x0: gdouble, y0: gdouble, radius0: gdouble, x1: gdouble, y1: gdouble, radius1: gdouble) {
        let rv = gtk_gradient_new_radial(x0, y0, radius0, x1, y1, radius1)
        self.init(cast(rv))
    }
    /// Creates a new linear gradient along the line defined by (x0, y0) and (x1, y1). Before using the gradient
    /// a number of stop colors must be added through `gtk_gradient_add_color_stop()`.
    ///
    /// **new_linear is deprecated:**
    /// #GtkGradient is deprecated.
    @available(*, deprecated) static func new(linear x0: gdouble, y0: gdouble, x1: gdouble, y1: gdouble) -> GradientRef! {
        let rv = gtk_gradient_new_linear(x0, y0, x1, y1)
        return rv.map { GradientRef(cast($0)) }
    }

    /// Creates a new radial gradient along the two circles defined by (x0, y0, radius0) and
    /// (x1, y1, radius1). Before using the gradient a number of stop colors must be added
    /// through `gtk_gradient_add_color_stop()`.
    ///
    /// **new_radial is deprecated:**
    /// #GtkGradient is deprecated.
    @available(*, deprecated) static func new(radial x0: gdouble, y0: gdouble, radius0: gdouble, x1: gdouble, y1: gdouble, radius1: gdouble) -> GradientRef! {
        let rv = gtk_gradient_new_radial(x0, y0, radius0, x1, y1, radius1)
        return rv.map { GradientRef(cast($0)) }
    }
}

/// The `Gradient` type acts as a reference-counted owner of an underlying `GtkGradient` instance.
/// It provides the methods that can operate on this data type through `GradientProtocol` conformance.
/// Use `Gradient` as a strong reference or owner of a `GtkGradient` instance.
///
/// GtkGradient is a boxed type that represents a gradient.
/// It is the result of parsing a
/// [gradient expression](#gtkcssprovider-gradients).
/// To obtain the gradient represented by a GtkGradient, it has to
/// be resolved with `gtk_gradient_resolve()`, which replaces all
/// symbolic color references by the colors they refer to (in a given
/// context) and constructs a `cairo_pattern_t` value.
/// 
/// It is not normally necessary to deal directly with `GtkGradients`,
/// since they are mostly used behind the scenes by `GtkStyleContext` and
/// `GtkCssProvider`.
/// 
/// `GtkGradient` is deprecated. It was used internally by GTK’s CSS engine
/// to represent gradients. As its handling is not conforming to modern
/// web standards, it is not used anymore. If you want to use gradients in
/// your own code, please use Cairo directly.
open class Gradient: GradientProtocol {
    /// Untyped pointer to the underlying `GtkGradient` instance.
    /// For type-safe access, use the generated, typed pointer `gradient_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Gradient` instance.
    public init(_ op: UnsafeMutablePointer<GtkGradient>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `GradientProtocol`
    /// Will retain `GtkGradient`.
    public convenience init<T: GradientProtocol>(_ other: T) {
        self.init(cast(other.gradient_ptr))
        g_object_ref(cast(gradient_ptr))
    }

    /// Releases the underlying `GtkGradient` instance using `g_object_unref`.
    deinit {
        g_object_unref(cast(gradient_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GradientProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkGradient.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GradientProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkGradient.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GradientProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkGradient.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GradientProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkGradient>(opaquePointer))
    }

    /// Creates a new linear gradient along the line defined by (x0, y0) and (x1, y1). Before using the gradient
    /// a number of stop colors must be added through `gtk_gradient_add_color_stop()`.
    ///
    /// **new_linear is deprecated:**
    /// #GtkGradient is deprecated.
    @available(*, deprecated) public convenience init(linear x0: gdouble, y0: gdouble, x1: gdouble, y1: gdouble) {
        let rv = gtk_gradient_new_linear(x0, y0, x1, y1)
        self.init(cast(rv))
    }

    /// Creates a new radial gradient along the two circles defined by (x0, y0, radius0) and
    /// (x1, y1, radius1). Before using the gradient a number of stop colors must be added
    /// through `gtk_gradient_add_color_stop()`.
    ///
    /// **new_radial is deprecated:**
    /// #GtkGradient is deprecated.
    @available(*, deprecated) public convenience init(radial x0: gdouble, y0: gdouble, radius0: gdouble, x1: gdouble, y1: gdouble, radius1: gdouble) {
        let rv = gtk_gradient_new_radial(x0, y0, radius0, x1, y1, radius1)
        self.init(cast(rv))
    }

    /// Creates a new linear gradient along the line defined by (x0, y0) and (x1, y1). Before using the gradient
    /// a number of stop colors must be added through `gtk_gradient_add_color_stop()`.
    ///
    /// **new_linear is deprecated:**
    /// #GtkGradient is deprecated.
    @available(*, deprecated) public static func new(linear x0: gdouble, y0: gdouble, x1: gdouble, y1: gdouble) -> Gradient! {
        let rv = gtk_gradient_new_linear(x0, y0, x1, y1)
        return rv.map { Gradient(cast($0)) }
    }

    /// Creates a new radial gradient along the two circles defined by (x0, y0, radius0) and
    /// (x1, y1, radius1). Before using the gradient a number of stop colors must be added
    /// through `gtk_gradient_add_color_stop()`.
    ///
    /// **new_radial is deprecated:**
    /// #GtkGradient is deprecated.
    @available(*, deprecated) public static func new(radial x0: gdouble, y0: gdouble, radius0: gdouble, x1: gdouble, y1: gdouble, radius1: gdouble) -> Gradient! {
        let rv = gtk_gradient_new_radial(x0, y0, radius0, x1, y1, radius1)
        return rv.map { Gradient(cast($0)) }
    }

}

// MARK: - no Gradient properties

// MARK: - no signals


public extension GradientProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGradient` instance.
    var gradient_ptr: UnsafeMutablePointer<GtkGradient> { return ptr.assumingMemoryBound(to: GtkGradient.self) }

    /// Adds a stop color to `gradient`.
    ///
    /// **add_color_stop is deprecated:**
    /// #GtkGradient is deprecated.
    @available(*, deprecated) func addColorStop(offset: gdouble, color: SymbolicColorProtocol) {
        gtk_gradient_add_color_stop(cast(gradient_ptr), offset, cast(color.ptr))
    
    }

    /// Increases the reference count of `gradient`.
    ///
    /// **ref is deprecated:**
    /// #GtkGradient is deprecated.
    @available(*, deprecated) func ref() -> UnsafeMutablePointer<GtkGradient>! {
        let rv = g_object_ref(cast(gradient_ptr))
        return cast(rv)
    }

    /// If `gradient` is resolvable, `resolved_gradient` will be filled in
    /// with the resolved gradient as a cairo_pattern_t, and `true` will
    /// be returned. Generally, if `gradient` can’t be resolved, it is
    /// due to it being defined on top of a named color that doesn't
    /// exist in `props`.
    ///
    /// **resolve is deprecated:**
    /// #GtkGradient is deprecated.
    @available(*, deprecated) func resolve(props: StylePropertiesProtocol, resolvedGradient resolved_gradient: PatternProtocol) -> Bool {
        let rv = gtk_gradient_resolve(cast(gradient_ptr), cast(props.ptr), cast(resolved_gradient.ptr))
        return Bool(rv != 0)
    }

    @available(*, deprecated) func resolveFor(context: StyleContextProtocol) -> UnsafeMutablePointer<cairo_pattern_t>! {
        let rv = gtk_gradient_resolve_for_context(cast(gradient_ptr), cast(context.ptr))
        return cast(rv)
    }

    /// Creates a string representation for `gradient` that is suitable
    /// for using in GTK CSS files.
    ///
    /// **to_string is deprecated:**
    /// #GtkGradient is deprecated.
    @available(*, deprecated) func toString() -> String! {
        let rv = gtk_gradient_to_string(cast(gradient_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Decreases the reference count of `gradient`, freeing its memory
    /// if the reference count reaches 0.
    ///
    /// **unref is deprecated:**
    /// #GtkGradient is deprecated.
    @available(*, deprecated) func unref() {
        g_object_unref(cast(gradient_ptr))
    
    }
}



// MARK: - GridClass Record

/// The `GridClassProtocol` protocol exposes the methods and properties of an underlying `GtkGridClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GridClass`.
/// Alternatively, use `GridClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol GridClassProtocol {
    /// Untyped pointer to the underlying `GtkGridClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkGridClass` instance.
    var _ptr: UnsafeMutablePointer<GtkGridClass> { get }
}

/// The `GridClassRef` type acts as a lightweight Swift reference to an underlying `GtkGridClass` instance.
/// It exposes methods that can operate on this data type through `GridClassProtocol` conformance.
/// Use `GridClassRef` only as an `unowned` reference to an existing `GtkGridClass` instance.
///

public struct GridClassRef: GridClassProtocol {
    /// Untyped pointer to the underlying `GtkGridClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension GridClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkGridClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `GridClassProtocol`
    init<T: GridClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `GridClass` type acts as an owner of an underlying `GtkGridClass` instance.
/// It provides the methods that can operate on this data type through `GridClassProtocol` conformance.
/// Use `GridClass` as a strong reference or owner of a `GtkGridClass` instance.
///

open class GridClass: GridClassProtocol {
    /// Untyped pointer to the underlying `GtkGridClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `GridClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkGridClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `GridClassProtocol`
    /// `GtkGridClass` does not allow reference counting.
    public convenience init<T: GridClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkGridClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkGridClass`.
    deinit {
        // no reference counting for GtkGridClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkGridClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkGridClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkGridClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkGridClass>(opaquePointer))
    }



}

// MARK: - no GridClass properties

// MARK: - no signals


public extension GridClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGridClass` instance.
    var _ptr: UnsafeMutablePointer<GtkGridClass> { return ptr.assumingMemoryBound(to: GtkGridClass.self) }

}



// MARK: - GridPrivate Record

/// The `GridPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkGridPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GridPrivate`.
/// Alternatively, use `GridPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol GridPrivateProtocol {
    /// Untyped pointer to the underlying `GtkGridPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkGridPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkGridPrivate> { get }
}

/// The `GridPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkGridPrivate` instance.
/// It exposes methods that can operate on this data type through `GridPrivateProtocol` conformance.
/// Use `GridPrivateRef` only as an `unowned` reference to an existing `GtkGridPrivate` instance.
///

public struct GridPrivateRef: GridPrivateProtocol {
    /// Untyped pointer to the underlying `GtkGridPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension GridPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkGridPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `GridPrivateProtocol`
    init<T: GridPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `GridPrivate` type acts as an owner of an underlying `GtkGridPrivate` instance.
/// It provides the methods that can operate on this data type through `GridPrivateProtocol` conformance.
/// Use `GridPrivate` as a strong reference or owner of a `GtkGridPrivate` instance.
///

open class GridPrivate: GridPrivateProtocol {
    /// Untyped pointer to the underlying `GtkGridPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `GridPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkGridPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `GridPrivateProtocol`
    /// `GtkGridPrivate` does not allow reference counting.
    public convenience init<T: GridPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkGridPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkGridPrivate`.
    deinit {
        // no reference counting for GtkGridPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkGridPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkGridPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkGridPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkGridPrivate>(opaquePointer))
    }



}

// MARK: - no GridPrivate properties

// MARK: - no signals


public extension GridPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGridPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkGridPrivate> { return ptr.assumingMemoryBound(to: GtkGridPrivate.self) }

}



// MARK: - HBoxClass Record

/// The `HBoxClassProtocol` protocol exposes the methods and properties of an underlying `GtkHBoxClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `HBoxClass`.
/// Alternatively, use `HBoxClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol HBoxClassProtocol {
    /// Untyped pointer to the underlying `GtkHBoxClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkHBoxClass` instance.
    var _ptr: UnsafeMutablePointer<GtkHBoxClass> { get }
}

/// The `HBoxClassRef` type acts as a lightweight Swift reference to an underlying `GtkHBoxClass` instance.
/// It exposes methods that can operate on this data type through `HBoxClassProtocol` conformance.
/// Use `HBoxClassRef` only as an `unowned` reference to an existing `GtkHBoxClass` instance.
///

public struct HBoxClassRef: HBoxClassProtocol {
    /// Untyped pointer to the underlying `GtkHBoxClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension HBoxClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkHBoxClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `HBoxClassProtocol`
    init<T: HBoxClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HBoxClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HBoxClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HBoxClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HBoxClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HBoxClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `HBoxClass` type acts as an owner of an underlying `GtkHBoxClass` instance.
/// It provides the methods that can operate on this data type through `HBoxClassProtocol` conformance.
/// Use `HBoxClass` as a strong reference or owner of a `GtkHBoxClass` instance.
///

open class HBoxClass: HBoxClassProtocol {
    /// Untyped pointer to the underlying `GtkHBoxClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `HBoxClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkHBoxClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `HBoxClassProtocol`
    /// `GtkHBoxClass` does not allow reference counting.
    public convenience init<T: HBoxClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkHBoxClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkHBoxClass`.
    deinit {
        // no reference counting for GtkHBoxClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HBoxClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkHBoxClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HBoxClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkHBoxClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HBoxClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkHBoxClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HBoxClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkHBoxClass>(opaquePointer))
    }



}

// MARK: - no HBoxClass properties

// MARK: - no signals


public extension HBoxClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkHBoxClass` instance.
    var _ptr: UnsafeMutablePointer<GtkHBoxClass> { return ptr.assumingMemoryBound(to: GtkHBoxClass.self) }

}



