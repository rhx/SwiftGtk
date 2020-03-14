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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkBooleanCellAccessible` instance.
    var boolean_cell_accessible_ptr: UnsafeMutablePointer<GtkBooleanCellAccessible> { get }
}

/// The `BooleanCellAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkBooleanCellAccessible` instance.
/// It exposes methods that can operate on this data type through `BooleanCellAccessibleProtocol` conformance.
/// Use `BooleanCellAccessibleRef` only as an `unowned` reference to an existing `GtkBooleanCellAccessible` instance.
///

public struct BooleanCellAccessibleRef: BooleanCellAccessibleProtocol {
    /// Untyped pointer to the underlying `GtkBooleanCellAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `boolean_cell_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension BooleanCellAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkBooleanCellAccessible>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `BooleanCellAccessibleProtocol`
    init<T: BooleanCellAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessibleProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessibleProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessibleProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessibleProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessibleProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `BooleanCellAccessible` type acts as a reference-counted owner of an underlying `GtkBooleanCellAccessible` instance.
/// It provides the methods that can operate on this data type through `BooleanCellAccessibleProtocol` conformance.
/// Use `BooleanCellAccessible` as a strong reference or owner of a `GtkBooleanCellAccessible` instance.
///

open class BooleanCellAccessible: RendererCellAccessible, BooleanCellAccessibleProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `BooleanCellAccessible` instance.
    public init(_ op: UnsafeMutablePointer<GtkBooleanCellAccessible>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `BooleanCellAccessibleProtocol`
    /// Will retain `GtkBooleanCellAccessible`.
    public convenience init<T: BooleanCellAccessibleProtocol>(_ other: T) {
        self.init(cast(other.boolean_cell_accessible_ptr))
        g_object_ref(cast(boolean_cell_accessible_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessibleProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkBooleanCellAccessible.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessibleProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkBooleanCellAccessible.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessibleProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkBooleanCellAccessible.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BooleanCellAccessibleProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkBooleanCellAccessible>(opaquePointer))
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: BooleanCellAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(boolean_cell_accessible_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
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

public extension BooleanCellAccessibleProtocol {
    /// Connect a `BooleanCellAccessibleSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: BooleanCellAccessibleSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(boolean_cell_accessible_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension BooleanCellAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBooleanCellAccessible` instance.
    var boolean_cell_accessible_ptr: UnsafeMutablePointer<GtkBooleanCellAccessible> { return ptr.assumingMemoryBound(to: GtkBooleanCellAccessible.self) }

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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkBox` instance.
    var box_ptr: UnsafeMutablePointer<GtkBox> { get }
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
public struct BoxRef: BoxProtocol {
    /// Untyped pointer to the underlying `GtkBox` instance.
    /// For type-safe access, use the generated, typed pointer `box_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension BoxRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkBox>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `BoxProtocol`
    init<T: BoxProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkBox`.
    init( orientation: Orientation, spacing: CInt) {
        let rv = gtk_box_new(orientation, gint(spacing))
        self.init(cast(rv))
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
    /// Ownership is transferred to the `Box` instance.
    public init(_ op: UnsafeMutablePointer<GtkBox>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `BoxProtocol`
    /// Will retain `GtkBox`.
    public convenience init<T: BoxProtocol>(_ other: T) {
        self.init(cast(other.box_ptr))
        g_object_ref(cast(box_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkBox.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkBox.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkBox.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkBox>(opaquePointer))
    }

    /// Creates a new `GtkBox`.
    public convenience init( orientation: Orientation, spacing: CInt) {
        let rv = gtk_box_new(orientation, gint(spacing))
        self.init(cast(rv))
    }


}

public enum BoxPropertyName: String, PropertyNameProtocol {
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: BoxPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(box_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
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
}

public enum BoxSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
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
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
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
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
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
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
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
    /// The "visible-data-changed" signal is emitted when the visual
    /// appearance of the object changed.
    case visibleDataChanged = "visible-data-changed"
    /// The `window`-state-event will be emitted when the state of the
    /// toplevel window associated to the `widget` changes.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable
    /// this mask automatically for all new windows.
    case windowStateEvent = "window-state-event"
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

public extension BoxProtocol {
    /// Connect a `BoxSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: BoxSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(box_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension BoxProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBox` instance.
    var box_ptr: UnsafeMutablePointer<GtkBox> { return ptr.assumingMemoryBound(to: GtkBox.self) }

    /// Gets the value set by `gtk_box_set_baseline_position()`.
    func getBaselinePosition() -> GtkBaselinePosition {
        let rv = gtk_box_get_baseline_position(cast(box_ptr))
        return rv
    }

    /// Retrieves the center widget of the box.
    func getCenterWidget() -> UnsafeMutablePointer<GtkWidget>! {
        let rv = gtk_box_get_center_widget(cast(box_ptr))
        return cast(rv)
    }

    /// Returns whether the box is homogeneous (all children are the
    /// same size). See `gtk_box_set_homogeneous()`.
    func getHomogeneous() -> Bool {
        let rv = gtk_box_get_homogeneous(cast(box_ptr))
        return Bool(rv != 0)
    }

    /// Gets the value set by `gtk_box_set_spacing()`.
    func getSpacing() -> CInt {
        let rv = gtk_box_get_spacing(cast(box_ptr))
        return CInt(rv)
    }

    /// Adds `child` to `box`, packed with reference to the end of `box`.
    /// The `child` is packed after (away from end of) any other child
    /// packed with reference to the end of `box`.
    func packEnd(child: WidgetProtocol, expand: Bool, fill: Bool, padding: CUnsignedInt) {
        gtk_box_pack_end(cast(box_ptr), cast(child.ptr), gboolean(expand ? 1 : 0), gboolean(fill ? 1 : 0), guint(padding))
    
    }

    /// Adds `child` to `box`, packed with reference to the start of `box`.
    /// The `child` is packed after any other child packed with reference
    /// to the start of `box`.
    func packStart(child: WidgetProtocol, expand: Bool, fill: Bool, padding: CUnsignedInt) {
        gtk_box_pack_start(cast(box_ptr), cast(child.ptr), gboolean(expand ? 1 : 0), gboolean(fill ? 1 : 0), guint(padding))
    
    }

    /// Obtains information about how `child` is packed into `box`.
    func queryChildPacking(child: WidgetProtocol, expand: UnsafeMutablePointer<Bool>, fill: UnsafeMutablePointer<Bool>, padding: UnsafeMutablePointer<CUnsignedInt>, packType pack_type: UnsafeMutablePointer<GtkPackType>) {
        gtk_box_query_child_packing(cast(box_ptr), cast(child.ptr), cast(expand), cast(fill), cast(padding), cast(pack_type))
    
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
    func reorder(child: WidgetProtocol, position: CInt) {
        gtk_box_reorder_child(cast(box_ptr), cast(child.ptr), gint(position))
    
    }

    /// Sets the baseline position of a box. This affects
    /// only horizontal boxes with at least one baseline aligned
    /// child. If there is more vertical space available than requested,
    /// and the baseline is not allocated by the parent then
    /// `position` is used to allocate the baseline wrt the
    /// extra space available.
    func setBaseline(position: BaselinePosition) {
        gtk_box_set_baseline_position(cast(box_ptr), position)
    
    }

    /// Sets a center widget; that is a child widget that will be
    /// centered with respect to the full width of the box, even
    /// if the children at either side take up different amounts
    /// of space.
    func setCenter(widget: WidgetProtocol) {
        gtk_box_set_center_widget(cast(box_ptr), cast(widget.ptr))
    
    }

    /// Sets the way `child` is packed into `box`.
    func getg(child: WidgetProtocol, expand: Bool, fill: Bool, padding: CUnsignedInt, packType pack_type: PackType) {
        gtk_box_set_child_packing(cast(box_ptr), cast(child.ptr), gboolean(expand ? 1 : 0), gboolean(fill ? 1 : 0), guint(padding), pack_type)
    
    }

    /// Sets the `GtkBox:homogeneous` property of `box`, controlling
    /// whether or not all children of `box` are given equal space
    /// in the box.
    func set(homogeneous: Bool) {
        gtk_box_set_homogeneous(cast(box_ptr), gboolean(homogeneous ? 1 : 0))
    
    }

    /// Sets the `GtkBox:spacing` property of `box`, which is the
    /// number of pixels to place between children of `box`.
    func set(spacing: CInt) {
        gtk_box_set_spacing(cast(box_ptr), gint(spacing))
    
    }
    /// Gets the value set by `gtk_box_set_baseline_position()`.
    var baselinePosition: GtkBaselinePosition {
        /// Gets the value set by `gtk_box_set_baseline_position()`.
        get {
            let rv = gtk_box_get_baseline_position(cast(box_ptr))
            return rv
        }
        /// Sets the baseline position of a box. This affects
        /// only horizontal boxes with at least one baseline aligned
        /// child. If there is more vertical space available than requested,
        /// and the baseline is not allocated by the parent then
        /// `position` is used to allocate the baseline wrt the
        /// extra space available.
        nonmutating set {
            gtk_box_set_baseline_position(cast(box_ptr), newValue)
        }
    }

    /// Retrieves the center widget of the box.
    var centerWidget: UnsafeMutablePointer<GtkWidget>! {
        /// Retrieves the center widget of the box.
        get {
            let rv = gtk_box_get_center_widget(cast(box_ptr))
            return cast(rv)
        }
        /// Sets a center widget; that is a child widget that will be
        /// centered with respect to the full width of the box, even
        /// if the children at either side take up different amounts
        /// of space.
        nonmutating set {
            gtk_box_set_center_widget(cast(box_ptr), cast(newValue))
        }
    }

    var homogeneous: Bool {
        /// Returns whether the box is homogeneous (all children are the
        /// same size). See `gtk_box_set_homogeneous()`.
        get {
            let rv = gtk_box_get_homogeneous(cast(box_ptr))
            return Bool(rv != 0)
        }
        /// Sets the `GtkBox:homogeneous` property of `box`, controlling
        /// whether or not all children of `box` are given equal space
        /// in the box.
        nonmutating set {
            gtk_box_set_homogeneous(cast(box_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    var spacing: CInt {
        /// Gets the value set by `gtk_box_set_spacing()`.
        get {
            let rv = gtk_box_get_spacing(cast(box_ptr))
            return CInt(rv)
        }
        /// Sets the `GtkBox:spacing` property of `box`, which is the
        /// number of pixels to place between children of `box`.
        nonmutating set {
            gtk_box_set_spacing(cast(box_ptr), gint(newValue))
        }
    }
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
/// [RELAX NG Compact Syntax](https://git.gnome.org/browse/gtk+/tree/gtk/gtkbuilder.rnc)
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkBuilder` instance.
    var builder_ptr: UnsafeMutablePointer<GtkBuilder> { get }
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
/// [RELAX NG Compact Syntax](https://git.gnome.org/browse/gtk+/tree/gtk/gtkbuilder.rnc)
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
public struct BuilderRef: BuilderProtocol {
    /// Untyped pointer to the underlying `GtkBuilder` instance.
    /// For type-safe access, use the generated, typed pointer `builder_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension BuilderRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkBuilder>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `BuilderProtocol`
    init<T: BuilderProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    init() {
        let rv = gtk_builder_new()
        self.init(cast(rv))
    }

    /// Builds the [GtkBuilder UI definition](#BUILDER-UI)
    /// in the file `filename`.
    /// 
    /// If there is an error opening the file or parsing the description then
    /// the program will be aborted.  You should only ever attempt to parse
    /// user interface descriptions that are shipped as part of your program.
    init(file String_: UnsafePointer<gchar>) {
        let rv = gtk_builder_new_from_file(String_)
        self.init(cast(rv))
    }

    /// Builds the [GtkBuilder UI definition](#BUILDER-UI)
    /// at `resource_path`.
    /// 
    /// If there is an error locating the resource or parsing the
    /// description, then the program will be aborted.
    init(resource resource_path: UnsafePointer<gchar>) {
        let rv = gtk_builder_new_from_resource(resource_path)
        self.init(cast(rv))
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
    init(string: UnsafePointer<gchar>, length: gssize) {
        let rv = gtk_builder_new_from_string(string, length)
        self.init(cast(rv))
    }
    /// Builds the [GtkBuilder UI definition](#BUILDER-UI)
    /// in the file `filename`.
    /// 
    /// If there is an error opening the file or parsing the description then
    /// the program will be aborted.  You should only ever attempt to parse
    /// user interface descriptions that are shipped as part of your program.
    static func newFrom(file String_: UnsafePointer<gchar>) -> BuilderRef! {
        let rv = gtk_builder_new_from_file(String_)
        return rv.map { BuilderRef(cast($0)) }
    }

    /// Builds the [GtkBuilder UI definition](#BUILDER-UI)
    /// at `resource_path`.
    /// 
    /// If there is an error locating the resource or parsing the
    /// description, then the program will be aborted.
    static func newFrom(resource resource_path: UnsafePointer<gchar>) -> BuilderRef! {
        let rv = gtk_builder_new_from_resource(resource_path)
        return rv.map { BuilderRef(cast($0)) }
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
    static func newFrom(string: UnsafePointer<gchar>, length: gssize) -> BuilderRef! {
        let rv = gtk_builder_new_from_string(string, length)
        return rv.map { BuilderRef(cast($0)) }
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
/// [RELAX NG Compact Syntax](https://git.gnome.org/browse/gtk+/tree/gtk/gtkbuilder.rnc)
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
    /// Ownership is transferred to the `Builder` instance.
    public init(_ op: UnsafeMutablePointer<GtkBuilder>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `BuilderProtocol`
    /// Will retain `GtkBuilder`.
    public convenience init<T: BuilderProtocol>(_ other: T) {
        self.init(cast(other.builder_ptr))
        g_object_ref(cast(builder_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkBuilder.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkBuilder.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkBuilder.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkBuilder>(opaquePointer))
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
    public convenience init() {
        let rv = gtk_builder_new()
        self.init(cast(rv))
    }

    /// Builds the [GtkBuilder UI definition](#BUILDER-UI)
    /// in the file `filename`.
    /// 
    /// If there is an error opening the file or parsing the description then
    /// the program will be aborted.  You should only ever attempt to parse
    /// user interface descriptions that are shipped as part of your program.
    public convenience init(file String_: UnsafePointer<gchar>) {
        let rv = gtk_builder_new_from_file(String_)
        self.init(cast(rv))
    }

    /// Builds the [GtkBuilder UI definition](#BUILDER-UI)
    /// at `resource_path`.
    /// 
    /// If there is an error locating the resource or parsing the
    /// description, then the program will be aborted.
    public convenience init(resource resource_path: UnsafePointer<gchar>) {
        let rv = gtk_builder_new_from_resource(resource_path)
        self.init(cast(rv))
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
    public convenience init(string: UnsafePointer<gchar>, length: gssize) {
        let rv = gtk_builder_new_from_string(string, length)
        self.init(cast(rv))
    }

    /// Builds the [GtkBuilder UI definition](#BUILDER-UI)
    /// in the file `filename`.
    /// 
    /// If there is an error opening the file or parsing the description then
    /// the program will be aborted.  You should only ever attempt to parse
    /// user interface descriptions that are shipped as part of your program.
    public static func newFrom(file String_: UnsafePointer<gchar>) -> Builder! {
        let rv = gtk_builder_new_from_file(String_)
        return rv.map { Builder(cast($0)) }
    }

    /// Builds the [GtkBuilder UI definition](#BUILDER-UI)
    /// at `resource_path`.
    /// 
    /// If there is an error locating the resource or parsing the
    /// description, then the program will be aborted.
    public static func newFrom(resource resource_path: UnsafePointer<gchar>) -> Builder! {
        let rv = gtk_builder_new_from_resource(resource_path)
        return rv.map { Builder(cast($0)) }
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
    public static func newFrom(string: UnsafePointer<gchar>, length: gssize) -> Builder! {
        let rv = gtk_builder_new_from_string(string, length)
        return rv.map { Builder(cast($0)) }
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: BuilderPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(builder_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
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

public extension BuilderProtocol {
    /// Connect a `BuilderSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: BuilderSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(builder_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension BuilderProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBuilder` instance.
    var builder_ptr: UnsafeMutablePointer<GtkBuilder> { return ptr.assumingMemoryBound(to: GtkBuilder.self) }

    /// Adds the `callback_symbol` to the scope of `builder` under the given `callback_name`.
    /// 
    /// Using this function overrides the behavior of `gtk_builder_connect_signals()`
    /// for any callback symbols that are added. Using this method allows for better
    /// encapsulation as it does not require that callback symbols be declared in
    /// the global namespace.
    func add(callback callback_name: UnsafePointer<gchar>, callbackSymbol callback_symbol: @escaping GLibObject.Callback) {
        gtk_builder_add_callback_symbol(cast(builder_ptr), callback_name, callback_symbol)
    
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
    func addFrom(file String_: UnsafePointer<gchar>) throws -> CUnsignedInt {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_builder_add_from_file(cast(builder_ptr), String_, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return CUnsignedInt(rv)
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
    func addFrom(resource resource_path: UnsafePointer<gchar>) throws -> CUnsignedInt {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_builder_add_from_resource(cast(builder_ptr), resource_path, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return CUnsignedInt(rv)
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
    func addFrom(stringBuffer buffer: UnsafePointer<gchar>, length: Int) throws -> CUnsignedInt {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_builder_add_from_string(cast(builder_ptr), buffer, gsize(length), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return CUnsignedInt(rv)
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
    func addObjectsFrom(file String_: UnsafePointer<gchar>, objectIDs object_ids: UnsafeMutablePointer<UnsafeMutablePointer<gchar>>) throws -> CUnsignedInt {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_builder_add_objects_from_file(cast(builder_ptr), String_, cast(object_ids), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return CUnsignedInt(rv)
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
    func addObjectsFrom(resource resource_path: UnsafePointer<gchar>, objectIDs object_ids: UnsafeMutablePointer<UnsafeMutablePointer<gchar>>) throws -> CUnsignedInt {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_builder_add_objects_from_resource(cast(builder_ptr), resource_path, cast(object_ids), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return CUnsignedInt(rv)
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
    func addObjectsFrom(stringBuffer buffer: UnsafePointer<gchar>, length: Int, objectIDs object_ids: UnsafeMutablePointer<UnsafeMutablePointer<gchar>>) throws -> CUnsignedInt {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_builder_add_objects_from_string(cast(builder_ptr), buffer, gsize(length), cast(object_ids), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return CUnsignedInt(rv)
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
    func connectSignals(userData user_data: UnsafeMutableRawPointer) {
        gtk_builder_connect_signals(cast(builder_ptr), cast(user_data))
    
    }

    /// This function can be thought of the interpreted language binding
    /// version of `gtk_builder_connect_signals()`, except that it does not
    /// require GModule to function correctly.
    func connectSignalsFull(_ func_: @escaping BuilderConnectFunc, userData user_data: UnsafeMutableRawPointer) {
        gtk_builder_connect_signals_full(cast(builder_ptr), func_, cast(user_data))
    
    }

    /// Add `object` to the `builder` object pool so it can be referenced just like any
    /// other object built by builder.
    func exposeObject(name: UnsafePointer<gchar>, object: GLibObject.ObjectProtocol) {
        gtk_builder_expose_object(cast(builder_ptr), name, cast(object.ptr))
    
    }

    /// Main private entry point for building composite container
    /// components from template XML.
    /// 
    /// This is exported purely to let gtk-builder-tool validate
    /// templates, applications have no need to call this function.
    func extendWithTemplate(widget: WidgetProtocol, templateType template_type: GType, buffer: UnsafePointer<gchar>, length: Int) throws -> CUnsignedInt {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_builder_extend_with_template(cast(builder_ptr), cast(widget.ptr), template_type, buffer, gsize(length), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return CUnsignedInt(rv)
    }

    /// Gets the `GtkApplication` associated with the builder.
    /// 
    /// The `GtkApplication` is used for creating action proxies as requested
    /// from XML that the builder is loading.
    /// 
    /// By default, the builder uses the default application: the one from
    /// `g_application_get_default()`. If you want to use another application
    /// for constructing proxies, use `gtk_builder_set_application()`.
    func getApplication() -> UnsafeMutablePointer<GtkApplication>! {
        let rv = gtk_builder_get_application(cast(builder_ptr))
        return cast(rv)
    }

    /// Gets the object named `name`. Note that this function does not
    /// increment the reference count of the returned object.
    func getObject(name: UnsafePointer<gchar>) -> UnsafeMutablePointer<GObject>! {
        let rv = gtk_builder_get_object(cast(builder_ptr), name)
        return cast(rv)
    }

    /// Gets all objects that have been constructed by `builder`. Note that
    /// this function does not increment the reference counts of the returned
    /// objects.
    func getObjects() -> SListRef! {
        let rv = gtk_builder_get_objects(cast(builder_ptr))
        return cast(rv.map { SListRef($0) })
    }

    /// Gets the translation domain of `builder`.
    func getTranslationDomain() -> String! {
        let rv = gtk_builder_get_translation_domain(cast(builder_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Looks up a type by name, using the virtual function that
    /// `GtkBuilder` has for that purpose. This is mainly used when
    /// implementing the `GtkBuildable` interface on a type.
    func getTypeFromName(typeName type_name: UnsafePointer<CChar>) -> GType {
        let rv = gtk_builder_get_type_from_name(cast(builder_ptr), type_name)
        return rv
    }

    /// Fetches a symbol previously added to `builder`
    /// with `gtk_builder_add_callback_symbols()`
    /// 
    /// This function is intended for possible use in language bindings
    /// or for any case that one might be cusomizing signal connections
    /// using `gtk_builder_connect_signals_full()`
    func lookup(callback callback_name: UnsafePointer<gchar>) -> CGLib.GCallback? {
        let rv = gtk_builder_lookup_callback_symbol(cast(builder_ptr), callback_name)
        return rv
    }

    /// Sets the application associated with `builder`.
    /// 
    /// You only need this function if there is more than one `GApplication`
    /// in your process. `application` cannot be `nil`.
    func set(application: ApplicationProtocol) {
        gtk_builder_set_application(cast(builder_ptr), cast(application.ptr))
    
    }

    /// Sets the translation domain of `builder`.
    /// See `GtkBuilder:translation`-domain.
    func setTranslation(domain: UnsafePointer<gchar>) {
        gtk_builder_set_translation_domain(cast(builder_ptr), domain)
    
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
    func valueFrom(pspec: ParamSpecProtocol, string: UnsafePointer<gchar>, value: GLibObject.ValueProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_builder_value_from_string(cast(builder_ptr), cast(pspec.ptr), string, cast(value.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Like `gtk_builder_value_from_string()`, this function demarshals
    /// a value from a string, but takes a `GType` instead of `GParamSpec`.
    /// This function calls `g_value_init()` on the `value` argument, so it
    /// need not be initialised beforehand.
    /// 
    /// Upon errors `false` will be returned and `error` will be assigned a
    /// `GError` from the `GTK_BUILDER_ERROR` domain.
    func valueFrom(type: GType, string: UnsafePointer<gchar>, value: GLibObject.ValueProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_builder_value_from_string_type(cast(builder_ptr), type, string, cast(value.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }
    /// Gets the `GtkApplication` associated with the builder.
    /// 
    /// The `GtkApplication` is used for creating action proxies as requested
    /// from XML that the builder is loading.
    /// 
    /// By default, the builder uses the default application: the one from
    /// `g_application_get_default()`. If you want to use another application
    /// for constructing proxies, use `gtk_builder_set_application()`.
    var application: UnsafeMutablePointer<GtkApplication>! {
        /// Gets the `GtkApplication` associated with the builder.
        /// 
        /// The `GtkApplication` is used for creating action proxies as requested
        /// from XML that the builder is loading.
        /// 
        /// By default, the builder uses the default application: the one from
        /// `g_application_get_default()`. If you want to use another application
        /// for constructing proxies, use `gtk_builder_set_application()`.
        get {
            let rv = gtk_builder_get_application(cast(builder_ptr))
            return cast(rv)
        }
        /// Sets the application associated with `builder`.
        /// 
        /// You only need this function if there is more than one `GApplication`
        /// in your process. `application` cannot be `nil`.
        nonmutating set {
            gtk_builder_set_application(cast(builder_ptr), cast(newValue))
        }
    }

    /// Gets all objects that have been constructed by `builder`. Note that
    /// this function does not increment the reference counts of the returned
    /// objects.
    var objects: SListRef! {
        /// Gets all objects that have been constructed by `builder`. Note that
        /// this function does not increment the reference counts of the returned
        /// objects.
        get {
            let rv = gtk_builder_get_objects(cast(builder_ptr))
            return cast(rv.map { SListRef($0) })
        }
    }

    /// Gets the translation domain of `builder`.
    var translationDomain: String! {
        /// Gets the translation domain of `builder`.
        get {
            let rv = gtk_builder_get_translation_domain(cast(builder_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Sets the translation domain of `builder`.
        /// See `GtkBuilder:translation`-domain.
        nonmutating set {
            gtk_builder_set_translation_domain(cast(builder_ptr), newValue)
        }
    }
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkButton` instance.
    var button_ptr: UnsafeMutablePointer<GtkButton> { get }
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
public struct ButtonRef: ButtonProtocol {
    /// Untyped pointer to the underlying `GtkButton` instance.
    /// For type-safe access, use the generated, typed pointer `button_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ButtonRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkButton>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ButtonProtocol`
    init<T: ButtonProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkButton` widget. To add a child widget to the button,
    /// use `gtk_container_add()`.
    init() {
        let rv = gtk_button_new()
        self.init(cast(rv))
    }

    /// Creates a new button containing an icon from the current icon theme.
    /// 
    /// If the icon name isn’t known, a “broken image” icon will be
    /// displayed instead. If the current icon theme is changed, the icon
    /// will be updated appropriately.
    /// 
    /// This function is a convenience wrapper around `gtk_button_new()` and
    /// `gtk_button_set_image()`.
    init(iconName icon_name: UnsafePointer<gchar>, size: GtkIconSize) {
        let rv = gtk_button_new_from_icon_name(icon_name, size)
        self.init(cast(rv))
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
    @available(*, deprecated) init(stock stock_id: UnsafePointer<gchar>) {
        let rv = gtk_button_new_from_stock(stock_id)
        self.init(cast(rv))
    }

    /// Creates a `GtkButton` widget with a `GtkLabel` child containing the given
    /// text.
    init(label: UnsafePointer<gchar>) {
        let rv = gtk_button_new_with_label(label)
        self.init(cast(rv))
    }

    /// Creates a new `GtkButton` containing a label.
    /// If characters in `label` are preceded by an underscore, they are underlined.
    /// If you need a literal underscore character in a label, use “__” (two
    /// underscores). The first underlined character represents a keyboard
    /// accelerator called a mnemonic.
    /// Pressing Alt and that key activates the button.
    init(mnemonic label: UnsafePointer<gchar>) {
        let rv = gtk_button_new_with_mnemonic(label)
        self.init(cast(rv))
    }
    /// Creates a new button containing an icon from the current icon theme.
    /// 
    /// If the icon name isn’t known, a “broken image” icon will be
    /// displayed instead. If the current icon theme is changed, the icon
    /// will be updated appropriately.
    /// 
    /// This function is a convenience wrapper around `gtk_button_new()` and
    /// `gtk_button_set_image()`.
    static func newFrom(iconName icon_name: UnsafePointer<gchar>, size: GtkIconSize) -> ButtonRef! {
        let rv = gtk_button_new_from_icon_name(icon_name, size)
        return rv.map { ButtonRef(cast($0)) }
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
    @available(*, deprecated) static func newFrom(stock stock_id: UnsafePointer<gchar>) -> ButtonRef! {
        let rv = gtk_button_new_from_stock(stock_id)
        return rv.map { ButtonRef(cast($0)) }
    }

    /// Creates a `GtkButton` widget with a `GtkLabel` child containing the given
    /// text.
    static func newWith(label: UnsafePointer<gchar>) -> ButtonRef! {
        let rv = gtk_button_new_with_label(label)
        return rv.map { ButtonRef(cast($0)) }
    }

    /// Creates a new `GtkButton` containing a label.
    /// If characters in `label` are preceded by an underscore, they are underlined.
    /// If you need a literal underscore character in a label, use “__” (two
    /// underscores). The first underlined character represents a keyboard
    /// accelerator called a mnemonic.
    /// Pressing Alt and that key activates the button.
    static func newWith(mnemonic label: UnsafePointer<gchar>) -> ButtonRef! {
        let rv = gtk_button_new_with_mnemonic(label)
        return rv.map { ButtonRef(cast($0)) }
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
    /// Ownership is transferred to the `Button` instance.
    public init(_ op: UnsafeMutablePointer<GtkButton>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `ButtonProtocol`
    /// Will retain `GtkButton`.
    public convenience init<T: ButtonProtocol>(_ other: T) {
        self.init(cast(other.button_ptr))
        g_object_ref(cast(button_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkButton.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkButton.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkButton.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkButton>(opaquePointer))
    }

    /// Creates a new `GtkButton` widget. To add a child widget to the button,
    /// use `gtk_container_add()`.
    public convenience init() {
        let rv = gtk_button_new()
        self.init(cast(rv))
    }

    /// Creates a new button containing an icon from the current icon theme.
    /// 
    /// If the icon name isn’t known, a “broken image” icon will be
    /// displayed instead. If the current icon theme is changed, the icon
    /// will be updated appropriately.
    /// 
    /// This function is a convenience wrapper around `gtk_button_new()` and
    /// `gtk_button_set_image()`.
    public convenience init(iconName icon_name: UnsafePointer<gchar>, size: GtkIconSize) {
        let rv = gtk_button_new_from_icon_name(icon_name, size)
        self.init(cast(rv))
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
    @available(*, deprecated) public convenience init(stock stock_id: UnsafePointer<gchar>) {
        let rv = gtk_button_new_from_stock(stock_id)
        self.init(cast(rv))
    }

    /// Creates a `GtkButton` widget with a `GtkLabel` child containing the given
    /// text.
    public convenience init(label: UnsafePointer<gchar>) {
        let rv = gtk_button_new_with_label(label)
        self.init(cast(rv))
    }

    /// Creates a new `GtkButton` containing a label.
    /// If characters in `label` are preceded by an underscore, they are underlined.
    /// If you need a literal underscore character in a label, use “__” (two
    /// underscores). The first underlined character represents a keyboard
    /// accelerator called a mnemonic.
    /// Pressing Alt and that key activates the button.
    public convenience init(mnemonic label: UnsafePointer<gchar>) {
        let rv = gtk_button_new_with_mnemonic(label)
        self.init(cast(rv))
    }

    /// Creates a new button containing an icon from the current icon theme.
    /// 
    /// If the icon name isn’t known, a “broken image” icon will be
    /// displayed instead. If the current icon theme is changed, the icon
    /// will be updated appropriately.
    /// 
    /// This function is a convenience wrapper around `gtk_button_new()` and
    /// `gtk_button_set_image()`.
    public static func newFrom(iconName icon_name: UnsafePointer<gchar>, size: GtkIconSize) -> Button! {
        let rv = gtk_button_new_from_icon_name(icon_name, size)
        return rv.map { Button(cast($0)) }
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
    @available(*, deprecated) public static func newFrom(stock stock_id: UnsafePointer<gchar>) -> Button! {
        let rv = gtk_button_new_from_stock(stock_id)
        return rv.map { Button(cast($0)) }
    }

    /// Creates a `GtkButton` widget with a `GtkLabel` child containing the given
    /// text.
    public static func newWith(label: UnsafePointer<gchar>) -> Button! {
        let rv = gtk_button_new_with_label(label)
        return rv.map { Button(cast($0)) }
    }

    /// Creates a new `GtkButton` containing a label.
    /// If characters in `label` are preceded by an underscore, they are underlined.
    /// If you need a literal underscore character in a label, use “__” (two
    /// underscores). The first underlined character represents a keyboard
    /// accelerator called a mnemonic.
    /// Pressing Alt and that key activates the button.
    public static func newWith(mnemonic label: UnsafePointer<gchar>) -> Button! {
        let rv = gtk_button_new_with_mnemonic(label)
        return rv.map { Button(cast($0)) }
    }

}

public enum ButtonPropertyName: String, PropertyNameProtocol {
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ButtonPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(button_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
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
}

public enum ButtonSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// The `activate` signal on GtkButton is an action signal and
    /// emitting it causes the button to animate press then release.
    /// Applications should never connect to this signal, but use the
    /// `GtkButton::clicked` signal.
    case activate = "activate"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
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
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
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
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
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
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
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
    /// The "visible-data-changed" signal is emitted when the visual
    /// appearance of the object changed.
    case visibleDataChanged = "visible-data-changed"
    /// The `window`-state-event will be emitted when the state of the
    /// toplevel window associated to the `widget` changes.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable
    /// this mask automatically for all new windows.
    case windowStateEvent = "window-state-event"
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

public extension ButtonProtocol {
    /// Connect a `ButtonSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: ButtonSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(button_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension ButtonProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkButton` instance.
    var button_ptr: UnsafeMutablePointer<GtkButton> { return ptr.assumingMemoryBound(to: GtkButton.self) }

    /// Emits a `GtkButton::clicked` signal to the given `GtkButton`.
    func clicked() {
        gtk_button_clicked(cast(button_ptr))
    
    }

    /// Emits a `GtkButton::enter` signal to the given `GtkButton`.
    ///
    /// **enter is deprecated:**
    /// Use the #GtkWidget::enter-notify-event signal.
    @available(*, deprecated) func enter() {
        gtk_button_enter(cast(button_ptr))
    
    }

    /// Gets the alignment of the child in the button.
    ///
    /// **get_alignment is deprecated:**
    /// Access the child widget directly if you need to control
    /// its alignment.
    @available(*, deprecated) func getAlignment(xalign: UnsafeMutablePointer<gfloat>, yalign: UnsafeMutablePointer<gfloat>) {
        gtk_button_get_alignment(cast(button_ptr), cast(xalign), cast(yalign))
    
    }

    /// Returns whether the button will ignore the `GtkSettings:gtk`-button-images
    /// setting and always show the image, if available.
    func getAlwaysShowImage() -> Bool {
        let rv = gtk_button_get_always_show_image(cast(button_ptr))
        return Bool(rv != 0)
    }

    /// Returns the button’s event window if it is realized, `nil` otherwise.
    /// This function should be rarely needed.
    func getEventWindow() -> UnsafeMutablePointer<GdkWindow>! {
        let rv = gtk_button_get_event_window(cast(button_ptr))
        return cast(rv)
    }

    /// Returns whether the button grabs focus when it is clicked with the mouse.
    /// See `gtk_button_set_focus_on_click()`.
    ///
    /// **get_focus_on_click is deprecated:**
    /// Use gtk_widget_get_focus_on_click() instead
    @available(*, deprecated) @available(*, deprecated) func getFocusOnClick() -> Bool {
        let rv = gtk_button_get_focus_on_click(cast(button_ptr))
        return Bool(rv != 0)
    }

    /// Gets the widget that is currenty set as the image of `button`.
    /// This may have been explicitly set by `gtk_button_set_image()`
    /// or constructed by `gtk_button_new_from_stock()`.
    func getImage() -> UnsafeMutablePointer<GtkWidget>! {
        let rv = gtk_button_get_image(cast(button_ptr))
        return cast(rv)
    }

    /// Gets the position of the image relative to the text
    /// inside the button.
    func getImagePosition() -> GtkPositionType {
        let rv = gtk_button_get_image_position(cast(button_ptr))
        return rv
    }

    /// Fetches the text from the label of the button, as set by
    /// `gtk_button_set_label()`. If the label text has not
    /// been set the return value will be `nil`. This will be the
    /// case if you create an empty button with `gtk_button_new()` to
    /// use as a container.
    func getLabel() -> String! {
        let rv = gtk_button_get_label(cast(button_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Returns the current relief style of the given `GtkButton`.
    func getRelief() -> GtkReliefStyle {
        let rv = gtk_button_get_relief(cast(button_ptr))
        return rv
    }

    /// Returns whether the button label is a stock item.
    ///
    /// **get_use_stock is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) func getUseStock() -> Bool {
        let rv = gtk_button_get_use_stock(cast(button_ptr))
        return Bool(rv != 0)
    }

    /// Returns whether an embedded underline in the button label indicates a
    /// mnemonic. See gtk_button_set_use_underline ().
    func getUseUnderline() -> Bool {
        let rv = gtk_button_get_use_underline(cast(button_ptr))
        return Bool(rv != 0)
    }

    /// Emits a `GtkButton::leave` signal to the given `GtkButton`.
    ///
    /// **leave is deprecated:**
    /// Use the #GtkWidget::leave-notify-event signal.
    @available(*, deprecated) func leave() {
        gtk_button_leave(cast(button_ptr))
    
    }

    /// Emits a `GtkButton::pressed` signal to the given `GtkButton`.
    ///
    /// **pressed is deprecated:**
    /// Use the #GtkWidget::button-press-event signal.
    @available(*, deprecated) func pressed() {
        gtk_button_pressed(cast(button_ptr))
    
    }

    /// Emits a `GtkButton::released` signal to the given `GtkButton`.
    ///
    /// **released is deprecated:**
    /// Use the #GtkWidget::button-release-event signal.
    @available(*, deprecated) func released() {
        gtk_button_released(cast(button_ptr))
    
    }

    /// Sets the alignment of the child. This property has no effect unless
    /// the child is a `GtkMisc` or a `GtkAlignment`.
    ///
    /// **set_alignment is deprecated:**
    /// Access the child widget directly if you need to control
    /// its alignment.
    @available(*, deprecated) func setAlignment(xalign: gfloat, yalign: gfloat) {
        gtk_button_set_alignment(cast(button_ptr), xalign, yalign)
    
    }

    /// If `true`, the button will ignore the `GtkSettings:gtk`-button-images
    /// setting and always show the image, if available.
    /// 
    /// Use this property if the button  would be useless or hard to use
    /// without the image.
    func setAlwaysShowImage(alwaysShow always_show: Bool) {
        gtk_button_set_always_show_image(cast(button_ptr), gboolean(always_show ? 1 : 0))
    
    }

    /// Sets whether the button will grab focus when it is clicked with the mouse.
    /// Making mouse clicks not grab focus is useful in places like toolbars where
    /// you don’t want the keyboard focus removed from the main area of the
    /// application.
    ///
    /// **set_focus_on_click is deprecated:**
    /// Use gtk_widget_set_focus_on_click() instead
    @available(*, deprecated) @available(*, deprecated) func set(focusOnClick focus_on_click: Bool) {
        gtk_button_set_focus_on_click(cast(button_ptr), gboolean(focus_on_click ? 1 : 0))
    
    }

    /// Set the image of `button` to the given widget. The image will be
    /// displayed if the label text is `nil` or if
    /// `GtkButton:always`-show-image is `true`. You don’t have to call
    /// `gtk_widget_show()` on `image` yourself.
    func set(image: WidgetProtocol) {
        gtk_button_set_image(cast(button_ptr), cast(image.ptr))
    
    }

    /// Sets the position of the image relative to the text
    /// inside the button.
    func setImage(position: PositionType) {
        gtk_button_set_image_position(cast(button_ptr), position)
    
    }

    /// Sets the text of the label of the button to `str`. This text is
    /// also used to select the stock item if `gtk_button_set_use_stock()`
    /// is used.
    /// 
    /// This will also clear any previously set labels.
    func set(label: UnsafePointer<gchar>) {
        gtk_button_set_label(cast(button_ptr), label)
    
    }

    /// Sets the relief style of the edges of the given `GtkButton` widget.
    /// Two styles exist, `GTK_RELIEF_NORMAL` and `GTK_RELIEF_NONE`.
    /// The default style is, as one can guess, `GTK_RELIEF_NORMAL`.
    /// The deprecated value `GTK_RELIEF_HALF` behaves the same as
    /// `GTK_RELIEF_NORMAL`.
    func set(relief: ReliefStyle) {
        gtk_button_set_relief(cast(button_ptr), relief)
    
    }

    /// If `true`, the label set on the button is used as a
    /// stock id to select the stock item for the button.
    ///
    /// **set_use_stock is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) func set(useStock use_stock: Bool) {
        gtk_button_set_use_stock(cast(button_ptr), gboolean(use_stock ? 1 : 0))
    
    }

    /// If true, an underline in the text of the button label indicates
    /// the next character should be used for the mnemonic accelerator key.
    func set(useUnderline use_underline: Bool) {
        gtk_button_set_use_underline(cast(button_ptr), gboolean(use_underline ? 1 : 0))
    
    }
    /// Returns whether the button will ignore the `GtkSettings:gtk`-button-images
    /// setting and always show the image, if available.
    var alwaysShowImage: Bool {
        /// Returns whether the button will ignore the `GtkSettings:gtk`-button-images
        /// setting and always show the image, if available.
        get {
            let rv = gtk_button_get_always_show_image(cast(button_ptr))
            return Bool(rv != 0)
        }
        /// If `true`, the button will ignore the `GtkSettings:gtk`-button-images
        /// setting and always show the image, if available.
        /// 
        /// Use this property if the button  would be useless or hard to use
        /// without the image.
        nonmutating set {
            gtk_button_set_always_show_image(cast(button_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Returns the button’s event window if it is realized, `nil` otherwise.
    /// This function should be rarely needed.
    var eventWindow: UnsafeMutablePointer<GdkWindow>! {
        /// Returns the button’s event window if it is realized, `nil` otherwise.
        /// This function should be rarely needed.
        get {
            let rv = gtk_button_get_event_window(cast(button_ptr))
            return cast(rv)
        }
    }

    /// Returns whether the button grabs focus when it is clicked with the mouse.
    /// See `gtk_button_set_focus_on_click()`.
    ///
    /// **get_focus_on_click is deprecated:**
    /// Use gtk_widget_get_focus_on_click() instead
    @available(*, deprecated) var focusOnClick: Bool {
        /// Returns whether the button grabs focus when it is clicked with the mouse.
        /// See `gtk_button_set_focus_on_click()`.
        ///
        /// **get_focus_on_click is deprecated:**
        /// Use gtk_widget_get_focus_on_click() instead
        @available(*, deprecated) get {
            let rv = gtk_button_get_focus_on_click(cast(button_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether the button will grab focus when it is clicked with the mouse.
        /// Making mouse clicks not grab focus is useful in places like toolbars where
        /// you don’t want the keyboard focus removed from the main area of the
        /// application.
        ///
        /// **set_focus_on_click is deprecated:**
        /// Use gtk_widget_set_focus_on_click() instead
        @available(*, deprecated) nonmutating set {
            gtk_button_set_focus_on_click(cast(button_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// The child widget to appear next to the button text.
    var image: UnsafeMutablePointer<GtkWidget>! {
        /// Gets the widget that is currenty set as the image of `button`.
        /// This may have been explicitly set by `gtk_button_set_image()`
        /// or constructed by `gtk_button_new_from_stock()`.
        get {
            let rv = gtk_button_get_image(cast(button_ptr))
            return cast(rv)
        }
        /// Set the image of `button` to the given widget. The image will be
        /// displayed if the label text is `nil` or if
        /// `GtkButton:always`-show-image is `true`. You don’t have to call
        /// `gtk_widget_show()` on `image` yourself.
        nonmutating set {
            gtk_button_set_image(cast(button_ptr), cast(newValue))
        }
    }

    /// Gets the position of the image relative to the text
    /// inside the button.
    var imagePosition: GtkPositionType {
        /// Gets the position of the image relative to the text
        /// inside the button.
        get {
            let rv = gtk_button_get_image_position(cast(button_ptr))
            return rv
        }
        /// Sets the position of the image relative to the text
        /// inside the button.
        nonmutating set {
            gtk_button_set_image_position(cast(button_ptr), newValue)
        }
    }

    var label: String! {
        /// Fetches the text from the label of the button, as set by
        /// `gtk_button_set_label()`. If the label text has not
        /// been set the return value will be `nil`. This will be the
        /// case if you create an empty button with `gtk_button_new()` to
        /// use as a container.
        get {
            let rv = gtk_button_get_label(cast(button_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Sets the text of the label of the button to `str`. This text is
        /// also used to select the stock item if `gtk_button_set_use_stock()`
        /// is used.
        /// 
        /// This will also clear any previously set labels.
        nonmutating set {
            gtk_button_set_label(cast(button_ptr), newValue)
        }
    }

    var relief: GtkReliefStyle {
        /// Returns the current relief style of the given `GtkButton`.
        get {
            let rv = gtk_button_get_relief(cast(button_ptr))
            return rv
        }
        /// Sets the relief style of the edges of the given `GtkButton` widget.
        /// Two styles exist, `GTK_RELIEF_NORMAL` and `GTK_RELIEF_NONE`.
        /// The default style is, as one can guess, `GTK_RELIEF_NORMAL`.
        /// The deprecated value `GTK_RELIEF_HALF` behaves the same as
        /// `GTK_RELIEF_NORMAL`.
        nonmutating set {
            gtk_button_set_relief(cast(button_ptr), newValue)
        }
    }

    /// Returns whether the button label is a stock item.
    ///
    /// **get_use_stock is deprecated:**
    /// This method is deprecated.
    var useStock: Bool {
        /// Returns whether the button label is a stock item.
        ///
        /// **get_use_stock is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated) get {
            let rv = gtk_button_get_use_stock(cast(button_ptr))
            return Bool(rv != 0)
        }
        /// If `true`, the label set on the button is used as a
        /// stock id to select the stock item for the button.
        ///
        /// **set_use_stock is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated) nonmutating set {
            gtk_button_set_use_stock(cast(button_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Returns whether an embedded underline in the button label indicates a
    /// mnemonic. See gtk_button_set_use_underline ().
    var useUnderline: Bool {
        /// Returns whether an embedded underline in the button label indicates a
        /// mnemonic. See gtk_button_set_use_underline ().
        get {
            let rv = gtk_button_get_use_underline(cast(button_ptr))
            return Bool(rv != 0)
        }
        /// If true, an underline in the text of the button label indicates
        /// the next character should be used for the mnemonic accelerator key.
        nonmutating set {
            gtk_button_set_use_underline(cast(button_ptr), gboolean(newValue ? 1 : 0))
        }
    }
}



// MARK: - ButtonAccessible Class

/// The `ButtonAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkButtonAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ButtonAccessible`.
/// Alternatively, use `ButtonAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ButtonAccessibleProtocol: ContainerAccessibleProtocol, Atk.ActionProtocol, Atk.ImageProtocol {
    /// Untyped pointer to the underlying `GtkButtonAccessible` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkButtonAccessible` instance.
    var button_accessible_ptr: UnsafeMutablePointer<GtkButtonAccessible> { get }
}

/// The `ButtonAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkButtonAccessible` instance.
/// It exposes methods that can operate on this data type through `ButtonAccessibleProtocol` conformance.
/// Use `ButtonAccessibleRef` only as an `unowned` reference to an existing `GtkButtonAccessible` instance.
///

public struct ButtonAccessibleRef: ButtonAccessibleProtocol {
    /// Untyped pointer to the underlying `GtkButtonAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `button_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ButtonAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkButtonAccessible>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ButtonAccessibleProtocol`
    init<T: ButtonAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessibleProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessibleProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessibleProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessibleProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessibleProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ButtonAccessible` type acts as a reference-counted owner of an underlying `GtkButtonAccessible` instance.
/// It provides the methods that can operate on this data type through `ButtonAccessibleProtocol` conformance.
/// Use `ButtonAccessible` as a strong reference or owner of a `GtkButtonAccessible` instance.
///

open class ButtonAccessible: ContainerAccessible, ButtonAccessibleProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ButtonAccessible` instance.
    public init(_ op: UnsafeMutablePointer<GtkButtonAccessible>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `ButtonAccessibleProtocol`
    /// Will retain `GtkButtonAccessible`.
    public convenience init<T: ButtonAccessibleProtocol>(_ other: T) {
        self.init(cast(other.button_accessible_ptr))
        g_object_ref(cast(button_accessible_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessibleProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkButtonAccessible.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessibleProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkButtonAccessible.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessibleProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkButtonAccessible.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonAccessibleProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkButtonAccessible>(opaquePointer))
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ButtonAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(button_accessible_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
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

public extension ButtonAccessibleProtocol {
    /// Connect a `ButtonAccessibleSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: ButtonAccessibleSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(button_accessible_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension ButtonAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkButtonAccessible` instance.
    var button_accessible_ptr: UnsafeMutablePointer<GtkButtonAccessible> { return ptr.assumingMemoryBound(to: GtkButtonAccessible.self) }

}



// MARK: - ButtonBox Class

/// The `ButtonBoxProtocol` protocol exposes the methods and properties of an underlying `GtkButtonBox` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ButtonBox`.
/// Alternatively, use `ButtonBoxRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ButtonBoxProtocol: BoxProtocol {
    /// Untyped pointer to the underlying `GtkButtonBox` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkButtonBox` instance.
    var button_box_ptr: UnsafeMutablePointer<GtkButtonBox> { get }
}

/// The `ButtonBoxRef` type acts as a lightweight Swift reference to an underlying `GtkButtonBox` instance.
/// It exposes methods that can operate on this data type through `ButtonBoxProtocol` conformance.
/// Use `ButtonBoxRef` only as an `unowned` reference to an existing `GtkButtonBox` instance.
///

public struct ButtonBoxRef: ButtonBoxProtocol {
    /// Untyped pointer to the underlying `GtkButtonBox` instance.
    /// For type-safe access, use the generated, typed pointer `button_box_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ButtonBoxRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkButtonBox>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ButtonBoxProtocol`
    init<T: ButtonBoxProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkButtonBox`.
    init( orientation: Orientation) {
        let rv = gtk_button_box_new(orientation)
        self.init(cast(rv))
    }
}

/// The `ButtonBox` type acts as a reference-counted owner of an underlying `GtkButtonBox` instance.
/// It provides the methods that can operate on this data type through `ButtonBoxProtocol` conformance.
/// Use `ButtonBox` as a strong reference or owner of a `GtkButtonBox` instance.
///

open class ButtonBox: Box, ButtonBoxProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ButtonBox` instance.
    public init(_ op: UnsafeMutablePointer<GtkButtonBox>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `ButtonBoxProtocol`
    /// Will retain `GtkButtonBox`.
    public convenience init<T: ButtonBoxProtocol>(_ other: T) {
        self.init(cast(other.button_box_ptr))
        g_object_ref(cast(button_box_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkButtonBox.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkButtonBox.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkButtonBox.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonBoxProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkButtonBox>(opaquePointer))
    }

    /// Creates a new `GtkButtonBox`.
    public convenience init( orientation: Orientation) {
        let rv = gtk_button_box_new(orientation)
        self.init(cast(rv))
    }


}

public enum ButtonBoxPropertyName: String, PropertyNameProtocol {
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ButtonBoxPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(button_box_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
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
}

public enum ButtonBoxSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
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
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
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
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
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
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
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
    /// The "visible-data-changed" signal is emitted when the visual
    /// appearance of the object changed.
    case visibleDataChanged = "visible-data-changed"
    /// The `window`-state-event will be emitted when the state of the
    /// toplevel window associated to the `widget` changes.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable
    /// this mask automatically for all new windows.
    case windowStateEvent = "window-state-event"
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

public extension ButtonBoxProtocol {
    /// Connect a `ButtonBoxSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: ButtonBoxSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(button_box_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension ButtonBoxProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkButtonBox` instance.
    var button_box_ptr: UnsafeMutablePointer<GtkButtonBox> { return ptr.assumingMemoryBound(to: GtkButtonBox.self) }

    /// Returns whether the child is exempted from homogenous
    /// sizing.
    func gets(child: WidgetProtocol) -> Bool {
        let rv = gtk_button_box_get_child_non_homogeneous(cast(button_box_ptr), cast(child.ptr))
        return Bool(rv != 0)
    }

    /// Returns whether `child` should appear in a secondary group of children.
    func gety(child: WidgetProtocol) -> Bool {
        let rv = gtk_button_box_get_child_secondary(cast(button_box_ptr), cast(child.ptr))
        return Bool(rv != 0)
    }

    /// Retrieves the method being used to arrange the buttons in a button box.
    func getLayout() -> GtkButtonBoxStyle {
        let rv = gtk_button_box_get_layout(cast(button_box_ptr))
        return rv
    }

    /// Sets whether the child is exempted from homogeous sizing.
    func gets(child: WidgetProtocol, nonHomogeneous non_homogeneous: Bool) {
        gtk_button_box_set_child_non_homogeneous(cast(button_box_ptr), cast(child.ptr), gboolean(non_homogeneous ? 1 : 0))
    
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
    func gety(child: WidgetProtocol, isSecondary is_secondary: Bool) {
        gtk_button_box_set_child_secondary(cast(button_box_ptr), cast(child.ptr), gboolean(is_secondary ? 1 : 0))
    
    }

    /// Changes the way buttons are arranged in their container.
    func set(layoutStyle layout_style: ButtonBoxStyle) {
        gtk_button_box_set_layout(cast(button_box_ptr), layout_style)
    
    }
    /// Retrieves the method being used to arrange the buttons in a button box.
    var layout: GtkButtonBoxStyle {
        /// Retrieves the method being used to arrange the buttons in a button box.
        get {
            let rv = gtk_button_box_get_layout(cast(button_box_ptr))
            return rv
        }
        /// Changes the way buttons are arranged in their container.
        nonmutating set {
            gtk_button_box_set_layout(cast(button_box_ptr), newValue)
        }
    }
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkCalendar` instance.
    var calendar_ptr: UnsafeMutablePointer<GtkCalendar> { get }
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
public struct CalendarRef: CalendarProtocol {
    /// Untyped pointer to the underlying `GtkCalendar` instance.
    /// For type-safe access, use the generated, typed pointer `calendar_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CalendarRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkCalendar>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CalendarProtocol`
    init<T: CalendarProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new calendar, with the current date being selected.
    init() {
        let rv = gtk_calendar_new()
        self.init(cast(rv))
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
    /// Ownership is transferred to the `Calendar` instance.
    public init(_ op: UnsafeMutablePointer<GtkCalendar>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `CalendarProtocol`
    /// Will retain `GtkCalendar`.
    public convenience init<T: CalendarProtocol>(_ other: T) {
        self.init(cast(other.calendar_ptr))
        g_object_ref(cast(calendar_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkCalendar.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkCalendar.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkCalendar.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CalendarProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkCalendar>(opaquePointer))
    }

    /// Creates a new calendar, with the current date being selected.
    public convenience init() {
        let rv = gtk_calendar_new()
        self.init(cast(rv))
    }


}

public enum CalendarPropertyName: String, PropertyNameProtocol {
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: CalendarPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(calendar_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
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
}

public enum CalendarSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
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
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
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
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
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
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
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
    /// The "visible-data-changed" signal is emitted when the visual
    /// appearance of the object changed.
    case visibleDataChanged = "visible-data-changed"
    /// The `window`-state-event will be emitted when the state of the
    /// toplevel window associated to the `widget` changes.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable
    /// this mask automatically for all new windows.
    case windowStateEvent = "window-state-event"
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

public extension CalendarProtocol {
    /// Connect a `CalendarSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: CalendarSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(calendar_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension CalendarProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCalendar` instance.
    var calendar_ptr: UnsafeMutablePointer<GtkCalendar> { return ptr.assumingMemoryBound(to: GtkCalendar.self) }

    /// Remove all visual markers.
    func clearMarks() {
        gtk_calendar_clear_marks(cast(calendar_ptr))
    
    }

    /// Obtains the selected date from a `GtkCalendar`.
    func getDate(year: UnsafeMutablePointer<CUnsignedInt>, month: UnsafeMutablePointer<CUnsignedInt>, day: UnsafeMutablePointer<CUnsignedInt>) {
        gtk_calendar_get_date(cast(calendar_ptr), cast(year), cast(month), cast(day))
    
    }

    /// Returns if the `day` of the `calendar` is already marked.
    func getDayIsMarked(day: CUnsignedInt) -> Bool {
        let rv = gtk_calendar_get_day_is_marked(cast(calendar_ptr), guint(day))
        return Bool(rv != 0)
    }

    /// Queries the height of detail cells, in rows.
    /// See `GtkCalendar:detail`-width-chars.
    func getDetailHeightRows() -> CInt {
        let rv = gtk_calendar_get_detail_height_rows(cast(calendar_ptr))
        return CInt(rv)
    }

    /// Queries the width of detail cells, in characters.
    /// See `GtkCalendar:detail`-width-chars.
    func getDetailWidthChars() -> CInt {
        let rv = gtk_calendar_get_detail_width_chars(cast(calendar_ptr))
        return CInt(rv)
    }

    /// Returns the current display options of `calendar`.
    func getDisplayOptions() -> GtkCalendarDisplayOptions {
        let rv = gtk_calendar_get_display_options(cast(calendar_ptr))
        return rv
    }

    /// Places a visual marker on a particular day.
    func mark(day: CUnsignedInt) {
        gtk_calendar_mark_day(cast(calendar_ptr), guint(day))
    
    }

    /// Selects a day from the current month.
    func select(day: CUnsignedInt) {
        gtk_calendar_select_day(cast(calendar_ptr), guint(day))
    
    }

    /// Shifts the calendar to a different month.
    func select(month: CUnsignedInt, year: CUnsignedInt) {
        gtk_calendar_select_month(cast(calendar_ptr), guint(month), guint(year))
    
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
    func setDetailFunc(_ func_: @escaping CalendarDetailFunc, data: UnsafeMutableRawPointer, destroy: @escaping GLib.DestroyNotify) {
        gtk_calendar_set_detail_func(cast(calendar_ptr), func_, cast(data), destroy)
    
    }

    /// Updates the height of detail cells.
    /// See `GtkCalendar:detail`-height-rows.
    func setDetailHeight(rows: CInt) {
        gtk_calendar_set_detail_height_rows(cast(calendar_ptr), gint(rows))
    
    }

    /// Updates the width of detail cells.
    /// See `GtkCalendar:detail`-width-chars.
    func setDetailWidth(chars: CInt) {
        gtk_calendar_set_detail_width_chars(cast(calendar_ptr), gint(chars))
    
    }

    /// Sets display options (whether to display the heading and the month
    /// headings).
    func setDisplayOptions(flags: CalendarDisplayOptions) {
        gtk_calendar_set_display_options(cast(calendar_ptr), flags)
    
    }

    /// Removes the visual marker from a particular day.
    func unmark(day: CUnsignedInt) {
        gtk_calendar_unmark_day(cast(calendar_ptr), guint(day))
    
    }
    /// Queries the height of detail cells, in rows.
    /// See `GtkCalendar:detail`-width-chars.
    var detailHeightRows: CInt {
        /// Queries the height of detail cells, in rows.
        /// See `GtkCalendar:detail`-width-chars.
        get {
            let rv = gtk_calendar_get_detail_height_rows(cast(calendar_ptr))
            return CInt(rv)
        }
        /// Updates the height of detail cells.
        /// See `GtkCalendar:detail`-height-rows.
        nonmutating set {
            gtk_calendar_set_detail_height_rows(cast(calendar_ptr), gint(newValue))
        }
    }

    /// Queries the width of detail cells, in characters.
    /// See `GtkCalendar:detail`-width-chars.
    var detailWidthChars: CInt {
        /// Queries the width of detail cells, in characters.
        /// See `GtkCalendar:detail`-width-chars.
        get {
            let rv = gtk_calendar_get_detail_width_chars(cast(calendar_ptr))
            return CInt(rv)
        }
        /// Updates the width of detail cells.
        /// See `GtkCalendar:detail`-width-chars.
        nonmutating set {
            gtk_calendar_set_detail_width_chars(cast(calendar_ptr), gint(newValue))
        }
    }

    /// Returns the current display options of `calendar`.
    var displayOptions: GtkCalendarDisplayOptions {
        /// Returns the current display options of `calendar`.
        get {
            let rv = gtk_calendar_get_display_options(cast(calendar_ptr))
            return rv
        }
        /// Sets display options (whether to display the heading and the month
        /// headings).
        nonmutating set {
            gtk_calendar_set_display_options(cast(calendar_ptr), newValue)
        }
    }
}



