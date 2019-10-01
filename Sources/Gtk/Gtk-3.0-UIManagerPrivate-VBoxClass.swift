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

// MARK: - UIManagerPrivate Record

/// The `UIManagerPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkUIManagerPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UIManagerPrivate`.
/// Alternatively, use `UIManagerPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol UIManagerPrivateProtocol {
    /// Untyped pointer to the underlying `GtkUIManagerPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkUIManagerPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkUIManagerPrivate> { get }
}

/// The `UIManagerPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkUIManagerPrivate` instance.
/// It exposes methods that can operate on this data type through `UIManagerPrivateProtocol` conformance.
/// Use `UIManagerPrivateRef` only as an `unowned` reference to an existing `GtkUIManagerPrivate` instance.
///

public struct UIManagerPrivateRef: UIManagerPrivateProtocol {
    /// Untyped pointer to the underlying `GtkUIManagerPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension UIManagerPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkUIManagerPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `UIManagerPrivateProtocol`
    init<T: UIManagerPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UIManagerPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UIManagerPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UIManagerPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UIManagerPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UIManagerPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `UIManagerPrivate` type acts as an owner of an underlying `GtkUIManagerPrivate` instance.
/// It provides the methods that can operate on this data type through `UIManagerPrivateProtocol` conformance.
/// Use `UIManagerPrivate` as a strong reference or owner of a `GtkUIManagerPrivate` instance.
///

open class UIManagerPrivate: UIManagerPrivateProtocol {
    /// Untyped pointer to the underlying `GtkUIManagerPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `UIManagerPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkUIManagerPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `UIManagerPrivateProtocol`
    /// `GtkUIManagerPrivate` does not allow reference counting.
    public convenience init<T: UIManagerPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkUIManagerPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkUIManagerPrivate`.
    deinit {
        // no reference counting for GtkUIManagerPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UIManagerPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkUIManagerPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UIManagerPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkUIManagerPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UIManagerPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkUIManagerPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UIManagerPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkUIManagerPrivate>(opaquePointer))
    }



}

// MARK: - no UIManagerPrivate properties

// MARK: - no signals


public extension UIManagerPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkUIManagerPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkUIManagerPrivate> { return ptr.assumingMemoryBound(to: GtkUIManagerPrivate.self) }

}



// MARK: - VBoxClass Record

/// The `VBoxClassProtocol` protocol exposes the methods and properties of an underlying `GtkVBoxClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VBoxClass`.
/// Alternatively, use `VBoxClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol VBoxClassProtocol {
    /// Untyped pointer to the underlying `GtkVBoxClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkVBoxClass` instance.
    var _ptr: UnsafeMutablePointer<GtkVBoxClass> { get }
}

/// The `VBoxClassRef` type acts as a lightweight Swift reference to an underlying `GtkVBoxClass` instance.
/// It exposes methods that can operate on this data type through `VBoxClassProtocol` conformance.
/// Use `VBoxClassRef` only as an `unowned` reference to an existing `GtkVBoxClass` instance.
///

public struct VBoxClassRef: VBoxClassProtocol {
    /// Untyped pointer to the underlying `GtkVBoxClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension VBoxClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkVBoxClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `VBoxClassProtocol`
    init<T: VBoxClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VBoxClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VBoxClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VBoxClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VBoxClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VBoxClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `VBoxClass` type acts as an owner of an underlying `GtkVBoxClass` instance.
/// It provides the methods that can operate on this data type through `VBoxClassProtocol` conformance.
/// Use `VBoxClass` as a strong reference or owner of a `GtkVBoxClass` instance.
///

open class VBoxClass: VBoxClassProtocol {
    /// Untyped pointer to the underlying `GtkVBoxClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `VBoxClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkVBoxClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `VBoxClassProtocol`
    /// `GtkVBoxClass` does not allow reference counting.
    public convenience init<T: VBoxClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkVBoxClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkVBoxClass`.
    deinit {
        // no reference counting for GtkVBoxClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VBoxClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkVBoxClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VBoxClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkVBoxClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VBoxClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkVBoxClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VBoxClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkVBoxClass>(opaquePointer))
    }



}

// MARK: - no VBoxClass properties

// MARK: - no signals


public extension VBoxClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkVBoxClass` instance.
    var _ptr: UnsafeMutablePointer<GtkVBoxClass> { return ptr.assumingMemoryBound(to: GtkVBoxClass.self) }

}



