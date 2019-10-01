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

// MARK: - DialogPrivate Record

/// The `DialogPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkDialogPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DialogPrivate`.
/// Alternatively, use `DialogPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol DialogPrivateProtocol {
    /// Untyped pointer to the underlying `GtkDialogPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkDialogPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkDialogPrivate> { get }
}

/// The `DialogPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkDialogPrivate` instance.
/// It exposes methods that can operate on this data type through `DialogPrivateProtocol` conformance.
/// Use `DialogPrivateRef` only as an `unowned` reference to an existing `GtkDialogPrivate` instance.
///

public struct DialogPrivateRef: DialogPrivateProtocol {
    /// Untyped pointer to the underlying `GtkDialogPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DialogPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkDialogPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DialogPrivateProtocol`
    init<T: DialogPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DialogPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DialogPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DialogPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DialogPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DialogPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DialogPrivate` type acts as an owner of an underlying `GtkDialogPrivate` instance.
/// It provides the methods that can operate on this data type through `DialogPrivateProtocol` conformance.
/// Use `DialogPrivate` as a strong reference or owner of a `GtkDialogPrivate` instance.
///

open class DialogPrivate: DialogPrivateProtocol {
    /// Untyped pointer to the underlying `GtkDialogPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DialogPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkDialogPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DialogPrivateProtocol`
    /// `GtkDialogPrivate` does not allow reference counting.
    public convenience init<T: DialogPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkDialogPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkDialogPrivate`.
    deinit {
        // no reference counting for GtkDialogPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DialogPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkDialogPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DialogPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkDialogPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DialogPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkDialogPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DialogPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkDialogPrivate>(opaquePointer))
    }



}

// MARK: - no DialogPrivate properties

// MARK: - no signals


public extension DialogPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkDialogPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkDialogPrivate> { return ptr.assumingMemoryBound(to: GtkDialogPrivate.self) }

}



// MARK: - DrawingAreaClass Record

/// The `DrawingAreaClassProtocol` protocol exposes the methods and properties of an underlying `GtkDrawingAreaClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DrawingAreaClass`.
/// Alternatively, use `DrawingAreaClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol DrawingAreaClassProtocol {
    /// Untyped pointer to the underlying `GtkDrawingAreaClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkDrawingAreaClass` instance.
    var _ptr: UnsafeMutablePointer<GtkDrawingAreaClass> { get }
}

/// The `DrawingAreaClassRef` type acts as a lightweight Swift reference to an underlying `GtkDrawingAreaClass` instance.
/// It exposes methods that can operate on this data type through `DrawingAreaClassProtocol` conformance.
/// Use `DrawingAreaClassRef` only as an `unowned` reference to an existing `GtkDrawingAreaClass` instance.
///

public struct DrawingAreaClassRef: DrawingAreaClassProtocol {
    /// Untyped pointer to the underlying `GtkDrawingAreaClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DrawingAreaClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkDrawingAreaClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DrawingAreaClassProtocol`
    init<T: DrawingAreaClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DrawingAreaClass` type acts as an owner of an underlying `GtkDrawingAreaClass` instance.
/// It provides the methods that can operate on this data type through `DrawingAreaClassProtocol` conformance.
/// Use `DrawingAreaClass` as a strong reference or owner of a `GtkDrawingAreaClass` instance.
///

open class DrawingAreaClass: DrawingAreaClassProtocol {
    /// Untyped pointer to the underlying `GtkDrawingAreaClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DrawingAreaClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkDrawingAreaClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DrawingAreaClassProtocol`
    /// `GtkDrawingAreaClass` does not allow reference counting.
    public convenience init<T: DrawingAreaClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkDrawingAreaClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkDrawingAreaClass`.
    deinit {
        // no reference counting for GtkDrawingAreaClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkDrawingAreaClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkDrawingAreaClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkDrawingAreaClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkDrawingAreaClass>(opaquePointer))
    }



}

// MARK: - no DrawingAreaClass properties

// MARK: - no signals


public extension DrawingAreaClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkDrawingAreaClass` instance.
    var _ptr: UnsafeMutablePointer<GtkDrawingAreaClass> { return ptr.assumingMemoryBound(to: GtkDrawingAreaClass.self) }

}



// MARK: - EditableInterface Record

/// The `EditableInterfaceProtocol` protocol exposes the methods and properties of an underlying `GtkEditableInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EditableInterface`.
/// Alternatively, use `EditableInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol EditableInterfaceProtocol {
    /// Untyped pointer to the underlying `GtkEditableInterface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkEditableInterface` instance.
    var _ptr: UnsafeMutablePointer<GtkEditableInterface> { get }
}

/// The `EditableInterfaceRef` type acts as a lightweight Swift reference to an underlying `GtkEditableInterface` instance.
/// It exposes methods that can operate on this data type through `EditableInterfaceProtocol` conformance.
/// Use `EditableInterfaceRef` only as an `unowned` reference to an existing `GtkEditableInterface` instance.
///

public struct EditableInterfaceRef: EditableInterfaceProtocol {
    /// Untyped pointer to the underlying `GtkEditableInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EditableInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkEditableInterface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EditableInterfaceProtocol`
    init<T: EditableInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableInterfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableInterfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableInterfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableInterfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableInterfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EditableInterface` type acts as an owner of an underlying `GtkEditableInterface` instance.
/// It provides the methods that can operate on this data type through `EditableInterfaceProtocol` conformance.
/// Use `EditableInterface` as a strong reference or owner of a `GtkEditableInterface` instance.
///

open class EditableInterface: EditableInterfaceProtocol {
    /// Untyped pointer to the underlying `GtkEditableInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `EditableInterface` instance.
    public init(_ op: UnsafeMutablePointer<GtkEditableInterface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `EditableInterfaceProtocol`
    /// `GtkEditableInterface` does not allow reference counting.
    public convenience init<T: EditableInterfaceProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkEditableInterface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkEditableInterface`.
    deinit {
        // no reference counting for GtkEditableInterface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableInterfaceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkEditableInterface.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableInterfaceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkEditableInterface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableInterfaceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkEditableInterface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableInterfaceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkEditableInterface>(opaquePointer))
    }



}

// MARK: - no EditableInterface properties

// MARK: - no signals


public extension EditableInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEditableInterface` instance.
    var _ptr: UnsafeMutablePointer<GtkEditableInterface> { return ptr.assumingMemoryBound(to: GtkEditableInterface.self) }

}



