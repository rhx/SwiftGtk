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

// MARK: - BooleanCellAccessible Class

/// The `BooleanCellAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkBooleanCellAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BooleanCellAccessible`.
/// Alternatively, use `BooleanCellAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol BooleanCellAccessibleProtocol: RendererCellAccessibleProtocol {
        /// Untyped pointer to the underlying `GtkBooleanCellAccessible` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkBooleanCellAccessible` instance.
    var boolean_cell_accessible_ptr: UnsafeMutablePointer<GtkBooleanCellAccessible>! { get }

}

/// The `BooleanCellAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkBooleanCellAccessible` instance.
/// It exposes methods that can operate on this data type through `BooleanCellAccessibleProtocol` conformance.
/// Use `BooleanCellAccessibleRef` only as an `unowned` reference to an existing `GtkBooleanCellAccessible` instance.
///

public struct BooleanCellAccessibleRef: BooleanCellAccessibleProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkBooleanCellAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `boolean_cell_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BooleanCellAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkBooleanCellAccessible>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkBooleanCellAccessible>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkBooleanCellAccessible>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkBooleanCellAccessible>?) {
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

    /// Reference intialiser for a related type that implements `BooleanCellAccessibleProtocol`
    @inlinable init<T: BooleanCellAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: BooleanCellAccessibleProtocol>(_ other: T) -> BooleanCellAccessibleRef { BooleanCellAccessibleRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessibleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessibleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessibleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessibleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessibleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `BooleanCellAccessible` type acts as a reference-counted owner of an underlying `GtkBooleanCellAccessible` instance.
/// It provides the methods that can operate on this data type through `BooleanCellAccessibleProtocol` conformance.
/// Use `BooleanCellAccessible` as a strong reference or owner of a `GtkBooleanCellAccessible` instance.
///

open class BooleanCellAccessible: RendererCellAccessible, BooleanCellAccessibleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BooleanCellAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkBooleanCellAccessible>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BooleanCellAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkBooleanCellAccessible>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BooleanCellAccessible` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BooleanCellAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BooleanCellAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkBooleanCellAccessible>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BooleanCellAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkBooleanCellAccessible>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkBooleanCellAccessible`.
    /// i.e., ownership is transferred to the `BooleanCellAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkBooleanCellAccessible>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `BooleanCellAccessibleProtocol`
    /// Will retain `GtkBooleanCellAccessible`.
    /// - Parameter other: an instance of a related type that implements `BooleanCellAccessibleProtocol`
    @inlinable public init<T: BooleanCellAccessibleProtocol>(booleanCellAccessible other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessibleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessibleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessibleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessibleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum BooleanCellAccessiblePropertyName: String, PropertyNameProtocol {
    case accessibleComponentLayer = "accessible-component-layer"
    case accessibleComponentMdiZorder = "accessible-component-mdi-zorder"
    case accessibleDescription = "accessible-description"
    case accessibleHypertextNlinks = "accessible-hypertext-nlinks"
    case accessibleName = "accessible-name"
    case accessibleParent = "accessible-parent"
    case accessibleRole = "accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case accessibleTableCaption = "accessible-table-caption"
    case accessibleTableCaptionObject = "accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case accessibleTableColumnDescription = "accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case accessibleTableColumnHeader = "accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case accessibleTableRowDescription = "accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case accessibleTableRowHeader = "accessible-table-row-header"
    case accessibleTableSummary = "accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case accessibleValue = "accessible-value"
    case renderer = "renderer"
    case widget = "widget"
}

public extension BooleanCellAccessibleProtocol {
    /// Bind a `BooleanCellAccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: BooleanCellAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a BooleanCellAccessible property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: BooleanCellAccessiblePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a BooleanCellAccessible property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: BooleanCellAccessiblePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum BooleanCellAccessibleSignalName: String, SignalNameProtocol {
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
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
    /// The signal "property-change" is emitted when an object's property
    /// value changes. `arg1` contains an `AtkPropertyValues` with the name
    /// and the new value of the property whose value has changed. Note
    /// that, as with GObject notify, getting this signal does not
    /// guarantee that the value of the property has actually changed; it
    /// may also be emitted when the setter of the property is called to
    /// reinstate the previous value.
    /// 
    /// Toolkit implementor note: ATK implementors should use
    /// `g_object_notify()` to emit property-changed
    /// notifications. `AtkObject::property`-changed is needed by the
    /// implementation of `atk_add_global_event_listener()` because GObject
    /// notify doesn't support emission hooks.
    case propertyChange = "property-change"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The "visible-data-changed" signal is emitted when the visual
    /// appearance of the object changed.
    case visibleDataChanged = "visible-data-changed"
    case notifyAccessibleComponentLayer = "notify::accessible-component-layer"
    case notifyAccessibleComponentMdiZorder = "notify::accessible-component-mdi-zorder"
    case notifyAccessibleDescription = "notify::accessible-description"
    case notifyAccessibleHypertextNlinks = "notify::accessible-hypertext-nlinks"
    case notifyAccessibleName = "notify::accessible-name"
    case notifyAccessibleParent = "notify::accessible-parent"
    case notifyAccessibleRole = "notify::accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case notifyAccessibleTableCaption = "notify::accessible-table-caption"
    case notifyAccessibleTableCaptionObject = "notify::accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case notifyAccessibleTableColumnDescription = "notify::accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case notifyAccessibleTableColumnHeader = "notify::accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case notifyAccessibleTableRowDescription = "notify::accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case notifyAccessibleTableRowHeader = "notify::accessible-table-row-header"
    case notifyAccessibleTableSummary = "notify::accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case notifyAccessibleValue = "notify::accessible-value"
    case notifyRenderer = "notify::renderer"
    case notifyWidget = "notify::widget"
}

// MARK: BooleanCellAccessible has no signals
// MARK: BooleanCellAccessible Class: BooleanCellAccessibleProtocol extension (methods and fields)
public extension BooleanCellAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBooleanCellAccessible` instance.
    @inlinable var boolean_cell_accessible_ptr: UnsafeMutablePointer<GtkBooleanCellAccessible>! { return ptr?.assumingMemoryBound(to: GtkBooleanCellAccessible.self) }


    @inlinable var parent: GtkRendererCellAccessible {
        get {
            let rv = boolean_cell_accessible_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - Box Class

/// The `BoxProtocol` protocol exposes the methods and properties of an underlying `GtkBox` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Box`.
/// Alternatively, use `BoxRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The GtkBox widget arranges child widgets into a single row or column,
/// depending upon the value of its `GtkOrientable:orientation` property. Within
/// the other dimension, all children are allocated the same size. Of course,
/// the `GtkWidget:halign` and `GtkWidget:valign` properties can be used on
/// the children to influence their allocation.
/// 
/// GtkBox uses a notion of packing. Packing refers
/// to adding widgets with reference to a particular position in a
/// `GtkContainer`. For a GtkBox, there are two reference positions: the
/// start and the end of the box.
/// For a vertical `GtkBox`, the start is defined as the top of the box and
/// the end is defined as the bottom. For a horizontal `GtkBox` the start
/// is defined as the left side and the end is defined as the right side.
/// 
/// Use repeated calls to `gtk_box_pack_start()` to pack widgets into a
/// GtkBox from start to end. Use `gtk_box_pack_end()` to add widgets from
/// end to start. You may intersperse these calls and add widgets from
/// both ends of the same GtkBox.
/// 
/// Because GtkBox is a `GtkContainer`, you may also use `gtk_container_add()`
/// to insert widgets into the box, and they will be packed with the default
/// values for expand and fill child properties. Use `gtk_container_remove()`
/// to remove widgets from the GtkBox.
/// 
/// Use `gtk_box_set_homogeneous()` to specify whether or not all children
/// of the GtkBox are forced to get the same amount of space.
/// 
/// Use `gtk_box_set_spacing()` to determine how much space will be
/// minimally placed between all children in the GtkBox. Note that
/// spacing is added between the children, while
/// padding added by `gtk_box_pack_start()` or `gtk_box_pack_end()` is added
/// on either side of the widget it belongs to.
/// 
/// Use `gtk_box_reorder_child()` to move a GtkBox child to a different
/// place in the box.
/// 
/// Use `gtk_box_set_child_packing()` to reset the expand,
/// fill and padding child properties.
/// Use `gtk_box_query_child_packing()` to query these fields.
/// 
/// # CSS nodes
/// 
/// GtkBox uses a single CSS node with name box.
/// 
/// In horizontal orientation, the nodes of the children are always arranged
/// from left to right. So :first-child will always select the leftmost child,
/// regardless of text direction.
public protocol BoxProtocol: ContainerProtocol, OrientableProtocol {
        /// Untyped pointer to the underlying `GtkBox` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkBox` instance.
    var box_ptr: UnsafeMutablePointer<GtkBox>! { get }

}

/// The `BoxRef` type acts as a lightweight Swift reference to an underlying `GtkBox` instance.
/// It exposes methods that can operate on this data type through `BoxProtocol` conformance.
/// Use `BoxRef` only as an `unowned` reference to an existing `GtkBox` instance.
///
/// The GtkBox widget arranges child widgets into a single row or column,
/// depending upon the value of its `GtkOrientable:orientation` property. Within
/// the other dimension, all children are allocated the same size. Of course,
/// the `GtkWidget:halign` and `GtkWidget:valign` properties can be used on
/// the children to influence their allocation.
/// 
/// GtkBox uses a notion of packing. Packing refers
/// to adding widgets with reference to a particular position in a
/// `GtkContainer`. For a GtkBox, there are two reference positions: the
/// start and the end of the box.
/// For a vertical `GtkBox`, the start is defined as the top of the box and
/// the end is defined as the bottom. For a horizontal `GtkBox` the start
/// is defined as the left side and the end is defined as the right side.
/// 
/// Use repeated calls to `gtk_box_pack_start()` to pack widgets into a
/// GtkBox from start to end. Use `gtk_box_pack_end()` to add widgets from
/// end to start. You may intersperse these calls and add widgets from
/// both ends of the same GtkBox.
/// 
/// Because GtkBox is a `GtkContainer`, you may also use `gtk_container_add()`
/// to insert widgets into the box, and they will be packed with the default
/// values for expand and fill child properties. Use `gtk_container_remove()`
/// to remove widgets from the GtkBox.
/// 
/// Use `gtk_box_set_homogeneous()` to specify whether or not all children
/// of the GtkBox are forced to get the same amount of space.
/// 
/// Use `gtk_box_set_spacing()` to determine how much space will be
/// minimally placed between all children in the GtkBox. Note that
/// spacing is added between the children, while
/// padding added by `gtk_box_pack_start()` or `gtk_box_pack_end()` is added
/// on either side of the widget it belongs to.
/// 
/// Use `gtk_box_reorder_child()` to move a GtkBox child to a different
/// place in the box.
/// 
/// Use `gtk_box_set_child_packing()` to reset the expand,
/// fill and padding child properties.
/// Use `gtk_box_query_child_packing()` to query these fields.
/// 
/// # CSS nodes
/// 
/// GtkBox uses a single CSS node with name box.
/// 
/// In horizontal orientation, the nodes of the children are always arranged
/// from left to right. So :first-child will always select the leftmost child,
/// regardless of text direction.
public struct BoxRef: BoxProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkBox` instance.
    /// For type-safe access, use the generated, typed pointer `box_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BoxRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkBox>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkBox>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkBox>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkBox>?) {
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

    /// Reference intialiser for a related type that implements `BoxProtocol`
    @inlinable init<T: BoxProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: BoxProtocol>(_ other: T) -> BoxRef { BoxRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkBox`.
    @inlinable init( orientation: GtkOrientation, spacing: Int) {
        let rv = gtk_box_new(orientation, gint(spacing))
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `Box` type acts as a reference-counted owner of an underlying `GtkBox` instance.
/// It provides the methods that can operate on this data type through `BoxProtocol` conformance.
/// Use `Box` as a strong reference or owner of a `GtkBox` instance.
///
/// The GtkBox widget arranges child widgets into a single row or column,
/// depending upon the value of its `GtkOrientable:orientation` property. Within
/// the other dimension, all children are allocated the same size. Of course,
/// the `GtkWidget:halign` and `GtkWidget:valign` properties can be used on
/// the children to influence their allocation.
/// 
/// GtkBox uses a notion of packing. Packing refers
/// to adding widgets with reference to a particular position in a
/// `GtkContainer`. For a GtkBox, there are two reference positions: the
/// start and the end of the box.
/// For a vertical `GtkBox`, the start is defined as the top of the box and
/// the end is defined as the bottom. For a horizontal `GtkBox` the start
/// is defined as the left side and the end is defined as the right side.
/// 
/// Use repeated calls to `gtk_box_pack_start()` to pack widgets into a
/// GtkBox from start to end. Use `gtk_box_pack_end()` to add widgets from
/// end to start. You may intersperse these calls and add widgets from
/// both ends of the same GtkBox.
/// 
/// Because GtkBox is a `GtkContainer`, you may also use `gtk_container_add()`
/// to insert widgets into the box, and they will be packed with the default
/// values for expand and fill child properties. Use `gtk_container_remove()`
/// to remove widgets from the GtkBox.
/// 
/// Use `gtk_box_set_homogeneous()` to specify whether or not all children
/// of the GtkBox are forced to get the same amount of space.
/// 
/// Use `gtk_box_set_spacing()` to determine how much space will be
/// minimally placed between all children in the GtkBox. Note that
/// spacing is added between the children, while
/// padding added by `gtk_box_pack_start()` or `gtk_box_pack_end()` is added
/// on either side of the widget it belongs to.
/// 
/// Use `gtk_box_reorder_child()` to move a GtkBox child to a different
/// place in the box.
/// 
/// Use `gtk_box_set_child_packing()` to reset the expand,
/// fill and padding child properties.
/// Use `gtk_box_query_child_packing()` to query these fields.
/// 
/// # CSS nodes
/// 
/// GtkBox uses a single CSS node with name box.
/// 
/// In horizontal orientation, the nodes of the children are always arranged
/// from left to right. So :first-child will always select the leftmost child,
/// regardless of text direction.
open class Box: Container, BoxProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Box` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkBox>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Box` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkBox>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Box` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Box` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Box` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkBox>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Box` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkBox>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkBox`.
    /// i.e., ownership is transferred to the `Box` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkBox>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `BoxProtocol`
    /// Will retain `GtkBox`.
    /// - Parameter other: an instance of a related type that implements `BoxProtocol`
    @inlinable public init<T: BoxProtocol>(box other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkBox`.
    @inlinable public init( orientation: GtkOrientation, spacing: Int) {
        let rv = gtk_box_new(orientation, gint(spacing))
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum BoxPropertyName: String, PropertyNameProtocol {
    case appPaintable = "app-paintable"
    case baselinePosition = "baseline-position"
    case borderWidth = "border-width"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case child = "child"
    case compositeChild = "composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
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
    case homogeneous = "homogeneous"
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
    case resizeMode = "resize-mode"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    case spacing = "spacing"
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

public extension BoxProtocol {
    /// Bind a `BoxPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: BoxPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Box property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: BoxPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Box property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: BoxPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum BoxSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    case add = "add"
    /// The `button`-press-event signal will be emitted when a button
    /// (typically from a mouse) is pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonPressEvent = "button-press-event"
    /// The `button`-release-event signal will be emitted when a button
    /// (typically from a mouse) is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonReleaseEvent = "button-release-event"
    /// Determines whether an accelerator that activates the signal
    /// identified by `signal_id` can currently be activated.
    /// This signal is present to allow applications and derived
    /// widgets to override the default `GtkWidget` handling
    /// for determining whether an accelerator can be activated.
    case canActivateAccel = "can-activate-accel"
    case checkResize = "check-resize"
    /// The `child`-notify signal is emitted for each
    /// [child property](#child-properties)  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// The `composited`-changed signal is emitted when the composited
    /// status of `widgets` screen changes.
    /// See `gdk_screen_is_composited()`.
    ///
    /// **composited-changed is deprecated:**
    /// Use GdkScreen::composited-changed instead.
    case compositedChanged = "composited-changed"
    /// The `configure`-event signal will be emitted when the size, position or
    /// stacking of the `widget`'s window has changed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case configureEvent = "configure-event"
    /// Emitted when a redirected window belonging to `widget` gets drawn into.
    /// The region/area members of the event shows what area of the redirected
    /// drawable was drawn into.
    case damageEvent = "damage-event"
    /// The `delete`-event signal is emitted if a user requests that
    /// a toplevel window is closed. The default handler for this signal
    /// destroys the window. Connecting `gtk_widget_hide_on_delete()` to
    /// this signal will cause the window to be hidden instead, so that
    /// it can later be shown again without reconstructing it.
    case deleteEvent = "delete-event"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The `destroy`-event signal is emitted when a `GdkWindow` is destroyed.
    /// You rarely get this signal, because most widgets disconnect themselves
    /// from their window before they destroy it, so no widget owns the
    /// window at destroy time.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case destroyEvent = "destroy-event"
    /// The `direction`-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The `drag`-begin signal is emitted on the drag source when a drag is
    /// started. A typical reason to connect to this signal is to set up a
    /// custom drag icon with e.g. `gtk_drag_source_set_icon_pixbuf()`.
    /// 
    /// Note that some widgets set up a drag icon in the default handler of
    /// this signal, so you may have to use `g_signal_connect_after()` to
    /// override what the default handler did.
    case dragBegin = "drag-begin"
    /// The `drag`-data-delete signal is emitted on the drag source when a drag
    /// with the action `GDK_ACTION_MOVE` is successfully completed. The signal
    /// handler is responsible for deleting the data that has been dropped. What
    /// "delete" means depends on the context of the drag operation.
    case dragDataDelete = "drag-data-delete"
    /// The `drag`-data-get signal is emitted on the drag source when the drop
    /// site requests the data which is dragged. It is the responsibility of
    /// the signal handler to fill `data` with the data in the format which
    /// is indicated by `info`. See `gtk_selection_data_set()` and
    /// `gtk_selection_data_set_text()`.
    case dragDataGet = "drag-data-get"
    /// The `drag`-data-received signal is emitted on the drop site when the
    /// dragged data has been received. If the data was received in order to
    /// determine whether the drop will be accepted, the handler is expected
    /// to call `gdk_drag_status()` and not finish the drag.
    /// If the data was received in response to a `GtkWidget::drag`-drop signal
    /// (and this is the last target to be received), the handler for this
    /// signal is expected to process the received data and then call
    /// `gtk_drag_finish()`, setting the `success` parameter depending on
    /// whether the data was processed successfully.
    /// 
    /// Applications must create some means to determine why the signal was emitted
    /// and therefore whether to call `gdk_drag_status()` or `gtk_drag_finish()`.
    /// 
    /// The handler may inspect the selected action with
    /// `gdk_drag_context_get_selected_action()` before calling
    /// `gtk_drag_finish()`, e.g. to implement `GDK_ACTION_ASK` as
    /// shown in the following example:
    /// (C Language Example):
    /// ```C
    /// void
    /// drag_data_received (GtkWidget          *widget,
    ///                     GdkDragContext     *context,
    ///                     gint                x,
    ///                     gint                y,
    ///                     GtkSelectionData   *data,
    ///                     guint               info,
    ///                     guint               time)
    /// {
    ///   if ((data->length >= 0) && (data->format == 8))
    ///     {
    ///       GdkDragAction action;
    /// 
    ///       // handle data here
    /// 
    ///       action = gdk_drag_context_get_selected_action (context);
    ///       if (action == GDK_ACTION_ASK)
    ///         {
    ///           GtkWidget *dialog;
    ///           gint response;
    /// 
    ///           dialog = gtk_message_dialog_new (NULL,
    ///                                            GTK_DIALOG_MODAL |
    ///                                            GTK_DIALOG_DESTROY_WITH_PARENT,
    ///                                            GTK_MESSAGE_INFO,
    ///                                            GTK_BUTTONS_YES_NO,
    ///                                            "Move the data ?\n");
    ///           response = gtk_dialog_run (GTK_DIALOG (dialog));
    ///           gtk_widget_destroy (dialog);
    /// 
    ///           if (response == GTK_RESPONSE_YES)
    ///             action = GDK_ACTION_MOVE;
    ///           else
    ///             action = GDK_ACTION_COPY;
    ///          }
    /// 
    ///       gtk_drag_finish (context, TRUE, action == GDK_ACTION_MOVE, time);
    ///     }
    ///   else
    ///     gtk_drag_finish (context, FALSE, FALSE, time);
    ///  }
    /// ```
    /// 
    case dragDataReceived = "drag-data-received"
    /// The `drag`-drop signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the cursor position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// Otherwise, the handler returns `true`. In this case, the handler must
    /// ensure that `gtk_drag_finish()` is called to let the source know that
    /// the drop is done. The call to `gtk_drag_finish()` can be done either
    /// directly or in a `GtkWidget::drag`-data-received handler which gets
    /// triggered by calling `gtk_drag_get_data()` to receive the data for one
    /// or more of the supported targets.
    case dragDrop = "drag-drop"
    /// The `drag`-end signal is emitted on the drag source when a drag is
    /// finished.  A typical reason to connect to this signal is to undo
    /// things done in `GtkWidget::drag`-begin.
    case dragEnd = "drag-end"
    /// The `drag`-failed signal is emitted on the drag source when a drag has
    /// failed. The signal handler may hook custom code to handle a failed DnD
    /// operation based on the type of error, it returns `true` is the failure has
    /// been already handled (not showing the default "drag operation failed"
    /// animation), otherwise it returns `false`.
    case dragFailed = "drag-failed"
    /// The `drag`-leave signal is emitted on the drop site when the cursor
    /// leaves the widget. A typical reason to connect to this signal is to
    /// undo things done in `GtkWidget::drag`-motion, e.g. undo highlighting
    /// with `gtk_drag_unhighlight()`.
    /// 
    /// 
    /// Likewise, the `GtkWidget::drag`-leave signal is also emitted before the
    /// `drag`-drop signal, for instance to allow cleaning up of a preview item
    /// created in the `GtkWidget::drag`-motion signal handler.
    case dragLeave = "drag-leave"
    /// The `drag`-motion signal is emitted on the drop site when the user
    /// moves the cursor over the widget during a drag. The signal handler
    /// must determine whether the cursor position is in a drop zone or not.
    /// If it is not in a drop zone, it returns `false` and no further processing
    /// is necessary. Otherwise, the handler returns `true`. In this case, the
    /// handler is responsible for providing the necessary information for
    /// displaying feedback to the user, by calling `gdk_drag_status()`.
    /// 
    /// If the decision whether the drop will be accepted or rejected can't be
    /// made based solely on the cursor position and the type of the data, the
    /// handler may inspect the dragged data by calling `gtk_drag_get_data()` and
    /// defer the `gdk_drag_status()` call to the `GtkWidget::drag`-data-received
    /// handler. Note that you must pass `GTK_DEST_DEFAULT_DROP`,
    /// `GTK_DEST_DEFAULT_MOTION` or `GTK_DEST_DEFAULT_ALL` to `gtk_drag_dest_set()`
    /// when using the drag-motion signal that way.
    /// 
    /// Also note that there is no drag-enter signal. The drag receiver has to
    /// keep track of whether he has received any drag-motion signals since the
    /// last `GtkWidget::drag`-leave and if not, treat the drag-motion signal as
    /// an "enter" signal. Upon an "enter", the handler will typically highlight
    /// the drop site with `gtk_drag_highlight()`.
    /// (C Language Example):
    /// ```C
    /// static void
    /// drag_motion (GtkWidget      *widget,
    ///              GdkDragContext *context,
    ///              gint            x,
    ///              gint            y,
    ///              guint           time)
    /// {
    ///   GdkAtom target;
    /// 
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (!private_data->drag_highlight)
    ///    {
    ///      private_data->drag_highlight = 1;
    ///      gtk_drag_highlight (widget);
    ///    }
    /// 
    ///   target = gtk_drag_dest_find_target (widget, context, NULL);
    ///   if (target == GDK_NONE)
    ///     gdk_drag_status (context, 0, time);
    ///   else
    ///    {
    ///      private_data->pending_status
    ///         = gdk_drag_context_get_suggested_action (context);
    ///      gtk_drag_get_data (widget, context, target, time);
    ///    }
    /// 
    ///   return TRUE;
    /// }
    /// 
    /// static void
    /// drag_data_received (GtkWidget        *widget,
    ///                     GdkDragContext   *context,
    ///                     gint              x,
    ///                     gint              y,
    ///                     GtkSelectionData *selection_data,
    ///                     guint             info,
    ///                     guint             time)
    /// {
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (private_data->suggested_action)
    ///    {
    ///      private_data->suggested_action = 0;
    /// 
    ///      // We are getting this data due to a request in drag_motion,
    ///      // rather than due to a request in drag_drop, so we are just
    ///      // supposed to call gdk_drag_status(), not actually paste in
    ///      // the data.
    /// 
    ///      str = gtk_selection_data_get_text (selection_data);
    ///      if (!data_is_acceptable (str))
    ///        gdk_drag_status (context, 0, time);
    ///      else
    ///        gdk_drag_status (context,
    ///                         private_data->suggested_action,
    ///                         time);
    ///    }
    ///   else
    ///    {
    ///      // accept the drop
    ///    }
    /// }
    /// ```
    /// 
    case dragMotion = "drag-motion"
    /// This signal is emitted when a widget is supposed to render itself.
    /// The `widget`'s top left corner must be painted at the origin of
    /// the passed in context and be sized to the values returned by
    /// `gtk_widget_get_allocated_width()` and
    /// `gtk_widget_get_allocated_height()`.
    /// 
    /// Signal handlers connected to this signal can modify the cairo
    /// context passed as `cr` in any way they like and don't need to
    /// restore it. The signal emission takes care of calling `cairo_save()`
    /// before and `cairo_restore()` after invoking the handler.
    /// 
    /// The signal handler will get a `cr` with a clip region already set to the
    /// widget's dirty region, i.e. to the area that needs repainting.  Complicated
    /// widgets that want to avoid redrawing themselves completely can get the full
    /// extents of the clip region with `gdk_cairo_get_clip_rectangle()`, or they can
    /// get a finer-grained representation of the dirty region with
    /// `cairo_copy_clip_rectangle_list()`.
    case draw = "draw"
    /// The `enter`-notify-event will be emitted when the pointer enters
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_ENTER_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case enterNotifyEvent = "enter-notify-event"
    /// The GTK+ main loop will emit three signals for each GDK event delivered
    /// to a widget: one generic `event` signal, another, more specific,
    /// signal that matches the type of event delivered (e.g.
    /// `GtkWidget::key`-press-event) and finally a generic
    /// `GtkWidget::event`-after signal.
    case event = "event"
    /// After the emission of the `GtkWidget::event` signal and (optionally)
    /// the second more specific signal, `event`-after will be emitted
    /// regardless of the previous two signals handlers return values.
    case eventAfter = "event-after"
    case focus = "focus"
    /// The `focus`-in-event signal will be emitted when the keyboard focus
    /// enters the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusInEvent = "focus-in-event"
    /// The `focus`-out-event signal will be emitted when the keyboard focus
    /// leaves the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusOutEvent = "focus-out-event"
    /// Emitted when a pointer or keyboard grab on a window belonging
    /// to `widget` gets broken.
    /// 
    /// On X11, this happens when the grab window becomes unviewable
    /// (i.e. it or one of its ancestors is unmapped), or if the same
    /// application grabs the pointer or keyboard again.
    case grabBrokenEvent = "grab-broken-event"
    case grabFocus = "grab-focus"
    /// The `grab`-notify signal is emitted when a widget becomes
    /// shadowed by a GTK+ grab (not a pointer or keyboard grab) on
    /// another widget, or when it becomes unshadowed due to a grab
    /// being removed.
    /// 
    /// A widget is shadowed by a `gtk_grab_add()` when the topmost
    /// grab widget in the grab stack of its window group is not
    /// its ancestor.
    case grabNotify = "grab-notify"
    /// The `hide` signal is emitted when `widget` is hidden, for example with
    /// `gtk_widget_hide()`.
    case hide = "hide"
    /// The `hierarchy`-changed signal is emitted when the
    /// anchored state of a widget changes. A widget is
    /// “anchored” when its toplevel
    /// ancestor is a `GtkWindow`. This signal is emitted when
    /// a widget changes from un-anchored to anchored or vice-versa.
    case hierarchyChanged = "hierarchy-changed"
    /// The `key`-press-event signal is emitted when a key is pressed. The signal
    /// emission will reoccur at the key-repeat rate when the key is kept pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyPressEvent = "key-press-event"
    /// The `key`-release-event signal is emitted when a key is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyReleaseEvent = "key-release-event"
    /// Gets emitted if keyboard navigation fails.
    /// See `gtk_widget_keynav_failed()` for details.
    case keynavFailed = "keynav-failed"
    /// The `leave`-notify-event will be emitted when the pointer leaves
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_LEAVE_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case leaveNotifyEvent = "leave-notify-event"
    /// The `map` signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// `gtk_widget_set_visible()`) and all its parents up to the toplevel widget
    /// are also visible. Once the map has occurred, `GtkWidget::map`-event will
    /// be emitted.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget::unmap`.
    case map = "map"
    /// The `map`-event signal will be emitted when the `widget`'s window is
    /// mapped. A window is mapped when it becomes visible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case mapEvent = "map-event"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// The `motion`-notify-event signal is emitted when the pointer moves
    /// over the widget's `GdkWindow`.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_POINTER_MOTION_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case motionNotifyEvent = "motion-notify-event"
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
    /// The `parent`-set signal is emitted when a new parent
    /// has been set on a widget.
    case parentSet = "parent-set"
    /// This signal gets emitted whenever a widget should pop up a context
    /// menu. This usually happens through the standard key binding mechanism;
    /// by pressing a certain key while a widget is focused, the user can cause
    /// the widget to pop up a menu.  For example, the `GtkEntry` widget creates
    /// a menu with clipboard commands. See the
    /// [Popup Menu Migration Checklist](#checklist-popup-menu)
    /// for an example of how to use this signal.
    case popupMenu = "popup-menu"
    /// The `property`-notify-event signal will be emitted when a property on
    /// the `widget`'s window has been changed or deleted.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROPERTY_CHANGE_MASK` mask.
    case propertyNotifyEvent = "property-notify-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_IN_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityInEvent = "proximity-in-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_OUT_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityOutEvent = "proximity-out-event"
    /// Emitted when `GtkWidget:has`-tooltip is `true` and the hover timeout
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
    /// `GdkWindow`, which means that `gtk_widget_realize()` has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    case remove = "remove"
    /// The `screen`-changed signal gets emitted when the
    /// screen of a widget has changed.
    case screenChanged = "screen-changed"
    /// The `scroll`-event signal is emitted when a button in the 4 to 7
    /// range is pressed. Wheel mice are usually configured to generate
    /// button press events for buttons 4 and 5 when the wheel is turned.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_SCROLL_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case scrollEvent = "scroll-event"
    /// The `selection`-clear-event signal will be emitted when the
    /// the `widget`'s window has lost ownership of a selection.
    case selectionClearEvent = "selection-clear-event"
    case selectionGet = "selection-get"
    case selectionNotifyEvent = "selection-notify-event"
    case selectionReceived = "selection-received"
    /// The `selection`-request-event signal will be emitted when
    /// another client requests ownership of the selection owned by
    /// the `widget`'s window.
    case selectionRequestEvent = "selection-request-event"
    case setFocusChild = "set-focus-child"
    /// The `show` signal is emitted when `widget` is shown, for example with
    /// `gtk_widget_show()`.
    case show = "show"
    case showHelp = "show-help"
    case sizeAllocate = "size-allocate"
    /// The `state`-changed signal is emitted when the widget state changes.
    /// See `gtk_widget_get_state()`.
    ///
    /// **state-changed is deprecated:**
    /// Use #GtkWidget::state-flags-changed instead.
    case stateChanged = "state-changed"
    /// The `state`-flags-changed signal is emitted when the widget state
    /// changes, see `gtk_widget_get_state_flags()`.
    case stateFlagsChanged = "state-flags-changed"
    /// The `style`-set signal is emitted when a new style has been set
    /// on a widget. Note that style-modifying functions like
    /// `gtk_widget_modify_base()` also cause this signal to be emitted.
    /// 
    /// Note that this signal is emitted for changes to the deprecated
    /// `GtkStyle`. To track changes to the `GtkStyleContext` associated
    /// with a widget, use the `GtkWidget::style`-updated signal.
    ///
    /// **style-set is deprecated:**
    /// Use the #GtkWidget::style-updated signal
    case styleSet = "style-set"
    /// The `style`-updated signal is a convenience signal that is emitted when the
    /// `GtkStyleContext::changed` signal is emitted on the `widget`'s associated
    /// `GtkStyleContext` as returned by `gtk_widget_get_style_context()`.
    /// 
    /// Note that style-modifying functions like `gtk_widget_override_color()` also
    /// cause this signal to be emitted.
    case styleUpdated = "style-updated"
    case touchEvent = "touch-event"
    /// The `unmap` signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The `unmap`-event signal will be emitted when the `widget`'s window is
    /// unmapped. A window is unmapped when it becomes invisible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case unmapEvent = "unmap-event"
    /// The `unrealize` signal is emitted when the `GdkWindow` associated with
    /// `widget` is destroyed, which means that `gtk_widget_unrealize()` has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
    /// The `visibility`-notify-event will be emitted when the `widget`'s
    /// window is obscured or unobscured.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_VISIBILITY_NOTIFY_MASK` mask.
    ///
    /// **visibility-notify-event is deprecated:**
    /// Modern composited windowing systems with pervasive
    ///     transparency make it impossible to track the visibility of a window
    ///     reliably, so this signal can not be guaranteed to provide useful
    ///     information.
    case visibilityNotifyEvent = "visibility-notify-event"
    /// The `window`-state-event will be emitted when the state of the
    /// toplevel window associated to the `widget` changes.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable
    /// this mask automatically for all new windows.
    case windowStateEvent = "window-state-event"
    case notifyAppPaintable = "notify::app-paintable"
    case notifyBaselinePosition = "notify::baseline-position"
    case notifyBorderWidth = "notify::border-width"
    case notifyCanDefault = "notify::can-default"
    case notifyCanFocus = "notify::can-focus"
    case notifyChild = "notify::child"
    case notifyCompositeChild = "notify::composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case notifyDoubleBuffered = "notify::double-buffered"
    case notifyEvents = "notify::events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case notifyExpand = "notify::expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case notifyHalign = "notify::halign"
    case notifyHasDefault = "notify::has-default"
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case notifyHexpandSet = "notify::hexpand-set"
    case notifyHomogeneous = "notify::homogeneous"
    case notifyIsFocus = "notify::is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case notifyMargin = "notify::margin"
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
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case notifyMarginLeft = "notify::margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case notifyMarginRight = "notify::margin-right"
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
    case notifyName = "notify::name"
    case notifyNoShowAll = "notify::no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case notifyOpacity = "notify::opacity"
    case notifyParent = "notify::parent"
    case notifyReceivesDefault = "notify::receives-default"
    case notifyResizeMode = "notify::resize-mode"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
    case notifySpacing = "notify::spacing"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case notifyStyle = "notify::style"
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
    case notifyTooltipMarkup = "notify::tooltip-markup"
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
    case notifyTooltipText = "notify::tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    case notifyWidthRequest = "notify::width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case notifyWindow = "notify::window"
}

// MARK: Box has no signals
// MARK: Box Class: BoxProtocol extension (methods and fields)
public extension BoxProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBox` instance.
    @inlinable var box_ptr: UnsafeMutablePointer<GtkBox>! { return ptr?.assumingMemoryBound(to: GtkBox.self) }

    /// Gets the value set by `gtk_box_set_baseline_position()`.
    @inlinable func getBaselinePosition() -> GtkBaselinePosition {
        let rv = gtk_box_get_baseline_position(box_ptr)
        return rv
    }

    /// Retrieves the center widget of the box.
    @inlinable func getCenterWidget() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_box_get_center_widget(box_ptr))) else { return nil }
        return rv
    }

    /// Returns whether the box is homogeneous (all children are the
    /// same size). See `gtk_box_set_homogeneous()`.
    @inlinable func getHomogeneous() -> Bool {
        let rv = ((gtk_box_get_homogeneous(box_ptr)) != 0)
        return rv
    }

    /// Gets the value set by `gtk_box_set_spacing()`.
    @inlinable func getSpacing() -> Int {
        let rv = Int(gtk_box_get_spacing(box_ptr))
        return rv
    }

    /// Adds `child` to `box`, packed with reference to the end of `box`.
    /// The `child` is packed after (away from end of) any other child
    /// packed with reference to the end of `box`.
    @inlinable func packEnd<WidgetT: WidgetProtocol>(child: WidgetT, expand: Bool, fill: Bool, padding: Int) {
        gtk_box_pack_end(box_ptr, child.widget_ptr, gboolean((expand) ? 1 : 0), gboolean((fill) ? 1 : 0), guint(padding))
    
    }

    /// Adds `child` to `box`, packed with reference to the start of `box`.
    /// The `child` is packed after any other child packed with reference
    /// to the start of `box`.
    @inlinable func packStart<WidgetT: WidgetProtocol>(child: WidgetT, expand: Bool, fill: Bool, padding: Int) {
        gtk_box_pack_start(box_ptr, child.widget_ptr, gboolean((expand) ? 1 : 0), gboolean((fill) ? 1 : 0), guint(padding))
    
    }

    /// Obtains information about how `child` is packed into `box`.
    @inlinable func queryChildPacking<WidgetT: WidgetProtocol>(child: WidgetT, expand: UnsafeMutablePointer<gboolean>!, fill: UnsafeMutablePointer<gboolean>!, padding: UnsafeMutablePointer<guint>!, packType: UnsafeMutablePointer<GtkPackType>!) {
        gtk_box_query_child_packing(box_ptr, child.widget_ptr, expand, fill, padding, packType)
    
    }

    /// Moves `child` to a new `position` in the list of `box` children.
    /// The list contains widgets packed `GTK_PACK_START`
    /// as well as widgets packed `GTK_PACK_END`, in the order that these
    /// widgets were added to `box`.
    /// 
    /// A widget’s position in the `box` children list determines where
    /// the widget is packed into `box`.  A child widget at some position
    /// in the list will be packed just after all other widgets of the
    /// same packing type that appear earlier in the list.
    @inlinable func reorder<WidgetT: WidgetProtocol>(child: WidgetT, position: Int) {
        gtk_box_reorder_child(box_ptr, child.widget_ptr, gint(position))
    
    }

    /// Sets the baseline position of a box. This affects
    /// only horizontal boxes with at least one baseline aligned
    /// child. If there is more vertical space available than requested,
    /// and the baseline is not allocated by the parent then
    /// `position` is used to allocate the baseline wrt the
    /// extra space available.
    @inlinable func setBaseline(position: GtkBaselinePosition) {
        gtk_box_set_baseline_position(box_ptr, position)
    
    }

    /// Sets a center widget; that is a child widget that will be
    /// centered with respect to the full width of the box, even
    /// if the children at either side take up different amounts
    /// of space.
    @inlinable func setCenter(widget: WidgetRef? = nil) {
        gtk_box_set_center_widget(box_ptr, widget?.widget_ptr)
    
    }
    /// Sets a center widget; that is a child widget that will be
    /// centered with respect to the full width of the box, even
    /// if the children at either side take up different amounts
    /// of space.
    @inlinable func setCenter<WidgetT: WidgetProtocol>(widget: WidgetT?) {
        gtk_box_set_center_widget(box_ptr, widget?.widget_ptr)
    
    }

    /// Sets the way `child` is packed into `box`.
    @inlinable func setChildPacking<WidgetT: WidgetProtocol>(child: WidgetT, expand: Bool, fill: Bool, padding: Int, packType: GtkPackType) {
        gtk_box_set_child_packing(box_ptr, child.widget_ptr, gboolean((expand) ? 1 : 0), gboolean((fill) ? 1 : 0), guint(padding), packType)
    
    }

    /// Sets the `GtkBox:homogeneous` property of `box`, controlling
    /// whether or not all children of `box` are given equal space
    /// in the box.
    @inlinable func set(homogeneous: Bool) {
        gtk_box_set_homogeneous(box_ptr, gboolean((homogeneous) ? 1 : 0))
    
    }

    /// Sets the `GtkBox:spacing` property of `box`, which is the
    /// number of pixels to place between children of `box`.
    @inlinable func set(spacing: Int) {
        gtk_box_set_spacing(box_ptr, gint(spacing))
    
    }
    /// Gets the value set by `gtk_box_set_baseline_position()`.
    @inlinable var baselinePosition: GtkBaselinePosition {
        /// Gets the value set by `gtk_box_set_baseline_position()`.
        get {
            let rv = gtk_box_get_baseline_position(box_ptr)
            return rv
        }
        /// Sets the baseline position of a box. This affects
        /// only horizontal boxes with at least one baseline aligned
        /// child. If there is more vertical space available than requested,
        /// and the baseline is not allocated by the parent then
        /// `position` is used to allocate the baseline wrt the
        /// extra space available.
        nonmutating set {
            gtk_box_set_baseline_position(box_ptr, newValue)
        }
    }

    /// Retrieves the center widget of the box.
    @inlinable var centerWidget: WidgetRef! {
        /// Retrieves the center widget of the box.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_box_get_center_widget(box_ptr))) else { return nil }
            return rv
        }
        /// Sets a center widget; that is a child widget that will be
        /// centered with respect to the full width of the box, even
        /// if the children at either side take up different amounts
        /// of space.
        nonmutating set {
            gtk_box_set_center_widget(box_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }

    @inlinable var homogeneous: Bool {
        /// Returns whether the box is homogeneous (all children are the
        /// same size). See `gtk_box_set_homogeneous()`.
        get {
            let rv = ((gtk_box_get_homogeneous(box_ptr)) != 0)
            return rv
        }
        /// Sets the `GtkBox:homogeneous` property of `box`, controlling
        /// whether or not all children of `box` are given equal space
        /// in the box.
        nonmutating set {
            gtk_box_set_homogeneous(box_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    @inlinable var spacing: Int {
        /// Gets the value set by `gtk_box_set_spacing()`.
        get {
            let rv = Int(gtk_box_get_spacing(box_ptr))
            return rv
        }
        /// Sets the `GtkBox:spacing` property of `box`, which is the
        /// number of pixels to place between children of `box`.
        nonmutating set {
            gtk_box_set_spacing(box_ptr, gint(newValue))
        }
    }

    @inlinable var container: GtkContainer {
        get {
            let rv = box_ptr.pointee.container
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - Builder Class

/// The `BuilderProtocol` protocol exposes the methods and properties of an underlying `GtkBuilder` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Builder`.
/// Alternatively, use `BuilderRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A GtkBuilder is an auxiliary object that reads textual descriptions
/// of a user interface and instantiates the described objects. To create
/// a GtkBuilder from a user interface description, call
/// `gtk_builder_new_from_file()`, `gtk_builder_new_from_resource()` or
/// `gtk_builder_new_from_string()`.
/// 
/// In the (unusual) case that you want to add user interface
/// descriptions from multiple sources to the same GtkBuilder you can
/// call `gtk_builder_new()` to get an empty builder and populate it by
/// (multiple) calls to `gtk_builder_add_from_file()`,
/// `gtk_builder_add_from_resource()` or `gtk_builder_add_from_string()`.
/// 
/// A GtkBuilder holds a reference to all objects that it has constructed
/// and drops these references when it is finalized. This finalization can
/// cause the destruction of non-widget objects or widgets which are not
/// contained in a toplevel window. For toplevel windows constructed by a
/// builder, it is the responsibility of the user to call `gtk_widget_destroy()`
/// to get rid of them and all the widgets they contain.
/// 
/// The functions `gtk_builder_get_object()` and `gtk_builder_get_objects()`
/// can be used to access the widgets in the interface by the names assigned
/// to them inside the UI description. Toplevel windows returned by these
/// functions will stay around until the user explicitly destroys them
/// with `gtk_widget_destroy()`. Other widgets will either be part of a
/// larger hierarchy constructed by the builder (in which case you should
/// not have to worry about their lifecycle), or without a parent, in which
/// case they have to be added to some container to make use of them.
/// Non-widget objects need to be reffed with `g_object_ref()` to keep them
/// beyond the lifespan of the builder.
/// 
/// The function `gtk_builder_connect_signals()` and variants thereof can be
/// used to connect handlers to the named signals in the description.
/// 
/// # GtkBuilder UI Definitions # <a name="BUILDER-UI"></a>
/// 
/// GtkBuilder parses textual descriptions of user interfaces which are
/// specified in an XML format which can be roughly described by the
/// RELAX NG schema below. We refer to these descriptions as “GtkBuilder
/// UI definitions” or just “UI definitions” if the context is clear.
/// Do not confuse GtkBuilder UI Definitions with
/// [GtkUIManager UI Definitions](#XML-UI), which are more limited in scope.
/// It is common to use `.ui` as the filename extension for files containing
/// GtkBuilder UI definitions.
/// 
/// [RELAX NG Compact Syntax](https://gitlab.gnome.org/GNOME/gtk/-/blob/gtk-3-24/gtk/gtkbuilder.rnc)
/// 
/// The toplevel element is <interface>. It optionally takes a “domain”
/// attribute, which will make the builder look for translated strings
/// using `dgettext()` in the domain specified. This can also be done by
/// calling `gtk_builder_set_translation_domain()` on the builder.
/// Objects are described by <object> elements, which can contain
/// <property> elements to set properties, <signal> elements which
/// connect signals to handlers, and <child> elements, which describe
/// child objects (most often widgets inside a container, but also e.g.
/// actions in an action group, or columns in a tree model). A <child>
/// element contains an <object> element which describes the child object.
/// The target toolkit `version(s)` are described by <requires> elements,
/// the “lib” attribute specifies the widget library in question (currently
/// the only supported value is “gtk+”) and the “version” attribute specifies
/// the target version in the form “<major>.<minor>”. The builder will error
/// out if the version requirements are not met.
/// 
/// Typically, the specific kind of object represented by an <object>
/// element is specified by the “class” attribute. If the type has not
/// been loaded yet, GTK+ tries to find the `get_type()` function from the
/// class name by applying heuristics. This works in most cases, but if
/// necessary, it is possible to specify the name of the `get_type()` function
/// explictly with the "type-func" attribute. As a special case, GtkBuilder
/// allows to use an object that has been constructed by a `GtkUIManager` in
/// another part of the UI definition by specifying the id of the `GtkUIManager`
/// in the “constructor” attribute and the name of the object in the “id”
/// attribute.
/// 
/// Objects may be given a name with the “id” attribute, which allows the
/// application to retrieve them from the builder with `gtk_builder_get_object()`.
/// An id is also necessary to use the object as property value in other
/// parts of the UI definition. GTK+ reserves ids starting and ending
/// with ___ (3 underscores) for its own purposes.
/// 
/// Setting properties of objects is pretty straightforward with the
/// <property> element: the “name” attribute specifies the name of the
/// property, and the content of the element specifies the value.
/// If the “translatable” attribute is set to a true value, GTK+ uses
/// `gettext()` (or `dgettext()` if the builder has a translation domain set)
/// to find a translation for the value. This happens before the value
/// is parsed, so it can be used for properties of any type, but it is
/// probably most useful for string properties. It is also possible to
/// specify a context to disambiguate short strings, and comments which
/// may help the translators.
/// 
/// GtkBuilder can parse textual representations for the most common
/// property types: characters, strings, integers, floating-point numbers,
/// booleans (strings like “TRUE”, “t”, “yes”, “y”, “1” are interpreted
/// as `true`, strings like “FALSE”, “f”, “no”, “n”, “0” are interpreted
/// as `false`), enumerations (can be specified by their name, nick or
/// integer value), flags (can be specified by their name, nick, integer
/// value, optionally combined with “|”, e.g. “GTK_VISIBLE|GTK_REALIZED”)
/// and colors (in a format understood by `gdk_rgba_parse()`).
/// 
/// GVariants can be specified in the format understood by `g_variant_parse()`,
/// and pixbufs can be specified as a filename of an image file to load.
/// 
/// Objects can be referred to by their name and by default refer to
/// objects declared in the local xml fragment and objects exposed via
/// `gtk_builder_expose_object()`. In general, GtkBuilder allows forward
/// references to objects — declared in the local xml; an object doesn’t
/// have to be constructed before it can be referred to. The exception
/// to this rule is that an object has to be constructed before it can
/// be used as the value of a construct-only property.
/// 
/// It is also possible to bind a property value to another object's
/// property value using the attributes
/// "bind-source" to specify the source object of the binding,
/// "bind-property" to specify the source property and optionally
/// "bind-flags" to specify the binding flags.
/// Internally builder implements this using GBinding objects.
/// For more information see `g_object_bind_property()`
/// 
/// Signal handlers are set up with the <signal> element. The “name”
/// attribute specifies the name of the signal, and the “handler” attribute
/// specifies the function to connect to the signal. By default, GTK+ tries
/// to find the handler using `g_module_symbol()`, but this can be changed by
/// passing a custom `GtkBuilderConnectFunc` to
/// `gtk_builder_connect_signals_full()`. The remaining attributes, “after”,
/// “swapped” and “object”, have the same meaning as the corresponding
/// parameters of the `g_signal_connect_object()` or
/// `g_signal_connect_data()` functions. A “last_modification_time”
/// attribute is also allowed, but it does not have a meaning to the
/// builder.
/// 
/// Sometimes it is necessary to refer to widgets which have implicitly
/// been constructed by GTK+ as part of a composite widget, to set
/// properties on them or to add further children (e.g. the `vbox` of
/// a `GtkDialog`). This can be achieved by setting the “internal-child”
/// property of the <child> element to a true value. Note that GtkBuilder
/// still requires an <object> element for the internal child, even if it
/// has already been constructed.
/// 
/// A number of widgets have different places where a child can be added
/// (e.g. tabs vs. page content in notebooks). This can be reflected in
/// a UI definition by specifying the “type” attribute on a <child>
/// The possible values for the “type” attribute are described in the
/// sections describing the widget-specific portions of UI definitions.
/// 
/// # A GtkBuilder UI Definition
/// 
/// ```
/// <interface>
///   <object class="GtkDialog" id="dialog1">
///     <child internal-child="vbox">
///       <object class="GtkBox" id="vbox1">
///         <property name="border-width">10</property>
///         <child internal-child="action_area">
///           <object class="GtkButtonBox" id="hbuttonbox1">
///             <property name="border-width">20</property>
///             <child>
///               <object class="GtkButton" id="ok_button">
///                 <property name="label">gtk-ok</property>
///                 <property name="use-stock">TRUE</property>
///                 <signal name="clicked" handler="ok_button_clicked"/>
///               </object>
///             </child>
///           </object>
///         </child>
///       </object>
///     </child>
///   </object>
/// </interface>
/// ```
/// 
/// Beyond this general structure, several object classes define their
/// own XML DTD fragments for filling in the ANY placeholders in the DTD
/// above. Note that a custom element in a <child> element gets parsed by
/// the custom tag handler of the parent object, while a custom element in
/// an <object> element gets parsed by the custom tag handler of the object.
/// 
/// These XML fragments are explained in the documentation of the
/// respective objects.
/// 
/// Additionally, since 3.10 a special <template> tag has been added
/// to the format allowing one to define a widget class’s components.
/// See the [GtkWidget documentation](#composite-templates) for details.
public protocol BuilderProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GtkBuilder` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkBuilder` instance.
    var builder_ptr: UnsafeMutablePointer<GtkBuilder>! { get }

}

/// The `BuilderRef` type acts as a lightweight Swift reference to an underlying `GtkBuilder` instance.
/// It exposes methods that can operate on this data type through `BuilderProtocol` conformance.
/// Use `BuilderRef` only as an `unowned` reference to an existing `GtkBuilder` instance.
///
/// A GtkBuilder is an auxiliary object that reads textual descriptions
/// of a user interface and instantiates the described objects. To create
/// a GtkBuilder from a user interface description, call
/// `gtk_builder_new_from_file()`, `gtk_builder_new_from_resource()` or
/// `gtk_builder_new_from_string()`.
/// 
/// In the (unusual) case that you want to add user interface
/// descriptions from multiple sources to the same GtkBuilder you can
/// call `gtk_builder_new()` to get an empty builder and populate it by
/// (multiple) calls to `gtk_builder_add_from_file()`,
/// `gtk_builder_add_from_resource()` or `gtk_builder_add_from_string()`.
/// 
/// A GtkBuilder holds a reference to all objects that it has constructed
/// and drops these references when it is finalized. This finalization can
/// cause the destruction of non-widget objects or widgets which are not
/// contained in a toplevel window. For toplevel windows constructed by a
/// builder, it is the responsibility of the user to call `gtk_widget_destroy()`
/// to get rid of them and all the widgets they contain.
/// 
/// The functions `gtk_builder_get_object()` and `gtk_builder_get_objects()`
/// can be used to access the widgets in the interface by the names assigned
/// to them inside the UI description. Toplevel windows returned by these
/// functions will stay around until the user explicitly destroys them
/// with `gtk_widget_destroy()`. Other widgets will either be part of a
/// larger hierarchy constructed by the builder (in which case you should
/// not have to worry about their lifecycle), or without a parent, in which
/// case they have to be added to some container to make use of them.
/// Non-widget objects need to be reffed with `g_object_ref()` to keep them
/// beyond the lifespan of the builder.
/// 
/// The function `gtk_builder_connect_signals()` and variants thereof can be
/// used to connect handlers to the named signals in the description.
/// 
/// # GtkBuilder UI Definitions # <a name="BUILDER-UI"></a>
/// 
/// GtkBuilder parses textual descriptions of user interfaces which are
/// specified in an XML format which can be roughly described by the
/// RELAX NG schema below. We refer to these descriptions as “GtkBuilder
/// UI definitions” or just “UI definitions” if the context is clear.
/// Do not confuse GtkBuilder UI Definitions with
/// [GtkUIManager UI Definitions](#XML-UI), which are more limited in scope.
/// It is common to use `.ui` as the filename extension for files containing
/// GtkBuilder UI definitions.
/// 
/// [RELAX NG Compact Syntax](https://gitlab.gnome.org/GNOME/gtk/-/blob/gtk-3-24/gtk/gtkbuilder.rnc)
/// 
/// The toplevel element is <interface>. It optionally takes a “domain”
/// attribute, which will make the builder look for translated strings
/// using `dgettext()` in the domain specified. This can also be done by
/// calling `gtk_builder_set_translation_domain()` on the builder.
/// Objects are described by <object> elements, which can contain
/// <property> elements to set properties, <signal> elements which
/// connect signals to handlers, and <child> elements, which describe
/// child objects (most often widgets inside a container, but also e.g.
/// actions in an action group, or columns in a tree model). A <child>
/// element contains an <object> element which describes the child object.
/// The target toolkit `version(s)` are described by <requires> elements,
/// the “lib” attribute specifies the widget library in question (currently
/// the only supported value is “gtk+”) and the “version” attribute specifies
/// the target version in the form “<major>.<minor>”. The builder will error
/// out if the version requirements are not met.
/// 
/// Typically, the specific kind of object represented by an <object>
/// element is specified by the “class” attribute. If the type has not
/// been loaded yet, GTK+ tries to find the `get_type()` function from the
/// class name by applying heuristics. This works in most cases, but if
/// necessary, it is possible to specify the name of the `get_type()` function
/// explictly with the "type-func" attribute. As a special case, GtkBuilder
/// allows to use an object that has been constructed by a `GtkUIManager` in
/// another part of the UI definition by specifying the id of the `GtkUIManager`
/// in the “constructor” attribute and the name of the object in the “id”
/// attribute.
/// 
/// Objects may be given a name with the “id” attribute, which allows the
/// application to retrieve them from the builder with `gtk_builder_get_object()`.
/// An id is also necessary to use the object as property value in other
/// parts of the UI definition. GTK+ reserves ids starting and ending
/// with ___ (3 underscores) for its own purposes.
/// 
/// Setting properties of objects is pretty straightforward with the
/// <property> element: the “name” attribute specifies the name of the
/// property, and the content of the element specifies the value.
/// If the “translatable” attribute is set to a true value, GTK+ uses
/// `gettext()` (or `dgettext()` if the builder has a translation domain set)
/// to find a translation for the value. This happens before the value
/// is parsed, so it can be used for properties of any type, but it is
/// probably most useful for string properties. It is also possible to
/// specify a context to disambiguate short strings, and comments which
/// may help the translators.
/// 
/// GtkBuilder can parse textual representations for the most common
/// property types: characters, strings, integers, floating-point numbers,
/// booleans (strings like “TRUE”, “t”, “yes”, “y”, “1” are interpreted
/// as `true`, strings like “FALSE”, “f”, “no”, “n”, “0” are interpreted
/// as `false`), enumerations (can be specified by their name, nick or
/// integer value), flags (can be specified by their name, nick, integer
/// value, optionally combined with “|”, e.g. “GTK_VISIBLE|GTK_REALIZED”)
/// and colors (in a format understood by `gdk_rgba_parse()`).
/// 
/// GVariants can be specified in the format understood by `g_variant_parse()`,
/// and pixbufs can be specified as a filename of an image file to load.
/// 
/// Objects can be referred to by their name and by default refer to
/// objects declared in the local xml fragment and objects exposed via
/// `gtk_builder_expose_object()`. In general, GtkBuilder allows forward
/// references to objects — declared in the local xml; an object doesn’t
/// have to be constructed before it can be referred to. The exception
/// to this rule is that an object has to be constructed before it can
/// be used as the value of a construct-only property.
/// 
/// It is also possible to bind a property value to another object's
/// property value using the attributes
/// "bind-source" to specify the source object of the binding,
/// "bind-property" to specify the source property and optionally
/// "bind-flags" to specify the binding flags.
/// Internally builder implements this using GBinding objects.
/// For more information see `g_object_bind_property()`
/// 
/// Signal handlers are set up with the <signal> element. The “name”
/// attribute specifies the name of the signal, and the “handler” attribute
/// specifies the function to connect to the signal. By default, GTK+ tries
/// to find the handler using `g_module_symbol()`, but this can be changed by
/// passing a custom `GtkBuilderConnectFunc` to
/// `gtk_builder_connect_signals_full()`. The remaining attributes, “after”,
/// “swapped” and “object”, have the same meaning as the corresponding
/// parameters of the `g_signal_connect_object()` or
/// `g_signal_connect_data()` functions. A “last_modification_time”
/// attribute is also allowed, but it does not have a meaning to the
/// builder.
/// 
/// Sometimes it is necessary to refer to widgets which have implicitly
/// been constructed by GTK+ as part of a composite widget, to set
/// properties on them or to add further children (e.g. the `vbox` of
/// a `GtkDialog`). This can be achieved by setting the “internal-child”
/// property of the <child> element to a true value. Note that GtkBuilder
/// still requires an <object> element for the internal child, even if it
/// has already been constructed.
/// 
/// A number of widgets have different places where a child can be added
/// (e.g. tabs vs. page content in notebooks). This can be reflected in
/// a UI definition by specifying the “type” attribute on a <child>
/// The possible values for the “type” attribute are described in the
/// sections describing the widget-specific portions of UI definitions.
/// 
/// # A GtkBuilder UI Definition
/// 
/// ```
/// <interface>
///   <object class="GtkDialog" id="dialog1">
///     <child internal-child="vbox">
///       <object class="GtkBox" id="vbox1">
///         <property name="border-width">10</property>
///         <child internal-child="action_area">
///           <object class="GtkButtonBox" id="hbuttonbox1">
///             <property name="border-width">20</property>
///             <child>
///               <object class="GtkButton" id="ok_button">
///                 <property name="label">gtk-ok</property>
///                 <property name="use-stock">TRUE</property>
///                 <signal name="clicked" handler="ok_button_clicked"/>
///               </object>
///             </child>
///           </object>
///         </child>
///       </object>
///     </child>
///   </object>
/// </interface>
/// ```
/// 
/// Beyond this general structure, several object classes define their
/// own XML DTD fragments for filling in the ANY placeholders in the DTD
/// above. Note that a custom element in a <child> element gets parsed by
/// the custom tag handler of the parent object, while a custom element in
/// an <object> element gets parsed by the custom tag handler of the object.
/// 
/// These XML fragments are explained in the documentation of the
/// respective objects.
/// 
/// Additionally, since 3.10 a special <template> tag has been added
/// to the format allowing one to define a widget class’s components.
/// See the [GtkWidget documentation](#composite-templates) for details.
public struct BuilderRef: BuilderProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkBuilder` instance.
    /// For type-safe access, use the generated, typed pointer `builder_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BuilderRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkBuilder>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkBuilder>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkBuilder>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkBuilder>?) {
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

    /// Reference intialiser for a related type that implements `BuilderProtocol`
    @inlinable init<T: BuilderProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: BuilderProtocol>(_ other: T) -> BuilderRef { BuilderRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new empty builder object.
    /// 
    /// This function is only useful if you intend to make multiple calls
    /// to `gtk_builder_add_from_file()`, `gtk_builder_add_from_resource()`
    /// or `gtk_builder_add_from_string()` in order to merge multiple UI
    /// descriptions into a single builder.
    /// 
    /// Most users will probably want to use `gtk_builder_new_from_file()`,
    /// `gtk_builder_new_from_resource()` or `gtk_builder_new_from_string()`.
    @inlinable init() {
        let rv = gtk_builder_new()
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Builds the [GtkBuilder UI definition](#BUILDER-UI)
    /// in the file `filename`.
    /// 
    /// If there is an error opening the file or parsing the description then
    /// the program will be aborted.  You should only ever attempt to parse
    /// user interface descriptions that are shipped as part of your program.
    @inlinable init(file filename: UnsafePointer<gchar>!) {
        let rv = gtk_builder_new_from_file(filename)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Builds the [GtkBuilder UI definition](#BUILDER-UI)
    /// at `resource_path`.
    /// 
    /// If there is an error locating the resource or parsing the
    /// description, then the program will be aborted.
    @inlinable init(resource resourcePath: UnsafePointer<gchar>!) {
        let rv = gtk_builder_new_from_resource(resourcePath)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Builds the user interface described by `string` (in the
    /// [GtkBuilder UI definition](#BUILDER-UI) format).
    /// 
    /// If `string` is `nil`-terminated, then `length` should be -1.
    /// If `length` is not -1, then it is the length of `string`.
    /// 
    /// If there is an error parsing `string` then the program will be
    /// aborted. You should not attempt to parse user interface description
    /// from untrusted sources.
    @inlinable init(string: UnsafePointer<gchar>!, length: gssize) {
        let rv = gtk_builder_new_from_string(string, length)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Builds the [GtkBuilder UI definition](#BUILDER-UI)
    /// in the file `filename`.
    /// 
    /// If there is an error opening the file or parsing the description then
    /// the program will be aborted.  You should only ever attempt to parse
    /// user interface descriptions that are shipped as part of your program.
    @inlinable static func newFrom(file filename: UnsafePointer<gchar>!) -> BuilderRef! {
        guard let rv = BuilderRef(gconstpointer: gconstpointer(gtk_builder_new_from_file(filename))) else { return nil }
        return rv
    }

    /// Builds the [GtkBuilder UI definition](#BUILDER-UI)
    /// at `resource_path`.
    /// 
    /// If there is an error locating the resource or parsing the
    /// description, then the program will be aborted.
    @inlinable static func newFrom(resource resourcePath: UnsafePointer<gchar>!) -> BuilderRef! {
        guard let rv = BuilderRef(gconstpointer: gconstpointer(gtk_builder_new_from_resource(resourcePath))) else { return nil }
        return rv
    }

    /// Builds the user interface described by `string` (in the
    /// [GtkBuilder UI definition](#BUILDER-UI) format).
    /// 
    /// If `string` is `nil`-terminated, then `length` should be -1.
    /// If `length` is not -1, then it is the length of `string`.
    /// 
    /// If there is an error parsing `string` then the program will be
    /// aborted. You should not attempt to parse user interface description
    /// from untrusted sources.
    @inlinable static func newFrom(string: UnsafePointer<gchar>!, length: gssize) -> BuilderRef! {
        guard let rv = BuilderRef(gconstpointer: gconstpointer(gtk_builder_new_from_string(string, length))) else { return nil }
        return rv
    }
}

/// The `Builder` type acts as a reference-counted owner of an underlying `GtkBuilder` instance.
/// It provides the methods that can operate on this data type through `BuilderProtocol` conformance.
/// Use `Builder` as a strong reference or owner of a `GtkBuilder` instance.
///
/// A GtkBuilder is an auxiliary object that reads textual descriptions
/// of a user interface and instantiates the described objects. To create
/// a GtkBuilder from a user interface description, call
/// `gtk_builder_new_from_file()`, `gtk_builder_new_from_resource()` or
/// `gtk_builder_new_from_string()`.
/// 
/// In the (unusual) case that you want to add user interface
/// descriptions from multiple sources to the same GtkBuilder you can
/// call `gtk_builder_new()` to get an empty builder and populate it by
/// (multiple) calls to `gtk_builder_add_from_file()`,
/// `gtk_builder_add_from_resource()` or `gtk_builder_add_from_string()`.
/// 
/// A GtkBuilder holds a reference to all objects that it has constructed
/// and drops these references when it is finalized. This finalization can
/// cause the destruction of non-widget objects or widgets which are not
/// contained in a toplevel window. For toplevel windows constructed by a
/// builder, it is the responsibility of the user to call `gtk_widget_destroy()`
/// to get rid of them and all the widgets they contain.
/// 
/// The functions `gtk_builder_get_object()` and `gtk_builder_get_objects()`
/// can be used to access the widgets in the interface by the names assigned
/// to them inside the UI description. Toplevel windows returned by these
/// functions will stay around until the user explicitly destroys them
/// with `gtk_widget_destroy()`. Other widgets will either be part of a
/// larger hierarchy constructed by the builder (in which case you should
/// not have to worry about their lifecycle), or without a parent, in which
/// case they have to be added to some container to make use of them.
/// Non-widget objects need to be reffed with `g_object_ref()` to keep them
/// beyond the lifespan of the builder.
/// 
/// The function `gtk_builder_connect_signals()` and variants thereof can be
/// used to connect handlers to the named signals in the description.
/// 
/// # GtkBuilder UI Definitions # <a name="BUILDER-UI"></a>
/// 
/// GtkBuilder parses textual descriptions of user interfaces which are
/// specified in an XML format which can be roughly described by the
/// RELAX NG schema below. We refer to these descriptions as “GtkBuilder
/// UI definitions” or just “UI definitions” if the context is clear.
/// Do not confuse GtkBuilder UI Definitions with
/// [GtkUIManager UI Definitions](#XML-UI), which are more limited in scope.
/// It is common to use `.ui` as the filename extension for files containing
/// GtkBuilder UI definitions.
/// 
/// [RELAX NG Compact Syntax](https://gitlab.gnome.org/GNOME/gtk/-/blob/gtk-3-24/gtk/gtkbuilder.rnc)
/// 
/// The toplevel element is <interface>. It optionally takes a “domain”
/// attribute, which will make the builder look for translated strings
/// using `dgettext()` in the domain specified. This can also be done by
/// calling `gtk_builder_set_translation_domain()` on the builder.
/// Objects are described by <object> elements, which can contain
/// <property> elements to set properties, <signal> elements which
/// connect signals to handlers, and <child> elements, which describe
/// child objects (most often widgets inside a container, but also e.g.
/// actions in an action group, or columns in a tree model). A <child>
/// element contains an <object> element which describes the child object.
/// The target toolkit `version(s)` are described by <requires> elements,
/// the “lib” attribute specifies the widget library in question (currently
/// the only supported value is “gtk+”) and the “version” attribute specifies
/// the target version in the form “<major>.<minor>”. The builder will error
/// out if the version requirements are not met.
/// 
/// Typically, the specific kind of object represented by an <object>
/// element is specified by the “class” attribute. If the type has not
/// been loaded yet, GTK+ tries to find the `get_type()` function from the
/// class name by applying heuristics. This works in most cases, but if
/// necessary, it is possible to specify the name of the `get_type()` function
/// explictly with the "type-func" attribute. As a special case, GtkBuilder
/// allows to use an object that has been constructed by a `GtkUIManager` in
/// another part of the UI definition by specifying the id of the `GtkUIManager`
/// in the “constructor” attribute and the name of the object in the “id”
/// attribute.
/// 
/// Objects may be given a name with the “id” attribute, which allows the
/// application to retrieve them from the builder with `gtk_builder_get_object()`.
/// An id is also necessary to use the object as property value in other
/// parts of the UI definition. GTK+ reserves ids starting and ending
/// with ___ (3 underscores) for its own purposes.
/// 
/// Setting properties of objects is pretty straightforward with the
/// <property> element: the “name” attribute specifies the name of the
/// property, and the content of the element specifies the value.
/// If the “translatable” attribute is set to a true value, GTK+ uses
/// `gettext()` (or `dgettext()` if the builder has a translation domain set)
/// to find a translation for the value. This happens before the value
/// is parsed, so it can be used for properties of any type, but it is
/// probably most useful for string properties. It is also possible to
/// specify a context to disambiguate short strings, and comments which
/// may help the translators.
/// 
/// GtkBuilder can parse textual representations for the most common
/// property types: characters, strings, integers, floating-point numbers,
/// booleans (strings like “TRUE”, “t”, “yes”, “y”, “1” are interpreted
/// as `true`, strings like “FALSE”, “f”, “no”, “n”, “0” are interpreted
/// as `false`), enumerations (can be specified by their name, nick or
/// integer value), flags (can be specified by their name, nick, integer
/// value, optionally combined with “|”, e.g. “GTK_VISIBLE|GTK_REALIZED”)
/// and colors (in a format understood by `gdk_rgba_parse()`).
/// 
/// GVariants can be specified in the format understood by `g_variant_parse()`,
/// and pixbufs can be specified as a filename of an image file to load.
/// 
/// Objects can be referred to by their name and by default refer to
/// objects declared in the local xml fragment and objects exposed via
/// `gtk_builder_expose_object()`. In general, GtkBuilder allows forward
/// references to objects — declared in the local xml; an object doesn’t
/// have to be constructed before it can be referred to. The exception
/// to this rule is that an object has to be constructed before it can
/// be used as the value of a construct-only property.
/// 
/// It is also possible to bind a property value to another object's
/// property value using the attributes
/// "bind-source" to specify the source object of the binding,
/// "bind-property" to specify the source property and optionally
/// "bind-flags" to specify the binding flags.
/// Internally builder implements this using GBinding objects.
/// For more information see `g_object_bind_property()`
/// 
/// Signal handlers are set up with the <signal> element. The “name”
/// attribute specifies the name of the signal, and the “handler” attribute
/// specifies the function to connect to the signal. By default, GTK+ tries
/// to find the handler using `g_module_symbol()`, but this can be changed by
/// passing a custom `GtkBuilderConnectFunc` to
/// `gtk_builder_connect_signals_full()`. The remaining attributes, “after”,
/// “swapped” and “object”, have the same meaning as the corresponding
/// parameters of the `g_signal_connect_object()` or
/// `g_signal_connect_data()` functions. A “last_modification_time”
/// attribute is also allowed, but it does not have a meaning to the
/// builder.
/// 
/// Sometimes it is necessary to refer to widgets which have implicitly
/// been constructed by GTK+ as part of a composite widget, to set
/// properties on them or to add further children (e.g. the `vbox` of
/// a `GtkDialog`). This can be achieved by setting the “internal-child”
/// property of the <child> element to a true value. Note that GtkBuilder
/// still requires an <object> element for the internal child, even if it
/// has already been constructed.
/// 
/// A number of widgets have different places where a child can be added
/// (e.g. tabs vs. page content in notebooks). This can be reflected in
/// a UI definition by specifying the “type” attribute on a <child>
/// The possible values for the “type” attribute are described in the
/// sections describing the widget-specific portions of UI definitions.
/// 
/// # A GtkBuilder UI Definition
/// 
/// ```
/// <interface>
///   <object class="GtkDialog" id="dialog1">
///     <child internal-child="vbox">
///       <object class="GtkBox" id="vbox1">
///         <property name="border-width">10</property>
///         <child internal-child="action_area">
///           <object class="GtkButtonBox" id="hbuttonbox1">
///             <property name="border-width">20</property>
///             <child>
///               <object class="GtkButton" id="ok_button">
///                 <property name="label">gtk-ok</property>
///                 <property name="use-stock">TRUE</property>
///                 <signal name="clicked" handler="ok_button_clicked"/>
///               </object>
///             </child>
///           </object>
///         </child>
///       </object>
///     </child>
///   </object>
/// </interface>
/// ```
/// 
/// Beyond this general structure, several object classes define their
/// own XML DTD fragments for filling in the ANY placeholders in the DTD
/// above. Note that a custom element in a <child> element gets parsed by
/// the custom tag handler of the parent object, while a custom element in
/// an <object> element gets parsed by the custom tag handler of the object.
/// 
/// These XML fragments are explained in the documentation of the
/// respective objects.
/// 
/// Additionally, since 3.10 a special <template> tag has been added
/// to the format allowing one to define a widget class’s components.
/// See the [GtkWidget documentation](#composite-templates) for details.
open class Builder: GLibObject.Object, BuilderProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Builder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkBuilder>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Builder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkBuilder>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Builder` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Builder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Builder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkBuilder>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Builder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkBuilder>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkBuilder`.
    /// i.e., ownership is transferred to the `Builder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkBuilder>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `BuilderProtocol`
    /// Will retain `GtkBuilder`.
    /// - Parameter other: an instance of a related type that implements `BuilderProtocol`
    @inlinable public init<T: BuilderProtocol>(builder other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new empty builder object.
    /// 
    /// This function is only useful if you intend to make multiple calls
    /// to `gtk_builder_add_from_file()`, `gtk_builder_add_from_resource()`
    /// or `gtk_builder_add_from_string()` in order to merge multiple UI
    /// descriptions into a single builder.
    /// 
    /// Most users will probably want to use `gtk_builder_new_from_file()`,
    /// `gtk_builder_new_from_resource()` or `gtk_builder_new_from_string()`.
    @inlinable public init() {
        let rv = gtk_builder_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Builds the [GtkBuilder UI definition](#BUILDER-UI)
    /// in the file `filename`.
    /// 
    /// If there is an error opening the file or parsing the description then
    /// the program will be aborted.  You should only ever attempt to parse
    /// user interface descriptions that are shipped as part of your program.
    @inlinable public init(file filename: UnsafePointer<gchar>!) {
        let rv = gtk_builder_new_from_file(filename)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Builds the [GtkBuilder UI definition](#BUILDER-UI)
    /// at `resource_path`.
    /// 
    /// If there is an error locating the resource or parsing the
    /// description, then the program will be aborted.
    @inlinable public init(resource resourcePath: UnsafePointer<gchar>!) {
        let rv = gtk_builder_new_from_resource(resourcePath)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Builds the user interface described by `string` (in the
    /// [GtkBuilder UI definition](#BUILDER-UI) format).
    /// 
    /// If `string` is `nil`-terminated, then `length` should be -1.
    /// If `length` is not -1, then it is the length of `string`.
    /// 
    /// If there is an error parsing `string` then the program will be
    /// aborted. You should not attempt to parse user interface description
    /// from untrusted sources.
    @inlinable public init(string: UnsafePointer<gchar>!, length: gssize) {
        let rv = gtk_builder_new_from_string(string, length)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Builds the [GtkBuilder UI definition](#BUILDER-UI)
    /// in the file `filename`.
    /// 
    /// If there is an error opening the file or parsing the description then
    /// the program will be aborted.  You should only ever attempt to parse
    /// user interface descriptions that are shipped as part of your program.
    @inlinable public static func newFrom(file filename: UnsafePointer<gchar>!) -> Builder! {
        guard let rv = Builder(gconstpointer: gconstpointer(gtk_builder_new_from_file(filename))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Builds the [GtkBuilder UI definition](#BUILDER-UI)
    /// at `resource_path`.
    /// 
    /// If there is an error locating the resource or parsing the
    /// description, then the program will be aborted.
    @inlinable public static func newFrom(resource resourcePath: UnsafePointer<gchar>!) -> Builder! {
        guard let rv = Builder(gconstpointer: gconstpointer(gtk_builder_new_from_resource(resourcePath))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Builds the user interface described by `string` (in the
    /// [GtkBuilder UI definition](#BUILDER-UI) format).
    /// 
    /// If `string` is `nil`-terminated, then `length` should be -1.
    /// If `length` is not -1, then it is the length of `string`.
    /// 
    /// If there is an error parsing `string` then the program will be
    /// aborted. You should not attempt to parse user interface description
    /// from untrusted sources.
    @inlinable public static func newFrom(string: UnsafePointer<gchar>!, length: gssize) -> Builder! {
        guard let rv = Builder(gconstpointer: gconstpointer(gtk_builder_new_from_string(string, length))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum BuilderPropertyName: String, PropertyNameProtocol {
    /// The translation domain used when translating property values that
    /// have been marked as translatable in interface descriptions.
    /// If the translation domain is `nil`, `GtkBuilder` uses `gettext()`,
    /// otherwise `g_dgettext()`.
    case translationDomain = "translation-domain"
}

public extension BuilderProtocol {
    /// Bind a `BuilderPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: BuilderPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Builder property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: BuilderPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Builder property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: BuilderPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum BuilderSignalName: String, SignalNameProtocol {
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
    /// The translation domain used when translating property values that
    /// have been marked as translatable in interface descriptions.
    /// If the translation domain is `nil`, `GtkBuilder` uses `gettext()`,
    /// otherwise `g_dgettext()`.
    case notifyTranslationDomain = "notify::translation-domain"
}

// MARK: Builder has no signals
// MARK: Builder Class: BuilderProtocol extension (methods and fields)
public extension BuilderProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBuilder` instance.
    @inlinable var builder_ptr: UnsafeMutablePointer<GtkBuilder>! { return ptr?.assumingMemoryBound(to: GtkBuilder.self) }

    /// Adds the `callback_symbol` to the scope of `builder` under the given `callback_name`.
    /// 
    /// Using this function overrides the behavior of `gtk_builder_connect_signals()`
    /// for any callback symbols that are added. Using this method allows for better
    /// encapsulation as it does not require that callback symbols be declared in
    /// the global namespace.
    @inlinable func add(callbackName: UnsafePointer<gchar>!, callbackSymbol: GCallback?) {
        gtk_builder_add_callback_symbol(builder_ptr, callbackName, callbackSymbol)
    
    }


    // *** addCallbackSymbols() is not available because it has a varargs (...) parameter!


    /// Parses a file containing a [GtkBuilder UI definition](#BUILDER-UI)
    /// and merges it with the current contents of `builder`.
    /// 
    /// Most users will probably want to use `gtk_builder_new_from_file()`.
    /// 
    /// If an error occurs, 0 will be returned and `error` will be assigned a
    /// `GError` from the `GTK_BUILDER_ERROR`, `G_MARKUP_ERROR` or `G_FILE_ERROR`
    /// domain.
    /// 
    /// It’s not really reasonable to attempt to handle failures of this
    /// call. You should not use this function with untrusted files (ie:
    /// files that are not part of your application). Broken `GtkBuilder`
    /// files can easily crash your program, and it’s possible that memory
    /// was leaked leading up to the reported failure. The only reasonable
    /// thing to do when an error is detected is to call `g_error()`.
    @inlinable func addFromFile(filename: UnsafePointer<gchar>!) throws -> Int {
        var error: UnsafeMutablePointer<GError>?
        let rv = Int(gtk_builder_add_from_file(builder_ptr, filename, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Parses a resource file containing a [GtkBuilder UI definition](#BUILDER-UI)
    /// and merges it with the current contents of `builder`.
    /// 
    /// Most users will probably want to use `gtk_builder_new_from_resource()`.
    /// 
    /// If an error occurs, 0 will be returned and `error` will be assigned a
    /// `GError` from the `GTK_BUILDER_ERROR`, `G_MARKUP_ERROR` or `G_RESOURCE_ERROR`
    /// domain.
    /// 
    /// It’s not really reasonable to attempt to handle failures of this
    /// call.  The only reasonable thing to do when an error is detected is
    /// to call `g_error()`.
    @inlinable func addFrom(resourcePath: UnsafePointer<gchar>!) throws -> Int {
        var error: UnsafeMutablePointer<GError>?
        let rv = Int(gtk_builder_add_from_resource(builder_ptr, resourcePath, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Parses a string containing a [GtkBuilder UI definition](#BUILDER-UI)
    /// and merges it with the current contents of `builder`.
    /// 
    /// Most users will probably want to use `gtk_builder_new_from_string()`.
    /// 
    /// Upon errors 0 will be returned and `error` will be assigned a
    /// `GError` from the `GTK_BUILDER_ERROR`, `G_MARKUP_ERROR` or
    /// `G_VARIANT_PARSE_ERROR` domain.
    /// 
    /// It’s not really reasonable to attempt to handle failures of this
    /// call.  The only reasonable thing to do when an error is detected is
    /// to call `g_error()`.
    @inlinable func addFrom(stringBuffer buffer: UnsafePointer<gchar>!, length: Int) throws -> Int {
        var error: UnsafeMutablePointer<GError>?
        let rv = Int(gtk_builder_add_from_string(builder_ptr, buffer, gsize(length), &error))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Parses a file containing a [GtkBuilder UI definition](#BUILDER-UI)
    /// building only the requested objects and merges
    /// them with the current contents of `builder`.
    /// 
    /// Upon errors 0 will be returned and `error` will be assigned a
    /// `GError` from the `GTK_BUILDER_ERROR`, `G_MARKUP_ERROR` or `G_FILE_ERROR`
    /// domain.
    /// 
    /// If you are adding an object that depends on an object that is not
    /// its child (for instance a `GtkTreeView` that depends on its
    /// `GtkTreeModel`), you have to explicitly list all of them in `object_ids`.
    @inlinable func addObjectsFromFile(filename: UnsafePointer<gchar>!, objectIDs: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>!) throws -> Int {
        var error: UnsafeMutablePointer<GError>?
        let rv = Int(gtk_builder_add_objects_from_file(builder_ptr, filename, objectIDs, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Parses a resource file containing a [GtkBuilder UI definition](#BUILDER-UI)
    /// building only the requested objects and merges
    /// them with the current contents of `builder`.
    /// 
    /// Upon errors 0 will be returned and `error` will be assigned a
    /// `GError` from the `GTK_BUILDER_ERROR`, `G_MARKUP_ERROR` or `G_RESOURCE_ERROR`
    /// domain.
    /// 
    /// If you are adding an object that depends on an object that is not
    /// its child (for instance a `GtkTreeView` that depends on its
    /// `GtkTreeModel`), you have to explicitly list all of them in `object_ids`.
    @inlinable func addObjectsFrom(resourcePath: UnsafePointer<gchar>!, objectIDs: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>!) throws -> Int {
        var error: UnsafeMutablePointer<GError>?
        let rv = Int(gtk_builder_add_objects_from_resource(builder_ptr, resourcePath, objectIDs, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Parses a string containing a [GtkBuilder UI definition](#BUILDER-UI)
    /// building only the requested objects and merges
    /// them with the current contents of `builder`.
    /// 
    /// Upon errors 0 will be returned and `error` will be assigned a
    /// `GError` from the `GTK_BUILDER_ERROR` or `G_MARKUP_ERROR` domain.
    /// 
    /// If you are adding an object that depends on an object that is not
    /// its child (for instance a `GtkTreeView` that depends on its
    /// `GtkTreeModel`), you have to explicitly list all of them in `object_ids`.
    @inlinable func addObjectsFrom(stringBuffer buffer: UnsafePointer<gchar>!, length: Int, objectIDs: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>!) throws -> Int {
        var error: UnsafeMutablePointer<GError>?
        let rv = Int(gtk_builder_add_objects_from_string(builder_ptr, buffer, gsize(length), objectIDs, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// This method is a simpler variation of `gtk_builder_connect_signals_full()`.
    /// It uses symbols explicitly added to `builder` with prior calls to
    /// `gtk_builder_add_callback_symbol()`. In the case that symbols are not
    /// explicitly added; it uses `GModule`’s introspective features (by opening the module `nil`)
    /// to look at the application’s symbol table. From here it tries to match
    /// the signal handler names given in the interface description with
    /// symbols in the application and connects the signals. Note that this
    /// function can only be called once, subsequent calls will do nothing.
    /// 
    /// Note that unless `gtk_builder_add_callback_symbol()` is called for
    /// all signal callbacks which are referenced by the loaded XML, this
    /// function will require that `GModule` be supported on the platform.
    /// 
    /// If you rely on `GModule` support to lookup callbacks in the symbol table,
    /// the following details should be noted:
    /// 
    /// When compiling applications for Windows, you must declare signal callbacks
    /// with `G_MODULE_EXPORT`, or they will not be put in the symbol table.
    /// On Linux and Unices, this is not necessary; applications should instead
    /// be compiled with the -Wl,--export-dynamic CFLAGS, and linked against
    /// gmodule-export-2.0.
    @inlinable func connectSignals(userData: gpointer! = nil) {
        gtk_builder_connect_signals(builder_ptr, userData)
    
    }

    /// This function can be thought of the interpreted language binding
    /// version of `gtk_builder_connect_signals()`, except that it does not
    /// require GModule to function correctly.
    @inlinable func connectSignalsFull(`func`: GtkBuilderConnectFunc?, userData: gpointer! = nil) {
        gtk_builder_connect_signals_full(builder_ptr, `func`, userData)
    
    }

    /// Add `object` to the `builder` object pool so it can be referenced just like any
    /// other object built by builder.
    @inlinable func exposeObject<ObjectT: GLibObject.ObjectProtocol>(name: UnsafePointer<gchar>!, object: ObjectT) {
        gtk_builder_expose_object(builder_ptr, name, object.object_ptr)
    
    }

    /// Main private entry point for building composite container
    /// components from template XML.
    /// 
    /// This is exported purely to let gtk-builder-tool validate
    /// templates, applications have no need to call this function.
    @inlinable func extendWithTemplate<WidgetT: WidgetProtocol>(widget: WidgetT, templateType: GType, buffer: UnsafePointer<gchar>!, length: Int) throws -> Int {
        var error: UnsafeMutablePointer<GError>?
        let rv = Int(gtk_builder_extend_with_template(builder_ptr, widget.widget_ptr, templateType, buffer, gsize(length), &error))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Gets the `GtkApplication` associated with the builder.
    /// 
    /// The `GtkApplication` is used for creating action proxies as requested
    /// from XML that the builder is loading.
    /// 
    /// By default, the builder uses the default application: the one from
    /// `g_application_get_default()`. If you want to use another application
    /// for constructing proxies, use `gtk_builder_set_application()`.
    @inlinable func getApplication() -> ApplicationRef! {
        let rv = ApplicationRef(gconstpointer: gconstpointer(gtk_builder_get_application(builder_ptr)))
        return rv
    }

    /// Gets the object named `name`. Note that this function does not
    /// increment the reference count of the returned object.
    @inlinable func getObject(name: UnsafePointer<gchar>!) -> GLibObject.ObjectRef! {
        let rv = GLibObject.ObjectRef(gtk_builder_get_object(builder_ptr, name))
        return rv
    }

    /// Gets all objects that have been constructed by `builder`. Note that
    /// this function does not increment the reference counts of the returned
    /// objects.
    @inlinable func getObjects() -> GLib.SListRef! {
        let rv = GLib.SListRef(gtk_builder_get_objects(builder_ptr))
        return rv
    }

    /// Gets the translation domain of `builder`.
    @inlinable func getTranslationDomain() -> String! {
        let rv = gtk_builder_get_translation_domain(builder_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Looks up a type by name, using the virtual function that
    /// `GtkBuilder` has for that purpose. This is mainly used when
    /// implementing the `GtkBuildable` interface on a type.
    @inlinable func getTypeFromName(typeName: UnsafePointer<CChar>!) -> GType {
        let rv = gtk_builder_get_type_from_name(builder_ptr, typeName)
        return rv
    }

    /// Fetches a symbol previously added to `builder`
    /// with `gtk_builder_add_callback_symbols()`
    /// 
    /// This function is intended for possible use in language bindings
    /// or for any case that one might be cusomizing signal connections
    /// using `gtk_builder_connect_signals_full()`
    @inlinable func lookup(callbackName: UnsafePointer<gchar>!) -> GCallback! {
        let rv = gtk_builder_lookup_callback_symbol(builder_ptr, callbackName)
        return rv
    }

    /// Sets the application associated with `builder`.
    /// 
    /// You only need this function if there is more than one `GApplication`
    /// in your process. `application` cannot be `nil`.
    @inlinable func set<ApplicationT: ApplicationProtocol>(application: ApplicationT) {
        gtk_builder_set_application(builder_ptr, application.application_ptr)
    
    }

    /// Sets the translation domain of `builder`.
    /// See `GtkBuilder:translation`-domain.
    @inlinable func setTranslation(domain: UnsafePointer<gchar>? = nil) {
        gtk_builder_set_translation_domain(builder_ptr, domain)
    
    }

    /// This function demarshals a value from a string. This function
    /// calls `g_value_init()` on the `value` argument, so it need not be
    /// initialised beforehand.
    /// 
    /// This function can handle char, uchar, boolean, int, uint, long,
    /// ulong, enum, flags, float, double, string, `GdkColor`, `GdkRGBA` and
    /// `GtkAdjustment` type values. Support for `GtkWidget` type values is
    /// still to come.
    /// 
    /// Upon errors `false` will be returned and `error` will be assigned a
    /// `GError` from the `GTK_BUILDER_ERROR` domain.
    @inlinable func valueFromString<ParamSpecT: GLibObject.ParamSpecProtocol, ValueT: GLibObject.ValueProtocol>(pspec: ParamSpecT, string: UnsafePointer<gchar>!, value: ValueT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gtk_builder_value_from_string(builder_ptr, pspec.param_spec_ptr, string, value.value_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Like `gtk_builder_value_from_string()`, this function demarshals
    /// a value from a string, but takes a `GType` instead of `GParamSpec`.
    /// This function calls `g_value_init()` on the `value` argument, so it
    /// need not be initialised beforehand.
    /// 
    /// Upon errors `false` will be returned and `error` will be assigned a
    /// `GError` from the `GTK_BUILDER_ERROR` domain.
    @inlinable func valueFromString<ValueT: GLibObject.ValueProtocol>(type: GType, string: UnsafePointer<gchar>!, value: ValueT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gtk_builder_value_from_string_type(builder_ptr, type, string, value.value_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Gets the `GtkApplication` associated with the builder.
    /// 
    /// The `GtkApplication` is used for creating action proxies as requested
    /// from XML that the builder is loading.
    /// 
    /// By default, the builder uses the default application: the one from
    /// `g_application_get_default()`. If you want to use another application
    /// for constructing proxies, use `gtk_builder_set_application()`.
    @inlinable var application: ApplicationRef! {
        /// Gets the `GtkApplication` associated with the builder.
        /// 
        /// The `GtkApplication` is used for creating action proxies as requested
        /// from XML that the builder is loading.
        /// 
        /// By default, the builder uses the default application: the one from
        /// `g_application_get_default()`. If you want to use another application
        /// for constructing proxies, use `gtk_builder_set_application()`.
        get {
            let rv = ApplicationRef(gconstpointer: gconstpointer(gtk_builder_get_application(builder_ptr)))
            return rv
        }
        /// Sets the application associated with `builder`.
        /// 
        /// You only need this function if there is more than one `GApplication`
        /// in your process. `application` cannot be `nil`.
        nonmutating set {
            gtk_builder_set_application(builder_ptr, UnsafeMutablePointer<GtkApplication>(newValue?.application_ptr))
        }
    }

    /// Gets all objects that have been constructed by `builder`. Note that
    /// this function does not increment the reference counts of the returned
    /// objects.
    @inlinable var objects: GLib.SListRef! {
        /// Gets all objects that have been constructed by `builder`. Note that
        /// this function does not increment the reference counts of the returned
        /// objects.
        get {
            let rv = GLib.SListRef(gtk_builder_get_objects(builder_ptr))
            return rv
        }
    }

    /// Gets the translation domain of `builder`.
    @inlinable var translationDomain: String! {
        /// Gets the translation domain of `builder`.
        get {
            let rv = gtk_builder_get_translation_domain(builder_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the translation domain of `builder`.
        /// See `GtkBuilder:translation`-domain.
        nonmutating set {
            gtk_builder_set_translation_domain(builder_ptr, newValue)
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = builder_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - Button Class

/// The `ButtonProtocol` protocol exposes the methods and properties of an underlying `GtkButton` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Button`.
/// Alternatively, use `ButtonRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkButton` widget is generally used to trigger a callback function that is
/// called when the button is pressed.  The various signals and how to use them
/// are outlined below.
/// 
/// The `GtkButton` widget can hold any valid child widget.  That is, it can hold
/// almost any other standard `GtkWidget`.  The most commonly used child is the
/// `GtkLabel`.
/// 
/// # CSS nodes
/// 
/// GtkButton has a single CSS node with name button. The node will get the
/// style classes .image-button or .text-button, if the content is just an
/// image or label, respectively. It may also receive the .flat style class.
/// 
/// Other style classes that are commonly used with GtkButton include
/// .suggested-action and .destructive-action. In special cases, buttons
/// can be made round by adding the .circular style class.
/// 
/// Button-like widgets like `GtkToggleButton`, `GtkMenuButton`, `GtkVolumeButton`,
/// `GtkLockButton`, `GtkColorButton`, `GtkFontButton` or `GtkFileChooserButton` use
/// style classes such as .toggle, .popup, .scale, .lock, .color, .font, .file
/// to differentiate themselves from a plain GtkButton.
public protocol ButtonProtocol: BinProtocol, ActionableProtocol, ActivatableProtocol {
        /// Untyped pointer to the underlying `GtkButton` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkButton` instance.
    var button_ptr: UnsafeMutablePointer<GtkButton>! { get }

}

/// The `ButtonRef` type acts as a lightweight Swift reference to an underlying `GtkButton` instance.
/// It exposes methods that can operate on this data type through `ButtonProtocol` conformance.
/// Use `ButtonRef` only as an `unowned` reference to an existing `GtkButton` instance.
///
/// The `GtkButton` widget is generally used to trigger a callback function that is
/// called when the button is pressed.  The various signals and how to use them
/// are outlined below.
/// 
/// The `GtkButton` widget can hold any valid child widget.  That is, it can hold
/// almost any other standard `GtkWidget`.  The most commonly used child is the
/// `GtkLabel`.
/// 
/// # CSS nodes
/// 
/// GtkButton has a single CSS node with name button. The node will get the
/// style classes .image-button or .text-button, if the content is just an
/// image or label, respectively. It may also receive the .flat style class.
/// 
/// Other style classes that are commonly used with GtkButton include
/// .suggested-action and .destructive-action. In special cases, buttons
/// can be made round by adding the .circular style class.
/// 
/// Button-like widgets like `GtkToggleButton`, `GtkMenuButton`, `GtkVolumeButton`,
/// `GtkLockButton`, `GtkColorButton`, `GtkFontButton` or `GtkFileChooserButton` use
/// style classes such as .toggle, .popup, .scale, .lock, .color, .font, .file
/// to differentiate themselves from a plain GtkButton.
public struct ButtonRef: ButtonProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkButton` instance.
    /// For type-safe access, use the generated, typed pointer `button_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ButtonRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkButton>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkButton>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkButton>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkButton>?) {
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

    /// Reference intialiser for a related type that implements `ButtonProtocol`
    @inlinable init<T: ButtonProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ButtonProtocol>(_ other: T) -> ButtonRef { ButtonRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkButton` widget. To add a child widget to the button,
    /// use `gtk_container_add()`.
    @inlinable init() {
        let rv = gtk_button_new()
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new button containing an icon from the current icon theme.
    /// 
    /// If the icon name isn’t known, a “broken image” icon will be
    /// displayed instead. If the current icon theme is changed, the icon
    /// will be updated appropriately.
    /// 
    /// This function is a convenience wrapper around `gtk_button_new()` and
    /// `gtk_button_set_image()`.
    @inlinable init(iconName iconName: UnsafePointer<gchar>? = nil, size: GtkIconSize) {
        let rv = gtk_button_new_from_icon_name(iconName, size)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkButton` containing the image and text from a
    /// [stock item](#gtkstock).
    /// Some stock ids have preprocessor macros like `GTK_STOCK_OK` and
    /// `GTK_STOCK_APPLY`.
    /// 
    /// If `stock_id` is unknown, then it will be treated as a mnemonic
    /// label (as for `gtk_button_new_with_mnemonic()`).
    ///
    /// **new_from_stock is deprecated:**
    /// Stock items are deprecated. Use gtk_button_new_with_label()
    /// instead.
    @available(*, deprecated)
    @inlinable init(stock stockID: UnsafePointer<gchar>!) {
        let rv = gtk_button_new_from_stock(stockID)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GtkButton` widget with a `GtkLabel` child containing the given
    /// text.
    @inlinable init(label: UnsafePointer<gchar>!) {
        let rv = gtk_button_new_with_label(label)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkButton` containing a label.
    /// If characters in `label` are preceded by an underscore, they are underlined.
    /// If you need a literal underscore character in a label, use “__” (two
    /// underscores). The first underlined character represents a keyboard
    /// accelerator called a mnemonic.
    /// Pressing Alt and that key activates the button.
    @inlinable init(mnemonic label: UnsafePointer<gchar>!) {
        let rv = gtk_button_new_with_mnemonic(label)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new button containing an icon from the current icon theme.
    /// 
    /// If the icon name isn’t known, a “broken image” icon will be
    /// displayed instead. If the current icon theme is changed, the icon
    /// will be updated appropriately.
    /// 
    /// This function is a convenience wrapper around `gtk_button_new()` and
    /// `gtk_button_set_image()`.
    @inlinable static func newFrom(iconName iconName: UnsafePointer<gchar>? = nil, size: GtkIconSize) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_button_new_from_icon_name(iconName, size))) else { return nil }
        return rv
    }

    /// Creates a new `GtkButton` containing the image and text from a
    /// [stock item](#gtkstock).
    /// Some stock ids have preprocessor macros like `GTK_STOCK_OK` and
    /// `GTK_STOCK_APPLY`.
    /// 
    /// If `stock_id` is unknown, then it will be treated as a mnemonic
    /// label (as for `gtk_button_new_with_mnemonic()`).
    ///
    /// **new_from_stock is deprecated:**
    /// Stock items are deprecated. Use gtk_button_new_with_label()
    /// instead.
    @available(*, deprecated)
    @inlinable static func newFrom(stock stockID: UnsafePointer<gchar>!) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_button_new_from_stock(stockID))) else { return nil }
        return rv
    }

    /// Creates a `GtkButton` widget with a `GtkLabel` child containing the given
    /// text.
    @inlinable static func newWith(label: UnsafePointer<gchar>!) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_button_new_with_label(label))) else { return nil }
        return rv
    }

    /// Creates a new `GtkButton` containing a label.
    /// If characters in `label` are preceded by an underscore, they are underlined.
    /// If you need a literal underscore character in a label, use “__” (two
    /// underscores). The first underlined character represents a keyboard
    /// accelerator called a mnemonic.
    /// Pressing Alt and that key activates the button.
    @inlinable static func newWith(mnemonic label: UnsafePointer<gchar>!) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_button_new_with_mnemonic(label))) else { return nil }
        return rv
    }
}

/// The `Button` type acts as a reference-counted owner of an underlying `GtkButton` instance.
/// It provides the methods that can operate on this data type through `ButtonProtocol` conformance.
/// Use `Button` as a strong reference or owner of a `GtkButton` instance.
///
/// The `GtkButton` widget is generally used to trigger a callback function that is
/// called when the button is pressed.  The various signals and how to use them
/// are outlined below.
/// 
/// The `GtkButton` widget can hold any valid child widget.  That is, it can hold
/// almost any other standard `GtkWidget`.  The most commonly used child is the
/// `GtkLabel`.
/// 
/// # CSS nodes
/// 
/// GtkButton has a single CSS node with name button. The node will get the
/// style classes .image-button or .text-button, if the content is just an
/// image or label, respectively. It may also receive the .flat style class.
/// 
/// Other style classes that are commonly used with GtkButton include
/// .suggested-action and .destructive-action. In special cases, buttons
/// can be made round by adding the .circular style class.
/// 
/// Button-like widgets like `GtkToggleButton`, `GtkMenuButton`, `GtkVolumeButton`,
/// `GtkLockButton`, `GtkColorButton`, `GtkFontButton` or `GtkFileChooserButton` use
/// style classes such as .toggle, .popup, .scale, .lock, .color, .font, .file
/// to differentiate themselves from a plain GtkButton.
open class Button: Bin, ButtonProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Button` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkButton>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Button` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkButton>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Button` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Button` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Button` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkButton>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Button` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkButton>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkButton`.
    /// i.e., ownership is transferred to the `Button` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkButton>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ButtonProtocol`
    /// Will retain `GtkButton`.
    /// - Parameter other: an instance of a related type that implements `ButtonProtocol`
    @inlinable public init<T: ButtonProtocol>(button other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkButton` widget. To add a child widget to the button,
    /// use `gtk_container_add()`.
    @inlinable public init() {
        let rv = gtk_button_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new button containing an icon from the current icon theme.
    /// 
    /// If the icon name isn’t known, a “broken image” icon will be
    /// displayed instead. If the current icon theme is changed, the icon
    /// will be updated appropriately.
    /// 
    /// This function is a convenience wrapper around `gtk_button_new()` and
    /// `gtk_button_set_image()`.
    @inlinable public init(iconName iconName: UnsafePointer<gchar>? = nil, size: GtkIconSize) {
        let rv = gtk_button_new_from_icon_name(iconName, size)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkButton` containing the image and text from a
    /// [stock item](#gtkstock).
    /// Some stock ids have preprocessor macros like `GTK_STOCK_OK` and
    /// `GTK_STOCK_APPLY`.
    /// 
    /// If `stock_id` is unknown, then it will be treated as a mnemonic
    /// label (as for `gtk_button_new_with_mnemonic()`).
    ///
    /// **new_from_stock is deprecated:**
    /// Stock items are deprecated. Use gtk_button_new_with_label()
    /// instead.
    @available(*, deprecated)
    @inlinable public init(stock stockID: UnsafePointer<gchar>!) {
        let rv = gtk_button_new_from_stock(stockID)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a `GtkButton` widget with a `GtkLabel` child containing the given
    /// text.
    @inlinable public init(label: UnsafePointer<gchar>!) {
        let rv = gtk_button_new_with_label(label)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkButton` containing a label.
    /// If characters in `label` are preceded by an underscore, they are underlined.
    /// If you need a literal underscore character in a label, use “__” (two
    /// underscores). The first underlined character represents a keyboard
    /// accelerator called a mnemonic.
    /// Pressing Alt and that key activates the button.
    @inlinable public init(mnemonic label: UnsafePointer<gchar>!) {
        let rv = gtk_button_new_with_mnemonic(label)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new button containing an icon from the current icon theme.
    /// 
    /// If the icon name isn’t known, a “broken image” icon will be
    /// displayed instead. If the current icon theme is changed, the icon
    /// will be updated appropriately.
    /// 
    /// This function is a convenience wrapper around `gtk_button_new()` and
    /// `gtk_button_set_image()`.
    @inlinable public static func newFrom(iconName iconName: UnsafePointer<gchar>? = nil, size: GtkIconSize) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_button_new_from_icon_name(iconName, size))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Creates a new `GtkButton` containing the image and text from a
    /// [stock item](#gtkstock).
    /// Some stock ids have preprocessor macros like `GTK_STOCK_OK` and
    /// `GTK_STOCK_APPLY`.
    /// 
    /// If `stock_id` is unknown, then it will be treated as a mnemonic
    /// label (as for `gtk_button_new_with_mnemonic()`).
    ///
    /// **new_from_stock is deprecated:**
    /// Stock items are deprecated. Use gtk_button_new_with_label()
    /// instead.
    @available(*, deprecated)
    @inlinable public static func newFrom(stock stockID: UnsafePointer<gchar>!) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_button_new_from_stock(stockID))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Creates a `GtkButton` widget with a `GtkLabel` child containing the given
    /// text.
    @inlinable public static func newWith(label: UnsafePointer<gchar>!) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_button_new_with_label(label))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Creates a new `GtkButton` containing a label.
    /// If characters in `label` are preceded by an underscore, they are underlined.
    /// If you need a literal underscore character in a label, use “__” (two
    /// underscores). The first underlined character represents a keyboard
    /// accelerator called a mnemonic.
    /// Pressing Alt and that key activates the button.
    @inlinable public static func newWith(mnemonic label: UnsafePointer<gchar>!) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_button_new_with_mnemonic(label))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum ButtonPropertyName: String, PropertyNameProtocol {
    /// If `true`, the button will ignore the `GtkSettings:gtk`-button-images
    /// setting and always show the image, if available.
    /// 
    /// Use this property if the button would be useless or hard to use
    /// without the image.
    case alwaysShowImage = "always-show-image"
    case appPaintable = "app-paintable"
    case borderWidth = "border-width"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case child = "child"
    case compositeChild = "composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
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
    /// The child widget to appear next to the button text.
    case image = "image"
    /// The position of the image relative to the text inside the button.
    case imagePosition = "image-position"
    case isFocus = "is-focus"
    case label = "label"
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
    case relief = "relief"
    case resizeMode = "resize-mode"
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

    ///
    /// **use-stock is deprecated:**
    /// This method is deprecated.
    case useStock = "use-stock"
    case useUnderline = "use-underline"
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
    /// If the child of the button is a `GtkMisc` or `GtkAlignment`, this property
    /// can be used to control its horizontal alignment. 0.0 is left aligned,
    /// 1.0 is right aligned.
    ///
    /// **xalign is deprecated:**
    /// Access the child widget directly if you need to control
    /// its alignment.
    case xalign = "xalign"
    /// If the child of the button is a `GtkMisc` or `GtkAlignment`, this property
    /// can be used to control its vertical alignment. 0.0 is top aligned,
    /// 1.0 is bottom aligned.
    ///
    /// **yalign is deprecated:**
    /// Access the child widget directly if you need to control
    /// its alignment.
    case yalign = "yalign"
}

public extension ButtonProtocol {
    /// Bind a `ButtonPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ButtonPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Button property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ButtonPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Button property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ButtonPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum ButtonSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// The `activate` signal on GtkButton is an action signal and
    /// emitting it causes the button to animate press then release.
    /// Applications should never connect to this signal, but use the
    /// `GtkButton::clicked` signal.
    case activate = "activate"
    case add = "add"
    /// The `button`-press-event signal will be emitted when a button
    /// (typically from a mouse) is pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonPressEvent = "button-press-event"
    /// The `button`-release-event signal will be emitted when a button
    /// (typically from a mouse) is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonReleaseEvent = "button-release-event"
    /// Determines whether an accelerator that activates the signal
    /// identified by `signal_id` can currently be activated.
    /// This signal is present to allow applications and derived
    /// widgets to override the default `GtkWidget` handling
    /// for determining whether an accelerator can be activated.
    case canActivateAccel = "can-activate-accel"
    case checkResize = "check-resize"
    /// The `child`-notify signal is emitted for each
    /// [child property](#child-properties)  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// Emitted when the button has been activated (pressed and released).
    case clicked = "clicked"
    /// The `composited`-changed signal is emitted when the composited
    /// status of `widgets` screen changes.
    /// See `gdk_screen_is_composited()`.
    ///
    /// **composited-changed is deprecated:**
    /// Use GdkScreen::composited-changed instead.
    case compositedChanged = "composited-changed"
    /// The `configure`-event signal will be emitted when the size, position or
    /// stacking of the `widget`'s window has changed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case configureEvent = "configure-event"
    /// Emitted when a redirected window belonging to `widget` gets drawn into.
    /// The region/area members of the event shows what area of the redirected
    /// drawable was drawn into.
    case damageEvent = "damage-event"
    /// The `delete`-event signal is emitted if a user requests that
    /// a toplevel window is closed. The default handler for this signal
    /// destroys the window. Connecting `gtk_widget_hide_on_delete()` to
    /// this signal will cause the window to be hidden instead, so that
    /// it can later be shown again without reconstructing it.
    case deleteEvent = "delete-event"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The `destroy`-event signal is emitted when a `GdkWindow` is destroyed.
    /// You rarely get this signal, because most widgets disconnect themselves
    /// from their window before they destroy it, so no widget owns the
    /// window at destroy time.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case destroyEvent = "destroy-event"
    /// The `direction`-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The `drag`-begin signal is emitted on the drag source when a drag is
    /// started. A typical reason to connect to this signal is to set up a
    /// custom drag icon with e.g. `gtk_drag_source_set_icon_pixbuf()`.
    /// 
    /// Note that some widgets set up a drag icon in the default handler of
    /// this signal, so you may have to use `g_signal_connect_after()` to
    /// override what the default handler did.
    case dragBegin = "drag-begin"
    /// The `drag`-data-delete signal is emitted on the drag source when a drag
    /// with the action `GDK_ACTION_MOVE` is successfully completed. The signal
    /// handler is responsible for deleting the data that has been dropped. What
    /// "delete" means depends on the context of the drag operation.
    case dragDataDelete = "drag-data-delete"
    /// The `drag`-data-get signal is emitted on the drag source when the drop
    /// site requests the data which is dragged. It is the responsibility of
    /// the signal handler to fill `data` with the data in the format which
    /// is indicated by `info`. See `gtk_selection_data_set()` and
    /// `gtk_selection_data_set_text()`.
    case dragDataGet = "drag-data-get"
    /// The `drag`-data-received signal is emitted on the drop site when the
    /// dragged data has been received. If the data was received in order to
    /// determine whether the drop will be accepted, the handler is expected
    /// to call `gdk_drag_status()` and not finish the drag.
    /// If the data was received in response to a `GtkWidget::drag`-drop signal
    /// (and this is the last target to be received), the handler for this
    /// signal is expected to process the received data and then call
    /// `gtk_drag_finish()`, setting the `success` parameter depending on
    /// whether the data was processed successfully.
    /// 
    /// Applications must create some means to determine why the signal was emitted
    /// and therefore whether to call `gdk_drag_status()` or `gtk_drag_finish()`.
    /// 
    /// The handler may inspect the selected action with
    /// `gdk_drag_context_get_selected_action()` before calling
    /// `gtk_drag_finish()`, e.g. to implement `GDK_ACTION_ASK` as
    /// shown in the following example:
    /// (C Language Example):
    /// ```C
    /// void
    /// drag_data_received (GtkWidget          *widget,
    ///                     GdkDragContext     *context,
    ///                     gint                x,
    ///                     gint                y,
    ///                     GtkSelectionData   *data,
    ///                     guint               info,
    ///                     guint               time)
    /// {
    ///   if ((data->length >= 0) && (data->format == 8))
    ///     {
    ///       GdkDragAction action;
    /// 
    ///       // handle data here
    /// 
    ///       action = gdk_drag_context_get_selected_action (context);
    ///       if (action == GDK_ACTION_ASK)
    ///         {
    ///           GtkWidget *dialog;
    ///           gint response;
    /// 
    ///           dialog = gtk_message_dialog_new (NULL,
    ///                                            GTK_DIALOG_MODAL |
    ///                                            GTK_DIALOG_DESTROY_WITH_PARENT,
    ///                                            GTK_MESSAGE_INFO,
    ///                                            GTK_BUTTONS_YES_NO,
    ///                                            "Move the data ?\n");
    ///           response = gtk_dialog_run (GTK_DIALOG (dialog));
    ///           gtk_widget_destroy (dialog);
    /// 
    ///           if (response == GTK_RESPONSE_YES)
    ///             action = GDK_ACTION_MOVE;
    ///           else
    ///             action = GDK_ACTION_COPY;
    ///          }
    /// 
    ///       gtk_drag_finish (context, TRUE, action == GDK_ACTION_MOVE, time);
    ///     }
    ///   else
    ///     gtk_drag_finish (context, FALSE, FALSE, time);
    ///  }
    /// ```
    /// 
    case dragDataReceived = "drag-data-received"
    /// The `drag`-drop signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the cursor position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// Otherwise, the handler returns `true`. In this case, the handler must
    /// ensure that `gtk_drag_finish()` is called to let the source know that
    /// the drop is done. The call to `gtk_drag_finish()` can be done either
    /// directly or in a `GtkWidget::drag`-data-received handler which gets
    /// triggered by calling `gtk_drag_get_data()` to receive the data for one
    /// or more of the supported targets.
    case dragDrop = "drag-drop"
    /// The `drag`-end signal is emitted on the drag source when a drag is
    /// finished.  A typical reason to connect to this signal is to undo
    /// things done in `GtkWidget::drag`-begin.
    case dragEnd = "drag-end"
    /// The `drag`-failed signal is emitted on the drag source when a drag has
    /// failed. The signal handler may hook custom code to handle a failed DnD
    /// operation based on the type of error, it returns `true` is the failure has
    /// been already handled (not showing the default "drag operation failed"
    /// animation), otherwise it returns `false`.
    case dragFailed = "drag-failed"
    /// The `drag`-leave signal is emitted on the drop site when the cursor
    /// leaves the widget. A typical reason to connect to this signal is to
    /// undo things done in `GtkWidget::drag`-motion, e.g. undo highlighting
    /// with `gtk_drag_unhighlight()`.
    /// 
    /// 
    /// Likewise, the `GtkWidget::drag`-leave signal is also emitted before the
    /// `drag`-drop signal, for instance to allow cleaning up of a preview item
    /// created in the `GtkWidget::drag`-motion signal handler.
    case dragLeave = "drag-leave"
    /// The `drag`-motion signal is emitted on the drop site when the user
    /// moves the cursor over the widget during a drag. The signal handler
    /// must determine whether the cursor position is in a drop zone or not.
    /// If it is not in a drop zone, it returns `false` and no further processing
    /// is necessary. Otherwise, the handler returns `true`. In this case, the
    /// handler is responsible for providing the necessary information for
    /// displaying feedback to the user, by calling `gdk_drag_status()`.
    /// 
    /// If the decision whether the drop will be accepted or rejected can't be
    /// made based solely on the cursor position and the type of the data, the
    /// handler may inspect the dragged data by calling `gtk_drag_get_data()` and
    /// defer the `gdk_drag_status()` call to the `GtkWidget::drag`-data-received
    /// handler. Note that you must pass `GTK_DEST_DEFAULT_DROP`,
    /// `GTK_DEST_DEFAULT_MOTION` or `GTK_DEST_DEFAULT_ALL` to `gtk_drag_dest_set()`
    /// when using the drag-motion signal that way.
    /// 
    /// Also note that there is no drag-enter signal. The drag receiver has to
    /// keep track of whether he has received any drag-motion signals since the
    /// last `GtkWidget::drag`-leave and if not, treat the drag-motion signal as
    /// an "enter" signal. Upon an "enter", the handler will typically highlight
    /// the drop site with `gtk_drag_highlight()`.
    /// (C Language Example):
    /// ```C
    /// static void
    /// drag_motion (GtkWidget      *widget,
    ///              GdkDragContext *context,
    ///              gint            x,
    ///              gint            y,
    ///              guint           time)
    /// {
    ///   GdkAtom target;
    /// 
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (!private_data->drag_highlight)
    ///    {
    ///      private_data->drag_highlight = 1;
    ///      gtk_drag_highlight (widget);
    ///    }
    /// 
    ///   target = gtk_drag_dest_find_target (widget, context, NULL);
    ///   if (target == GDK_NONE)
    ///     gdk_drag_status (context, 0, time);
    ///   else
    ///    {
    ///      private_data->pending_status
    ///         = gdk_drag_context_get_suggested_action (context);
    ///      gtk_drag_get_data (widget, context, target, time);
    ///    }
    /// 
    ///   return TRUE;
    /// }
    /// 
    /// static void
    /// drag_data_received (GtkWidget        *widget,
    ///                     GdkDragContext   *context,
    ///                     gint              x,
    ///                     gint              y,
    ///                     GtkSelectionData *selection_data,
    ///                     guint             info,
    ///                     guint             time)
    /// {
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (private_data->suggested_action)
    ///    {
    ///      private_data->suggested_action = 0;
    /// 
    ///      // We are getting this data due to a request in drag_motion,
    ///      // rather than due to a request in drag_drop, so we are just
    ///      // supposed to call gdk_drag_status(), not actually paste in
    ///      // the data.
    /// 
    ///      str = gtk_selection_data_get_text (selection_data);
    ///      if (!data_is_acceptable (str))
    ///        gdk_drag_status (context, 0, time);
    ///      else
    ///        gdk_drag_status (context,
    ///                         private_data->suggested_action,
    ///                         time);
    ///    }
    ///   else
    ///    {
    ///      // accept the drop
    ///    }
    /// }
    /// ```
    /// 
    case dragMotion = "drag-motion"
    /// This signal is emitted when a widget is supposed to render itself.
    /// The `widget`'s top left corner must be painted at the origin of
    /// the passed in context and be sized to the values returned by
    /// `gtk_widget_get_allocated_width()` and
    /// `gtk_widget_get_allocated_height()`.
    /// 
    /// Signal handlers connected to this signal can modify the cairo
    /// context passed as `cr` in any way they like and don't need to
    /// restore it. The signal emission takes care of calling `cairo_save()`
    /// before and `cairo_restore()` after invoking the handler.
    /// 
    /// The signal handler will get a `cr` with a clip region already set to the
    /// widget's dirty region, i.e. to the area that needs repainting.  Complicated
    /// widgets that want to avoid redrawing themselves completely can get the full
    /// extents of the clip region with `gdk_cairo_get_clip_rectangle()`, or they can
    /// get a finer-grained representation of the dirty region with
    /// `cairo_copy_clip_rectangle_list()`.
    case draw = "draw"
    /// Emitted when the pointer enters the button.
    ///
    /// **enter is deprecated:**
    /// Use the #GtkWidget::enter-notify-event signal.
    case enter = "enter"
    /// The `enter`-notify-event will be emitted when the pointer enters
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_ENTER_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case enterNotifyEvent = "enter-notify-event"
    /// The GTK+ main loop will emit three signals for each GDK event delivered
    /// to a widget: one generic `event` signal, another, more specific,
    /// signal that matches the type of event delivered (e.g.
    /// `GtkWidget::key`-press-event) and finally a generic
    /// `GtkWidget::event`-after signal.
    case event = "event"
    /// After the emission of the `GtkWidget::event` signal and (optionally)
    /// the second more specific signal, `event`-after will be emitted
    /// regardless of the previous two signals handlers return values.
    case eventAfter = "event-after"
    case focus = "focus"
    /// The `focus`-in-event signal will be emitted when the keyboard focus
    /// enters the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusInEvent = "focus-in-event"
    /// The `focus`-out-event signal will be emitted when the keyboard focus
    /// leaves the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusOutEvent = "focus-out-event"
    /// Emitted when a pointer or keyboard grab on a window belonging
    /// to `widget` gets broken.
    /// 
    /// On X11, this happens when the grab window becomes unviewable
    /// (i.e. it or one of its ancestors is unmapped), or if the same
    /// application grabs the pointer or keyboard again.
    case grabBrokenEvent = "grab-broken-event"
    case grabFocus = "grab-focus"
    /// The `grab`-notify signal is emitted when a widget becomes
    /// shadowed by a GTK+ grab (not a pointer or keyboard grab) on
    /// another widget, or when it becomes unshadowed due to a grab
    /// being removed.
    /// 
    /// A widget is shadowed by a `gtk_grab_add()` when the topmost
    /// grab widget in the grab stack of its window group is not
    /// its ancestor.
    case grabNotify = "grab-notify"
    /// The `hide` signal is emitted when `widget` is hidden, for example with
    /// `gtk_widget_hide()`.
    case hide = "hide"
    /// The `hierarchy`-changed signal is emitted when the
    /// anchored state of a widget changes. A widget is
    /// “anchored” when its toplevel
    /// ancestor is a `GtkWindow`. This signal is emitted when
    /// a widget changes from un-anchored to anchored or vice-versa.
    case hierarchyChanged = "hierarchy-changed"
    /// The `key`-press-event signal is emitted when a key is pressed. The signal
    /// emission will reoccur at the key-repeat rate when the key is kept pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyPressEvent = "key-press-event"
    /// The `key`-release-event signal is emitted when a key is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyReleaseEvent = "key-release-event"
    /// Gets emitted if keyboard navigation fails.
    /// See `gtk_widget_keynav_failed()` for details.
    case keynavFailed = "keynav-failed"
    /// Emitted when the pointer leaves the button.
    ///
    /// **leave is deprecated:**
    /// Use the #GtkWidget::leave-notify-event signal.
    case leave = "leave"
    /// The `leave`-notify-event will be emitted when the pointer leaves
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_LEAVE_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case leaveNotifyEvent = "leave-notify-event"
    /// The `map` signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// `gtk_widget_set_visible()`) and all its parents up to the toplevel widget
    /// are also visible. Once the map has occurred, `GtkWidget::map`-event will
    /// be emitted.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget::unmap`.
    case map = "map"
    /// The `map`-event signal will be emitted when the `widget`'s window is
    /// mapped. A window is mapped when it becomes visible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case mapEvent = "map-event"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// The `motion`-notify-event signal is emitted when the pointer moves
    /// over the widget's `GdkWindow`.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_POINTER_MOTION_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case motionNotifyEvent = "motion-notify-event"
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
    /// The `parent`-set signal is emitted when a new parent
    /// has been set on a widget.
    case parentSet = "parent-set"
    /// This signal gets emitted whenever a widget should pop up a context
    /// menu. This usually happens through the standard key binding mechanism;
    /// by pressing a certain key while a widget is focused, the user can cause
    /// the widget to pop up a menu.  For example, the `GtkEntry` widget creates
    /// a menu with clipboard commands. See the
    /// [Popup Menu Migration Checklist](#checklist-popup-menu)
    /// for an example of how to use this signal.
    case popupMenu = "popup-menu"
    /// Emitted when the button is pressed.
    ///
    /// **pressed is deprecated:**
    /// Use the #GtkWidget::button-press-event signal.
    case pressed = "pressed"
    /// The `property`-notify-event signal will be emitted when a property on
    /// the `widget`'s window has been changed or deleted.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROPERTY_CHANGE_MASK` mask.
    case propertyNotifyEvent = "property-notify-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_IN_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityInEvent = "proximity-in-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_OUT_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityOutEvent = "proximity-out-event"
    /// Emitted when `GtkWidget:has`-tooltip is `true` and the hover timeout
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
    /// `GdkWindow`, which means that `gtk_widget_realize()` has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// Emitted when the button is released.
    ///
    /// **released is deprecated:**
    /// Use the #GtkWidget::button-release-event signal.
    case released = "released"
    case remove = "remove"
    /// The `screen`-changed signal gets emitted when the
    /// screen of a widget has changed.
    case screenChanged = "screen-changed"
    /// The `scroll`-event signal is emitted when a button in the 4 to 7
    /// range is pressed. Wheel mice are usually configured to generate
    /// button press events for buttons 4 and 5 when the wheel is turned.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_SCROLL_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case scrollEvent = "scroll-event"
    /// The `selection`-clear-event signal will be emitted when the
    /// the `widget`'s window has lost ownership of a selection.
    case selectionClearEvent = "selection-clear-event"
    case selectionGet = "selection-get"
    case selectionNotifyEvent = "selection-notify-event"
    case selectionReceived = "selection-received"
    /// The `selection`-request-event signal will be emitted when
    /// another client requests ownership of the selection owned by
    /// the `widget`'s window.
    case selectionRequestEvent = "selection-request-event"
    case setFocusChild = "set-focus-child"
    /// The `show` signal is emitted when `widget` is shown, for example with
    /// `gtk_widget_show()`.
    case show = "show"
    case showHelp = "show-help"
    case sizeAllocate = "size-allocate"
    /// The `state`-changed signal is emitted when the widget state changes.
    /// See `gtk_widget_get_state()`.
    ///
    /// **state-changed is deprecated:**
    /// Use #GtkWidget::state-flags-changed instead.
    case stateChanged = "state-changed"
    /// The `state`-flags-changed signal is emitted when the widget state
    /// changes, see `gtk_widget_get_state_flags()`.
    case stateFlagsChanged = "state-flags-changed"
    /// The `style`-set signal is emitted when a new style has been set
    /// on a widget. Note that style-modifying functions like
    /// `gtk_widget_modify_base()` also cause this signal to be emitted.
    /// 
    /// Note that this signal is emitted for changes to the deprecated
    /// `GtkStyle`. To track changes to the `GtkStyleContext` associated
    /// with a widget, use the `GtkWidget::style`-updated signal.
    ///
    /// **style-set is deprecated:**
    /// Use the #GtkWidget::style-updated signal
    case styleSet = "style-set"
    /// The `style`-updated signal is a convenience signal that is emitted when the
    /// `GtkStyleContext::changed` signal is emitted on the `widget`'s associated
    /// `GtkStyleContext` as returned by `gtk_widget_get_style_context()`.
    /// 
    /// Note that style-modifying functions like `gtk_widget_override_color()` also
    /// cause this signal to be emitted.
    case styleUpdated = "style-updated"
    case touchEvent = "touch-event"
    /// The `unmap` signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The `unmap`-event signal will be emitted when the `widget`'s window is
    /// unmapped. A window is unmapped when it becomes invisible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case unmapEvent = "unmap-event"
    /// The `unrealize` signal is emitted when the `GdkWindow` associated with
    /// `widget` is destroyed, which means that `gtk_widget_unrealize()` has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
    /// The `visibility`-notify-event will be emitted when the `widget`'s
    /// window is obscured or unobscured.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_VISIBILITY_NOTIFY_MASK` mask.
    ///
    /// **visibility-notify-event is deprecated:**
    /// Modern composited windowing systems with pervasive
    ///     transparency make it impossible to track the visibility of a window
    ///     reliably, so this signal can not be guaranteed to provide useful
    ///     information.
    case visibilityNotifyEvent = "visibility-notify-event"
    /// The `window`-state-event will be emitted when the state of the
    /// toplevel window associated to the `widget` changes.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable
    /// this mask automatically for all new windows.
    case windowStateEvent = "window-state-event"
    /// If `true`, the button will ignore the `GtkSettings:gtk`-button-images
    /// setting and always show the image, if available.
    /// 
    /// Use this property if the button would be useless or hard to use
    /// without the image.
    case notifyAlwaysShowImage = "notify::always-show-image"
    case notifyAppPaintable = "notify::app-paintable"
    case notifyBorderWidth = "notify::border-width"
    case notifyCanDefault = "notify::can-default"
    case notifyCanFocus = "notify::can-focus"
    case notifyChild = "notify::child"
    case notifyCompositeChild = "notify::composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case notifyDoubleBuffered = "notify::double-buffered"
    case notifyEvents = "notify::events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case notifyExpand = "notify::expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case notifyHalign = "notify::halign"
    case notifyHasDefault = "notify::has-default"
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case notifyHexpandSet = "notify::hexpand-set"
    /// The child widget to appear next to the button text.
    case notifyImage = "notify::image"
    /// The position of the image relative to the text inside the button.
    case notifyImagePosition = "notify::image-position"
    case notifyIsFocus = "notify::is-focus"
    case notifyLabel = "notify::label"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case notifyMargin = "notify::margin"
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
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case notifyMarginLeft = "notify::margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case notifyMarginRight = "notify::margin-right"
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
    case notifyName = "notify::name"
    case notifyNoShowAll = "notify::no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case notifyOpacity = "notify::opacity"
    case notifyParent = "notify::parent"
    case notifyReceivesDefault = "notify::receives-default"
    case notifyRelief = "notify::relief"
    case notifyResizeMode = "notify::resize-mode"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case notifyStyle = "notify::style"
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
    case notifyTooltipMarkup = "notify::tooltip-markup"
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
    case notifyTooltipText = "notify::tooltip-text"

    ///
    /// **use-stock is deprecated:**
    /// This method is deprecated.
    case notifyUseStock = "notify::use-stock"
    case notifyUseUnderline = "notify::use-underline"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    case notifyWidthRequest = "notify::width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case notifyWindow = "notify::window"
    /// If the child of the button is a `GtkMisc` or `GtkAlignment`, this property
    /// can be used to control its horizontal alignment. 0.0 is left aligned,
    /// 1.0 is right aligned.
    ///
    /// **xalign is deprecated:**
    /// Access the child widget directly if you need to control
    /// its alignment.
    case notifyXalign = "notify::xalign"
    /// If the child of the button is a `GtkMisc` or `GtkAlignment`, this property
    /// can be used to control its vertical alignment. 0.0 is top aligned,
    /// 1.0 is bottom aligned.
    ///
    /// **yalign is deprecated:**
    /// Access the child widget directly if you need to control
    /// its alignment.
    case notifyYalign = "notify::yalign"
}

// MARK: Button signals
public extension ButtonProtocol {
    /// Connect a Swift signal handler to the given, typed `ButtonSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: ButtonSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `ButtonSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: ButtonSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// The `activate` signal on GtkButton is an action signal and
    /// emitting it causes the button to animate press then release.
    /// Applications should never connect to this signal, but use the
    /// `GtkButton::clicked` signal.
    /// - Note: This represents the underlying `activate` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `activate` signal is emitted
    @discardableResult @inlinable func onActivate(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ButtonRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<ButtonRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ButtonRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .activate,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `activate` signal for using the `connect(signal:)` methods
    static var activateSignal: ButtonSignalName { .activate }
    
    /// Emitted when the button has been activated (pressed and released).
    /// - Note: This represents the underlying `clicked` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `clicked` signal is emitted
    @discardableResult @inlinable func onClicked(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ButtonRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<ButtonRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ButtonRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .clicked,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `clicked` signal for using the `connect(signal:)` methods
    static var clickedSignal: ButtonSignalName { .clicked }
    
    /// Emitted when the pointer enters the button.
    /// - Note: This represents the underlying `enter` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `enter` signal is emitted
    @discardableResult @inlinable func onEnter(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ButtonRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<ButtonRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ButtonRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .enter,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `enter` signal for using the `connect(signal:)` methods
    static var enterSignal: ButtonSignalName { .enter }
    
    /// Emitted when the pointer leaves the button.
    /// - Note: This represents the underlying `leave` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `leave` signal is emitted
    @discardableResult @inlinable func onLeave(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ButtonRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<ButtonRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ButtonRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .leave,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `leave` signal for using the `connect(signal:)` methods
    static var leaveSignal: ButtonSignalName { .leave }
    
    /// Emitted when the button is pressed.
    /// - Note: This represents the underlying `pressed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `pressed` signal is emitted
    @discardableResult @inlinable func onPressed(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ButtonRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<ButtonRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ButtonRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .pressed,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `pressed` signal for using the `connect(signal:)` methods
    static var pressedSignal: ButtonSignalName { .pressed }
    
    /// Emitted when the button is released.
    /// - Note: This represents the underlying `released` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `released` signal is emitted
    @discardableResult @inlinable func onReleased(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ButtonRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<ButtonRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ButtonRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .released,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `released` signal for using the `connect(signal:)` methods
    static var releasedSignal: ButtonSignalName { .released }
    
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
    /// - Note: This represents the underlying `notify::always-show-image` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyAlwaysShowImage` signal is emitted
    @discardableResult @inlinable func onNotifyAlwaysShowImage(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ButtonRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ButtonRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ButtonRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyAlwaysShowImage,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::always-show-image` signal for using the `connect(signal:)` methods
    static var notifyAlwaysShowImageSignal: ButtonSignalName { .notifyAlwaysShowImage }
    
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
    /// - Note: This represents the underlying `notify::image` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyImage` signal is emitted
    @discardableResult @inlinable func onNotifyImage(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ButtonRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ButtonRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ButtonRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyImage,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::image` signal for using the `connect(signal:)` methods
    static var notifyImageSignal: ButtonSignalName { .notifyImage }
    
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
    /// - Note: This represents the underlying `notify::image-position` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyImagePosition` signal is emitted
    @discardableResult @inlinable func onNotifyImagePosition(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ButtonRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ButtonRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ButtonRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyImagePosition,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::image-position` signal for using the `connect(signal:)` methods
    static var notifyImagePositionSignal: ButtonSignalName { .notifyImagePosition }
    
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
    /// - Note: This represents the underlying `notify::label` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyLabel` signal is emitted
    @discardableResult @inlinable func onNotifyLabel(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ButtonRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ButtonRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ButtonRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyLabel,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::label` signal for using the `connect(signal:)` methods
    static var notifyLabelSignal: ButtonSignalName { .notifyLabel }
    
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
    /// - Note: This represents the underlying `notify::relief` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyRelief` signal is emitted
    @discardableResult @inlinable func onNotifyRelief(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ButtonRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ButtonRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ButtonRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyRelief,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::relief` signal for using the `connect(signal:)` methods
    static var notifyReliefSignal: ButtonSignalName { .notifyRelief }
    
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
    /// - Note: This represents the underlying `notify::use-stock` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyUseStock` signal is emitted
    @discardableResult @inlinable func onNotifyUseStock(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ButtonRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ButtonRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ButtonRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyUseStock,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::use-stock` signal for using the `connect(signal:)` methods
    static var notifyUseStockSignal: ButtonSignalName { .notifyUseStock }
    
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
    /// - Note: This represents the underlying `notify::use-underline` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyUseUnderline` signal is emitted
    @discardableResult @inlinable func onNotifyUseUnderline(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ButtonRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ButtonRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ButtonRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyUseUnderline,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::use-underline` signal for using the `connect(signal:)` methods
    static var notifyUseUnderlineSignal: ButtonSignalName { .notifyUseUnderline }
    
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
    @discardableResult @inlinable func onNotifyXalign(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ButtonRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ButtonRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ButtonRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
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
    static var notifyXalignSignal: ButtonSignalName { .notifyXalign }
    
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
    /// - Note: This represents the underlying `notify::yalign` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyYalign` signal is emitted
    @discardableResult @inlinable func onNotifyYalign(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ButtonRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ButtonRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ButtonRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyYalign,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::yalign` signal for using the `connect(signal:)` methods
    static var notifyYalignSignal: ButtonSignalName { .notifyYalign }
    
}

// MARK: Button Class: ButtonProtocol extension (methods and fields)
public extension ButtonProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkButton` instance.
    @inlinable var button_ptr: UnsafeMutablePointer<GtkButton>! { return ptr?.assumingMemoryBound(to: GtkButton.self) }

    /// Emits a `GtkButton::clicked` signal to the given `GtkButton`.
    @inlinable func clicked() {
        gtk_button_clicked(button_ptr)
    
    }

    /// Emits a `GtkButton::enter` signal to the given `GtkButton`.
    ///
    /// **enter is deprecated:**
    /// Use the #GtkWidget::enter-notify-event signal.
    @available(*, deprecated)
    @inlinable func enter() {
        gtk_button_enter(button_ptr)
    
    }

    /// Gets the alignment of the child in the button.
    ///
    /// **get_alignment is deprecated:**
    /// Access the child widget directly if you need to control
    /// its alignment.
    @available(*, deprecated)
    @inlinable func getAlignment(xalign: UnsafeMutablePointer<gfloat>!, yalign: UnsafeMutablePointer<gfloat>!) {
        gtk_button_get_alignment(button_ptr, xalign, yalign)
    
    }

    /// Returns whether the button will ignore the `GtkSettings:gtk`-button-images
    /// setting and always show the image, if available.
    @inlinable func getAlwaysShowImage() -> Bool {
        let rv = ((gtk_button_get_always_show_image(button_ptr)) != 0)
        return rv
    }

    /// Returns the button’s event window if it is realized, `nil` otherwise.
    /// This function should be rarely needed.
    @inlinable func getEventWindow() -> Gdk.WindowRef! {
        let rv = Gdk.WindowRef(gtk_button_get_event_window(button_ptr))
        return rv
    }

    /// Returns whether the button grabs focus when it is clicked with the mouse.
    /// See `gtk_button_set_focus_on_click()`.
    ///
    /// **get_focus_on_click is deprecated:**
    /// Use gtk_widget_get_focus_on_click() instead
    @available(*, deprecated)
    @inlinable @available(*, deprecated) func getFocusOnClick() -> Bool {
        let rv = ((gtk_button_get_focus_on_click(button_ptr)) != 0)
        return rv
    }

    /// Gets the widget that is currenty set as the image of `button`.
    /// This may have been explicitly set by `gtk_button_set_image()`
    /// or constructed by `gtk_button_new_from_stock()`.
    @inlinable func getImage() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_button_get_image(button_ptr))) else { return nil }
        return rv
    }

    /// Gets the position of the image relative to the text
    /// inside the button.
    @inlinable func getImagePosition() -> GtkPositionType {
        let rv = gtk_button_get_image_position(button_ptr)
        return rv
    }

    /// Fetches the text from the label of the button, as set by
    /// `gtk_button_set_label()`. If the label text has not
    /// been set the return value will be `nil`. This will be the
    /// case if you create an empty button with `gtk_button_new()` to
    /// use as a container.
    @inlinable func getLabel() -> String! {
        let rv = gtk_button_get_label(button_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns the current relief style of the given `GtkButton`.
    @inlinable func getRelief() -> GtkReliefStyle {
        let rv = gtk_button_get_relief(button_ptr)
        return rv
    }

    /// Returns whether the button label is a stock item.
    ///
    /// **get_use_stock is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func getUseStock() -> Bool {
        let rv = ((gtk_button_get_use_stock(button_ptr)) != 0)
        return rv
    }

    /// Returns whether an embedded underline in the button label indicates a
    /// mnemonic. See gtk_button_set_use_underline ().
    @inlinable func getUseUnderline() -> Bool {
        let rv = ((gtk_button_get_use_underline(button_ptr)) != 0)
        return rv
    }

    /// Emits a `GtkButton::leave` signal to the given `GtkButton`.
    ///
    /// **leave is deprecated:**
    /// Use the #GtkWidget::leave-notify-event signal.
    @available(*, deprecated)
    @inlinable func leave() {
        gtk_button_leave(button_ptr)
    
    }

    /// Emits a `GtkButton::pressed` signal to the given `GtkButton`.
    ///
    /// **pressed is deprecated:**
    /// Use the #GtkWidget::button-press-event signal.
    @available(*, deprecated)
    @inlinable func pressed() {
        gtk_button_pressed(button_ptr)
    
    }

    /// Emits a `GtkButton::released` signal to the given `GtkButton`.
    ///
    /// **released is deprecated:**
    /// Use the #GtkWidget::button-release-event signal.
    @available(*, deprecated)
    @inlinable func released() {
        gtk_button_released(button_ptr)
    
    }

    /// Sets the alignment of the child. This property has no effect unless
    /// the child is a `GtkMisc` or a `GtkAlignment`.
    ///
    /// **set_alignment is deprecated:**
    /// Access the child widget directly if you need to control
    /// its alignment.
    @available(*, deprecated)
    @inlinable func setAlignment(xalign: Double, yalign: Double) {
        gtk_button_set_alignment(button_ptr, gfloat(xalign), gfloat(yalign))
    
    }

    /// If `true`, the button will ignore the `GtkSettings:gtk`-button-images
    /// setting and always show the image, if available.
    /// 
    /// Use this property if the button  would be useless or hard to use
    /// without the image.
    @inlinable func setAlwaysShowImage(alwaysShow: Bool) {
        gtk_button_set_always_show_image(button_ptr, gboolean((alwaysShow) ? 1 : 0))
    
    }

    /// Sets whether the button will grab focus when it is clicked with the mouse.
    /// Making mouse clicks not grab focus is useful in places like toolbars where
    /// you don’t want the keyboard focus removed from the main area of the
    /// application.
    ///
    /// **set_focus_on_click is deprecated:**
    /// Use gtk_widget_set_focus_on_click() instead
    @available(*, deprecated)
    @inlinable @available(*, deprecated) func set(focusOnClick: Bool) {
        gtk_button_set_focus_on_click(button_ptr, gboolean((focusOnClick) ? 1 : 0))
    
    }

    /// Set the image of `button` to the given widget. The image will be
    /// displayed if the label text is `nil` or if
    /// `GtkButton:always`-show-image is `true`. You don’t have to call
    /// `gtk_widget_show()` on `image` yourself.
    @inlinable func set(image: WidgetRef? = nil) {
        gtk_button_set_image(button_ptr, image?.widget_ptr)
    
    }
    /// Set the image of `button` to the given widget. The image will be
    /// displayed if the label text is `nil` or if
    /// `GtkButton:always`-show-image is `true`. You don’t have to call
    /// `gtk_widget_show()` on `image` yourself.
    @inlinable func set<WidgetT: WidgetProtocol>(image: WidgetT?) {
        gtk_button_set_image(button_ptr, image?.widget_ptr)
    
    }

    /// Sets the position of the image relative to the text
    /// inside the button.
    @inlinable func setImage(position: GtkPositionType) {
        gtk_button_set_image_position(button_ptr, position)
    
    }

    /// Sets the text of the label of the button to `str`. This text is
    /// also used to select the stock item if `gtk_button_set_use_stock()`
    /// is used.
    /// 
    /// This will also clear any previously set labels.
    @inlinable func set(label: UnsafePointer<gchar>!) {
        gtk_button_set_label(button_ptr, label)
    
    }

    /// Sets the relief style of the edges of the given `GtkButton` widget.
    /// Two styles exist, `GTK_RELIEF_NORMAL` and `GTK_RELIEF_NONE`.
    /// The default style is, as one can guess, `GTK_RELIEF_NORMAL`.
    /// The deprecated value `GTK_RELIEF_HALF` behaves the same as
    /// `GTK_RELIEF_NORMAL`.
    @inlinable func set(relief: GtkReliefStyle) {
        gtk_button_set_relief(button_ptr, relief)
    
    }

    /// If `true`, the label set on the button is used as a
    /// stock id to select the stock item for the button.
    ///
    /// **set_use_stock is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func set(useStock: Bool) {
        gtk_button_set_use_stock(button_ptr, gboolean((useStock) ? 1 : 0))
    
    }

    /// If true, an underline in the text of the button label indicates
    /// the next character should be used for the mnemonic accelerator key.
    @inlinable func set(useUnderline: Bool) {
        gtk_button_set_use_underline(button_ptr, gboolean((useUnderline) ? 1 : 0))
    
    }
    /// Returns whether the button will ignore the `GtkSettings:gtk`-button-images
    /// setting and always show the image, if available.
    @inlinable var alwaysShowImage: Bool {
        /// Returns whether the button will ignore the `GtkSettings:gtk`-button-images
        /// setting and always show the image, if available.
        get {
            let rv = ((gtk_button_get_always_show_image(button_ptr)) != 0)
            return rv
        }
        /// If `true`, the button will ignore the `GtkSettings:gtk`-button-images
        /// setting and always show the image, if available.
        /// 
        /// Use this property if the button  would be useless or hard to use
        /// without the image.
        nonmutating set {
            gtk_button_set_always_show_image(button_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns the button’s event window if it is realized, `nil` otherwise.
    /// This function should be rarely needed.
    @inlinable var eventWindow: Gdk.WindowRef! {
        /// Returns the button’s event window if it is realized, `nil` otherwise.
        /// This function should be rarely needed.
        get {
            let rv = Gdk.WindowRef(gtk_button_get_event_window(button_ptr))
            return rv
        }
    }

    /// Returns whether the button grabs focus when it is clicked with the mouse.
    /// See `gtk_button_set_focus_on_click()`.
    ///
    /// **get_focus_on_click is deprecated:**
    /// Use gtk_widget_get_focus_on_click() instead
    @inlinable @available(*, deprecated)
    var focusOnClick: Bool {
        /// Returns whether the button grabs focus when it is clicked with the mouse.
        /// See `gtk_button_set_focus_on_click()`.
        ///
        /// **get_focus_on_click is deprecated:**
        /// Use gtk_widget_get_focus_on_click() instead
        @available(*, deprecated)
    get {
            let rv = ((gtk_button_get_focus_on_click(button_ptr)) != 0)
            return rv
        }
        /// Sets whether the button will grab focus when it is clicked with the mouse.
        /// Making mouse clicks not grab focus is useful in places like toolbars where
        /// you don’t want the keyboard focus removed from the main area of the
        /// application.
        ///
        /// **set_focus_on_click is deprecated:**
        /// Use gtk_widget_set_focus_on_click() instead
        @available(*, deprecated)
    nonmutating set {
            gtk_button_set_focus_on_click(button_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// The child widget to appear next to the button text.
    @inlinable var image: WidgetRef! {
        /// Gets the widget that is currenty set as the image of `button`.
        /// This may have been explicitly set by `gtk_button_set_image()`
        /// or constructed by `gtk_button_new_from_stock()`.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_button_get_image(button_ptr))) else { return nil }
            return rv
        }
        /// Set the image of `button` to the given widget. The image will be
        /// displayed if the label text is `nil` or if
        /// `GtkButton:always`-show-image is `true`. You don’t have to call
        /// `gtk_widget_show()` on `image` yourself.
        nonmutating set {
            gtk_button_set_image(button_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }

    /// Gets the position of the image relative to the text
    /// inside the button.
    @inlinable var imagePosition: GtkPositionType {
        /// Gets the position of the image relative to the text
        /// inside the button.
        get {
            let rv = gtk_button_get_image_position(button_ptr)
            return rv
        }
        /// Sets the position of the image relative to the text
        /// inside the button.
        nonmutating set {
            gtk_button_set_image_position(button_ptr, newValue)
        }
    }

    @inlinable var label: String! {
        /// Fetches the text from the label of the button, as set by
        /// `gtk_button_set_label()`. If the label text has not
        /// been set the return value will be `nil`. This will be the
        /// case if you create an empty button with `gtk_button_new()` to
        /// use as a container.
        get {
            let rv = gtk_button_get_label(button_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the text of the label of the button to `str`. This text is
        /// also used to select the stock item if `gtk_button_set_use_stock()`
        /// is used.
        /// 
        /// This will also clear any previously set labels.
        nonmutating set {
            gtk_button_set_label(button_ptr, newValue)
        }
    }

    @inlinable var relief: GtkReliefStyle {
        /// Returns the current relief style of the given `GtkButton`.
        get {
            let rv = gtk_button_get_relief(button_ptr)
            return rv
        }
        /// Sets the relief style of the edges of the given `GtkButton` widget.
        /// Two styles exist, `GTK_RELIEF_NORMAL` and `GTK_RELIEF_NONE`.
        /// The default style is, as one can guess, `GTK_RELIEF_NORMAL`.
        /// The deprecated value `GTK_RELIEF_HALF` behaves the same as
        /// `GTK_RELIEF_NORMAL`.
        nonmutating set {
            gtk_button_set_relief(button_ptr, newValue)
        }
    }

    /// Returns whether the button label is a stock item.
    ///
    /// **get_use_stock is deprecated:**
    /// This method is deprecated.
    @inlinable var useStock: Bool {
        /// Returns whether the button label is a stock item.
        ///
        /// **get_use_stock is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated)
    get {
            let rv = ((gtk_button_get_use_stock(button_ptr)) != 0)
            return rv
        }
        /// If `true`, the label set on the button is used as a
        /// stock id to select the stock item for the button.
        ///
        /// **set_use_stock is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated)
    nonmutating set {
            gtk_button_set_use_stock(button_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns whether an embedded underline in the button label indicates a
    /// mnemonic. See gtk_button_set_use_underline ().
    @inlinable var useUnderline: Bool {
        /// Returns whether an embedded underline in the button label indicates a
        /// mnemonic. See gtk_button_set_use_underline ().
        get {
            let rv = ((gtk_button_get_use_underline(button_ptr)) != 0)
            return rv
        }
        /// If true, an underline in the text of the button label indicates
        /// the next character should be used for the mnemonic accelerator key.
        nonmutating set {
            gtk_button_set_use_underline(button_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    // var bin is unavailable because bin is private

    // var priv is unavailable because priv is private

}



// MARK: - ButtonAccessible Class

/// The `ButtonAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkButtonAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ButtonAccessible`.
/// Alternatively, use `ButtonAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ButtonAccessibleProtocol: ContainerAccessibleProtocol, Atk.ActionProtocol, Atk.ImageProtocol {
        /// Untyped pointer to the underlying `GtkButtonAccessible` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkButtonAccessible` instance.
    var button_accessible_ptr: UnsafeMutablePointer<GtkButtonAccessible>! { get }

}

/// The `ButtonAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkButtonAccessible` instance.
/// It exposes methods that can operate on this data type through `ButtonAccessibleProtocol` conformance.
/// Use `ButtonAccessibleRef` only as an `unowned` reference to an existing `GtkButtonAccessible` instance.
///

public struct ButtonAccessibleRef: ButtonAccessibleProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkButtonAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `button_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ButtonAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkButtonAccessible>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkButtonAccessible>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkButtonAccessible>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkButtonAccessible>?) {
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

    /// Reference intialiser for a related type that implements `ButtonAccessibleProtocol`
    @inlinable init<T: ButtonAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ButtonAccessibleProtocol>(_ other: T) -> ButtonAccessibleRef { ButtonAccessibleRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessibleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessibleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessibleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessibleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessibleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ButtonAccessible` type acts as a reference-counted owner of an underlying `GtkButtonAccessible` instance.
/// It provides the methods that can operate on this data type through `ButtonAccessibleProtocol` conformance.
/// Use `ButtonAccessible` as a strong reference or owner of a `GtkButtonAccessible` instance.
///

open class ButtonAccessible: ContainerAccessible, ButtonAccessibleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ButtonAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkButtonAccessible>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ButtonAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkButtonAccessible>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ButtonAccessible` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ButtonAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ButtonAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkButtonAccessible>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ButtonAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkButtonAccessible>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkButtonAccessible`.
    /// i.e., ownership is transferred to the `ButtonAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkButtonAccessible>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ButtonAccessibleProtocol`
    /// Will retain `GtkButtonAccessible`.
    /// - Parameter other: an instance of a related type that implements `ButtonAccessibleProtocol`
    @inlinable public init<T: ButtonAccessibleProtocol>(buttonAccessible other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessibleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessibleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessibleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessibleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum ButtonAccessiblePropertyName: String, PropertyNameProtocol {
    case accessibleComponentLayer = "accessible-component-layer"
    case accessibleComponentMdiZorder = "accessible-component-mdi-zorder"
    case accessibleDescription = "accessible-description"
    case accessibleHypertextNlinks = "accessible-hypertext-nlinks"
    case accessibleName = "accessible-name"
    case accessibleParent = "accessible-parent"
    case accessibleRole = "accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case accessibleTableCaption = "accessible-table-caption"
    case accessibleTableCaptionObject = "accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case accessibleTableColumnDescription = "accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case accessibleTableColumnHeader = "accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case accessibleTableRowDescription = "accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case accessibleTableRowHeader = "accessible-table-row-header"
    case accessibleTableSummary = "accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case accessibleValue = "accessible-value"
    case widget = "widget"
}

public extension ButtonAccessibleProtocol {
    /// Bind a `ButtonAccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ButtonAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a ButtonAccessible property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ButtonAccessiblePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a ButtonAccessible property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ButtonAccessiblePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum ButtonAccessibleSignalName: String, SignalNameProtocol {
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
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
    /// The signal "property-change" is emitted when an object's property
    /// value changes. `arg1` contains an `AtkPropertyValues` with the name
    /// and the new value of the property whose value has changed. Note
    /// that, as with GObject notify, getting this signal does not
    /// guarantee that the value of the property has actually changed; it
    /// may also be emitted when the setter of the property is called to
    /// reinstate the previous value.
    /// 
    /// Toolkit implementor note: ATK implementors should use
    /// `g_object_notify()` to emit property-changed
    /// notifications. `AtkObject::property`-changed is needed by the
    /// implementation of `atk_add_global_event_listener()` because GObject
    /// notify doesn't support emission hooks.
    case propertyChange = "property-change"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The "visible-data-changed" signal is emitted when the visual
    /// appearance of the object changed.
    case visibleDataChanged = "visible-data-changed"
    case notifyAccessibleComponentLayer = "notify::accessible-component-layer"
    case notifyAccessibleComponentMdiZorder = "notify::accessible-component-mdi-zorder"
    case notifyAccessibleDescription = "notify::accessible-description"
    case notifyAccessibleHypertextNlinks = "notify::accessible-hypertext-nlinks"
    case notifyAccessibleName = "notify::accessible-name"
    case notifyAccessibleParent = "notify::accessible-parent"
    case notifyAccessibleRole = "notify::accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case notifyAccessibleTableCaption = "notify::accessible-table-caption"
    case notifyAccessibleTableCaptionObject = "notify::accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case notifyAccessibleTableColumnDescription = "notify::accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case notifyAccessibleTableColumnHeader = "notify::accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case notifyAccessibleTableRowDescription = "notify::accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case notifyAccessibleTableRowHeader = "notify::accessible-table-row-header"
    case notifyAccessibleTableSummary = "notify::accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case notifyAccessibleValue = "notify::accessible-value"
    case notifyWidget = "notify::widget"
}

// MARK: ButtonAccessible has no signals
// MARK: ButtonAccessible Class: ButtonAccessibleProtocol extension (methods and fields)
public extension ButtonAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkButtonAccessible` instance.
    @inlinable var button_accessible_ptr: UnsafeMutablePointer<GtkButtonAccessible>! { return ptr?.assumingMemoryBound(to: GtkButtonAccessible.self) }


    @inlinable var parent: GtkContainerAccessible {
        get {
            let rv = button_accessible_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - ButtonBox Class

/// The `ButtonBoxProtocol` protocol exposes the methods and properties of an underlying `GtkButtonBox` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ButtonBox`.
/// Alternatively, use `ButtonBoxRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ButtonBoxProtocol: BoxProtocol {
        /// Untyped pointer to the underlying `GtkButtonBox` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkButtonBox` instance.
    var button_box_ptr: UnsafeMutablePointer<GtkButtonBox>! { get }

}

/// The `ButtonBoxRef` type acts as a lightweight Swift reference to an underlying `GtkButtonBox` instance.
/// It exposes methods that can operate on this data type through `ButtonBoxProtocol` conformance.
/// Use `ButtonBoxRef` only as an `unowned` reference to an existing `GtkButtonBox` instance.
///

public struct ButtonBoxRef: ButtonBoxProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkButtonBox` instance.
    /// For type-safe access, use the generated, typed pointer `button_box_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ButtonBoxRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkButtonBox>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkButtonBox>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkButtonBox>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkButtonBox>?) {
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

    /// Reference intialiser for a related type that implements `ButtonBoxProtocol`
    @inlinable init<T: ButtonBoxProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ButtonBoxProtocol>(_ other: T) -> ButtonBoxRef { ButtonBoxRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkButtonBox`.
    @inlinable init( orientation: GtkOrientation) {
        let rv = gtk_button_box_new(orientation)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `ButtonBox` type acts as a reference-counted owner of an underlying `GtkButtonBox` instance.
/// It provides the methods that can operate on this data type through `ButtonBoxProtocol` conformance.
/// Use `ButtonBox` as a strong reference or owner of a `GtkButtonBox` instance.
///

open class ButtonBox: Box, ButtonBoxProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ButtonBox` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkButtonBox>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ButtonBox` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkButtonBox>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ButtonBox` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ButtonBox` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ButtonBox` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkButtonBox>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ButtonBox` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkButtonBox>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkButtonBox`.
    /// i.e., ownership is transferred to the `ButtonBox` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkButtonBox>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ButtonBoxProtocol`
    /// Will retain `GtkButtonBox`.
    /// - Parameter other: an instance of a related type that implements `ButtonBoxProtocol`
    @inlinable public init<T: ButtonBoxProtocol>(buttonBox other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkButtonBox`.
    @inlinable public init( orientation: GtkOrientation) {
        let rv = gtk_button_box_new(orientation)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum ButtonBoxPropertyName: String, PropertyNameProtocol {
    case appPaintable = "app-paintable"
    case baselinePosition = "baseline-position"
    case borderWidth = "border-width"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case child = "child"
    case compositeChild = "composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
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
    case homogeneous = "homogeneous"
    case isFocus = "is-focus"
    case layoutStyle = "layout-style"
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
    case resizeMode = "resize-mode"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    case spacing = "spacing"
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

public extension ButtonBoxProtocol {
    /// Bind a `ButtonBoxPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ButtonBoxPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a ButtonBox property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ButtonBoxPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a ButtonBox property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ButtonBoxPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum ButtonBoxSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    case add = "add"
    /// The `button`-press-event signal will be emitted when a button
    /// (typically from a mouse) is pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonPressEvent = "button-press-event"
    /// The `button`-release-event signal will be emitted when a button
    /// (typically from a mouse) is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonReleaseEvent = "button-release-event"
    /// Determines whether an accelerator that activates the signal
    /// identified by `signal_id` can currently be activated.
    /// This signal is present to allow applications and derived
    /// widgets to override the default `GtkWidget` handling
    /// for determining whether an accelerator can be activated.
    case canActivateAccel = "can-activate-accel"
    case checkResize = "check-resize"
    /// The `child`-notify signal is emitted for each
    /// [child property](#child-properties)  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// The `composited`-changed signal is emitted when the composited
    /// status of `widgets` screen changes.
    /// See `gdk_screen_is_composited()`.
    ///
    /// **composited-changed is deprecated:**
    /// Use GdkScreen::composited-changed instead.
    case compositedChanged = "composited-changed"
    /// The `configure`-event signal will be emitted when the size, position or
    /// stacking of the `widget`'s window has changed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case configureEvent = "configure-event"
    /// Emitted when a redirected window belonging to `widget` gets drawn into.
    /// The region/area members of the event shows what area of the redirected
    /// drawable was drawn into.
    case damageEvent = "damage-event"
    /// The `delete`-event signal is emitted if a user requests that
    /// a toplevel window is closed. The default handler for this signal
    /// destroys the window. Connecting `gtk_widget_hide_on_delete()` to
    /// this signal will cause the window to be hidden instead, so that
    /// it can later be shown again without reconstructing it.
    case deleteEvent = "delete-event"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The `destroy`-event signal is emitted when a `GdkWindow` is destroyed.
    /// You rarely get this signal, because most widgets disconnect themselves
    /// from their window before they destroy it, so no widget owns the
    /// window at destroy time.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case destroyEvent = "destroy-event"
    /// The `direction`-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The `drag`-begin signal is emitted on the drag source when a drag is
    /// started. A typical reason to connect to this signal is to set up a
    /// custom drag icon with e.g. `gtk_drag_source_set_icon_pixbuf()`.
    /// 
    /// Note that some widgets set up a drag icon in the default handler of
    /// this signal, so you may have to use `g_signal_connect_after()` to
    /// override what the default handler did.
    case dragBegin = "drag-begin"
    /// The `drag`-data-delete signal is emitted on the drag source when a drag
    /// with the action `GDK_ACTION_MOVE` is successfully completed. The signal
    /// handler is responsible for deleting the data that has been dropped. What
    /// "delete" means depends on the context of the drag operation.
    case dragDataDelete = "drag-data-delete"
    /// The `drag`-data-get signal is emitted on the drag source when the drop
    /// site requests the data which is dragged. It is the responsibility of
    /// the signal handler to fill `data` with the data in the format which
    /// is indicated by `info`. See `gtk_selection_data_set()` and
    /// `gtk_selection_data_set_text()`.
    case dragDataGet = "drag-data-get"
    /// The `drag`-data-received signal is emitted on the drop site when the
    /// dragged data has been received. If the data was received in order to
    /// determine whether the drop will be accepted, the handler is expected
    /// to call `gdk_drag_status()` and not finish the drag.
    /// If the data was received in response to a `GtkWidget::drag`-drop signal
    /// (and this is the last target to be received), the handler for this
    /// signal is expected to process the received data and then call
    /// `gtk_drag_finish()`, setting the `success` parameter depending on
    /// whether the data was processed successfully.
    /// 
    /// Applications must create some means to determine why the signal was emitted
    /// and therefore whether to call `gdk_drag_status()` or `gtk_drag_finish()`.
    /// 
    /// The handler may inspect the selected action with
    /// `gdk_drag_context_get_selected_action()` before calling
    /// `gtk_drag_finish()`, e.g. to implement `GDK_ACTION_ASK` as
    /// shown in the following example:
    /// (C Language Example):
    /// ```C
    /// void
    /// drag_data_received (GtkWidget          *widget,
    ///                     GdkDragContext     *context,
    ///                     gint                x,
    ///                     gint                y,
    ///                     GtkSelectionData   *data,
    ///                     guint               info,
    ///                     guint               time)
    /// {
    ///   if ((data->length >= 0) && (data->format == 8))
    ///     {
    ///       GdkDragAction action;
    /// 
    ///       // handle data here
    /// 
    ///       action = gdk_drag_context_get_selected_action (context);
    ///       if (action == GDK_ACTION_ASK)
    ///         {
    ///           GtkWidget *dialog;
    ///           gint response;
    /// 
    ///           dialog = gtk_message_dialog_new (NULL,
    ///                                            GTK_DIALOG_MODAL |
    ///                                            GTK_DIALOG_DESTROY_WITH_PARENT,
    ///                                            GTK_MESSAGE_INFO,
    ///                                            GTK_BUTTONS_YES_NO,
    ///                                            "Move the data ?\n");
    ///           response = gtk_dialog_run (GTK_DIALOG (dialog));
    ///           gtk_widget_destroy (dialog);
    /// 
    ///           if (response == GTK_RESPONSE_YES)
    ///             action = GDK_ACTION_MOVE;
    ///           else
    ///             action = GDK_ACTION_COPY;
    ///          }
    /// 
    ///       gtk_drag_finish (context, TRUE, action == GDK_ACTION_MOVE, time);
    ///     }
    ///   else
    ///     gtk_drag_finish (context, FALSE, FALSE, time);
    ///  }
    /// ```
    /// 
    case dragDataReceived = "drag-data-received"
    /// The `drag`-drop signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the cursor position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// Otherwise, the handler returns `true`. In this case, the handler must
    /// ensure that `gtk_drag_finish()` is called to let the source know that
    /// the drop is done. The call to `gtk_drag_finish()` can be done either
    /// directly or in a `GtkWidget::drag`-data-received handler which gets
    /// triggered by calling `gtk_drag_get_data()` to receive the data for one
    /// or more of the supported targets.
    case dragDrop = "drag-drop"
    /// The `drag`-end signal is emitted on the drag source when a drag is
    /// finished.  A typical reason to connect to this signal is to undo
    /// things done in `GtkWidget::drag`-begin.
    case dragEnd = "drag-end"
    /// The `drag`-failed signal is emitted on the drag source when a drag has
    /// failed. The signal handler may hook custom code to handle a failed DnD
    /// operation based on the type of error, it returns `true` is the failure has
    /// been already handled (not showing the default "drag operation failed"
    /// animation), otherwise it returns `false`.
    case dragFailed = "drag-failed"
    /// The `drag`-leave signal is emitted on the drop site when the cursor
    /// leaves the widget. A typical reason to connect to this signal is to
    /// undo things done in `GtkWidget::drag`-motion, e.g. undo highlighting
    /// with `gtk_drag_unhighlight()`.
    /// 
    /// 
    /// Likewise, the `GtkWidget::drag`-leave signal is also emitted before the
    /// `drag`-drop signal, for instance to allow cleaning up of a preview item
    /// created in the `GtkWidget::drag`-motion signal handler.
    case dragLeave = "drag-leave"
    /// The `drag`-motion signal is emitted on the drop site when the user
    /// moves the cursor over the widget during a drag. The signal handler
    /// must determine whether the cursor position is in a drop zone or not.
    /// If it is not in a drop zone, it returns `false` and no further processing
    /// is necessary. Otherwise, the handler returns `true`. In this case, the
    /// handler is responsible for providing the necessary information for
    /// displaying feedback to the user, by calling `gdk_drag_status()`.
    /// 
    /// If the decision whether the drop will be accepted or rejected can't be
    /// made based solely on the cursor position and the type of the data, the
    /// handler may inspect the dragged data by calling `gtk_drag_get_data()` and
    /// defer the `gdk_drag_status()` call to the `GtkWidget::drag`-data-received
    /// handler. Note that you must pass `GTK_DEST_DEFAULT_DROP`,
    /// `GTK_DEST_DEFAULT_MOTION` or `GTK_DEST_DEFAULT_ALL` to `gtk_drag_dest_set()`
    /// when using the drag-motion signal that way.
    /// 
    /// Also note that there is no drag-enter signal. The drag receiver has to
    /// keep track of whether he has received any drag-motion signals since the
    /// last `GtkWidget::drag`-leave and if not, treat the drag-motion signal as
    /// an "enter" signal. Upon an "enter", the handler will typically highlight
    /// the drop site with `gtk_drag_highlight()`.
    /// (C Language Example):
    /// ```C
    /// static void
    /// drag_motion (GtkWidget      *widget,
    ///              GdkDragContext *context,
    ///              gint            x,
    ///              gint            y,
    ///              guint           time)
    /// {
    ///   GdkAtom target;
    /// 
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (!private_data->drag_highlight)
    ///    {
    ///      private_data->drag_highlight = 1;
    ///      gtk_drag_highlight (widget);
    ///    }
    /// 
    ///   target = gtk_drag_dest_find_target (widget, context, NULL);
    ///   if (target == GDK_NONE)
    ///     gdk_drag_status (context, 0, time);
    ///   else
    ///    {
    ///      private_data->pending_status
    ///         = gdk_drag_context_get_suggested_action (context);
    ///      gtk_drag_get_data (widget, context, target, time);
    ///    }
    /// 
    ///   return TRUE;
    /// }
    /// 
    /// static void
    /// drag_data_received (GtkWidget        *widget,
    ///                     GdkDragContext   *context,
    ///                     gint              x,
    ///                     gint              y,
    ///                     GtkSelectionData *selection_data,
    ///                     guint             info,
    ///                     guint             time)
    /// {
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (private_data->suggested_action)
    ///    {
    ///      private_data->suggested_action = 0;
    /// 
    ///      // We are getting this data due to a request in drag_motion,
    ///      // rather than due to a request in drag_drop, so we are just
    ///      // supposed to call gdk_drag_status(), not actually paste in
    ///      // the data.
    /// 
    ///      str = gtk_selection_data_get_text (selection_data);
    ///      if (!data_is_acceptable (str))
    ///        gdk_drag_status (context, 0, time);
    ///      else
    ///        gdk_drag_status (context,
    ///                         private_data->suggested_action,
    ///                         time);
    ///    }
    ///   else
    ///    {
    ///      // accept the drop
    ///    }
    /// }
    /// ```
    /// 
    case dragMotion = "drag-motion"
    /// This signal is emitted when a widget is supposed to render itself.
    /// The `widget`'s top left corner must be painted at the origin of
    /// the passed in context and be sized to the values returned by
    /// `gtk_widget_get_allocated_width()` and
    /// `gtk_widget_get_allocated_height()`.
    /// 
    /// Signal handlers connected to this signal can modify the cairo
    /// context passed as `cr` in any way they like and don't need to
    /// restore it. The signal emission takes care of calling `cairo_save()`
    /// before and `cairo_restore()` after invoking the handler.
    /// 
    /// The signal handler will get a `cr` with a clip region already set to the
    /// widget's dirty region, i.e. to the area that needs repainting.  Complicated
    /// widgets that want to avoid redrawing themselves completely can get the full
    /// extents of the clip region with `gdk_cairo_get_clip_rectangle()`, or they can
    /// get a finer-grained representation of the dirty region with
    /// `cairo_copy_clip_rectangle_list()`.
    case draw = "draw"
    /// The `enter`-notify-event will be emitted when the pointer enters
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_ENTER_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case enterNotifyEvent = "enter-notify-event"
    /// The GTK+ main loop will emit three signals for each GDK event delivered
    /// to a widget: one generic `event` signal, another, more specific,
    /// signal that matches the type of event delivered (e.g.
    /// `GtkWidget::key`-press-event) and finally a generic
    /// `GtkWidget::event`-after signal.
    case event = "event"
    /// After the emission of the `GtkWidget::event` signal and (optionally)
    /// the second more specific signal, `event`-after will be emitted
    /// regardless of the previous two signals handlers return values.
    case eventAfter = "event-after"
    case focus = "focus"
    /// The `focus`-in-event signal will be emitted when the keyboard focus
    /// enters the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusInEvent = "focus-in-event"
    /// The `focus`-out-event signal will be emitted when the keyboard focus
    /// leaves the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusOutEvent = "focus-out-event"
    /// Emitted when a pointer or keyboard grab on a window belonging
    /// to `widget` gets broken.
    /// 
    /// On X11, this happens when the grab window becomes unviewable
    /// (i.e. it or one of its ancestors is unmapped), or if the same
    /// application grabs the pointer or keyboard again.
    case grabBrokenEvent = "grab-broken-event"
    case grabFocus = "grab-focus"
    /// The `grab`-notify signal is emitted when a widget becomes
    /// shadowed by a GTK+ grab (not a pointer or keyboard grab) on
    /// another widget, or when it becomes unshadowed due to a grab
    /// being removed.
    /// 
    /// A widget is shadowed by a `gtk_grab_add()` when the topmost
    /// grab widget in the grab stack of its window group is not
    /// its ancestor.
    case grabNotify = "grab-notify"
    /// The `hide` signal is emitted when `widget` is hidden, for example with
    /// `gtk_widget_hide()`.
    case hide = "hide"
    /// The `hierarchy`-changed signal is emitted when the
    /// anchored state of a widget changes. A widget is
    /// “anchored” when its toplevel
    /// ancestor is a `GtkWindow`. This signal is emitted when
    /// a widget changes from un-anchored to anchored or vice-versa.
    case hierarchyChanged = "hierarchy-changed"
    /// The `key`-press-event signal is emitted when a key is pressed. The signal
    /// emission will reoccur at the key-repeat rate when the key is kept pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyPressEvent = "key-press-event"
    /// The `key`-release-event signal is emitted when a key is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyReleaseEvent = "key-release-event"
    /// Gets emitted if keyboard navigation fails.
    /// See `gtk_widget_keynav_failed()` for details.
    case keynavFailed = "keynav-failed"
    /// The `leave`-notify-event will be emitted when the pointer leaves
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_LEAVE_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case leaveNotifyEvent = "leave-notify-event"
    /// The `map` signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// `gtk_widget_set_visible()`) and all its parents up to the toplevel widget
    /// are also visible. Once the map has occurred, `GtkWidget::map`-event will
    /// be emitted.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget::unmap`.
    case map = "map"
    /// The `map`-event signal will be emitted when the `widget`'s window is
    /// mapped. A window is mapped when it becomes visible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case mapEvent = "map-event"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// The `motion`-notify-event signal is emitted when the pointer moves
    /// over the widget's `GdkWindow`.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_POINTER_MOTION_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case motionNotifyEvent = "motion-notify-event"
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
    /// The `parent`-set signal is emitted when a new parent
    /// has been set on a widget.
    case parentSet = "parent-set"
    /// This signal gets emitted whenever a widget should pop up a context
    /// menu. This usually happens through the standard key binding mechanism;
    /// by pressing a certain key while a widget is focused, the user can cause
    /// the widget to pop up a menu.  For example, the `GtkEntry` widget creates
    /// a menu with clipboard commands. See the
    /// [Popup Menu Migration Checklist](#checklist-popup-menu)
    /// for an example of how to use this signal.
    case popupMenu = "popup-menu"
    /// The `property`-notify-event signal will be emitted when a property on
    /// the `widget`'s window has been changed or deleted.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROPERTY_CHANGE_MASK` mask.
    case propertyNotifyEvent = "property-notify-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_IN_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityInEvent = "proximity-in-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_OUT_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityOutEvent = "proximity-out-event"
    /// Emitted when `GtkWidget:has`-tooltip is `true` and the hover timeout
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
    /// `GdkWindow`, which means that `gtk_widget_realize()` has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    case remove = "remove"
    /// The `screen`-changed signal gets emitted when the
    /// screen of a widget has changed.
    case screenChanged = "screen-changed"
    /// The `scroll`-event signal is emitted when a button in the 4 to 7
    /// range is pressed. Wheel mice are usually configured to generate
    /// button press events for buttons 4 and 5 when the wheel is turned.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_SCROLL_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case scrollEvent = "scroll-event"
    /// The `selection`-clear-event signal will be emitted when the
    /// the `widget`'s window has lost ownership of a selection.
    case selectionClearEvent = "selection-clear-event"
    case selectionGet = "selection-get"
    case selectionNotifyEvent = "selection-notify-event"
    case selectionReceived = "selection-received"
    /// The `selection`-request-event signal will be emitted when
    /// another client requests ownership of the selection owned by
    /// the `widget`'s window.
    case selectionRequestEvent = "selection-request-event"
    case setFocusChild = "set-focus-child"
    /// The `show` signal is emitted when `widget` is shown, for example with
    /// `gtk_widget_show()`.
    case show = "show"
    case showHelp = "show-help"
    case sizeAllocate = "size-allocate"
    /// The `state`-changed signal is emitted when the widget state changes.
    /// See `gtk_widget_get_state()`.
    ///
    /// **state-changed is deprecated:**
    /// Use #GtkWidget::state-flags-changed instead.
    case stateChanged = "state-changed"
    /// The `state`-flags-changed signal is emitted when the widget state
    /// changes, see `gtk_widget_get_state_flags()`.
    case stateFlagsChanged = "state-flags-changed"
    /// The `style`-set signal is emitted when a new style has been set
    /// on a widget. Note that style-modifying functions like
    /// `gtk_widget_modify_base()` also cause this signal to be emitted.
    /// 
    /// Note that this signal is emitted for changes to the deprecated
    /// `GtkStyle`. To track changes to the `GtkStyleContext` associated
    /// with a widget, use the `GtkWidget::style`-updated signal.
    ///
    /// **style-set is deprecated:**
    /// Use the #GtkWidget::style-updated signal
    case styleSet = "style-set"
    /// The `style`-updated signal is a convenience signal that is emitted when the
    /// `GtkStyleContext::changed` signal is emitted on the `widget`'s associated
    /// `GtkStyleContext` as returned by `gtk_widget_get_style_context()`.
    /// 
    /// Note that style-modifying functions like `gtk_widget_override_color()` also
    /// cause this signal to be emitted.
    case styleUpdated = "style-updated"
    case touchEvent = "touch-event"
    /// The `unmap` signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The `unmap`-event signal will be emitted when the `widget`'s window is
    /// unmapped. A window is unmapped when it becomes invisible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case unmapEvent = "unmap-event"
    /// The `unrealize` signal is emitted when the `GdkWindow` associated with
    /// `widget` is destroyed, which means that `gtk_widget_unrealize()` has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
    /// The `visibility`-notify-event will be emitted when the `widget`'s
    /// window is obscured or unobscured.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_VISIBILITY_NOTIFY_MASK` mask.
    ///
    /// **visibility-notify-event is deprecated:**
    /// Modern composited windowing systems with pervasive
    ///     transparency make it impossible to track the visibility of a window
    ///     reliably, so this signal can not be guaranteed to provide useful
    ///     information.
    case visibilityNotifyEvent = "visibility-notify-event"
    /// The `window`-state-event will be emitted when the state of the
    /// toplevel window associated to the `widget` changes.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable
    /// this mask automatically for all new windows.
    case windowStateEvent = "window-state-event"
    case notifyAppPaintable = "notify::app-paintable"
    case notifyBaselinePosition = "notify::baseline-position"
    case notifyBorderWidth = "notify::border-width"
    case notifyCanDefault = "notify::can-default"
    case notifyCanFocus = "notify::can-focus"
    case notifyChild = "notify::child"
    case notifyCompositeChild = "notify::composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case notifyDoubleBuffered = "notify::double-buffered"
    case notifyEvents = "notify::events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case notifyExpand = "notify::expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case notifyHalign = "notify::halign"
    case notifyHasDefault = "notify::has-default"
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case notifyHexpandSet = "notify::hexpand-set"
    case notifyHomogeneous = "notify::homogeneous"
    case notifyIsFocus = "notify::is-focus"
    case notifyLayoutStyle = "notify::layout-style"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case notifyMargin = "notify::margin"
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
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case notifyMarginLeft = "notify::margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case notifyMarginRight = "notify::margin-right"
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
    case notifyName = "notify::name"
    case notifyNoShowAll = "notify::no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case notifyOpacity = "notify::opacity"
    case notifyParent = "notify::parent"
    case notifyReceivesDefault = "notify::receives-default"
    case notifyResizeMode = "notify::resize-mode"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
    case notifySpacing = "notify::spacing"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case notifyStyle = "notify::style"
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
    case notifyTooltipMarkup = "notify::tooltip-markup"
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
    case notifyTooltipText = "notify::tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    case notifyWidthRequest = "notify::width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case notifyWindow = "notify::window"
}

// MARK: ButtonBox has no signals
// MARK: ButtonBox Class: ButtonBoxProtocol extension (methods and fields)
public extension ButtonBoxProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkButtonBox` instance.
    @inlinable var button_box_ptr: UnsafeMutablePointer<GtkButtonBox>! { return ptr?.assumingMemoryBound(to: GtkButtonBox.self) }

    /// Returns whether the child is exempted from homogenous
    /// sizing.
    @inlinable func getChildNonHomogeneous<WidgetT: WidgetProtocol>(child: WidgetT) -> Bool {
        let rv = ((gtk_button_box_get_child_non_homogeneous(button_box_ptr, child.widget_ptr)) != 0)
        return rv
    }

    /// Returns whether `child` should appear in a secondary group of children.
    @inlinable func getChildSecondary<WidgetT: WidgetProtocol>(child: WidgetT) -> Bool {
        let rv = ((gtk_button_box_get_child_secondary(button_box_ptr, child.widget_ptr)) != 0)
        return rv
    }

    /// Retrieves the method being used to arrange the buttons in a button box.
    @inlinable func getLayout() -> GtkButtonBoxStyle {
        let rv = gtk_button_box_get_layout(button_box_ptr)
        return rv
    }

    /// Sets whether the child is exempted from homogeous sizing.
    @inlinable func setChildNonHomogeneous<WidgetT: WidgetProtocol>(child: WidgetT, nonHomogeneous: Bool) {
        gtk_button_box_set_child_non_homogeneous(button_box_ptr, child.widget_ptr, gboolean((nonHomogeneous) ? 1 : 0))
    
    }

    /// Sets whether `child` should appear in a secondary group of children.
    /// A typical use of a secondary child is the help button in a dialog.
    /// 
    /// This group appears after the other children if the style
    /// is `GTK_BUTTONBOX_START`, `GTK_BUTTONBOX_SPREAD` or
    /// `GTK_BUTTONBOX_EDGE`, and before the other children if the style
    /// is `GTK_BUTTONBOX_END`. For horizontal button boxes, the definition
    /// of before/after depends on direction of the widget (see
    /// `gtk_widget_set_direction()`). If the style is `GTK_BUTTONBOX_START`
    /// or `GTK_BUTTONBOX_END`, then the secondary children are aligned at
    /// the other end of the button box from the main children. For the
    /// other styles, they appear immediately next to the main children.
    @inlinable func setChildSecondary<WidgetT: WidgetProtocol>(child: WidgetT, isSecondary: Bool) {
        gtk_button_box_set_child_secondary(button_box_ptr, child.widget_ptr, gboolean((isSecondary) ? 1 : 0))
    
    }

    /// Changes the way buttons are arranged in their container.
    @inlinable func set(layoutStyle: GtkButtonBoxStyle) {
        gtk_button_box_set_layout(button_box_ptr, layoutStyle)
    
    }
    /// Retrieves the method being used to arrange the buttons in a button box.
    @inlinable var layout: GtkButtonBoxStyle {
        /// Retrieves the method being used to arrange the buttons in a button box.
        get {
            let rv = gtk_button_box_get_layout(button_box_ptr)
            return rv
        }
        /// Changes the way buttons are arranged in their container.
        nonmutating set {
            gtk_button_box_set_layout(button_box_ptr, newValue)
        }
    }

    @inlinable var box: GtkBox {
        get {
            let rv = button_box_ptr.pointee.box
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - Calendar Class

/// The `CalendarProtocol` protocol exposes the methods and properties of an underlying `GtkCalendar` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Calendar`.
/// Alternatively, use `CalendarRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkCalendar` is a widget that displays a Gregorian calendar, one month
/// at a time. It can be created with `gtk_calendar_new()`.
/// 
/// The month and year currently displayed can be altered with
/// `gtk_calendar_select_month()`. The exact day can be selected from the
/// displayed month using `gtk_calendar_select_day()`.
/// 
/// To place a visual marker on a particular day, use `gtk_calendar_mark_day()`
/// and to remove the marker, `gtk_calendar_unmark_day()`. Alternative, all
/// marks can be cleared with `gtk_calendar_clear_marks()`.
/// 
/// The way in which the calendar itself is displayed can be altered using
/// `gtk_calendar_set_display_options()`.
/// 
/// The selected date can be retrieved from a `GtkCalendar` using
/// `gtk_calendar_get_date()`.
/// 
/// Users should be aware that, although the Gregorian calendar is the
/// legal calendar in most countries, it was adopted progressively
/// between 1582 and 1929. Display before these dates is likely to be
/// historically incorrect.
public protocol CalendarProtocol: WidgetProtocol {
        /// Untyped pointer to the underlying `GtkCalendar` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkCalendar` instance.
    var calendar_ptr: UnsafeMutablePointer<GtkCalendar>! { get }

}

/// The `CalendarRef` type acts as a lightweight Swift reference to an underlying `GtkCalendar` instance.
/// It exposes methods that can operate on this data type through `CalendarProtocol` conformance.
/// Use `CalendarRef` only as an `unowned` reference to an existing `GtkCalendar` instance.
///
/// `GtkCalendar` is a widget that displays a Gregorian calendar, one month
/// at a time. It can be created with `gtk_calendar_new()`.
/// 
/// The month and year currently displayed can be altered with
/// `gtk_calendar_select_month()`. The exact day can be selected from the
/// displayed month using `gtk_calendar_select_day()`.
/// 
/// To place a visual marker on a particular day, use `gtk_calendar_mark_day()`
/// and to remove the marker, `gtk_calendar_unmark_day()`. Alternative, all
/// marks can be cleared with `gtk_calendar_clear_marks()`.
/// 
/// The way in which the calendar itself is displayed can be altered using
/// `gtk_calendar_set_display_options()`.
/// 
/// The selected date can be retrieved from a `GtkCalendar` using
/// `gtk_calendar_get_date()`.
/// 
/// Users should be aware that, although the Gregorian calendar is the
/// legal calendar in most countries, it was adopted progressively
/// between 1582 and 1929. Display before these dates is likely to be
/// historically incorrect.
public struct CalendarRef: CalendarProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkCalendar` instance.
    /// For type-safe access, use the generated, typed pointer `calendar_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CalendarRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkCalendar>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkCalendar>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkCalendar>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkCalendar>?) {
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

    /// Reference intialiser for a related type that implements `CalendarProtocol`
    @inlinable init<T: CalendarProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: CalendarProtocol>(_ other: T) -> CalendarRef { CalendarRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new calendar, with the current date being selected.
    @inlinable init() {
        let rv = gtk_calendar_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `Calendar` type acts as a reference-counted owner of an underlying `GtkCalendar` instance.
/// It provides the methods that can operate on this data type through `CalendarProtocol` conformance.
/// Use `Calendar` as a strong reference or owner of a `GtkCalendar` instance.
///
/// `GtkCalendar` is a widget that displays a Gregorian calendar, one month
/// at a time. It can be created with `gtk_calendar_new()`.
/// 
/// The month and year currently displayed can be altered with
/// `gtk_calendar_select_month()`. The exact day can be selected from the
/// displayed month using `gtk_calendar_select_day()`.
/// 
/// To place a visual marker on a particular day, use `gtk_calendar_mark_day()`
/// and to remove the marker, `gtk_calendar_unmark_day()`. Alternative, all
/// marks can be cleared with `gtk_calendar_clear_marks()`.
/// 
/// The way in which the calendar itself is displayed can be altered using
/// `gtk_calendar_set_display_options()`.
/// 
/// The selected date can be retrieved from a `GtkCalendar` using
/// `gtk_calendar_get_date()`.
/// 
/// Users should be aware that, although the Gregorian calendar is the
/// legal calendar in most countries, it was adopted progressively
/// between 1582 and 1929. Display before these dates is likely to be
/// historically incorrect.
open class Calendar: Widget, CalendarProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Calendar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkCalendar>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Calendar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkCalendar>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Calendar` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Calendar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Calendar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkCalendar>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Calendar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkCalendar>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkCalendar`.
    /// i.e., ownership is transferred to the `Calendar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkCalendar>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `CalendarProtocol`
    /// Will retain `GtkCalendar`.
    /// - Parameter other: an instance of a related type that implements `CalendarProtocol`
    @inlinable public init<T: CalendarProtocol>(calendar other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new calendar, with the current date being selected.
    @inlinable public init() {
        let rv = gtk_calendar_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum CalendarPropertyName: String, PropertyNameProtocol {
    case appPaintable = "app-paintable"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case compositeChild = "composite-child"
    /// The selected day (as a number between 1 and 31, or 0
    /// to unselect the currently selected day).
    /// This property gets initially set to the current day.
    case day = "day"
    /// Height of a detail cell, in rows.
    /// A value of 0 allows any width. See `gtk_calendar_set_detail_func()`.
    case detailHeightRows = "detail-height-rows"
    /// Width of a detail cell, in characters.
    /// A value of 0 allows any width. See `gtk_calendar_set_detail_func()`.
    case detailWidthChars = "detail-width-chars"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
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
    /// The selected month (as a number between 0 and 11).
    /// This property gets initially set to the current month.
    case month = "month"
    case name = "name"
    /// Determines whether the selected month can be changed.
    case noMonthChange = "no-month-change"
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
    /// Determines whether day names are displayed.
    case showDayNames = "show-day-names"
    /// Determines whether details are shown directly in the widget, or if they are
    /// available only as tooltip. When this property is set days with details are
    /// marked.
    case showDetails = "show-details"
    /// Determines whether a heading is displayed.
    case showHeading = "show-heading"
    /// Determines whether week numbers are displayed.
    case showWeekNumbers = "show-week-numbers"
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
    /// The selected year.
    /// This property gets initially set to the current year.
    case year = "year"
}

public extension CalendarProtocol {
    /// Bind a `CalendarPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: CalendarPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Calendar property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: CalendarPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Calendar property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: CalendarPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum CalendarSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// The `button`-press-event signal will be emitted when a button
    /// (typically from a mouse) is pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonPressEvent = "button-press-event"
    /// The `button`-release-event signal will be emitted when a button
    /// (typically from a mouse) is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonReleaseEvent = "button-release-event"
    /// Determines whether an accelerator that activates the signal
    /// identified by `signal_id` can currently be activated.
    /// This signal is present to allow applications and derived
    /// widgets to override the default `GtkWidget` handling
    /// for determining whether an accelerator can be activated.
    case canActivateAccel = "can-activate-accel"
    /// The `child`-notify signal is emitted for each
    /// [child property](#child-properties)  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// The `composited`-changed signal is emitted when the composited
    /// status of `widgets` screen changes.
    /// See `gdk_screen_is_composited()`.
    ///
    /// **composited-changed is deprecated:**
    /// Use GdkScreen::composited-changed instead.
    case compositedChanged = "composited-changed"
    /// The `configure`-event signal will be emitted when the size, position or
    /// stacking of the `widget`'s window has changed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case configureEvent = "configure-event"
    /// Emitted when a redirected window belonging to `widget` gets drawn into.
    /// The region/area members of the event shows what area of the redirected
    /// drawable was drawn into.
    case damageEvent = "damage-event"
    /// Emitted when the user selects a day.
    case daySelected = "day-selected"
    /// Emitted when the user double-clicks a day.
    case daySelectedDoubleClick = "day-selected-double-click"
    /// The `delete`-event signal is emitted if a user requests that
    /// a toplevel window is closed. The default handler for this signal
    /// destroys the window. Connecting `gtk_widget_hide_on_delete()` to
    /// this signal will cause the window to be hidden instead, so that
    /// it can later be shown again without reconstructing it.
    case deleteEvent = "delete-event"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The `destroy`-event signal is emitted when a `GdkWindow` is destroyed.
    /// You rarely get this signal, because most widgets disconnect themselves
    /// from their window before they destroy it, so no widget owns the
    /// window at destroy time.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case destroyEvent = "destroy-event"
    /// The `direction`-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The `drag`-begin signal is emitted on the drag source when a drag is
    /// started. A typical reason to connect to this signal is to set up a
    /// custom drag icon with e.g. `gtk_drag_source_set_icon_pixbuf()`.
    /// 
    /// Note that some widgets set up a drag icon in the default handler of
    /// this signal, so you may have to use `g_signal_connect_after()` to
    /// override what the default handler did.
    case dragBegin = "drag-begin"
    /// The `drag`-data-delete signal is emitted on the drag source when a drag
    /// with the action `GDK_ACTION_MOVE` is successfully completed. The signal
    /// handler is responsible for deleting the data that has been dropped. What
    /// "delete" means depends on the context of the drag operation.
    case dragDataDelete = "drag-data-delete"
    /// The `drag`-data-get signal is emitted on the drag source when the drop
    /// site requests the data which is dragged. It is the responsibility of
    /// the signal handler to fill `data` with the data in the format which
    /// is indicated by `info`. See `gtk_selection_data_set()` and
    /// `gtk_selection_data_set_text()`.
    case dragDataGet = "drag-data-get"
    /// The `drag`-data-received signal is emitted on the drop site when the
    /// dragged data has been received. If the data was received in order to
    /// determine whether the drop will be accepted, the handler is expected
    /// to call `gdk_drag_status()` and not finish the drag.
    /// If the data was received in response to a `GtkWidget::drag`-drop signal
    /// (and this is the last target to be received), the handler for this
    /// signal is expected to process the received data and then call
    /// `gtk_drag_finish()`, setting the `success` parameter depending on
    /// whether the data was processed successfully.
    /// 
    /// Applications must create some means to determine why the signal was emitted
    /// and therefore whether to call `gdk_drag_status()` or `gtk_drag_finish()`.
    /// 
    /// The handler may inspect the selected action with
    /// `gdk_drag_context_get_selected_action()` before calling
    /// `gtk_drag_finish()`, e.g. to implement `GDK_ACTION_ASK` as
    /// shown in the following example:
    /// (C Language Example):
    /// ```C
    /// void
    /// drag_data_received (GtkWidget          *widget,
    ///                     GdkDragContext     *context,
    ///                     gint                x,
    ///                     gint                y,
    ///                     GtkSelectionData   *data,
    ///                     guint               info,
    ///                     guint               time)
    /// {
    ///   if ((data->length >= 0) && (data->format == 8))
    ///     {
    ///       GdkDragAction action;
    /// 
    ///       // handle data here
    /// 
    ///       action = gdk_drag_context_get_selected_action (context);
    ///       if (action == GDK_ACTION_ASK)
    ///         {
    ///           GtkWidget *dialog;
    ///           gint response;
    /// 
    ///           dialog = gtk_message_dialog_new (NULL,
    ///                                            GTK_DIALOG_MODAL |
    ///                                            GTK_DIALOG_DESTROY_WITH_PARENT,
    ///                                            GTK_MESSAGE_INFO,
    ///                                            GTK_BUTTONS_YES_NO,
    ///                                            "Move the data ?\n");
    ///           response = gtk_dialog_run (GTK_DIALOG (dialog));
    ///           gtk_widget_destroy (dialog);
    /// 
    ///           if (response == GTK_RESPONSE_YES)
    ///             action = GDK_ACTION_MOVE;
    ///           else
    ///             action = GDK_ACTION_COPY;
    ///          }
    /// 
    ///       gtk_drag_finish (context, TRUE, action == GDK_ACTION_MOVE, time);
    ///     }
    ///   else
    ///     gtk_drag_finish (context, FALSE, FALSE, time);
    ///  }
    /// ```
    /// 
    case dragDataReceived = "drag-data-received"
    /// The `drag`-drop signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the cursor position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// Otherwise, the handler returns `true`. In this case, the handler must
    /// ensure that `gtk_drag_finish()` is called to let the source know that
    /// the drop is done. The call to `gtk_drag_finish()` can be done either
    /// directly or in a `GtkWidget::drag`-data-received handler which gets
    /// triggered by calling `gtk_drag_get_data()` to receive the data for one
    /// or more of the supported targets.
    case dragDrop = "drag-drop"
    /// The `drag`-end signal is emitted on the drag source when a drag is
    /// finished.  A typical reason to connect to this signal is to undo
    /// things done in `GtkWidget::drag`-begin.
    case dragEnd = "drag-end"
    /// The `drag`-failed signal is emitted on the drag source when a drag has
    /// failed. The signal handler may hook custom code to handle a failed DnD
    /// operation based on the type of error, it returns `true` is the failure has
    /// been already handled (not showing the default "drag operation failed"
    /// animation), otherwise it returns `false`.
    case dragFailed = "drag-failed"
    /// The `drag`-leave signal is emitted on the drop site when the cursor
    /// leaves the widget. A typical reason to connect to this signal is to
    /// undo things done in `GtkWidget::drag`-motion, e.g. undo highlighting
    /// with `gtk_drag_unhighlight()`.
    /// 
    /// 
    /// Likewise, the `GtkWidget::drag`-leave signal is also emitted before the
    /// `drag`-drop signal, for instance to allow cleaning up of a preview item
    /// created in the `GtkWidget::drag`-motion signal handler.
    case dragLeave = "drag-leave"
    /// The `drag`-motion signal is emitted on the drop site when the user
    /// moves the cursor over the widget during a drag. The signal handler
    /// must determine whether the cursor position is in a drop zone or not.
    /// If it is not in a drop zone, it returns `false` and no further processing
    /// is necessary. Otherwise, the handler returns `true`. In this case, the
    /// handler is responsible for providing the necessary information for
    /// displaying feedback to the user, by calling `gdk_drag_status()`.
    /// 
    /// If the decision whether the drop will be accepted or rejected can't be
    /// made based solely on the cursor position and the type of the data, the
    /// handler may inspect the dragged data by calling `gtk_drag_get_data()` and
    /// defer the `gdk_drag_status()` call to the `GtkWidget::drag`-data-received
    /// handler. Note that you must pass `GTK_DEST_DEFAULT_DROP`,
    /// `GTK_DEST_DEFAULT_MOTION` or `GTK_DEST_DEFAULT_ALL` to `gtk_drag_dest_set()`
    /// when using the drag-motion signal that way.
    /// 
    /// Also note that there is no drag-enter signal. The drag receiver has to
    /// keep track of whether he has received any drag-motion signals since the
    /// last `GtkWidget::drag`-leave and if not, treat the drag-motion signal as
    /// an "enter" signal. Upon an "enter", the handler will typically highlight
    /// the drop site with `gtk_drag_highlight()`.
    /// (C Language Example):
    /// ```C
    /// static void
    /// drag_motion (GtkWidget      *widget,
    ///              GdkDragContext *context,
    ///              gint            x,
    ///              gint            y,
    ///              guint           time)
    /// {
    ///   GdkAtom target;
    /// 
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (!private_data->drag_highlight)
    ///    {
    ///      private_data->drag_highlight = 1;
    ///      gtk_drag_highlight (widget);
    ///    }
    /// 
    ///   target = gtk_drag_dest_find_target (widget, context, NULL);
    ///   if (target == GDK_NONE)
    ///     gdk_drag_status (context, 0, time);
    ///   else
    ///    {
    ///      private_data->pending_status
    ///         = gdk_drag_context_get_suggested_action (context);
    ///      gtk_drag_get_data (widget, context, target, time);
    ///    }
    /// 
    ///   return TRUE;
    /// }
    /// 
    /// static void
    /// drag_data_received (GtkWidget        *widget,
    ///                     GdkDragContext   *context,
    ///                     gint              x,
    ///                     gint              y,
    ///                     GtkSelectionData *selection_data,
    ///                     guint             info,
    ///                     guint             time)
    /// {
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (private_data->suggested_action)
    ///    {
    ///      private_data->suggested_action = 0;
    /// 
    ///      // We are getting this data due to a request in drag_motion,
    ///      // rather than due to a request in drag_drop, so we are just
    ///      // supposed to call gdk_drag_status(), not actually paste in
    ///      // the data.
    /// 
    ///      str = gtk_selection_data_get_text (selection_data);
    ///      if (!data_is_acceptable (str))
    ///        gdk_drag_status (context, 0, time);
    ///      else
    ///        gdk_drag_status (context,
    ///                         private_data->suggested_action,
    ///                         time);
    ///    }
    ///   else
    ///    {
    ///      // accept the drop
    ///    }
    /// }
    /// ```
    /// 
    case dragMotion = "drag-motion"
    /// This signal is emitted when a widget is supposed to render itself.
    /// The `widget`'s top left corner must be painted at the origin of
    /// the passed in context and be sized to the values returned by
    /// `gtk_widget_get_allocated_width()` and
    /// `gtk_widget_get_allocated_height()`.
    /// 
    /// Signal handlers connected to this signal can modify the cairo
    /// context passed as `cr` in any way they like and don't need to
    /// restore it. The signal emission takes care of calling `cairo_save()`
    /// before and `cairo_restore()` after invoking the handler.
    /// 
    /// The signal handler will get a `cr` with a clip region already set to the
    /// widget's dirty region, i.e. to the area that needs repainting.  Complicated
    /// widgets that want to avoid redrawing themselves completely can get the full
    /// extents of the clip region with `gdk_cairo_get_clip_rectangle()`, or they can
    /// get a finer-grained representation of the dirty region with
    /// `cairo_copy_clip_rectangle_list()`.
    case draw = "draw"
    /// The `enter`-notify-event will be emitted when the pointer enters
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_ENTER_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case enterNotifyEvent = "enter-notify-event"
    /// The GTK+ main loop will emit three signals for each GDK event delivered
    /// to a widget: one generic `event` signal, another, more specific,
    /// signal that matches the type of event delivered (e.g.
    /// `GtkWidget::key`-press-event) and finally a generic
    /// `GtkWidget::event`-after signal.
    case event = "event"
    /// After the emission of the `GtkWidget::event` signal and (optionally)
    /// the second more specific signal, `event`-after will be emitted
    /// regardless of the previous two signals handlers return values.
    case eventAfter = "event-after"
    case focus = "focus"
    /// The `focus`-in-event signal will be emitted when the keyboard focus
    /// enters the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusInEvent = "focus-in-event"
    /// The `focus`-out-event signal will be emitted when the keyboard focus
    /// leaves the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusOutEvent = "focus-out-event"
    /// Emitted when a pointer or keyboard grab on a window belonging
    /// to `widget` gets broken.
    /// 
    /// On X11, this happens when the grab window becomes unviewable
    /// (i.e. it or one of its ancestors is unmapped), or if the same
    /// application grabs the pointer or keyboard again.
    case grabBrokenEvent = "grab-broken-event"
    case grabFocus = "grab-focus"
    /// The `grab`-notify signal is emitted when a widget becomes
    /// shadowed by a GTK+ grab (not a pointer or keyboard grab) on
    /// another widget, or when it becomes unshadowed due to a grab
    /// being removed.
    /// 
    /// A widget is shadowed by a `gtk_grab_add()` when the topmost
    /// grab widget in the grab stack of its window group is not
    /// its ancestor.
    case grabNotify = "grab-notify"
    /// The `hide` signal is emitted when `widget` is hidden, for example with
    /// `gtk_widget_hide()`.
    case hide = "hide"
    /// The `hierarchy`-changed signal is emitted when the
    /// anchored state of a widget changes. A widget is
    /// “anchored” when its toplevel
    /// ancestor is a `GtkWindow`. This signal is emitted when
    /// a widget changes from un-anchored to anchored or vice-versa.
    case hierarchyChanged = "hierarchy-changed"
    /// The `key`-press-event signal is emitted when a key is pressed. The signal
    /// emission will reoccur at the key-repeat rate when the key is kept pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyPressEvent = "key-press-event"
    /// The `key`-release-event signal is emitted when a key is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyReleaseEvent = "key-release-event"
    /// Gets emitted if keyboard navigation fails.
    /// See `gtk_widget_keynav_failed()` for details.
    case keynavFailed = "keynav-failed"
    /// The `leave`-notify-event will be emitted when the pointer leaves
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_LEAVE_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case leaveNotifyEvent = "leave-notify-event"
    /// The `map` signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// `gtk_widget_set_visible()`) and all its parents up to the toplevel widget
    /// are also visible. Once the map has occurred, `GtkWidget::map`-event will
    /// be emitted.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget::unmap`.
    case map = "map"
    /// The `map`-event signal will be emitted when the `widget`'s window is
    /// mapped. A window is mapped when it becomes visible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case mapEvent = "map-event"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// Emitted when the user clicks a button to change the selected month on a
    /// calendar.
    case monthChanged = "month-changed"
    /// The `motion`-notify-event signal is emitted when the pointer moves
    /// over the widget's `GdkWindow`.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_POINTER_MOTION_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case motionNotifyEvent = "motion-notify-event"
    case moveFocus = "move-focus"
    /// Emitted when the user switched to the next month.
    case nextMonth = "next-month"
    /// Emitted when user switched to the next year.
    case nextYear = "next-year"
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
    /// The `parent`-set signal is emitted when a new parent
    /// has been set on a widget.
    case parentSet = "parent-set"
    /// This signal gets emitted whenever a widget should pop up a context
    /// menu. This usually happens through the standard key binding mechanism;
    /// by pressing a certain key while a widget is focused, the user can cause
    /// the widget to pop up a menu.  For example, the `GtkEntry` widget creates
    /// a menu with clipboard commands. See the
    /// [Popup Menu Migration Checklist](#checklist-popup-menu)
    /// for an example of how to use this signal.
    case popupMenu = "popup-menu"
    /// Emitted when the user switched to the previous month.
    case prevMonth = "prev-month"
    /// Emitted when user switched to the previous year.
    case prevYear = "prev-year"
    /// The `property`-notify-event signal will be emitted when a property on
    /// the `widget`'s window has been changed or deleted.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROPERTY_CHANGE_MASK` mask.
    case propertyNotifyEvent = "property-notify-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_IN_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityInEvent = "proximity-in-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_OUT_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityOutEvent = "proximity-out-event"
    /// Emitted when `GtkWidget:has`-tooltip is `true` and the hover timeout
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
    /// `GdkWindow`, which means that `gtk_widget_realize()` has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// The `screen`-changed signal gets emitted when the
    /// screen of a widget has changed.
    case screenChanged = "screen-changed"
    /// The `scroll`-event signal is emitted when a button in the 4 to 7
    /// range is pressed. Wheel mice are usually configured to generate
    /// button press events for buttons 4 and 5 when the wheel is turned.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_SCROLL_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case scrollEvent = "scroll-event"
    /// The `selection`-clear-event signal will be emitted when the
    /// the `widget`'s window has lost ownership of a selection.
    case selectionClearEvent = "selection-clear-event"
    case selectionGet = "selection-get"
    case selectionNotifyEvent = "selection-notify-event"
    case selectionReceived = "selection-received"
    /// The `selection`-request-event signal will be emitted when
    /// another client requests ownership of the selection owned by
    /// the `widget`'s window.
    case selectionRequestEvent = "selection-request-event"
    /// The `show` signal is emitted when `widget` is shown, for example with
    /// `gtk_widget_show()`.
    case show = "show"
    case showHelp = "show-help"
    case sizeAllocate = "size-allocate"
    /// The `state`-changed signal is emitted when the widget state changes.
    /// See `gtk_widget_get_state()`.
    ///
    /// **state-changed is deprecated:**
    /// Use #GtkWidget::state-flags-changed instead.
    case stateChanged = "state-changed"
    /// The `state`-flags-changed signal is emitted when the widget state
    /// changes, see `gtk_widget_get_state_flags()`.
    case stateFlagsChanged = "state-flags-changed"
    /// The `style`-set signal is emitted when a new style has been set
    /// on a widget. Note that style-modifying functions like
    /// `gtk_widget_modify_base()` also cause this signal to be emitted.
    /// 
    /// Note that this signal is emitted for changes to the deprecated
    /// `GtkStyle`. To track changes to the `GtkStyleContext` associated
    /// with a widget, use the `GtkWidget::style`-updated signal.
    ///
    /// **style-set is deprecated:**
    /// Use the #GtkWidget::style-updated signal
    case styleSet = "style-set"
    /// The `style`-updated signal is a convenience signal that is emitted when the
    /// `GtkStyleContext::changed` signal is emitted on the `widget`'s associated
    /// `GtkStyleContext` as returned by `gtk_widget_get_style_context()`.
    /// 
    /// Note that style-modifying functions like `gtk_widget_override_color()` also
    /// cause this signal to be emitted.
    case styleUpdated = "style-updated"
    case touchEvent = "touch-event"
    /// The `unmap` signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The `unmap`-event signal will be emitted when the `widget`'s window is
    /// unmapped. A window is unmapped when it becomes invisible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case unmapEvent = "unmap-event"
    /// The `unrealize` signal is emitted when the `GdkWindow` associated with
    /// `widget` is destroyed, which means that `gtk_widget_unrealize()` has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
    /// The `visibility`-notify-event will be emitted when the `widget`'s
    /// window is obscured or unobscured.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_VISIBILITY_NOTIFY_MASK` mask.
    ///
    /// **visibility-notify-event is deprecated:**
    /// Modern composited windowing systems with pervasive
    ///     transparency make it impossible to track the visibility of a window
    ///     reliably, so this signal can not be guaranteed to provide useful
    ///     information.
    case visibilityNotifyEvent = "visibility-notify-event"
    /// The `window`-state-event will be emitted when the state of the
    /// toplevel window associated to the `widget` changes.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable
    /// this mask automatically for all new windows.
    case windowStateEvent = "window-state-event"
    case notifyAppPaintable = "notify::app-paintable"
    case notifyCanDefault = "notify::can-default"
    case notifyCanFocus = "notify::can-focus"
    case notifyCompositeChild = "notify::composite-child"
    /// The selected day (as a number between 1 and 31, or 0
    /// to unselect the currently selected day).
    /// This property gets initially set to the current day.
    case notifyDay = "notify::day"
    /// Height of a detail cell, in rows.
    /// A value of 0 allows any width. See `gtk_calendar_set_detail_func()`.
    case notifyDetailHeightRows = "notify::detail-height-rows"
    /// Width of a detail cell, in characters.
    /// A value of 0 allows any width. See `gtk_calendar_set_detail_func()`.
    case notifyDetailWidthChars = "notify::detail-width-chars"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case notifyDoubleBuffered = "notify::double-buffered"
    case notifyEvents = "notify::events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case notifyExpand = "notify::expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case notifyHalign = "notify::halign"
    case notifyHasDefault = "notify::has-default"
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case notifyHexpandSet = "notify::hexpand-set"
    case notifyIsFocus = "notify::is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case notifyMargin = "notify::margin"
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
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case notifyMarginLeft = "notify::margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case notifyMarginRight = "notify::margin-right"
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
    /// The selected month (as a number between 0 and 11).
    /// This property gets initially set to the current month.
    case notifyMonth = "notify::month"
    case notifyName = "notify::name"
    /// Determines whether the selected month can be changed.
    case notifyNoMonthChange = "notify::no-month-change"
    case notifyNoShowAll = "notify::no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case notifyOpacity = "notify::opacity"
    case notifyParent = "notify::parent"
    case notifyReceivesDefault = "notify::receives-default"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
    /// Determines whether day names are displayed.
    case notifyShowDayNames = "notify::show-day-names"
    /// Determines whether details are shown directly in the widget, or if they are
    /// available only as tooltip. When this property is set days with details are
    /// marked.
    case notifyShowDetails = "notify::show-details"
    /// Determines whether a heading is displayed.
    case notifyShowHeading = "notify::show-heading"
    /// Determines whether week numbers are displayed.
    case notifyShowWeekNumbers = "notify::show-week-numbers"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case notifyStyle = "notify::style"
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
    case notifyTooltipMarkup = "notify::tooltip-markup"
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
    case notifyTooltipText = "notify::tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    case notifyWidthRequest = "notify::width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case notifyWindow = "notify::window"
    /// The selected year.
    /// This property gets initially set to the current year.
    case notifyYear = "notify::year"
}

// MARK: Calendar signals
public extension CalendarProtocol {
    /// Connect a Swift signal handler to the given, typed `CalendarSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: CalendarSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `CalendarSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: CalendarSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted when the user selects a day.
    /// - Note: This represents the underlying `day-selected` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `daySelected` signal is emitted
    @discardableResult @inlinable func onDaySelected(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: CalendarRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<CalendarRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(CalendarRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .daySelected,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `day-selected` signal for using the `connect(signal:)` methods
    static var daySelectedSignal: CalendarSignalName { .daySelected }
    
    /// Emitted when the user double-clicks a day.
    /// - Note: This represents the underlying `day-selected-double-click` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `daySelectedDoubleClick` signal is emitted
    @discardableResult @inlinable func onDaySelectedDoubleClick(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: CalendarRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<CalendarRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(CalendarRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .daySelectedDoubleClick,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `day-selected-double-click` signal for using the `connect(signal:)` methods
    static var daySelectedDoubleClickSignal: CalendarSignalName { .daySelectedDoubleClick }
    
    /// Emitted when the user clicks a button to change the selected month on a
    /// calendar.
    /// - Note: This represents the underlying `month-changed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `monthChanged` signal is emitted
    @discardableResult @inlinable func onMonthChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: CalendarRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<CalendarRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(CalendarRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .monthChanged,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `month-changed` signal for using the `connect(signal:)` methods
    static var monthChangedSignal: CalendarSignalName { .monthChanged }
    
    /// Emitted when the user switched to the next month.
    /// - Note: This represents the underlying `next-month` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `nextMonth` signal is emitted
    @discardableResult @inlinable func onNextMonth(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: CalendarRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<CalendarRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(CalendarRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .nextMonth,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `next-month` signal for using the `connect(signal:)` methods
    static var nextMonthSignal: CalendarSignalName { .nextMonth }
    
    /// Emitted when user switched to the next year.
    /// - Note: This represents the underlying `next-year` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `nextYear` signal is emitted
    @discardableResult @inlinable func onNextYear(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: CalendarRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<CalendarRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(CalendarRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .nextYear,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `next-year` signal for using the `connect(signal:)` methods
    static var nextYearSignal: CalendarSignalName { .nextYear }
    
    /// Emitted when the user switched to the previous month.
    /// - Note: This represents the underlying `prev-month` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `prevMonth` signal is emitted
    @discardableResult @inlinable func onPrevMonth(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: CalendarRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<CalendarRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(CalendarRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .prevMonth,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `prev-month` signal for using the `connect(signal:)` methods
    static var prevMonthSignal: CalendarSignalName { .prevMonth }
    
    /// Emitted when user switched to the previous year.
    /// - Note: This represents the underlying `prev-year` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `prevYear` signal is emitted
    @discardableResult @inlinable func onPrevYear(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: CalendarRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<CalendarRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(CalendarRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .prevYear,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `prev-year` signal for using the `connect(signal:)` methods
    static var prevYearSignal: CalendarSignalName { .prevYear }
    
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
    /// - Note: This represents the underlying `notify::day` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyDay` signal is emitted
    @discardableResult @inlinable func onNotifyDay(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: CalendarRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<CalendarRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(CalendarRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyDay,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::day` signal for using the `connect(signal:)` methods
    static var notifyDaySignal: CalendarSignalName { .notifyDay }
    
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
    /// - Note: This represents the underlying `notify::detail-height-rows` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyDetailHeightRows` signal is emitted
    @discardableResult @inlinable func onNotifyDetailHeightRows(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: CalendarRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<CalendarRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(CalendarRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyDetailHeightRows,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::detail-height-rows` signal for using the `connect(signal:)` methods
    static var notifyDetailHeightRowsSignal: CalendarSignalName { .notifyDetailHeightRows }
    
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
    /// - Note: This represents the underlying `notify::detail-width-chars` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyDetailWidthChars` signal is emitted
    @discardableResult @inlinable func onNotifyDetailWidthChars(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: CalendarRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<CalendarRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(CalendarRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyDetailWidthChars,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::detail-width-chars` signal for using the `connect(signal:)` methods
    static var notifyDetailWidthCharsSignal: CalendarSignalName { .notifyDetailWidthChars }
    
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
    /// - Note: This represents the underlying `notify::month` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyMonth` signal is emitted
    @discardableResult @inlinable func onNotifyMonth(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: CalendarRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<CalendarRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(CalendarRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyMonth,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::month` signal for using the `connect(signal:)` methods
    static var notifyMonthSignal: CalendarSignalName { .notifyMonth }
    
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
    /// - Note: This represents the underlying `notify::no-month-change` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyNoMonthChange` signal is emitted
    @discardableResult @inlinable func onNotifyNoMonthChange(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: CalendarRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<CalendarRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(CalendarRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyNoMonthChange,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::no-month-change` signal for using the `connect(signal:)` methods
    static var notifyNoMonthChangeSignal: CalendarSignalName { .notifyNoMonthChange }
    
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
    /// - Note: This represents the underlying `notify::show-day-names` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyShowDayNames` signal is emitted
    @discardableResult @inlinable func onNotifyShowDayNames(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: CalendarRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<CalendarRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(CalendarRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyShowDayNames,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::show-day-names` signal for using the `connect(signal:)` methods
    static var notifyShowDayNamesSignal: CalendarSignalName { .notifyShowDayNames }
    
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
    /// - Note: This represents the underlying `notify::show-details` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyShowDetails` signal is emitted
    @discardableResult @inlinable func onNotifyShowDetails(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: CalendarRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<CalendarRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(CalendarRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyShowDetails,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::show-details` signal for using the `connect(signal:)` methods
    static var notifyShowDetailsSignal: CalendarSignalName { .notifyShowDetails }
    
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
    /// - Note: This represents the underlying `notify::show-heading` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyShowHeading` signal is emitted
    @discardableResult @inlinable func onNotifyShowHeading(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: CalendarRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<CalendarRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(CalendarRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyShowHeading,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::show-heading` signal for using the `connect(signal:)` methods
    static var notifyShowHeadingSignal: CalendarSignalName { .notifyShowHeading }
    
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
    /// - Note: This represents the underlying `notify::show-week-numbers` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyShowWeekNumbers` signal is emitted
    @discardableResult @inlinable func onNotifyShowWeekNumbers(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: CalendarRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<CalendarRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(CalendarRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyShowWeekNumbers,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::show-week-numbers` signal for using the `connect(signal:)` methods
    static var notifyShowWeekNumbersSignal: CalendarSignalName { .notifyShowWeekNumbers }
    
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
    /// - Note: This represents the underlying `notify::year` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyYear` signal is emitted
    @discardableResult @inlinable func onNotifyYear(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: CalendarRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<CalendarRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(CalendarRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyYear,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::year` signal for using the `connect(signal:)` methods
    static var notifyYearSignal: CalendarSignalName { .notifyYear }
    
}

// MARK: Calendar Class: CalendarProtocol extension (methods and fields)
public extension CalendarProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCalendar` instance.
    @inlinable var calendar_ptr: UnsafeMutablePointer<GtkCalendar>! { return ptr?.assumingMemoryBound(to: GtkCalendar.self) }

    /// Remove all visual markers.
    @inlinable func clearMarks() {
        gtk_calendar_clear_marks(calendar_ptr)
    
    }

    /// Obtains the selected date from a `GtkCalendar`.
    @inlinable func getDate(year: UnsafeMutablePointer<guint>! = nil, month: UnsafeMutablePointer<guint>! = nil, day: UnsafeMutablePointer<guint>! = nil) {
        gtk_calendar_get_date(calendar_ptr, year, month, day)
    
    }

    /// Returns if the `day` of the `calendar` is already marked.
    @inlinable func getDayIsMarked(day: Int) -> Bool {
        let rv = ((gtk_calendar_get_day_is_marked(calendar_ptr, guint(day))) != 0)
        return rv
    }

    /// Queries the height of detail cells, in rows.
    /// See `GtkCalendar:detail`-width-chars.
    @inlinable func getDetailHeightRows() -> Int {
        let rv = Int(gtk_calendar_get_detail_height_rows(calendar_ptr))
        return rv
    }

    /// Queries the width of detail cells, in characters.
    /// See `GtkCalendar:detail`-width-chars.
    @inlinable func getDetailWidthChars() -> Int {
        let rv = Int(gtk_calendar_get_detail_width_chars(calendar_ptr))
        return rv
    }

    /// Returns the current display options of `calendar`.
    @inlinable func getDisplayOptions() -> CalendarDisplayOptions {
        let rv = CalendarDisplayOptions(gtk_calendar_get_display_options(calendar_ptr))
        return rv
    }

    /// Places a visual marker on a particular day.
    @inlinable func mark(day: Int) {
        gtk_calendar_mark_day(calendar_ptr, guint(day))
    
    }

    /// Selects a day from the current month.
    @inlinable func select(day: Int) {
        gtk_calendar_select_day(calendar_ptr, guint(day))
    
    }

    /// Shifts the calendar to a different month.
    @inlinable func select(month: Int, year: Int) {
        gtk_calendar_select_month(calendar_ptr, guint(month), guint(year))
    
    }

    /// Installs a function which provides Pango markup with detail information
    /// for each day. Examples for such details are holidays or appointments. That
    /// information is shown below each day when `GtkCalendar:show`-details is set.
    /// A tooltip containing with full detail information is provided, if the entire
    /// text should not fit into the details area, or if `GtkCalendar:show`-details
    /// is not set.
    /// 
    /// The size of the details area can be restricted by setting the
    /// `GtkCalendar:detail`-width-chars and `GtkCalendar:detail`-height-rows
    /// properties.
    @inlinable func setDetailFunc(`func`: GtkCalendarDetailFunc?, data: gpointer! = nil, destroy: GDestroyNotify?) {
        gtk_calendar_set_detail_func(calendar_ptr, `func`, data, destroy)
    
    }

    /// Updates the height of detail cells.
    /// See `GtkCalendar:detail`-height-rows.
    @inlinable func setDetailHeight(rows: Int) {
        gtk_calendar_set_detail_height_rows(calendar_ptr, gint(rows))
    
    }

    /// Updates the width of detail cells.
    /// See `GtkCalendar:detail`-width-chars.
    @inlinable func setDetailWidth(chars: Int) {
        gtk_calendar_set_detail_width_chars(calendar_ptr, gint(chars))
    
    }

    /// Sets display options (whether to display the heading and the month
    /// headings).
    @inlinable func setDisplayOptions(flags: CalendarDisplayOptions) {
        gtk_calendar_set_display_options(calendar_ptr, flags.value)
    
    }

    /// Removes the visual marker from a particular day.
    @inlinable func unmark(day: Int) {
        gtk_calendar_unmark_day(calendar_ptr, guint(day))
    
    }
    /// Queries the height of detail cells, in rows.
    /// See `GtkCalendar:detail`-width-chars.
    @inlinable var detailHeightRows: Int {
        /// Queries the height of detail cells, in rows.
        /// See `GtkCalendar:detail`-width-chars.
        get {
            let rv = Int(gtk_calendar_get_detail_height_rows(calendar_ptr))
            return rv
        }
        /// Updates the height of detail cells.
        /// See `GtkCalendar:detail`-height-rows.
        nonmutating set {
            gtk_calendar_set_detail_height_rows(calendar_ptr, gint(newValue))
        }
    }

    /// Queries the width of detail cells, in characters.
    /// See `GtkCalendar:detail`-width-chars.
    @inlinable var detailWidthChars: Int {
        /// Queries the width of detail cells, in characters.
        /// See `GtkCalendar:detail`-width-chars.
        get {
            let rv = Int(gtk_calendar_get_detail_width_chars(calendar_ptr))
            return rv
        }
        /// Updates the width of detail cells.
        /// See `GtkCalendar:detail`-width-chars.
        nonmutating set {
            gtk_calendar_set_detail_width_chars(calendar_ptr, gint(newValue))
        }
    }

    /// Returns the current display options of `calendar`.
    @inlinable var displayOptions: CalendarDisplayOptions {
        /// Returns the current display options of `calendar`.
        get {
            let rv = CalendarDisplayOptions(gtk_calendar_get_display_options(calendar_ptr))
            return rv
        }
        /// Sets display options (whether to display the heading and the month
        /// headings).
        nonmutating set {
            gtk_calendar_set_display_options(calendar_ptr, newValue.value)
        }
    }

    @inlinable var widget: GtkWidget {
        get {
            let rv = calendar_ptr.pointee.widget
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



