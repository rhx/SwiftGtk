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

// MARK: - CellAccessibleParent Interface

/// The `CellAccessibleParentProtocol` protocol exposes the methods and properties of an underlying `GtkCellAccessibleParent` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellAccessibleParent`.
/// Alternatively, use `CellAccessibleParentRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CellAccessibleParentProtocol {
        /// Untyped pointer to the underlying `GtkCellAccessibleParent` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkCellAccessibleParent` instance.
    var cell_accessible_parent_ptr: UnsafeMutablePointer<GtkCellAccessibleParent>! { get }

}

/// The `CellAccessibleParentRef` type acts as a lightweight Swift reference to an underlying `GtkCellAccessibleParent` instance.
/// It exposes methods that can operate on this data type through `CellAccessibleParentProtocol` conformance.
/// Use `CellAccessibleParentRef` only as an `unowned` reference to an existing `GtkCellAccessibleParent` instance.
///

public struct CellAccessibleParentRef: CellAccessibleParentProtocol {
        /// Untyped pointer to the underlying `GtkCellAccessibleParent` instance.
    /// For type-safe access, use the generated, typed pointer `cell_accessible_parent_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CellAccessibleParentRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkCellAccessibleParent>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkCellAccessibleParent>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkCellAccessibleParent>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkCellAccessibleParent>?) {
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

    /// Reference intialiser for a related type that implements `CellAccessibleParentProtocol`
    @inlinable init<T: CellAccessibleParentProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessibleParentProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessibleParentProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessibleParentProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessibleParentProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessibleParentProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CellAccessibleParent` type acts as an owner of an underlying `GtkCellAccessibleParent` instance.
/// It provides the methods that can operate on this data type through `CellAccessibleParentProtocol` conformance.
/// Use `CellAccessibleParent` as a strong reference or owner of a `GtkCellAccessibleParent` instance.
///

open class CellAccessibleParent: CellAccessibleParentProtocol {
        /// Untyped pointer to the underlying `GtkCellAccessibleParent` instance.
    /// For type-safe access, use the generated, typed pointer `cell_accessible_parent_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CellAccessibleParent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkCellAccessibleParent>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CellAccessibleParent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkCellAccessibleParent>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CellAccessibleParent` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CellAccessibleParent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CellAccessibleParent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkCellAccessibleParent>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CellAccessibleParent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkCellAccessibleParent>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkCellAccessibleParent` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `CellAccessibleParent` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkCellAccessibleParent>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkCellAccessibleParent, cannot ref(cell_accessible_parent_ptr)
    }

    /// Reference intialiser for a related type that implements `CellAccessibleParentProtocol`
    /// `GtkCellAccessibleParent` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `CellAccessibleParentProtocol`
    @inlinable public init<T: CellAccessibleParentProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkCellAccessibleParent, cannot ref(cell_accessible_parent_ptr)
    }

    /// Do-nothing destructor for `GtkCellAccessibleParent`.
    deinit {
        // no reference counting for GtkCellAccessibleParent, cannot unref(cell_accessible_parent_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessibleParentProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessibleParentProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkCellAccessibleParent, cannot ref(cell_accessible_parent_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessibleParentProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessibleParentProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkCellAccessibleParent, cannot ref(cell_accessible_parent_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessibleParentProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessibleParentProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkCellAccessibleParent, cannot ref(cell_accessible_parent_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessibleParentProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellAccessibleParentProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkCellAccessibleParent, cannot ref(cell_accessible_parent_ptr)
    }



}

// MARK: no CellAccessibleParent properties

// MARK: CellAccessibleParent has no signals// MARK: CellAccessibleParent Interface: CellAccessibleParentProtocol extension (methods and fields)
public extension CellAccessibleParentProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellAccessibleParent` instance.
    @inlinable var cell_accessible_parent_ptr: UnsafeMutablePointer<GtkCellAccessibleParent>! { return ptr?.assumingMemoryBound(to: GtkCellAccessibleParent.self) }

    @inlinable func activate<CellAccessibleT: CellAccessibleProtocol>(cell: CellAccessibleT) {
        gtk_cell_accessible_parent_activate(cell_accessible_parent_ptr, cell.cell_accessible_ptr)
    
    }

    @inlinable func edit<CellAccessibleT: CellAccessibleProtocol>(cell: CellAccessibleT) {
        gtk_cell_accessible_parent_edit(cell_accessible_parent_ptr, cell.cell_accessible_ptr)
    
    }

    @inlinable func expandCollapse<CellAccessibleT: CellAccessibleProtocol>(cell: CellAccessibleT) {
        gtk_cell_accessible_parent_expand_collapse(cell_accessible_parent_ptr, cell.cell_accessible_ptr)
    
    }

    @inlinable func getCellArea<CellAccessibleT: CellAccessibleProtocol, RectangleT: Gdk.RectangleProtocol>(cell: CellAccessibleT, cellRect: RectangleT) {
        gtk_cell_accessible_parent_get_cell_area(cell_accessible_parent_ptr, cell.cell_accessible_ptr, cellRect.rectangle_ptr)
    
    }

    @inlinable func getCellExtents<CellAccessibleT: CellAccessibleProtocol>(cell: CellAccessibleT, x: UnsafeMutablePointer<gint>!, y: UnsafeMutablePointer<gint>!, width: UnsafeMutablePointer<gint>!, height: UnsafeMutablePointer<gint>!, coordType: AtkCoordType) {
        gtk_cell_accessible_parent_get_cell_extents(cell_accessible_parent_ptr, cell.cell_accessible_ptr, x, y, width, height, coordType)
    
    }

    @inlinable func getCellPosition<CellAccessibleT: CellAccessibleProtocol>(cell: CellAccessibleT, row: UnsafeMutablePointer<gint>!, column: UnsafeMutablePointer<gint>!) {
        gtk_cell_accessible_parent_get_cell_position(cell_accessible_parent_ptr, cell.cell_accessible_ptr, row, column)
    
    }

    @inlinable func getChildIndex<CellAccessibleT: CellAccessibleProtocol>(cell: CellAccessibleT) -> Int {
        let rv = Int(gtk_cell_accessible_parent_get_child_index(cell_accessible_parent_ptr, cell.cell_accessible_ptr))
        return rv
    }

//     @inlinable func getColumnHeaderCells<CellAccessibleT: CellAccessibleProtocol>(cell: CellAccessibleT) -> GLib.PtrArrayRef! {
//         let rv = GLib.PtrArrayRef(gtk_cell_accessible_parent_get_column_header_cells(cell_accessible_parent_ptr, cell.cell_accessible_ptr))
//         return rv
//     }

    @inlinable func getRendererState<CellAccessibleT: CellAccessibleProtocol>(cell: CellAccessibleT) -> CellRendererState {
        let rv = CellRendererState(gtk_cell_accessible_parent_get_renderer_state(cell_accessible_parent_ptr, cell.cell_accessible_ptr))
        return rv
    }

//     @inlinable func getRowHeaderCells<CellAccessibleT: CellAccessibleProtocol>(cell: CellAccessibleT) -> GLib.PtrArrayRef! {
//         let rv = GLib.PtrArrayRef(gtk_cell_accessible_parent_get_row_header_cells(cell_accessible_parent_ptr, cell.cell_accessible_ptr))
//         return rv
//     }

    @inlinable func grabFocus<CellAccessibleT: CellAccessibleProtocol>(cell: CellAccessibleT) -> Bool {
        let rv = ((gtk_cell_accessible_parent_grab_focus(cell_accessible_parent_ptr, cell.cell_accessible_ptr)) != 0)
        return rv
    }

    @inlinable func updateRelationset<CellAccessibleT: CellAccessibleProtocol, RelationSetT: Atk.RelationSetProtocol>(cell: CellAccessibleT, relationset: RelationSetT) {
        gtk_cell_accessible_parent_update_relationset(cell_accessible_parent_ptr, cell.cell_accessible_ptr, relationset.relation_set_ptr)
    
    }


}



// MARK: - CellEditable Interface

/// The `CellEditableProtocol` protocol exposes the methods and properties of an underlying `GtkCellEditable` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellEditable`.
/// Alternatively, use `CellEditableRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkCellEditable` interface must be implemented for widgets to be usable
/// to edit the contents of a `GtkTreeView` cell. It provides a way to specify how
/// temporary widgets should be configured for editing, get the new value, etc.
public protocol CellEditableProtocol: WidgetProtocol {
        /// Untyped pointer to the underlying `GtkCellEditable` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkCellEditable` instance.
    var cell_editable_ptr: UnsafeMutablePointer<GtkCellEditable>! { get }

}

/// The `CellEditableRef` type acts as a lightweight Swift reference to an underlying `GtkCellEditable` instance.
/// It exposes methods that can operate on this data type through `CellEditableProtocol` conformance.
/// Use `CellEditableRef` only as an `unowned` reference to an existing `GtkCellEditable` instance.
///
/// The `GtkCellEditable` interface must be implemented for widgets to be usable
/// to edit the contents of a `GtkTreeView` cell. It provides a way to specify how
/// temporary widgets should be configured for editing, get the new value, etc.
public struct CellEditableRef: CellEditableProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkCellEditable` instance.
    /// For type-safe access, use the generated, typed pointer `cell_editable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CellEditableRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkCellEditable>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkCellEditable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkCellEditable>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkCellEditable>?) {
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

    /// Reference intialiser for a related type that implements `CellEditableProtocol`
    @inlinable init<T: CellEditableProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: CellEditableProtocol>(_ other: T) -> CellEditableRef { CellEditableRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellEditableProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellEditableProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellEditableProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellEditableProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellEditableProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CellEditable` type acts as a reference-counted owner of an underlying `GtkCellEditable` instance.
/// It provides the methods that can operate on this data type through `CellEditableProtocol` conformance.
/// Use `CellEditable` as a strong reference or owner of a `GtkCellEditable` instance.
///
/// The `GtkCellEditable` interface must be implemented for widgets to be usable
/// to edit the contents of a `GtkTreeView` cell. It provides a way to specify how
/// temporary widgets should be configured for editing, get the new value, etc.
open class CellEditable: Widget, CellEditableProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CellEditable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkCellEditable>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CellEditable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkCellEditable>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CellEditable` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CellEditable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CellEditable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkCellEditable>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CellEditable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkCellEditable>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkCellEditable`.
    /// i.e., ownership is transferred to the `CellEditable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkCellEditable>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `CellEditableProtocol`
    /// Will retain `GtkCellEditable`.
    /// - Parameter other: an instance of a related type that implements `CellEditableProtocol`
    @inlinable public init<T: CellEditableProtocol>(cellEditable other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellEditableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellEditableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellEditableProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellEditableProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellEditableProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellEditableProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellEditableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellEditableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum CellEditablePropertyName: String, PropertyNameProtocol {
    case appPaintable = "app-paintable"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case compositeChild = "composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
    /// Indicates whether editing on the cell has been canceled.
    case editingCanceled = "editing-canceled"
    case events = "events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case expand = "expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case focusOnClick = "focus-on-click"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    case isFocus = "is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginTop = "margin-top"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case receivesDefault = "receives-default"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
}

public extension CellEditableProtocol {
    /// Bind a `CellEditablePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: CellEditablePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }

    /// Get the value of a CellEditable property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: CellEditablePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a CellEditable property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: CellEditablePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of CellEditable
public extension CellEditableProtocol {
    /// This signal is a sign for the cell renderer to update its
    /// value from the `cell_editable`.
    /// 
    /// Implementations of `GtkCellEditable` are responsible for
    /// emitting this signal when they are done editing, e.g.
    /// `GtkEntry` emits this signal when the user presses Enter. Typical things to
    /// do in a handler for `editing`-done are to capture the edited value,
    /// disconnect the `cell_editable` from signals on the `GtkCellRenderer`, etc.
    /// 
    /// `gtk_cell_editable_editing_done()` is a convenience method
    /// for emitting `GtkCellEditable::editing`-done.
    /// - Note: Representation of signal named `editing-done`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onEditingDone(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: CellEditableRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<CellEditableRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(CellEditableRef(raw: unownedSelf))
            return output
        }
        return GLibObject.ObjectRef(raw: ptr).signalConnectData(
            detailedSignal: "editing-done", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// This signal is meant to indicate that the cell is finished
    /// editing, and the `cell_editable` widget is being removed and may
    /// subsequently be destroyed.
    /// 
    /// Implementations of `GtkCellEditable` are responsible for
    /// emitting this signal when they are done editing. It must
    /// be emitted after the `GtkCellEditable::editing`-done signal,
    /// to give the cell renderer a chance to update the cell's value
    /// before the widget is removed.
    /// 
    /// `gtk_cell_editable_remove_widget()` is a convenience method
    /// for emitting `GtkCellEditable::remove`-widget.
    /// - Note: Representation of signal named `remove-widget`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onRemoveWidget(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: CellEditableRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<CellEditableRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(CellEditableRef(raw: unownedSelf))
            return output
        }
        return GLibObject.ObjectRef(raw: ptr).signalConnectData(
            detailedSignal: "remove-widget", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::editing-canceled`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyEditingCanceled(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: CellEditableRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<CellEditableRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(CellEditableRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return GLibObject.ObjectRef(raw: ptr).signalConnectData(
            detailedSignal: "notify::editing-canceled", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: CellEditable Interface: CellEditableProtocol extension (methods and fields)
public extension CellEditableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellEditable` instance.
    @inlinable var cell_editable_ptr: UnsafeMutablePointer<GtkCellEditable>! { return ptr?.assumingMemoryBound(to: GtkCellEditable.self) }

    /// Emits the `GtkCellEditable::editing`-done signal.
    @inlinable func editingDone() {
        gtk_cell_editable_editing_done(cell_editable_ptr)
    
    }

    /// Emits the `GtkCellEditable::remove`-widget signal.
    @inlinable func removeWidget() {
        gtk_cell_editable_remove_widget(cell_editable_ptr)
    
    }

    /// Begins editing on a `cell_editable`.
    /// 
    /// The `GtkCellRenderer` for the cell creates and returns a `GtkCellEditable` from
    /// `gtk_cell_renderer_start_editing()`, configured for the `GtkCellRenderer` type.
    /// 
    /// `gtk_cell_editable_start_editing()` can then set up `cell_editable` suitably for
    /// editing a cell, e.g. making the Esc key emit `GtkCellEditable::editing`-done.
    /// 
    /// Note that the `cell_editable` is created on-demand for the current edit; its
    /// lifetime is temporary and does not persist across other edits and/or cells.
    @inlinable func startEditing(event: Gdk.EventRef? = nil) {
        gtk_cell_editable_start_editing(cell_editable_ptr, event?.event_ptr)
    
    }
    /// Begins editing on a `cell_editable`.
    /// 
    /// The `GtkCellRenderer` for the cell creates and returns a `GtkCellEditable` from
    /// `gtk_cell_renderer_start_editing()`, configured for the `GtkCellRenderer` type.
    /// 
    /// `gtk_cell_editable_start_editing()` can then set up `cell_editable` suitably for
    /// editing a cell, e.g. making the Esc key emit `GtkCellEditable::editing`-done.
    /// 
    /// Note that the `cell_editable` is created on-demand for the current edit; its
    /// lifetime is temporary and does not persist across other edits and/or cells.
    @inlinable func startEditing<EventT: Gdk.EventProtocol>(event: EventT?) {
        gtk_cell_editable_start_editing(cell_editable_ptr, event?.event_ptr)
    
    }


}



// MARK: - CellLayout Interface

/// The `CellLayoutProtocol` protocol exposes the methods and properties of an underlying `GtkCellLayout` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CellLayout`.
/// Alternatively, use `CellLayoutRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkCellLayout` is an interface to be implemented by all objects which
/// want to provide a `GtkTreeViewColumn` like API for packing cells,
/// setting attributes and data funcs.
/// 
/// One of the notable features provided by implementations of
/// GtkCellLayout are attributes. Attributes let you set the properties
/// in flexible ways. They can just be set to constant values like regular
/// properties. But they can also be mapped to a column of the underlying
/// tree model with `gtk_cell_layout_set_attributes()`, which means that the value
/// of the attribute can change from cell to cell as they are rendered by
/// the cell renderer. Finally, it is possible to specify a function with
/// `gtk_cell_layout_set_cell_data_func()` that is called to determine the
/// value of the attribute for each cell that is rendered.
/// 
/// # GtkCellLayouts as GtkBuildable
/// 
/// Implementations of GtkCellLayout which also implement the GtkBuildable
/// interface (`GtkCellView`, `GtkIconView`, `GtkComboBox`,
/// `GtkEntryCompletion`, `GtkTreeViewColumn`) accept GtkCellRenderer objects
/// as <child> elements in UI definitions. They support a custom <attributes>
/// element for their children, which can contain multiple <attribute>
/// elements. Each <attribute> element has a name attribute which specifies
/// a property of the cell renderer; the content of the element is the
/// attribute value.
/// 
/// This is an example of a UI definition fragment specifying attributes:
/// ```
/// <object class="GtkCellView">
///   <child>
///     <object class="GtkCellRendererText"/>
///     <attributes>
///       <attribute name="text">0</attribute>
///     </attributes>
///   </child>"
/// </object>
/// ```
/// 
/// Furthermore for implementations of GtkCellLayout that use a `GtkCellArea`
/// to lay out cells (all GtkCellLayouts in GTK+ use a GtkCellArea)
/// [cell properties](#cell-properties) can also be defined in the format by
/// specifying the custom <cell-packing> attribute which can contain multiple
/// <property> elements defined in the normal way.
/// 
/// Here is a UI definition fragment specifying cell properties:
/// 
/// ```
/// <object class="GtkTreeViewColumn">
///   <child>
///     <object class="GtkCellRendererText"/>
///     <cell-packing>
///       <property name="align">True</property>
///       <property name="expand">False</property>
///     </cell-packing>
///   </child>"
/// </object>
/// ```
/// 
/// # Subclassing GtkCellLayout implementations
/// 
/// When subclassing a widget that implements `GtkCellLayout` like
/// `GtkIconView` or `GtkComboBox`, there are some considerations related
/// to the fact that these widgets internally use a `GtkCellArea`.
/// The cell area is exposed as a construct-only property by these
/// widgets. This means that it is possible to e.g. do
/// 
/// (C Language Example):
/// ```C
/// combo = g_object_new (GTK_TYPE_COMBO_BOX, "cell-area", my_cell_area, NULL);
/// ```
/// 
/// to use a custom cell area with a combo box. But construct properties
/// are only initialized after instance `init()`
/// functions have run, which means that using functions which rely on
/// the existence of the cell area in your subclass’ `init()` function will
/// cause the default cell area to be instantiated. In this case, a provided
/// construct property value will be ignored (with a warning, to alert
/// you to the problem).
/// 
/// (C Language Example):
/// ```C
/// static void
/// my_combo_box_init (MyComboBox *b)
/// {
///   GtkCellRenderer *cell;
/// 
///   cell = gtk_cell_renderer_pixbuf_new ();
///   // The following call causes the default cell area for combo boxes,
///   // a GtkCellAreaBox, to be instantiated
///   gtk_cell_layout_pack_start (GTK_CELL_LAYOUT (b), cell, FALSE);
///   ...
/// }
/// 
/// GtkWidget *
/// my_combo_box_new (GtkCellArea *area)
/// {
///   // This call is going to cause a warning about area being ignored
///   return g_object_new (MY_TYPE_COMBO_BOX, "cell-area", area, NULL);
/// }
/// ```
/// 
/// If supporting alternative cell areas with your derived widget is
/// not important, then this does not have to concern you. If you want
/// to support alternative cell areas, you can do so by moving the
/// problematic calls out of `init()` and into a `constructor()`
/// for your class.
public protocol CellLayoutProtocol {
        /// Untyped pointer to the underlying `GtkCellLayout` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkCellLayout` instance.
    var cell_layout_ptr: UnsafeMutablePointer<GtkCellLayout>! { get }

}

/// The `CellLayoutRef` type acts as a lightweight Swift reference to an underlying `GtkCellLayout` instance.
/// It exposes methods that can operate on this data type through `CellLayoutProtocol` conformance.
/// Use `CellLayoutRef` only as an `unowned` reference to an existing `GtkCellLayout` instance.
///
/// `GtkCellLayout` is an interface to be implemented by all objects which
/// want to provide a `GtkTreeViewColumn` like API for packing cells,
/// setting attributes and data funcs.
/// 
/// One of the notable features provided by implementations of
/// GtkCellLayout are attributes. Attributes let you set the properties
/// in flexible ways. They can just be set to constant values like regular
/// properties. But they can also be mapped to a column of the underlying
/// tree model with `gtk_cell_layout_set_attributes()`, which means that the value
/// of the attribute can change from cell to cell as they are rendered by
/// the cell renderer. Finally, it is possible to specify a function with
/// `gtk_cell_layout_set_cell_data_func()` that is called to determine the
/// value of the attribute for each cell that is rendered.
/// 
/// # GtkCellLayouts as GtkBuildable
/// 
/// Implementations of GtkCellLayout which also implement the GtkBuildable
/// interface (`GtkCellView`, `GtkIconView`, `GtkComboBox`,
/// `GtkEntryCompletion`, `GtkTreeViewColumn`) accept GtkCellRenderer objects
/// as <child> elements in UI definitions. They support a custom <attributes>
/// element for their children, which can contain multiple <attribute>
/// elements. Each <attribute> element has a name attribute which specifies
/// a property of the cell renderer; the content of the element is the
/// attribute value.
/// 
/// This is an example of a UI definition fragment specifying attributes:
/// ```
/// <object class="GtkCellView">
///   <child>
///     <object class="GtkCellRendererText"/>
///     <attributes>
///       <attribute name="text">0</attribute>
///     </attributes>
///   </child>"
/// </object>
/// ```
/// 
/// Furthermore for implementations of GtkCellLayout that use a `GtkCellArea`
/// to lay out cells (all GtkCellLayouts in GTK+ use a GtkCellArea)
/// [cell properties](#cell-properties) can also be defined in the format by
/// specifying the custom <cell-packing> attribute which can contain multiple
/// <property> elements defined in the normal way.
/// 
/// Here is a UI definition fragment specifying cell properties:
/// 
/// ```
/// <object class="GtkTreeViewColumn">
///   <child>
///     <object class="GtkCellRendererText"/>
///     <cell-packing>
///       <property name="align">True</property>
///       <property name="expand">False</property>
///     </cell-packing>
///   </child>"
/// </object>
/// ```
/// 
/// # Subclassing GtkCellLayout implementations
/// 
/// When subclassing a widget that implements `GtkCellLayout` like
/// `GtkIconView` or `GtkComboBox`, there are some considerations related
/// to the fact that these widgets internally use a `GtkCellArea`.
/// The cell area is exposed as a construct-only property by these
/// widgets. This means that it is possible to e.g. do
/// 
/// (C Language Example):
/// ```C
/// combo = g_object_new (GTK_TYPE_COMBO_BOX, "cell-area", my_cell_area, NULL);
/// ```
/// 
/// to use a custom cell area with a combo box. But construct properties
/// are only initialized after instance `init()`
/// functions have run, which means that using functions which rely on
/// the existence of the cell area in your subclass’ `init()` function will
/// cause the default cell area to be instantiated. In this case, a provided
/// construct property value will be ignored (with a warning, to alert
/// you to the problem).
/// 
/// (C Language Example):
/// ```C
/// static void
/// my_combo_box_init (MyComboBox *b)
/// {
///   GtkCellRenderer *cell;
/// 
///   cell = gtk_cell_renderer_pixbuf_new ();
///   // The following call causes the default cell area for combo boxes,
///   // a GtkCellAreaBox, to be instantiated
///   gtk_cell_layout_pack_start (GTK_CELL_LAYOUT (b), cell, FALSE);
///   ...
/// }
/// 
/// GtkWidget *
/// my_combo_box_new (GtkCellArea *area)
/// {
///   // This call is going to cause a warning about area being ignored
///   return g_object_new (MY_TYPE_COMBO_BOX, "cell-area", area, NULL);
/// }
/// ```
/// 
/// If supporting alternative cell areas with your derived widget is
/// not important, then this does not have to concern you. If you want
/// to support alternative cell areas, you can do so by moving the
/// problematic calls out of `init()` and into a `constructor()`
/// for your class.
public struct CellLayoutRef: CellLayoutProtocol {
        /// Untyped pointer to the underlying `GtkCellLayout` instance.
    /// For type-safe access, use the generated, typed pointer `cell_layout_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CellLayoutRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkCellLayout>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkCellLayout>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkCellLayout>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkCellLayout>?) {
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

    /// Reference intialiser for a related type that implements `CellLayoutProtocol`
    @inlinable init<T: CellLayoutProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellLayoutProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellLayoutProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellLayoutProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellLayoutProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellLayoutProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CellLayout` type acts as an owner of an underlying `GtkCellLayout` instance.
/// It provides the methods that can operate on this data type through `CellLayoutProtocol` conformance.
/// Use `CellLayout` as a strong reference or owner of a `GtkCellLayout` instance.
///
/// `GtkCellLayout` is an interface to be implemented by all objects which
/// want to provide a `GtkTreeViewColumn` like API for packing cells,
/// setting attributes and data funcs.
/// 
/// One of the notable features provided by implementations of
/// GtkCellLayout are attributes. Attributes let you set the properties
/// in flexible ways. They can just be set to constant values like regular
/// properties. But they can also be mapped to a column of the underlying
/// tree model with `gtk_cell_layout_set_attributes()`, which means that the value
/// of the attribute can change from cell to cell as they are rendered by
/// the cell renderer. Finally, it is possible to specify a function with
/// `gtk_cell_layout_set_cell_data_func()` that is called to determine the
/// value of the attribute for each cell that is rendered.
/// 
/// # GtkCellLayouts as GtkBuildable
/// 
/// Implementations of GtkCellLayout which also implement the GtkBuildable
/// interface (`GtkCellView`, `GtkIconView`, `GtkComboBox`,
/// `GtkEntryCompletion`, `GtkTreeViewColumn`) accept GtkCellRenderer objects
/// as <child> elements in UI definitions. They support a custom <attributes>
/// element for their children, which can contain multiple <attribute>
/// elements. Each <attribute> element has a name attribute which specifies
/// a property of the cell renderer; the content of the element is the
/// attribute value.
/// 
/// This is an example of a UI definition fragment specifying attributes:
/// ```
/// <object class="GtkCellView">
///   <child>
///     <object class="GtkCellRendererText"/>
///     <attributes>
///       <attribute name="text">0</attribute>
///     </attributes>
///   </child>"
/// </object>
/// ```
/// 
/// Furthermore for implementations of GtkCellLayout that use a `GtkCellArea`
/// to lay out cells (all GtkCellLayouts in GTK+ use a GtkCellArea)
/// [cell properties](#cell-properties) can also be defined in the format by
/// specifying the custom <cell-packing> attribute which can contain multiple
/// <property> elements defined in the normal way.
/// 
/// Here is a UI definition fragment specifying cell properties:
/// 
/// ```
/// <object class="GtkTreeViewColumn">
///   <child>
///     <object class="GtkCellRendererText"/>
///     <cell-packing>
///       <property name="align">True</property>
///       <property name="expand">False</property>
///     </cell-packing>
///   </child>"
/// </object>
/// ```
/// 
/// # Subclassing GtkCellLayout implementations
/// 
/// When subclassing a widget that implements `GtkCellLayout` like
/// `GtkIconView` or `GtkComboBox`, there are some considerations related
/// to the fact that these widgets internally use a `GtkCellArea`.
/// The cell area is exposed as a construct-only property by these
/// widgets. This means that it is possible to e.g. do
/// 
/// (C Language Example):
/// ```C
/// combo = g_object_new (GTK_TYPE_COMBO_BOX, "cell-area", my_cell_area, NULL);
/// ```
/// 
/// to use a custom cell area with a combo box. But construct properties
/// are only initialized after instance `init()`
/// functions have run, which means that using functions which rely on
/// the existence of the cell area in your subclass’ `init()` function will
/// cause the default cell area to be instantiated. In this case, a provided
/// construct property value will be ignored (with a warning, to alert
/// you to the problem).
/// 
/// (C Language Example):
/// ```C
/// static void
/// my_combo_box_init (MyComboBox *b)
/// {
///   GtkCellRenderer *cell;
/// 
///   cell = gtk_cell_renderer_pixbuf_new ();
///   // The following call causes the default cell area for combo boxes,
///   // a GtkCellAreaBox, to be instantiated
///   gtk_cell_layout_pack_start (GTK_CELL_LAYOUT (b), cell, FALSE);
///   ...
/// }
/// 
/// GtkWidget *
/// my_combo_box_new (GtkCellArea *area)
/// {
///   // This call is going to cause a warning about area being ignored
///   return g_object_new (MY_TYPE_COMBO_BOX, "cell-area", area, NULL);
/// }
/// ```
/// 
/// If supporting alternative cell areas with your derived widget is
/// not important, then this does not have to concern you. If you want
/// to support alternative cell areas, you can do so by moving the
/// problematic calls out of `init()` and into a `constructor()`
/// for your class.
open class CellLayout: CellLayoutProtocol {
        /// Untyped pointer to the underlying `GtkCellLayout` instance.
    /// For type-safe access, use the generated, typed pointer `cell_layout_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CellLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkCellLayout>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CellLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkCellLayout>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CellLayout` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CellLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CellLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkCellLayout>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CellLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkCellLayout>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkCellLayout` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `CellLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkCellLayout>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkCellLayout, cannot ref(cell_layout_ptr)
    }

    /// Reference intialiser for a related type that implements `CellLayoutProtocol`
    /// `GtkCellLayout` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `CellLayoutProtocol`
    @inlinable public init<T: CellLayoutProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkCellLayout, cannot ref(cell_layout_ptr)
    }

    /// Do-nothing destructor for `GtkCellLayout`.
    deinit {
        // no reference counting for GtkCellLayout, cannot unref(cell_layout_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellLayoutProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellLayoutProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkCellLayout, cannot ref(cell_layout_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellLayoutProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellLayoutProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkCellLayout, cannot ref(cell_layout_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellLayoutProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellLayoutProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkCellLayout, cannot ref(cell_layout_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellLayoutProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CellLayoutProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkCellLayout, cannot ref(cell_layout_ptr)
    }



}

// MARK: no CellLayout properties

// MARK: CellLayout has no signals// MARK: CellLayout Interface: CellLayoutProtocol extension (methods and fields)
public extension CellLayoutProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellLayout` instance.
    @inlinable var cell_layout_ptr: UnsafeMutablePointer<GtkCellLayout>! { return ptr?.assumingMemoryBound(to: GtkCellLayout.self) }

    /// Adds an attribute mapping to the list in `cell_layout`.
    /// 
    /// The `column` is the column of the model to get a value from, and the
    /// `attribute` is the parameter on `cell` to be set from the value. So for
    /// example if column 2 of the model contains strings, you could have the
    /// “text” attribute of a `GtkCellRendererText` get its values from column 2.
    @inlinable func addAttribute<CellRendererT: CellRendererProtocol>(cell: CellRendererT, attribute: UnsafePointer<gchar>!, column: Int) {
        gtk_cell_layout_add_attribute(cell_layout_ptr, cell.cell_renderer_ptr, attribute, gint(column))
    
    }

    /// Unsets all the mappings on all renderers on `cell_layout` and
    /// removes all renderers from `cell_layout`.
    @inlinable func clear() {
        gtk_cell_layout_clear(cell_layout_ptr)
    
    }

    /// Clears all existing attributes previously set with
    /// `gtk_cell_layout_set_attributes()`.
    @inlinable func clearAttributes<CellRendererT: CellRendererProtocol>(cell: CellRendererT) {
        gtk_cell_layout_clear_attributes(cell_layout_ptr, cell.cell_renderer_ptr)
    
    }

    /// Returns the underlying `GtkCellArea` which might be `cell_layout`
    /// if called on a `GtkCellArea` or might be `nil` if no `GtkCellArea`
    /// is used by `cell_layout`.
    @inlinable func getArea() -> CellAreaRef! {
        let rv = CellAreaRef(gconstpointer: gconstpointer(gtk_cell_layout_get_area(cell_layout_ptr)))
        return rv
    }

    /// Returns the cell renderers which have been added to `cell_layout`.
    @inlinable func getCells() -> GLib.ListRef! {
        let rv = GLib.ListRef(gtk_cell_layout_get_cells(cell_layout_ptr))
        return rv
    }

    /// Adds the `cell` to the end of `cell_layout`. If `expand` is `false`, then the
    /// `cell` is allocated no more space than it needs. Any unused space is
    /// divided evenly between cells for which `expand` is `true`.
    /// 
    /// Note that reusing the same cell renderer is not supported.
    @inlinable func packEnd<CellRendererT: CellRendererProtocol>(cell: CellRendererT, expand: Bool) {
        gtk_cell_layout_pack_end(cell_layout_ptr, cell.cell_renderer_ptr, gboolean((expand) ? 1 : 0))
    
    }

    /// Packs the `cell` into the beginning of `cell_layout`. If `expand` is `false`,
    /// then the `cell` is allocated no more space than it needs. Any unused space
    /// is divided evenly between cells for which `expand` is `true`.
    /// 
    /// Note that reusing the same cell renderer is not supported.
    @inlinable func packStart<CellRendererT: CellRendererProtocol>(cell: CellRendererT, expand: Bool) {
        gtk_cell_layout_pack_start(cell_layout_ptr, cell.cell_renderer_ptr, gboolean((expand) ? 1 : 0))
    
    }

    /// Re-inserts `cell` at `position`.
    /// 
    /// Note that `cell` has already to be packed into `cell_layout`
    /// for this to function properly.
    @inlinable func reorder<CellRendererT: CellRendererProtocol>(cell: CellRendererT, position: Int) {
        gtk_cell_layout_reorder(cell_layout_ptr, cell.cell_renderer_ptr, gint(position))
    
    }


    // *** setAttributes() is not available because it has a varargs (...) parameter!


    /// Sets the `GtkCellLayoutDataFunc` to use for `cell_layout`.
    /// 
    /// This function is used instead of the standard attributes mapping
    /// for setting the column value, and should set the value of `cell_layout`’s
    /// cell `renderer(s)` as appropriate.
    /// 
    /// `func` may be `nil` to remove a previously set function.
    @inlinable func setCellDataFunc<CellRendererT: CellRendererProtocol>(cell: CellRendererT, `func`: GtkCellLayoutDataFunc? = nil, funcData: gpointer! = nil, destroy: GDestroyNotify?) {
        gtk_cell_layout_set_cell_data_func(cell_layout_ptr, cell.cell_renderer_ptr, `func`, funcData, destroy)
    
    }
    /// Returns the underlying `GtkCellArea` which might be `cell_layout`
    /// if called on a `GtkCellArea` or might be `nil` if no `GtkCellArea`
    /// is used by `cell_layout`.
    @inlinable var area: CellAreaRef! {
        /// Returns the underlying `GtkCellArea` which might be `cell_layout`
        /// if called on a `GtkCellArea` or might be `nil` if no `GtkCellArea`
        /// is used by `cell_layout`.
        get {
            let rv = CellAreaRef(gconstpointer: gconstpointer(gtk_cell_layout_get_area(cell_layout_ptr)))
            return rv
        }
    }

    /// Returns the cell renderers which have been added to `cell_layout`.
    @inlinable var cells: GLib.ListRef! {
        /// Returns the cell renderers which have been added to `cell_layout`.
        get {
            let rv = GLib.ListRef(gtk_cell_layout_get_cells(cell_layout_ptr))
            return rv
        }
    }


}



// MARK: - ColorChooser Interface

/// The `ColorChooserProtocol` protocol exposes the methods and properties of an underlying `GtkColorChooser` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ColorChooser`.
/// Alternatively, use `ColorChooserRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkColorChooser` is an interface that is implemented by widgets
/// for choosing colors. Depending on the situation, colors may be
/// allowed to have alpha (translucency).
/// 
/// In GTK+, the main widgets that implement this interface are
/// `GtkColorChooserWidget`, `GtkColorChooserDialog` and `GtkColorButton`.
public protocol ColorChooserProtocol {
        /// Untyped pointer to the underlying `GtkColorChooser` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkColorChooser` instance.
    var color_chooser_ptr: UnsafeMutablePointer<GtkColorChooser>! { get }

}

/// The `ColorChooserRef` type acts as a lightweight Swift reference to an underlying `GtkColorChooser` instance.
/// It exposes methods that can operate on this data type through `ColorChooserProtocol` conformance.
/// Use `ColorChooserRef` only as an `unowned` reference to an existing `GtkColorChooser` instance.
///
/// `GtkColorChooser` is an interface that is implemented by widgets
/// for choosing colors. Depending on the situation, colors may be
/// allowed to have alpha (translucency).
/// 
/// In GTK+, the main widgets that implement this interface are
/// `GtkColorChooserWidget`, `GtkColorChooserDialog` and `GtkColorButton`.
public struct ColorChooserRef: ColorChooserProtocol {
        /// Untyped pointer to the underlying `GtkColorChooser` instance.
    /// For type-safe access, use the generated, typed pointer `color_chooser_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ColorChooserRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkColorChooser>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkColorChooser>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkColorChooser>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkColorChooser>?) {
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

    /// Reference intialiser for a related type that implements `ColorChooserProtocol`
    @inlinable init<T: ColorChooserProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ColorChooser` type acts as an owner of an underlying `GtkColorChooser` instance.
/// It provides the methods that can operate on this data type through `ColorChooserProtocol` conformance.
/// Use `ColorChooser` as a strong reference or owner of a `GtkColorChooser` instance.
///
/// `GtkColorChooser` is an interface that is implemented by widgets
/// for choosing colors. Depending on the situation, colors may be
/// allowed to have alpha (translucency).
/// 
/// In GTK+, the main widgets that implement this interface are
/// `GtkColorChooserWidget`, `GtkColorChooserDialog` and `GtkColorButton`.
open class ColorChooser: ColorChooserProtocol {
        /// Untyped pointer to the underlying `GtkColorChooser` instance.
    /// For type-safe access, use the generated, typed pointer `color_chooser_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ColorChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkColorChooser>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ColorChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkColorChooser>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ColorChooser` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ColorChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ColorChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkColorChooser>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ColorChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkColorChooser>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkColorChooser` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ColorChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkColorChooser>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkColorChooser, cannot ref(color_chooser_ptr)
    }

    /// Reference intialiser for a related type that implements `ColorChooserProtocol`
    /// `GtkColorChooser` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ColorChooserProtocol`
    @inlinable public init<T: ColorChooserProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkColorChooser, cannot ref(color_chooser_ptr)
    }

    /// Do-nothing destructor for `GtkColorChooser`.
    deinit {
        // no reference counting for GtkColorChooser, cannot unref(color_chooser_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkColorChooser, cannot ref(color_chooser_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkColorChooser, cannot ref(color_chooser_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkColorChooser, cannot ref(color_chooser_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorChooserProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkColorChooser, cannot ref(color_chooser_ptr)
    }



}

public enum ColorChooserPropertyName: String, PropertyNameProtocol {
    /// The `rgba` property contains the currently selected color,
    /// as a `GdkRGBA` struct. The property can be set to change
    /// the current selection programmatically.
    case rgba = "rgba"
    /// When `use`-alpha is `true`, colors may have alpha (translucency)
    /// information. When it is `false`, the `GdkRGBA` struct obtained
    /// via the `GtkColorChooser:rgba` property will be forced to have
    /// alpha == 1.
    /// 
    /// Implementations are expected to show alpha by rendering the color
    /// over a non-uniform background (like a checkerboard pattern).
    case useAlpha = "use-alpha"
}

public extension ColorChooserProtocol {
    /// Bind a `ColorChooserPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ColorChooserPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }

    /// Get the value of a ColorChooser property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ColorChooserPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a ColorChooser property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ColorChooserPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of ColorChooser
public extension ColorChooserProtocol {
    /// Emitted when a color is activated from the color chooser.
    /// This usually happens when the user clicks a color swatch,
    /// or a color is selected and the user presses one of the keys
    /// Space, Shift+Space, Return or Enter.
    /// - Note: Representation of signal named `color-activated`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter color: the color
    @discardableResult
    func onColorActivated(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ColorChooserRef, _ color: Gdk.RGBARef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ColorChooserRef, Gdk.RGBARef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ColorChooserRef(raw: unownedSelf), Gdk.RGBARef(raw: arg1))
            return output
        }
        return GLibObject.ObjectRef(raw: ptr).signalConnectData(
            detailedSignal: "color-activated", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::rgba`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyRGBA(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ColorChooserRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ColorChooserRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ColorChooserRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return GLibObject.ObjectRef(raw: ptr).signalConnectData(
            detailedSignal: "notify::rgba", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::use-alpha`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyUseAlpha(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ColorChooserRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ColorChooserRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ColorChooserRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return GLibObject.ObjectRef(raw: ptr).signalConnectData(
            detailedSignal: "notify::use-alpha", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: ColorChooser Interface: ColorChooserProtocol extension (methods and fields)
public extension ColorChooserProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkColorChooser` instance.
    @inlinable var color_chooser_ptr: UnsafeMutablePointer<GtkColorChooser>! { return ptr?.assumingMemoryBound(to: GtkColorChooser.self) }

    /// Adds a palette to the color chooser. If `orientation` is horizontal,
    /// the colors are grouped in rows, with `colors_per_line` colors
    /// in each row. If `horizontal` is `false`, the colors are grouped
    /// in columns instead.
    /// 
    /// The default color palette of `GtkColorChooserWidget` has
    /// 27 colors, organized in columns of 3 colors. The default gray
    /// palette has 9 grays in a single row.
    /// 
    /// The layout of the color chooser widget works best when the
    /// palettes have 9-10 columns.
    /// 
    /// Calling this function for the first time has the
    /// side effect of removing the default color and gray palettes
    /// from the color chooser.
    /// 
    /// If `colors` is `nil`, removes all previously added palettes.
    @inlinable func addPalette(orientation: GtkOrientation, colorsPerLine: Int, nColors: Int, colors: UnsafeMutablePointer<GdkRGBA>! = nil) {
        gtk_color_chooser_add_palette(color_chooser_ptr, orientation, gint(colorsPerLine), gint(nColors), colors)
    
    }

    /// Gets the currently-selected color.
    @inlinable func getRGBA<RGBAT: Gdk.RGBAProtocol>(color: RGBAT) {
        gtk_color_chooser_get_rgba(color_chooser_ptr, color.rgba_ptr)
    
    }

    /// Returns whether the color chooser shows the alpha channel.
    @inlinable func getUseAlpha() -> Bool {
        let rv = ((gtk_color_chooser_get_use_alpha(color_chooser_ptr)) != 0)
        return rv
    }

    /// Sets the color.
    @inlinable func setRGBA<RGBAT: Gdk.RGBAProtocol>(color: RGBAT) {
        gtk_color_chooser_set_rgba(color_chooser_ptr, color.rgba_ptr)
    
    }

    /// Sets whether or not the color chooser should use the alpha channel.
    @inlinable func set(useAlpha: Bool) {
        gtk_color_chooser_set_use_alpha(color_chooser_ptr, gboolean((useAlpha) ? 1 : 0))
    
    }
    /// Returns whether the color chooser shows the alpha channel.
    @inlinable var useAlpha: Bool {
        /// Returns whether the color chooser shows the alpha channel.
        get {
            let rv = ((gtk_color_chooser_get_use_alpha(color_chooser_ptr)) != 0)
            return rv
        }
        /// Sets whether or not the color chooser should use the alpha channel.
        nonmutating set {
            gtk_color_chooser_set_use_alpha(color_chooser_ptr, gboolean((newValue) ? 1 : 0))
        }
    }


}



// MARK: - Editable Interface

/// The `EditableProtocol` protocol exposes the methods and properties of an underlying `GtkEditable` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Editable`.
/// Alternatively, use `EditableRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkEditable` interface is an interface which should be implemented by
/// text editing widgets, such as `GtkEntry` and `GtkSpinButton`. It contains functions
/// for generically manipulating an editable widget, a large number of action
/// signals used for key bindings, and several signals that an application can
/// connect to to modify the behavior of a widget.
/// 
/// As an example of the latter usage, by connecting
/// the following handler to `GtkEditable::insert`-text, an application
/// can convert all entry into a widget into uppercase.
/// 
/// ## Forcing entry to uppercase.
/// 
/// (C Language Example):
/// ```C
/// #include <ctype.h>;
/// 
/// void
/// insert_text_handler (GtkEditable *editable,
///                      const gchar *text,
///                      gint         length,
///                      gint        *position,
///                      gpointer     data)
/// {
///   gchar *result = g_utf8_strup (text, length);
/// 
///   g_signal_handlers_block_by_func (editable,
///                                (gpointer) insert_text_handler, data);
///   gtk_editable_insert_text (editable, result, length, position);
///   g_signal_handlers_unblock_by_func (editable,
///                                      (gpointer) insert_text_handler, data);
/// 
///   g_signal_stop_emission_by_name (editable, "insert_text");
/// 
///   g_free (result);
/// }
/// ```
/// 
public protocol EditableProtocol {
        /// Untyped pointer to the underlying `GtkEditable` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkEditable` instance.
    var editable_ptr: UnsafeMutablePointer<GtkEditable>! { get }

}

/// The `EditableRef` type acts as a lightweight Swift reference to an underlying `GtkEditable` instance.
/// It exposes methods that can operate on this data type through `EditableProtocol` conformance.
/// Use `EditableRef` only as an `unowned` reference to an existing `GtkEditable` instance.
///
/// The `GtkEditable` interface is an interface which should be implemented by
/// text editing widgets, such as `GtkEntry` and `GtkSpinButton`. It contains functions
/// for generically manipulating an editable widget, a large number of action
/// signals used for key bindings, and several signals that an application can
/// connect to to modify the behavior of a widget.
/// 
/// As an example of the latter usage, by connecting
/// the following handler to `GtkEditable::insert`-text, an application
/// can convert all entry into a widget into uppercase.
/// 
/// ## Forcing entry to uppercase.
/// 
/// (C Language Example):
/// ```C
/// #include <ctype.h>;
/// 
/// void
/// insert_text_handler (GtkEditable *editable,
///                      const gchar *text,
///                      gint         length,
///                      gint        *position,
///                      gpointer     data)
/// {
///   gchar *result = g_utf8_strup (text, length);
/// 
///   g_signal_handlers_block_by_func (editable,
///                                (gpointer) insert_text_handler, data);
///   gtk_editable_insert_text (editable, result, length, position);
///   g_signal_handlers_unblock_by_func (editable,
///                                      (gpointer) insert_text_handler, data);
/// 
///   g_signal_stop_emission_by_name (editable, "insert_text");
/// 
///   g_free (result);
/// }
/// ```
/// 
public struct EditableRef: EditableProtocol {
        /// Untyped pointer to the underlying `GtkEditable` instance.
    /// For type-safe access, use the generated, typed pointer `editable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension EditableRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkEditable>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkEditable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkEditable>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkEditable>?) {
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

    /// Reference intialiser for a related type that implements `EditableProtocol`
    @inlinable init<T: EditableProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Editable` type acts as an owner of an underlying `GtkEditable` instance.
/// It provides the methods that can operate on this data type through `EditableProtocol` conformance.
/// Use `Editable` as a strong reference or owner of a `GtkEditable` instance.
///
/// The `GtkEditable` interface is an interface which should be implemented by
/// text editing widgets, such as `GtkEntry` and `GtkSpinButton`. It contains functions
/// for generically manipulating an editable widget, a large number of action
/// signals used for key bindings, and several signals that an application can
/// connect to to modify the behavior of a widget.
/// 
/// As an example of the latter usage, by connecting
/// the following handler to `GtkEditable::insert`-text, an application
/// can convert all entry into a widget into uppercase.
/// 
/// ## Forcing entry to uppercase.
/// 
/// (C Language Example):
/// ```C
/// #include <ctype.h>;
/// 
/// void
/// insert_text_handler (GtkEditable *editable,
///                      const gchar *text,
///                      gint         length,
///                      gint        *position,
///                      gpointer     data)
/// {
///   gchar *result = g_utf8_strup (text, length);
/// 
///   g_signal_handlers_block_by_func (editable,
///                                (gpointer) insert_text_handler, data);
///   gtk_editable_insert_text (editable, result, length, position);
///   g_signal_handlers_unblock_by_func (editable,
///                                      (gpointer) insert_text_handler, data);
/// 
///   g_signal_stop_emission_by_name (editable, "insert_text");
/// 
///   g_free (result);
/// }
/// ```
/// 
open class Editable: EditableProtocol {
        /// Untyped pointer to the underlying `GtkEditable` instance.
    /// For type-safe access, use the generated, typed pointer `editable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Editable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkEditable>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Editable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkEditable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Editable` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Editable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Editable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkEditable>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Editable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkEditable>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkEditable` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Editable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkEditable>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkEditable, cannot ref(editable_ptr)
    }

    /// Reference intialiser for a related type that implements `EditableProtocol`
    /// `GtkEditable` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `EditableProtocol`
    @inlinable public init<T: EditableProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkEditable, cannot ref(editable_ptr)
    }

    /// Do-nothing destructor for `GtkEditable`.
    deinit {
        // no reference counting for GtkEditable, cannot unref(editable_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkEditable, cannot ref(editable_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkEditable, cannot ref(editable_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkEditable, cannot ref(editable_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkEditable, cannot ref(editable_ptr)
    }



}

// MARK: no Editable properties

// MARK: Signals of Editable
public extension EditableProtocol {
    /// This signal is emitted when text is inserted into
    /// the widget by the user. The default handler for
    /// this signal will normally be responsible for inserting
    /// the text, so by connecting to this signal and then
    /// stopping the signal with `g_signal_stop_emission()`, it
    /// is possible to modify the inserted text, or prevent
    /// it from being inserted entirely.
    /// - Note: Representation of signal named `insert-text`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter newText: the new text to insert
    /// - Parameter newTextLength: the length of the new text, in bytes,     or -1 if new_text is nul-terminated
    /// - Parameter position: the position, in characters,     at which to insert the new text. this is an in-out     parameter.  After the signal emission is finished, it     should point after the newly inserted text.
    /// - Warning: Wrapper of this signal could not be generated because it contains unimplemented features: { (1) argument with owner transfership is not allowed, (2)  argument out or inout direction is not allowed }
    /// - Note: Use this string for `signalConnectData` method
    static var onInsertText: String { "insert-text" }
    /// The `changed` signal is emitted at the end of a single
    /// user-visible operation on the contents of the `GtkEditable`.
    /// 
    /// E.g., a paste operation that replaces the contents of the
    /// selection will cause only one signal emission (even though it
    /// is implemented by first deleting the selection, then inserting
    /// the new content, and may cause multiple `notify::text` signals
    /// to be emitted).
    /// - Note: Representation of signal named `changed`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EditableRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<EditableRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EditableRef(raw: unownedSelf))
            return output
        }
        return GLibObject.ObjectRef(raw: ptr).signalConnectData(
            detailedSignal: "changed", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// This signal is emitted when text is deleted from
    /// the widget by the user. The default handler for
    /// this signal will normally be responsible for deleting
    /// the text, so by connecting to this signal and then
    /// stopping the signal with `g_signal_stop_emission()`, it
    /// is possible to modify the range of deleted text, or
    /// prevent it from being deleted entirely. The `start_pos`
    /// and `end_pos` parameters are interpreted as for
    /// `gtk_editable_delete_text()`.
    /// - Note: Representation of signal named `delete-text`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter startPos: the starting position
    /// - Parameter endPos: the end position
    @discardableResult
    func onDeleteText(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EditableRef, _ startPos: Int, _ endPos: Int) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<EditableRef, Int, Int, Void>
        let cCallback: @convention(c) (gpointer, gint, gint, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EditableRef(raw: unownedSelf), Int(arg1), Int(arg2))
            return output
        }
        return GLibObject.ObjectRef(raw: ptr).signalConnectData(
            detailedSignal: "delete-text", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    
}

// MARK: Editable Interface: EditableProtocol extension (methods and fields)
public extension EditableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEditable` instance.
    @inlinable var editable_ptr: UnsafeMutablePointer<GtkEditable>! { return ptr?.assumingMemoryBound(to: GtkEditable.self) }

    /// Copies the contents of the currently selected content in the editable and
    /// puts it on the clipboard.
    @inlinable func copyClipboard() {
        gtk_editable_copy_clipboard(editable_ptr)
    
    }

    /// Removes the contents of the currently selected content in the editable and
    /// puts it on the clipboard.
    @inlinable func cutClipboard() {
        gtk_editable_cut_clipboard(editable_ptr)
    
    }

    /// Deletes the currently selected text of the editable.
    /// This call doesn’t do anything if there is no selected text.
    @inlinable func deleteSelection() {
        gtk_editable_delete_selection(editable_ptr)
    
    }

    /// Deletes a sequence of characters. The characters that are deleted are
    /// those characters at positions from `start_pos` up to, but not including
    /// `end_pos`. If `end_pos` is negative, then the characters deleted
    /// are those from `start_pos` to the end of the text.
    /// 
    /// Note that the positions are specified in characters, not bytes.
    @inlinable func deleteText(startPos: Int, endPos: Int) {
        gtk_editable_delete_text(editable_ptr, gint(startPos), gint(endPos))
    
    }

    /// Retrieves a sequence of characters. The characters that are retrieved
    /// are those characters at positions from `start_pos` up to, but not
    /// including `end_pos`. If `end_pos` is negative, then the characters
    /// retrieved are those characters from `start_pos` to the end of the text.
    /// 
    /// Note that positions are specified in characters, not bytes.
    @inlinable func getChars(startPos: Int, endPos: Int) -> String! {
        let rv = gtk_editable_get_chars(editable_ptr, gint(startPos), gint(endPos)).map({ String(cString: $0) })
        return rv
    }

    /// Retrieves whether `editable` is editable. See
    /// `gtk_editable_set_editable()`.
    @inlinable func getEditable() -> Bool {
        let rv = ((gtk_editable_get_editable(editable_ptr)) != 0)
        return rv
    }

    /// Retrieves the current position of the cursor relative to the start
    /// of the content of the editable.
    /// 
    /// Note that this position is in characters, not in bytes.
    @inlinable func getPosition() -> Int {
        let rv = Int(gtk_editable_get_position(editable_ptr))
        return rv
    }

    /// Retrieves the selection bound of the editable. start_pos will be filled
    /// with the start of the selection and `end_pos` with end. If no text was
    /// selected both will be identical and `false` will be returned.
    /// 
    /// Note that positions are specified in characters, not bytes.
    @inlinable func getSelectionBounds(startPos: UnsafeMutablePointer<gint>! = nil, endPos: UnsafeMutablePointer<gint>! = nil) -> Bool {
        let rv = ((gtk_editable_get_selection_bounds(editable_ptr, startPos, endPos)) != 0)
        return rv
    }

    /// Inserts `new_text_length` bytes of `new_text` into the contents of the
    /// widget, at position `position`.
    /// 
    /// Note that the position is in characters, not in bytes.
    /// The function updates `position` to point after the newly inserted text.
    @inlinable func insertText(newText: UnsafePointer<gchar>!, newTextLength: Int, position: UnsafeMutablePointer<gint>!) {
        gtk_editable_insert_text(editable_ptr, newText, gint(newTextLength), position)
    
    }

    /// Pastes the content of the clipboard to the current position of the
    /// cursor in the editable.
    @inlinable func pasteClipboard() {
        gtk_editable_paste_clipboard(editable_ptr)
    
    }

    /// Selects a region of text. The characters that are selected are
    /// those characters at positions from `start_pos` up to, but not
    /// including `end_pos`. If `end_pos` is negative, then the
    /// characters selected are those characters from `start_pos` to
    /// the end of the text.
    /// 
    /// Note that positions are specified in characters, not bytes.
    @inlinable func selectRegion(startPos: Int, endPos: Int) {
        gtk_editable_select_region(editable_ptr, gint(startPos), gint(endPos))
    
    }

    /// Determines if the user can edit the text in the editable
    /// widget or not.
    @inlinable func setEditable(isEditable: Bool) {
        gtk_editable_set_editable(editable_ptr, gboolean((isEditable) ? 1 : 0))
    
    }

    /// Sets the cursor position in the editable to the given value.
    /// 
    /// The cursor is displayed before the character with the given (base 0)
    /// index in the contents of the editable. The value must be less than or
    /// equal to the number of characters in the editable. A value of -1
    /// indicates that the position should be set after the last character
    /// of the editable. Note that `position` is in characters, not in bytes.
    @inlinable func set(position: Int) {
        gtk_editable_set_position(editable_ptr, gint(position))
    
    }
    /// Retrieves whether `editable` is editable. See
    /// `gtk_editable_set_editable()`.
    @inlinable var editable: Bool {
        /// Retrieves whether `editable` is editable. See
        /// `gtk_editable_set_editable()`.
        get {
            let rv = ((gtk_editable_get_editable(editable_ptr)) != 0)
            return rv
        }
        /// Determines if the user can edit the text in the editable
        /// widget or not.
        nonmutating set {
            gtk_editable_set_editable(editable_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Retrieves the current position of the cursor relative to the start
    /// of the content of the editable.
    /// 
    /// Note that this position is in characters, not in bytes.
    @inlinable var position: Int {
        /// Retrieves the current position of the cursor relative to the start
        /// of the content of the editable.
        /// 
        /// Note that this position is in characters, not in bytes.
        get {
            let rv = Int(gtk_editable_get_position(editable_ptr))
            return rv
        }
        /// Sets the cursor position in the editable to the given value.
        /// 
        /// The cursor is displayed before the character with the given (base 0)
        /// index in the contents of the editable. The value must be less than or
        /// equal to the number of characters in the editable. A value of -1
        /// indicates that the position should be set after the last character
        /// of the editable. Note that `position` is in characters, not in bytes.
        nonmutating set {
            gtk_editable_set_position(editable_ptr, gint(newValue))
        }
    }


}



