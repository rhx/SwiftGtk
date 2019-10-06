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

// MARK: - IMContextInfo Record

/// The `IMContextInfoProtocol` protocol exposes the methods and properties of an underlying `GtkIMContextInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IMContextInfo`.
/// Alternatively, use `IMContextInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Bookkeeping information about a loadable input method.
public protocol IMContextInfoProtocol {
    /// Untyped pointer to the underlying `GtkIMContextInfo` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkIMContextInfo` instance.
    var _ptr: UnsafeMutablePointer<GtkIMContextInfo> { get }
}

/// The `IMContextInfoRef` type acts as a lightweight Swift reference to an underlying `GtkIMContextInfo` instance.
/// It exposes methods that can operate on this data type through `IMContextInfoProtocol` conformance.
/// Use `IMContextInfoRef` only as an `unowned` reference to an existing `GtkIMContextInfo` instance.
///
/// Bookkeeping information about a loadable input method.
public struct IMContextInfoRef: IMContextInfoProtocol {
    /// Untyped pointer to the underlying `GtkIMContextInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension IMContextInfoRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkIMContextInfo>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `IMContextInfoProtocol`
    init<T: IMContextInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextInfoProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextInfoProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextInfoProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextInfoProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextInfoProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `IMContextInfo` type acts as an owner of an underlying `GtkIMContextInfo` instance.
/// It provides the methods that can operate on this data type through `IMContextInfoProtocol` conformance.
/// Use `IMContextInfo` as a strong reference or owner of a `GtkIMContextInfo` instance.
///
/// Bookkeeping information about a loadable input method.
open class IMContextInfo: IMContextInfoProtocol {
    /// Untyped pointer to the underlying `GtkIMContextInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `IMContextInfo` instance.
    public init(_ op: UnsafeMutablePointer<GtkIMContextInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `IMContextInfoProtocol`
    /// `GtkIMContextInfo` does not allow reference counting.
    public convenience init<T: IMContextInfoProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkIMContextInfo, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkIMContextInfo`.
    deinit {
        // no reference counting for GtkIMContextInfo, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextInfoProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkIMContextInfo.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextInfoProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkIMContextInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextInfoProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkIMContextInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextInfoProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkIMContextInfo>(opaquePointer))
    }



}

// MARK: - no IMContextInfo properties

// MARK: - no signals


public extension IMContextInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIMContextInfo` instance.
    var _ptr: UnsafeMutablePointer<GtkIMContextInfo> { return ptr.assumingMemoryBound(to: GtkIMContextInfo.self) }

}



// MARK: - IMContextSimpleClass Record

/// The `IMContextSimpleClassProtocol` protocol exposes the methods and properties of an underlying `GtkIMContextSimpleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IMContextSimpleClass`.
/// Alternatively, use `IMContextSimpleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol IMContextSimpleClassProtocol {
    /// Untyped pointer to the underlying `GtkIMContextSimpleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkIMContextSimpleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkIMContextSimpleClass> { get }
}

/// The `IMContextSimpleClassRef` type acts as a lightweight Swift reference to an underlying `GtkIMContextSimpleClass` instance.
/// It exposes methods that can operate on this data type through `IMContextSimpleClassProtocol` conformance.
/// Use `IMContextSimpleClassRef` only as an `unowned` reference to an existing `GtkIMContextSimpleClass` instance.
///

public struct IMContextSimpleClassRef: IMContextSimpleClassProtocol {
    /// Untyped pointer to the underlying `GtkIMContextSimpleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension IMContextSimpleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkIMContextSimpleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `IMContextSimpleClassProtocol`
    init<T: IMContextSimpleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `IMContextSimpleClass` type acts as an owner of an underlying `GtkIMContextSimpleClass` instance.
/// It provides the methods that can operate on this data type through `IMContextSimpleClassProtocol` conformance.
/// Use `IMContextSimpleClass` as a strong reference or owner of a `GtkIMContextSimpleClass` instance.
///

open class IMContextSimpleClass: IMContextSimpleClassProtocol {
    /// Untyped pointer to the underlying `GtkIMContextSimpleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `IMContextSimpleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkIMContextSimpleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `IMContextSimpleClassProtocol`
    /// `GtkIMContextSimpleClass` does not allow reference counting.
    public convenience init<T: IMContextSimpleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkIMContextSimpleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkIMContextSimpleClass`.
    deinit {
        // no reference counting for GtkIMContextSimpleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkIMContextSimpleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkIMContextSimpleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkIMContextSimpleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimpleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkIMContextSimpleClass>(opaquePointer))
    }



}

// MARK: - no IMContextSimpleClass properties

// MARK: - no signals


public extension IMContextSimpleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIMContextSimpleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkIMContextSimpleClass> { return ptr.assumingMemoryBound(to: GtkIMContextSimpleClass.self) }

}



// MARK: - IMContextSimplePrivate Record

/// The `IMContextSimplePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkIMContextSimplePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IMContextSimplePrivate`.
/// Alternatively, use `IMContextSimplePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol IMContextSimplePrivateProtocol {
    /// Untyped pointer to the underlying `GtkIMContextSimplePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkIMContextSimplePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkIMContextSimplePrivate> { get }
}

/// The `IMContextSimplePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkIMContextSimplePrivate` instance.
/// It exposes methods that can operate on this data type through `IMContextSimplePrivateProtocol` conformance.
/// Use `IMContextSimplePrivateRef` only as an `unowned` reference to an existing `GtkIMContextSimplePrivate` instance.
///

public struct IMContextSimplePrivateRef: IMContextSimplePrivateProtocol {
    /// Untyped pointer to the underlying `GtkIMContextSimplePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension IMContextSimplePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkIMContextSimplePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `IMContextSimplePrivateProtocol`
    init<T: IMContextSimplePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimplePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimplePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimplePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimplePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimplePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `IMContextSimplePrivate` type acts as an owner of an underlying `GtkIMContextSimplePrivate` instance.
/// It provides the methods that can operate on this data type through `IMContextSimplePrivateProtocol` conformance.
/// Use `IMContextSimplePrivate` as a strong reference or owner of a `GtkIMContextSimplePrivate` instance.
///

open class IMContextSimplePrivate: IMContextSimplePrivateProtocol {
    /// Untyped pointer to the underlying `GtkIMContextSimplePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `IMContextSimplePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkIMContextSimplePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `IMContextSimplePrivateProtocol`
    /// `GtkIMContextSimplePrivate` does not allow reference counting.
    public convenience init<T: IMContextSimplePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkIMContextSimplePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkIMContextSimplePrivate`.
    deinit {
        // no reference counting for GtkIMContextSimplePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimplePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkIMContextSimplePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimplePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkIMContextSimplePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimplePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkIMContextSimplePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextSimplePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkIMContextSimplePrivate>(opaquePointer))
    }



}

// MARK: - no IMContextSimplePrivate properties

// MARK: - no signals


public extension IMContextSimplePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIMContextSimplePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkIMContextSimplePrivate> { return ptr.assumingMemoryBound(to: GtkIMContextSimplePrivate.self) }

}



// MARK: - IMMulticontextClass Record

/// The `IMMulticontextClassProtocol` protocol exposes the methods and properties of an underlying `GtkIMMulticontextClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IMMulticontextClass`.
/// Alternatively, use `IMMulticontextClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol IMMulticontextClassProtocol {
    /// Untyped pointer to the underlying `GtkIMMulticontextClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkIMMulticontextClass` instance.
    var _ptr: UnsafeMutablePointer<GtkIMMulticontextClass> { get }
}

/// The `IMMulticontextClassRef` type acts as a lightweight Swift reference to an underlying `GtkIMMulticontextClass` instance.
/// It exposes methods that can operate on this data type through `IMMulticontextClassProtocol` conformance.
/// Use `IMMulticontextClassRef` only as an `unowned` reference to an existing `GtkIMMulticontextClass` instance.
///

public struct IMMulticontextClassRef: IMMulticontextClassProtocol {
    /// Untyped pointer to the underlying `GtkIMMulticontextClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension IMMulticontextClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkIMMulticontextClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `IMMulticontextClassProtocol`
    init<T: IMMulticontextClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `IMMulticontextClass` type acts as an owner of an underlying `GtkIMMulticontextClass` instance.
/// It provides the methods that can operate on this data type through `IMMulticontextClassProtocol` conformance.
/// Use `IMMulticontextClass` as a strong reference or owner of a `GtkIMMulticontextClass` instance.
///

open class IMMulticontextClass: IMMulticontextClassProtocol {
    /// Untyped pointer to the underlying `GtkIMMulticontextClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `IMMulticontextClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkIMMulticontextClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `IMMulticontextClassProtocol`
    /// `GtkIMMulticontextClass` does not allow reference counting.
    public convenience init<T: IMMulticontextClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkIMMulticontextClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkIMMulticontextClass`.
    deinit {
        // no reference counting for GtkIMMulticontextClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkIMMulticontextClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkIMMulticontextClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkIMMulticontextClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkIMMulticontextClass>(opaquePointer))
    }



}

// MARK: - no IMMulticontextClass properties

// MARK: - no signals


public extension IMMulticontextClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIMMulticontextClass` instance.
    var _ptr: UnsafeMutablePointer<GtkIMMulticontextClass> { return ptr.assumingMemoryBound(to: GtkIMMulticontextClass.self) }

}



// MARK: - IMMulticontextPrivate Record

/// The `IMMulticontextPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkIMMulticontextPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IMMulticontextPrivate`.
/// Alternatively, use `IMMulticontextPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol IMMulticontextPrivateProtocol {
    /// Untyped pointer to the underlying `GtkIMMulticontextPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkIMMulticontextPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkIMMulticontextPrivate> { get }
}

/// The `IMMulticontextPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkIMMulticontextPrivate` instance.
/// It exposes methods that can operate on this data type through `IMMulticontextPrivateProtocol` conformance.
/// Use `IMMulticontextPrivateRef` only as an `unowned` reference to an existing `GtkIMMulticontextPrivate` instance.
///

public struct IMMulticontextPrivateRef: IMMulticontextPrivateProtocol {
    /// Untyped pointer to the underlying `GtkIMMulticontextPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension IMMulticontextPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkIMMulticontextPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `IMMulticontextPrivateProtocol`
    init<T: IMMulticontextPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `IMMulticontextPrivate` type acts as an owner of an underlying `GtkIMMulticontextPrivate` instance.
/// It provides the methods that can operate on this data type through `IMMulticontextPrivateProtocol` conformance.
/// Use `IMMulticontextPrivate` as a strong reference or owner of a `GtkIMMulticontextPrivate` instance.
///

open class IMMulticontextPrivate: IMMulticontextPrivateProtocol {
    /// Untyped pointer to the underlying `GtkIMMulticontextPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `IMMulticontextPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkIMMulticontextPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `IMMulticontextPrivateProtocol`
    /// `GtkIMMulticontextPrivate` does not allow reference counting.
    public convenience init<T: IMMulticontextPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkIMMulticontextPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkIMMulticontextPrivate`.
    deinit {
        // no reference counting for GtkIMMulticontextPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkIMMulticontextPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkIMMulticontextPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkIMMulticontextPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMMulticontextPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkIMMulticontextPrivate>(opaquePointer))
    }



}

// MARK: - no IMMulticontextPrivate properties

// MARK: - no signals


public extension IMMulticontextPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIMMulticontextPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkIMMulticontextPrivate> { return ptr.assumingMemoryBound(to: GtkIMMulticontextPrivate.self) }

}



// MARK: - IconFactoryClass Record

/// The `IconFactoryClassProtocol` protocol exposes the methods and properties of an underlying `GtkIconFactoryClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IconFactoryClass`.
/// Alternatively, use `IconFactoryClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol IconFactoryClassProtocol {
    /// Untyped pointer to the underlying `GtkIconFactoryClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkIconFactoryClass` instance.
    var _ptr: UnsafeMutablePointer<GtkIconFactoryClass> { get }
}

/// The `IconFactoryClassRef` type acts as a lightweight Swift reference to an underlying `GtkIconFactoryClass` instance.
/// It exposes methods that can operate on this data type through `IconFactoryClassProtocol` conformance.
/// Use `IconFactoryClassRef` only as an `unowned` reference to an existing `GtkIconFactoryClass` instance.
///

public struct IconFactoryClassRef: IconFactoryClassProtocol {
    /// Untyped pointer to the underlying `GtkIconFactoryClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension IconFactoryClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkIconFactoryClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `IconFactoryClassProtocol`
    init<T: IconFactoryClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconFactoryClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconFactoryClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconFactoryClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconFactoryClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconFactoryClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `IconFactoryClass` type acts as an owner of an underlying `GtkIconFactoryClass` instance.
/// It provides the methods that can operate on this data type through `IconFactoryClassProtocol` conformance.
/// Use `IconFactoryClass` as a strong reference or owner of a `GtkIconFactoryClass` instance.
///

open class IconFactoryClass: IconFactoryClassProtocol {
    /// Untyped pointer to the underlying `GtkIconFactoryClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `IconFactoryClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkIconFactoryClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `IconFactoryClassProtocol`
    /// `GtkIconFactoryClass` does not allow reference counting.
    public convenience init<T: IconFactoryClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkIconFactoryClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkIconFactoryClass`.
    deinit {
        // no reference counting for GtkIconFactoryClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconFactoryClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkIconFactoryClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconFactoryClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkIconFactoryClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconFactoryClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkIconFactoryClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconFactoryClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkIconFactoryClass>(opaquePointer))
    }



}

// MARK: - no IconFactoryClass properties

// MARK: - no signals


public extension IconFactoryClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIconFactoryClass` instance.
    var _ptr: UnsafeMutablePointer<GtkIconFactoryClass> { return ptr.assumingMemoryBound(to: GtkIconFactoryClass.self) }

}



// MARK: - IconFactoryPrivate Record

/// The `IconFactoryPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkIconFactoryPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IconFactoryPrivate`.
/// Alternatively, use `IconFactoryPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol IconFactoryPrivateProtocol {
    /// Untyped pointer to the underlying `GtkIconFactoryPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkIconFactoryPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkIconFactoryPrivate> { get }
}

/// The `IconFactoryPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkIconFactoryPrivate` instance.
/// It exposes methods that can operate on this data type through `IconFactoryPrivateProtocol` conformance.
/// Use `IconFactoryPrivateRef` only as an `unowned` reference to an existing `GtkIconFactoryPrivate` instance.
///

public struct IconFactoryPrivateRef: IconFactoryPrivateProtocol {
    /// Untyped pointer to the underlying `GtkIconFactoryPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension IconFactoryPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkIconFactoryPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `IconFactoryPrivateProtocol`
    init<T: IconFactoryPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconFactoryPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconFactoryPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconFactoryPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconFactoryPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconFactoryPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `IconFactoryPrivate` type acts as an owner of an underlying `GtkIconFactoryPrivate` instance.
/// It provides the methods that can operate on this data type through `IconFactoryPrivateProtocol` conformance.
/// Use `IconFactoryPrivate` as a strong reference or owner of a `GtkIconFactoryPrivate` instance.
///

open class IconFactoryPrivate: IconFactoryPrivateProtocol {
    /// Untyped pointer to the underlying `GtkIconFactoryPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `IconFactoryPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkIconFactoryPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `IconFactoryPrivateProtocol`
    /// `GtkIconFactoryPrivate` does not allow reference counting.
    public convenience init<T: IconFactoryPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkIconFactoryPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkIconFactoryPrivate`.
    deinit {
        // no reference counting for GtkIconFactoryPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconFactoryPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkIconFactoryPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconFactoryPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkIconFactoryPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconFactoryPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkIconFactoryPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconFactoryPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkIconFactoryPrivate>(opaquePointer))
    }



}

// MARK: - no IconFactoryPrivate properties

// MARK: - no signals


public extension IconFactoryPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIconFactoryPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkIconFactoryPrivate> { return ptr.assumingMemoryBound(to: GtkIconFactoryPrivate.self) }

}



// MARK: - IconInfoClass Record

/// The `IconInfoClassProtocol` protocol exposes the methods and properties of an underlying `GtkIconInfoClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IconInfoClass`.
/// Alternatively, use `IconInfoClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol IconInfoClassProtocol {
    /// Untyped pointer to the underlying `GtkIconInfoClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkIconInfoClass` instance.
    var _ptr: UnsafeMutablePointer<GtkIconInfoClass> { get }
}

/// The `IconInfoClassRef` type acts as a lightweight Swift reference to an underlying `GtkIconInfoClass` instance.
/// It exposes methods that can operate on this data type through `IconInfoClassProtocol` conformance.
/// Use `IconInfoClassRef` only as an `unowned` reference to an existing `GtkIconInfoClass` instance.
///

public struct IconInfoClassRef: IconInfoClassProtocol {
    /// Untyped pointer to the underlying `GtkIconInfoClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension IconInfoClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkIconInfoClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `IconInfoClassProtocol`
    init<T: IconInfoClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconInfoClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconInfoClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconInfoClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconInfoClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconInfoClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `IconInfoClass` type acts as an owner of an underlying `GtkIconInfoClass` instance.
/// It provides the methods that can operate on this data type through `IconInfoClassProtocol` conformance.
/// Use `IconInfoClass` as a strong reference or owner of a `GtkIconInfoClass` instance.
///

open class IconInfoClass: IconInfoClassProtocol {
    /// Untyped pointer to the underlying `GtkIconInfoClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `IconInfoClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkIconInfoClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `IconInfoClassProtocol`
    /// `GtkIconInfoClass` does not allow reference counting.
    public convenience init<T: IconInfoClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkIconInfoClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkIconInfoClass`.
    deinit {
        // no reference counting for GtkIconInfoClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconInfoClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkIconInfoClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconInfoClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkIconInfoClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconInfoClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkIconInfoClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconInfoClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkIconInfoClass>(opaquePointer))
    }



}

// MARK: - no IconInfoClass properties

// MARK: - no signals


public extension IconInfoClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIconInfoClass` instance.
    var _ptr: UnsafeMutablePointer<GtkIconInfoClass> { return ptr.assumingMemoryBound(to: GtkIconInfoClass.self) }

}



// MARK: - IconSet Record

/// The `IconSetProtocol` protocol exposes the methods and properties of an underlying `GtkIconSet` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IconSet`.
/// Alternatively, use `IconSetRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol IconSetProtocol {
    /// Untyped pointer to the underlying `GtkIconSet` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkIconSet` instance.
    var icon_set_ptr: UnsafeMutablePointer<GtkIconSet> { get }
}

/// The `IconSetRef` type acts as a lightweight Swift reference to an underlying `GtkIconSet` instance.
/// It exposes methods that can operate on this data type through `IconSetProtocol` conformance.
/// Use `IconSetRef` only as an `unowned` reference to an existing `GtkIconSet` instance.
///

public struct IconSetRef: IconSetProtocol {
    /// Untyped pointer to the underlying `GtkIconSet` instance.
    /// For type-safe access, use the generated, typed pointer `icon_set_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension IconSetRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkIconSet>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `IconSetProtocol`
    init<T: IconSetProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSetProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSetProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSetProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSetProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSetProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkIconSet`. A `GtkIconSet` represents a single icon
    /// in various sizes and widget states. It can provide a `GdkPixbuf`
    /// for a given size and state on request, and automatically caches
    /// some of the rendered `GdkPixbuf` objects.
    /// 
    /// Normally you would use `gtk_widget_render_icon_pixbuf()` instead of
    /// using `GtkIconSet` directly. The one case where you’d use
    /// `GtkIconSet` is to create application-specific icon sets to place in
    /// a `GtkIconFactory`.
    ///
    /// **new is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated) init() {
        let rv = gtk_icon_set_new()
        self.init(cast(rv))
    }

    /// Creates a new `GtkIconSet` with `pixbuf` as the default/fallback
    /// source image. If you don’t add any additional `GtkIconSource` to the
    /// icon set, all variants of the icon will be created from `pixbuf`,
    /// using scaling, pixelation, etc. as required to adjust the icon size
    /// or make the icon look insensitive/prelighted.
    ///
    /// **new_from_pixbuf is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated) init(pixbuf: PixbufProtocol) {
        let rv = gtk_icon_set_new_from_pixbuf(cast(pixbuf.ptr))
        self.init(cast(rv))
    }
    /// Creates a new `GtkIconSet` with `pixbuf` as the default/fallback
    /// source image. If you don’t add any additional `GtkIconSource` to the
    /// icon set, all variants of the icon will be created from `pixbuf`,
    /// using scaling, pixelation, etc. as required to adjust the icon size
    /// or make the icon look insensitive/prelighted.
    ///
    /// **new_from_pixbuf is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated) static func newFrom(pixbuf: PixbufProtocol) -> IconSetRef! {
        let rv = gtk_icon_set_new_from_pixbuf(cast(pixbuf.ptr))
        return rv.map { IconSetRef(cast($0)) }
    }
}

/// The `IconSet` type acts as a reference-counted owner of an underlying `GtkIconSet` instance.
/// It provides the methods that can operate on this data type through `IconSetProtocol` conformance.
/// Use `IconSet` as a strong reference or owner of a `GtkIconSet` instance.
///

open class IconSet: IconSetProtocol {
    /// Untyped pointer to the underlying `GtkIconSet` instance.
    /// For type-safe access, use the generated, typed pointer `icon_set_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `IconSet` instance.
    public init(_ op: UnsafeMutablePointer<GtkIconSet>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `IconSetProtocol`
    /// Will retain `GtkIconSet`.
    public convenience init<T: IconSetProtocol>(_ other: T) {
        self.init(cast(other.icon_set_ptr))
        g_object_ref(cast(icon_set_ptr))
    }

    /// Releases the underlying `GtkIconSet` instance using `g_object_unref`.
    deinit {
        g_object_unref(cast(icon_set_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSetProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkIconSet.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSetProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkIconSet.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSetProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkIconSet.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSetProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkIconSet>(opaquePointer))
    }

    /// Creates a new `GtkIconSet`. A `GtkIconSet` represents a single icon
    /// in various sizes and widget states. It can provide a `GdkPixbuf`
    /// for a given size and state on request, and automatically caches
    /// some of the rendered `GdkPixbuf` objects.
    /// 
    /// Normally you would use `gtk_widget_render_icon_pixbuf()` instead of
    /// using `GtkIconSet` directly. The one case where you’d use
    /// `GtkIconSet` is to create application-specific icon sets to place in
    /// a `GtkIconFactory`.
    ///
    /// **new is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated) public convenience init() {
        let rv = gtk_icon_set_new()
        self.init(cast(rv))
    }

    /// Creates a new `GtkIconSet` with `pixbuf` as the default/fallback
    /// source image. If you don’t add any additional `GtkIconSource` to the
    /// icon set, all variants of the icon will be created from `pixbuf`,
    /// using scaling, pixelation, etc. as required to adjust the icon size
    /// or make the icon look insensitive/prelighted.
    ///
    /// **new_from_pixbuf is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated) public convenience init(pixbuf: PixbufProtocol) {
        let rv = gtk_icon_set_new_from_pixbuf(cast(pixbuf.ptr))
        self.init(cast(rv))
    }

    /// Creates a new `GtkIconSet` with `pixbuf` as the default/fallback
    /// source image. If you don’t add any additional `GtkIconSource` to the
    /// icon set, all variants of the icon will be created from `pixbuf`,
    /// using scaling, pixelation, etc. as required to adjust the icon size
    /// or make the icon look insensitive/prelighted.
    ///
    /// **new_from_pixbuf is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated) public static func newFrom(pixbuf: PixbufProtocol) -> IconSet! {
        let rv = gtk_icon_set_new_from_pixbuf(cast(pixbuf.ptr))
        return rv.map { IconSet(cast($0)) }
    }

}

// MARK: - no IconSet properties

// MARK: - no signals


public extension IconSetProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIconSet` instance.
    var icon_set_ptr: UnsafeMutablePointer<GtkIconSet> { return ptr.assumingMemoryBound(to: GtkIconSet.self) }

    /// Icon sets have a list of `GtkIconSource`, which they use as base
    /// icons for rendering icons in different states and sizes. Icons are
    /// scaled, made to look insensitive, etc. in
    /// `gtk_icon_set_render_icon()`, but `GtkIconSet` needs base images to
    /// work with. The base images and when to use them are described by
    /// a `GtkIconSource`.
    /// 
    /// This function copies `source`, so you can reuse the same source immediately
    /// without affecting the icon set.
    /// 
    /// An example of when you’d use this function: a web browser’s "Back
    /// to Previous Page" icon might point in a different direction in
    /// Hebrew and in English; it might look different when insensitive;
    /// and it might change size depending on toolbar mode (small/large
    /// icons). So a single icon set would contain all those variants of
    /// the icon, and you might add a separate source for each one.
    /// 
    /// You should nearly always add a “default” icon source with all
    /// fields wildcarded, which will be used as a fallback if no more
    /// specific source matches. `GtkIconSet` always prefers more specific
    /// icon sources to more generic icon sources. The order in which you
    /// add the sources to the icon set does not matter.
    /// 
    /// `gtk_icon_set_new_from_pixbuf()` creates a new icon set with a
    /// default icon source based on the given pixbuf.
    ///
    /// **add_source is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated) func add(source: IconSourceProtocol) {
        gtk_icon_set_add_source(cast(icon_set_ptr), cast(source.ptr))
    
    }

    /// Copies `icon_set` by value.
    ///
    /// **copy is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated) func copy() -> UnsafeMutablePointer<GtkIconSet>! {
        let rv = gtk_icon_set_copy(cast(icon_set_ptr))
        return cast(rv)
    }

    /// Obtains a list of icon sizes this icon set can render. The returned
    /// array must be freed with `g_free()`.
    ///
    /// **get_sizes is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated) func get(sizes: UnsafeMutablePointer<UnsafeMutablePointer<GtkIconSize>>, nSizes n_sizes: UnsafeMutablePointer<CInt>) {
        gtk_icon_set_get_sizes(cast(icon_set_ptr), cast(sizes), cast(n_sizes))
    
    }

    /// Increments the reference count on `icon_set`.
    ///
    /// **ref is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated) func ref() -> UnsafeMutablePointer<GtkIconSet>! {
        let rv = g_object_ref(cast(icon_set_ptr))
        return cast(rv)
    }

    /// Renders an icon using `gtk_style_render_icon()`. In most cases,
    /// `gtk_widget_render_icon()` is better, since it automatically provides
    /// most of the arguments from the current widget settings.  This
    /// function never returns `nil`; if the icon can’t be rendered
    /// (perhaps because an image file fails to load), a default "missing
    /// image" icon will be returned instead.
    ///
    /// **render_icon is deprecated:**
    /// Use gtk_icon_set_render_icon_pixbuf() instead
    @available(*, deprecated) func renderIcon(style: StyleProtocol, direction: TextDirection, state: StateType, size: GtkIconSize, widget: WidgetProtocol, detail: UnsafePointer<gchar>) -> UnsafeMutablePointer<GdkPixbuf>! {
        let rv = gtk_icon_set_render_icon(cast(icon_set_ptr), cast(style.ptr), direction, state, size, cast(widget.ptr), detail)
        return cast(rv)
    }

    /// Renders an icon using `gtk_render_icon_pixbuf()`. In most cases,
    /// `gtk_widget_render_icon_pixbuf()` is better, since it automatically provides
    /// most of the arguments from the current widget settings.  This
    /// function never returns `nil`; if the icon can’t be rendered
    /// (perhaps because an image file fails to load), a default "missing
    /// image" icon will be returned instead.
    ///
    /// **render_icon_pixbuf is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated) func renderIconPixbuf(context: StyleContextProtocol, size: GtkIconSize) -> UnsafeMutablePointer<GdkPixbuf>! {
        let rv = gtk_icon_set_render_icon_pixbuf(cast(icon_set_ptr), cast(context.ptr), size)
        return cast(rv)
    }

    /// Renders an icon using `gtk_render_icon_pixbuf()` and converts it to a
    /// cairo surface.
    /// 
    /// This function never returns `nil`; if the icon can’t be rendered
    /// (perhaps because an image file fails to load), a default "missing
    /// image" icon will be returned instead.
    ///
    /// **render_icon_surface is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated) func renderIconSurface(context: StyleContextProtocol, size: GtkIconSize, scale: CInt, forWindow for_window: WindowProtocol) -> UnsafeMutablePointer<cairo_surface_t>! {
        let rv = gtk_icon_set_render_icon_surface(cast(icon_set_ptr), cast(context.ptr), size, scale, cast(for_window.ptr))
        return cast(rv)
    }

    /// Decrements the reference count on `icon_set`, and frees memory
    /// if the reference count reaches 0.
    ///
    /// **unref is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated) func unref() {
        g_object_unref(cast(icon_set_ptr))
    
    }
}



// MARK: - IconSource Record

/// The `IconSourceProtocol` protocol exposes the methods and properties of an underlying `GtkIconSource` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IconSource`.
/// Alternatively, use `IconSourceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol IconSourceProtocol {
    /// Untyped pointer to the underlying `GtkIconSource` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkIconSource` instance.
    var icon_source_ptr: UnsafeMutablePointer<GtkIconSource> { get }
}

/// The `IconSourceRef` type acts as a lightweight Swift reference to an underlying `GtkIconSource` instance.
/// It exposes methods that can operate on this data type through `IconSourceProtocol` conformance.
/// Use `IconSourceRef` only as an `unowned` reference to an existing `GtkIconSource` instance.
///

public struct IconSourceRef: IconSourceProtocol {
    /// Untyped pointer to the underlying `GtkIconSource` instance.
    /// For type-safe access, use the generated, typed pointer `icon_source_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension IconSourceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkIconSource>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `IconSourceProtocol`
    init<T: IconSourceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSourceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSourceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSourceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSourceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSourceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkIconSource`. A `GtkIconSource` contains a `GdkPixbuf` (or
    /// image filename) that serves as the base image for one or more of the
    /// icons in a `GtkIconSet`, along with a specification for which icons in the
    /// icon set will be based on that pixbuf or image file. An icon set contains
    /// a set of icons that represent “the same” logical concept in different states,
    /// different global text directions, and different sizes.
    /// 
    /// So for example a web browser’s “Back to Previous Page” icon might
    /// point in a different direction in Hebrew and in English; it might
    /// look different when insensitive; and it might change size depending
    /// on toolbar mode (small/large icons). So a single icon set would
    /// contain all those variants of the icon. `GtkIconSet` contains a list
    /// of `GtkIconSource` from which it can derive specific icon variants in
    /// the set.
    /// 
    /// In the simplest case, `GtkIconSet` contains one source pixbuf from
    /// which it derives all variants. The convenience function
    /// `gtk_icon_set_new_from_pixbuf()` handles this case; if you only have
    /// one source pixbuf, just use that function.
    /// 
    /// If you want to use a different base pixbuf for different icon
    /// variants, you create multiple icon sources, mark which variants
    /// they’ll be used to create, and add them to the icon set with
    /// `gtk_icon_set_add_source()`.
    /// 
    /// By default, the icon source has all parameters wildcarded. That is,
    /// the icon source will be used as the base icon for any desired text
    /// direction, widget state, or icon size.
    ///
    /// **new is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated) init() {
        let rv = gtk_icon_source_new()
        self.init(cast(rv))
    }
}

/// The `IconSource` type acts as an owner of an underlying `GtkIconSource` instance.
/// It provides the methods that can operate on this data type through `IconSourceProtocol` conformance.
/// Use `IconSource` as a strong reference or owner of a `GtkIconSource` instance.
///

open class IconSource: IconSourceProtocol {
    /// Untyped pointer to the underlying `GtkIconSource` instance.
    /// For type-safe access, use the generated, typed pointer `icon_source_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `IconSource` instance.
    public init(_ op: UnsafeMutablePointer<GtkIconSource>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `IconSourceProtocol`
    /// `GtkIconSource` does not allow reference counting.
    public convenience init<T: IconSourceProtocol>(_ other: T) {
        self.init(cast(other.icon_source_ptr))
        // no reference counting for GtkIconSource, cannot ref(cast(icon_source_ptr))
    }

    /// Do-nothing destructor for`GtkIconSource`.
    deinit {
        // no reference counting for GtkIconSource, cannot unref(cast(icon_source_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSourceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkIconSource.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSourceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkIconSource.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSourceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkIconSource.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconSourceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkIconSource>(opaquePointer))
    }

    /// Creates a new `GtkIconSource`. A `GtkIconSource` contains a `GdkPixbuf` (or
    /// image filename) that serves as the base image for one or more of the
    /// icons in a `GtkIconSet`, along with a specification for which icons in the
    /// icon set will be based on that pixbuf or image file. An icon set contains
    /// a set of icons that represent “the same” logical concept in different states,
    /// different global text directions, and different sizes.
    /// 
    /// So for example a web browser’s “Back to Previous Page” icon might
    /// point in a different direction in Hebrew and in English; it might
    /// look different when insensitive; and it might change size depending
    /// on toolbar mode (small/large icons). So a single icon set would
    /// contain all those variants of the icon. `GtkIconSet` contains a list
    /// of `GtkIconSource` from which it can derive specific icon variants in
    /// the set.
    /// 
    /// In the simplest case, `GtkIconSet` contains one source pixbuf from
    /// which it derives all variants. The convenience function
    /// `gtk_icon_set_new_from_pixbuf()` handles this case; if you only have
    /// one source pixbuf, just use that function.
    /// 
    /// If you want to use a different base pixbuf for different icon
    /// variants, you create multiple icon sources, mark which variants
    /// they’ll be used to create, and add them to the icon set with
    /// `gtk_icon_set_add_source()`.
    /// 
    /// By default, the icon source has all parameters wildcarded. That is,
    /// the icon source will be used as the base icon for any desired text
    /// direction, widget state, or icon size.
    ///
    /// **new is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated) public convenience init() {
        let rv = gtk_icon_source_new()
        self.init(cast(rv))
    }


}

// MARK: - no IconSource properties

// MARK: - no signals


public extension IconSourceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIconSource` instance.
    var icon_source_ptr: UnsafeMutablePointer<GtkIconSource> { return ptr.assumingMemoryBound(to: GtkIconSource.self) }

    /// Creates a copy of `source`; mostly useful for language bindings.
    ///
    /// **copy is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated) func copy() -> UnsafeMutablePointer<GtkIconSource>! {
        let rv = gtk_icon_source_copy(cast(icon_source_ptr))
        return cast(rv)
    }

    /// Frees a dynamically-allocated icon source, along with its
    /// filename, size, and pixbuf fields if those are not `nil`.
    ///
    /// **free is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated) func free() {
        gtk_icon_source_free(cast(icon_source_ptr))
    
    }

    /// Obtains the text direction this icon source applies to. The return
    /// value is only useful/meaningful if the text direction is not
    /// wildcarded.
    ///
    /// **get_direction is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated) func getDirection() -> GtkTextDirection {
        let rv = gtk_icon_source_get_direction(cast(icon_source_ptr))
        return rv
    }

    /// Gets the value set by `gtk_icon_source_set_direction_wildcarded()`.
    ///
    /// **get_direction_wildcarded is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated) func getDirectionWildcarded() -> Bool {
        let rv = gtk_icon_source_get_direction_wildcarded(cast(icon_source_ptr))
        return Bool(rv != 0)
    }

    /// Retrieves the source filename, or `nil` if none is set. The
    /// filename is not a copy, and should not be modified or expected to
    /// persist beyond the lifetime of the icon source.
    ///
    /// **get_filename is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated) func getFilename() -> String! {
        let rv = gtk_icon_source_get_filename(cast(icon_source_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Retrieves the source icon name, or `nil` if none is set. The
    /// icon_name is not a copy, and should not be modified or expected to
    /// persist beyond the lifetime of the icon source.
    ///
    /// **get_icon_name is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated) func getIconName() -> String! {
        let rv = gtk_icon_source_get_icon_name(cast(icon_source_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Retrieves the source pixbuf, or `nil` if none is set.
    /// In addition, if a filename source is in use, this
    /// function in some cases will return the pixbuf from
    /// loaded from the filename. This is, for example, true
    /// for the GtkIconSource passed to the `GtkStyle` `render_icon()`
    /// virtual function. The reference count on the pixbuf is
    /// not incremented.
    ///
    /// **get_pixbuf is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated) func getPixbuf() -> UnsafeMutablePointer<GdkPixbuf>! {
        let rv = gtk_icon_source_get_pixbuf(cast(icon_source_ptr))
        return cast(rv)
    }

    /// Obtains the icon size this source applies to. The return value
    /// is only useful/meaningful if the icon size is not wildcarded.
    ///
    /// **get_size is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated) func getSize() -> GtkIconSize {
        let rv = gtk_icon_source_get_size(cast(icon_source_ptr))
        return rv
    }

    /// Gets the value set by `gtk_icon_source_set_size_wildcarded()`.
    ///
    /// **get_size_wildcarded is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated) func getSizeWildcarded() -> Bool {
        let rv = gtk_icon_source_get_size_wildcarded(cast(icon_source_ptr))
        return Bool(rv != 0)
    }

    /// Obtains the widget state this icon source applies to. The return
    /// value is only useful/meaningful if the widget state is not
    /// wildcarded.
    ///
    /// **get_state is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated) func getState() -> GtkStateType {
        let rv = gtk_icon_source_get_state(cast(icon_source_ptr))
        return rv
    }

    /// Gets the value set by `gtk_icon_source_set_state_wildcarded()`.
    ///
    /// **get_state_wildcarded is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated) func getStateWildcarded() -> Bool {
        let rv = gtk_icon_source_get_state_wildcarded(cast(icon_source_ptr))
        return Bool(rv != 0)
    }

    /// Sets the text direction this icon source is intended to be used
    /// with.
    /// 
    /// Setting the text direction on an icon source makes no difference
    /// if the text direction is wildcarded. Therefore, you should usually
    /// call `gtk_icon_source_set_direction_wildcarded()` to un-wildcard it
    /// in addition to calling this function.
    ///
    /// **set_direction is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated) func set(direction: TextDirection) {
        gtk_icon_source_set_direction(cast(icon_source_ptr), direction)
    
    }

    /// If the text direction is wildcarded, this source can be used
    /// as the base image for an icon in any `GtkTextDirection`.
    /// If the text direction is not wildcarded, then the
    /// text direction the icon source applies to should be set
    /// with `gtk_icon_source_set_direction()`, and the icon source
    /// will only be used with that text direction.
    /// 
    /// `GtkIconSet` prefers non-wildcarded sources (exact matches) over
    /// wildcarded sources, and will use an exact match when possible.
    ///
    /// **set_direction_wildcarded is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated) func setDirectionWildcarded(setting: Bool) {
        gtk_icon_source_set_direction_wildcarded(cast(icon_source_ptr), gboolean(setting ? 1 : 0))
    
    }

    /// Sets the name of an image file to use as a base image when creating
    /// icon variants for `GtkIconSet`. The filename must be absolute.
    ///
    /// **set_filename is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated) func setFilename(String_: UnsafePointer<gchar>) {
        gtk_icon_source_set_filename(cast(icon_source_ptr), String_)
    
    }

    /// Sets the name of an icon to look up in the current icon theme
    /// to use as a base image when creating icon variants for `GtkIconSet`.
    ///
    /// **set_icon_name is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated) func set(iconName icon_name: UnsafePointer<gchar>) {
        gtk_icon_source_set_icon_name(cast(icon_source_ptr), icon_name)
    
    }

    /// Sets a pixbuf to use as a base image when creating icon variants
    /// for `GtkIconSet`.
    ///
    /// **set_pixbuf is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated) func set(pixbuf: PixbufProtocol) {
        gtk_icon_source_set_pixbuf(cast(icon_source_ptr), cast(pixbuf.ptr))
    
    }

    /// Sets the icon size this icon source is intended to be used
    /// with.
    /// 
    /// Setting the icon size on an icon source makes no difference
    /// if the size is wildcarded. Therefore, you should usually
    /// call `gtk_icon_source_set_size_wildcarded()` to un-wildcard it
    /// in addition to calling this function.
    ///
    /// **set_size is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated) func set(size: GtkIconSize) {
        gtk_icon_source_set_size(cast(icon_source_ptr), size)
    
    }

    /// If the icon size is wildcarded, this source can be used as the base
    /// image for an icon of any size.  If the size is not wildcarded, then
    /// the size the source applies to should be set with
    /// `gtk_icon_source_set_size()` and the icon source will only be used
    /// with that specific size.
    /// 
    /// `GtkIconSet` prefers non-wildcarded sources (exact matches) over
    /// wildcarded sources, and will use an exact match when possible.
    /// 
    /// `GtkIconSet` will normally scale wildcarded source images to produce
    /// an appropriate icon at a given size, but will not change the size
    /// of source images that match exactly.
    ///
    /// **set_size_wildcarded is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated) func setSizeWildcarded(setting: Bool) {
        gtk_icon_source_set_size_wildcarded(cast(icon_source_ptr), gboolean(setting ? 1 : 0))
    
    }

    /// Sets the widget state this icon source is intended to be used
    /// with.
    /// 
    /// Setting the widget state on an icon source makes no difference
    /// if the state is wildcarded. Therefore, you should usually
    /// call `gtk_icon_source_set_state_wildcarded()` to un-wildcard it
    /// in addition to calling this function.
    ///
    /// **set_state is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated) func set(state: StateType) {
        gtk_icon_source_set_state(cast(icon_source_ptr), state)
    
    }

    /// If the widget state is wildcarded, this source can be used as the
    /// base image for an icon in any `GtkStateType`.  If the widget state
    /// is not wildcarded, then the state the source applies to should be
    /// set with `gtk_icon_source_set_state()` and the icon source will
    /// only be used with that specific state.
    /// 
    /// `GtkIconSet` prefers non-wildcarded sources (exact matches) over
    /// wildcarded sources, and will use an exact match when possible.
    /// 
    /// `GtkIconSet` will normally transform wildcarded source images to
    /// produce an appropriate icon for a given state, for example
    /// lightening an image on prelight, but will not modify source images
    /// that match exactly.
    ///
    /// **set_state_wildcarded is deprecated:**
    /// Use #GtkIconTheme instead.
    @available(*, deprecated) func setStateWildcarded(setting: Bool) {
        gtk_icon_source_set_state_wildcarded(cast(icon_source_ptr), gboolean(setting ? 1 : 0))
    
    }

    /// Renders the icon specified by `source` at the given `size`, returning the result
    /// in a pixbuf.
    ///
    /// **render_icon_pixbuf is deprecated:**
    /// Use gtk_icon_theme_load_icon() instead.
    @available(*, deprecated) func renderIconPixbuf(context: StyleContextProtocol, size: GtkIconSize) -> UnsafeMutablePointer<GdkPixbuf>! {
        let rv = gtk_render_icon_pixbuf(cast(context.ptr), cast(icon_source_ptr), size)
        return cast(rv)
    }
    /// Obtains the text direction this icon source applies to. The return
    /// value is only useful/meaningful if the text direction is not
    /// wildcarded.
    ///
    /// **get_direction is deprecated:**
    /// Use #GtkIconTheme instead.
    var direction: GtkTextDirection {
        /// Obtains the text direction this icon source applies to. The return
        /// value is only useful/meaningful if the text direction is not
        /// wildcarded.
        ///
        /// **get_direction is deprecated:**
        /// Use #GtkIconTheme instead.
        @available(*, deprecated) get {
            let rv = gtk_icon_source_get_direction(cast(icon_source_ptr))
            return rv
        }
        /// Sets the text direction this icon source is intended to be used
        /// with.
        /// 
        /// Setting the text direction on an icon source makes no difference
        /// if the text direction is wildcarded. Therefore, you should usually
        /// call `gtk_icon_source_set_direction_wildcarded()` to un-wildcard it
        /// in addition to calling this function.
        ///
        /// **set_direction is deprecated:**
        /// Use #GtkIconTheme instead.
        @available(*, deprecated) nonmutating set {
            gtk_icon_source_set_direction(cast(icon_source_ptr), newValue)
        }
    }

    /// Gets the value set by `gtk_icon_source_set_direction_wildcarded()`.
    ///
    /// **get_direction_wildcarded is deprecated:**
    /// Use #GtkIconTheme instead.
    var directionWildcarded: Bool {
        /// Gets the value set by `gtk_icon_source_set_direction_wildcarded()`.
        ///
        /// **get_direction_wildcarded is deprecated:**
        /// Use #GtkIconTheme instead.
        @available(*, deprecated) get {
            let rv = gtk_icon_source_get_direction_wildcarded(cast(icon_source_ptr))
            return Bool(rv != 0)
        }
        /// If the text direction is wildcarded, this source can be used
        /// as the base image for an icon in any `GtkTextDirection`.
        /// If the text direction is not wildcarded, then the
        /// text direction the icon source applies to should be set
        /// with `gtk_icon_source_set_direction()`, and the icon source
        /// will only be used with that text direction.
        /// 
        /// `GtkIconSet` prefers non-wildcarded sources (exact matches) over
        /// wildcarded sources, and will use an exact match when possible.
        ///
        /// **set_direction_wildcarded is deprecated:**
        /// Use #GtkIconTheme instead.
        @available(*, deprecated) nonmutating set {
            gtk_icon_source_set_direction_wildcarded(cast(icon_source_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Retrieves the source filename, or `nil` if none is set. The
    /// filename is not a copy, and should not be modified or expected to
    /// persist beyond the lifetime of the icon source.
    ///
    /// **get_filename is deprecated:**
    /// Use #GtkIconTheme instead.
    var filename: String! {
        /// Retrieves the source filename, or `nil` if none is set. The
        /// filename is not a copy, and should not be modified or expected to
        /// persist beyond the lifetime of the icon source.
        ///
        /// **get_filename is deprecated:**
        /// Use #GtkIconTheme instead.
        @available(*, deprecated) get {
            let rv = gtk_icon_source_get_filename(cast(icon_source_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Sets the name of an image file to use as a base image when creating
        /// icon variants for `GtkIconSet`. The filename must be absolute.
        ///
        /// **set_filename is deprecated:**
        /// Use #GtkIconTheme instead.
        @available(*, deprecated) nonmutating set {
            gtk_icon_source_set_filename(cast(icon_source_ptr), newValue)
        }
    }

    /// Retrieves the source icon name, or `nil` if none is set. The
    /// icon_name is not a copy, and should not be modified or expected to
    /// persist beyond the lifetime of the icon source.
    ///
    /// **get_icon_name is deprecated:**
    /// Use #GtkIconTheme instead.
    var iconName: String! {
        /// Retrieves the source icon name, or `nil` if none is set. The
        /// icon_name is not a copy, and should not be modified or expected to
        /// persist beyond the lifetime of the icon source.
        ///
        /// **get_icon_name is deprecated:**
        /// Use #GtkIconTheme instead.
        @available(*, deprecated) get {
            let rv = gtk_icon_source_get_icon_name(cast(icon_source_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Sets the name of an icon to look up in the current icon theme
        /// to use as a base image when creating icon variants for `GtkIconSet`.
        ///
        /// **set_icon_name is deprecated:**
        /// Use #GtkIconTheme instead.
        @available(*, deprecated) nonmutating set {
            gtk_icon_source_set_icon_name(cast(icon_source_ptr), newValue)
        }
    }

    /// Retrieves the source pixbuf, or `nil` if none is set.
    /// In addition, if a filename source is in use, this
    /// function in some cases will return the pixbuf from
    /// loaded from the filename. This is, for example, true
    /// for the GtkIconSource passed to the `GtkStyle` `render_icon()`
    /// virtual function. The reference count on the pixbuf is
    /// not incremented.
    ///
    /// **get_pixbuf is deprecated:**
    /// Use #GtkIconTheme instead.
    var pixbuf: UnsafeMutablePointer<GdkPixbuf>! {
        /// Retrieves the source pixbuf, or `nil` if none is set.
        /// In addition, if a filename source is in use, this
        /// function in some cases will return the pixbuf from
        /// loaded from the filename. This is, for example, true
        /// for the GtkIconSource passed to the `GtkStyle` `render_icon()`
        /// virtual function. The reference count on the pixbuf is
        /// not incremented.
        ///
        /// **get_pixbuf is deprecated:**
        /// Use #GtkIconTheme instead.
        @available(*, deprecated) get {
            let rv = gtk_icon_source_get_pixbuf(cast(icon_source_ptr))
            return cast(rv)
        }
        /// Sets a pixbuf to use as a base image when creating icon variants
        /// for `GtkIconSet`.
        ///
        /// **set_pixbuf is deprecated:**
        /// Use #GtkIconTheme instead.
        @available(*, deprecated) nonmutating set {
            gtk_icon_source_set_pixbuf(cast(icon_source_ptr), cast(newValue))
        }
    }

    /// Obtains the icon size this source applies to. The return value
    /// is only useful/meaningful if the icon size is not wildcarded.
    ///
    /// **get_size is deprecated:**
    /// Use #GtkIconTheme instead.
    var size: GtkIconSize {
        /// Obtains the icon size this source applies to. The return value
        /// is only useful/meaningful if the icon size is not wildcarded.
        ///
        /// **get_size is deprecated:**
        /// Use #GtkIconTheme instead.
        @available(*, deprecated) get {
            let rv = gtk_icon_source_get_size(cast(icon_source_ptr))
            return rv
        }
        /// Sets the icon size this icon source is intended to be used
        /// with.
        /// 
        /// Setting the icon size on an icon source makes no difference
        /// if the size is wildcarded. Therefore, you should usually
        /// call `gtk_icon_source_set_size_wildcarded()` to un-wildcard it
        /// in addition to calling this function.
        ///
        /// **set_size is deprecated:**
        /// Use #GtkIconTheme instead.
        @available(*, deprecated) nonmutating set {
            gtk_icon_source_set_size(cast(icon_source_ptr), newValue)
        }
    }

    /// Gets the value set by `gtk_icon_source_set_size_wildcarded()`.
    ///
    /// **get_size_wildcarded is deprecated:**
    /// Use #GtkIconTheme instead.
    var sizeWildcarded: Bool {
        /// Gets the value set by `gtk_icon_source_set_size_wildcarded()`.
        ///
        /// **get_size_wildcarded is deprecated:**
        /// Use #GtkIconTheme instead.
        @available(*, deprecated) get {
            let rv = gtk_icon_source_get_size_wildcarded(cast(icon_source_ptr))
            return Bool(rv != 0)
        }
        /// If the icon size is wildcarded, this source can be used as the base
        /// image for an icon of any size.  If the size is not wildcarded, then
        /// the size the source applies to should be set with
        /// `gtk_icon_source_set_size()` and the icon source will only be used
        /// with that specific size.
        /// 
        /// `GtkIconSet` prefers non-wildcarded sources (exact matches) over
        /// wildcarded sources, and will use an exact match when possible.
        /// 
        /// `GtkIconSet` will normally scale wildcarded source images to produce
        /// an appropriate icon at a given size, but will not change the size
        /// of source images that match exactly.
        ///
        /// **set_size_wildcarded is deprecated:**
        /// Use #GtkIconTheme instead.
        @available(*, deprecated) nonmutating set {
            gtk_icon_source_set_size_wildcarded(cast(icon_source_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Obtains the widget state this icon source applies to. The return
    /// value is only useful/meaningful if the widget state is not
    /// wildcarded.
    ///
    /// **get_state is deprecated:**
    /// Use #GtkIconTheme instead.
    var state: GtkStateType {
        /// Obtains the widget state this icon source applies to. The return
        /// value is only useful/meaningful if the widget state is not
        /// wildcarded.
        ///
        /// **get_state is deprecated:**
        /// Use #GtkIconTheme instead.
        @available(*, deprecated) get {
            let rv = gtk_icon_source_get_state(cast(icon_source_ptr))
            return rv
        }
        /// Sets the widget state this icon source is intended to be used
        /// with.
        /// 
        /// Setting the widget state on an icon source makes no difference
        /// if the state is wildcarded. Therefore, you should usually
        /// call `gtk_icon_source_set_state_wildcarded()` to un-wildcard it
        /// in addition to calling this function.
        ///
        /// **set_state is deprecated:**
        /// Use #GtkIconTheme instead.
        @available(*, deprecated) nonmutating set {
            gtk_icon_source_set_state(cast(icon_source_ptr), newValue)
        }
    }

    /// Gets the value set by `gtk_icon_source_set_state_wildcarded()`.
    ///
    /// **get_state_wildcarded is deprecated:**
    /// Use #GtkIconTheme instead.
    var stateWildcarded: Bool {
        /// Gets the value set by `gtk_icon_source_set_state_wildcarded()`.
        ///
        /// **get_state_wildcarded is deprecated:**
        /// Use #GtkIconTheme instead.
        @available(*, deprecated) get {
            let rv = gtk_icon_source_get_state_wildcarded(cast(icon_source_ptr))
            return Bool(rv != 0)
        }
        /// If the widget state is wildcarded, this source can be used as the
        /// base image for an icon in any `GtkStateType`.  If the widget state
        /// is not wildcarded, then the state the source applies to should be
        /// set with `gtk_icon_source_set_state()` and the icon source will
        /// only be used with that specific state.
        /// 
        /// `GtkIconSet` prefers non-wildcarded sources (exact matches) over
        /// wildcarded sources, and will use an exact match when possible.
        /// 
        /// `GtkIconSet` will normally transform wildcarded source images to
        /// produce an appropriate icon for a given state, for example
        /// lightening an image on prelight, but will not modify source images
        /// that match exactly.
        ///
        /// **set_state_wildcarded is deprecated:**
        /// Use #GtkIconTheme instead.
        @available(*, deprecated) nonmutating set {
            gtk_icon_source_set_state_wildcarded(cast(icon_source_ptr), gboolean(newValue ? 1 : 0))
        }
    }
}



// MARK: - IconThemeClass Record

/// The `IconThemeClassProtocol` protocol exposes the methods and properties of an underlying `GtkIconThemeClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IconThemeClass`.
/// Alternatively, use `IconThemeClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol IconThemeClassProtocol {
    /// Untyped pointer to the underlying `GtkIconThemeClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkIconThemeClass` instance.
    var _ptr: UnsafeMutablePointer<GtkIconThemeClass> { get }
}

/// The `IconThemeClassRef` type acts as a lightweight Swift reference to an underlying `GtkIconThemeClass` instance.
/// It exposes methods that can operate on this data type through `IconThemeClassProtocol` conformance.
/// Use `IconThemeClassRef` only as an `unowned` reference to an existing `GtkIconThemeClass` instance.
///

public struct IconThemeClassRef: IconThemeClassProtocol {
    /// Untyped pointer to the underlying `GtkIconThemeClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension IconThemeClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkIconThemeClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `IconThemeClassProtocol`
    init<T: IconThemeClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemeClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemeClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemeClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemeClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemeClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `IconThemeClass` type acts as an owner of an underlying `GtkIconThemeClass` instance.
/// It provides the methods that can operate on this data type through `IconThemeClassProtocol` conformance.
/// Use `IconThemeClass` as a strong reference or owner of a `GtkIconThemeClass` instance.
///

open class IconThemeClass: IconThemeClassProtocol {
    /// Untyped pointer to the underlying `GtkIconThemeClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `IconThemeClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkIconThemeClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `IconThemeClassProtocol`
    /// `GtkIconThemeClass` does not allow reference counting.
    public convenience init<T: IconThemeClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkIconThemeClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkIconThemeClass`.
    deinit {
        // no reference counting for GtkIconThemeClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemeClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkIconThemeClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemeClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkIconThemeClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemeClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkIconThemeClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemeClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkIconThemeClass>(opaquePointer))
    }



}

// MARK: - no IconThemeClass properties

// MARK: - no signals


public extension IconThemeClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIconThemeClass` instance.
    var _ptr: UnsafeMutablePointer<GtkIconThemeClass> { return ptr.assumingMemoryBound(to: GtkIconThemeClass.self) }

}



// MARK: - IconThemePrivate Record

/// The `IconThemePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkIconThemePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IconThemePrivate`.
/// Alternatively, use `IconThemePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol IconThemePrivateProtocol {
    /// Untyped pointer to the underlying `GtkIconThemePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkIconThemePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkIconThemePrivate> { get }
}

/// The `IconThemePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkIconThemePrivate` instance.
/// It exposes methods that can operate on this data type through `IconThemePrivateProtocol` conformance.
/// Use `IconThemePrivateRef` only as an `unowned` reference to an existing `GtkIconThemePrivate` instance.
///

public struct IconThemePrivateRef: IconThemePrivateProtocol {
    /// Untyped pointer to the underlying `GtkIconThemePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension IconThemePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkIconThemePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `IconThemePrivateProtocol`
    init<T: IconThemePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `IconThemePrivate` type acts as an owner of an underlying `GtkIconThemePrivate` instance.
/// It provides the methods that can operate on this data type through `IconThemePrivateProtocol` conformance.
/// Use `IconThemePrivate` as a strong reference or owner of a `GtkIconThemePrivate` instance.
///

open class IconThemePrivate: IconThemePrivateProtocol {
    /// Untyped pointer to the underlying `GtkIconThemePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `IconThemePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkIconThemePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `IconThemePrivateProtocol`
    /// `GtkIconThemePrivate` does not allow reference counting.
    public convenience init<T: IconThemePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkIconThemePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkIconThemePrivate`.
    deinit {
        // no reference counting for GtkIconThemePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkIconThemePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkIconThemePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkIconThemePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconThemePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkIconThemePrivate>(opaquePointer))
    }



}

// MARK: - no IconThemePrivate properties

// MARK: - no signals


public extension IconThemePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIconThemePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkIconThemePrivate> { return ptr.assumingMemoryBound(to: GtkIconThemePrivate.self) }

}



// MARK: - IconViewAccessibleClass Record

/// The `IconViewAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkIconViewAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IconViewAccessibleClass`.
/// Alternatively, use `IconViewAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol IconViewAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkIconViewAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkIconViewAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkIconViewAccessibleClass> { get }
}

/// The `IconViewAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkIconViewAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `IconViewAccessibleClassProtocol` conformance.
/// Use `IconViewAccessibleClassRef` only as an `unowned` reference to an existing `GtkIconViewAccessibleClass` instance.
///

public struct IconViewAccessibleClassRef: IconViewAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkIconViewAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension IconViewAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkIconViewAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `IconViewAccessibleClassProtocol`
    init<T: IconViewAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `IconViewAccessibleClass` type acts as an owner of an underlying `GtkIconViewAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `IconViewAccessibleClassProtocol` conformance.
/// Use `IconViewAccessibleClass` as a strong reference or owner of a `GtkIconViewAccessibleClass` instance.
///

open class IconViewAccessibleClass: IconViewAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkIconViewAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `IconViewAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkIconViewAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `IconViewAccessibleClassProtocol`
    /// `GtkIconViewAccessibleClass` does not allow reference counting.
    public convenience init<T: IconViewAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkIconViewAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkIconViewAccessibleClass`.
    deinit {
        // no reference counting for GtkIconViewAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkIconViewAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkIconViewAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkIconViewAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkIconViewAccessibleClass>(opaquePointer))
    }



}

// MARK: - no IconViewAccessibleClass properties

// MARK: - no signals


public extension IconViewAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIconViewAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkIconViewAccessibleClass> { return ptr.assumingMemoryBound(to: GtkIconViewAccessibleClass.self) }

}



// MARK: - IconViewAccessiblePrivate Record

/// The `IconViewAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkIconViewAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IconViewAccessiblePrivate`.
/// Alternatively, use `IconViewAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol IconViewAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkIconViewAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkIconViewAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkIconViewAccessiblePrivate> { get }
}

/// The `IconViewAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkIconViewAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `IconViewAccessiblePrivateProtocol` conformance.
/// Use `IconViewAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkIconViewAccessiblePrivate` instance.
///

public struct IconViewAccessiblePrivateRef: IconViewAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkIconViewAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension IconViewAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkIconViewAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `IconViewAccessiblePrivateProtocol`
    init<T: IconViewAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `IconViewAccessiblePrivate` type acts as an owner of an underlying `GtkIconViewAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `IconViewAccessiblePrivateProtocol` conformance.
/// Use `IconViewAccessiblePrivate` as a strong reference or owner of a `GtkIconViewAccessiblePrivate` instance.
///

open class IconViewAccessiblePrivate: IconViewAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkIconViewAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `IconViewAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkIconViewAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `IconViewAccessiblePrivateProtocol`
    /// `GtkIconViewAccessiblePrivate` does not allow reference counting.
    public convenience init<T: IconViewAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkIconViewAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkIconViewAccessiblePrivate`.
    deinit {
        // no reference counting for GtkIconViewAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkIconViewAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkIconViewAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkIconViewAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkIconViewAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no IconViewAccessiblePrivate properties

// MARK: - no signals


public extension IconViewAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIconViewAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkIconViewAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkIconViewAccessiblePrivate.self) }

}



// MARK: - IconViewClass Record

/// The `IconViewClassProtocol` protocol exposes the methods and properties of an underlying `GtkIconViewClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IconViewClass`.
/// Alternatively, use `IconViewClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol IconViewClassProtocol {
    /// Untyped pointer to the underlying `GtkIconViewClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkIconViewClass` instance.
    var _ptr: UnsafeMutablePointer<GtkIconViewClass> { get }
}

/// The `IconViewClassRef` type acts as a lightweight Swift reference to an underlying `GtkIconViewClass` instance.
/// It exposes methods that can operate on this data type through `IconViewClassProtocol` conformance.
/// Use `IconViewClassRef` only as an `unowned` reference to an existing `GtkIconViewClass` instance.
///

public struct IconViewClassRef: IconViewClassProtocol {
    /// Untyped pointer to the underlying `GtkIconViewClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension IconViewClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkIconViewClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `IconViewClassProtocol`
    init<T: IconViewClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `IconViewClass` type acts as an owner of an underlying `GtkIconViewClass` instance.
/// It provides the methods that can operate on this data type through `IconViewClassProtocol` conformance.
/// Use `IconViewClass` as a strong reference or owner of a `GtkIconViewClass` instance.
///

open class IconViewClass: IconViewClassProtocol {
    /// Untyped pointer to the underlying `GtkIconViewClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `IconViewClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkIconViewClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `IconViewClassProtocol`
    /// `GtkIconViewClass` does not allow reference counting.
    public convenience init<T: IconViewClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkIconViewClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkIconViewClass`.
    deinit {
        // no reference counting for GtkIconViewClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkIconViewClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkIconViewClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkIconViewClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkIconViewClass>(opaquePointer))
    }



}

// MARK: - no IconViewClass properties

// MARK: - no signals


public extension IconViewClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIconViewClass` instance.
    var _ptr: UnsafeMutablePointer<GtkIconViewClass> { return ptr.assumingMemoryBound(to: GtkIconViewClass.self) }

}



// MARK: - IconViewPrivate Record

/// The `IconViewPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkIconViewPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IconViewPrivate`.
/// Alternatively, use `IconViewPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol IconViewPrivateProtocol {
    /// Untyped pointer to the underlying `GtkIconViewPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkIconViewPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkIconViewPrivate> { get }
}

/// The `IconViewPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkIconViewPrivate` instance.
/// It exposes methods that can operate on this data type through `IconViewPrivateProtocol` conformance.
/// Use `IconViewPrivateRef` only as an `unowned` reference to an existing `GtkIconViewPrivate` instance.
///

public struct IconViewPrivateRef: IconViewPrivateProtocol {
    /// Untyped pointer to the underlying `GtkIconViewPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension IconViewPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkIconViewPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `IconViewPrivateProtocol`
    init<T: IconViewPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `IconViewPrivate` type acts as an owner of an underlying `GtkIconViewPrivate` instance.
/// It provides the methods that can operate on this data type through `IconViewPrivateProtocol` conformance.
/// Use `IconViewPrivate` as a strong reference or owner of a `GtkIconViewPrivate` instance.
///

open class IconViewPrivate: IconViewPrivateProtocol {
    /// Untyped pointer to the underlying `GtkIconViewPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `IconViewPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkIconViewPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `IconViewPrivateProtocol`
    /// `GtkIconViewPrivate` does not allow reference counting.
    public convenience init<T: IconViewPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkIconViewPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkIconViewPrivate`.
    deinit {
        // no reference counting for GtkIconViewPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkIconViewPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkIconViewPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkIconViewPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconViewPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkIconViewPrivate>(opaquePointer))
    }



}

// MARK: - no IconViewPrivate properties

// MARK: - no signals


public extension IconViewPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIconViewPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkIconViewPrivate> { return ptr.assumingMemoryBound(to: GtkIconViewPrivate.self) }

}



// MARK: - ImageAccessibleClass Record

/// The `ImageAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkImageAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ImageAccessibleClass`.
/// Alternatively, use `ImageAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ImageAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkImageAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkImageAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkImageAccessibleClass> { get }
}

/// The `ImageAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkImageAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `ImageAccessibleClassProtocol` conformance.
/// Use `ImageAccessibleClassRef` only as an `unowned` reference to an existing `GtkImageAccessibleClass` instance.
///

public struct ImageAccessibleClassRef: ImageAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkImageAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ImageAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkImageAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ImageAccessibleClassProtocol`
    init<T: ImageAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ImageAccessibleClass` type acts as an owner of an underlying `GtkImageAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `ImageAccessibleClassProtocol` conformance.
/// Use `ImageAccessibleClass` as a strong reference or owner of a `GtkImageAccessibleClass` instance.
///

open class ImageAccessibleClass: ImageAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkImageAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ImageAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkImageAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ImageAccessibleClassProtocol`
    /// `GtkImageAccessibleClass` does not allow reference counting.
    public convenience init<T: ImageAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkImageAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkImageAccessibleClass`.
    deinit {
        // no reference counting for GtkImageAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkImageAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkImageAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkImageAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkImageAccessibleClass>(opaquePointer))
    }



}

// MARK: - no ImageAccessibleClass properties

// MARK: - no signals


public extension ImageAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkImageAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkImageAccessibleClass> { return ptr.assumingMemoryBound(to: GtkImageAccessibleClass.self) }

}



// MARK: - ImageAccessiblePrivate Record

/// The `ImageAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkImageAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ImageAccessiblePrivate`.
/// Alternatively, use `ImageAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ImageAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkImageAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkImageAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkImageAccessiblePrivate> { get }
}

/// The `ImageAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkImageAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `ImageAccessiblePrivateProtocol` conformance.
/// Use `ImageAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkImageAccessiblePrivate` instance.
///

public struct ImageAccessiblePrivateRef: ImageAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkImageAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ImageAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkImageAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ImageAccessiblePrivateProtocol`
    init<T: ImageAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ImageAccessiblePrivate` type acts as an owner of an underlying `GtkImageAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `ImageAccessiblePrivateProtocol` conformance.
/// Use `ImageAccessiblePrivate` as a strong reference or owner of a `GtkImageAccessiblePrivate` instance.
///

open class ImageAccessiblePrivate: ImageAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkImageAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ImageAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkImageAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ImageAccessiblePrivateProtocol`
    /// `GtkImageAccessiblePrivate` does not allow reference counting.
    public convenience init<T: ImageAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkImageAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkImageAccessiblePrivate`.
    deinit {
        // no reference counting for GtkImageAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkImageAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkImageAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkImageAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkImageAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no ImageAccessiblePrivate properties

// MARK: - no signals


public extension ImageAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkImageAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkImageAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkImageAccessiblePrivate.self) }

}



// MARK: - ImageCellAccessibleClass Record

/// The `ImageCellAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkImageCellAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ImageCellAccessibleClass`.
/// Alternatively, use `ImageCellAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ImageCellAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkImageCellAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkImageCellAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkImageCellAccessibleClass> { get }
}

/// The `ImageCellAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkImageCellAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `ImageCellAccessibleClassProtocol` conformance.
/// Use `ImageCellAccessibleClassRef` only as an `unowned` reference to an existing `GtkImageCellAccessibleClass` instance.
///

public struct ImageCellAccessibleClassRef: ImageCellAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkImageCellAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ImageCellAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkImageCellAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ImageCellAccessibleClassProtocol`
    init<T: ImageCellAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageCellAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageCellAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageCellAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageCellAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageCellAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ImageCellAccessibleClass` type acts as an owner of an underlying `GtkImageCellAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `ImageCellAccessibleClassProtocol` conformance.
/// Use `ImageCellAccessibleClass` as a strong reference or owner of a `GtkImageCellAccessibleClass` instance.
///

open class ImageCellAccessibleClass: ImageCellAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkImageCellAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ImageCellAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkImageCellAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ImageCellAccessibleClassProtocol`
    /// `GtkImageCellAccessibleClass` does not allow reference counting.
    public convenience init<T: ImageCellAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkImageCellAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkImageCellAccessibleClass`.
    deinit {
        // no reference counting for GtkImageCellAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageCellAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkImageCellAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageCellAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkImageCellAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageCellAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkImageCellAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageCellAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkImageCellAccessibleClass>(opaquePointer))
    }



}

// MARK: - no ImageCellAccessibleClass properties

// MARK: - no signals


public extension ImageCellAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkImageCellAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkImageCellAccessibleClass> { return ptr.assumingMemoryBound(to: GtkImageCellAccessibleClass.self) }

}



// MARK: - ImageCellAccessiblePrivate Record

/// The `ImageCellAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkImageCellAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ImageCellAccessiblePrivate`.
/// Alternatively, use `ImageCellAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ImageCellAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkImageCellAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkImageCellAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkImageCellAccessiblePrivate> { get }
}

/// The `ImageCellAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkImageCellAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `ImageCellAccessiblePrivateProtocol` conformance.
/// Use `ImageCellAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkImageCellAccessiblePrivate` instance.
///

public struct ImageCellAccessiblePrivateRef: ImageCellAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkImageCellAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ImageCellAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkImageCellAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ImageCellAccessiblePrivateProtocol`
    init<T: ImageCellAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageCellAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageCellAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageCellAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageCellAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageCellAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ImageCellAccessiblePrivate` type acts as an owner of an underlying `GtkImageCellAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `ImageCellAccessiblePrivateProtocol` conformance.
/// Use `ImageCellAccessiblePrivate` as a strong reference or owner of a `GtkImageCellAccessiblePrivate` instance.
///

open class ImageCellAccessiblePrivate: ImageCellAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkImageCellAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ImageCellAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkImageCellAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ImageCellAccessiblePrivateProtocol`
    /// `GtkImageCellAccessiblePrivate` does not allow reference counting.
    public convenience init<T: ImageCellAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkImageCellAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkImageCellAccessiblePrivate`.
    deinit {
        // no reference counting for GtkImageCellAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageCellAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkImageCellAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageCellAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkImageCellAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageCellAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkImageCellAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageCellAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkImageCellAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no ImageCellAccessiblePrivate properties

// MARK: - no signals


public extension ImageCellAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkImageCellAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkImageCellAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkImageCellAccessiblePrivate.self) }

}



// MARK: - ImageClass Record

/// The `ImageClassProtocol` protocol exposes the methods and properties of an underlying `GtkImageClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ImageClass`.
/// Alternatively, use `ImageClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ImageClassProtocol {
    /// Untyped pointer to the underlying `GtkImageClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkImageClass` instance.
    var _ptr: UnsafeMutablePointer<GtkImageClass> { get }
}

/// The `ImageClassRef` type acts as a lightweight Swift reference to an underlying `GtkImageClass` instance.
/// It exposes methods that can operate on this data type through `ImageClassProtocol` conformance.
/// Use `ImageClassRef` only as an `unowned` reference to an existing `GtkImageClass` instance.
///

public struct ImageClassRef: ImageClassProtocol {
    /// Untyped pointer to the underlying `GtkImageClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ImageClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkImageClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ImageClassProtocol`
    init<T: ImageClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ImageClass` type acts as an owner of an underlying `GtkImageClass` instance.
/// It provides the methods that can operate on this data type through `ImageClassProtocol` conformance.
/// Use `ImageClass` as a strong reference or owner of a `GtkImageClass` instance.
///

open class ImageClass: ImageClassProtocol {
    /// Untyped pointer to the underlying `GtkImageClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ImageClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkImageClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ImageClassProtocol`
    /// `GtkImageClass` does not allow reference counting.
    public convenience init<T: ImageClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkImageClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkImageClass`.
    deinit {
        // no reference counting for GtkImageClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkImageClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkImageClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkImageClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkImageClass>(opaquePointer))
    }



}

// MARK: - no ImageClass properties

// MARK: - no signals


public extension ImageClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkImageClass` instance.
    var _ptr: UnsafeMutablePointer<GtkImageClass> { return ptr.assumingMemoryBound(to: GtkImageClass.self) }

}



// MARK: - ImageMenuItemClass Record

/// The `ImageMenuItemClassProtocol` protocol exposes the methods and properties of an underlying `GtkImageMenuItemClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ImageMenuItemClass`.
/// Alternatively, use `ImageMenuItemClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ImageMenuItemClassProtocol {
    /// Untyped pointer to the underlying `GtkImageMenuItemClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkImageMenuItemClass` instance.
    var _ptr: UnsafeMutablePointer<GtkImageMenuItemClass> { get }
}

/// The `ImageMenuItemClassRef` type acts as a lightweight Swift reference to an underlying `GtkImageMenuItemClass` instance.
/// It exposes methods that can operate on this data type through `ImageMenuItemClassProtocol` conformance.
/// Use `ImageMenuItemClassRef` only as an `unowned` reference to an existing `GtkImageMenuItemClass` instance.
///

public struct ImageMenuItemClassRef: ImageMenuItemClassProtocol {
    /// Untyped pointer to the underlying `GtkImageMenuItemClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ImageMenuItemClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkImageMenuItemClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ImageMenuItemClassProtocol`
    init<T: ImageMenuItemClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageMenuItemClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageMenuItemClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageMenuItemClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageMenuItemClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageMenuItemClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ImageMenuItemClass` type acts as an owner of an underlying `GtkImageMenuItemClass` instance.
/// It provides the methods that can operate on this data type through `ImageMenuItemClassProtocol` conformance.
/// Use `ImageMenuItemClass` as a strong reference or owner of a `GtkImageMenuItemClass` instance.
///

open class ImageMenuItemClass: ImageMenuItemClassProtocol {
    /// Untyped pointer to the underlying `GtkImageMenuItemClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ImageMenuItemClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkImageMenuItemClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ImageMenuItemClassProtocol`
    /// `GtkImageMenuItemClass` does not allow reference counting.
    public convenience init<T: ImageMenuItemClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkImageMenuItemClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkImageMenuItemClass`.
    deinit {
        // no reference counting for GtkImageMenuItemClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageMenuItemClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkImageMenuItemClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageMenuItemClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkImageMenuItemClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageMenuItemClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkImageMenuItemClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageMenuItemClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkImageMenuItemClass>(opaquePointer))
    }



}

// MARK: - no ImageMenuItemClass properties

// MARK: - no signals


public extension ImageMenuItemClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkImageMenuItemClass` instance.
    var _ptr: UnsafeMutablePointer<GtkImageMenuItemClass> { return ptr.assumingMemoryBound(to: GtkImageMenuItemClass.self) }

}



// MARK: - ImageMenuItemPrivate Record

/// The `ImageMenuItemPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkImageMenuItemPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ImageMenuItemPrivate`.
/// Alternatively, use `ImageMenuItemPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ImageMenuItemPrivateProtocol {
    /// Untyped pointer to the underlying `GtkImageMenuItemPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkImageMenuItemPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkImageMenuItemPrivate> { get }
}

/// The `ImageMenuItemPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkImageMenuItemPrivate` instance.
/// It exposes methods that can operate on this data type through `ImageMenuItemPrivateProtocol` conformance.
/// Use `ImageMenuItemPrivateRef` only as an `unowned` reference to an existing `GtkImageMenuItemPrivate` instance.
///

public struct ImageMenuItemPrivateRef: ImageMenuItemPrivateProtocol {
    /// Untyped pointer to the underlying `GtkImageMenuItemPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ImageMenuItemPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkImageMenuItemPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ImageMenuItemPrivateProtocol`
    init<T: ImageMenuItemPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageMenuItemPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageMenuItemPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageMenuItemPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageMenuItemPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageMenuItemPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ImageMenuItemPrivate` type acts as an owner of an underlying `GtkImageMenuItemPrivate` instance.
/// It provides the methods that can operate on this data type through `ImageMenuItemPrivateProtocol` conformance.
/// Use `ImageMenuItemPrivate` as a strong reference or owner of a `GtkImageMenuItemPrivate` instance.
///

open class ImageMenuItemPrivate: ImageMenuItemPrivateProtocol {
    /// Untyped pointer to the underlying `GtkImageMenuItemPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ImageMenuItemPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkImageMenuItemPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ImageMenuItemPrivateProtocol`
    /// `GtkImageMenuItemPrivate` does not allow reference counting.
    public convenience init<T: ImageMenuItemPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkImageMenuItemPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkImageMenuItemPrivate`.
    deinit {
        // no reference counting for GtkImageMenuItemPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageMenuItemPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkImageMenuItemPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageMenuItemPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkImageMenuItemPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageMenuItemPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkImageMenuItemPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImageMenuItemPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkImageMenuItemPrivate>(opaquePointer))
    }



}

// MARK: - no ImageMenuItemPrivate properties

// MARK: - no signals


public extension ImageMenuItemPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkImageMenuItemPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkImageMenuItemPrivate> { return ptr.assumingMemoryBound(to: GtkImageMenuItemPrivate.self) }

}



// MARK: - ImagePrivate Record

/// The `ImagePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkImagePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ImagePrivate`.
/// Alternatively, use `ImagePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ImagePrivateProtocol {
    /// Untyped pointer to the underlying `GtkImagePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkImagePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkImagePrivate> { get }
}

/// The `ImagePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkImagePrivate` instance.
/// It exposes methods that can operate on this data type through `ImagePrivateProtocol` conformance.
/// Use `ImagePrivateRef` only as an `unowned` reference to an existing `GtkImagePrivate` instance.
///

public struct ImagePrivateRef: ImagePrivateProtocol {
    /// Untyped pointer to the underlying `GtkImagePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ImagePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkImagePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ImagePrivateProtocol`
    init<T: ImagePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImagePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImagePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImagePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImagePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImagePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ImagePrivate` type acts as an owner of an underlying `GtkImagePrivate` instance.
/// It provides the methods that can operate on this data type through `ImagePrivateProtocol` conformance.
/// Use `ImagePrivate` as a strong reference or owner of a `GtkImagePrivate` instance.
///

open class ImagePrivate: ImagePrivateProtocol {
    /// Untyped pointer to the underlying `GtkImagePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ImagePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkImagePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ImagePrivateProtocol`
    /// `GtkImagePrivate` does not allow reference counting.
    public convenience init<T: ImagePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkImagePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkImagePrivate`.
    deinit {
        // no reference counting for GtkImagePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImagePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkImagePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImagePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkImagePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImagePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkImagePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ImagePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkImagePrivate>(opaquePointer))
    }



}

// MARK: - no ImagePrivate properties

// MARK: - no signals


public extension ImagePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkImagePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkImagePrivate> { return ptr.assumingMemoryBound(to: GtkImagePrivate.self) }

}



// MARK: - InfoBarClass Record

/// The `InfoBarClassProtocol` protocol exposes the methods and properties of an underlying `GtkInfoBarClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InfoBarClass`.
/// Alternatively, use `InfoBarClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol InfoBarClassProtocol {
    /// Untyped pointer to the underlying `GtkInfoBarClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkInfoBarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkInfoBarClass> { get }
}

/// The `InfoBarClassRef` type acts as a lightweight Swift reference to an underlying `GtkInfoBarClass` instance.
/// It exposes methods that can operate on this data type through `InfoBarClassProtocol` conformance.
/// Use `InfoBarClassRef` only as an `unowned` reference to an existing `GtkInfoBarClass` instance.
///

public struct InfoBarClassRef: InfoBarClassProtocol {
    /// Untyped pointer to the underlying `GtkInfoBarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension InfoBarClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkInfoBarClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `InfoBarClassProtocol`
    init<T: InfoBarClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `InfoBarClass` type acts as an owner of an underlying `GtkInfoBarClass` instance.
/// It provides the methods that can operate on this data type through `InfoBarClassProtocol` conformance.
/// Use `InfoBarClass` as a strong reference or owner of a `GtkInfoBarClass` instance.
///

open class InfoBarClass: InfoBarClassProtocol {
    /// Untyped pointer to the underlying `GtkInfoBarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `InfoBarClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkInfoBarClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `InfoBarClassProtocol`
    /// `GtkInfoBarClass` does not allow reference counting.
    public convenience init<T: InfoBarClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkInfoBarClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkInfoBarClass`.
    deinit {
        // no reference counting for GtkInfoBarClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkInfoBarClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkInfoBarClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkInfoBarClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkInfoBarClass>(opaquePointer))
    }



}

// MARK: - no InfoBarClass properties

// MARK: - no signals


public extension InfoBarClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkInfoBarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkInfoBarClass> { return ptr.assumingMemoryBound(to: GtkInfoBarClass.self) }

}



// MARK: - InfoBarPrivate Record

/// The `InfoBarPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkInfoBarPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InfoBarPrivate`.
/// Alternatively, use `InfoBarPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol InfoBarPrivateProtocol {
    /// Untyped pointer to the underlying `GtkInfoBarPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkInfoBarPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkInfoBarPrivate> { get }
}

/// The `InfoBarPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkInfoBarPrivate` instance.
/// It exposes methods that can operate on this data type through `InfoBarPrivateProtocol` conformance.
/// Use `InfoBarPrivateRef` only as an `unowned` reference to an existing `GtkInfoBarPrivate` instance.
///

public struct InfoBarPrivateRef: InfoBarPrivateProtocol {
    /// Untyped pointer to the underlying `GtkInfoBarPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension InfoBarPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkInfoBarPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `InfoBarPrivateProtocol`
    init<T: InfoBarPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `InfoBarPrivate` type acts as an owner of an underlying `GtkInfoBarPrivate` instance.
/// It provides the methods that can operate on this data type through `InfoBarPrivateProtocol` conformance.
/// Use `InfoBarPrivate` as a strong reference or owner of a `GtkInfoBarPrivate` instance.
///

open class InfoBarPrivate: InfoBarPrivateProtocol {
    /// Untyped pointer to the underlying `GtkInfoBarPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `InfoBarPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkInfoBarPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `InfoBarPrivateProtocol`
    /// `GtkInfoBarPrivate` does not allow reference counting.
    public convenience init<T: InfoBarPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkInfoBarPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkInfoBarPrivate`.
    deinit {
        // no reference counting for GtkInfoBarPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkInfoBarPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkInfoBarPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkInfoBarPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InfoBarPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkInfoBarPrivate>(opaquePointer))
    }



}

// MARK: - no InfoBarPrivate properties

// MARK: - no signals


public extension InfoBarPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkInfoBarPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkInfoBarPrivate> { return ptr.assumingMemoryBound(to: GtkInfoBarPrivate.self) }

}



// MARK: - InvisibleClass Record

/// The `InvisibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkInvisibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InvisibleClass`.
/// Alternatively, use `InvisibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol InvisibleClassProtocol {
    /// Untyped pointer to the underlying `GtkInvisibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkInvisibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkInvisibleClass> { get }
}

/// The `InvisibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkInvisibleClass` instance.
/// It exposes methods that can operate on this data type through `InvisibleClassProtocol` conformance.
/// Use `InvisibleClassRef` only as an `unowned` reference to an existing `GtkInvisibleClass` instance.
///

public struct InvisibleClassRef: InvisibleClassProtocol {
    /// Untyped pointer to the underlying `GtkInvisibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension InvisibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkInvisibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `InvisibleClassProtocol`
    init<T: InvisibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InvisibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InvisibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InvisibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InvisibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InvisibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `InvisibleClass` type acts as an owner of an underlying `GtkInvisibleClass` instance.
/// It provides the methods that can operate on this data type through `InvisibleClassProtocol` conformance.
/// Use `InvisibleClass` as a strong reference or owner of a `GtkInvisibleClass` instance.
///

open class InvisibleClass: InvisibleClassProtocol {
    /// Untyped pointer to the underlying `GtkInvisibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `InvisibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkInvisibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `InvisibleClassProtocol`
    /// `GtkInvisibleClass` does not allow reference counting.
    public convenience init<T: InvisibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkInvisibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkInvisibleClass`.
    deinit {
        // no reference counting for GtkInvisibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InvisibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkInvisibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InvisibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkInvisibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InvisibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkInvisibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InvisibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkInvisibleClass>(opaquePointer))
    }



}

// MARK: - no InvisibleClass properties

// MARK: - no signals


public extension InvisibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkInvisibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkInvisibleClass> { return ptr.assumingMemoryBound(to: GtkInvisibleClass.self) }

}



// MARK: - InvisiblePrivate Record

/// The `InvisiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkInvisiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InvisiblePrivate`.
/// Alternatively, use `InvisiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol InvisiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkInvisiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkInvisiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkInvisiblePrivate> { get }
}

/// The `InvisiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkInvisiblePrivate` instance.
/// It exposes methods that can operate on this data type through `InvisiblePrivateProtocol` conformance.
/// Use `InvisiblePrivateRef` only as an `unowned` reference to an existing `GtkInvisiblePrivate` instance.
///

public struct InvisiblePrivateRef: InvisiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkInvisiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension InvisiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkInvisiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `InvisiblePrivateProtocol`
    init<T: InvisiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InvisiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InvisiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InvisiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InvisiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InvisiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `InvisiblePrivate` type acts as an owner of an underlying `GtkInvisiblePrivate` instance.
/// It provides the methods that can operate on this data type through `InvisiblePrivateProtocol` conformance.
/// Use `InvisiblePrivate` as a strong reference or owner of a `GtkInvisiblePrivate` instance.
///

open class InvisiblePrivate: InvisiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkInvisiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `InvisiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkInvisiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `InvisiblePrivateProtocol`
    /// `GtkInvisiblePrivate` does not allow reference counting.
    public convenience init<T: InvisiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkInvisiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkInvisiblePrivate`.
    deinit {
        // no reference counting for GtkInvisiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InvisiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkInvisiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InvisiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkInvisiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InvisiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkInvisiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InvisiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkInvisiblePrivate>(opaquePointer))
    }



}

// MARK: - no InvisiblePrivate properties

// MARK: - no signals


public extension InvisiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkInvisiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkInvisiblePrivate> { return ptr.assumingMemoryBound(to: GtkInvisiblePrivate.self) }

}



// MARK: - LabelAccessibleClass Record

/// The `LabelAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkLabelAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LabelAccessibleClass`.
/// Alternatively, use `LabelAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol LabelAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkLabelAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkLabelAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkLabelAccessibleClass> { get }
}

/// The `LabelAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkLabelAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `LabelAccessibleClassProtocol` conformance.
/// Use `LabelAccessibleClassRef` only as an `unowned` reference to an existing `GtkLabelAccessibleClass` instance.
///

public struct LabelAccessibleClassRef: LabelAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkLabelAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension LabelAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkLabelAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `LabelAccessibleClassProtocol`
    init<T: LabelAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `LabelAccessibleClass` type acts as an owner of an underlying `GtkLabelAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `LabelAccessibleClassProtocol` conformance.
/// Use `LabelAccessibleClass` as a strong reference or owner of a `GtkLabelAccessibleClass` instance.
///

open class LabelAccessibleClass: LabelAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkLabelAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `LabelAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkLabelAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `LabelAccessibleClassProtocol`
    /// `GtkLabelAccessibleClass` does not allow reference counting.
    public convenience init<T: LabelAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkLabelAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkLabelAccessibleClass`.
    deinit {
        // no reference counting for GtkLabelAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkLabelAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkLabelAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkLabelAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkLabelAccessibleClass>(opaquePointer))
    }



}

// MARK: - no LabelAccessibleClass properties

// MARK: - no signals


public extension LabelAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLabelAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkLabelAccessibleClass> { return ptr.assumingMemoryBound(to: GtkLabelAccessibleClass.self) }

}



