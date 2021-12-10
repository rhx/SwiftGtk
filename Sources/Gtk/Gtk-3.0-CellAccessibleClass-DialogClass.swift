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

/// Metatype/GType declaration for CellAccessible
public extension CellAccessibleClassRef {
    
    /// This getter returns the GLib type identifier registered for `CellAccessible`
    static var metatypeReference: GType { gtk_cell_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkCellAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkCellAccessibleClass.self) }
    
    static var metatype: GtkCellAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: CellAccessibleClassRef? { CellAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - CellAccessibleClass Record


///
/// The `CellAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkCellAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellAccessibleClass`.
/// Alternatively, use `CellAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol CellAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkCellAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkCellAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellAccessibleClass>! { get }

    /// Required Initialiser for types conforming to `CellAccessibleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `CellAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkCellAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `CellAccessibleClassProtocol` conformance.
/// Use `CellAccessibleClassRef` only as an `unowned` reference to an existing `GtkCellAccessibleClass` instance.
///
public struct CellAccessibleClassRef: CellAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkCellAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CellAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkCellAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkCellAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkCellAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkCellAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `CellAccessibleClassProtocol`
    @inlinable init<T: CellAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: CellAccessibleClass Record: CellAccessibleClassProtocol extension (methods and fields)
public extension CellAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkCellAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkCellAccessibleClass.self) }


    @inlinable var parentClass: GtkAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var updateCache is unavailable because update_cache is void

}



/// Metatype/GType declaration for CellAccessibleParent
public extension CellAccessibleParentIfaceRef {
    
    /// This getter returns the GLib type identifier registered for `CellAccessibleParent`
    static var metatypeReference: GType { gtk_cell_accessible_parent_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkCellAccessibleParentIface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkCellAccessibleParentIface.self) }
    
    static var metatype: GtkCellAccessibleParentIface? { metatypePointer?.pointee } 
    
    static var wrapper: CellAccessibleParentIfaceRef? { CellAccessibleParentIfaceRef(metatypePointer) }
    
    
}

// MARK: - CellAccessibleParentIface Record


///
/// The `CellAccessibleParentIfaceProtocol` protocol exposes the methods and properties of an underlying `GtkCellAccessibleParentIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellAccessibleParentIface`.
/// Alternatively, use `CellAccessibleParentIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol CellAccessibleParentIfaceProtocol {
        /// Untyped pointer to the underlying `GtkCellAccessibleParentIface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkCellAccessibleParentIface` instance.
    var _ptr: UnsafeMutablePointer<GtkCellAccessibleParentIface>! { get }

    /// Required Initialiser for types conforming to `CellAccessibleParentIfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `CellAccessibleParentIfaceRef` type acts as a lightweight Swift reference to an underlying `GtkCellAccessibleParentIface` instance.
/// It exposes methods that can operate on this data type through `CellAccessibleParentIfaceProtocol` conformance.
/// Use `CellAccessibleParentIfaceRef` only as an `unowned` reference to an existing `GtkCellAccessibleParentIface` instance.
///
public struct CellAccessibleParentIfaceRef: CellAccessibleParentIfaceProtocol {
        /// Untyped pointer to the underlying `GtkCellAccessibleParentIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CellAccessibleParentIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkCellAccessibleParentIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkCellAccessibleParentIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkCellAccessibleParentIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkCellAccessibleParentIface>?) {
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

    /// Reference intialiser for a related type that implements `CellAccessibleParentIfaceProtocol`
    @inlinable init<T: CellAccessibleParentIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessibleParentIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessibleParentIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessibleParentIfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessibleParentIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessibleParentIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: CellAccessibleParentIface Record: CellAccessibleParentIfaceProtocol extension (methods and fields)
public extension CellAccessibleParentIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellAccessibleParentIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkCellAccessibleParentIface>! { return ptr?.assumingMemoryBound(to: GtkCellAccessibleParentIface.self) }


    @inlinable var parent: GTypeInterface {
        get {
            let rv = _ptr.pointee.parent
            return rv
        }
    }

    // var getCellExtents is unavailable because get_cell_extents is void

    // var getCellArea is unavailable because get_cell_area is void

    // var grabFocus is unavailable because grab_focus is void

    // var getChildIndex is unavailable because get_child_index is void

    // var getRendererState is unavailable because get_renderer_state is void

    // var expandCollapse is unavailable because expand_collapse is void

    // var activate is unavailable because activate is void

    // var edit is unavailable because edit is void

    // var updateRelationset is unavailable because update_relationset is void

    // var getCellPosition is unavailable because get_cell_position is void

    // var getColumnHeaderCells is unavailable because get_column_header_cells is void

    // var getRowHeaderCells is unavailable because get_row_header_cells is void

}



/// Metatype/GType declaration for CellAreaBox
public extension CellAreaBoxClassRef {
    
    /// This getter returns the GLib type identifier registered for `CellAreaBox`
    static var metatypeReference: GType { gtk_cell_area_box_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkCellAreaBoxClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkCellAreaBoxClass.self) }
    
    static var metatype: GtkCellAreaBoxClass? { metatypePointer?.pointee } 
    
    static var wrapper: CellAreaBoxClassRef? { CellAreaBoxClassRef(metatypePointer) }
    
    
}

// MARK: - CellAreaBoxClass Record


///
/// The `CellAreaBoxClassProtocol` protocol exposes the methods and properties of an underlying `GtkCellAreaBoxClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellAreaBoxClass`.
/// Alternatively, use `CellAreaBoxClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol CellAreaBoxClassProtocol {
        /// Untyped pointer to the underlying `GtkCellAreaBoxClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkCellAreaBoxClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellAreaBoxClass>! { get }

    /// Required Initialiser for types conforming to `CellAreaBoxClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `CellAreaBoxClassRef` type acts as a lightweight Swift reference to an underlying `GtkCellAreaBoxClass` instance.
/// It exposes methods that can operate on this data type through `CellAreaBoxClassProtocol` conformance.
/// Use `CellAreaBoxClassRef` only as an `unowned` reference to an existing `GtkCellAreaBoxClass` instance.
///
public struct CellAreaBoxClassRef: CellAreaBoxClassProtocol {
        /// Untyped pointer to the underlying `GtkCellAreaBoxClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CellAreaBoxClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkCellAreaBoxClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkCellAreaBoxClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkCellAreaBoxClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkCellAreaBoxClass>?) {
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

    /// Reference intialiser for a related type that implements `CellAreaBoxClassProtocol`
    @inlinable init<T: CellAreaBoxClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaBoxClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaBoxClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaBoxClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaBoxClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAreaBoxClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: CellAreaBoxClass Record: CellAreaBoxClassProtocol extension (methods and fields)
public extension CellAreaBoxClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellAreaBoxClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkCellAreaBoxClass>! { return ptr?.assumingMemoryBound(to: GtkCellAreaBoxClass.self) }


    // var parentClass is unavailable because parent_class is private

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for CellArea
public extension CellAreaClassRef {
    
    /// This getter returns the GLib type identifier registered for `CellArea`
    static var metatypeReference: GType { gtk_cell_area_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkCellAreaClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkCellAreaClass.self) }
    
    static var metatype: GtkCellAreaClass? { metatypePointer?.pointee } 
    
    static var wrapper: CellAreaClassRef? { CellAreaClassRef(metatypePointer) }
    
    
}

// MARK: - CellAreaClass Record


///
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

    /// Required Initialiser for types conforming to `CellAreaClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
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
    @inlinable func findCellProperty(propertyName: UnsafePointer<gchar>!) -> GLibObject.ParamSpecRef! {
        let rv = GLibObject.ParamSpecRef(gtk_cell_area_class_find_cell_property(_ptr, propertyName))
        return rv
    }

    /// Installs a cell property on a cell area class.
    @inlinable func installCellProperty<ParamSpecT: GLibObject.ParamSpecProtocol>(propertyID: Int, pspec: ParamSpecT) {
        gtk_cell_area_class_install_cell_property(_ptr, guint(propertyID), pspec.param_spec_ptr)
    
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

    // var render is unavailable because render is void

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

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

    // var GtkReserved5 is unavailable because _gtk_reserved5 is void

    // var GtkReserved6 is unavailable because _gtk_reserved6 is void

    // var GtkReserved7 is unavailable because _gtk_reserved7 is void

    // var GtkReserved8 is unavailable because _gtk_reserved8 is void

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


///
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

    /// Required Initialiser for types conforming to `CellAreaContextClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
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

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

    // var GtkReserved5 is unavailable because _gtk_reserved5 is void

    // var GtkReserved6 is unavailable because _gtk_reserved6 is void

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


///
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

    /// Required Initialiser for types conforming to `CellEditableIfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
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


///
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

    /// Required Initialiser for types conforming to `CellLayoutIfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
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



/// Metatype/GType declaration for CellRendererAccel
public extension CellRendererAccelClassRef {
    
    /// This getter returns the GLib type identifier registered for `CellRendererAccel`
    static var metatypeReference: GType { gtk_cell_renderer_accel_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkCellRendererAccelClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkCellRendererAccelClass.self) }
    
    static var metatype: GtkCellRendererAccelClass? { metatypePointer?.pointee } 
    
    static var wrapper: CellRendererAccelClassRef? { CellRendererAccelClassRef(metatypePointer) }
    
    
}

// MARK: - CellRendererAccelClass Record


///
/// The `CellRendererAccelClassProtocol` protocol exposes the methods and properties of an underlying `GtkCellRendererAccelClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellRendererAccelClass`.
/// Alternatively, use `CellRendererAccelClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol CellRendererAccelClassProtocol {
        /// Untyped pointer to the underlying `GtkCellRendererAccelClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkCellRendererAccelClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererAccelClass>! { get }

    /// Required Initialiser for types conforming to `CellRendererAccelClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `CellRendererAccelClassRef` type acts as a lightweight Swift reference to an underlying `GtkCellRendererAccelClass` instance.
/// It exposes methods that can operate on this data type through `CellRendererAccelClassProtocol` conformance.
/// Use `CellRendererAccelClassRef` only as an `unowned` reference to an existing `GtkCellRendererAccelClass` instance.
///
public struct CellRendererAccelClassRef: CellRendererAccelClassProtocol {
        /// Untyped pointer to the underlying `GtkCellRendererAccelClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CellRendererAccelClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkCellRendererAccelClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkCellRendererAccelClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkCellRendererAccelClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkCellRendererAccelClass>?) {
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

    /// Reference intialiser for a related type that implements `CellRendererAccelClassProtocol`
    @inlinable init<T: CellRendererAccelClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererAccelClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererAccelClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererAccelClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererAccelClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererAccelClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: CellRendererAccelClass Record: CellRendererAccelClassProtocol extension (methods and fields)
public extension CellRendererAccelClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellRendererAccelClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkCellRendererAccelClass>! { return ptr?.assumingMemoryBound(to: GtkCellRendererAccelClass.self) }


    @inlinable var parentClass: GtkCellRendererTextClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var accelEdited is unavailable because accel_edited is void

    // var accelCleared is unavailable because accel_cleared is void

    // var GtkReserved0 is unavailable because _gtk_reserved0 is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

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


///
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

    /// Required Initialiser for types conforming to `CellRendererClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
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

    /// Sets the type to be used for creating accessibles for cells rendered by
    /// cell renderers of `renderer_class`. Note that multiple accessibles will
    /// be created.
    /// 
    /// This function should only be called from class init functions of cell
    /// renderers.
    @inlinable func setAccessible(type: GType) {
        gtk_cell_renderer_class_set_accessible_type(_ptr, type)
    
    }

    // var parentClass is unavailable because parent_class is private

    // var getRequestMode is unavailable because get_request_mode is void

    // var getPreferredWidth is unavailable because get_preferred_width is void

    // var getPreferredHeightForWidth is unavailable because get_preferred_height_for_width is void

    // var getPreferredHeight is unavailable because get_preferred_height is void

    // var getPreferredWidthForHeight is unavailable because get_preferred_width_for_height is void

    // var getAlignedArea is unavailable because get_aligned_area is void

    // var getSize is unavailable because get_size is void

    // var render is unavailable because render is void

    // var activate is unavailable because activate is void

    // var startEditing is unavailable because start_editing is void

    // var editingCanceled is unavailable because editing_canceled is void

    // var editingStarted is unavailable because editing_started is void

    // var priv is unavailable because priv is private

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



// MARK: - CellRendererClassPrivate Record


///
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

    /// Required Initialiser for types conforming to `CellRendererClassPrivateProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
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


///
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
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



/// Metatype/GType declaration for CellRendererCombo
public extension CellRendererComboClassRef {
    
    /// This getter returns the GLib type identifier registered for `CellRendererCombo`
    static var metatypeReference: GType { gtk_cell_renderer_combo_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkCellRendererComboClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkCellRendererComboClass.self) }
    
    static var metatype: GtkCellRendererComboClass? { metatypePointer?.pointee } 
    
    static var wrapper: CellRendererComboClassRef? { CellRendererComboClassRef(metatypePointer) }
    
    
}

// MARK: - CellRendererComboClass Record


///
/// The `CellRendererComboClassProtocol` protocol exposes the methods and properties of an underlying `GtkCellRendererComboClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellRendererComboClass`.
/// Alternatively, use `CellRendererComboClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol CellRendererComboClassProtocol {
        /// Untyped pointer to the underlying `GtkCellRendererComboClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkCellRendererComboClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererComboClass>! { get }

    /// Required Initialiser for types conforming to `CellRendererComboClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `CellRendererComboClassRef` type acts as a lightweight Swift reference to an underlying `GtkCellRendererComboClass` instance.
/// It exposes methods that can operate on this data type through `CellRendererComboClassProtocol` conformance.
/// Use `CellRendererComboClassRef` only as an `unowned` reference to an existing `GtkCellRendererComboClass` instance.
///
public struct CellRendererComboClassRef: CellRendererComboClassProtocol {
        /// Untyped pointer to the underlying `GtkCellRendererComboClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CellRendererComboClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkCellRendererComboClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkCellRendererComboClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkCellRendererComboClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkCellRendererComboClass>?) {
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

    /// Reference intialiser for a related type that implements `CellRendererComboClassProtocol`
    @inlinable init<T: CellRendererComboClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererComboClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererComboClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererComboClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererComboClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererComboClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: CellRendererComboClass Record: CellRendererComboClassProtocol extension (methods and fields)
public extension CellRendererComboClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellRendererComboClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkCellRendererComboClass>! { return ptr?.assumingMemoryBound(to: GtkCellRendererComboClass.self) }


    @inlinable var parent: GtkCellRendererTextClass {
        get {
            let rv = _ptr.pointee.parent
            return rv
        }
    }

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for CellRendererPixbuf
public extension CellRendererPixbufClassRef {
    
    /// This getter returns the GLib type identifier registered for `CellRendererPixbuf`
    static var metatypeReference: GType { gtk_cell_renderer_pixbuf_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkCellRendererPixbufClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkCellRendererPixbufClass.self) }
    
    static var metatype: GtkCellRendererPixbufClass? { metatypePointer?.pointee } 
    
    static var wrapper: CellRendererPixbufClassRef? { CellRendererPixbufClassRef(metatypePointer) }
    
    
}

// MARK: - CellRendererPixbufClass Record


///
/// The `CellRendererPixbufClassProtocol` protocol exposes the methods and properties of an underlying `GtkCellRendererPixbufClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellRendererPixbufClass`.
/// Alternatively, use `CellRendererPixbufClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol CellRendererPixbufClassProtocol {
        /// Untyped pointer to the underlying `GtkCellRendererPixbufClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkCellRendererPixbufClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererPixbufClass>! { get }

    /// Required Initialiser for types conforming to `CellRendererPixbufClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `CellRendererPixbufClassRef` type acts as a lightweight Swift reference to an underlying `GtkCellRendererPixbufClass` instance.
/// It exposes methods that can operate on this data type through `CellRendererPixbufClassProtocol` conformance.
/// Use `CellRendererPixbufClassRef` only as an `unowned` reference to an existing `GtkCellRendererPixbufClass` instance.
///
public struct CellRendererPixbufClassRef: CellRendererPixbufClassProtocol {
        /// Untyped pointer to the underlying `GtkCellRendererPixbufClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CellRendererPixbufClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkCellRendererPixbufClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkCellRendererPixbufClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkCellRendererPixbufClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkCellRendererPixbufClass>?) {
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

    /// Reference intialiser for a related type that implements `CellRendererPixbufClassProtocol`
    @inlinable init<T: CellRendererPixbufClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererPixbufClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererPixbufClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererPixbufClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererPixbufClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererPixbufClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: CellRendererPixbufClass Record: CellRendererPixbufClassProtocol extension (methods and fields)
public extension CellRendererPixbufClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellRendererPixbufClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkCellRendererPixbufClass>! { return ptr?.assumingMemoryBound(to: GtkCellRendererPixbufClass.self) }


    @inlinable var parentClass: GtkCellRendererClass {
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



/// Metatype/GType declaration for CellRendererProgress
public extension CellRendererProgressClassRef {
    
    /// This getter returns the GLib type identifier registered for `CellRendererProgress`
    static var metatypeReference: GType { gtk_cell_renderer_progress_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkCellRendererProgressClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkCellRendererProgressClass.self) }
    
    static var metatype: GtkCellRendererProgressClass? { metatypePointer?.pointee } 
    
    static var wrapper: CellRendererProgressClassRef? { CellRendererProgressClassRef(metatypePointer) }
    
    
}

// MARK: - CellRendererProgressClass Record


///
/// The `CellRendererProgressClassProtocol` protocol exposes the methods and properties of an underlying `GtkCellRendererProgressClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellRendererProgressClass`.
/// Alternatively, use `CellRendererProgressClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol CellRendererProgressClassProtocol {
        /// Untyped pointer to the underlying `GtkCellRendererProgressClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkCellRendererProgressClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererProgressClass>! { get }

    /// Required Initialiser for types conforming to `CellRendererProgressClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `CellRendererProgressClassRef` type acts as a lightweight Swift reference to an underlying `GtkCellRendererProgressClass` instance.
/// It exposes methods that can operate on this data type through `CellRendererProgressClassProtocol` conformance.
/// Use `CellRendererProgressClassRef` only as an `unowned` reference to an existing `GtkCellRendererProgressClass` instance.
///
public struct CellRendererProgressClassRef: CellRendererProgressClassProtocol {
        /// Untyped pointer to the underlying `GtkCellRendererProgressClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CellRendererProgressClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkCellRendererProgressClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkCellRendererProgressClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkCellRendererProgressClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkCellRendererProgressClass>?) {
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

    /// Reference intialiser for a related type that implements `CellRendererProgressClassProtocol`
    @inlinable init<T: CellRendererProgressClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererProgressClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererProgressClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererProgressClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererProgressClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererProgressClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: CellRendererProgressClass Record: CellRendererProgressClassProtocol extension (methods and fields)
public extension CellRendererProgressClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellRendererProgressClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkCellRendererProgressClass>! { return ptr?.assumingMemoryBound(to: GtkCellRendererProgressClass.self) }


    @inlinable var parentClass: GtkCellRendererClass {
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



/// Metatype/GType declaration for CellRendererSpin
public extension CellRendererSpinClassRef {
    
    /// This getter returns the GLib type identifier registered for `CellRendererSpin`
    static var metatypeReference: GType { gtk_cell_renderer_spin_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkCellRendererSpinClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkCellRendererSpinClass.self) }
    
    static var metatype: GtkCellRendererSpinClass? { metatypePointer?.pointee } 
    
    static var wrapper: CellRendererSpinClassRef? { CellRendererSpinClassRef(metatypePointer) }
    
    
}

// MARK: - CellRendererSpinClass Record


///
/// The `CellRendererSpinClassProtocol` protocol exposes the methods and properties of an underlying `GtkCellRendererSpinClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellRendererSpinClass`.
/// Alternatively, use `CellRendererSpinClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol CellRendererSpinClassProtocol {
        /// Untyped pointer to the underlying `GtkCellRendererSpinClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkCellRendererSpinClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererSpinClass>! { get }

    /// Required Initialiser for types conforming to `CellRendererSpinClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `CellRendererSpinClassRef` type acts as a lightweight Swift reference to an underlying `GtkCellRendererSpinClass` instance.
/// It exposes methods that can operate on this data type through `CellRendererSpinClassProtocol` conformance.
/// Use `CellRendererSpinClassRef` only as an `unowned` reference to an existing `GtkCellRendererSpinClass` instance.
///
public struct CellRendererSpinClassRef: CellRendererSpinClassProtocol {
        /// Untyped pointer to the underlying `GtkCellRendererSpinClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CellRendererSpinClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkCellRendererSpinClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkCellRendererSpinClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkCellRendererSpinClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkCellRendererSpinClass>?) {
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

    /// Reference intialiser for a related type that implements `CellRendererSpinClassProtocol`
    @inlinable init<T: CellRendererSpinClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: CellRendererSpinClass Record: CellRendererSpinClassProtocol extension (methods and fields)
public extension CellRendererSpinClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellRendererSpinClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkCellRendererSpinClass>! { return ptr?.assumingMemoryBound(to: GtkCellRendererSpinClass.self) }


    @inlinable var parent: GtkCellRendererTextClass {
        get {
            let rv = _ptr.pointee.parent
            return rv
        }
    }

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for CellRendererSpinner
public extension CellRendererSpinnerClassRef {
    
    /// This getter returns the GLib type identifier registered for `CellRendererSpinner`
    static var metatypeReference: GType { gtk_cell_renderer_spinner_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkCellRendererSpinnerClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkCellRendererSpinnerClass.self) }
    
    static var metatype: GtkCellRendererSpinnerClass? { metatypePointer?.pointee } 
    
    static var wrapper: CellRendererSpinnerClassRef? { CellRendererSpinnerClassRef(metatypePointer) }
    
    
}

// MARK: - CellRendererSpinnerClass Record


///
/// The `CellRendererSpinnerClassProtocol` protocol exposes the methods and properties of an underlying `GtkCellRendererSpinnerClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellRendererSpinnerClass`.
/// Alternatively, use `CellRendererSpinnerClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol CellRendererSpinnerClassProtocol {
        /// Untyped pointer to the underlying `GtkCellRendererSpinnerClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkCellRendererSpinnerClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererSpinnerClass>! { get }

    /// Required Initialiser for types conforming to `CellRendererSpinnerClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `CellRendererSpinnerClassRef` type acts as a lightweight Swift reference to an underlying `GtkCellRendererSpinnerClass` instance.
/// It exposes methods that can operate on this data type through `CellRendererSpinnerClassProtocol` conformance.
/// Use `CellRendererSpinnerClassRef` only as an `unowned` reference to an existing `GtkCellRendererSpinnerClass` instance.
///
public struct CellRendererSpinnerClassRef: CellRendererSpinnerClassProtocol {
        /// Untyped pointer to the underlying `GtkCellRendererSpinnerClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CellRendererSpinnerClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkCellRendererSpinnerClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkCellRendererSpinnerClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkCellRendererSpinnerClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkCellRendererSpinnerClass>?) {
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

    /// Reference intialiser for a related type that implements `CellRendererSpinnerClassProtocol`
    @inlinable init<T: CellRendererSpinnerClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinnerClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinnerClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinnerClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinnerClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererSpinnerClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: CellRendererSpinnerClass Record: CellRendererSpinnerClassProtocol extension (methods and fields)
public extension CellRendererSpinnerClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellRendererSpinnerClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkCellRendererSpinnerClass>! { return ptr?.assumingMemoryBound(to: GtkCellRendererSpinnerClass.self) }


    @inlinable var parentClass: GtkCellRendererClass {
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



/// Metatype/GType declaration for CellRendererText
public extension CellRendererTextClassRef {
    
    /// This getter returns the GLib type identifier registered for `CellRendererText`
    static var metatypeReference: GType { gtk_cell_renderer_text_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkCellRendererTextClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkCellRendererTextClass.self) }
    
    static var metatype: GtkCellRendererTextClass? { metatypePointer?.pointee } 
    
    static var wrapper: CellRendererTextClassRef? { CellRendererTextClassRef(metatypePointer) }
    
    
}

// MARK: - CellRendererTextClass Record


///
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

    /// Required Initialiser for types conforming to `CellRendererTextClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
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

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for CellRendererToggle
public extension CellRendererToggleClassRef {
    
    /// This getter returns the GLib type identifier registered for `CellRendererToggle`
    static var metatypeReference: GType { gtk_cell_renderer_toggle_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkCellRendererToggleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkCellRendererToggleClass.self) }
    
    static var metatype: GtkCellRendererToggleClass? { metatypePointer?.pointee } 
    
    static var wrapper: CellRendererToggleClassRef? { CellRendererToggleClassRef(metatypePointer) }
    
    
}

// MARK: - CellRendererToggleClass Record


///
/// The `CellRendererToggleClassProtocol` protocol exposes the methods and properties of an underlying `GtkCellRendererToggleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellRendererToggleClass`.
/// Alternatively, use `CellRendererToggleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol CellRendererToggleClassProtocol {
        /// Untyped pointer to the underlying `GtkCellRendererToggleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkCellRendererToggleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellRendererToggleClass>! { get }

    /// Required Initialiser for types conforming to `CellRendererToggleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `CellRendererToggleClassRef` type acts as a lightweight Swift reference to an underlying `GtkCellRendererToggleClass` instance.
/// It exposes methods that can operate on this data type through `CellRendererToggleClassProtocol` conformance.
/// Use `CellRendererToggleClassRef` only as an `unowned` reference to an existing `GtkCellRendererToggleClass` instance.
///
public struct CellRendererToggleClassRef: CellRendererToggleClassProtocol {
        /// Untyped pointer to the underlying `GtkCellRendererToggleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CellRendererToggleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkCellRendererToggleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkCellRendererToggleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkCellRendererToggleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkCellRendererToggleClass>?) {
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

    /// Reference intialiser for a related type that implements `CellRendererToggleClassProtocol`
    @inlinable init<T: CellRendererToggleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererToggleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererToggleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererToggleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererToggleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellRendererToggleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: CellRendererToggleClass Record: CellRendererToggleClassProtocol extension (methods and fields)
public extension CellRendererToggleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellRendererToggleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkCellRendererToggleClass>! { return ptr?.assumingMemoryBound(to: GtkCellRendererToggleClass.self) }


    @inlinable var parentClass: GtkCellRendererClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var toggled is unavailable because toggled is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for CellView
public extension CellViewClassRef {
    
    /// This getter returns the GLib type identifier registered for `CellView`
    static var metatypeReference: GType { gtk_cell_view_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkCellViewClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkCellViewClass.self) }
    
    static var metatype: GtkCellViewClass? { metatypePointer?.pointee } 
    
    static var wrapper: CellViewClassRef? { CellViewClassRef(metatypePointer) }
    
    
}

// MARK: - CellViewClass Record


///
/// The `CellViewClassProtocol` protocol exposes the methods and properties of an underlying `GtkCellViewClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellViewClass`.
/// Alternatively, use `CellViewClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol CellViewClassProtocol {
        /// Untyped pointer to the underlying `GtkCellViewClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkCellViewClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCellViewClass>! { get }

    /// Required Initialiser for types conforming to `CellViewClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `CellViewClassRef` type acts as a lightweight Swift reference to an underlying `GtkCellViewClass` instance.
/// It exposes methods that can operate on this data type through `CellViewClassProtocol` conformance.
/// Use `CellViewClassRef` only as an `unowned` reference to an existing `GtkCellViewClass` instance.
///
public struct CellViewClassRef: CellViewClassProtocol {
        /// Untyped pointer to the underlying `GtkCellViewClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CellViewClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkCellViewClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkCellViewClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkCellViewClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkCellViewClass>?) {
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

    /// Reference intialiser for a related type that implements `CellViewClassProtocol`
    @inlinable init<T: CellViewClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellViewClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellViewClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellViewClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellViewClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellViewClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: CellViewClass Record: CellViewClassProtocol extension (methods and fields)
public extension CellViewClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellViewClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkCellViewClass>! { return ptr?.assumingMemoryBound(to: GtkCellViewClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkWidgetClass {
        /// The parent class.
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



/// Metatype/GType declaration for CheckButton
public extension CheckButtonClassRef {
    
    /// This getter returns the GLib type identifier registered for `CheckButton`
    static var metatypeReference: GType { gtk_check_button_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkCheckButtonClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkCheckButtonClass.self) }
    
    static var metatype: GtkCheckButtonClass? { metatypePointer?.pointee } 
    
    static var wrapper: CheckButtonClassRef? { CheckButtonClassRef(metatypePointer) }
    
    
}

// MARK: - CheckButtonClass Record


///
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

    /// Required Initialiser for types conforming to `CheckButtonClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
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


    @inlinable var parentClass: GtkToggleButtonClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var drawIndicator is unavailable because draw_indicator is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for CheckMenuItemAccessible
public extension CheckMenuItemAccessibleClassRef {
    
    /// This getter returns the GLib type identifier registered for `CheckMenuItemAccessible`
    static var metatypeReference: GType { gtk_check_menu_item_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkCheckMenuItemAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkCheckMenuItemAccessibleClass.self) }
    
    static var metatype: GtkCheckMenuItemAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: CheckMenuItemAccessibleClassRef? { CheckMenuItemAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - CheckMenuItemAccessibleClass Record


///
/// The `CheckMenuItemAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkCheckMenuItemAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CheckMenuItemAccessibleClass`.
/// Alternatively, use `CheckMenuItemAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol CheckMenuItemAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkCheckMenuItemAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkCheckMenuItemAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCheckMenuItemAccessibleClass>! { get }

    /// Required Initialiser for types conforming to `CheckMenuItemAccessibleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `CheckMenuItemAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkCheckMenuItemAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `CheckMenuItemAccessibleClassProtocol` conformance.
/// Use `CheckMenuItemAccessibleClassRef` only as an `unowned` reference to an existing `GtkCheckMenuItemAccessibleClass` instance.
///
public struct CheckMenuItemAccessibleClassRef: CheckMenuItemAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkCheckMenuItemAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CheckMenuItemAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkCheckMenuItemAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkCheckMenuItemAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkCheckMenuItemAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkCheckMenuItemAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `CheckMenuItemAccessibleClassProtocol`
    @inlinable init<T: CheckMenuItemAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: CheckMenuItemAccessibleClass Record: CheckMenuItemAccessibleClassProtocol extension (methods and fields)
public extension CheckMenuItemAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCheckMenuItemAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkCheckMenuItemAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkCheckMenuItemAccessibleClass.self) }


    @inlinable var parentClass: GtkMenuItemAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for CheckMenuItem
public extension CheckMenuItemClassRef {
    
    /// This getter returns the GLib type identifier registered for `CheckMenuItem`
    static var metatypeReference: GType { gtk_check_menu_item_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkCheckMenuItemClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkCheckMenuItemClass.self) }
    
    static var metatype: GtkCheckMenuItemClass? { metatypePointer?.pointee } 
    
    static var wrapper: CheckMenuItemClassRef? { CheckMenuItemClassRef(metatypePointer) }
    
    
}

// MARK: - CheckMenuItemClass Record


///
/// The `CheckMenuItemClassProtocol` protocol exposes the methods and properties of an underlying `GtkCheckMenuItemClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CheckMenuItemClass`.
/// Alternatively, use `CheckMenuItemClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol CheckMenuItemClassProtocol {
        /// Untyped pointer to the underlying `GtkCheckMenuItemClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkCheckMenuItemClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCheckMenuItemClass>! { get }

    /// Required Initialiser for types conforming to `CheckMenuItemClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `CheckMenuItemClassRef` type acts as a lightweight Swift reference to an underlying `GtkCheckMenuItemClass` instance.
/// It exposes methods that can operate on this data type through `CheckMenuItemClassProtocol` conformance.
/// Use `CheckMenuItemClassRef` only as an `unowned` reference to an existing `GtkCheckMenuItemClass` instance.
///
public struct CheckMenuItemClassRef: CheckMenuItemClassProtocol {
        /// Untyped pointer to the underlying `GtkCheckMenuItemClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CheckMenuItemClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkCheckMenuItemClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkCheckMenuItemClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkCheckMenuItemClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkCheckMenuItemClass>?) {
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

    /// Reference intialiser for a related type that implements `CheckMenuItemClassProtocol`
    @inlinable init<T: CheckMenuItemClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CheckMenuItemClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: CheckMenuItemClass Record: CheckMenuItemClassProtocol extension (methods and fields)
public extension CheckMenuItemClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCheckMenuItemClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkCheckMenuItemClass>! { return ptr?.assumingMemoryBound(to: GtkCheckMenuItemClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkMenuItemClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var toggled is unavailable because toggled is void

    // var drawIndicator is unavailable because draw_indicator is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for ColorButton
public extension ColorButtonClassRef {
    
    /// This getter returns the GLib type identifier registered for `ColorButton`
    static var metatypeReference: GType { gtk_color_button_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkColorButtonClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkColorButtonClass.self) }
    
    static var metatype: GtkColorButtonClass? { metatypePointer?.pointee } 
    
    static var wrapper: ColorButtonClassRef? { ColorButtonClassRef(metatypePointer) }
    
    
}

// MARK: - ColorButtonClass Record


///
/// The `ColorButtonClassProtocol` protocol exposes the methods and properties of an underlying `GtkColorButtonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ColorButtonClass`.
/// Alternatively, use `ColorButtonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ColorButtonClassProtocol {
        /// Untyped pointer to the underlying `GtkColorButtonClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkColorButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkColorButtonClass>! { get }

    /// Required Initialiser for types conforming to `ColorButtonClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ColorButtonClassRef` type acts as a lightweight Swift reference to an underlying `GtkColorButtonClass` instance.
/// It exposes methods that can operate on this data type through `ColorButtonClassProtocol` conformance.
/// Use `ColorButtonClassRef` only as an `unowned` reference to an existing `GtkColorButtonClass` instance.
///
public struct ColorButtonClassRef: ColorButtonClassProtocol {
        /// Untyped pointer to the underlying `GtkColorButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ColorButtonClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkColorButtonClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkColorButtonClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkColorButtonClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkColorButtonClass>?) {
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

    /// Reference intialiser for a related type that implements `ColorButtonClassProtocol`
    @inlinable init<T: ColorButtonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorButtonClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorButtonClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorButtonClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorButtonClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorButtonClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ColorButtonClass Record: ColorButtonClassProtocol extension (methods and fields)
public extension ColorButtonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkColorButtonClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkColorButtonClass>! { return ptr?.assumingMemoryBound(to: GtkColorButtonClass.self) }


    @inlinable var parentClass: GtkButtonClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var colorSet is unavailable because color_set is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for ColorChooserDialog
public extension ColorChooserDialogClassRef {
    
    /// This getter returns the GLib type identifier registered for `ColorChooserDialog`
    static var metatypeReference: GType { gtk_color_chooser_dialog_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkColorChooserDialogClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkColorChooserDialogClass.self) }
    
    static var metatype: GtkColorChooserDialogClass? { metatypePointer?.pointee } 
    
    static var wrapper: ColorChooserDialogClassRef? { ColorChooserDialogClassRef(metatypePointer) }
    
    
}

// MARK: - ColorChooserDialogClass Record


///
/// The `ColorChooserDialogClassProtocol` protocol exposes the methods and properties of an underlying `GtkColorChooserDialogClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ColorChooserDialogClass`.
/// Alternatively, use `ColorChooserDialogClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ColorChooserDialogClassProtocol {
        /// Untyped pointer to the underlying `GtkColorChooserDialogClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkColorChooserDialogClass` instance.
    var _ptr: UnsafeMutablePointer<GtkColorChooserDialogClass>! { get }

    /// Required Initialiser for types conforming to `ColorChooserDialogClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ColorChooserDialogClassRef` type acts as a lightweight Swift reference to an underlying `GtkColorChooserDialogClass` instance.
/// It exposes methods that can operate on this data type through `ColorChooserDialogClassProtocol` conformance.
/// Use `ColorChooserDialogClassRef` only as an `unowned` reference to an existing `GtkColorChooserDialogClass` instance.
///
public struct ColorChooserDialogClassRef: ColorChooserDialogClassProtocol {
        /// Untyped pointer to the underlying `GtkColorChooserDialogClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ColorChooserDialogClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkColorChooserDialogClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkColorChooserDialogClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkColorChooserDialogClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkColorChooserDialogClass>?) {
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

    /// Reference intialiser for a related type that implements `ColorChooserDialogClassProtocol`
    @inlinable init<T: ColorChooserDialogClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserDialogClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserDialogClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserDialogClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserDialogClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserDialogClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ColorChooserDialogClass Record: ColorChooserDialogClassProtocol extension (methods and fields)
public extension ColorChooserDialogClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkColorChooserDialogClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkColorChooserDialogClass>! { return ptr?.assumingMemoryBound(to: GtkColorChooserDialogClass.self) }


    @inlinable var parentClass: GtkDialogClass {
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



/// Metatype/GType declaration for ColorChooser
public extension ColorChooserInterfaceRef {
    
    /// This getter returns the GLib type identifier registered for `ColorChooser`
    static var metatypeReference: GType { gtk_color_chooser_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkColorChooserInterface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkColorChooserInterface.self) }
    
    static var metatype: GtkColorChooserInterface? { metatypePointer?.pointee } 
    
    static var wrapper: ColorChooserInterfaceRef? { ColorChooserInterfaceRef(metatypePointer) }
    
    
}

// MARK: - ColorChooserInterface Record


///
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

    /// Required Initialiser for types conforming to `ColorChooserInterfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
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

    // var getRGBA is unavailable because get_rgba is void

    // var setRGBA is unavailable because set_rgba is void

    // var addPalette is unavailable because add_palette is void

    // var colorActivated is unavailable because color_activated is void

    @inlinable var padding: (gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?, gpointer?) {
        get {
            let rv = _ptr.pointee.padding
            return rv
        }
    }

}



/// Metatype/GType declaration for ColorChooserWidget
public extension ColorChooserWidgetClassRef {
    
    /// This getter returns the GLib type identifier registered for `ColorChooserWidget`
    static var metatypeReference: GType { gtk_color_chooser_widget_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkColorChooserWidgetClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkColorChooserWidgetClass.self) }
    
    static var metatype: GtkColorChooserWidgetClass? { metatypePointer?.pointee } 
    
    static var wrapper: ColorChooserWidgetClassRef? { ColorChooserWidgetClassRef(metatypePointer) }
    
    
}

// MARK: - ColorChooserWidgetClass Record


///
/// The `ColorChooserWidgetClassProtocol` protocol exposes the methods and properties of an underlying `GtkColorChooserWidgetClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ColorChooserWidgetClass`.
/// Alternatively, use `ColorChooserWidgetClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ColorChooserWidgetClassProtocol {
        /// Untyped pointer to the underlying `GtkColorChooserWidgetClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkColorChooserWidgetClass` instance.
    var _ptr: UnsafeMutablePointer<GtkColorChooserWidgetClass>! { get }

    /// Required Initialiser for types conforming to `ColorChooserWidgetClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ColorChooserWidgetClassRef` type acts as a lightweight Swift reference to an underlying `GtkColorChooserWidgetClass` instance.
/// It exposes methods that can operate on this data type through `ColorChooserWidgetClassProtocol` conformance.
/// Use `ColorChooserWidgetClassRef` only as an `unowned` reference to an existing `GtkColorChooserWidgetClass` instance.
///
public struct ColorChooserWidgetClassRef: ColorChooserWidgetClassProtocol {
        /// Untyped pointer to the underlying `GtkColorChooserWidgetClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ColorChooserWidgetClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkColorChooserWidgetClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkColorChooserWidgetClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkColorChooserWidgetClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkColorChooserWidgetClass>?) {
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

    /// Reference intialiser for a related type that implements `ColorChooserWidgetClassProtocol`
    @inlinable init<T: ColorChooserWidgetClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserWidgetClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserWidgetClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserWidgetClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserWidgetClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserWidgetClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ColorChooserWidgetClass Record: ColorChooserWidgetClassProtocol extension (methods and fields)
public extension ColorChooserWidgetClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkColorChooserWidgetClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkColorChooserWidgetClass>! { return ptr?.assumingMemoryBound(to: GtkColorChooserWidgetClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkBoxClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

    // var GtkReserved5 is unavailable because _gtk_reserved5 is void

    // var GtkReserved6 is unavailable because _gtk_reserved6 is void

    // var GtkReserved7 is unavailable because _gtk_reserved7 is void

    // var GtkReserved8 is unavailable because _gtk_reserved8 is void

}



/// Metatype/GType declaration for ColorSelection
public extension ColorSelectionClassRef {
    
    /// This getter returns the GLib type identifier registered for `ColorSelection`
    static var metatypeReference: GType { gtk_color_selection_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkColorSelectionClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkColorSelectionClass.self) }
    
    static var metatype: GtkColorSelectionClass? { metatypePointer?.pointee } 
    
    static var wrapper: ColorSelectionClassRef? { ColorSelectionClassRef(metatypePointer) }
    
    
}

// MARK: - ColorSelectionClass Record


///
/// The `ColorSelectionClassProtocol` protocol exposes the methods and properties of an underlying `GtkColorSelectionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ColorSelectionClass`.
/// Alternatively, use `ColorSelectionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ColorSelectionClassProtocol {
        /// Untyped pointer to the underlying `GtkColorSelectionClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkColorSelectionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkColorSelectionClass>! { get }

    /// Required Initialiser for types conforming to `ColorSelectionClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ColorSelectionClassRef` type acts as a lightweight Swift reference to an underlying `GtkColorSelectionClass` instance.
/// It exposes methods that can operate on this data type through `ColorSelectionClassProtocol` conformance.
/// Use `ColorSelectionClassRef` only as an `unowned` reference to an existing `GtkColorSelectionClass` instance.
///
public struct ColorSelectionClassRef: ColorSelectionClassProtocol {
        /// Untyped pointer to the underlying `GtkColorSelectionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ColorSelectionClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkColorSelectionClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkColorSelectionClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkColorSelectionClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkColorSelectionClass>?) {
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

    /// Reference intialiser for a related type that implements `ColorSelectionClassProtocol`
    @inlinable init<T: ColorSelectionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ColorSelectionClass Record: ColorSelectionClassProtocol extension (methods and fields)
public extension ColorSelectionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkColorSelectionClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkColorSelectionClass>! { return ptr?.assumingMemoryBound(to: GtkColorSelectionClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkBoxClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var colorChanged is unavailable because color_changed is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for ColorSelectionDialog
public extension ColorSelectionDialogClassRef {
    
    /// This getter returns the GLib type identifier registered for `ColorSelectionDialog`
    static var metatypeReference: GType { gtk_color_selection_dialog_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkColorSelectionDialogClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkColorSelectionDialogClass.self) }
    
    static var metatype: GtkColorSelectionDialogClass? { metatypePointer?.pointee } 
    
    static var wrapper: ColorSelectionDialogClassRef? { ColorSelectionDialogClassRef(metatypePointer) }
    
    
}

// MARK: - ColorSelectionDialogClass Record


///
/// The `ColorSelectionDialogClassProtocol` protocol exposes the methods and properties of an underlying `GtkColorSelectionDialogClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ColorSelectionDialogClass`.
/// Alternatively, use `ColorSelectionDialogClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ColorSelectionDialogClassProtocol {
        /// Untyped pointer to the underlying `GtkColorSelectionDialogClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkColorSelectionDialogClass` instance.
    var _ptr: UnsafeMutablePointer<GtkColorSelectionDialogClass>! { get }

    /// Required Initialiser for types conforming to `ColorSelectionDialogClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ColorSelectionDialogClassRef` type acts as a lightweight Swift reference to an underlying `GtkColorSelectionDialogClass` instance.
/// It exposes methods that can operate on this data type through `ColorSelectionDialogClassProtocol` conformance.
/// Use `ColorSelectionDialogClassRef` only as an `unowned` reference to an existing `GtkColorSelectionDialogClass` instance.
///
public struct ColorSelectionDialogClassRef: ColorSelectionDialogClassProtocol {
        /// Untyped pointer to the underlying `GtkColorSelectionDialogClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ColorSelectionDialogClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkColorSelectionDialogClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkColorSelectionDialogClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkColorSelectionDialogClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkColorSelectionDialogClass>?) {
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

    /// Reference intialiser for a related type that implements `ColorSelectionDialogClassProtocol`
    @inlinable init<T: ColorSelectionDialogClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionDialogClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionDialogClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionDialogClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionDialogClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorSelectionDialogClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ColorSelectionDialogClass Record: ColorSelectionDialogClassProtocol extension (methods and fields)
public extension ColorSelectionDialogClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkColorSelectionDialogClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkColorSelectionDialogClass>! { return ptr?.assumingMemoryBound(to: GtkColorSelectionDialogClass.self) }


    @inlinable var parentClass: GtkDialogClass {
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



/// Metatype/GType declaration for ComboBoxAccessible
public extension ComboBoxAccessibleClassRef {
    
    /// This getter returns the GLib type identifier registered for `ComboBoxAccessible`
    static var metatypeReference: GType { gtk_combo_box_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkComboBoxAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkComboBoxAccessibleClass.self) }
    
    static var metatype: GtkComboBoxAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: ComboBoxAccessibleClassRef? { ComboBoxAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - ComboBoxAccessibleClass Record


///
/// The `ComboBoxAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkComboBoxAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ComboBoxAccessibleClass`.
/// Alternatively, use `ComboBoxAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ComboBoxAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkComboBoxAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkComboBoxAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkComboBoxAccessibleClass>! { get }

    /// Required Initialiser for types conforming to `ComboBoxAccessibleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ComboBoxAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkComboBoxAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `ComboBoxAccessibleClassProtocol` conformance.
/// Use `ComboBoxAccessibleClassRef` only as an `unowned` reference to an existing `GtkComboBoxAccessibleClass` instance.
///
public struct ComboBoxAccessibleClassRef: ComboBoxAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkComboBoxAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ComboBoxAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkComboBoxAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkComboBoxAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkComboBoxAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkComboBoxAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `ComboBoxAccessibleClassProtocol`
    @inlinable init<T: ComboBoxAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ComboBoxAccessibleClass Record: ComboBoxAccessibleClassProtocol extension (methods and fields)
public extension ComboBoxAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkComboBoxAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkComboBoxAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkComboBoxAccessibleClass.self) }


    @inlinable var parentClass: GtkContainerAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

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


///
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

    /// Required Initialiser for types conforming to `ComboBoxClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
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
    @inlinable var parentClass: GtkBinClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var changed is unavailable because changed is void

    // var formatEntryText is unavailable because format_entry_text is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

}



/// Metatype/GType declaration for ComboBoxText
public extension ComboBoxTextClassRef {
    
    /// This getter returns the GLib type identifier registered for `ComboBoxText`
    static var metatypeReference: GType { gtk_combo_box_text_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkComboBoxTextClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkComboBoxTextClass.self) }
    
    static var metatype: GtkComboBoxTextClass? { metatypePointer?.pointee } 
    
    static var wrapper: ComboBoxTextClassRef? { ComboBoxTextClassRef(metatypePointer) }
    
    
}

// MARK: - ComboBoxTextClass Record


///
/// The `ComboBoxTextClassProtocol` protocol exposes the methods and properties of an underlying `GtkComboBoxTextClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ComboBoxTextClass`.
/// Alternatively, use `ComboBoxTextClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ComboBoxTextClassProtocol {
        /// Untyped pointer to the underlying `GtkComboBoxTextClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkComboBoxTextClass` instance.
    var _ptr: UnsafeMutablePointer<GtkComboBoxTextClass>! { get }

    /// Required Initialiser for types conforming to `ComboBoxTextClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ComboBoxTextClassRef` type acts as a lightweight Swift reference to an underlying `GtkComboBoxTextClass` instance.
/// It exposes methods that can operate on this data type through `ComboBoxTextClassProtocol` conformance.
/// Use `ComboBoxTextClassRef` only as an `unowned` reference to an existing `GtkComboBoxTextClass` instance.
///
public struct ComboBoxTextClassRef: ComboBoxTextClassProtocol {
        /// Untyped pointer to the underlying `GtkComboBoxTextClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ComboBoxTextClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkComboBoxTextClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkComboBoxTextClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkComboBoxTextClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkComboBoxTextClass>?) {
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

    /// Reference intialiser for a related type that implements `ComboBoxTextClassProtocol`
    @inlinable init<T: ComboBoxTextClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxTextClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxTextClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxTextClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxTextClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ComboBoxTextClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ComboBoxTextClass Record: ComboBoxTextClassProtocol extension (methods and fields)
public extension ComboBoxTextClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkComboBoxTextClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkComboBoxTextClass>! { return ptr?.assumingMemoryBound(to: GtkComboBoxTextClass.self) }


    @inlinable var parentClass: GtkComboBoxClass {
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



/// Metatype/GType declaration for ContainerAccessible
public extension ContainerAccessibleClassRef {
    
    /// This getter returns the GLib type identifier registered for `ContainerAccessible`
    static var metatypeReference: GType { gtk_container_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkContainerAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkContainerAccessibleClass.self) }
    
    static var metatype: GtkContainerAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: ContainerAccessibleClassRef? { ContainerAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - ContainerAccessibleClass Record


///
/// The `ContainerAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkContainerAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ContainerAccessibleClass`.
/// Alternatively, use `ContainerAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ContainerAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkContainerAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkContainerAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkContainerAccessibleClass>! { get }

    /// Required Initialiser for types conforming to `ContainerAccessibleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ContainerAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkContainerAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `ContainerAccessibleClassProtocol` conformance.
/// Use `ContainerAccessibleClassRef` only as an `unowned` reference to an existing `GtkContainerAccessibleClass` instance.
///
public struct ContainerAccessibleClassRef: ContainerAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkContainerAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ContainerAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkContainerAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkContainerAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkContainerAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkContainerAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `ContainerAccessibleClassProtocol`
    @inlinable init<T: ContainerAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ContainerAccessibleClass Record: ContainerAccessibleClassProtocol extension (methods and fields)
public extension ContainerAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkContainerAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkContainerAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkContainerAccessibleClass.self) }


    @inlinable var parentClass: GtkWidgetAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var addGtk is unavailable because add_gtk is void

    // var removeGtk is unavailable because remove_gtk is void

}



/// Metatype/GType declaration for ContainerCellAccessible
public extension ContainerCellAccessibleClassRef {
    
    /// This getter returns the GLib type identifier registered for `ContainerCellAccessible`
    static var metatypeReference: GType { gtk_container_cell_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkContainerCellAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkContainerCellAccessibleClass.self) }
    
    static var metatype: GtkContainerCellAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: ContainerCellAccessibleClassRef? { ContainerCellAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - ContainerCellAccessibleClass Record


///
/// The `ContainerCellAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkContainerCellAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ContainerCellAccessibleClass`.
/// Alternatively, use `ContainerCellAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ContainerCellAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkContainerCellAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkContainerCellAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkContainerCellAccessibleClass>! { get }

    /// Required Initialiser for types conforming to `ContainerCellAccessibleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ContainerCellAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkContainerCellAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `ContainerCellAccessibleClassProtocol` conformance.
/// Use `ContainerCellAccessibleClassRef` only as an `unowned` reference to an existing `GtkContainerCellAccessibleClass` instance.
///
public struct ContainerCellAccessibleClassRef: ContainerCellAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkContainerCellAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ContainerCellAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkContainerCellAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkContainerCellAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkContainerCellAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkContainerCellAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `ContainerCellAccessibleClassProtocol`
    @inlinable init<T: ContainerCellAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerCellAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerCellAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerCellAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerCellAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerCellAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ContainerCellAccessibleClass Record: ContainerCellAccessibleClassProtocol extension (methods and fields)
public extension ContainerCellAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkContainerCellAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkContainerCellAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkContainerCellAccessibleClass.self) }


    @inlinable var parentClass: GtkCellAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for Container
public extension ContainerClassRef {
    
    /// This getter returns the GLib type identifier registered for `Container`
    static var metatypeReference: GType { gtk_container_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkContainerClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkContainerClass.self) }
    
    static var metatype: GtkContainerClass? { metatypePointer?.pointee } 
    
    static var wrapper: ContainerClassRef? { ContainerClassRef(metatypePointer) }
    
    
}

// MARK: - ContainerClass Record

/// Base class for containers.
///
/// The `ContainerClassProtocol` protocol exposes the methods and properties of an underlying `GtkContainerClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ContainerClass`.
/// Alternatively, use `ContainerClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ContainerClassProtocol {
        /// Untyped pointer to the underlying `GtkContainerClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkContainerClass` instance.
    var _ptr: UnsafeMutablePointer<GtkContainerClass>! { get }

    /// Required Initialiser for types conforming to `ContainerClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Base class for containers.
///
/// The `ContainerClassRef` type acts as a lightweight Swift reference to an underlying `GtkContainerClass` instance.
/// It exposes methods that can operate on this data type through `ContainerClassProtocol` conformance.
/// Use `ContainerClassRef` only as an `unowned` reference to an existing `GtkContainerClass` instance.
///
public struct ContainerClassRef: ContainerClassProtocol {
        /// Untyped pointer to the underlying `GtkContainerClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ContainerClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkContainerClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkContainerClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkContainerClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkContainerClass>?) {
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

    /// Reference intialiser for a related type that implements `ContainerClassProtocol`
    @inlinable init<T: ContainerClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ContainerClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ContainerClass Record: ContainerClassProtocol extension (methods and fields)
public extension ContainerClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkContainerClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkContainerClass>! { return ptr?.assumingMemoryBound(to: GtkContainerClass.self) }

    /// Finds a child property of a container class by name.
    @inlinable func findChildProperty(propertyName: UnsafePointer<gchar>!) -> GLibObject.ParamSpecRef! {
        let rv = GLibObject.ParamSpecRef(gtk_container_class_find_child_property(ptr.assumingMemoryBound(to: GObjectClass.self), propertyName))
        return rv
    }

    /// Modifies a subclass of `GtkContainerClass` to automatically add and
    /// remove the border-width setting on GtkContainer.  This allows the
    /// subclass to ignore the border width in its size request and
    /// allocate methods. The intent is for a subclass to invoke this
    /// in its class_init function.
    /// 
    /// `gtk_container_class_handle_border_width()` is necessary because it
    /// would break API too badly to make this behavior the default. So
    /// subclasses must “opt in” to the parent class handling border_width
    /// for them.
    @inlinable func handleBorderWidth() {
        gtk_container_class_handle_border_width(_ptr)
    
    }

    /// Installs child properties on a container class.
    @inlinable func installChildProperties(nPspecs: Int, pspecs: UnsafeMutablePointer<UnsafeMutablePointer<GParamSpec>?>!) {
        gtk_container_class_install_child_properties(_ptr, guint(nPspecs), pspecs)
    
    }

    /// Installs a child property on a container class.
    @inlinable func installChildProperty<ParamSpecT: GLibObject.ParamSpecProtocol>(propertyID: Int, pspec: ParamSpecT) {
        gtk_container_class_install_child_property(_ptr, guint(propertyID), pspec.param_spec_ptr)
    
    }

    /// Returns all child properties of a container class.
    @inlinable func listChildProperties(nProperties: UnsafeMutablePointer<guint>!) -> UnsafeMutablePointer<UnsafeMutablePointer<GParamSpec>?>! {
        let rv = gtk_container_class_list_child_properties(ptr.assumingMemoryBound(to: GObjectClass.self), nProperties)
        return rv
    }

    /// The parent class.
    @inlinable var parentClass: GtkWidgetClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var add is unavailable because add is void

    // var remove is unavailable because remove is void

    // var checkResize is unavailable because check_resize is void

    // var forall is unavailable because forall is void

    // var setFocusChild is unavailable because set_focus_child is void

    // var childType is unavailable because child_type is void

    // var compositeName is unavailable because composite_name is void

    // var setChildProperty is unavailable because set_child_property is void

    // var getChildProperty is unavailable because get_child_property is void

    // var getPathForChild is unavailable because get_path_for_child is void

    // var HandleBorderWidth is unavailable because _handle_border_width is private

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

    // var GtkReserved5 is unavailable because _gtk_reserved5 is void

    // var GtkReserved6 is unavailable because _gtk_reserved6 is void

    // var GtkReserved7 is unavailable because _gtk_reserved7 is void

    // var GtkReserved8 is unavailable because _gtk_reserved8 is void

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


///
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

    /// Required Initialiser for types conforming to `CssProviderClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
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


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var parsingError is unavailable because parsing_error is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



// MARK: - CssSection Record

/// Defines a part of a CSS document. Because sections are nested into
/// one another, you can use `gtk_css_section_get_parent()` to get the
/// containing region.
///
/// The `CssSectionProtocol` protocol exposes the methods and properties of an underlying `GtkCssSection` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CssSection`.
/// Alternatively, use `CssSectionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol CssSectionProtocol {
        /// Untyped pointer to the underlying `GtkCssSection` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkCssSection` instance.
    var css_section_ptr: UnsafeMutablePointer<GtkCssSection>! { get }

    /// Required Initialiser for types conforming to `CssSectionProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Defines a part of a CSS document. Because sections are nested into
/// one another, you can use `gtk_css_section_get_parent()` to get the
/// containing region.
///
/// The `CssSectionRef` type acts as a lightweight Swift reference to an underlying `GtkCssSection` instance.
/// It exposes methods that can operate on this data type through `CssSectionProtocol` conformance.
/// Use `CssSectionRef` only as an `unowned` reference to an existing `GtkCssSection` instance.
///
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

    }

/// Defines a part of a CSS document. Because sections are nested into
/// one another, you can use `gtk_css_section_get_parent()` to get the
/// containing region.
///
/// The `CssSection` type acts as a reference-counted owner of an underlying `GtkCssSection` instance.
/// It provides the methods that can operate on this data type through `CssSectionProtocol` conformance.
/// Use `CssSection` as a strong reference or owner of a `GtkCssSection` instance.
///
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
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



}

// MARK: no CssSection properties

// MARK: no CssSection signals

// MARK: CssSection has no signals
// MARK: CssSection Record: CssSectionProtocol extension (methods and fields)
public extension CssSectionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCssSection` instance.
    @inlinable var css_section_ptr: UnsafeMutablePointer<GtkCssSection>! { return ptr?.assumingMemoryBound(to: GtkCssSection.self) }

    /// Returns the line in the CSS document where this section end.
    /// The line number is 0-indexed, so the first line of the document
    /// will return 0.
    /// This value may change in future invocations of this function if
    /// `section` is not yet parsed completely. This will for example
    /// happen in the GtkCssProvider`parsing-error` signal.
    /// The end position and line may be identical to the start
    /// position and line for sections which failed to parse anything
    /// successfully.
    @inlinable func getEndLine() -> Int {
        let rv = Int(gtk_css_section_get_end_line(css_section_ptr))
        return rv
    }

    /// Returns the offset in bytes from the start of the current line
    /// returned via `gtk_css_section_get_end_line()`.
    /// This value may change in future invocations of this function if
    /// `section` is not yet parsed completely. This will for example
    /// happen in the GtkCssProvider`parsing-error` signal.
    /// The end position and line may be identical to the start
    /// position and line for sections which failed to parse anything
    /// successfully.
    @inlinable func getEndPosition() -> Int {
        let rv = Int(gtk_css_section_get_end_position(css_section_ptr))
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

    /// Gets the type of information that `section` describes.
    @inlinable func getSectionType() -> GtkCssSectionType {
        let rv = gtk_css_section_get_section_type(css_section_ptr)
        return rv
    }

    /// Returns the line in the CSS document where this section starts.
    /// The line number is 0-indexed, so the first line of the document
    /// will return 0.
    @inlinable func getStartLine() -> Int {
        let rv = Int(gtk_css_section_get_start_line(css_section_ptr))
        return rv
    }

    /// Returns the offset in bytes from the start of the current line
    /// returned via `gtk_css_section_get_start_line()`.
    @inlinable func getStartPosition() -> Int {
        let rv = Int(gtk_css_section_get_start_position(css_section_ptr))
        return rv
    }

    /// Increments the reference count on `section`.
    @discardableResult @inlinable func ref() -> CssSectionRef! {
        guard let rv = CssSectionRef(gconstpointer: gconstpointer(gtk_css_section_ref(css_section_ptr))) else { return nil }
        return rv
    }

    /// Decrements the reference count on `section`, freeing the
    /// structure if the reference count reaches 0.
    @inlinable func unref() {
        gtk_css_section_unref(css_section_ptr)
    
    }
    /// Returns the line in the CSS document where this section end.
    /// The line number is 0-indexed, so the first line of the document
    /// will return 0.
    /// This value may change in future invocations of this function if
    /// `section` is not yet parsed completely. This will for example
    /// happen in the GtkCssProvider`parsing-error` signal.
    /// The end position and line may be identical to the start
    /// position and line for sections which failed to parse anything
    /// successfully.
    @inlinable var endLine: Int {
        /// Returns the line in the CSS document where this section end.
        /// The line number is 0-indexed, so the first line of the document
        /// will return 0.
        /// This value may change in future invocations of this function if
        /// `section` is not yet parsed completely. This will for example
        /// happen in the GtkCssProvider`parsing-error` signal.
        /// The end position and line may be identical to the start
        /// position and line for sections which failed to parse anything
        /// successfully.
        get {
            let rv = Int(gtk_css_section_get_end_line(css_section_ptr))
            return rv
        }
    }

    /// Returns the offset in bytes from the start of the current line
    /// returned via `gtk_css_section_get_end_line()`.
    /// This value may change in future invocations of this function if
    /// `section` is not yet parsed completely. This will for example
    /// happen in the GtkCssProvider`parsing-error` signal.
    /// The end position and line may be identical to the start
    /// position and line for sections which failed to parse anything
    /// successfully.
    @inlinable var endPosition: Int {
        /// Returns the offset in bytes from the start of the current line
        /// returned via `gtk_css_section_get_end_line()`.
        /// This value may change in future invocations of this function if
        /// `section` is not yet parsed completely. This will for example
        /// happen in the GtkCssProvider`parsing-error` signal.
        /// The end position and line may be identical to the start
        /// position and line for sections which failed to parse anything
        /// successfully.
        get {
            let rv = Int(gtk_css_section_get_end_position(css_section_ptr))
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

    /// Gets the type of information that `section` describes.
    @inlinable var sectionType: GtkCssSectionType {
        /// Gets the type of information that `section` describes.
        get {
            let rv = gtk_css_section_get_section_type(css_section_ptr)
            return rv
        }
    }

    /// Returns the line in the CSS document where this section starts.
    /// The line number is 0-indexed, so the first line of the document
    /// will return 0.
    @inlinable var startLine: Int {
        /// Returns the line in the CSS document where this section starts.
        /// The line number is 0-indexed, so the first line of the document
        /// will return 0.
        get {
            let rv = Int(gtk_css_section_get_start_line(css_section_ptr))
            return rv
        }
    }

    /// Returns the offset in bytes from the start of the current line
    /// returned via `gtk_css_section_get_start_line()`.
    @inlinable var startPosition: Int {
        /// Returns the offset in bytes from the start of the current line
        /// returned via `gtk_css_section_get_start_line()`.
        get {
            let rv = Int(gtk_css_section_get_start_position(css_section_ptr))
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


///
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

    /// Required Initialiser for types conforming to `DialogClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
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

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



