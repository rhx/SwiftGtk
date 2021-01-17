import CGLib
import CCairo
import CPango
import CGdkPixbuf
import CGdk
import CGtk
import GLib
import GLibObject
import GIO
import Pango
import Cairo
import PangoCairo
import GdkPixbuf
import Gdk

/// Metatype/GType declaration for CellArea
public extension CellAreaClassRef {
    
    /// This getter returns the GLib type identifier registered for `CellArea`
    static var metatypeReference: GType { gtk_cell_area_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkCellAreaClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkCellAreaClass.self) }
    
    static var metatype: GtkCellAreaClass? { metatypePointer?.pointee } 
    
    static var wrapper: CellAreaClassRef? { CellAreaClassRef(metatypePointer) }
    
    
}

// MARK: - CellAreaClass Record

/// The `CellAreaClassProtocol` protocol exposes the methods and properties of an underlying `GtkCellAreaClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellAreaClass`.
/// Alternatively, use `CellAreaClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CellAreaClassProtocol {
        /// Untyped pointer to the underlying `GtkCellAreaClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkCellAreaClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellAreaClass>! { get }

}

/// The `CellAreaClassRef` type acts as a lightweight Swift reference to an underlying `GtkCellAreaClass` instance.
/// It exposes methods that can operate on this data type through `CellAreaClassProtocol` conformance.
/// Use `CellAreaClassRef` only as an `unowned` reference to an existing `GtkCellAreaClass` instance.
///

public struct CellAreaClassRef: CellAreaClassProtocol {
        /// Untyped pointer to the underlying `GtkCellAreaClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CellAreaClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkCellAreaClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkCellAreaClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkCellAreaClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkCellAreaClass>?) {
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

    /// Reference intialiser for a related type that implements `CellAreaClassProtocol`
    @inlinable init<T: CellAreaClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: CellAreaClass Record: CellAreaClassProtocol extension (methods and fields)
public extension CellAreaClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellAreaClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkCellAreaClass>! { return ptr?.assumingMemoryBound(to: GtkCellAreaClass.self) }

    /// Finds a cell property of a cell area class by name.
    @inlinable func findCellProperty(propertyName: UnsafePointer<CChar>!) -> GLibObject.ParamSpecRef! {
        let rv = GLibObject.ParamSpecRef(gtk_cell_area_class_find_cell_property(_ptr, propertyName))
        return rv
    }

    /// Installs a cell property on a cell area class.
    @inlinable func installCellProperty<ParamSpecT: GLibObject.ParamSpecProtocol>(propertyId: Int, pspec: ParamSpecT) {
        gtk_cell_area_class_install_cell_property(_ptr, guint(propertyId), pspec.param_spec_ptr)
    
    }

    /// Returns all cell properties of a cell area class.
    @inlinable func listCellProperties(nProperties: UnsafeMutablePointer<guint>!) -> UnsafeMutablePointer<UnsafeMutablePointer<GParamSpec>?>! {
        let rv = gtk_cell_area_class_list_cell_properties(_ptr, nProperties)
        return rv
    }

    // var parentClass is unavailable because parent_class is private

    // var add is unavailable because add is void

    // var remove is unavailable because remove is void

    // var foreach is unavailable because foreach is void

    // var foreachAlloc is unavailable because foreach_alloc is void

    // var event is unavailable because event is void

    // var snapshot is unavailable because snapshot is void

    // var applyAttributes is unavailable because apply_attributes is void

    // var createContext is unavailable because create_context is void

    // var copyContext is unavailable because copy_context is void

    // var getRequestMode is unavailable because get_request_mode is void

    // var getPreferredWidth is unavailable because get_preferred_width is void

    // var getPreferredHeightForWidth is unavailable because get_preferred_height_for_width is void

    // var getPreferredHeight is unavailable because get_preferred_height is void

    // var getPreferredWidthForHeight is unavailable because get_preferred_width_for_height is void

    // var setCellProperty is unavailable because set_cell_property is void

    // var getCellProperty is unavailable because get_cell_property is void

    // var focus is unavailable because focus is void

    // var isActivatable is unavailable because is_activatable is void

    // var activate is unavailable because activate is void

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for CellAreaContext
public extension CellAreaContextClassRef {
    
    /// This getter returns the GLib type identifier registered for `CellAreaContext`
    static var metatypeReference: GType { gtk_cell_area_context_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkCellAreaContextClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkCellAreaContextClass.self) }
    
    static var metatype: GtkCellAreaContextClass? { metatypePointer?.pointee } 
    
    static var wrapper: CellAreaContextClassRef? { CellAreaContextClassRef(metatypePointer) }
    
    
}

// MARK: - CellAreaContextClass Record

/// The `CellAreaContextClassProtocol` protocol exposes the methods and properties of an underlying `GtkCellAreaContextClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellAreaContextClass`.
/// Alternatively, use `CellAreaContextClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CellAreaContextClassProtocol {
        /// Untyped pointer to the underlying `GtkCellAreaContextClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkCellAreaContextClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellAreaContextClass>! { get }

}

/// The `CellAreaContextClassRef` type acts as a lightweight Swift reference to an underlying `GtkCellAreaContextClass` instance.
/// It exposes methods that can operate on this data type through `CellAreaContextClassProtocol` conformance.
/// Use `CellAreaContextClassRef` only as an `unowned` reference to an existing `GtkCellAreaContextClass` instance.
///

public struct CellAreaContextClassRef: CellAreaContextClassProtocol {
        /// Untyped pointer to the underlying `GtkCellAreaContextClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CellAreaContextClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkCellAreaContextClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkCellAreaContextClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkCellAreaContextClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkCellAreaContextClass>?) {
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

    /// Reference intialiser for a related type that implements `CellAreaContextClassProtocol`
    @inlinable init<T: CellAreaContextClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaContextClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaContextClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaContextClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaContextClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaContextClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: CellAreaContextClass Record: CellAreaContextClassProtocol extension (methods and fields)
public extension CellAreaContextClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellAreaContextClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkCellAreaContextClass>! { return ptr?.assumingMemoryBound(to: GtkCellAreaContextClass.self) }


    // var parentClass is unavailable because parent_class is private

    // var allocate is unavailable because allocate is void

    // var reset is unavailable because reset is void

    // var getPreferredHeightForWidth is unavailable because get_preferred_height_for_width is void

    // var getPreferredWidthForHeight is unavailable because get_preferred_width_for_height is void

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for CellEditable
public extension CellEditableIfaceRef {
    
    /// This getter returns the GLib type identifier registered for `CellEditable`
    static var metatypeReference: GType { gtk_cell_editable_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkCellEditableIface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkCellEditableIface.self) }
    
    static var metatype: GtkCellEditableIface? { metatypePointer?.pointee } 
    
    static var wrapper: CellEditableIfaceRef? { CellEditableIfaceRef(metatypePointer) }
    
    
}

// MARK: - CellEditableIface Record

/// The `CellEditableIfaceProtocol` protocol exposes the methods and properties of an underlying `GtkCellEditableIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellEditableIface`.
/// Alternatively, use `CellEditableIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CellEditableIfaceProtocol {
        /// Untyped pointer to the underlying `GtkCellEditableIface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkCellEditableIface` instance.
    var _ptr: UnsafeMutablePointer<GtkCellEditableIface>! { get }

}

/// The `CellEditableIfaceRef` type acts as a lightweight Swift reference to an underlying `GtkCellEditableIface` instance.
/// It exposes methods that can operate on this data type through `CellEditableIfaceProtocol` conformance.
/// Use `CellEditableIfaceRef` only as an `unowned` reference to an existing `GtkCellEditableIface` instance.
///

public struct CellEditableIfaceRef: CellEditableIfaceProtocol {
        /// Untyped pointer to the underlying `GtkCellEditableIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CellEditableIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkCellEditableIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkCellEditableIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkCellEditableIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkCellEditableIface>?) {
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

    /// Reference intialiser for a related type that implements `CellEditableIfaceProtocol`
    @inlinable init<T: CellEditableIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellEditableIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellEditableIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellEditableIfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellEditableIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellEditableIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: CellEditableIface Record: CellEditableIfaceProtocol extension (methods and fields)
public extension CellEditableIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellEditableIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkCellEditableIface>! { return ptr?.assumingMemoryBound(to: GtkCellEditableIface.self) }


    // var gIface is unavailable because g_iface is private

    // var editingDone is unavailable because editing_done is void

    // var removeWidget is unavailable because remove_widget is void

    // var startEditing is unavailable because start_editing is void

}



/// Metatype/GType declaration for CellLayout
public extension CellLayoutIfaceRef {
    
    /// This getter returns the GLib type identifier registered for `CellLayout`
    static var metatypeReference: GType { gtk_cell_layout_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkCellLayoutIface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkCellLayoutIface.self) }
    
    static var metatype: GtkCellLayoutIface? { metatypePointer?.pointee } 
    
    static var wrapper: CellLayoutIfaceRef? { CellLayoutIfaceRef(metatypePointer) }
    
    
}

// MARK: - CellLayoutIface Record

/// The `CellLayoutIfaceProtocol` protocol exposes the methods and properties of an underlying `GtkCellLayoutIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellLayoutIface`.
/// Alternatively, use `CellLayoutIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CellLayoutIfaceProtocol {
        /// Untyped pointer to the underlying `GtkCellLayoutIface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkCellLayoutIface` instance.
    var _ptr: UnsafeMutablePointer<GtkCellLayoutIface>! { get }

}

/// The `CellLayoutIfaceRef` type acts as a lightweight Swift reference to an underlying `GtkCellLayoutIface` instance.
/// It exposes methods that can operate on this data type through `CellLayoutIfaceProtocol` conformance.
/// Use `CellLayoutIfaceRef` only as an `unowned` reference to an existing `GtkCellLayoutIface` instance.
///

public struct CellLayoutIfaceRef: CellLayoutIfaceProtocol {
        /// Untyped pointer to the underlying `GtkCellLayoutIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CellLayoutIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkCellLayoutIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkCellLayoutIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkCellLayoutIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkCellLayoutIface>?) {
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

    /// Reference intialiser for a related type that implements `CellLayoutIfaceProtocol`
    @inlinable init<T: CellLayoutIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellLayoutIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellLayoutIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellLayoutIfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellLayoutIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellLayoutIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: CellLayoutIface Record: CellLayoutIfaceProtocol extension (methods and fields)
public extension CellLayoutIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellLayoutIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkCellLayoutIface>! { return ptr?.assumingMemoryBound(to: GtkCellLayoutIface.self) }


    // var gIface is unavailable because g_iface is private

    // var packStart is unavailable because pack_start is void

    // var packEnd is unavailable because pack_end is void

    // var clear is unavailable because clear is void

    // var addAttribute is unavailable because add_attribute is void

    // var setCellDataFunc is unavailable because set_cell_data_func is void

    // var clearAttributes is unavailable because clear_attributes is void

    // var reorder is unavailable because reorder is void

    // var getCells is unavailable because get_cells is void

    // var getArea is unavailable because get_area is void

}



/// Metatype/GType declaration for CellRenderer
public extension CellRendererClassRef {
    
    /// This getter returns the GLib type identifier registered for `CellRenderer`
    static var metatypeReference: GType { gtk_cell_renderer_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkCellRendererClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkCellRendererClass.self) }
    
    static var metatype: GtkCellRendererClass? { metatypePointer?.pointee } 
    
    static var wrapper: CellRendererClassRef? { CellRendererClassRef(metatypePointer) }
    
    
}

// MARK: - CellRendererClass Record

/// The `CellRendererClassProtocol` protocol exposes the methods and properties of an underlying `GtkCellRendererClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellRendererClass`.
/// Alternatively, use `CellRendererClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CellRendererClassProtocol {
        /// Untyped pointer to the underlying `GtkCellRendererClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkCellRendererClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererClass>! { get }

}

/// The `CellRendererClassRef` type acts as a lightweight Swift reference to an underlying `GtkCellRendererClass` instance.
/// It exposes methods that can operate on this data type through `CellRendererClassProtocol` conformance.
/// Use `CellRendererClassRef` only as an `unowned` reference to an existing `GtkCellRendererClass` instance.
///

public struct CellRendererClassRef: CellRendererClassProtocol {
        /// Untyped pointer to the underlying `GtkCellRendererClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CellRendererClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkCellRendererClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkCellRendererClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkCellRendererClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkCellRendererClass>?) {
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

    /// Reference intialiser for a related type that implements `CellRendererClassProtocol`
    @inlinable init<T: CellRendererClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: CellRendererClass Record: CellRendererClassProtocol extension (methods and fields)
public extension CellRendererClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellRendererClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkCellRendererClass>! { return ptr?.assumingMemoryBound(to: GtkCellRendererClass.self) }


    // var parentClass is unavailable because parent_class is private

    // var getRequestMode is unavailable because get_request_mode is void

    // var getPreferredWidth is unavailable because get_preferred_width is void

    // var getPreferredHeightForWidth is unavailable because get_preferred_height_for_width is void

    // var getPreferredHeight is unavailable because get_preferred_height is void

    // var getPreferredWidthForHeight is unavailable because get_preferred_width_for_height is void

    // var getAlignedArea is unavailable because get_aligned_area is void

    // var snapshot is unavailable because snapshot is void

    // var activate is unavailable because activate is void

    // var startEditing is unavailable because start_editing is void

    // var editingCanceled is unavailable because editing_canceled is void

    // var editingStarted is unavailable because editing_started is void

    // var padding is unavailable because padding is private

}



// MARK: - CellRendererClassPrivate Record

/// The `CellRendererClassPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkCellRendererClassPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellRendererClassPrivate`.
/// Alternatively, use `CellRendererClassPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CellRendererClassPrivateProtocol {
        /// Untyped pointer to the underlying `GtkCellRendererClassPrivate` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkCellRendererClassPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererClassPrivate>! { get }

}

/// The `CellRendererClassPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkCellRendererClassPrivate` instance.
/// It exposes methods that can operate on this data type through `CellRendererClassPrivateProtocol` conformance.
/// Use `CellRendererClassPrivateRef` only as an `unowned` reference to an existing `GtkCellRendererClassPrivate` instance.
///

public struct CellRendererClassPrivateRef: CellRendererClassPrivateProtocol {
        /// Untyped pointer to the underlying `GtkCellRendererClassPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CellRendererClassPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkCellRendererClassPrivate>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkCellRendererClassPrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkCellRendererClassPrivate>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkCellRendererClassPrivate>?) {
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

    /// Reference intialiser for a related type that implements `CellRendererClassPrivateProtocol`
    @inlinable init<T: CellRendererClassPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererClassPrivateProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererClassPrivateProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererClassPrivateProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererClassPrivateProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererClassPrivateProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CellRendererClassPrivate` type acts as an owner of an underlying `GtkCellRendererClassPrivate` instance.
/// It provides the methods that can operate on this data type through `CellRendererClassPrivateProtocol` conformance.
/// Use `CellRendererClassPrivate` as a strong reference or owner of a `GtkCellRendererClassPrivate` instance.
///

open class CellRendererClassPrivate: CellRendererClassPrivateProtocol {
        /// Untyped pointer to the underlying `GtkCellRendererClassPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CellRendererClassPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkCellRendererClassPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CellRendererClassPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkCellRendererClassPrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CellRendererClassPrivate` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CellRendererClassPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CellRendererClassPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkCellRendererClassPrivate>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CellRendererClassPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkCellRendererClassPrivate>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkCellRendererClassPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `CellRendererClassPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkCellRendererClassPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkCellRendererClassPrivate, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `CellRendererClassPrivateProtocol`
    /// `GtkCellRendererClassPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `CellRendererClassPrivateProtocol`
    @inlinable public init<T: CellRendererClassPrivateProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkCellRendererClassPrivate, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GtkCellRendererClassPrivate`.
    deinit {
        // no reference counting for GtkCellRendererClassPrivate, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererClassPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererClassPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkCellRendererClassPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererClassPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererClassPrivateProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkCellRendererClassPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererClassPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererClassPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkCellRendererClassPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererClassPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererClassPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkCellRendererClassPrivate, cannot ref(_ptr)
    }



}

// MARK: no CellRendererClassPrivate properties

// MARK: no CellRendererClassPrivate signals

// MARK: CellRendererClassPrivate has no signals
// MARK: CellRendererClassPrivate Record: CellRendererClassPrivateProtocol extension (methods and fields)
public extension CellRendererClassPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellRendererClassPrivate` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkCellRendererClassPrivate>! { return ptr?.assumingMemoryBound(to: GtkCellRendererClassPrivate.self) }



}



/// Metatype/GType declaration for CellRendererText
public extension CellRendererTextClassRef {
    
    /// This getter returns the GLib type identifier registered for `CellRendererText`
    static var metatypeReference: GType { gtk_cell_renderer_text_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkCellRendererTextClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkCellRendererTextClass.self) }
    
    static var metatype: GtkCellRendererTextClass? { metatypePointer?.pointee } 
    
    static var wrapper: CellRendererTextClassRef? { CellRendererTextClassRef(metatypePointer) }
    
    
}

// MARK: - CellRendererTextClass Record

/// The `CellRendererTextClassProtocol` protocol exposes the methods and properties of an underlying `GtkCellRendererTextClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellRendererTextClass`.
/// Alternatively, use `CellRendererTextClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CellRendererTextClassProtocol {
        /// Untyped pointer to the underlying `GtkCellRendererTextClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkCellRendererTextClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererTextClass>! { get }

}

/// The `CellRendererTextClassRef` type acts as a lightweight Swift reference to an underlying `GtkCellRendererTextClass` instance.
/// It exposes methods that can operate on this data type through `CellRendererTextClassProtocol` conformance.
/// Use `CellRendererTextClassRef` only as an `unowned` reference to an existing `GtkCellRendererTextClass` instance.
///

public struct CellRendererTextClassRef: CellRendererTextClassProtocol {
        /// Untyped pointer to the underlying `GtkCellRendererTextClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CellRendererTextClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkCellRendererTextClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkCellRendererTextClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkCellRendererTextClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkCellRendererTextClass>?) {
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

    /// Reference intialiser for a related type that implements `CellRendererTextClassProtocol`
    @inlinable init<T: CellRendererTextClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererTextClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererTextClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererTextClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererTextClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererTextClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: CellRendererTextClass Record: CellRendererTextClassProtocol extension (methods and fields)
public extension CellRendererTextClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellRendererTextClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkCellRendererTextClass>! { return ptr?.assumingMemoryBound(to: GtkCellRendererTextClass.self) }


    @inlinable var parentClass: GtkCellRendererClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var edited is unavailable because edited is void

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for CenterBox
public extension CenterBoxClassRef {
    
    /// This getter returns the GLib type identifier registered for `CenterBox`
    static var metatypeReference: GType { gtk_center_box_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkCenterBoxClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkCenterBoxClass.self) }
    
    static var metatype: GtkCenterBoxClass? { metatypePointer?.pointee } 
    
    static var wrapper: CenterBoxClassRef? { CenterBoxClassRef(metatypePointer) }
    
    
}

// MARK: - CenterBoxClass Record

/// The `CenterBoxClassProtocol` protocol exposes the methods and properties of an underlying `GtkCenterBoxClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CenterBoxClass`.
/// Alternatively, use `CenterBoxClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CenterBoxClassProtocol {
        /// Untyped pointer to the underlying `GtkCenterBoxClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkCenterBoxClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCenterBoxClass>! { get }

}

/// The `CenterBoxClassRef` type acts as a lightweight Swift reference to an underlying `GtkCenterBoxClass` instance.
/// It exposes methods that can operate on this data type through `CenterBoxClassProtocol` conformance.
/// Use `CenterBoxClassRef` only as an `unowned` reference to an existing `GtkCenterBoxClass` instance.
///

public struct CenterBoxClassRef: CenterBoxClassProtocol {
        /// Untyped pointer to the underlying `GtkCenterBoxClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CenterBoxClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkCenterBoxClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkCenterBoxClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkCenterBoxClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkCenterBoxClass>?) {
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

    /// Reference intialiser for a related type that implements `CenterBoxClassProtocol`
    @inlinable init<T: CenterBoxClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CenterBoxClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CenterBoxClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CenterBoxClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CenterBoxClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CenterBoxClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: CenterBoxClass Record: CenterBoxClassProtocol extension (methods and fields)
public extension CenterBoxClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCenterBoxClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkCenterBoxClass>! { return ptr?.assumingMemoryBound(to: GtkCenterBoxClass.self) }



}



/// Metatype/GType declaration for CenterLayout
public extension CenterLayoutClassRef {
    
    /// This getter returns the GLib type identifier registered for `CenterLayout`
    static var metatypeReference: GType { gtk_center_layout_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkCenterLayoutClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkCenterLayoutClass.self) }
    
    static var metatype: GtkCenterLayoutClass? { metatypePointer?.pointee } 
    
    static var wrapper: CenterLayoutClassRef? { CenterLayoutClassRef(metatypePointer) }
    
    
}

// MARK: - CenterLayoutClass Record

/// The `CenterLayoutClassProtocol` protocol exposes the methods and properties of an underlying `GtkCenterLayoutClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CenterLayoutClass`.
/// Alternatively, use `CenterLayoutClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CenterLayoutClassProtocol {
        /// Untyped pointer to the underlying `GtkCenterLayoutClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkCenterLayoutClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCenterLayoutClass>! { get }

}

/// The `CenterLayoutClassRef` type acts as a lightweight Swift reference to an underlying `GtkCenterLayoutClass` instance.
/// It exposes methods that can operate on this data type through `CenterLayoutClassProtocol` conformance.
/// Use `CenterLayoutClassRef` only as an `unowned` reference to an existing `GtkCenterLayoutClass` instance.
///

public struct CenterLayoutClassRef: CenterLayoutClassProtocol {
        /// Untyped pointer to the underlying `GtkCenterLayoutClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CenterLayoutClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkCenterLayoutClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkCenterLayoutClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkCenterLayoutClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkCenterLayoutClass>?) {
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

    /// Reference intialiser for a related type that implements `CenterLayoutClassProtocol`
    @inlinable init<T: CenterLayoutClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CenterLayoutClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CenterLayoutClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CenterLayoutClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CenterLayoutClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CenterLayoutClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: CenterLayoutClass Record: CenterLayoutClassProtocol extension (methods and fields)
public extension CenterLayoutClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCenterLayoutClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkCenterLayoutClass>! { return ptr?.assumingMemoryBound(to: GtkCenterLayoutClass.self) }


    @inlinable var parentClass: GtkLayoutManagerClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for CheckButton
public extension CheckButtonClassRef {
    
    /// This getter returns the GLib type identifier registered for `CheckButton`
    static var metatypeReference: GType { gtk_check_button_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkCheckButtonClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkCheckButtonClass.self) }
    
    static var metatype: GtkCheckButtonClass? { metatypePointer?.pointee } 
    
    static var wrapper: CheckButtonClassRef? { CheckButtonClassRef(metatypePointer) }
    
    
}

// MARK: - CheckButtonClass Record

/// The `CheckButtonClassProtocol` protocol exposes the methods and properties of an underlying `GtkCheckButtonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CheckButtonClass`.
/// Alternatively, use `CheckButtonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CheckButtonClassProtocol {
        /// Untyped pointer to the underlying `GtkCheckButtonClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkCheckButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCheckButtonClass>! { get }

}

/// The `CheckButtonClassRef` type acts as a lightweight Swift reference to an underlying `GtkCheckButtonClass` instance.
/// It exposes methods that can operate on this data type through `CheckButtonClassProtocol` conformance.
/// Use `CheckButtonClassRef` only as an `unowned` reference to an existing `GtkCheckButtonClass` instance.
///

public struct CheckButtonClassRef: CheckButtonClassProtocol {
        /// Untyped pointer to the underlying `GtkCheckButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CheckButtonClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkCheckButtonClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkCheckButtonClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkCheckButtonClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkCheckButtonClass>?) {
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

    /// Reference intialiser for a related type that implements `CheckButtonClassProtocol`
    @inlinable init<T: CheckButtonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckButtonClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckButtonClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckButtonClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckButtonClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckButtonClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: CheckButtonClass Record: CheckButtonClassProtocol extension (methods and fields)
public extension CheckButtonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCheckButtonClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkCheckButtonClass>! { return ptr?.assumingMemoryBound(to: GtkCheckButtonClass.self) }


    @inlinable var parentClass: GtkWidgetClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var toggled is unavailable because toggled is void

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for ColorChooser
public extension ColorChooserInterfaceRef {
    
    /// This getter returns the GLib type identifier registered for `ColorChooser`
    static var metatypeReference: GType { gtk_color_chooser_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkColorChooserInterface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkColorChooserInterface.self) }
    
    static var metatype: GtkColorChooserInterface? { metatypePointer?.pointee } 
    
    static var wrapper: ColorChooserInterfaceRef? { ColorChooserInterfaceRef(metatypePointer) }
    
    
}

// MARK: - ColorChooserInterface Record

/// The `ColorChooserInterfaceProtocol` protocol exposes the methods and properties of an underlying `GtkColorChooserInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ColorChooserInterface`.
/// Alternatively, use `ColorChooserInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ColorChooserInterfaceProtocol {
        /// Untyped pointer to the underlying `GtkColorChooserInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkColorChooserInterface` instance.
    var _ptr: UnsafeMutablePointer<GtkColorChooserInterface>! { get }

}

/// The `ColorChooserInterfaceRef` type acts as a lightweight Swift reference to an underlying `GtkColorChooserInterface` instance.
/// It exposes methods that can operate on this data type through `ColorChooserInterfaceProtocol` conformance.
/// Use `ColorChooserInterfaceRef` only as an `unowned` reference to an existing `GtkColorChooserInterface` instance.
///

public struct ColorChooserInterfaceRef: ColorChooserInterfaceProtocol {
        /// Untyped pointer to the underlying `GtkColorChooserInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ColorChooserInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkColorChooserInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkColorChooserInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkColorChooserInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkColorChooserInterface>?) {
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

    /// Reference intialiser for a related type that implements `ColorChooserInterfaceProtocol`
    @inlinable init<T: ColorChooserInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserInterfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ColorChooserInterface Record: ColorChooserInterfaceProtocol extension (methods and fields)
public extension ColorChooserInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkColorChooserInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkColorChooserInterface>! { return ptr?.assumingMemoryBound(to: GtkColorChooserInterface.self) }


    @inlinable var baseInterface: GTypeInterface {
        get {
            let rv = _ptr.pointee.base_interface
            return rv
        }
    }

    // var getRgba is unavailable because get_rgba is void

    // var setRgba is unavailable because set_rgba is void

    // var addPalette is unavailable because add_palette is void

    // var colorActivated is unavailable because color_activated is void

    @inlinable var padding: (gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?) {
        get {
            let rv = _ptr.pointee.padding
            return rv
        }
    }

}



/// Metatype/GType declaration for ColumnView
public extension ColumnViewClassRef {
    
    /// This getter returns the GLib type identifier registered for `ColumnView`
    static var metatypeReference: GType { gtk_column_view_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkColumnViewClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkColumnViewClass.self) }
    
    static var metatype: GtkColumnViewClass? { metatypePointer?.pointee } 
    
    static var wrapper: ColumnViewClassRef? { ColumnViewClassRef(metatypePointer) }
    
    
}

// MARK: - ColumnViewClass Record

/// The `ColumnViewClassProtocol` protocol exposes the methods and properties of an underlying `GtkColumnViewClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ColumnViewClass`.
/// Alternatively, use `ColumnViewClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ColumnViewClassProtocol {
        /// Untyped pointer to the underlying `GtkColumnViewClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkColumnViewClass` instance.
    var _ptr: UnsafeMutablePointer<GtkColumnViewClass>! { get }

}

/// The `ColumnViewClassRef` type acts as a lightweight Swift reference to an underlying `GtkColumnViewClass` instance.
/// It exposes methods that can operate on this data type through `ColumnViewClassProtocol` conformance.
/// Use `ColumnViewClassRef` only as an `unowned` reference to an existing `GtkColumnViewClass` instance.
///

public struct ColumnViewClassRef: ColumnViewClassProtocol {
        /// Untyped pointer to the underlying `GtkColumnViewClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ColumnViewClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkColumnViewClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkColumnViewClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkColumnViewClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkColumnViewClass>?) {
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

    /// Reference intialiser for a related type that implements `ColumnViewClassProtocol`
    @inlinable init<T: ColumnViewClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColumnViewClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColumnViewClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColumnViewClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColumnViewClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColumnViewClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ColumnViewClass Record: ColumnViewClassProtocol extension (methods and fields)
public extension ColumnViewClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkColumnViewClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkColumnViewClass>! { return ptr?.assumingMemoryBound(to: GtkColumnViewClass.self) }



}



/// Metatype/GType declaration for ColumnViewColumn
public extension ColumnViewColumnClassRef {
    
    /// This getter returns the GLib type identifier registered for `ColumnViewColumn`
    static var metatypeReference: GType { gtk_column_view_column_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkColumnViewColumnClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkColumnViewColumnClass.self) }
    
    static var metatype: GtkColumnViewColumnClass? { metatypePointer?.pointee } 
    
    static var wrapper: ColumnViewColumnClassRef? { ColumnViewColumnClassRef(metatypePointer) }
    
    
}

// MARK: - ColumnViewColumnClass Record

/// The `ColumnViewColumnClassProtocol` protocol exposes the methods and properties of an underlying `GtkColumnViewColumnClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ColumnViewColumnClass`.
/// Alternatively, use `ColumnViewColumnClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ColumnViewColumnClassProtocol {
        /// Untyped pointer to the underlying `GtkColumnViewColumnClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkColumnViewColumnClass` instance.
    var _ptr: UnsafeMutablePointer<GtkColumnViewColumnClass>! { get }

}

/// The `ColumnViewColumnClassRef` type acts as a lightweight Swift reference to an underlying `GtkColumnViewColumnClass` instance.
/// It exposes methods that can operate on this data type through `ColumnViewColumnClassProtocol` conformance.
/// Use `ColumnViewColumnClassRef` only as an `unowned` reference to an existing `GtkColumnViewColumnClass` instance.
///

public struct ColumnViewColumnClassRef: ColumnViewColumnClassProtocol {
        /// Untyped pointer to the underlying `GtkColumnViewColumnClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ColumnViewColumnClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkColumnViewColumnClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkColumnViewColumnClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkColumnViewColumnClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkColumnViewColumnClass>?) {
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

    /// Reference intialiser for a related type that implements `ColumnViewColumnClassProtocol`
    @inlinable init<T: ColumnViewColumnClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColumnViewColumnClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColumnViewColumnClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColumnViewColumnClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColumnViewColumnClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColumnViewColumnClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ColumnViewColumnClass Record: ColumnViewColumnClassProtocol extension (methods and fields)
public extension ColumnViewColumnClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkColumnViewColumnClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkColumnViewColumnClass>! { return ptr?.assumingMemoryBound(to: GtkColumnViewColumnClass.self) }



}



/// Metatype/GType declaration for ComboBox
public extension ComboBoxClassRef {
    
    /// This getter returns the GLib type identifier registered for `ComboBox`
    static var metatypeReference: GType { gtk_combo_box_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkComboBoxClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkComboBoxClass.self) }
    
    static var metatype: GtkComboBoxClass? { metatypePointer?.pointee } 
    
    static var wrapper: ComboBoxClassRef? { ComboBoxClassRef(metatypePointer) }
    
    
}

// MARK: - ComboBoxClass Record

/// The `ComboBoxClassProtocol` protocol exposes the methods and properties of an underlying `GtkComboBoxClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ComboBoxClass`.
/// Alternatively, use `ComboBoxClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ComboBoxClassProtocol {
        /// Untyped pointer to the underlying `GtkComboBoxClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkComboBoxClass` instance.
    var _ptr: UnsafeMutablePointer<GtkComboBoxClass>! { get }

}

/// The `ComboBoxClassRef` type acts as a lightweight Swift reference to an underlying `GtkComboBoxClass` instance.
/// It exposes methods that can operate on this data type through `ComboBoxClassProtocol` conformance.
/// Use `ComboBoxClassRef` only as an `unowned` reference to an existing `GtkComboBoxClass` instance.
///

public struct ComboBoxClassRef: ComboBoxClassProtocol {
        /// Untyped pointer to the underlying `GtkComboBoxClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ComboBoxClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkComboBoxClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkComboBoxClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkComboBoxClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkComboBoxClass>?) {
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

    /// Reference intialiser for a related type that implements `ComboBoxClassProtocol`
    @inlinable init<T: ComboBoxClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ComboBoxClass Record: ComboBoxClassProtocol extension (methods and fields)
public extension ComboBoxClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkComboBoxClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkComboBoxClass>! { return ptr?.assumingMemoryBound(to: GtkComboBoxClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkWidgetClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var changed is unavailable because changed is void

    // var formatEntryText is unavailable because format_entry_text is void

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for Constraint
public extension ConstraintClassRef {
    
    /// This getter returns the GLib type identifier registered for `Constraint`
    static var metatypeReference: GType { gtk_constraint_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkConstraintClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkConstraintClass.self) }
    
    static var metatype: GtkConstraintClass? { metatypePointer?.pointee } 
    
    static var wrapper: ConstraintClassRef? { ConstraintClassRef(metatypePointer) }
    
    
}

// MARK: - ConstraintClass Record

/// The `ConstraintClassProtocol` protocol exposes the methods and properties of an underlying `GtkConstraintClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ConstraintClass`.
/// Alternatively, use `ConstraintClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ConstraintClassProtocol {
        /// Untyped pointer to the underlying `GtkConstraintClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkConstraintClass` instance.
    var _ptr: UnsafeMutablePointer<GtkConstraintClass>! { get }

}

/// The `ConstraintClassRef` type acts as a lightweight Swift reference to an underlying `GtkConstraintClass` instance.
/// It exposes methods that can operate on this data type through `ConstraintClassProtocol` conformance.
/// Use `ConstraintClassRef` only as an `unowned` reference to an existing `GtkConstraintClass` instance.
///

public struct ConstraintClassRef: ConstraintClassProtocol {
        /// Untyped pointer to the underlying `GtkConstraintClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ConstraintClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkConstraintClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkConstraintClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkConstraintClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkConstraintClass>?) {
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

    /// Reference intialiser for a related type that implements `ConstraintClassProtocol`
    @inlinable init<T: ConstraintClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConstraintClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConstraintClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConstraintClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConstraintClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConstraintClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ConstraintClass Record: ConstraintClassProtocol extension (methods and fields)
public extension ConstraintClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkConstraintClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkConstraintClass>! { return ptr?.assumingMemoryBound(to: GtkConstraintClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for ConstraintGuide
public extension ConstraintGuideClassRef {
    
    /// This getter returns the GLib type identifier registered for `ConstraintGuide`
    static var metatypeReference: GType { gtk_constraint_guide_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkConstraintGuideClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkConstraintGuideClass.self) }
    
    static var metatype: GtkConstraintGuideClass? { metatypePointer?.pointee } 
    
    static var wrapper: ConstraintGuideClassRef? { ConstraintGuideClassRef(metatypePointer) }
    
    
}

// MARK: - ConstraintGuideClass Record

/// The `ConstraintGuideClassProtocol` protocol exposes the methods and properties of an underlying `GtkConstraintGuideClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ConstraintGuideClass`.
/// Alternatively, use `ConstraintGuideClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ConstraintGuideClassProtocol {
        /// Untyped pointer to the underlying `GtkConstraintGuideClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkConstraintGuideClass` instance.
    var _ptr: UnsafeMutablePointer<GtkConstraintGuideClass>! { get }

}

/// The `ConstraintGuideClassRef` type acts as a lightweight Swift reference to an underlying `GtkConstraintGuideClass` instance.
/// It exposes methods that can operate on this data type through `ConstraintGuideClassProtocol` conformance.
/// Use `ConstraintGuideClassRef` only as an `unowned` reference to an existing `GtkConstraintGuideClass` instance.
///

public struct ConstraintGuideClassRef: ConstraintGuideClassProtocol {
        /// Untyped pointer to the underlying `GtkConstraintGuideClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ConstraintGuideClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkConstraintGuideClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkConstraintGuideClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkConstraintGuideClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkConstraintGuideClass>?) {
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

    /// Reference intialiser for a related type that implements `ConstraintGuideClassProtocol`
    @inlinable init<T: ConstraintGuideClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConstraintGuideClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConstraintGuideClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConstraintGuideClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConstraintGuideClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConstraintGuideClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ConstraintGuideClass Record: ConstraintGuideClassProtocol extension (methods and fields)
public extension ConstraintGuideClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkConstraintGuideClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkConstraintGuideClass>! { return ptr?.assumingMemoryBound(to: GtkConstraintGuideClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for ConstraintLayoutChild
public extension ConstraintLayoutChildClassRef {
    
    /// This getter returns the GLib type identifier registered for `ConstraintLayoutChild`
    static var metatypeReference: GType { gtk_constraint_layout_child_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkConstraintLayoutChildClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkConstraintLayoutChildClass.self) }
    
    static var metatype: GtkConstraintLayoutChildClass? { metatypePointer?.pointee } 
    
    static var wrapper: ConstraintLayoutChildClassRef? { ConstraintLayoutChildClassRef(metatypePointer) }
    
    
}

// MARK: - ConstraintLayoutChildClass Record

/// The `ConstraintLayoutChildClassProtocol` protocol exposes the methods and properties of an underlying `GtkConstraintLayoutChildClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ConstraintLayoutChildClass`.
/// Alternatively, use `ConstraintLayoutChildClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ConstraintLayoutChildClassProtocol {
        /// Untyped pointer to the underlying `GtkConstraintLayoutChildClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkConstraintLayoutChildClass` instance.
    var _ptr: UnsafeMutablePointer<GtkConstraintLayoutChildClass>! { get }

}

/// The `ConstraintLayoutChildClassRef` type acts as a lightweight Swift reference to an underlying `GtkConstraintLayoutChildClass` instance.
/// It exposes methods that can operate on this data type through `ConstraintLayoutChildClassProtocol` conformance.
/// Use `ConstraintLayoutChildClassRef` only as an `unowned` reference to an existing `GtkConstraintLayoutChildClass` instance.
///

public struct ConstraintLayoutChildClassRef: ConstraintLayoutChildClassProtocol {
        /// Untyped pointer to the underlying `GtkConstraintLayoutChildClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ConstraintLayoutChildClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkConstraintLayoutChildClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkConstraintLayoutChildClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkConstraintLayoutChildClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkConstraintLayoutChildClass>?) {
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

    /// Reference intialiser for a related type that implements `ConstraintLayoutChildClassProtocol`
    @inlinable init<T: ConstraintLayoutChildClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConstraintLayoutChildClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConstraintLayoutChildClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConstraintLayoutChildClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConstraintLayoutChildClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConstraintLayoutChildClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ConstraintLayoutChildClass Record: ConstraintLayoutChildClassProtocol extension (methods and fields)
public extension ConstraintLayoutChildClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkConstraintLayoutChildClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkConstraintLayoutChildClass>! { return ptr?.assumingMemoryBound(to: GtkConstraintLayoutChildClass.self) }


    @inlinable var parentClass: GtkLayoutChildClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for ConstraintLayout
public extension ConstraintLayoutClassRef {
    
    /// This getter returns the GLib type identifier registered for `ConstraintLayout`
    static var metatypeReference: GType { gtk_constraint_layout_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkConstraintLayoutClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkConstraintLayoutClass.self) }
    
    static var metatype: GtkConstraintLayoutClass? { metatypePointer?.pointee } 
    
    static var wrapper: ConstraintLayoutClassRef? { ConstraintLayoutClassRef(metatypePointer) }
    
    
}

// MARK: - ConstraintLayoutClass Record

/// The `ConstraintLayoutClassProtocol` protocol exposes the methods and properties of an underlying `GtkConstraintLayoutClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ConstraintLayoutClass`.
/// Alternatively, use `ConstraintLayoutClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ConstraintLayoutClassProtocol {
        /// Untyped pointer to the underlying `GtkConstraintLayoutClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkConstraintLayoutClass` instance.
    var _ptr: UnsafeMutablePointer<GtkConstraintLayoutClass>! { get }

}

/// The `ConstraintLayoutClassRef` type acts as a lightweight Swift reference to an underlying `GtkConstraintLayoutClass` instance.
/// It exposes methods that can operate on this data type through `ConstraintLayoutClassProtocol` conformance.
/// Use `ConstraintLayoutClassRef` only as an `unowned` reference to an existing `GtkConstraintLayoutClass` instance.
///

public struct ConstraintLayoutClassRef: ConstraintLayoutClassProtocol {
        /// Untyped pointer to the underlying `GtkConstraintLayoutClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ConstraintLayoutClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkConstraintLayoutClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkConstraintLayoutClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkConstraintLayoutClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkConstraintLayoutClass>?) {
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

    /// Reference intialiser for a related type that implements `ConstraintLayoutClassProtocol`
    @inlinable init<T: ConstraintLayoutClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConstraintLayoutClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConstraintLayoutClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConstraintLayoutClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConstraintLayoutClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConstraintLayoutClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ConstraintLayoutClass Record: ConstraintLayoutClassProtocol extension (methods and fields)
public extension ConstraintLayoutClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkConstraintLayoutClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkConstraintLayoutClass>! { return ptr?.assumingMemoryBound(to: GtkConstraintLayoutClass.self) }


    @inlinable var parentClass: GtkLayoutManagerClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for ConstraintTarget
public extension ConstraintTargetInterfaceRef {
    
    /// This getter returns the GLib type identifier registered for `ConstraintTarget`
    static var metatypeReference: GType { gtk_constraint_target_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkConstraintTargetInterface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkConstraintTargetInterface.self) }
    
    static var metatype: GtkConstraintTargetInterface? { metatypePointer?.pointee } 
    
    static var wrapper: ConstraintTargetInterfaceRef? { ConstraintTargetInterfaceRef(metatypePointer) }
    
    
}

// MARK: - ConstraintTargetInterface Record

/// The `ConstraintTargetInterfaceProtocol` protocol exposes the methods and properties of an underlying `GtkConstraintTargetInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ConstraintTargetInterface`.
/// Alternatively, use `ConstraintTargetInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ConstraintTargetInterfaceProtocol {
        /// Untyped pointer to the underlying `GtkConstraintTargetInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkConstraintTargetInterface` instance.
    var _ptr: UnsafeMutablePointer<GtkConstraintTargetInterface>! { get }

}

/// The `ConstraintTargetInterfaceRef` type acts as a lightweight Swift reference to an underlying `GtkConstraintTargetInterface` instance.
/// It exposes methods that can operate on this data type through `ConstraintTargetInterfaceProtocol` conformance.
/// Use `ConstraintTargetInterfaceRef` only as an `unowned` reference to an existing `GtkConstraintTargetInterface` instance.
///

public struct ConstraintTargetInterfaceRef: ConstraintTargetInterfaceProtocol {
        /// Untyped pointer to the underlying `GtkConstraintTargetInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ConstraintTargetInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkConstraintTargetInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkConstraintTargetInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkConstraintTargetInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkConstraintTargetInterface>?) {
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

    /// Reference intialiser for a related type that implements `ConstraintTargetInterfaceProtocol`
    @inlinable init<T: ConstraintTargetInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConstraintTargetInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConstraintTargetInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConstraintTargetInterfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConstraintTargetInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConstraintTargetInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ConstraintTargetInterface Record: ConstraintTargetInterfaceProtocol extension (methods and fields)
public extension ConstraintTargetInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkConstraintTargetInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkConstraintTargetInterface>! { return ptr?.assumingMemoryBound(to: GtkConstraintTargetInterface.self) }



}



// MARK: - CssLocation Record

/// The `CssLocationProtocol` protocol exposes the methods and properties of an underlying `GtkCssLocation` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CssLocation`.
/// Alternatively, use `CssLocationRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkCssLocation` is used to present a location in a file - or other
/// source of data parsed by the CSS engine.
/// 
/// The `bytes` and `line_bytes` offsets are meant to be used to
/// programmatically match data. The `lines` and `line_chars` offsets
/// can be used for printing the location in a file.
/// 
/// Note that the `lines` parameter starts from 0 and is increased
/// whenever a CSS line break is encountered. (CSS defines the C character
/// sequences "\r\n", "\r", "\n" and "\f" as newlines.)
/// If your document uses different rules for line breaking, you might want
/// run into problems here.
public protocol CssLocationProtocol {
        /// Untyped pointer to the underlying `GtkCssLocation` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkCssLocation` instance.
    var _ptr: UnsafeMutablePointer<GtkCssLocation>! { get }

}

/// The `CssLocationRef` type acts as a lightweight Swift reference to an underlying `GtkCssLocation` instance.
/// It exposes methods that can operate on this data type through `CssLocationProtocol` conformance.
/// Use `CssLocationRef` only as an `unowned` reference to an existing `GtkCssLocation` instance.
///
/// `GtkCssLocation` is used to present a location in a file - or other
/// source of data parsed by the CSS engine.
/// 
/// The `bytes` and `line_bytes` offsets are meant to be used to
/// programmatically match data. The `lines` and `line_chars` offsets
/// can be used for printing the location in a file.
/// 
/// Note that the `lines` parameter starts from 0 and is increased
/// whenever a CSS line break is encountered. (CSS defines the C character
/// sequences "\r\n", "\r", "\n" and "\f" as newlines.)
/// If your document uses different rules for line breaking, you might want
/// run into problems here.
public struct CssLocationRef: CssLocationProtocol {
        /// Untyped pointer to the underlying `GtkCssLocation` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CssLocationRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkCssLocation>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkCssLocation>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkCssLocation>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkCssLocation>?) {
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

    /// Reference intialiser for a related type that implements `CssLocationProtocol`
    @inlinable init<T: CssLocationProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssLocationProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssLocationProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssLocationProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssLocationProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssLocationProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CssLocation` type acts as an owner of an underlying `GtkCssLocation` instance.
/// It provides the methods that can operate on this data type through `CssLocationProtocol` conformance.
/// Use `CssLocation` as a strong reference or owner of a `GtkCssLocation` instance.
///
/// `GtkCssLocation` is used to present a location in a file - or other
/// source of data parsed by the CSS engine.
/// 
/// The `bytes` and `line_bytes` offsets are meant to be used to
/// programmatically match data. The `lines` and `line_chars` offsets
/// can be used for printing the location in a file.
/// 
/// Note that the `lines` parameter starts from 0 and is increased
/// whenever a CSS line break is encountered. (CSS defines the C character
/// sequences "\r\n", "\r", "\n" and "\f" as newlines.)
/// If your document uses different rules for line breaking, you might want
/// run into problems here.
open class CssLocation: CssLocationProtocol {
        /// Untyped pointer to the underlying `GtkCssLocation` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CssLocation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkCssLocation>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CssLocation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkCssLocation>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CssLocation` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CssLocation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CssLocation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkCssLocation>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CssLocation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkCssLocation>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkCssLocation` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `CssLocation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkCssLocation>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkCssLocation, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `CssLocationProtocol`
    /// `GtkCssLocation` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `CssLocationProtocol`
    @inlinable public init<T: CssLocationProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkCssLocation, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GtkCssLocation`.
    deinit {
        // no reference counting for GtkCssLocation, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssLocationProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssLocationProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkCssLocation, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssLocationProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssLocationProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkCssLocation, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssLocationProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssLocationProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkCssLocation, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssLocationProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssLocationProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkCssLocation, cannot ref(_ptr)
    }



}

// MARK: no CssLocation properties

// MARK: no CssLocation signals

// MARK: CssLocation has no signals
// MARK: CssLocation Record: CssLocationProtocol extension (methods and fields)
public extension CssLocationProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCssLocation` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkCssLocation>! { return ptr?.assumingMemoryBound(to: GtkCssLocation.self) }


    /// number of bytes parsed since the beginning
    @inlinable var bytes: gsize {
        /// number of bytes parsed since the beginning
        get {
            let rv = _ptr.pointee.bytes
            return rv
        }
        /// number of bytes parsed since the beginning
         set {
            _ptr.pointee.bytes = newValue
        }
    }

    /// number of characters parsed since the beginning
    @inlinable var chars: gsize {
        /// number of characters parsed since the beginning
        get {
            let rv = _ptr.pointee.chars
            return rv
        }
        /// number of characters parsed since the beginning
         set {
            _ptr.pointee.chars = newValue
        }
    }

    /// number of full lines that have been parsed
    ///     If you want to display this as a line number, you
    ///     need to add 1 to this.
    @inlinable var lines: gsize {
        /// number of full lines that have been parsed
        ///     If you want to display this as a line number, you
        ///     need to add 1 to this.
        get {
            let rv = _ptr.pointee.lines
            return rv
        }
        /// number of full lines that have been parsed
        ///     If you want to display this as a line number, you
        ///     need to add 1 to this.
         set {
            _ptr.pointee.lines = newValue
        }
    }

    /// Number of bytes parsed since the last line break
    @inlinable var lineBytes: gsize {
        /// Number of bytes parsed since the last line break
        get {
            let rv = _ptr.pointee.line_bytes
            return rv
        }
        /// Number of bytes parsed since the last line break
         set {
            _ptr.pointee.line_bytes = newValue
        }
    }

    /// Number of characters parsed since the last line
    ///     break
    @inlinable var lineChars: gsize {
        /// Number of characters parsed since the last line
        ///     break
        get {
            let rv = _ptr.pointee.line_chars
            return rv
        }
        /// Number of characters parsed since the last line
        ///     break
         set {
            _ptr.pointee.line_chars = newValue
        }
    }

}



/// Metatype/GType declaration for CssProvider
public extension CssProviderClassRef {
    
    /// This getter returns the GLib type identifier registered for `CssProvider`
    static var metatypeReference: GType { gtk_css_provider_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkCssProviderClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkCssProviderClass.self) }
    
    static var metatype: GtkCssProviderClass? { metatypePointer?.pointee } 
    
    static var wrapper: CssProviderClassRef? { CssProviderClassRef(metatypePointer) }
    
    
}

// MARK: - CssProviderClass Record

/// The `CssProviderClassProtocol` protocol exposes the methods and properties of an underlying `GtkCssProviderClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CssProviderClass`.
/// Alternatively, use `CssProviderClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CssProviderClassProtocol {
        /// Untyped pointer to the underlying `GtkCssProviderClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkCssProviderClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCssProviderClass>! { get }

}

/// The `CssProviderClassRef` type acts as a lightweight Swift reference to an underlying `GtkCssProviderClass` instance.
/// It exposes methods that can operate on this data type through `CssProviderClassProtocol` conformance.
/// Use `CssProviderClassRef` only as an `unowned` reference to an existing `GtkCssProviderClass` instance.
///

public struct CssProviderClassRef: CssProviderClassProtocol {
        /// Untyped pointer to the underlying `GtkCssProviderClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CssProviderClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkCssProviderClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkCssProviderClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkCssProviderClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkCssProviderClass>?) {
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

    /// Reference intialiser for a related type that implements `CssProviderClassProtocol`
    @inlinable init<T: CssProviderClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssProviderClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssProviderClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssProviderClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssProviderClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssProviderClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: CssProviderClass Record: CssProviderClassProtocol extension (methods and fields)
public extension CssProviderClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCssProviderClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkCssProviderClass>! { return ptr?.assumingMemoryBound(to: GtkCssProviderClass.self) }



}



// MARK: - CssSection Record

/// The `CssSectionProtocol` protocol exposes the methods and properties of an underlying `GtkCssSection` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CssSection`.
/// Alternatively, use `CssSectionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Defines a part of a CSS document. Because sections are nested into
/// one another, you can use `gtk_css_section_get_parent()` to get the
/// containing region.
public protocol CssSectionProtocol {
        /// Untyped pointer to the underlying `GtkCssSection` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkCssSection` instance.
    var css_section_ptr: UnsafeMutablePointer<GtkCssSection>! { get }

}

/// The `CssSectionRef` type acts as a lightweight Swift reference to an underlying `GtkCssSection` instance.
/// It exposes methods that can operate on this data type through `CssSectionProtocol` conformance.
/// Use `CssSectionRef` only as an `unowned` reference to an existing `GtkCssSection` instance.
///
/// Defines a part of a CSS document. Because sections are nested into
/// one another, you can use `gtk_css_section_get_parent()` to get the
/// containing region.
public struct CssSectionRef: CssSectionProtocol {
        /// Untyped pointer to the underlying `GtkCssSection` instance.
    /// For type-safe access, use the generated, typed pointer `css_section_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CssSectionRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkCssSection>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkCssSection>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkCssSection>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkCssSection>?) {
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

    /// Reference intialiser for a related type that implements `CssSectionProtocol`
    @inlinable init<T: CssSectionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssSectionProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssSectionProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssSectionProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssSectionProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssSectionProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkCssSection` referring to the section
    /// in the given `file` from the `start` location to the
    /// `end` location.
    @inlinable init<CssLocationT: CssLocationProtocol, FileT: GIO.FileProtocol>( file: FileT?, start: CssLocationT, end: CssLocationT) {
        let rv = gtk_css_section_new(file?.file_ptr, start._ptr, end._ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `CssSection` type acts as a reference-counted owner of an underlying `GtkCssSection` instance.
/// It provides the methods that can operate on this data type through `CssSectionProtocol` conformance.
/// Use `CssSection` as a strong reference or owner of a `GtkCssSection` instance.
///
/// Defines a part of a CSS document. Because sections are nested into
/// one another, you can use `gtk_css_section_get_parent()` to get the
/// containing region.
open class CssSection: CssSectionProtocol {
        /// Untyped pointer to the underlying `GtkCssSection` instance.
    /// For type-safe access, use the generated, typed pointer `css_section_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CssSection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkCssSection>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CssSection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkCssSection>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CssSection` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CssSection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CssSection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkCssSection>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CssSection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkCssSection>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkCssSection`.
    /// i.e., ownership is transferred to the `CssSection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkCssSection>) {
        ptr = UnsafeMutableRawPointer(op)
        gtk_css_section_ref(ptr.assumingMemoryBound(to: GtkCssSection.self))
    }

    /// Reference intialiser for a related type that implements `CssSectionProtocol`
    /// Will retain `GtkCssSection`.
    /// - Parameter other: an instance of a related type that implements `CssSectionProtocol`
    @inlinable public init<T: CssSectionProtocol>(_ other: T) {
        ptr = other.ptr
        gtk_css_section_ref(ptr.assumingMemoryBound(to: GtkCssSection.self))
    }

    /// Releases the underlying `GtkCssSection` instance using `gtk_css_section_unref`.
    deinit {
        gtk_css_section_unref(ptr.assumingMemoryBound(to: GtkCssSection.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssSectionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssSectionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        gtk_css_section_ref(ptr.assumingMemoryBound(to: GtkCssSection.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssSectionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssSectionProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        gtk_css_section_ref(ptr.assumingMemoryBound(to: GtkCssSection.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssSectionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssSectionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        gtk_css_section_ref(ptr.assumingMemoryBound(to: GtkCssSection.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssSectionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssSectionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        gtk_css_section_ref(ptr.assumingMemoryBound(to: GtkCssSection.self))
    }

    /// Creates a new `GtkCssSection` referring to the section
    /// in the given `file` from the `start` location to the
    /// `end` location.
    @inlinable public init<CssLocationT: CssLocationProtocol, FileT: GIO.FileProtocol>( file: FileT?, start: CssLocationT, end: CssLocationT) {
        let rv = gtk_css_section_new(file?.file_ptr, start._ptr, end._ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no CssSection properties

// MARK: no CssSection signals

// MARK: CssSection has no signals
// MARK: CssSection Record: CssSectionProtocol extension (methods and fields)
public extension CssSectionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCssSection` instance.
    @inlinable var css_section_ptr: UnsafeMutablePointer<GtkCssSection>! { return ptr?.assumingMemoryBound(to: GtkCssSection.self) }

    /// Returns the location in the CSS document where this section ends.
    @inlinable func getEndLocation() -> CssLocationRef! {
        let rv = CssLocationRef(gconstpointer: gconstpointer(gtk_css_section_get_end_location(css_section_ptr)))
        return rv
    }

    /// Gets the file that `section` was parsed from. If no such file exists,
    /// for example because the CSS was loaded via
    /// `gtk_css_provider_load_from_data``()`, then `nil` is returned.
    @inlinable func getFile() -> GIO.FileRef! {
        let rv = GIO.FileRef(gtk_css_section_get_file(css_section_ptr))
        return rv
    }

    /// Gets the parent section for the given `section`. The parent section is
    /// the section that contains this `section`. A special case are sections of
    /// type `GTK_CSS_SECTION_DOCUMENT`. Their parent will either be `nil`
    /// if they are the original CSS document that was loaded by
    /// `gtk_css_provider_load_from_file()` or a section of type
    /// `GTK_CSS_SECTION_IMPORT` if it was loaded with an import rule from
    /// a different file.
    @inlinable func getParent() -> CssSectionRef! {
        guard let rv = CssSectionRef(gconstpointer: gconstpointer(gtk_css_section_get_parent(css_section_ptr))) else { return nil }
        return rv
    }

    /// Returns the location in the CSS document where this section starts.
    @inlinable func getStartLocation() -> CssLocationRef! {
        let rv = CssLocationRef(gconstpointer: gconstpointer(gtk_css_section_get_start_location(css_section_ptr)))
        return rv
    }

    /// Prints the `section` into `string` in a human-readable form. This
    /// is a form like `gtk.css:32:1-23` to denote line 32, characters
    /// 1 to 23 in the file gtk.css.
    @inlinable func print<StringTypeT: StringProtocol>(string: StringTypeT) {
        gtk_css_section_print(css_section_ptr, string.gstring_ptr)
    
    }

    /// Increments the reference count on `section`.
    @discardableResult @inlinable func ref() -> CssSectionRef! {
        guard let rv = CssSectionRef(gconstpointer: gconstpointer(gtk_css_section_ref(css_section_ptr))) else { return nil }
        return rv
    }

    /// Prints the section into a human-readable text form using
    /// `gtk_css_section_print()`.
    @inlinable func toString() -> String! {
        let rv = gtk_css_section_to_string(css_section_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Decrements the reference count on `section`, freeing the
    /// structure if the reference count reaches 0.
    @inlinable func unref() {
        gtk_css_section_unref(css_section_ptr)
    
    }
    /// Returns the location in the CSS document where this section ends.
    @inlinable var endLocation: CssLocationRef! {
        /// Returns the location in the CSS document where this section ends.
        get {
            let rv = CssLocationRef(gconstpointer: gconstpointer(gtk_css_section_get_end_location(css_section_ptr)))
            return rv
        }
    }

    /// Gets the file that `section` was parsed from. If no such file exists,
    /// for example because the CSS was loaded via
    /// `gtk_css_provider_load_from_data``()`, then `nil` is returned.
    @inlinable var file: GIO.FileRef! {
        /// Gets the file that `section` was parsed from. If no such file exists,
        /// for example because the CSS was loaded via
        /// `gtk_css_provider_load_from_data``()`, then `nil` is returned.
        get {
            let rv = GIO.FileRef(gtk_css_section_get_file(css_section_ptr))
            return rv
        }
    }

    /// Gets the parent section for the given `section`. The parent section is
    /// the section that contains this `section`. A special case are sections of
    /// type `GTK_CSS_SECTION_DOCUMENT`. Their parent will either be `nil`
    /// if they are the original CSS document that was loaded by
    /// `gtk_css_provider_load_from_file()` or a section of type
    /// `GTK_CSS_SECTION_IMPORT` if it was loaded with an import rule from
    /// a different file.
    @inlinable var parent: CssSectionRef! {
        /// Gets the parent section for the given `section`. The parent section is
        /// the section that contains this `section`. A special case are sections of
        /// type `GTK_CSS_SECTION_DOCUMENT`. Their parent will either be `nil`
        /// if they are the original CSS document that was loaded by
        /// `gtk_css_provider_load_from_file()` or a section of type
        /// `GTK_CSS_SECTION_IMPORT` if it was loaded with an import rule from
        /// a different file.
        get {
            guard let rv = CssSectionRef(gconstpointer: gconstpointer(gtk_css_section_get_parent(css_section_ptr))) else { return nil }
            return rv
        }
    }

    /// Returns the location in the CSS document where this section starts.
    @inlinable var startLocation: CssLocationRef! {
        /// Returns the location in the CSS document where this section starts.
        get {
            let rv = CssLocationRef(gconstpointer: gconstpointer(gtk_css_section_get_start_location(css_section_ptr)))
            return rv
        }
    }


}



// MARK: - CssStyleChange Record

/// The `CssStyleChangeProtocol` protocol exposes the methods and properties of an underlying `GtkCssStyleChange` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CssStyleChange`.
/// Alternatively, use `CssStyleChangeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CssStyleChangeProtocol {
        /// Untyped pointer to the underlying `GtkCssStyleChange` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkCssStyleChange` instance.
    var _ptr: UnsafeMutablePointer<GtkCssStyleChange>! { get }

}

/// The `CssStyleChangeRef` type acts as a lightweight Swift reference to an underlying `GtkCssStyleChange` instance.
/// It exposes methods that can operate on this data type through `CssStyleChangeProtocol` conformance.
/// Use `CssStyleChangeRef` only as an `unowned` reference to an existing `GtkCssStyleChange` instance.
///

public struct CssStyleChangeRef: CssStyleChangeProtocol {
        /// Untyped pointer to the underlying `GtkCssStyleChange` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CssStyleChangeRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkCssStyleChange>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkCssStyleChange>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkCssStyleChange>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkCssStyleChange>?) {
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

    /// Reference intialiser for a related type that implements `CssStyleChangeProtocol`
    @inlinable init<T: CssStyleChangeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssStyleChangeProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssStyleChangeProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssStyleChangeProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssStyleChangeProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssStyleChangeProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CssStyleChange` type acts as an owner of an underlying `GtkCssStyleChange` instance.
/// It provides the methods that can operate on this data type through `CssStyleChangeProtocol` conformance.
/// Use `CssStyleChange` as a strong reference or owner of a `GtkCssStyleChange` instance.
///

open class CssStyleChange: CssStyleChangeProtocol {
        /// Untyped pointer to the underlying `GtkCssStyleChange` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CssStyleChange` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkCssStyleChange>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CssStyleChange` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkCssStyleChange>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CssStyleChange` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CssStyleChange` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CssStyleChange` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkCssStyleChange>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CssStyleChange` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkCssStyleChange>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkCssStyleChange` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `CssStyleChange` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkCssStyleChange>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkCssStyleChange, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `CssStyleChangeProtocol`
    /// `GtkCssStyleChange` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `CssStyleChangeProtocol`
    @inlinable public init<T: CssStyleChangeProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkCssStyleChange, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GtkCssStyleChange`.
    deinit {
        // no reference counting for GtkCssStyleChange, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssStyleChangeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssStyleChangeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkCssStyleChange, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssStyleChangeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssStyleChangeProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkCssStyleChange, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssStyleChangeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssStyleChangeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkCssStyleChange, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssStyleChangeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CssStyleChangeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkCssStyleChange, cannot ref(_ptr)
    }



}

// MARK: no CssStyleChange properties

// MARK: no CssStyleChange signals

// MARK: CssStyleChange has no signals
// MARK: CssStyleChange Record: CssStyleChangeProtocol extension (methods and fields)
public extension CssStyleChangeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCssStyleChange` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkCssStyleChange>! { return ptr?.assumingMemoryBound(to: GtkCssStyleChange.self) }



}



/// Metatype/GType declaration for CustomFilter
public extension CustomFilterClassRef {
    
    /// This getter returns the GLib type identifier registered for `CustomFilter`
    static var metatypeReference: GType { gtk_custom_filter_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkCustomFilterClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkCustomFilterClass.self) }
    
    static var metatype: GtkCustomFilterClass? { metatypePointer?.pointee } 
    
    static var wrapper: CustomFilterClassRef? { CustomFilterClassRef(metatypePointer) }
    
    
}

// MARK: - CustomFilterClass Record

/// The `CustomFilterClassProtocol` protocol exposes the methods and properties of an underlying `GtkCustomFilterClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CustomFilterClass`.
/// Alternatively, use `CustomFilterClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CustomFilterClassProtocol {
        /// Untyped pointer to the underlying `GtkCustomFilterClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkCustomFilterClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCustomFilterClass>! { get }

}

/// The `CustomFilterClassRef` type acts as a lightweight Swift reference to an underlying `GtkCustomFilterClass` instance.
/// It exposes methods that can operate on this data type through `CustomFilterClassProtocol` conformance.
/// Use `CustomFilterClassRef` only as an `unowned` reference to an existing `GtkCustomFilterClass` instance.
///

public struct CustomFilterClassRef: CustomFilterClassProtocol {
        /// Untyped pointer to the underlying `GtkCustomFilterClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CustomFilterClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkCustomFilterClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkCustomFilterClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkCustomFilterClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkCustomFilterClass>?) {
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

    /// Reference intialiser for a related type that implements `CustomFilterClassProtocol`
    @inlinable init<T: CustomFilterClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CustomFilterClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CustomFilterClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CustomFilterClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CustomFilterClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CustomFilterClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: CustomFilterClass Record: CustomFilterClassProtocol extension (methods and fields)
public extension CustomFilterClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCustomFilterClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkCustomFilterClass>! { return ptr?.assumingMemoryBound(to: GtkCustomFilterClass.self) }


    @inlinable var parentClass: GtkFilterClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for CustomLayout
public extension CustomLayoutClassRef {
    
    /// This getter returns the GLib type identifier registered for `CustomLayout`
    static var metatypeReference: GType { gtk_custom_layout_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkCustomLayoutClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkCustomLayoutClass.self) }
    
    static var metatype: GtkCustomLayoutClass? { metatypePointer?.pointee } 
    
    static var wrapper: CustomLayoutClassRef? { CustomLayoutClassRef(metatypePointer) }
    
    
}

// MARK: - CustomLayoutClass Record

/// The `CustomLayoutClassProtocol` protocol exposes the methods and properties of an underlying `GtkCustomLayoutClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CustomLayoutClass`.
/// Alternatively, use `CustomLayoutClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CustomLayoutClassProtocol {
        /// Untyped pointer to the underlying `GtkCustomLayoutClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkCustomLayoutClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCustomLayoutClass>! { get }

}

/// The `CustomLayoutClassRef` type acts as a lightweight Swift reference to an underlying `GtkCustomLayoutClass` instance.
/// It exposes methods that can operate on this data type through `CustomLayoutClassProtocol` conformance.
/// Use `CustomLayoutClassRef` only as an `unowned` reference to an existing `GtkCustomLayoutClass` instance.
///

public struct CustomLayoutClassRef: CustomLayoutClassProtocol {
        /// Untyped pointer to the underlying `GtkCustomLayoutClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CustomLayoutClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkCustomLayoutClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkCustomLayoutClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkCustomLayoutClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkCustomLayoutClass>?) {
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

    /// Reference intialiser for a related type that implements `CustomLayoutClassProtocol`
    @inlinable init<T: CustomLayoutClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CustomLayoutClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CustomLayoutClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CustomLayoutClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CustomLayoutClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CustomLayoutClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: CustomLayoutClass Record: CustomLayoutClassProtocol extension (methods and fields)
public extension CustomLayoutClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCustomLayoutClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkCustomLayoutClass>! { return ptr?.assumingMemoryBound(to: GtkCustomLayoutClass.self) }


    @inlinable var parentClass: GtkLayoutManagerClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for CustomSorter
public extension CustomSorterClassRef {
    
    /// This getter returns the GLib type identifier registered for `CustomSorter`
    static var metatypeReference: GType { gtk_custom_sorter_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkCustomSorterClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkCustomSorterClass.self) }
    
    static var metatype: GtkCustomSorterClass? { metatypePointer?.pointee } 
    
    static var wrapper: CustomSorterClassRef? { CustomSorterClassRef(metatypePointer) }
    
    
}

// MARK: - CustomSorterClass Record

/// The `CustomSorterClassProtocol` protocol exposes the methods and properties of an underlying `GtkCustomSorterClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CustomSorterClass`.
/// Alternatively, use `CustomSorterClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CustomSorterClassProtocol {
        /// Untyped pointer to the underlying `GtkCustomSorterClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkCustomSorterClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCustomSorterClass>! { get }

}

/// The `CustomSorterClassRef` type acts as a lightweight Swift reference to an underlying `GtkCustomSorterClass` instance.
/// It exposes methods that can operate on this data type through `CustomSorterClassProtocol` conformance.
/// Use `CustomSorterClassRef` only as an `unowned` reference to an existing `GtkCustomSorterClass` instance.
///

public struct CustomSorterClassRef: CustomSorterClassProtocol {
        /// Untyped pointer to the underlying `GtkCustomSorterClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CustomSorterClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkCustomSorterClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkCustomSorterClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkCustomSorterClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkCustomSorterClass>?) {
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

    /// Reference intialiser for a related type that implements `CustomSorterClassProtocol`
    @inlinable init<T: CustomSorterClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CustomSorterClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CustomSorterClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CustomSorterClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CustomSorterClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CustomSorterClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: CustomSorterClass Record: CustomSorterClassProtocol extension (methods and fields)
public extension CustomSorterClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCustomSorterClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkCustomSorterClass>! { return ptr?.assumingMemoryBound(to: GtkCustomSorterClass.self) }


    @inlinable var parentClass: GtkSorterClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for Dialog
public extension DialogClassRef {
    
    /// This getter returns the GLib type identifier registered for `Dialog`
    static var metatypeReference: GType { gtk_dialog_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkDialogClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkDialogClass.self) }
    
    static var metatype: GtkDialogClass? { metatypePointer?.pointee } 
    
    static var wrapper: DialogClassRef? { DialogClassRef(metatypePointer) }
    
    
}

// MARK: - DialogClass Record

/// The `DialogClassProtocol` protocol exposes the methods and properties of an underlying `GtkDialogClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DialogClass`.
/// Alternatively, use `DialogClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol DialogClassProtocol {
        /// Untyped pointer to the underlying `GtkDialogClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkDialogClass` instance.
    var _ptr: UnsafeMutablePointer<GtkDialogClass>! { get }

}

/// The `DialogClassRef` type acts as a lightweight Swift reference to an underlying `GtkDialogClass` instance.
/// It exposes methods that can operate on this data type through `DialogClassProtocol` conformance.
/// Use `DialogClassRef` only as an `unowned` reference to an existing `GtkDialogClass` instance.
///

public struct DialogClassRef: DialogClassProtocol {
        /// Untyped pointer to the underlying `GtkDialogClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DialogClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkDialogClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkDialogClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkDialogClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkDialogClass>?) {
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

    /// Reference intialiser for a related type that implements `DialogClassProtocol`
    @inlinable init<T: DialogClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DialogClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DialogClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DialogClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DialogClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DialogClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: DialogClass Record: DialogClassProtocol extension (methods and fields)
public extension DialogClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkDialogClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkDialogClass>! { return ptr?.assumingMemoryBound(to: GtkDialogClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkWindowClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var response is unavailable because response is void

    // var close is unavailable because close is void

    // var padding is unavailable because padding is private

}



