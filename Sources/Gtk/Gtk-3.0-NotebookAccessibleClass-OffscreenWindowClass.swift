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

// MARK: - NotebookAccessibleClass Record

/// The `NotebookAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkNotebookAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NotebookAccessibleClass`.
/// Alternatively, use `NotebookAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol NotebookAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkNotebookAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkNotebookAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkNotebookAccessibleClass> { get }
}

/// The `NotebookAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkNotebookAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `NotebookAccessibleClassProtocol` conformance.
/// Use `NotebookAccessibleClassRef` only as an `unowned` reference to an existing `GtkNotebookAccessibleClass` instance.
///

public struct NotebookAccessibleClassRef: NotebookAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkNotebookAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension NotebookAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkNotebookAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `NotebookAccessibleClassProtocol`
    init<T: NotebookAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `NotebookAccessibleClass` type acts as an owner of an underlying `GtkNotebookAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `NotebookAccessibleClassProtocol` conformance.
/// Use `NotebookAccessibleClass` as a strong reference or owner of a `GtkNotebookAccessibleClass` instance.
///

open class NotebookAccessibleClass: NotebookAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkNotebookAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `NotebookAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkNotebookAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `NotebookAccessibleClassProtocol`
    /// `GtkNotebookAccessibleClass` does not allow reference counting.
    public convenience init<T: NotebookAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkNotebookAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkNotebookAccessibleClass`.
    deinit {
        // no reference counting for GtkNotebookAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkNotebookAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkNotebookAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkNotebookAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkNotebookAccessibleClass>(opaquePointer))
    }



}

// MARK: - no NotebookAccessibleClass properties

// MARK: - no signals


public extension NotebookAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkNotebookAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkNotebookAccessibleClass> { return ptr.assumingMemoryBound(to: GtkNotebookAccessibleClass.self) }

}



// MARK: - NotebookAccessiblePrivate Record

/// The `NotebookAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkNotebookAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NotebookAccessiblePrivate`.
/// Alternatively, use `NotebookAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol NotebookAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkNotebookAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkNotebookAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkNotebookAccessiblePrivate> { get }
}

/// The `NotebookAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkNotebookAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `NotebookAccessiblePrivateProtocol` conformance.
/// Use `NotebookAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkNotebookAccessiblePrivate` instance.
///

public struct NotebookAccessiblePrivateRef: NotebookAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkNotebookAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension NotebookAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkNotebookAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `NotebookAccessiblePrivateProtocol`
    init<T: NotebookAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `NotebookAccessiblePrivate` type acts as an owner of an underlying `GtkNotebookAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `NotebookAccessiblePrivateProtocol` conformance.
/// Use `NotebookAccessiblePrivate` as a strong reference or owner of a `GtkNotebookAccessiblePrivate` instance.
///

open class NotebookAccessiblePrivate: NotebookAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkNotebookAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `NotebookAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkNotebookAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `NotebookAccessiblePrivateProtocol`
    /// `GtkNotebookAccessiblePrivate` does not allow reference counting.
    public convenience init<T: NotebookAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkNotebookAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkNotebookAccessiblePrivate`.
    deinit {
        // no reference counting for GtkNotebookAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkNotebookAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkNotebookAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkNotebookAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkNotebookAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no NotebookAccessiblePrivate properties

// MARK: - no signals


public extension NotebookAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkNotebookAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkNotebookAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkNotebookAccessiblePrivate.self) }

}



// MARK: - NotebookClass Record

/// The `NotebookClassProtocol` protocol exposes the methods and properties of an underlying `GtkNotebookClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NotebookClass`.
/// Alternatively, use `NotebookClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol NotebookClassProtocol {
    /// Untyped pointer to the underlying `GtkNotebookClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkNotebookClass` instance.
    var _ptr: UnsafeMutablePointer<GtkNotebookClass> { get }
}

/// The `NotebookClassRef` type acts as a lightweight Swift reference to an underlying `GtkNotebookClass` instance.
/// It exposes methods that can operate on this data type through `NotebookClassProtocol` conformance.
/// Use `NotebookClassRef` only as an `unowned` reference to an existing `GtkNotebookClass` instance.
///

public struct NotebookClassRef: NotebookClassProtocol {
    /// Untyped pointer to the underlying `GtkNotebookClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension NotebookClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkNotebookClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `NotebookClassProtocol`
    init<T: NotebookClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `NotebookClass` type acts as an owner of an underlying `GtkNotebookClass` instance.
/// It provides the methods that can operate on this data type through `NotebookClassProtocol` conformance.
/// Use `NotebookClass` as a strong reference or owner of a `GtkNotebookClass` instance.
///

open class NotebookClass: NotebookClassProtocol {
    /// Untyped pointer to the underlying `GtkNotebookClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `NotebookClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkNotebookClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `NotebookClassProtocol`
    /// `GtkNotebookClass` does not allow reference counting.
    public convenience init<T: NotebookClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkNotebookClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkNotebookClass`.
    deinit {
        // no reference counting for GtkNotebookClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkNotebookClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkNotebookClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkNotebookClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkNotebookClass>(opaquePointer))
    }



}

// MARK: - no NotebookClass properties

// MARK: - no signals


public extension NotebookClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkNotebookClass` instance.
    var _ptr: UnsafeMutablePointer<GtkNotebookClass> { return ptr.assumingMemoryBound(to: GtkNotebookClass.self) }

}



// MARK: - NotebookPageAccessibleClass Record

/// The `NotebookPageAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkNotebookPageAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NotebookPageAccessibleClass`.
/// Alternatively, use `NotebookPageAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol NotebookPageAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkNotebookPageAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkNotebookPageAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkNotebookPageAccessibleClass> { get }
}

/// The `NotebookPageAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkNotebookPageAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `NotebookPageAccessibleClassProtocol` conformance.
/// Use `NotebookPageAccessibleClassRef` only as an `unowned` reference to an existing `GtkNotebookPageAccessibleClass` instance.
///

public struct NotebookPageAccessibleClassRef: NotebookPageAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkNotebookPageAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension NotebookPageAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkNotebookPageAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `NotebookPageAccessibleClassProtocol`
    init<T: NotebookPageAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `NotebookPageAccessibleClass` type acts as an owner of an underlying `GtkNotebookPageAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `NotebookPageAccessibleClassProtocol` conformance.
/// Use `NotebookPageAccessibleClass` as a strong reference or owner of a `GtkNotebookPageAccessibleClass` instance.
///

open class NotebookPageAccessibleClass: NotebookPageAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkNotebookPageAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `NotebookPageAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkNotebookPageAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `NotebookPageAccessibleClassProtocol`
    /// `GtkNotebookPageAccessibleClass` does not allow reference counting.
    public convenience init<T: NotebookPageAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkNotebookPageAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkNotebookPageAccessibleClass`.
    deinit {
        // no reference counting for GtkNotebookPageAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkNotebookPageAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkNotebookPageAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkNotebookPageAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkNotebookPageAccessibleClass>(opaquePointer))
    }



}

// MARK: - no NotebookPageAccessibleClass properties

// MARK: - no signals


public extension NotebookPageAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkNotebookPageAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkNotebookPageAccessibleClass> { return ptr.assumingMemoryBound(to: GtkNotebookPageAccessibleClass.self) }

}



// MARK: - NotebookPageAccessiblePrivate Record

/// The `NotebookPageAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkNotebookPageAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NotebookPageAccessiblePrivate`.
/// Alternatively, use `NotebookPageAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol NotebookPageAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkNotebookPageAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkNotebookPageAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkNotebookPageAccessiblePrivate> { get }
}

/// The `NotebookPageAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkNotebookPageAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `NotebookPageAccessiblePrivateProtocol` conformance.
/// Use `NotebookPageAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkNotebookPageAccessiblePrivate` instance.
///

public struct NotebookPageAccessiblePrivateRef: NotebookPageAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkNotebookPageAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension NotebookPageAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkNotebookPageAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `NotebookPageAccessiblePrivateProtocol`
    init<T: NotebookPageAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `NotebookPageAccessiblePrivate` type acts as an owner of an underlying `GtkNotebookPageAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `NotebookPageAccessiblePrivateProtocol` conformance.
/// Use `NotebookPageAccessiblePrivate` as a strong reference or owner of a `GtkNotebookPageAccessiblePrivate` instance.
///

open class NotebookPageAccessiblePrivate: NotebookPageAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkNotebookPageAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `NotebookPageAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkNotebookPageAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `NotebookPageAccessiblePrivateProtocol`
    /// `GtkNotebookPageAccessiblePrivate` does not allow reference counting.
    public convenience init<T: NotebookPageAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkNotebookPageAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkNotebookPageAccessiblePrivate`.
    deinit {
        // no reference counting for GtkNotebookPageAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkNotebookPageAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkNotebookPageAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkNotebookPageAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkNotebookPageAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no NotebookPageAccessiblePrivate properties

// MARK: - no signals


public extension NotebookPageAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkNotebookPageAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkNotebookPageAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkNotebookPageAccessiblePrivate.self) }

}



// MARK: - NotebookPrivate Record

/// The `NotebookPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkNotebookPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NotebookPrivate`.
/// Alternatively, use `NotebookPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol NotebookPrivateProtocol {
    /// Untyped pointer to the underlying `GtkNotebookPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkNotebookPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkNotebookPrivate> { get }
}

/// The `NotebookPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkNotebookPrivate` instance.
/// It exposes methods that can operate on this data type through `NotebookPrivateProtocol` conformance.
/// Use `NotebookPrivateRef` only as an `unowned` reference to an existing `GtkNotebookPrivate` instance.
///

public struct NotebookPrivateRef: NotebookPrivateProtocol {
    /// Untyped pointer to the underlying `GtkNotebookPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension NotebookPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkNotebookPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `NotebookPrivateProtocol`
    init<T: NotebookPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `NotebookPrivate` type acts as an owner of an underlying `GtkNotebookPrivate` instance.
/// It provides the methods that can operate on this data type through `NotebookPrivateProtocol` conformance.
/// Use `NotebookPrivate` as a strong reference or owner of a `GtkNotebookPrivate` instance.
///

open class NotebookPrivate: NotebookPrivateProtocol {
    /// Untyped pointer to the underlying `GtkNotebookPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `NotebookPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkNotebookPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `NotebookPrivateProtocol`
    /// `GtkNotebookPrivate` does not allow reference counting.
    public convenience init<T: NotebookPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkNotebookPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkNotebookPrivate`.
    deinit {
        // no reference counting for GtkNotebookPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkNotebookPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkNotebookPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkNotebookPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkNotebookPrivate>(opaquePointer))
    }



}

// MARK: - no NotebookPrivate properties

// MARK: - no signals


public extension NotebookPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkNotebookPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkNotebookPrivate> { return ptr.assumingMemoryBound(to: GtkNotebookPrivate.self) }

}



// MARK: - NumerableIconClass Record

/// The `NumerableIconClassProtocol` protocol exposes the methods and properties of an underlying `GtkNumerableIconClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NumerableIconClass`.
/// Alternatively, use `NumerableIconClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol NumerableIconClassProtocol {
    /// Untyped pointer to the underlying `GtkNumerableIconClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkNumerableIconClass` instance.
    var _ptr: UnsafeMutablePointer<GtkNumerableIconClass> { get }
}

/// The `NumerableIconClassRef` type acts as a lightweight Swift reference to an underlying `GtkNumerableIconClass` instance.
/// It exposes methods that can operate on this data type through `NumerableIconClassProtocol` conformance.
/// Use `NumerableIconClassRef` only as an `unowned` reference to an existing `GtkNumerableIconClass` instance.
///

public struct NumerableIconClassRef: NumerableIconClassProtocol {
    /// Untyped pointer to the underlying `GtkNumerableIconClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension NumerableIconClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkNumerableIconClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `NumerableIconClassProtocol`
    init<T: NumerableIconClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumerableIconClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumerableIconClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumerableIconClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumerableIconClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumerableIconClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `NumerableIconClass` type acts as an owner of an underlying `GtkNumerableIconClass` instance.
/// It provides the methods that can operate on this data type through `NumerableIconClassProtocol` conformance.
/// Use `NumerableIconClass` as a strong reference or owner of a `GtkNumerableIconClass` instance.
///

open class NumerableIconClass: NumerableIconClassProtocol {
    /// Untyped pointer to the underlying `GtkNumerableIconClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `NumerableIconClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkNumerableIconClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `NumerableIconClassProtocol`
    /// `GtkNumerableIconClass` does not allow reference counting.
    public convenience init<T: NumerableIconClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkNumerableIconClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkNumerableIconClass`.
    deinit {
        // no reference counting for GtkNumerableIconClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumerableIconClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkNumerableIconClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumerableIconClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkNumerableIconClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumerableIconClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkNumerableIconClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumerableIconClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkNumerableIconClass>(opaquePointer))
    }



}

// MARK: - no NumerableIconClass properties

// MARK: - no signals


public extension NumerableIconClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkNumerableIconClass` instance.
    var _ptr: UnsafeMutablePointer<GtkNumerableIconClass> { return ptr.assumingMemoryBound(to: GtkNumerableIconClass.self) }

}



// MARK: - NumerableIconPrivate Record

/// The `NumerableIconPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkNumerableIconPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NumerableIconPrivate`.
/// Alternatively, use `NumerableIconPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol NumerableIconPrivateProtocol {
    /// Untyped pointer to the underlying `GtkNumerableIconPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkNumerableIconPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkNumerableIconPrivate> { get }
}

/// The `NumerableIconPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkNumerableIconPrivate` instance.
/// It exposes methods that can operate on this data type through `NumerableIconPrivateProtocol` conformance.
/// Use `NumerableIconPrivateRef` only as an `unowned` reference to an existing `GtkNumerableIconPrivate` instance.
///

public struct NumerableIconPrivateRef: NumerableIconPrivateProtocol {
    /// Untyped pointer to the underlying `GtkNumerableIconPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension NumerableIconPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkNumerableIconPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `NumerableIconPrivateProtocol`
    init<T: NumerableIconPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumerableIconPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumerableIconPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumerableIconPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumerableIconPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumerableIconPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `NumerableIconPrivate` type acts as an owner of an underlying `GtkNumerableIconPrivate` instance.
/// It provides the methods that can operate on this data type through `NumerableIconPrivateProtocol` conformance.
/// Use `NumerableIconPrivate` as a strong reference or owner of a `GtkNumerableIconPrivate` instance.
///

open class NumerableIconPrivate: NumerableIconPrivateProtocol {
    /// Untyped pointer to the underlying `GtkNumerableIconPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `NumerableIconPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkNumerableIconPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `NumerableIconPrivateProtocol`
    /// `GtkNumerableIconPrivate` does not allow reference counting.
    public convenience init<T: NumerableIconPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkNumerableIconPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkNumerableIconPrivate`.
    deinit {
        // no reference counting for GtkNumerableIconPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumerableIconPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkNumerableIconPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumerableIconPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkNumerableIconPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumerableIconPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkNumerableIconPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumerableIconPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkNumerableIconPrivate>(opaquePointer))
    }



}

// MARK: - no NumerableIconPrivate properties

// MARK: - no signals


public extension NumerableIconPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkNumerableIconPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkNumerableIconPrivate> { return ptr.assumingMemoryBound(to: GtkNumerableIconPrivate.self) }

}



// MARK: - OffscreenWindowClass Record

/// The `OffscreenWindowClassProtocol` protocol exposes the methods and properties of an underlying `GtkOffscreenWindowClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `OffscreenWindowClass`.
/// Alternatively, use `OffscreenWindowClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol OffscreenWindowClassProtocol {
    /// Untyped pointer to the underlying `GtkOffscreenWindowClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkOffscreenWindowClass` instance.
    var _ptr: UnsafeMutablePointer<GtkOffscreenWindowClass> { get }
}

/// The `OffscreenWindowClassRef` type acts as a lightweight Swift reference to an underlying `GtkOffscreenWindowClass` instance.
/// It exposes methods that can operate on this data type through `OffscreenWindowClassProtocol` conformance.
/// Use `OffscreenWindowClassRef` only as an `unowned` reference to an existing `GtkOffscreenWindowClass` instance.
///

public struct OffscreenWindowClassRef: OffscreenWindowClassProtocol {
    /// Untyped pointer to the underlying `GtkOffscreenWindowClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension OffscreenWindowClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkOffscreenWindowClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `OffscreenWindowClassProtocol`
    init<T: OffscreenWindowClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenWindowClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenWindowClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenWindowClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenWindowClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenWindowClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `OffscreenWindowClass` type acts as an owner of an underlying `GtkOffscreenWindowClass` instance.
/// It provides the methods that can operate on this data type through `OffscreenWindowClassProtocol` conformance.
/// Use `OffscreenWindowClass` as a strong reference or owner of a `GtkOffscreenWindowClass` instance.
///

open class OffscreenWindowClass: OffscreenWindowClassProtocol {
    /// Untyped pointer to the underlying `GtkOffscreenWindowClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `OffscreenWindowClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkOffscreenWindowClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `OffscreenWindowClassProtocol`
    /// `GtkOffscreenWindowClass` does not allow reference counting.
    public convenience init<T: OffscreenWindowClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkOffscreenWindowClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkOffscreenWindowClass`.
    deinit {
        // no reference counting for GtkOffscreenWindowClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenWindowClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkOffscreenWindowClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenWindowClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkOffscreenWindowClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenWindowClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkOffscreenWindowClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenWindowClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkOffscreenWindowClass>(opaquePointer))
    }



}

// MARK: - no OffscreenWindowClass properties

// MARK: - no signals


public extension OffscreenWindowClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkOffscreenWindowClass` instance.
    var _ptr: UnsafeMutablePointer<GtkOffscreenWindowClass> { return ptr.assumingMemoryBound(to: GtkOffscreenWindowClass.self) }

}



