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

/// Metatype/GType declaration for DrawingArea
public extension DrawingAreaClassRef {
    
    /// This getter returns the GLib type identifier registered for `DrawingArea`
    static var metatypeReference: GType { gtk_drawing_area_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkDrawingAreaClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkDrawingAreaClass.self) }
    
    static var metatype: GtkDrawingAreaClass? { metatypePointer?.pointee } 
    
    static var wrapper: DrawingAreaClassRef? { DrawingAreaClassRef(metatypePointer) }
    
    
}

// MARK: - DrawingAreaClass Record

/// The `DrawingAreaClassProtocol` protocol exposes the methods and properties of an underlying `GtkDrawingAreaClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DrawingAreaClass`.
/// Alternatively, use `DrawingAreaClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol DrawingAreaClassProtocol {
        /// Untyped pointer to the underlying `GtkDrawingAreaClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkDrawingAreaClass` instance.
    var _ptr: UnsafeMutablePointer<GtkDrawingAreaClass>! { get }

    /// Required Initialiser for types conforming to `DrawingAreaClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `DrawingAreaClassRef` type acts as a lightweight Swift reference to an underlying `GtkDrawingAreaClass` instance.
/// It exposes methods that can operate on this data type through `DrawingAreaClassProtocol` conformance.
/// Use `DrawingAreaClassRef` only as an `unowned` reference to an existing `GtkDrawingAreaClass` instance.
///

public struct DrawingAreaClassRef: DrawingAreaClassProtocol {
        /// Untyped pointer to the underlying `GtkDrawingAreaClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DrawingAreaClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkDrawingAreaClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkDrawingAreaClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkDrawingAreaClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkDrawingAreaClass>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `DrawingAreaClassProtocol`
    @inlinable init<T: DrawingAreaClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: DrawingAreaClass Record: DrawingAreaClassProtocol extension (methods and fields)
public extension DrawingAreaClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkDrawingAreaClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkDrawingAreaClass>! { return ptr?.assumingMemoryBound(to: GtkDrawingAreaClass.self) }


    @inlinable var parentClass: GtkWidgetClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for Editable
public extension EditableInterfaceRef {
    
    /// This getter returns the GLib type identifier registered for `Editable`
    static var metatypeReference: GType { gtk_editable_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkEditableInterface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkEditableInterface.self) }
    
    static var metatype: GtkEditableInterface? { metatypePointer?.pointee } 
    
    static var wrapper: EditableInterfaceRef? { EditableInterfaceRef(metatypePointer) }
    
    
}

// MARK: - EditableInterface Record

/// The `EditableInterfaceProtocol` protocol exposes the methods and properties of an underlying `GtkEditableInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EditableInterface`.
/// Alternatively, use `EditableInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol EditableInterfaceProtocol {
        /// Untyped pointer to the underlying `GtkEditableInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkEditableInterface` instance.
    var _ptr: UnsafeMutablePointer<GtkEditableInterface>! { get }

    /// Required Initialiser for types conforming to `EditableInterfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `EditableInterfaceRef` type acts as a lightweight Swift reference to an underlying `GtkEditableInterface` instance.
/// It exposes methods that can operate on this data type through `EditableInterfaceProtocol` conformance.
/// Use `EditableInterfaceRef` only as an `unowned` reference to an existing `GtkEditableInterface` instance.
///

public struct EditableInterfaceRef: EditableInterfaceProtocol {
        /// Untyped pointer to the underlying `GtkEditableInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension EditableInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkEditableInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkEditableInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkEditableInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkEditableInterface>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `EditableInterfaceProtocol`
    @inlinable init<T: EditableInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableInterfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: EditableInterface Record: EditableInterfaceProtocol extension (methods and fields)
public extension EditableInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEditableInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkEditableInterface>! { return ptr?.assumingMemoryBound(to: GtkEditableInterface.self) }


    @inlinable var baseIface: GTypeInterface {
        get {
            let rv = _ptr.pointee.base_iface
            return rv
        }
    }

    // var insertText is unavailable because insert_text is void

    // var deleteText is unavailable because delete_text is void

    // var changed is unavailable because changed is void

    // var doInsertText is unavailable because do_insert_text is void

    // var doDeleteText is unavailable because do_delete_text is void

    // var getChars is unavailable because get_chars is void

    // var setSelectionBounds is unavailable because set_selection_bounds is void

    // var getSelectionBounds is unavailable because get_selection_bounds is void

    // var setPosition is unavailable because set_position is void

    // var getPosition is unavailable because get_position is void

}



