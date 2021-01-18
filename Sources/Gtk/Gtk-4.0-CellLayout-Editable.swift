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
/// as &lt;child&gt; elements in UI definitions. They support a custom &lt;attributes&gt;
/// element for their children, which can contain multiple &lt;attribute&gt;
/// elements. Each &lt;attribute&gt; element has a name attribute which specifies
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
/// to lay out cells (all GtkCellLayouts in GTK use a GtkCellArea)
/// [cell properties](#cell-properties) can also be defined in the format by
/// specifying the custom &lt;cell-packing&gt; attribute which can contain multiple
/// &lt;property&gt; elements defined in the normal way.
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

    /// Required Initialiser for types conforming to `CellLayoutProtocol`
    init(raw: UnsafeMutableRawPointer)
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
/// as &lt;child&gt; elements in UI definitions. They support a custom &lt;attributes&gt;
/// element for their children, which can contain multiple &lt;attribute&gt;
/// elements. Each &lt;attribute&gt; element has a name attribute which specifies
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
/// to lay out cells (all GtkCellLayouts in GTK use a GtkCellArea)
/// [cell properties](#cell-properties) can also be defined in the format by
/// specifying the custom &lt;cell-packing&gt; attribute which can contain multiple
/// &lt;property&gt; elements defined in the normal way.
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
/// as &lt;child&gt; elements in UI definitions. They support a custom &lt;attributes&gt;
/// element for their children, which can contain multiple &lt;attribute&gt;
/// elements. Each &lt;attribute&gt; element has a name attribute which specifies
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
/// to lay out cells (all GtkCellLayouts in GTK use a GtkCellArea)
/// [cell properties](#cell-properties) can also be defined in the format by
/// specifying the custom &lt;cell-packing&gt; attribute which can contain multiple
/// &lt;property&gt; elements defined in the normal way.
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
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

// MARK: no CellLayout signals

// MARK: CellLayout has no signals
// MARK: CellLayout Interface: CellLayoutProtocol extension (methods and fields)
public extension CellLayoutProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCellLayout` instance.
    @inlinable var cell_layout_ptr: UnsafeMutablePointer<GtkCellLayout>! { return ptr?.assumingMemoryBound(to: GtkCellLayout.self) }

    /// Adds an attribute mapping to the list in `cell_layout`.
    /// 
    /// The `column` is the column of the model to get a value from, and the
    /// `attribute` is the parameter on `cell` to be set from the value. So for
    /// example if column 2 of the model contains strings, you could have the
    /// “text” attribute of a `GtkCellRendererText` get its values from column 2.
    @inlinable func addAttribute<CellRendererT: CellRendererProtocol>(cell: CellRendererT, attribute: UnsafePointer<CChar>!, column: Int) {
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
/// In GTK, the main widgets that implement this interface are
/// `GtkColorChooserWidget`, `GtkColorChooserDialog` and `GtkColorButton`.
public protocol ColorChooserProtocol {
        /// Untyped pointer to the underlying `GtkColorChooser` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkColorChooser` instance.
    var color_chooser_ptr: UnsafeMutablePointer<GtkColorChooser>! { get }

    /// Required Initialiser for types conforming to `ColorChooserProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ColorChooserRef` type acts as a lightweight Swift reference to an underlying `GtkColorChooser` instance.
/// It exposes methods that can operate on this data type through `ColorChooserProtocol` conformance.
/// Use `ColorChooserRef` only as an `unowned` reference to an existing `GtkColorChooser` instance.
///
/// `GtkColorChooser` is an interface that is implemented by widgets
/// for choosing colors. Depending on the situation, colors may be
/// allowed to have alpha (translucency).
/// 
/// In GTK, the main widgets that implement this interface are
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
/// In GTK, the main widgets that implement this interface are
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
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
    /// When `use-alpha` is `true`, colors may have alpha (translucency)
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

public enum ColorChooserSignalName: String, SignalNameProtocol {
    /// Emitted when a color is activated from the color chooser.
    /// This usually happens when the user clicks a color swatch,
    /// or a color is selected and the user presses one of the keys
    /// Space, Shift+Space, Return or Enter.
    case colorActivated = "color-activated"
    /// The `rgba` property contains the currently selected color,
    /// as a `GdkRGBA` struct. The property can be set to change
    /// the current selection programmatically.
    case notifyRgba = "notify::rgba"
    /// When `use-alpha` is `true`, colors may have alpha (translucency)
    /// information. When it is `false`, the `GdkRGBA` struct obtained
    /// via the `GtkColorChooser:rgba` property will be forced to have
    /// alpha == 1.
    /// 
    /// Implementations are expected to show alpha by rendering the color
    /// over a non-uniform background (like a checkerboard pattern).
    case notifyUseAlpha = "notify::use-alpha"
}

// MARK: ColorChooser signals
public extension ColorChooserProtocol {
    /// Connect a Swift signal handler to the given, typed `ColorChooserSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: ColorChooserSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        GLibObject.ObjectRef(raw: ptr).connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `ColorChooserSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: ColorChooserSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        GLibObject.ObjectRef(raw: ptr).connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted when a color is activated from the color chooser.
    /// This usually happens when the user clicks a color swatch,
    /// or a color is selected and the user presses one of the keys
    /// Space, Shift+Space, Return or Enter.
    /// - Note: This represents the underlying `color-activated` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter color: the color
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `colorActivated` signal is emitted
    @discardableResult @inlinable func onColorActivated(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ColorChooserRef, _ color: Gdk.RGBARef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ColorChooserRef, Gdk.RGBARef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ColorChooserRef(raw: unownedSelf), Gdk.RGBARef(raw: arg1))
            return output
        }
        return connect(
            signal: .colorActivated,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `color-activated` signal for using the `connect(signal:)` methods
    static var colorActivatedSignal: ColorChooserSignalName { .colorActivated }
    
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
    /// - Note: This represents the underlying `notify::rgba` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyRgba` signal is emitted
    @discardableResult @inlinable func onNotifyRgba(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ColorChooserRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ColorChooserRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ColorChooserRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyRgba,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::rgba` signal for using the `connect(signal:)` methods
    static var notifyRgbaSignal: ColorChooserSignalName { .notifyRgba }
    
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
    /// - Note: This represents the underlying `notify::use-alpha` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyUseAlpha` signal is emitted
    @discardableResult @inlinable func onNotifyUseAlpha(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ColorChooserRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ColorChooserRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ColorChooserRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyUseAlpha,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::use-alpha` signal for using the `connect(signal:)` methods
    static var notifyUseAlphaSignal: ColorChooserSignalName { .notifyUseAlpha }
    
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
    @inlinable func getRgba<RGBAT: Gdk.RGBAProtocol>(color: RGBAT) {
        gtk_color_chooser_get_rgba(color_chooser_ptr, color.rgba_ptr)
    
    }

    /// Returns whether the color chooser shows the alpha channel.
    @inlinable func getUseAlpha() -> Bool {
        let rv = ((gtk_color_chooser_get_use_alpha(color_chooser_ptr)) != 0)
        return rv
    }

    /// Sets the color.
    @inlinable func setRgba<RGBAT: Gdk.RGBAProtocol>(color: RGBAT) {
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



// MARK: - ConstraintTarget Interface

/// The `ConstraintTargetProtocol` protocol exposes the methods and properties of an underlying `GtkConstraintTarget` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ConstraintTarget`.
/// Alternatively, use `ConstraintTargetRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The GtkConstraintTarget interface is implemented by objects that
/// can be used as source or target in `GtkConstraints`. Besides
/// `GtkWidget`, it is also implemented by `GtkConstraintGuide`.
public protocol ConstraintTargetProtocol {
        /// Untyped pointer to the underlying `GtkConstraintTarget` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkConstraintTarget` instance.
    var constraint_target_ptr: UnsafeMutablePointer<GtkConstraintTarget>! { get }

    /// Required Initialiser for types conforming to `ConstraintTargetProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ConstraintTargetRef` type acts as a lightweight Swift reference to an underlying `GtkConstraintTarget` instance.
/// It exposes methods that can operate on this data type through `ConstraintTargetProtocol` conformance.
/// Use `ConstraintTargetRef` only as an `unowned` reference to an existing `GtkConstraintTarget` instance.
///
/// The GtkConstraintTarget interface is implemented by objects that
/// can be used as source or target in `GtkConstraints`. Besides
/// `GtkWidget`, it is also implemented by `GtkConstraintGuide`.
public struct ConstraintTargetRef: ConstraintTargetProtocol {
        /// Untyped pointer to the underlying `GtkConstraintTarget` instance.
    /// For type-safe access, use the generated, typed pointer `constraint_target_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ConstraintTargetRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkConstraintTarget>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkConstraintTarget>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkConstraintTarget>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkConstraintTarget>?) {
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

    /// Reference intialiser for a related type that implements `ConstraintTargetProtocol`
    @inlinable init<T: ConstraintTargetProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConstraintTargetProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConstraintTargetProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConstraintTargetProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConstraintTargetProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConstraintTargetProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ConstraintTarget` type acts as an owner of an underlying `GtkConstraintTarget` instance.
/// It provides the methods that can operate on this data type through `ConstraintTargetProtocol` conformance.
/// Use `ConstraintTarget` as a strong reference or owner of a `GtkConstraintTarget` instance.
///
/// The GtkConstraintTarget interface is implemented by objects that
/// can be used as source or target in `GtkConstraints`. Besides
/// `GtkWidget`, it is also implemented by `GtkConstraintGuide`.
open class ConstraintTarget: ConstraintTargetProtocol {
        /// Untyped pointer to the underlying `GtkConstraintTarget` instance.
    /// For type-safe access, use the generated, typed pointer `constraint_target_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConstraintTarget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkConstraintTarget>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConstraintTarget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkConstraintTarget>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConstraintTarget` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConstraintTarget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConstraintTarget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkConstraintTarget>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConstraintTarget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkConstraintTarget>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkConstraintTarget` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ConstraintTarget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkConstraintTarget>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkConstraintTarget, cannot ref(constraint_target_ptr)
    }

    /// Reference intialiser for a related type that implements `ConstraintTargetProtocol`
    /// `GtkConstraintTarget` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ConstraintTargetProtocol`
    @inlinable public init<T: ConstraintTargetProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkConstraintTarget, cannot ref(constraint_target_ptr)
    }

    /// Do-nothing destructor for `GtkConstraintTarget`.
    deinit {
        // no reference counting for GtkConstraintTarget, cannot unref(constraint_target_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConstraintTargetProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConstraintTargetProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkConstraintTarget, cannot ref(constraint_target_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConstraintTargetProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConstraintTargetProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkConstraintTarget, cannot ref(constraint_target_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConstraintTargetProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConstraintTargetProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkConstraintTarget, cannot ref(constraint_target_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConstraintTargetProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConstraintTargetProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkConstraintTarget, cannot ref(constraint_target_ptr)
    }



}

// MARK: no ConstraintTarget properties

// MARK: no ConstraintTarget signals

// MARK: ConstraintTarget has no signals
// MARK: ConstraintTarget Interface: ConstraintTargetProtocol extension (methods and fields)
public extension ConstraintTargetProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkConstraintTarget` instance.
    @inlinable var constraint_target_ptr: UnsafeMutablePointer<GtkConstraintTarget>! { return ptr?.assumingMemoryBound(to: GtkConstraintTarget.self) }



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
/// connect to modify the behavior of a widget.
/// 
/// As an example of the latter usage, by connecting
/// the following handler to `GtkEditable::insert-text`, an application
/// can convert all entry into a widget into uppercase.
/// 
/// ## Forcing entry to uppercase.
/// 
/// (C Language Example):
/// ```C
/// #include <ctype.h>
/// 
/// void
/// insert_text_handler (GtkEditable *editable,
///                      const char  *text,
///                      int          length,
///                      int         *position,
///                      gpointer     data)
/// {
///   char *result = g_utf8_strup (text, length);
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
/// ## Implementing GtkEditable
/// 
/// The most likely scenario for implementing GtkEditable on your own widget
/// is that you will embed a `GtkText` inside a complex widget, and want to
/// delegate the editable functionality to that text widget. GtkEditable
/// provides some utility functions to make this easy.
/// 
/// In your class_init function, call `gtk_editable_install_properties()`,
/// passing the first available property ID:
/// 
/// ```
/// static void
/// my_class_init (MyClass *class)
/// {
///    ...
///    g_object_class_install_properties (object_class, NUM_PROPERTIES, props);
///    gtk_editable_install_properties (object_clas, NUM_PROPERTIES);
///    ...
/// }
/// ```
/// 
/// In your interface_init function for the GtkEditable interface, provide
/// an implementation for the get_delegate vfunc that returns your text widget:
/// 
/// ```
/// GtkEditable *
/// get_editable_delegate (GtkEditable *editable)
/// {
///   return GTK_EDITABLE (MY_WIDGET (editable)->text_widget);
/// }
/// 
/// static void
/// my_editable_init (GtkEditableInterface *iface)
/// {
///   iface->get_delegate = get_editable_delegate;
/// }
/// ```
/// 
/// You don't need to provide any other vfuncs. The default implementations
/// work by forwarding to the delegate that the `GtkEditableInterface.get_delegate``()`
/// vfunc returns.
/// 
/// In your instance_init function, create your text widget, and then call
/// `gtk_editable_init_delegate()`:
/// 
/// ```
/// static void
/// my_widget_init (MyWidget *self)
/// {
///   ...
///   self->text_widget = gtk_text_new ();
///   gtk_editable_init_delegate (GTK_EDITABLE (self));
///   ...
/// }
/// ```
/// 
/// In your dispose function, call `gtk_editable_finish_delegate()` before
/// destroying your text widget:
/// 
/// ```
/// static void
/// my_widget_dispose (GObject *object)
/// {
///   ...
///   gtk_editable_finish_delegate (GTK_EDITABLE (self));
///   g_clear_pointer (&self->text_widget, gtk_widget_unparent);
///   ...
/// }
/// ```
/// 
/// Finally, use `gtk_editable_delegate_set_property()` in your `set_property`
/// function (and similar for `get_property`), to set the editable properties:
/// 
/// ```
///   ...
///   if (gtk_editable_delegate_set_property (object, prop_id, value, pspec))
///     return;
/// 
///   switch (prop_id)
///   ...
/// ```
/// 
/// It is important to note that if you create a GtkEditable that uses a delegate,
/// the low level `GtkEditable::insert-text` and `GtkEditable::delete-text` signals
/// will be propagated from the "wrapper" editable to the delegate, but they will
/// not be propagated from the delegate to the "wrapper" editable, as they would
/// cause an infinite recursion. If you wish to connect to the `GtkEditable::insert-text`
/// and `GtkEditable::delete-text` signals, you will need to connect to them on
/// the delegate obtained via `gtk_editable_get_delegate()`.
public protocol EditableProtocol: WidgetProtocol {
        /// Untyped pointer to the underlying `GtkEditable` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkEditable` instance.
    var editable_ptr: UnsafeMutablePointer<GtkEditable>! { get }

    /// Required Initialiser for types conforming to `EditableProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `EditableRef` type acts as a lightweight Swift reference to an underlying `GtkEditable` instance.
/// It exposes methods that can operate on this data type through `EditableProtocol` conformance.
/// Use `EditableRef` only as an `unowned` reference to an existing `GtkEditable` instance.
///
/// The `GtkEditable` interface is an interface which should be implemented by
/// text editing widgets, such as `GtkEntry` and `GtkSpinButton`. It contains functions
/// for generically manipulating an editable widget, a large number of action
/// signals used for key bindings, and several signals that an application can
/// connect to modify the behavior of a widget.
/// 
/// As an example of the latter usage, by connecting
/// the following handler to `GtkEditable::insert-text`, an application
/// can convert all entry into a widget into uppercase.
/// 
/// ## Forcing entry to uppercase.
/// 
/// (C Language Example):
/// ```C
/// #include <ctype.h>
/// 
/// void
/// insert_text_handler (GtkEditable *editable,
///                      const char  *text,
///                      int          length,
///                      int         *position,
///                      gpointer     data)
/// {
///   char *result = g_utf8_strup (text, length);
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
/// ## Implementing GtkEditable
/// 
/// The most likely scenario for implementing GtkEditable on your own widget
/// is that you will embed a `GtkText` inside a complex widget, and want to
/// delegate the editable functionality to that text widget. GtkEditable
/// provides some utility functions to make this easy.
/// 
/// In your class_init function, call `gtk_editable_install_properties()`,
/// passing the first available property ID:
/// 
/// ```
/// static void
/// my_class_init (MyClass *class)
/// {
///    ...
///    g_object_class_install_properties (object_class, NUM_PROPERTIES, props);
///    gtk_editable_install_properties (object_clas, NUM_PROPERTIES);
///    ...
/// }
/// ```
/// 
/// In your interface_init function for the GtkEditable interface, provide
/// an implementation for the get_delegate vfunc that returns your text widget:
/// 
/// ```
/// GtkEditable *
/// get_editable_delegate (GtkEditable *editable)
/// {
///   return GTK_EDITABLE (MY_WIDGET (editable)->text_widget);
/// }
/// 
/// static void
/// my_editable_init (GtkEditableInterface *iface)
/// {
///   iface->get_delegate = get_editable_delegate;
/// }
/// ```
/// 
/// You don't need to provide any other vfuncs. The default implementations
/// work by forwarding to the delegate that the `GtkEditableInterface.get_delegate``()`
/// vfunc returns.
/// 
/// In your instance_init function, create your text widget, and then call
/// `gtk_editable_init_delegate()`:
/// 
/// ```
/// static void
/// my_widget_init (MyWidget *self)
/// {
///   ...
///   self->text_widget = gtk_text_new ();
///   gtk_editable_init_delegate (GTK_EDITABLE (self));
///   ...
/// }
/// ```
/// 
/// In your dispose function, call `gtk_editable_finish_delegate()` before
/// destroying your text widget:
/// 
/// ```
/// static void
/// my_widget_dispose (GObject *object)
/// {
///   ...
///   gtk_editable_finish_delegate (GTK_EDITABLE (self));
///   g_clear_pointer (&self->text_widget, gtk_widget_unparent);
///   ...
/// }
/// ```
/// 
/// Finally, use `gtk_editable_delegate_set_property()` in your `set_property`
/// function (and similar for `get_property`), to set the editable properties:
/// 
/// ```
///   ...
///   if (gtk_editable_delegate_set_property (object, prop_id, value, pspec))
///     return;
/// 
///   switch (prop_id)
///   ...
/// ```
/// 
/// It is important to note that if you create a GtkEditable that uses a delegate,
/// the low level `GtkEditable::insert-text` and `GtkEditable::delete-text` signals
/// will be propagated from the "wrapper" editable to the delegate, but they will
/// not be propagated from the delegate to the "wrapper" editable, as they would
/// cause an infinite recursion. If you wish to connect to the `GtkEditable::insert-text`
/// and `GtkEditable::delete-text` signals, you will need to connect to them on
/// the delegate obtained via `gtk_editable_get_delegate()`.
public struct EditableRef: EditableProtocol, GWeakCapturing {
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

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: EditableProtocol>(_ other: T) -> EditableRef { EditableRef(other) }

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

/// The `Editable` type acts as a reference-counted owner of an underlying `GtkEditable` instance.
/// It provides the methods that can operate on this data type through `EditableProtocol` conformance.
/// Use `Editable` as a strong reference or owner of a `GtkEditable` instance.
///
/// The `GtkEditable` interface is an interface which should be implemented by
/// text editing widgets, such as `GtkEntry` and `GtkSpinButton`. It contains functions
/// for generically manipulating an editable widget, a large number of action
/// signals used for key bindings, and several signals that an application can
/// connect to modify the behavior of a widget.
/// 
/// As an example of the latter usage, by connecting
/// the following handler to `GtkEditable::insert-text`, an application
/// can convert all entry into a widget into uppercase.
/// 
/// ## Forcing entry to uppercase.
/// 
/// (C Language Example):
/// ```C
/// #include <ctype.h>
/// 
/// void
/// insert_text_handler (GtkEditable *editable,
///                      const char  *text,
///                      int          length,
///                      int         *position,
///                      gpointer     data)
/// {
///   char *result = g_utf8_strup (text, length);
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
/// ## Implementing GtkEditable
/// 
/// The most likely scenario for implementing GtkEditable on your own widget
/// is that you will embed a `GtkText` inside a complex widget, and want to
/// delegate the editable functionality to that text widget. GtkEditable
/// provides some utility functions to make this easy.
/// 
/// In your class_init function, call `gtk_editable_install_properties()`,
/// passing the first available property ID:
/// 
/// ```
/// static void
/// my_class_init (MyClass *class)
/// {
///    ...
///    g_object_class_install_properties (object_class, NUM_PROPERTIES, props);
///    gtk_editable_install_properties (object_clas, NUM_PROPERTIES);
///    ...
/// }
/// ```
/// 
/// In your interface_init function for the GtkEditable interface, provide
/// an implementation for the get_delegate vfunc that returns your text widget:
/// 
/// ```
/// GtkEditable *
/// get_editable_delegate (GtkEditable *editable)
/// {
///   return GTK_EDITABLE (MY_WIDGET (editable)->text_widget);
/// }
/// 
/// static void
/// my_editable_init (GtkEditableInterface *iface)
/// {
///   iface->get_delegate = get_editable_delegate;
/// }
/// ```
/// 
/// You don't need to provide any other vfuncs. The default implementations
/// work by forwarding to the delegate that the `GtkEditableInterface.get_delegate``()`
/// vfunc returns.
/// 
/// In your instance_init function, create your text widget, and then call
/// `gtk_editable_init_delegate()`:
/// 
/// ```
/// static void
/// my_widget_init (MyWidget *self)
/// {
///   ...
///   self->text_widget = gtk_text_new ();
///   gtk_editable_init_delegate (GTK_EDITABLE (self));
///   ...
/// }
/// ```
/// 
/// In your dispose function, call `gtk_editable_finish_delegate()` before
/// destroying your text widget:
/// 
/// ```
/// static void
/// my_widget_dispose (GObject *object)
/// {
///   ...
///   gtk_editable_finish_delegate (GTK_EDITABLE (self));
///   g_clear_pointer (&self->text_widget, gtk_widget_unparent);
///   ...
/// }
/// ```
/// 
/// Finally, use `gtk_editable_delegate_set_property()` in your `set_property`
/// function (and similar for `get_property`), to set the editable properties:
/// 
/// ```
///   ...
///   if (gtk_editable_delegate_set_property (object, prop_id, value, pspec))
///     return;
/// 
///   switch (prop_id)
///   ...
/// ```
/// 
/// It is important to note that if you create a GtkEditable that uses a delegate,
/// the low level `GtkEditable::insert-text` and `GtkEditable::delete-text` signals
/// will be propagated from the "wrapper" editable to the delegate, but they will
/// not be propagated from the delegate to the "wrapper" editable, as they would
/// cause an infinite recursion. If you wish to connect to the `GtkEditable::insert-text`
/// and `GtkEditable::delete-text` signals, you will need to connect to them on
/// the delegate obtained via `gtk_editable_get_delegate()`.
open class Editable: Widget, EditableProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Editable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkEditable>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Editable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkEditable>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Editable` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Editable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Editable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkEditable>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Editable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkEditable>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkEditable`.
    /// i.e., ownership is transferred to the `Editable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkEditable>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `EditableProtocol`
    /// Will retain `GtkEditable`.
    /// - Parameter other: an instance of a related type that implements `EditableProtocol`
    @inlinable public init<T: EditableProtocol>(editable other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EditableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum EditablePropertyName: String, PropertyNameProtocol {
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    case canTarget = "can-target"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`. See `gtk_widget_set_cursor()` for details.
    case cursor = "cursor"
    case cursorPosition = "cursor-position"
    case editable = "editable"
    case enableUndo = "enable-undo"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query-tooltip` on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query-tooltip` to determine
    /// whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case layoutManager = "layout-manager"
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
    case maxWidthChars = "max-width-chars"
    case name = "name"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    case opacity = "opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    case parent = "parent"
    case receivesDefault = "receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget or `nil` if
    /// the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case selectionBound = "selection-bound"
    case sensitive = "sensitive"
    case text = "text"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has-tooltip`
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query-tooltip` in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip-text` and `GtkWidget:tooltip-markup`
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has-tooltip`
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query-tooltip` in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip-text` and `GtkWidget:tooltip-markup`
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthChars = "width-chars"
    case widthRequest = "width-request"
    case xalign = "xalign"
}

public extension EditableProtocol {
    /// Bind a `EditablePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: EditablePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Editable property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: EditablePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Editable property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: EditablePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum EditableSignalName: String, SignalNameProtocol {
    /// The `changed` signal is emitted at the end of a single
    /// user-visible operation on the contents of the `GtkEditable`.
    /// 
    /// E.g., a paste operation that replaces the contents of the
    /// selection will cause only one signal emission (even though it
    /// is implemented by first deleting the selection, then inserting
    /// the new content, and may cause multiple `notify::text` signals
    /// to be emitted).
    case changed = "changed"
    /// This signal is emitted when text is deleted from
    /// the widget by the user. The default handler for
    /// this signal will normally be responsible for deleting
    /// the text, so by connecting to this signal and then
    /// stopping the signal with `g_signal_stop_emission()`, it
    /// is possible to modify the range of deleted text, or
    /// prevent it from being deleted entirely. The `start_pos`
    /// and `end_pos` parameters are interpreted as for
    /// `gtk_editable_delete_text()`.
    case deleteText = "delete-text"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The `direction-changed` signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The `hide` signal is emitted when `widget` is hidden, for example with
    /// `gtk_widget_hide()`.
    case hide = "hide"
    /// This signal is emitted when text is inserted into
    /// the widget by the user. The default handler for
    /// this signal will normally be responsible for inserting
    /// the text, so by connecting to this signal and then
    /// stopping the signal with `g_signal_stop_emission()`, it
    /// is possible to modify the inserted text, or prevent
    /// it from being inserted entirely.
    case insertText = "insert-text"
    /// Gets emitted if keyboard navigation fails.
    /// See `gtk_widget_keynav_failed()` for details.
    case keynavFailed = "keynav-failed"
    /// The `map` signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// `gtk_widget_set_visible()`) and all its parents up to the toplevel widget
    /// are also visible.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget::unmap`.
    case map = "map"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// Emitted when the focus is moved.
    case moveFocus = "move-focus"
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
    case notify = "notify"
    /// Emitted when `GtkWidget:has-tooltip` is `true` and the hover timeout
    /// has expired with the cursor hovering "above" `widget`; or emitted when `widget` got
    /// focus in keyboard mode.
    /// 
    /// Using the given coordinates, the signal handler should determine
    /// whether a tooltip should be shown for `widget`. If this is the case
    /// `true` should be returned, `false` otherwise.  Note that if
    /// `keyboard_mode` is `true`, the values of `x` and `y` are undefined and
    /// should not be used.
    /// 
    /// The signal handler is free to manipulate `tooltip` with the therefore
    /// destined function calls.
    case queryTooltip = "query-tooltip"
    /// The `realize` signal is emitted when `widget` is associated with a
    /// `GdkSurface`, which means that `gtk_widget_realize()` has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// The `show` signal is emitted when `widget` is shown, for example with
    /// `gtk_widget_show()`.
    case show = "show"
    /// The `state-flags-changed` signal is emitted when the widget state
    /// changes, see `gtk_widget_get_state_flags()`.
    case stateFlagsChanged = "state-flags-changed"
    /// The `unmap` signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The `unrealize` signal is emitted when the `GdkSurface` associated with
    /// `widget` is destroyed, which means that `gtk_widget_unrealize()` has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCanFocus = "notify::can-focus"
    case notifyCanTarget = "notify::can-target"
    /// A list of css classes applied to this widget.
    case notifyCssClasses = "notify::css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCssName = "notify::css-name"
    /// The cursor used by `widget`. See `gtk_widget_set_cursor()` for details.
    case notifyCursor = "notify::cursor"
    case notifyCursorPosition = "notify::cursor-position"
    case notifyEditable = "notify::editable"
    case notifyEnableUndo = "notify::enable-undo"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case notifyFocusable = "notify::focusable"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case notifyHalign = "notify::halign"
    case notifyHasDefault = "notify::has-default"
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of `GtkWidget::query-tooltip` on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query-tooltip` to determine
    /// whether it will provide a tooltip or not.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case notifyHexpandSet = "notify::hexpand-set"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyLayoutManager = "notify::layout-manager"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginTop = "notify::margin-top"
    case notifyMaxWidthChars = "notify::max-width-chars"
    case notifyName = "notify::name"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    case notifyOpacity = "notify::opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyOverflow = "notify::overflow"
    case notifyParent = "notify::parent"
    case notifyReceivesDefault = "notify::receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget or `nil` if
    /// the widget is not contained in a root widget.
    case notifyRoot = "notify::root"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySelectionBound = "notify::selection-bound"
    case notifySensitive = "notify::sensitive"
    case notifyText = "notify::text"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has-tooltip`
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query-tooltip` in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip-text` and `GtkWidget:tooltip-markup`
    /// are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has-tooltip`
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query-tooltip` in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip-text` and `GtkWidget:tooltip-markup`
    /// are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    case notifyWidthChars = "notify::width-chars"
    case notifyWidthRequest = "notify::width-request"
    case notifyXalign = "notify::xalign"
}

// MARK: Editable signals
public extension EditableProtocol {
    /// Connect a Swift signal handler to the given, typed `EditableSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: EditableSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        GLibObject.ObjectRef(raw: ptr).connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `EditableSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: EditableSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        GLibObject.ObjectRef(raw: ptr).connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// This signal is emitted when text is inserted into
    /// the widget by the user. The default handler for
    /// this signal will normally be responsible for inserting
    /// the text, so by connecting to this signal and then
    /// stopping the signal with `g_signal_stop_emission()`, it
    /// is possible to modify the inserted text, or prevent
    /// it from being inserted entirely.
    /// - Note: This represents the underlying `insert-text` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter text: the new text to insert
    /// - Parameter length: the length of the new text, in bytes,     or -1 if new_text is nul-terminated
    /// - Parameter position: the position, in characters,     at which to insert the new text. this is an in-out     parameter.  After the signal emission is finished, it     should point after the newly inserted text.
    /// - Parameter handler: The signal handler to call
    /// - Warning: a `onInsertText` wrapper for this signal could not be generated because it contains unimplemented features: { (1) argument with ownership transfer is not allowed, (2)  `out` or `inout` argument direction is not allowed }
    /// - Note: Instead, you can connect `insertTextSignal` using the `connect(signal:)` methods
    static var insertTextSignal: EditableSignalName { .insertText }
    /// The `changed` signal is emitted at the end of a single
    /// user-visible operation on the contents of the `GtkEditable`.
    /// 
    /// E.g., a paste operation that replaces the contents of the
    /// selection will cause only one signal emission (even though it
    /// is implemented by first deleting the selection, then inserting
    /// the new content, and may cause multiple `notify::text` signals
    /// to be emitted).
    /// - Note: This represents the underlying `changed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `changed` signal is emitted
    @discardableResult @inlinable func onChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EditableRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<EditableRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EditableRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .changed,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `changed` signal for using the `connect(signal:)` methods
    static var changedSignal: EditableSignalName { .changed }
    
    /// This signal is emitted when text is deleted from
    /// the widget by the user. The default handler for
    /// this signal will normally be responsible for deleting
    /// the text, so by connecting to this signal and then
    /// stopping the signal with `g_signal_stop_emission()`, it
    /// is possible to modify the range of deleted text, or
    /// prevent it from being deleted entirely. The `start_pos`
    /// and `end_pos` parameters are interpreted as for
    /// `gtk_editable_delete_text()`.
    /// - Note: This represents the underlying `delete-text` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter startPos: the starting position
    /// - Parameter endPos: the end position
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `deleteText` signal is emitted
    @discardableResult @inlinable func onDeleteText(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EditableRef, _ startPos: Int, _ endPos: Int) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<EditableRef, Int, Int, Void>
        let cCallback: @convention(c) (gpointer, gint, gint, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EditableRef(raw: unownedSelf), Int(arg1), Int(arg2))
            return output
        }
        return connect(
            signal: .deleteText,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `delete-text` signal for using the `connect(signal:)` methods
    static var deleteTextSignal: EditableSignalName { .deleteText }
    
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
    /// - Note: This represents the underlying `notify::cursor-position` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyCursorPosition` signal is emitted
    @discardableResult @inlinable func onNotifyCursorPosition(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EditableRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EditableRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EditableRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyCursorPosition,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::cursor-position` signal for using the `connect(signal:)` methods
    static var notifyCursorPositionSignal: EditableSignalName { .notifyCursorPosition }
    
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
    /// - Note: This represents the underlying `notify::editable` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyEditable` signal is emitted
    @discardableResult @inlinable func onNotifyEditable(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EditableRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EditableRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EditableRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyEditable,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::editable` signal for using the `connect(signal:)` methods
    static var notifyEditableSignal: EditableSignalName { .notifyEditable }
    
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
    /// - Note: This represents the underlying `notify::enable-undo` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyEnableUndo` signal is emitted
    @discardableResult @inlinable func onNotifyEnableUndo(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EditableRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EditableRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EditableRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyEnableUndo,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::enable-undo` signal for using the `connect(signal:)` methods
    static var notifyEnableUndoSignal: EditableSignalName { .notifyEnableUndo }
    
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
    /// - Note: This represents the underlying `notify::max-width-chars` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyMaxWidthChars` signal is emitted
    @discardableResult @inlinable func onNotifyMaxWidthChars(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EditableRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EditableRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EditableRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyMaxWidthChars,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::max-width-chars` signal for using the `connect(signal:)` methods
    static var notifyMaxWidthCharsSignal: EditableSignalName { .notifyMaxWidthChars }
    
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
    /// - Note: This represents the underlying `notify::selection-bound` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifySelectionBound` signal is emitted
    @discardableResult @inlinable func onNotifySelectionBound(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EditableRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EditableRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EditableRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifySelectionBound,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::selection-bound` signal for using the `connect(signal:)` methods
    static var notifySelectionBoundSignal: EditableSignalName { .notifySelectionBound }
    
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
    /// - Note: This represents the underlying `notify::text` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyText` signal is emitted
    @discardableResult @inlinable func onNotifyText(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EditableRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EditableRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EditableRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyText,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::text` signal for using the `connect(signal:)` methods
    static var notifyTextSignal: EditableSignalName { .notifyText }
    
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
    /// - Note: This represents the underlying `notify::width-chars` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyWidthChars` signal is emitted
    @discardableResult @inlinable func onNotifyWidthChars(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EditableRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EditableRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EditableRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyWidthChars,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::width-chars` signal for using the `connect(signal:)` methods
    static var notifyWidthCharsSignal: EditableSignalName { .notifyWidthChars }
    
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
    /// - Note: This represents the underlying `notify::xalign` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyXalign` signal is emitted
    @discardableResult @inlinable func onNotifyXalign(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EditableRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EditableRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EditableRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyXalign,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::xalign` signal for using the `connect(signal:)` methods
    static var notifyXalignSignal: EditableSignalName { .notifyXalign }
    
}

// MARK: Editable Interface: EditableProtocol extension (methods and fields)
public extension EditableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEditable` instance.
    @inlinable var editable_ptr: UnsafeMutablePointer<GtkEditable>! { return ptr?.assumingMemoryBound(to: GtkEditable.self) }

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

    /// Undoes the setup done by `gtk_editable_init_delegate()`.
    /// 
    /// This is a helper function that should be called from dispose,
    /// before removing the delegate object.
    @inlinable func finishDelegate() {
        gtk_editable_finish_delegate(editable_ptr)
    
    }

    /// Gets the value set by `gtk_editable_set_alignment()`.
    @inlinable func getAlignment() -> CFloat {
        let rv = gtk_editable_get_alignment(editable_ptr)
        return rv
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

    /// Gets the `GtkEditable` that `editable` is delegating its
    /// implementation to. Typically, the delegate is a `GtkText` widget.
    @inlinable func getDelegate() -> EditableRef! {
        guard let rv = EditableRef(gconstpointer: gconstpointer(gtk_editable_get_delegate(editable_ptr))) else { return nil }
        return rv
    }

    /// Retrieves whether `editable` is editable.
    /// See `gtk_editable_set_editable()`.
    @inlinable func getEditable() -> Bool {
        let rv = ((gtk_editable_get_editable(editable_ptr)) != 0)
        return rv
    }

    /// Gets if undo/redo actions are enabled for `editable`
    @inlinable func getEnableUndo() -> Bool {
        let rv = ((gtk_editable_get_enable_undo(editable_ptr)) != 0)
        return rv
    }

    /// Retrieves the desired maximum width of `editable`, in characters.
    /// See `gtk_editable_set_max_width_chars()`.
    @inlinable func getMaxWidthChars() -> Int {
        let rv = Int(gtk_editable_get_max_width_chars(editable_ptr))
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

    /// Retrieves the selection bound of the editable.
    /// 
    /// `start_pos` will be filled with the start of the selection and
    /// `end_pos` with end. If no text was selected both will be identical
    /// and `false` will be returned.
    /// 
    /// Note that positions are specified in characters, not bytes.
    @inlinable func getSelectionBounds(startPos: UnsafeMutablePointer<gint>! = nil, endPos: UnsafeMutablePointer<gint>! = nil) -> Bool {
        let rv = ((gtk_editable_get_selection_bounds(editable_ptr, startPos, endPos)) != 0)
        return rv
    }

    /// Retrieves the contents of `editable`. The returned string is
    /// owned by GTK and must not be modified or freed.
    @inlinable func getText() -> String! {
        let rv = gtk_editable_get_text(editable_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the value set by `gtk_editable_set_width_chars()`.
    @inlinable func getWidthChars() -> Int {
        let rv = Int(gtk_editable_get_width_chars(editable_ptr))
        return rv
    }

    /// Sets up a delegate for `GtkEditable`, assuming that the
    /// get_delegate vfunc in the `GtkEditable` interface has been
    /// set up for the `editable`'s type.
    /// 
    /// This is a helper function that should be called in instance init,
    /// after creating the delegate object.
    @inlinable func initDelegate() {
        gtk_editable_init_delegate(editable_ptr)
    
    }

    /// Inserts `length` bytes of `text` into the contents of the
    /// widget, at position `position`.
    /// 
    /// Note that the position is in characters, not in bytes.
    /// The function updates `position` to point after the newly inserted text.
    @inlinable func insert(text: UnsafePointer<CChar>!, length: Int, position: UnsafeMutablePointer<gint>!) {
        gtk_editable_insert_text(editable_ptr, text, gint(length), position)
    
    }

    /// Selects a region of text.
    /// 
    /// The characters that are selected are those characters at positions
    /// from `start_pos` up to, but not including `end_pos`. If `end_pos` is
    /// negative, then the characters selected are those characters from
    /// `start_pos` to  the end of the text.
    /// 
    /// Note that positions are specified in characters, not bytes.
    @inlinable func selectRegion(startPos: Int, endPos: Int) {
        gtk_editable_select_region(editable_ptr, gint(startPos), gint(endPos))
    
    }

    /// Sets the alignment for the contents of the editable.
    /// 
    /// This controls the horizontal positioning of the contents when
    /// the displayed text is shorter than the width of the editable.
    @inlinable func setAlignment(xalign: CFloat) {
        gtk_editable_set_alignment(editable_ptr, xalign)
    
    }

    /// Determines if the user can edit the text
    /// in the editable widget or not.
    @inlinable func setEditable(isEditable: Bool) {
        gtk_editable_set_editable(editable_ptr, gboolean((isEditable) ? 1 : 0))
    
    }

    /// If enabled, changes to `editable` will be saved for undo/redo actions.
    /// 
    /// This results in an additional copy of text changes and are not stored in
    /// secure memory. As such, undo is forcefully disabled when `GtkText:visibility`
    /// is set to `false`.
    @inlinable func set(enableUndo: Bool) {
        gtk_editable_set_enable_undo(editable_ptr, gboolean((enableUndo) ? 1 : 0))
    
    }

    /// Sets the desired maximum width in characters of `editable`.
    @inlinable func setMaxWidthChars(nChars: Int) {
        gtk_editable_set_max_width_chars(editable_ptr, gint(nChars))
    
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

    /// Sets the text in the editable to the given value,
    /// replacing the current contents.
    @inlinable func set(text: UnsafePointer<CChar>!) {
        gtk_editable_set_text(editable_ptr, text)
    
    }

    /// Changes the size request of the editable to be about the
    /// right size for `n_chars` characters.
    /// 
    /// Note that it changes the size request, the size can still
    /// be affected by how you pack the widget into containers.
    /// If `n_chars` is -1, the size reverts to the default size.
    @inlinable func setWidthChars(nChars: Int) {
        gtk_editable_set_width_chars(editable_ptr, gint(nChars))
    
    }
    /// Gets the value set by `gtk_editable_set_alignment()`.
    @inlinable var alignment: CFloat {
        /// Gets the value set by `gtk_editable_set_alignment()`.
        get {
            let rv = gtk_editable_get_alignment(editable_ptr)
            return rv
        }
        /// Sets the alignment for the contents of the editable.
        /// 
        /// This controls the horizontal positioning of the contents when
        /// the displayed text is shorter than the width of the editable.
        nonmutating set {
            gtk_editable_set_alignment(editable_ptr, newValue)
        }
    }

    /// Gets the `GtkEditable` that `editable` is delegating its
    /// implementation to. Typically, the delegate is a `GtkText` widget.
    @inlinable var delegate: EditableRef! {
        /// Gets the `GtkEditable` that `editable` is delegating its
        /// implementation to. Typically, the delegate is a `GtkText` widget.
        get {
            guard let rv = EditableRef(gconstpointer: gconstpointer(gtk_editable_get_delegate(editable_ptr))) else { return nil }
            return rv
        }
    }

    @inlinable var editable: Bool {
        /// Retrieves whether `editable` is editable.
        /// See `gtk_editable_set_editable()`.
        get {
            let rv = ((gtk_editable_get_editable(editable_ptr)) != 0)
            return rv
        }
        /// Determines if the user can edit the text
        /// in the editable widget or not.
        nonmutating set {
            gtk_editable_set_editable(editable_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets if undo/redo actions are enabled for `editable`
    @inlinable var enableUndo: Bool {
        /// Gets if undo/redo actions are enabled for `editable`
        get {
            let rv = ((gtk_editable_get_enable_undo(editable_ptr)) != 0)
            return rv
        }
        /// If enabled, changes to `editable` will be saved for undo/redo actions.
        /// 
        /// This results in an additional copy of text changes and are not stored in
        /// secure memory. As such, undo is forcefully disabled when `GtkText:visibility`
        /// is set to `false`.
        nonmutating set {
            gtk_editable_set_enable_undo(editable_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Retrieves the desired maximum width of `editable`, in characters.
    /// See `gtk_editable_set_max_width_chars()`.
    @inlinable var maxWidthChars: Int {
        /// Retrieves the desired maximum width of `editable`, in characters.
        /// See `gtk_editable_set_max_width_chars()`.
        get {
            let rv = Int(gtk_editable_get_max_width_chars(editable_ptr))
            return rv
        }
        /// Sets the desired maximum width in characters of `editable`.
        nonmutating set {
            gtk_editable_set_max_width_chars(editable_ptr, gint(newValue))
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

    @inlinable var text: String! {
        /// Retrieves the contents of `editable`. The returned string is
        /// owned by GTK and must not be modified or freed.
        get {
            let rv = gtk_editable_get_text(editable_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the text in the editable to the given value,
        /// replacing the current contents.
        nonmutating set {
            gtk_editable_set_text(editable_ptr, newValue)
        }
    }

    /// Gets the value set by `gtk_editable_set_width_chars()`.
    @inlinable var widthChars: Int {
        /// Gets the value set by `gtk_editable_set_width_chars()`.
        get {
            let rv = Int(gtk_editable_get_width_chars(editable_ptr))
            return rv
        }
        /// Changes the size request of the editable to be about the
        /// right size for `n_chars` characters.
        /// 
        /// Note that it changes the size request, the size can still
        /// be affected by how you pack the widget into containers.
        /// If `n_chars` is -1, the size reverts to the default size.
        nonmutating set {
            gtk_editable_set_width_chars(editable_ptr, gint(newValue))
        }
    }


}



