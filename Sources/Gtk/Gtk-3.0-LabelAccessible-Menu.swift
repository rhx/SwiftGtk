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

// MARK: - LabelAccessible Class

/// The `LabelAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkLabelAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LabelAccessible`.
/// Alternatively, use `LabelAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol LabelAccessibleProtocol: WidgetAccessibleProtocol, Atk.HypertextProtocol, Atk.TextProtocol {
    /// Untyped pointer to the underlying `GtkLabelAccessible` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkLabelAccessible` instance.
    var label_accessible_ptr: UnsafeMutablePointer<GtkLabelAccessible> { get }
}

/// The `LabelAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkLabelAccessible` instance.
/// It exposes methods that can operate on this data type through `LabelAccessibleProtocol` conformance.
/// Use `LabelAccessibleRef` only as an `unowned` reference to an existing `GtkLabelAccessible` instance.
///

public struct LabelAccessibleRef: LabelAccessibleProtocol {
    /// Untyped pointer to the underlying `GtkLabelAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `label_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension LabelAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkLabelAccessible>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `LabelAccessibleProtocol`
    init<T: LabelAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessibleProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessibleProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessibleProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessibleProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessibleProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `LabelAccessible` type acts as a reference-counted owner of an underlying `GtkLabelAccessible` instance.
/// It provides the methods that can operate on this data type through `LabelAccessibleProtocol` conformance.
/// Use `LabelAccessible` as a strong reference or owner of a `GtkLabelAccessible` instance.
///

open class LabelAccessible: WidgetAccessible, LabelAccessibleProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `LabelAccessible` instance.
    public init(_ op: UnsafeMutablePointer<GtkLabelAccessible>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `LabelAccessibleProtocol`
    /// Will retain `GtkLabelAccessible`.
    public convenience init<T: LabelAccessibleProtocol>(_ other: T) {
        self.init(cast(other.label_accessible_ptr))
        g_object_ref(cast(label_accessible_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessibleProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkLabelAccessible.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessibleProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkLabelAccessible.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessibleProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkLabelAccessible.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessibleProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkLabelAccessible>(opaquePointer))
    }



}

public enum LabelAccessiblePropertyName: String, PropertyNameProtocol {
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

public extension LabelAccessibleProtocol {
    /// Bind a `LabelAccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: LabelAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(label_accessible_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum LabelAccessibleSignalName: String, SignalNameProtocol {
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
    /// its value set through g_object_set_property(), g_object_set(), et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to g_object_set_property() results
    /// in ::notify being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call g_object_notify() or g_object_notify_by_pspec(),
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// g_signal_connect() call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
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
    /// g_object_notify() to emit property-changed
    /// notifications. `AtkObject`::property-changed is needed by the
    /// implementation of atk_add_global_event_listener() because GObject
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

public extension LabelAccessibleProtocol {
    /// Connect a `LabelAccessibleSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: LabelAccessibleSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(label_accessible_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension LabelAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLabelAccessible` instance.
    var label_accessible_ptr: UnsafeMutablePointer<GtkLabelAccessible> { return ptr.assumingMemoryBound(to: GtkLabelAccessible.self) }

}



// MARK: - Layout Class

/// The `LayoutProtocol` protocol exposes the methods and properties of an underlying `GtkLayout` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Layout`.
/// Alternatively, use `LayoutRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkLayout` is similar to `GtkDrawingArea` in that it’s a “blank slate” and
/// doesn’t do anything except paint a blank background by default. It’s
/// different in that it supports scrolling natively due to implementing
/// `GtkScrollable`, and can contain child widgets since it’s a `GtkContainer`.
/// 
/// If you just want to draw, a `GtkDrawingArea` is a better choice since it has
/// lower overhead. If you just need to position child widgets at specific
/// points, then `GtkFixed` provides that functionality on its own.
/// 
/// When handling expose events on a `GtkLayout`, you must draw to the `GdkWindow`
/// returned by gtk_layout_get_bin_window(), rather than to the one returned by
/// gtk_widget_get_window() as you would for a `GtkDrawingArea`.
public protocol LayoutProtocol: ContainerProtocol, ScrollableProtocol {
    /// Untyped pointer to the underlying `GtkLayout` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkLayout` instance.
    var layout_ptr: UnsafeMutablePointer<GtkLayout> { get }
}

/// The `LayoutRef` type acts as a lightweight Swift reference to an underlying `GtkLayout` instance.
/// It exposes methods that can operate on this data type through `LayoutProtocol` conformance.
/// Use `LayoutRef` only as an `unowned` reference to an existing `GtkLayout` instance.
///
/// `GtkLayout` is similar to `GtkDrawingArea` in that it’s a “blank slate” and
/// doesn’t do anything except paint a blank background by default. It’s
/// different in that it supports scrolling natively due to implementing
/// `GtkScrollable`, and can contain child widgets since it’s a `GtkContainer`.
/// 
/// If you just want to draw, a `GtkDrawingArea` is a better choice since it has
/// lower overhead. If you just need to position child widgets at specific
/// points, then `GtkFixed` provides that functionality on its own.
/// 
/// When handling expose events on a `GtkLayout`, you must draw to the `GdkWindow`
/// returned by gtk_layout_get_bin_window(), rather than to the one returned by
/// gtk_widget_get_window() as you would for a `GtkDrawingArea`.
public struct LayoutRef: LayoutProtocol {
    /// Untyped pointer to the underlying `GtkLayout` instance.
    /// For type-safe access, use the generated, typed pointer `layout_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension LayoutRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkLayout>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `LayoutProtocol`
    init<T: LayoutProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkLayout`. Unless you have a specific adjustment
    /// you’d like the layout to use for scrolling, pass `nil` for
    /// `hadjustment` and `vadjustment`.
    init( hadjustment: AdjustmentProtocol, vadjustment: AdjustmentProtocol) {
        let rv = gtk_layout_new(cast(hadjustment.ptr), cast(vadjustment.ptr))
        self.init(cast(rv))
    }
}

/// The `Layout` type acts as a reference-counted owner of an underlying `GtkLayout` instance.
/// It provides the methods that can operate on this data type through `LayoutProtocol` conformance.
/// Use `Layout` as a strong reference or owner of a `GtkLayout` instance.
///
/// `GtkLayout` is similar to `GtkDrawingArea` in that it’s a “blank slate” and
/// doesn’t do anything except paint a blank background by default. It’s
/// different in that it supports scrolling natively due to implementing
/// `GtkScrollable`, and can contain child widgets since it’s a `GtkContainer`.
/// 
/// If you just want to draw, a `GtkDrawingArea` is a better choice since it has
/// lower overhead. If you just need to position child widgets at specific
/// points, then `GtkFixed` provides that functionality on its own.
/// 
/// When handling expose events on a `GtkLayout`, you must draw to the `GdkWindow`
/// returned by gtk_layout_get_bin_window(), rather than to the one returned by
/// gtk_widget_get_window() as you would for a `GtkDrawingArea`.
open class Layout: Container, LayoutProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Layout` instance.
    public init(_ op: UnsafeMutablePointer<GtkLayout>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `LayoutProtocol`
    /// Will retain `GtkLayout`.
    public convenience init<T: LayoutProtocol>(_ other: T) {
        self.init(cast(other.layout_ptr))
        g_object_ref(cast(layout_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkLayout.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkLayout.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkLayout.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkLayout>(opaquePointer))
    }

    /// Creates a new `GtkLayout`. Unless you have a specific adjustment
    /// you’d like the layout to use for scrolling, pass `nil` for
    /// `hadjustment` and `vadjustment`.
    public convenience init( hadjustment: AdjustmentProtocol, vadjustment: AdjustmentProtocol) {
        let rv = gtk_layout_new(cast(hadjustment.ptr), cast(vadjustment.ptr))
        self.init(cast(rv))
    }


}

public enum LayoutPropertyName: String, PropertyNameProtocol {
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
    /// Whether to expand in both directions. Setting this sets both `GtkWidget`:hexpand and `GtkWidget`:vexpand
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
    /// Enables or disables the emission of `GtkWidget`::query-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget`::query-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case height = "height"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See gtk_widget_set_hexpand().
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget`:hexpand property. See gtk_widget_get_hexpand_set().
    case hexpandSet = "hexpand-set"
    case isFocus = "is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginTop = "margin-top"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See gtk_widget_set_opacity() for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case receivesDefault = "receives-default"
    case resizeMode = "resize-mode"
    /// The scale factor of the widget. See gtk_widget_get_scale_factor() for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language][PangoMarkupFormat].
    /// Also see gtk_tooltip_set_markup().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see gtk_tooltip_set_text().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See gtk_widget_set_vexpand().
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget`:vexpand property. See gtk_widget_get_vexpand_set().
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case width = "width"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
}

public extension LayoutProtocol {
    /// Bind a `LayoutPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: LayoutPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(layout_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum LayoutSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    case add = "add"
    /// The ::button-press-event signal will be emitted when a button
    /// (typically from a mouse) is pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonPressEvent = "button-press-event"
    /// The ::button-release-event signal will be emitted when a button
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
    /// The ::child-notify signal is emitted for each
    /// [child property][child-properties]  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// The ::composited-changed signal is emitted when the composited
    /// status of `widgets` screen changes.
    /// See gdk_screen_is_composited().
    ///
    /// **composited-changed is deprecated:**
    /// Use GdkScreen::composited-changed instead.
    case compositedChanged = "composited-changed"
    /// The ::configure-event signal will be emitted when the size, position or
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
    /// The ::delete-event signal is emitted if a user requests that
    /// a toplevel window is closed. The default handler for this signal
    /// destroys the window. Connecting gtk_widget_hide_on_delete() to
    /// this signal will cause the window to be hidden instead, so that
    /// it can later be shown again without reconstructing it.
    case deleteEvent = "delete-event"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The ::destroy-event signal is emitted when a `GdkWindow` is destroyed.
    /// You rarely get this signal, because most widgets disconnect themselves
    /// from their window before they destroy it, so no widget owns the
    /// window at destroy time.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case destroyEvent = "destroy-event"
    /// The ::direction-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The ::drag-begin signal is emitted on the drag source when a drag is
    /// started. A typical reason to connect to this signal is to set up a
    /// custom drag icon with e.g. gtk_drag_source_set_icon_pixbuf().
    /// 
    /// Note that some widgets set up a drag icon in the default handler of
    /// this signal, so you may have to use g_signal_connect_after() to
    /// override what the default handler did.
    case dragBegin = "drag-begin"
    /// The ::drag-data-delete signal is emitted on the drag source when a drag
    /// with the action `GDK_ACTION_MOVE` is successfully completed. The signal
    /// handler is responsible for deleting the data that has been dropped. What
    /// "delete" means depends on the context of the drag operation.
    case dragDataDelete = "drag-data-delete"
    /// The ::drag-data-get signal is emitted on the drag source when the drop
    /// site requests the data which is dragged. It is the responsibility of
    /// the signal handler to fill `data` with the data in the format which
    /// is indicated by `info`. See gtk_selection_data_set() and
    /// gtk_selection_data_set_text().
    case dragDataGet = "drag-data-get"
    /// The ::drag-data-received signal is emitted on the drop site when the
    /// dragged data has been received. If the data was received in order to
    /// determine whether the drop will be accepted, the handler is expected
    /// to call gdk_drag_status() and not finish the drag.
    /// If the data was received in response to a `GtkWidget`::drag-drop signal
    /// (and this is the last target to be received), the handler for this
    /// signal is expected to process the received data and then call
    /// gtk_drag_finish(), setting the `success` parameter depending on
    /// whether the data was processed successfully.
    /// 
    /// Applications must create some means to determine why the signal was emitted
    /// and therefore whether to call gdk_drag_status() or gtk_drag_finish().
    /// 
    /// The handler may inspect the selected action with
    /// gdk_drag_context_get_selected_action() before calling
    /// gtk_drag_finish(), e.g. to implement `GDK_ACTION_ASK` as
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
    /// The ::drag-drop signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the cursor position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// Otherwise, the handler returns `true`. In this case, the handler must
    /// ensure that gtk_drag_finish() is called to let the source know that
    /// the drop is done. The call to gtk_drag_finish() can be done either
    /// directly or in a `GtkWidget`::drag-data-received handler which gets
    /// triggered by calling gtk_drag_get_data() to receive the data for one
    /// or more of the supported targets.
    case dragDrop = "drag-drop"
    /// The ::drag-end signal is emitted on the drag source when a drag is
    /// finished.  A typical reason to connect to this signal is to undo
    /// things done in `GtkWidget`::drag-begin.
    case dragEnd = "drag-end"
    /// The ::drag-failed signal is emitted on the drag source when a drag has
    /// failed. The signal handler may hook custom code to handle a failed DnD
    /// operation based on the type of error, it returns `true` is the failure has
    /// been already handled (not showing the default "drag operation failed"
    /// animation), otherwise it returns `false`.
    case dragFailed = "drag-failed"
    /// The ::drag-leave signal is emitted on the drop site when the cursor
    /// leaves the widget. A typical reason to connect to this signal is to
    /// undo things done in `GtkWidget`::drag-motion, e.g. undo highlighting
    /// with gtk_drag_unhighlight().
    /// 
    /// 
    /// Likewise, the `GtkWidget`::drag-leave signal is also emitted before the
    /// ::drag-drop signal, for instance to allow cleaning up of a preview item
    /// created in the `GtkWidget`::drag-motion signal handler.
    case dragLeave = "drag-leave"
    /// The ::drag-motion signal is emitted on the drop site when the user
    /// moves the cursor over the widget during a drag. The signal handler
    /// must determine whether the cursor position is in a drop zone or not.
    /// If it is not in a drop zone, it returns `false` and no further processing
    /// is necessary. Otherwise, the handler returns `true`. In this case, the
    /// handler is responsible for providing the necessary information for
    /// displaying feedback to the user, by calling gdk_drag_status().
    /// 
    /// If the decision whether the drop will be accepted or rejected can't be
    /// made based solely on the cursor position and the type of the data, the
    /// handler may inspect the dragged data by calling gtk_drag_get_data() and
    /// defer the gdk_drag_status() call to the `GtkWidget`::drag-data-received
    /// handler. Note that you must pass `GTK_DEST_DEFAULT_DROP`,
    /// `GTK_DEST_DEFAULT_MOTION` or `GTK_DEST_DEFAULT_ALL` to gtk_drag_dest_set()
    /// when using the drag-motion signal that way.
    /// 
    /// Also note that there is no drag-enter signal. The drag receiver has to
    /// keep track of whether he has received any drag-motion signals since the
    /// last `GtkWidget`::drag-leave and if not, treat the drag-motion signal as
    /// an "enter" signal. Upon an "enter", the handler will typically highlight
    /// the drop site with gtk_drag_highlight().
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
    /// gtk_widget_get_allocated_width() and
    /// gtk_widget_get_allocated_height().
    /// 
    /// Signal handlers connected to this signal can modify the cairo
    /// context passed as `cr` in any way they like and don't need to
    /// restore it. The signal emission takes care of calling cairo_save()
    /// before and cairo_restore() after invoking the handler.
    /// 
    /// The signal handler will get a `cr` with a clip region already set to the
    /// widget's dirty region, i.e. to the area that needs repainting.  Complicated
    /// widgets that want to avoid redrawing themselves completely can get the full
    /// extents of the clip region with gdk_cairo_get_clip_rectangle(), or they can
    /// get a finer-grained representation of the dirty region with
    /// cairo_copy_clip_rectangle_list().
    case draw = "draw"
    /// The ::enter-notify-event will be emitted when the pointer enters
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_ENTER_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case enterNotifyEvent = "enter-notify-event"
    /// The GTK+ main loop will emit three signals for each GDK event delivered
    /// to a widget: one generic ::event signal, another, more specific,
    /// signal that matches the type of event delivered (e.g.
    /// `GtkWidget`::key-press-event) and finally a generic
    /// `GtkWidget`::event-after signal.
    case event = "event"
    /// After the emission of the `GtkWidget`::event signal and (optionally)
    /// the second more specific signal, ::event-after will be emitted
    /// regardless of the previous two signals handlers return values.
    case eventAfter = "event-after"
    case focus = "focus"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The ::focus-in-event signal will be emitted when the keyboard focus
    /// enters the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusInEvent = "focus-in-event"
    /// The ::focus-out-event signal will be emitted when the keyboard focus
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
    /// The ::grab-notify signal is emitted when a widget becomes
    /// shadowed by a GTK+ grab (not a pointer or keyboard grab) on
    /// another widget, or when it becomes unshadowed due to a grab
    /// being removed.
    /// 
    /// A widget is shadowed by a gtk_grab_add() when the topmost
    /// grab widget in the grab stack of its window group is not
    /// its ancestor.
    case grabNotify = "grab-notify"
    /// The ::hide signal is emitted when `widget` is hidden, for example with
    /// gtk_widget_hide().
    case hide = "hide"
    /// The ::hierarchy-changed signal is emitted when the
    /// anchored state of a widget changes. A widget is
    /// “anchored” when its toplevel
    /// ancestor is a `GtkWindow`. This signal is emitted when
    /// a widget changes from un-anchored to anchored or vice-versa.
    case hierarchyChanged = "hierarchy-changed"
    /// The ::key-press-event signal is emitted when a key is pressed. The signal
    /// emission will reoccur at the key-repeat rate when the key is kept pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyPressEvent = "key-press-event"
    /// The ::key-release-event signal is emitted when a key is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyReleaseEvent = "key-release-event"
    /// Gets emitted if keyboard navigation fails.
    /// See gtk_widget_keynav_failed() for details.
    case keynavFailed = "keynav-failed"
    /// The ::leave-notify-event will be emitted when the pointer leaves
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_LEAVE_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case leaveNotifyEvent = "leave-notify-event"
    /// The ::map signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// gtk_widget_set_visible()) and all its parents up to the toplevel widget
    /// are also visible. Once the map has occurred, `GtkWidget`::map-event will
    /// be emitted.
    /// 
    /// The ::map signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget`::unmap.
    case map = "map"
    /// The ::map-event signal will be emitted when the `widget`'s window is
    /// mapped. A window is mapped when it becomes visible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case mapEvent = "map-event"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// The ::motion-notify-event signal is emitted when the pointer moves
    /// over the widget's `GdkWindow`.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_POINTER_MOTION_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case motionNotifyEvent = "motion-notify-event"
    case moveFocus = "move-focus"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through g_object_set_property(), g_object_set(), et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to g_object_set_property() results
    /// in ::notify being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call g_object_notify() or g_object_notify_by_pspec(),
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// g_signal_connect() call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The ::parent-set signal is emitted when a new parent
    /// has been set on a widget.
    case parentSet = "parent-set"
    /// This signal gets emitted whenever a widget should pop up a context
    /// menu. This usually happens through the standard key binding mechanism;
    /// by pressing a certain key while a widget is focused, the user can cause
    /// the widget to pop up a menu.  For example, the `GtkEntry` widget creates
    /// a menu with clipboard commands. See the
    /// [Popup Menu Migration Checklist][checklist-popup-menu]
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
    /// g_object_notify() to emit property-changed
    /// notifications. `AtkObject`::property-changed is needed by the
    /// implementation of atk_add_global_event_listener() because GObject
    /// notify doesn't support emission hooks.
    case propertyChange = "property-change"
    /// The ::property-notify-event signal will be emitted when a property on
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
    /// Emitted when `GtkWidget`:has-tooltip is `true` and the hover timeout
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
    /// The ::realize signal is emitted when `widget` is associated with a
    /// `GdkWindow`, which means that gtk_widget_realize() has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    case remove = "remove"
    /// The ::screen-changed signal gets emitted when the
    /// screen of a widget has changed.
    case screenChanged = "screen-changed"
    /// The ::scroll-event signal is emitted when a button in the 4 to 7
    /// range is pressed. Wheel mice are usually configured to generate
    /// button press events for buttons 4 and 5 when the wheel is turned.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_SCROLL_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case scrollEvent = "scroll-event"
    /// The ::selection-clear-event signal will be emitted when the
    /// the `widget`'s window has lost ownership of a selection.
    case selectionClearEvent = "selection-clear-event"
    case selectionGet = "selection-get"
    case selectionNotifyEvent = "selection-notify-event"
    case selectionReceived = "selection-received"
    /// The ::selection-request-event signal will be emitted when
    /// another client requests ownership of the selection owned by
    /// the `widget`'s window.
    case selectionRequestEvent = "selection-request-event"
    case setFocusChild = "set-focus-child"
    /// The ::show signal is emitted when `widget` is shown, for example with
    /// gtk_widget_show().
    case show = "show"
    case showHelp = "show-help"
    case sizeAllocate = "size-allocate"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The ::state-changed signal is emitted when the widget state changes.
    /// See gtk_widget_get_state().
    ///
    /// **state-changed is deprecated:**
    /// Use #GtkWidget::state-flags-changed instead.
    case stateChanged = "state-changed"
    /// The ::state-flags-changed signal is emitted when the widget state
    /// changes, see gtk_widget_get_state_flags().
    case stateFlagsChanged = "state-flags-changed"
    /// The ::style-set signal is emitted when a new style has been set
    /// on a widget. Note that style-modifying functions like
    /// gtk_widget_modify_base() also cause this signal to be emitted.
    /// 
    /// Note that this signal is emitted for changes to the deprecated
    /// `GtkStyle`. To track changes to the `GtkStyleContext` associated
    /// with a widget, use the `GtkWidget`::style-updated signal.
    ///
    /// **style-set is deprecated:**
    /// Use the #GtkWidget::style-updated signal
    case styleSet = "style-set"
    /// The ::style-updated signal is a convenience signal that is emitted when the
    /// `GtkStyleContext`::changed signal is emitted on the `widget`'s associated
    /// `GtkStyleContext` as returned by gtk_widget_get_style_context().
    /// 
    /// Note that style-modifying functions like gtk_widget_override_color() also
    /// cause this signal to be emitted.
    case styleUpdated = "style-updated"
    case touchEvent = "touch-event"
    /// The ::unmap signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As ::unmap indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The ::unmap-event signal will be emitted when the `widget`'s window is
    /// unmapped. A window is unmapped when it becomes invisible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case unmapEvent = "unmap-event"
    /// The ::unrealize signal is emitted when the `GdkWindow` associated with
    /// `widget` is destroyed, which means that gtk_widget_unrealize() has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
    /// The ::visibility-notify-event will be emitted when the `widget`'s
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
    /// The ::window-state-event will be emitted when the state of the
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
    /// Whether to expand in both directions. Setting this sets both `GtkWidget`:hexpand and `GtkWidget`:vexpand
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
    /// Enables or disables the emission of `GtkWidget`::query-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget`::query-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeight = "notify::height"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See gtk_widget_set_hexpand().
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget`:hexpand property. See gtk_widget_get_hexpand_set().
    case notifyHexpandSet = "notify::hexpand-set"
    case notifyIsFocus = "notify::is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case notifyMargin = "notify::margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case notifyMarginLeft = "notify::margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case notifyMarginRight = "notify::margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginTop = "notify::margin-top"
    case notifyName = "notify::name"
    case notifyNoShowAll = "notify::no-show-all"
    /// The requested opacity of the widget. See gtk_widget_set_opacity() for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case notifyOpacity = "notify::opacity"
    case notifyParent = "notify::parent"
    case notifyReceivesDefault = "notify::receives-default"
    case notifyResizeMode = "notify::resize-mode"
    /// The scale factor of the widget. See gtk_widget_get_scale_factor() for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case notifyStyle = "notify::style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language][PangoMarkupFormat].
    /// Also see gtk_tooltip_set_markup().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see gtk_tooltip_set_text().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    /// Whether to expand vertically. See gtk_widget_set_vexpand().
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget`:vexpand property. See gtk_widget_get_vexpand_set().
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    case notifyWidth = "notify::width"
    case notifyWidthRequest = "notify::width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case notifyWindow = "notify::window"
}

public extension LayoutProtocol {
    /// Connect a `LayoutSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: LayoutSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(layout_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension LayoutProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLayout` instance.
    var layout_ptr: UnsafeMutablePointer<GtkLayout> { return ptr.assumingMemoryBound(to: GtkLayout.self) }

    /// Retrieve the bin window of the layout used for drawing operations.
    func getBinWindow() -> UnsafeMutablePointer<GdkWindow>! {
        let rv = gtk_layout_get_bin_window(cast(layout_ptr))
        return cast(rv)
    }

    /// This function should only be called after the layout has been
    /// placed in a `GtkScrolledWindow` or otherwise configured for
    /// scrolling. It returns the `GtkAdjustment` used for communication
    /// between the horizontal scrollbar and `layout`.
    /// 
    /// See `GtkScrolledWindow`, `GtkScrollbar`, `GtkAdjustment` for details.
    ///
    /// **get_hadjustment is deprecated:**
    /// Use gtk_scrollable_get_hadjustment()
    @available(*, deprecated) func getHadjustment() -> UnsafeMutablePointer<GtkAdjustment>! {
        let rv = gtk_layout_get_hadjustment(cast(layout_ptr))
        return cast(rv)
    }

    /// Gets the size that has been set on the layout, and that determines
    /// the total extents of the layout’s scrollbar area. See
    /// gtk_layout_set_size ().
    func getSize(width: UnsafeMutablePointer<CUnsignedInt>, height: UnsafeMutablePointer<CUnsignedInt>) {
        gtk_layout_get_size(cast(layout_ptr), cast(width), cast(height))
    
    }

    /// This function should only be called after the layout has been
    /// placed in a `GtkScrolledWindow` or otherwise configured for
    /// scrolling. It returns the `GtkAdjustment` used for communication
    /// between the vertical scrollbar and `layout`.
    /// 
    /// See `GtkScrolledWindow`, `GtkScrollbar`, `GtkAdjustment` for details.
    ///
    /// **get_vadjustment is deprecated:**
    /// Use gtk_scrollable_get_vadjustment()
    @available(*, deprecated) func getVadjustment() -> UnsafeMutablePointer<GtkAdjustment>! {
        let rv = gtk_layout_get_vadjustment(cast(layout_ptr))
        return cast(rv)
    }

    /// Moves a current child of `layout` to a new position.
    func move(childWidget child_widget: WidgetProtocol, x: CInt, y: CInt) {
        gtk_layout_move(cast(layout_ptr), cast(child_widget.ptr), gint(x), gint(y))
    
    }

    /// Adds `child_widget` to `layout`, at position (`x`,`y`).
    /// `layout` becomes the new parent container of `child_widget`.
    func put(childWidget child_widget: WidgetProtocol, x: CInt, y: CInt) {
        gtk_layout_put(cast(layout_ptr), cast(child_widget.ptr), gint(x), gint(y))
    
    }

    /// Sets the horizontal scroll adjustment for the layout.
    /// 
    /// See `GtkScrolledWindow`, `GtkScrollbar`, `GtkAdjustment` for details.
    ///
    /// **set_hadjustment is deprecated:**
    /// Use gtk_scrollable_set_hadjustment()
    @available(*, deprecated) func setHadjustment(adjustment: AdjustmentProtocol) {
        gtk_layout_set_hadjustment(cast(layout_ptr), cast(adjustment.ptr))
    
    }

    /// Sets the size of the scrollable area of the layout.
    func setSize(width: CUnsignedInt, height: CUnsignedInt) {
        gtk_layout_set_size(cast(layout_ptr), guint(width), guint(height))
    
    }

    /// Sets the vertical scroll adjustment for the layout.
    /// 
    /// See `GtkScrolledWindow`, `GtkScrollbar`, `GtkAdjustment` for details.
    ///
    /// **set_vadjustment is deprecated:**
    /// Use gtk_scrollable_set_vadjustment()
    @available(*, deprecated) func setVadjustment(adjustment: AdjustmentProtocol) {
        gtk_layout_set_vadjustment(cast(layout_ptr), cast(adjustment.ptr))
    
    }

    /// Draws a layout on `cr` using the given parameters.
    ///
    /// **paint_layout is deprecated:**
    /// Use gtk_render_layout() instead
    @available(*, deprecated) func paintLayout(style: StyleProtocol, cr: cairo.ContextProtocol, stateType state_type: StateType, useText use_text: Bool, widget: WidgetProtocol, detail: UnsafePointer<gchar>, x: CInt, y: CInt) {
        gtk_paint_layout(cast(style.ptr), cast(cr.ptr), state_type, gboolean(use_text ? 1 : 0), cast(widget.ptr), detail, gint(x), gint(y), cast(layout_ptr))
    
    }

    /// Draws a text caret on `cr` at the specified index of `layout`.
    func renderInsertionCursor(context: StyleContextProtocol, cr: cairo.ContextProtocol, x: gdouble, y: gdouble, index: CInt, direction: Pango.Direction) {
        gtk_render_insertion_cursor(cast(context.ptr), cast(cr.ptr), x, y, cast(layout_ptr), index, direction)
    
    }

    /// Renders `layout` on the coordinates `x`, `y`
    func renderLayout(context: StyleContextProtocol, cr: cairo.ContextProtocol, x: gdouble, y: gdouble) {
        gtk_render_layout(cast(context.ptr), cast(cr.ptr), x, y, cast(layout_ptr))
    
    }
    /// Retrieve the bin window of the layout used for drawing operations.
    var binWindow: UnsafeMutablePointer<GdkWindow>! {
        /// Retrieve the bin window of the layout used for drawing operations.
        get {
            let rv = gtk_layout_get_bin_window(cast(layout_ptr))
            return cast(rv)
        }
    }

    /// This function should only be called after the layout has been
    /// placed in a `GtkScrolledWindow` or otherwise configured for
    /// scrolling. It returns the `GtkAdjustment` used for communication
    /// between the horizontal scrollbar and `layout`.
    /// 
    /// See `GtkScrolledWindow`, `GtkScrollbar`, `GtkAdjustment` for details.
    ///
    /// **get_hadjustment is deprecated:**
    /// Use gtk_scrollable_get_hadjustment()
    var hadjustment: UnsafeMutablePointer<GtkAdjustment>! {
        /// This function should only be called after the layout has been
        /// placed in a `GtkScrolledWindow` or otherwise configured for
        /// scrolling. It returns the `GtkAdjustment` used for communication
        /// between the horizontal scrollbar and `layout`.
        /// 
        /// See `GtkScrolledWindow`, `GtkScrollbar`, `GtkAdjustment` for details.
        ///
        /// **get_hadjustment is deprecated:**
        /// Use gtk_scrollable_get_hadjustment()
        @available(*, deprecated) get {
            let rv = gtk_layout_get_hadjustment(cast(layout_ptr))
            return cast(rv)
        }
        /// Sets the horizontal scroll adjustment for the layout.
        /// 
        /// See `GtkScrolledWindow`, `GtkScrollbar`, `GtkAdjustment` for details.
        ///
        /// **set_hadjustment is deprecated:**
        /// Use gtk_scrollable_set_hadjustment()
        @available(*, deprecated) nonmutating set {
            gtk_layout_set_hadjustment(cast(layout_ptr), cast(newValue))
        }
    }

    /// This function should only be called after the layout has been
    /// placed in a `GtkScrolledWindow` or otherwise configured for
    /// scrolling. It returns the `GtkAdjustment` used for communication
    /// between the vertical scrollbar and `layout`.
    /// 
    /// See `GtkScrolledWindow`, `GtkScrollbar`, `GtkAdjustment` for details.
    ///
    /// **get_vadjustment is deprecated:**
    /// Use gtk_scrollable_get_vadjustment()
    var vadjustment: UnsafeMutablePointer<GtkAdjustment>! {
        /// This function should only be called after the layout has been
        /// placed in a `GtkScrolledWindow` or otherwise configured for
        /// scrolling. It returns the `GtkAdjustment` used for communication
        /// between the vertical scrollbar and `layout`.
        /// 
        /// See `GtkScrolledWindow`, `GtkScrollbar`, `GtkAdjustment` for details.
        ///
        /// **get_vadjustment is deprecated:**
        /// Use gtk_scrollable_get_vadjustment()
        @available(*, deprecated) get {
            let rv = gtk_layout_get_vadjustment(cast(layout_ptr))
            return cast(rv)
        }
        /// Sets the vertical scroll adjustment for the layout.
        /// 
        /// See `GtkScrolledWindow`, `GtkScrollbar`, `GtkAdjustment` for details.
        ///
        /// **set_vadjustment is deprecated:**
        /// Use gtk_scrollable_set_vadjustment()
        @available(*, deprecated) nonmutating set {
            gtk_layout_set_vadjustment(cast(layout_ptr), cast(newValue))
        }
    }
}



// MARK: - LevelBar Class

/// The `LevelBarProtocol` protocol exposes the methods and properties of an underlying `GtkLevelBar` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LevelBar`.
/// Alternatively, use `LevelBarRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkLevelBar` is a bar widget that can be used
/// as a level indicator. Typical use cases are displaying the strength
/// of a password, or showing the charge level of a battery.
/// 
/// Use gtk_level_bar_set_value() to set the current value, and
/// gtk_level_bar_add_offset_value() to set the value offsets at which
/// the bar will be considered in a different state. GTK will add a few
/// offsets by default on the level bar: `GTK_LEVEL_BAR_OFFSET_LOW`,
/// `GTK_LEVEL_BAR_OFFSET_HIGH` and `GTK_LEVEL_BAR_OFFSET_FULL`, with
/// values 0.25, 0.75 and 1.0 respectively.
/// 
/// Note that it is your responsibility to update preexisting offsets
/// when changing the minimum or maximum value. GTK+ will simply clamp
/// them to the new range.
/// 
/// ``` Adding a custom offset on the bar
/// 
/// (C Language Example):
/// ```C
/// 
/// static GtkWidget *
/// create_level_bar (void)
/// {
///   GtkWidget *widget;
///   GtkLevelBar *bar;
/// 
///   widget = gtk_level_bar_new ();
///   bar = GTK_LEVEL_BAR (widget);
/// 
///   // This changes the value of the default low offset
/// 
///   gtk_level_bar_add_offset_value (bar,
///                                   GTK_LEVEL_BAR_OFFSET_LOW,
///                                   0.10);
/// 
///   // This adds a new offset to the bar; the application will
///   // be able to change its color CSS like this:
///   //
///   // levelbar block.my-offset {
///   //   background-color: magenta;
///   //   border-style: solid;
///   //   border-color: black;
///   //   border-style: 1px;
///   // }
/// 
///   gtk_level_bar_add_offset_value (bar, "my-offset", 0.60);
/// 
///   return widget;
/// }
/// ```
/// 
/// 
/// The default interval of values is between zero and one, but it’s possible to
/// modify the interval using gtk_level_bar_set_min_value() and
/// gtk_level_bar_set_max_value(). The value will be always drawn in proportion to
/// the admissible interval, i.e. a value of 15 with a specified interval between
/// 10 and 20 is equivalent to a value of 0.5 with an interval between 0 and 1.
/// When `GTK_LEVEL_BAR_MODE_DISCRETE` is used, the bar level is rendered
/// as a finite number of separated blocks instead of a single one. The number
/// of blocks that will be rendered is equal to the number of units specified by
/// the admissible interval.
/// 
/// For instance, to build a bar rendered with five blocks, it’s sufficient to
/// set the minimum value to 0 and the maximum value to 5 after changing the indicator
/// mode to discrete.
/// 
/// GtkLevelBar was introduced in GTK+ 3.6.
/// 
/// `` GtkLevelBar as GtkBuildable
/// 
/// The GtkLevelBar implementation of the GtkBuildable interface supports a
/// custom <offsets> element, which can contain any number of <offset> elements,
/// each of which must have name and value attributes.
/// 
/// `` CSS nodes
/// 
/// ```
/// levelbar[.discrete]
/// ╰── trough
///     ├── block.filled.level-name
///     ┊
///     ├── block.empty
///     ┊
/// ```
/// 
/// 
/// GtkLevelBar has a main CSS node with name levelbar and one of the style
/// classes .discrete or .continuous and a subnode with name trough. Below the
/// trough node are a number of nodes with name block and style class .filled
/// or .empty. In continuous mode, there is exactly one node of each, in discrete
/// mode, the number of filled and unfilled nodes corresponds to blocks that are
/// drawn. The block.filled nodes also get a style class .level-name corresponding
/// to the level for the current value.
/// 
/// In horizontal orientation, the nodes are always arranged from left to right,
/// regardless of text direction.
public protocol LevelBarProtocol: WidgetProtocol, OrientableProtocol {
    /// Untyped pointer to the underlying `GtkLevelBar` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkLevelBar` instance.
    var level_bar_ptr: UnsafeMutablePointer<GtkLevelBar> { get }
}

/// The `LevelBarRef` type acts as a lightweight Swift reference to an underlying `GtkLevelBar` instance.
/// It exposes methods that can operate on this data type through `LevelBarProtocol` conformance.
/// Use `LevelBarRef` only as an `unowned` reference to an existing `GtkLevelBar` instance.
///
/// The `GtkLevelBar` is a bar widget that can be used
/// as a level indicator. Typical use cases are displaying the strength
/// of a password, or showing the charge level of a battery.
/// 
/// Use gtk_level_bar_set_value() to set the current value, and
/// gtk_level_bar_add_offset_value() to set the value offsets at which
/// the bar will be considered in a different state. GTK will add a few
/// offsets by default on the level bar: `GTK_LEVEL_BAR_OFFSET_LOW`,
/// `GTK_LEVEL_BAR_OFFSET_HIGH` and `GTK_LEVEL_BAR_OFFSET_FULL`, with
/// values 0.25, 0.75 and 1.0 respectively.
/// 
/// Note that it is your responsibility to update preexisting offsets
/// when changing the minimum or maximum value. GTK+ will simply clamp
/// them to the new range.
/// 
/// ``` Adding a custom offset on the bar
/// 
/// (C Language Example):
/// ```C
/// 
/// static GtkWidget *
/// create_level_bar (void)
/// {
///   GtkWidget *widget;
///   GtkLevelBar *bar;
/// 
///   widget = gtk_level_bar_new ();
///   bar = GTK_LEVEL_BAR (widget);
/// 
///   // This changes the value of the default low offset
/// 
///   gtk_level_bar_add_offset_value (bar,
///                                   GTK_LEVEL_BAR_OFFSET_LOW,
///                                   0.10);
/// 
///   // This adds a new offset to the bar; the application will
///   // be able to change its color CSS like this:
///   //
///   // levelbar block.my-offset {
///   //   background-color: magenta;
///   //   border-style: solid;
///   //   border-color: black;
///   //   border-style: 1px;
///   // }
/// 
///   gtk_level_bar_add_offset_value (bar, "my-offset", 0.60);
/// 
///   return widget;
/// }
/// ```
/// 
/// 
/// The default interval of values is between zero and one, but it’s possible to
/// modify the interval using gtk_level_bar_set_min_value() and
/// gtk_level_bar_set_max_value(). The value will be always drawn in proportion to
/// the admissible interval, i.e. a value of 15 with a specified interval between
/// 10 and 20 is equivalent to a value of 0.5 with an interval between 0 and 1.
/// When `GTK_LEVEL_BAR_MODE_DISCRETE` is used, the bar level is rendered
/// as a finite number of separated blocks instead of a single one. The number
/// of blocks that will be rendered is equal to the number of units specified by
/// the admissible interval.
/// 
/// For instance, to build a bar rendered with five blocks, it’s sufficient to
/// set the minimum value to 0 and the maximum value to 5 after changing the indicator
/// mode to discrete.
/// 
/// GtkLevelBar was introduced in GTK+ 3.6.
/// 
/// `` GtkLevelBar as GtkBuildable
/// 
/// The GtkLevelBar implementation of the GtkBuildable interface supports a
/// custom <offsets> element, which can contain any number of <offset> elements,
/// each of which must have name and value attributes.
/// 
/// `` CSS nodes
/// 
/// ```
/// levelbar[.discrete]
/// ╰── trough
///     ├── block.filled.level-name
///     ┊
///     ├── block.empty
///     ┊
/// ```
/// 
/// 
/// GtkLevelBar has a main CSS node with name levelbar and one of the style
/// classes .discrete or .continuous and a subnode with name trough. Below the
/// trough node are a number of nodes with name block and style class .filled
/// or .empty. In continuous mode, there is exactly one node of each, in discrete
/// mode, the number of filled and unfilled nodes corresponds to blocks that are
/// drawn. The block.filled nodes also get a style class .level-name corresponding
/// to the level for the current value.
/// 
/// In horizontal orientation, the nodes are always arranged from left to right,
/// regardless of text direction.
public struct LevelBarRef: LevelBarProtocol {
    /// Untyped pointer to the underlying `GtkLevelBar` instance.
    /// For type-safe access, use the generated, typed pointer `level_bar_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension LevelBarRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkLevelBar>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `LevelBarProtocol`
    init<T: LevelBarProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkLevelBar`.
    init() {
        let rv = gtk_level_bar_new()
        self.init(cast(rv))
    }

    /// Utility constructor that creates a new `GtkLevelBar` for the specified
    /// interval.
    init(interval min_value: gdouble, maxValue max_value: gdouble) {
        let rv = gtk_level_bar_new_for_interval(min_value, max_value)
        self.init(cast(rv))
    }
    /// Utility constructor that creates a new `GtkLevelBar` for the specified
    /// interval.
    static func newFor(interval min_value: gdouble, maxValue max_value: gdouble) -> LevelBarRef! {
        let rv = gtk_level_bar_new_for_interval(min_value, max_value)
        return rv.map { LevelBarRef(cast($0)) }
    }
}

/// The `LevelBar` type acts as a reference-counted owner of an underlying `GtkLevelBar` instance.
/// It provides the methods that can operate on this data type through `LevelBarProtocol` conformance.
/// Use `LevelBar` as a strong reference or owner of a `GtkLevelBar` instance.
///
/// The `GtkLevelBar` is a bar widget that can be used
/// as a level indicator. Typical use cases are displaying the strength
/// of a password, or showing the charge level of a battery.
/// 
/// Use gtk_level_bar_set_value() to set the current value, and
/// gtk_level_bar_add_offset_value() to set the value offsets at which
/// the bar will be considered in a different state. GTK will add a few
/// offsets by default on the level bar: `GTK_LEVEL_BAR_OFFSET_LOW`,
/// `GTK_LEVEL_BAR_OFFSET_HIGH` and `GTK_LEVEL_BAR_OFFSET_FULL`, with
/// values 0.25, 0.75 and 1.0 respectively.
/// 
/// Note that it is your responsibility to update preexisting offsets
/// when changing the minimum or maximum value. GTK+ will simply clamp
/// them to the new range.
/// 
/// ``` Adding a custom offset on the bar
/// 
/// (C Language Example):
/// ```C
/// 
/// static GtkWidget *
/// create_level_bar (void)
/// {
///   GtkWidget *widget;
///   GtkLevelBar *bar;
/// 
///   widget = gtk_level_bar_new ();
///   bar = GTK_LEVEL_BAR (widget);
/// 
///   // This changes the value of the default low offset
/// 
///   gtk_level_bar_add_offset_value (bar,
///                                   GTK_LEVEL_BAR_OFFSET_LOW,
///                                   0.10);
/// 
///   // This adds a new offset to the bar; the application will
///   // be able to change its color CSS like this:
///   //
///   // levelbar block.my-offset {
///   //   background-color: magenta;
///   //   border-style: solid;
///   //   border-color: black;
///   //   border-style: 1px;
///   // }
/// 
///   gtk_level_bar_add_offset_value (bar, "my-offset", 0.60);
/// 
///   return widget;
/// }
/// ```
/// 
/// 
/// The default interval of values is between zero and one, but it’s possible to
/// modify the interval using gtk_level_bar_set_min_value() and
/// gtk_level_bar_set_max_value(). The value will be always drawn in proportion to
/// the admissible interval, i.e. a value of 15 with a specified interval between
/// 10 and 20 is equivalent to a value of 0.5 with an interval between 0 and 1.
/// When `GTK_LEVEL_BAR_MODE_DISCRETE` is used, the bar level is rendered
/// as a finite number of separated blocks instead of a single one. The number
/// of blocks that will be rendered is equal to the number of units specified by
/// the admissible interval.
/// 
/// For instance, to build a bar rendered with five blocks, it’s sufficient to
/// set the minimum value to 0 and the maximum value to 5 after changing the indicator
/// mode to discrete.
/// 
/// GtkLevelBar was introduced in GTK+ 3.6.
/// 
/// `` GtkLevelBar as GtkBuildable
/// 
/// The GtkLevelBar implementation of the GtkBuildable interface supports a
/// custom <offsets> element, which can contain any number of <offset> elements,
/// each of which must have name and value attributes.
/// 
/// `` CSS nodes
/// 
/// ```
/// levelbar[.discrete]
/// ╰── trough
///     ├── block.filled.level-name
///     ┊
///     ├── block.empty
///     ┊
/// ```
/// 
/// 
/// GtkLevelBar has a main CSS node with name levelbar and one of the style
/// classes .discrete or .continuous and a subnode with name trough. Below the
/// trough node are a number of nodes with name block and style class .filled
/// or .empty. In continuous mode, there is exactly one node of each, in discrete
/// mode, the number of filled and unfilled nodes corresponds to blocks that are
/// drawn. The block.filled nodes also get a style class .level-name corresponding
/// to the level for the current value.
/// 
/// In horizontal orientation, the nodes are always arranged from left to right,
/// regardless of text direction.
open class LevelBar: Widget, LevelBarProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `LevelBar` instance.
    public init(_ op: UnsafeMutablePointer<GtkLevelBar>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `LevelBarProtocol`
    /// Will retain `GtkLevelBar`.
    public convenience init<T: LevelBarProtocol>(_ other: T) {
        self.init(cast(other.level_bar_ptr))
        g_object_ref(cast(level_bar_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkLevelBar.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkLevelBar.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkLevelBar.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkLevelBar>(opaquePointer))
    }

    /// Creates a new `GtkLevelBar`.
    public convenience init() {
        let rv = gtk_level_bar_new()
        self.init(cast(rv))
    }

    /// Utility constructor that creates a new `GtkLevelBar` for the specified
    /// interval.
    public convenience init(interval min_value: gdouble, maxValue max_value: gdouble) {
        let rv = gtk_level_bar_new_for_interval(min_value, max_value)
        self.init(cast(rv))
    }

    /// Utility constructor that creates a new `GtkLevelBar` for the specified
    /// interval.
    public static func newFor(interval min_value: gdouble, maxValue max_value: gdouble) -> LevelBar! {
        let rv = gtk_level_bar_new_for_interval(min_value, max_value)
        return rv.map { LevelBar(cast($0)) }
    }

}

public enum LevelBarPropertyName: String, PropertyNameProtocol {
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
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
    case events = "events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget`:hexpand and `GtkWidget`:vexpand
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
    /// Enables or disables the emission of `GtkWidget`::query-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget`::query-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See gtk_widget_set_hexpand().
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget`:hexpand property. See gtk_widget_get_hexpand_set().
    case hexpandSet = "hexpand-set"
    /// Level bars normally grow from top to bottom or left to right.
    /// Inverted level bars grow in the opposite direction.
    case inverted = "inverted"
    case isFocus = "is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginTop = "margin-top"
    /// The `GtkLevelBar`:max-value property determaxes the maximum value of
    /// the interval that can be displayed by the bar.
    case maxValue = "max-value"
    /// The `GtkLevelBar`:min-value property determines the minimum value of
    /// the interval that can be displayed by the bar.
    case minValue = "min-value"
    /// The `GtkLevelBar`:mode property determines the way `GtkLevelBar`
    /// interprets the value properties to draw the level fill area.
    /// Specifically, when the value is `GTK_LEVEL_BAR_MODE_CONTINUOUS`,
    /// `GtkLevelBar` will draw a single block representing the current value in
    /// that area; when the value is `GTK_LEVEL_BAR_MODE_DISCRETE`,
    /// the widget will draw a succession of separate blocks filling the
    /// draw area, with the number of blocks being equal to the units separating
    /// the integral roundings of `GtkLevelBar`:min-value and `GtkLevelBar`:max-value.
    case mode = "mode"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See gtk_widget_set_opacity() for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case receivesDefault = "receives-default"
    /// The scale factor of the widget. See gtk_widget_get_scale_factor() for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language][PangoMarkupFormat].
    /// Also see gtk_tooltip_set_markup().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see gtk_tooltip_set_text().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// The `GtkLevelBar`:value property determines the currently
    /// filled value of the level bar.
    case value = "value"
    /// Whether to expand vertically. See gtk_widget_set_vexpand().
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget`:vexpand property. See gtk_widget_get_vexpand_set().
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
}

public extension LevelBarProtocol {
    /// Bind a `LevelBarPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: LevelBarPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(level_bar_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum LevelBarSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    /// The ::button-press-event signal will be emitted when a button
    /// (typically from a mouse) is pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonPressEvent = "button-press-event"
    /// The ::button-release-event signal will be emitted when a button
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
    /// The ::child-notify signal is emitted for each
    /// [child property][child-properties]  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// The ::composited-changed signal is emitted when the composited
    /// status of `widgets` screen changes.
    /// See gdk_screen_is_composited().
    ///
    /// **composited-changed is deprecated:**
    /// Use GdkScreen::composited-changed instead.
    case compositedChanged = "composited-changed"
    /// The ::configure-event signal will be emitted when the size, position or
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
    /// The ::delete-event signal is emitted if a user requests that
    /// a toplevel window is closed. The default handler for this signal
    /// destroys the window. Connecting gtk_widget_hide_on_delete() to
    /// this signal will cause the window to be hidden instead, so that
    /// it can later be shown again without reconstructing it.
    case deleteEvent = "delete-event"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The ::destroy-event signal is emitted when a `GdkWindow` is destroyed.
    /// You rarely get this signal, because most widgets disconnect themselves
    /// from their window before they destroy it, so no widget owns the
    /// window at destroy time.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case destroyEvent = "destroy-event"
    /// The ::direction-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The ::drag-begin signal is emitted on the drag source when a drag is
    /// started. A typical reason to connect to this signal is to set up a
    /// custom drag icon with e.g. gtk_drag_source_set_icon_pixbuf().
    /// 
    /// Note that some widgets set up a drag icon in the default handler of
    /// this signal, so you may have to use g_signal_connect_after() to
    /// override what the default handler did.
    case dragBegin = "drag-begin"
    /// The ::drag-data-delete signal is emitted on the drag source when a drag
    /// with the action `GDK_ACTION_MOVE` is successfully completed. The signal
    /// handler is responsible for deleting the data that has been dropped. What
    /// "delete" means depends on the context of the drag operation.
    case dragDataDelete = "drag-data-delete"
    /// The ::drag-data-get signal is emitted on the drag source when the drop
    /// site requests the data which is dragged. It is the responsibility of
    /// the signal handler to fill `data` with the data in the format which
    /// is indicated by `info`. See gtk_selection_data_set() and
    /// gtk_selection_data_set_text().
    case dragDataGet = "drag-data-get"
    /// The ::drag-data-received signal is emitted on the drop site when the
    /// dragged data has been received. If the data was received in order to
    /// determine whether the drop will be accepted, the handler is expected
    /// to call gdk_drag_status() and not finish the drag.
    /// If the data was received in response to a `GtkWidget`::drag-drop signal
    /// (and this is the last target to be received), the handler for this
    /// signal is expected to process the received data and then call
    /// gtk_drag_finish(), setting the `success` parameter depending on
    /// whether the data was processed successfully.
    /// 
    /// Applications must create some means to determine why the signal was emitted
    /// and therefore whether to call gdk_drag_status() or gtk_drag_finish().
    /// 
    /// The handler may inspect the selected action with
    /// gdk_drag_context_get_selected_action() before calling
    /// gtk_drag_finish(), e.g. to implement `GDK_ACTION_ASK` as
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
    /// The ::drag-drop signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the cursor position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// Otherwise, the handler returns `true`. In this case, the handler must
    /// ensure that gtk_drag_finish() is called to let the source know that
    /// the drop is done. The call to gtk_drag_finish() can be done either
    /// directly or in a `GtkWidget`::drag-data-received handler which gets
    /// triggered by calling gtk_drag_get_data() to receive the data for one
    /// or more of the supported targets.
    case dragDrop = "drag-drop"
    /// The ::drag-end signal is emitted on the drag source when a drag is
    /// finished.  A typical reason to connect to this signal is to undo
    /// things done in `GtkWidget`::drag-begin.
    case dragEnd = "drag-end"
    /// The ::drag-failed signal is emitted on the drag source when a drag has
    /// failed. The signal handler may hook custom code to handle a failed DnD
    /// operation based on the type of error, it returns `true` is the failure has
    /// been already handled (not showing the default "drag operation failed"
    /// animation), otherwise it returns `false`.
    case dragFailed = "drag-failed"
    /// The ::drag-leave signal is emitted on the drop site when the cursor
    /// leaves the widget. A typical reason to connect to this signal is to
    /// undo things done in `GtkWidget`::drag-motion, e.g. undo highlighting
    /// with gtk_drag_unhighlight().
    /// 
    /// 
    /// Likewise, the `GtkWidget`::drag-leave signal is also emitted before the
    /// ::drag-drop signal, for instance to allow cleaning up of a preview item
    /// created in the `GtkWidget`::drag-motion signal handler.
    case dragLeave = "drag-leave"
    /// The ::drag-motion signal is emitted on the drop site when the user
    /// moves the cursor over the widget during a drag. The signal handler
    /// must determine whether the cursor position is in a drop zone or not.
    /// If it is not in a drop zone, it returns `false` and no further processing
    /// is necessary. Otherwise, the handler returns `true`. In this case, the
    /// handler is responsible for providing the necessary information for
    /// displaying feedback to the user, by calling gdk_drag_status().
    /// 
    /// If the decision whether the drop will be accepted or rejected can't be
    /// made based solely on the cursor position and the type of the data, the
    /// handler may inspect the dragged data by calling gtk_drag_get_data() and
    /// defer the gdk_drag_status() call to the `GtkWidget`::drag-data-received
    /// handler. Note that you must pass `GTK_DEST_DEFAULT_DROP`,
    /// `GTK_DEST_DEFAULT_MOTION` or `GTK_DEST_DEFAULT_ALL` to gtk_drag_dest_set()
    /// when using the drag-motion signal that way.
    /// 
    /// Also note that there is no drag-enter signal. The drag receiver has to
    /// keep track of whether he has received any drag-motion signals since the
    /// last `GtkWidget`::drag-leave and if not, treat the drag-motion signal as
    /// an "enter" signal. Upon an "enter", the handler will typically highlight
    /// the drop site with gtk_drag_highlight().
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
    /// gtk_widget_get_allocated_width() and
    /// gtk_widget_get_allocated_height().
    /// 
    /// Signal handlers connected to this signal can modify the cairo
    /// context passed as `cr` in any way they like and don't need to
    /// restore it. The signal emission takes care of calling cairo_save()
    /// before and cairo_restore() after invoking the handler.
    /// 
    /// The signal handler will get a `cr` with a clip region already set to the
    /// widget's dirty region, i.e. to the area that needs repainting.  Complicated
    /// widgets that want to avoid redrawing themselves completely can get the full
    /// extents of the clip region with gdk_cairo_get_clip_rectangle(), or they can
    /// get a finer-grained representation of the dirty region with
    /// cairo_copy_clip_rectangle_list().
    case draw = "draw"
    /// The ::enter-notify-event will be emitted when the pointer enters
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_ENTER_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case enterNotifyEvent = "enter-notify-event"
    /// The GTK+ main loop will emit three signals for each GDK event delivered
    /// to a widget: one generic ::event signal, another, more specific,
    /// signal that matches the type of event delivered (e.g.
    /// `GtkWidget`::key-press-event) and finally a generic
    /// `GtkWidget`::event-after signal.
    case event = "event"
    /// After the emission of the `GtkWidget`::event signal and (optionally)
    /// the second more specific signal, ::event-after will be emitted
    /// regardless of the previous two signals handlers return values.
    case eventAfter = "event-after"
    case focus = "focus"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The ::focus-in-event signal will be emitted when the keyboard focus
    /// enters the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusInEvent = "focus-in-event"
    /// The ::focus-out-event signal will be emitted when the keyboard focus
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
    /// The ::grab-notify signal is emitted when a widget becomes
    /// shadowed by a GTK+ grab (not a pointer or keyboard grab) on
    /// another widget, or when it becomes unshadowed due to a grab
    /// being removed.
    /// 
    /// A widget is shadowed by a gtk_grab_add() when the topmost
    /// grab widget in the grab stack of its window group is not
    /// its ancestor.
    case grabNotify = "grab-notify"
    /// The ::hide signal is emitted when `widget` is hidden, for example with
    /// gtk_widget_hide().
    case hide = "hide"
    /// The ::hierarchy-changed signal is emitted when the
    /// anchored state of a widget changes. A widget is
    /// “anchored” when its toplevel
    /// ancestor is a `GtkWindow`. This signal is emitted when
    /// a widget changes from un-anchored to anchored or vice-versa.
    case hierarchyChanged = "hierarchy-changed"
    /// The ::key-press-event signal is emitted when a key is pressed. The signal
    /// emission will reoccur at the key-repeat rate when the key is kept pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyPressEvent = "key-press-event"
    /// The ::key-release-event signal is emitted when a key is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyReleaseEvent = "key-release-event"
    /// Gets emitted if keyboard navigation fails.
    /// See gtk_widget_keynav_failed() for details.
    case keynavFailed = "keynav-failed"
    /// The ::leave-notify-event will be emitted when the pointer leaves
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_LEAVE_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case leaveNotifyEvent = "leave-notify-event"
    /// The ::map signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// gtk_widget_set_visible()) and all its parents up to the toplevel widget
    /// are also visible. Once the map has occurred, `GtkWidget`::map-event will
    /// be emitted.
    /// 
    /// The ::map signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget`::unmap.
    case map = "map"
    /// The ::map-event signal will be emitted when the `widget`'s window is
    /// mapped. A window is mapped when it becomes visible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case mapEvent = "map-event"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// The ::motion-notify-event signal is emitted when the pointer moves
    /// over the widget's `GdkWindow`.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_POINTER_MOTION_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case motionNotifyEvent = "motion-notify-event"
    case moveFocus = "move-focus"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through g_object_set_property(), g_object_set(), et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to g_object_set_property() results
    /// in ::notify being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call g_object_notify() or g_object_notify_by_pspec(),
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// g_signal_connect() call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// Emitted when an offset specified on the bar changes value as an
    /// effect to gtk_level_bar_add_offset_value() being called.
    /// 
    /// The signal supports detailed connections; you can connect to the
    /// detailed signal "changed::x" in order to only receive callbacks when
    /// the value of offset "x" changes.
    case offsetChanged = "offset-changed"
    /// The ::parent-set signal is emitted when a new parent
    /// has been set on a widget.
    case parentSet = "parent-set"
    /// This signal gets emitted whenever a widget should pop up a context
    /// menu. This usually happens through the standard key binding mechanism;
    /// by pressing a certain key while a widget is focused, the user can cause
    /// the widget to pop up a menu.  For example, the `GtkEntry` widget creates
    /// a menu with clipboard commands. See the
    /// [Popup Menu Migration Checklist][checklist-popup-menu]
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
    /// g_object_notify() to emit property-changed
    /// notifications. `AtkObject`::property-changed is needed by the
    /// implementation of atk_add_global_event_listener() because GObject
    /// notify doesn't support emission hooks.
    case propertyChange = "property-change"
    /// The ::property-notify-event signal will be emitted when a property on
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
    /// Emitted when `GtkWidget`:has-tooltip is `true` and the hover timeout
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
    /// The ::realize signal is emitted when `widget` is associated with a
    /// `GdkWindow`, which means that gtk_widget_realize() has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// The ::screen-changed signal gets emitted when the
    /// screen of a widget has changed.
    case screenChanged = "screen-changed"
    /// The ::scroll-event signal is emitted when a button in the 4 to 7
    /// range is pressed. Wheel mice are usually configured to generate
    /// button press events for buttons 4 and 5 when the wheel is turned.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_SCROLL_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case scrollEvent = "scroll-event"
    /// The ::selection-clear-event signal will be emitted when the
    /// the `widget`'s window has lost ownership of a selection.
    case selectionClearEvent = "selection-clear-event"
    case selectionGet = "selection-get"
    case selectionNotifyEvent = "selection-notify-event"
    case selectionReceived = "selection-received"
    /// The ::selection-request-event signal will be emitted when
    /// another client requests ownership of the selection owned by
    /// the `widget`'s window.
    case selectionRequestEvent = "selection-request-event"
    /// The ::show signal is emitted when `widget` is shown, for example with
    /// gtk_widget_show().
    case show = "show"
    case showHelp = "show-help"
    case sizeAllocate = "size-allocate"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The ::state-changed signal is emitted when the widget state changes.
    /// See gtk_widget_get_state().
    ///
    /// **state-changed is deprecated:**
    /// Use #GtkWidget::state-flags-changed instead.
    case stateChanged = "state-changed"
    /// The ::state-flags-changed signal is emitted when the widget state
    /// changes, see gtk_widget_get_state_flags().
    case stateFlagsChanged = "state-flags-changed"
    /// The ::style-set signal is emitted when a new style has been set
    /// on a widget. Note that style-modifying functions like
    /// gtk_widget_modify_base() also cause this signal to be emitted.
    /// 
    /// Note that this signal is emitted for changes to the deprecated
    /// `GtkStyle`. To track changes to the `GtkStyleContext` associated
    /// with a widget, use the `GtkWidget`::style-updated signal.
    ///
    /// **style-set is deprecated:**
    /// Use the #GtkWidget::style-updated signal
    case styleSet = "style-set"
    /// The ::style-updated signal is a convenience signal that is emitted when the
    /// `GtkStyleContext`::changed signal is emitted on the `widget`'s associated
    /// `GtkStyleContext` as returned by gtk_widget_get_style_context().
    /// 
    /// Note that style-modifying functions like gtk_widget_override_color() also
    /// cause this signal to be emitted.
    case styleUpdated = "style-updated"
    case touchEvent = "touch-event"
    /// The ::unmap signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As ::unmap indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The ::unmap-event signal will be emitted when the `widget`'s window is
    /// unmapped. A window is unmapped when it becomes invisible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case unmapEvent = "unmap-event"
    /// The ::unrealize signal is emitted when the `GdkWindow` associated with
    /// `widget` is destroyed, which means that gtk_widget_unrealize() has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
    /// The ::visibility-notify-event will be emitted when the `widget`'s
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
    /// The ::window-state-event will be emitted when the state of the
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
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case notifyDoubleBuffered = "notify::double-buffered"
    case notifyEvents = "notify::events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget`:hexpand and `GtkWidget`:vexpand
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
    /// Enables or disables the emission of `GtkWidget`::query-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget`::query-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See gtk_widget_set_hexpand().
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget`:hexpand property. See gtk_widget_get_hexpand_set().
    case notifyHexpandSet = "notify::hexpand-set"
    /// Level bars normally grow from top to bottom or left to right.
    /// Inverted level bars grow in the opposite direction.
    case notifyInverted = "notify::inverted"
    case notifyIsFocus = "notify::is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case notifyMargin = "notify::margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case notifyMarginLeft = "notify::margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case notifyMarginRight = "notify::margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginTop = "notify::margin-top"
    /// The `GtkLevelBar`:max-value property determaxes the maximum value of
    /// the interval that can be displayed by the bar.
    case notifyMaxValue = "notify::max-value"
    /// The `GtkLevelBar`:min-value property determines the minimum value of
    /// the interval that can be displayed by the bar.
    case notifyMinValue = "notify::min-value"
    /// The `GtkLevelBar`:mode property determines the way `GtkLevelBar`
    /// interprets the value properties to draw the level fill area.
    /// Specifically, when the value is `GTK_LEVEL_BAR_MODE_CONTINUOUS`,
    /// `GtkLevelBar` will draw a single block representing the current value in
    /// that area; when the value is `GTK_LEVEL_BAR_MODE_DISCRETE`,
    /// the widget will draw a succession of separate blocks filling the
    /// draw area, with the number of blocks being equal to the units separating
    /// the integral roundings of `GtkLevelBar`:min-value and `GtkLevelBar`:max-value.
    case notifyMode = "notify::mode"
    case notifyName = "notify::name"
    case notifyNoShowAll = "notify::no-show-all"
    /// The requested opacity of the widget. See gtk_widget_set_opacity() for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case notifyOpacity = "notify::opacity"
    case notifyParent = "notify::parent"
    case notifyReceivesDefault = "notify::receives-default"
    /// The scale factor of the widget. See gtk_widget_get_scale_factor() for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case notifyStyle = "notify::style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language][PangoMarkupFormat].
    /// Also see gtk_tooltip_set_markup().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see gtk_tooltip_set_text().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    /// The `GtkLevelBar`:value property determines the currently
    /// filled value of the level bar.
    case notifyValue = "notify::value"
    /// Whether to expand vertically. See gtk_widget_set_vexpand().
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget`:vexpand property. See gtk_widget_get_vexpand_set().
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    case notifyWidthRequest = "notify::width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case notifyWindow = "notify::window"
}

public extension LevelBarProtocol {
    /// Connect a `LevelBarSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: LevelBarSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(level_bar_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension LevelBarProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLevelBar` instance.
    var level_bar_ptr: UnsafeMutablePointer<GtkLevelBar> { return ptr.assumingMemoryBound(to: GtkLevelBar.self) }

    /// Adds a new offset marker on `self` at the position specified by `value`.
    /// When the bar value is in the interval topped by `value` (or between `value`
    /// and `GtkLevelBar`:max-value in case the offset is the last one on the bar)
    /// a style class named `level-``name` will be applied
    /// when rendering the level bar fill.
    /// If another offset marker named `name` exists, its value will be
    /// replaced by `value`.
    func addOffsetValue(name: UnsafePointer<gchar>, value: gdouble) {
        gtk_level_bar_add_offset_value(cast(level_bar_ptr), name, value)
    
    }

    /// Return the value of the `GtkLevelBar`:inverted property.
    func getInverted() -> Bool {
        let rv = gtk_level_bar_get_inverted(cast(level_bar_ptr))
        return Bool(rv != 0)
    }

    /// Returns the value of the `GtkLevelBar`:max-value property.
    func getMaxValue() -> gdouble {
        let rv = gtk_level_bar_get_max_value(cast(level_bar_ptr))
        return rv
    }

    /// Returns the value of the `GtkLevelBar`:min-value property.
    func getMinValue() -> gdouble {
        let rv = gtk_level_bar_get_min_value(cast(level_bar_ptr))
        return rv
    }

    /// Returns the value of the `GtkLevelBar`:mode property.
    func getMode() -> GtkLevelBarMode {
        let rv = gtk_level_bar_get_mode(cast(level_bar_ptr))
        return rv
    }

    /// Fetches the value specified for the offset marker `name` in `self`,
    /// returning `true` in case an offset named `name` was found.
    func getOffsetValue(name: UnsafePointer<gchar>, value: UnsafeMutablePointer<gdouble>) -> Bool {
        let rv = gtk_level_bar_get_offset_value(cast(level_bar_ptr), name, cast(value))
        return Bool(rv != 0)
    }

    /// Returns the value of the `GtkLevelBar`:value property.
    func getValue() -> gdouble {
        let rv = gtk_level_bar_get_value(cast(level_bar_ptr))
        return rv
    }

    /// Removes an offset marker previously added with
    /// gtk_level_bar_add_offset_value().
    func removeOffsetValue(name: UnsafePointer<gchar>) {
        gtk_level_bar_remove_offset_value(cast(level_bar_ptr), name)
    
    }

    /// Sets the value of the `GtkLevelBar`:inverted property.
    func set(inverted: Bool) {
        gtk_level_bar_set_inverted(cast(level_bar_ptr), gboolean(inverted ? 1 : 0))
    
    }

    /// Sets the value of the `GtkLevelBar`:max-value property.
    /// 
    /// You probably want to update preexisting level offsets after calling
    /// this function.
    func setMax(value: gdouble) {
        gtk_level_bar_set_max_value(cast(level_bar_ptr), value)
    
    }

    /// Sets the value of the `GtkLevelBar`:min-value property.
    /// 
    /// You probably want to update preexisting level offsets after calling
    /// this function.
    func setMin(value: gdouble) {
        gtk_level_bar_set_min_value(cast(level_bar_ptr), value)
    
    }

    /// Sets the value of the `GtkLevelBar`:mode property.
    func set(mode: LevelBarMode) {
        gtk_level_bar_set_mode(cast(level_bar_ptr), mode)
    
    }

    /// Sets the value of the `GtkLevelBar`:value property.
    func set(value: gdouble) {
        gtk_level_bar_set_value(cast(level_bar_ptr), value)
    
    }
    /// Level bars normally grow from top to bottom or left to right.
    /// Inverted level bars grow in the opposite direction.
    var inverted: Bool {
        /// Return the value of the `GtkLevelBar`:inverted property.
        get {
            let rv = gtk_level_bar_get_inverted(cast(level_bar_ptr))
            return Bool(rv != 0)
        }
        /// Sets the value of the `GtkLevelBar`:inverted property.
        nonmutating set {
            gtk_level_bar_set_inverted(cast(level_bar_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Returns the value of the `GtkLevelBar`:max-value property.
    var maxValue: gdouble {
        /// Returns the value of the `GtkLevelBar`:max-value property.
        get {
            let rv = gtk_level_bar_get_max_value(cast(level_bar_ptr))
            return rv
        }
        /// Sets the value of the `GtkLevelBar`:max-value property.
        /// 
        /// You probably want to update preexisting level offsets after calling
        /// this function.
        nonmutating set {
            gtk_level_bar_set_max_value(cast(level_bar_ptr), newValue)
        }
    }

    /// Returns the value of the `GtkLevelBar`:min-value property.
    var minValue: gdouble {
        /// Returns the value of the `GtkLevelBar`:min-value property.
        get {
            let rv = gtk_level_bar_get_min_value(cast(level_bar_ptr))
            return rv
        }
        /// Sets the value of the `GtkLevelBar`:min-value property.
        /// 
        /// You probably want to update preexisting level offsets after calling
        /// this function.
        nonmutating set {
            gtk_level_bar_set_min_value(cast(level_bar_ptr), newValue)
        }
    }

    /// The `GtkLevelBar`:mode property determines the way `GtkLevelBar`
    /// interprets the value properties to draw the level fill area.
    /// Specifically, when the value is `GTK_LEVEL_BAR_MODE_CONTINUOUS`,
    /// `GtkLevelBar` will draw a single block representing the current value in
    /// that area; when the value is `GTK_LEVEL_BAR_MODE_DISCRETE`,
    /// the widget will draw a succession of separate blocks filling the
    /// draw area, with the number of blocks being equal to the units separating
    /// the integral roundings of `GtkLevelBar`:min-value and `GtkLevelBar`:max-value.
    var mode: GtkLevelBarMode {
        /// Returns the value of the `GtkLevelBar`:mode property.
        get {
            let rv = gtk_level_bar_get_mode(cast(level_bar_ptr))
            return rv
        }
        /// Sets the value of the `GtkLevelBar`:mode property.
        nonmutating set {
            gtk_level_bar_set_mode(cast(level_bar_ptr), newValue)
        }
    }

    /// The `GtkLevelBar`:value property determines the currently
    /// filled value of the level bar.
    var value: gdouble {
        /// Returns the value of the `GtkLevelBar`:value property.
        get {
            let rv = gtk_level_bar_get_value(cast(level_bar_ptr))
            return rv
        }
        /// Sets the value of the `GtkLevelBar`:value property.
        nonmutating set {
            gtk_level_bar_set_value(cast(level_bar_ptr), newValue)
        }
    }
}



// MARK: - LevelBarAccessible Class

/// The `LevelBarAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkLevelBarAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LevelBarAccessible`.
/// Alternatively, use `LevelBarAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol LevelBarAccessibleProtocol: WidgetAccessibleProtocol, Atk.ValueProtocol {
    /// Untyped pointer to the underlying `GtkLevelBarAccessible` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkLevelBarAccessible` instance.
    var level_bar_accessible_ptr: UnsafeMutablePointer<GtkLevelBarAccessible> { get }
}

/// The `LevelBarAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkLevelBarAccessible` instance.
/// It exposes methods that can operate on this data type through `LevelBarAccessibleProtocol` conformance.
/// Use `LevelBarAccessibleRef` only as an `unowned` reference to an existing `GtkLevelBarAccessible` instance.
///

public struct LevelBarAccessibleRef: LevelBarAccessibleProtocol {
    /// Untyped pointer to the underlying `GtkLevelBarAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `level_bar_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension LevelBarAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkLevelBarAccessible>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `LevelBarAccessibleProtocol`
    init<T: LevelBarAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessibleProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessibleProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessibleProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessibleProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessibleProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `LevelBarAccessible` type acts as a reference-counted owner of an underlying `GtkLevelBarAccessible` instance.
/// It provides the methods that can operate on this data type through `LevelBarAccessibleProtocol` conformance.
/// Use `LevelBarAccessible` as a strong reference or owner of a `GtkLevelBarAccessible` instance.
///

open class LevelBarAccessible: WidgetAccessible, LevelBarAccessibleProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `LevelBarAccessible` instance.
    public init(_ op: UnsafeMutablePointer<GtkLevelBarAccessible>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `LevelBarAccessibleProtocol`
    /// Will retain `GtkLevelBarAccessible`.
    public convenience init<T: LevelBarAccessibleProtocol>(_ other: T) {
        self.init(cast(other.level_bar_accessible_ptr))
        g_object_ref(cast(level_bar_accessible_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessibleProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkLevelBarAccessible.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessibleProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkLevelBarAccessible.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessibleProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkLevelBarAccessible.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessibleProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkLevelBarAccessible>(opaquePointer))
    }



}

public enum LevelBarAccessiblePropertyName: String, PropertyNameProtocol {
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

public extension LevelBarAccessibleProtocol {
    /// Bind a `LevelBarAccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: LevelBarAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(level_bar_accessible_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum LevelBarAccessibleSignalName: String, SignalNameProtocol {
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
    /// its value set through g_object_set_property(), g_object_set(), et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to g_object_set_property() results
    /// in ::notify being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call g_object_notify() or g_object_notify_by_pspec(),
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// g_signal_connect() call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
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
    /// g_object_notify() to emit property-changed
    /// notifications. `AtkObject`::property-changed is needed by the
    /// implementation of atk_add_global_event_listener() because GObject
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

public extension LevelBarAccessibleProtocol {
    /// Connect a `LevelBarAccessibleSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: LevelBarAccessibleSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(level_bar_accessible_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension LevelBarAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLevelBarAccessible` instance.
    var level_bar_accessible_ptr: UnsafeMutablePointer<GtkLevelBarAccessible> { return ptr.assumingMemoryBound(to: GtkLevelBarAccessible.self) }

}



// MARK: - LinkButton Class

/// The `LinkButtonProtocol` protocol exposes the methods and properties of an underlying `GtkLinkButton` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LinkButton`.
/// Alternatively, use `LinkButtonRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A GtkLinkButton is a `GtkButton` with a hyperlink, similar to the one
/// used by web browsers, which triggers an action when clicked. It is useful
/// to show quick links to resources.
/// 
/// A link button is created by calling either gtk_link_button_new() or
/// gtk_link_button_new_with_label(). If using the former, the URI you pass
/// to the constructor is used as a label for the widget.
/// 
/// The URI bound to a GtkLinkButton can be set specifically using
/// gtk_link_button_set_uri(), and retrieved using gtk_link_button_get_uri().
/// 
/// By default, GtkLinkButton calls gtk_show_uri_on_window() when the button is
/// clicked. This behaviour can be overridden by connecting to the
/// `GtkLinkButton`::activate-link signal and returning `true` from the
/// signal handler.
/// 
/// `` CSS nodes
/// 
/// GtkLinkButton has a single CSS node with name button. To differentiate
/// it from a plain `GtkButton`, it gets the .link style class.
public protocol LinkButtonProtocol: ButtonProtocol {
    /// Untyped pointer to the underlying `GtkLinkButton` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkLinkButton` instance.
    var link_button_ptr: UnsafeMutablePointer<GtkLinkButton> { get }
}

/// The `LinkButtonRef` type acts as a lightweight Swift reference to an underlying `GtkLinkButton` instance.
/// It exposes methods that can operate on this data type through `LinkButtonProtocol` conformance.
/// Use `LinkButtonRef` only as an `unowned` reference to an existing `GtkLinkButton` instance.
///
/// A GtkLinkButton is a `GtkButton` with a hyperlink, similar to the one
/// used by web browsers, which triggers an action when clicked. It is useful
/// to show quick links to resources.
/// 
/// A link button is created by calling either gtk_link_button_new() or
/// gtk_link_button_new_with_label(). If using the former, the URI you pass
/// to the constructor is used as a label for the widget.
/// 
/// The URI bound to a GtkLinkButton can be set specifically using
/// gtk_link_button_set_uri(), and retrieved using gtk_link_button_get_uri().
/// 
/// By default, GtkLinkButton calls gtk_show_uri_on_window() when the button is
/// clicked. This behaviour can be overridden by connecting to the
/// `GtkLinkButton`::activate-link signal and returning `true` from the
/// signal handler.
/// 
/// `` CSS nodes
/// 
/// GtkLinkButton has a single CSS node with name button. To differentiate
/// it from a plain `GtkButton`, it gets the .link style class.
public struct LinkButtonRef: LinkButtonProtocol {
    /// Untyped pointer to the underlying `GtkLinkButton` instance.
    /// For type-safe access, use the generated, typed pointer `link_button_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension LinkButtonRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkLinkButton>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `LinkButtonProtocol`
    init<T: LinkButtonProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkLinkButton` with the URI as its text.
    init( uri: UnsafePointer<gchar>) {
        let rv = gtk_link_button_new(uri)
        self.init(cast(rv))
    }

    /// Creates a new `GtkLinkButton` containing a label.
    init(label uri: UnsafePointer<gchar>, label: UnsafePointer<gchar>) {
        let rv = gtk_link_button_new_with_label(uri, label)
        self.init(cast(rv))
    }
    /// Creates a new `GtkLinkButton` containing a label.
    static func linkButtonNewWith(label uri: UnsafePointer<gchar>, label: UnsafePointer<gchar>) -> LinkButtonRef! {
        let rv = gtk_link_button_new_with_label(uri, label)
        return rv.map { LinkButtonRef(cast($0)) }
    }
}

/// The `LinkButton` type acts as a reference-counted owner of an underlying `GtkLinkButton` instance.
/// It provides the methods that can operate on this data type through `LinkButtonProtocol` conformance.
/// Use `LinkButton` as a strong reference or owner of a `GtkLinkButton` instance.
///
/// A GtkLinkButton is a `GtkButton` with a hyperlink, similar to the one
/// used by web browsers, which triggers an action when clicked. It is useful
/// to show quick links to resources.
/// 
/// A link button is created by calling either gtk_link_button_new() or
/// gtk_link_button_new_with_label(). If using the former, the URI you pass
/// to the constructor is used as a label for the widget.
/// 
/// The URI bound to a GtkLinkButton can be set specifically using
/// gtk_link_button_set_uri(), and retrieved using gtk_link_button_get_uri().
/// 
/// By default, GtkLinkButton calls gtk_show_uri_on_window() when the button is
/// clicked. This behaviour can be overridden by connecting to the
/// `GtkLinkButton`::activate-link signal and returning `true` from the
/// signal handler.
/// 
/// `` CSS nodes
/// 
/// GtkLinkButton has a single CSS node with name button. To differentiate
/// it from a plain `GtkButton`, it gets the .link style class.
open class LinkButton: Button, LinkButtonProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `LinkButton` instance.
    public init(_ op: UnsafeMutablePointer<GtkLinkButton>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `LinkButtonProtocol`
    /// Will retain `GtkLinkButton`.
    public convenience init<T: LinkButtonProtocol>(_ other: T) {
        self.init(cast(other.link_button_ptr))
        g_object_ref(cast(link_button_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkLinkButton.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkLinkButton.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkLinkButton.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkLinkButton>(opaquePointer))
    }

    /// Creates a new `GtkLinkButton` with the URI as its text.
    public convenience init( uri: UnsafePointer<gchar>) {
        let rv = gtk_link_button_new(uri)
        self.init(cast(rv))
    }

    /// Creates a new `GtkLinkButton` containing a label.
    public convenience init(label uri: UnsafePointer<gchar>, label: UnsafePointer<gchar>) {
        let rv = gtk_link_button_new_with_label(uri, label)
        self.init(cast(rv))
    }

    /// Creates a new `GtkLinkButton` containing a label.
    public static func linkButtonNewWith(label uri: UnsafePointer<gchar>, label: UnsafePointer<gchar>) -> LinkButton! {
        let rv = gtk_link_button_new_with_label(uri, label)
        return rv.map { LinkButton(cast($0)) }
    }

}

public enum LinkButtonPropertyName: String, PropertyNameProtocol {
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
    /// If `true`, the button will ignore the `GtkSettings`:gtk-button-images
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
    /// Whether to expand in both directions. Setting this sets both `GtkWidget`:hexpand and `GtkWidget`:vexpand
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
    /// Enables or disables the emission of `GtkWidget`::query-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget`::query-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See gtk_widget_set_hexpand().
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget`:hexpand property. See gtk_widget_get_hexpand_set().
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
    /// gtk_widget_set_size_request() for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginTop = "margin-top"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See gtk_widget_set_opacity() for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case receivesDefault = "receives-default"
    case relief = "relief"
    case resizeMode = "resize-mode"
    /// The scale factor of the widget. See gtk_widget_get_scale_factor() for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language][PangoMarkupFormat].
    /// Also see gtk_tooltip_set_markup().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see gtk_tooltip_set_text().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// The URI bound to this button.
    case uri = "uri"

    ///
    /// **use-stock is deprecated:**
    /// This method is deprecated.
    case useStock = "use-stock"
    case useUnderline = "use-underline"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See gtk_widget_set_vexpand().
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget`:vexpand property. See gtk_widget_get_vexpand_set().
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    /// The 'visited' state of this button. A visited link is drawn in a
    /// different color.
    case visited = "visited"
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

public extension LinkButtonProtocol {
    /// Bind a `LinkButtonPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: LinkButtonPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(link_button_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum LinkButtonSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// The ::activate signal on GtkButton is an action signal and
    /// emitting it causes the button to animate press then release.
    /// Applications should never connect to this signal, but use the
    /// `GtkButton`::clicked signal.
    case activate = "activate"
    /// The ::activate-link signal is emitted each time the `GtkLinkButton`
    /// has been clicked.
    /// 
    /// The default handler will call gtk_show_uri_on_window() with the URI stored inside
    /// the `GtkLinkButton`:uri property.
    /// 
    /// To override the default behavior, you can connect to the ::activate-link
    /// signal and stop the propagation of the signal by returning `true` from
    /// your handler.
    case activateLink = "activate-link"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    case add = "add"
    /// The ::button-press-event signal will be emitted when a button
    /// (typically from a mouse) is pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonPressEvent = "button-press-event"
    /// The ::button-release-event signal will be emitted when a button
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
    /// The ::child-notify signal is emitted for each
    /// [child property][child-properties]  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// Emitted when the button has been activated (pressed and released).
    case clicked = "clicked"
    /// The ::composited-changed signal is emitted when the composited
    /// status of `widgets` screen changes.
    /// See gdk_screen_is_composited().
    ///
    /// **composited-changed is deprecated:**
    /// Use GdkScreen::composited-changed instead.
    case compositedChanged = "composited-changed"
    /// The ::configure-event signal will be emitted when the size, position or
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
    /// The ::delete-event signal is emitted if a user requests that
    /// a toplevel window is closed. The default handler for this signal
    /// destroys the window. Connecting gtk_widget_hide_on_delete() to
    /// this signal will cause the window to be hidden instead, so that
    /// it can later be shown again without reconstructing it.
    case deleteEvent = "delete-event"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The ::destroy-event signal is emitted when a `GdkWindow` is destroyed.
    /// You rarely get this signal, because most widgets disconnect themselves
    /// from their window before they destroy it, so no widget owns the
    /// window at destroy time.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case destroyEvent = "destroy-event"
    /// The ::direction-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The ::drag-begin signal is emitted on the drag source when a drag is
    /// started. A typical reason to connect to this signal is to set up a
    /// custom drag icon with e.g. gtk_drag_source_set_icon_pixbuf().
    /// 
    /// Note that some widgets set up a drag icon in the default handler of
    /// this signal, so you may have to use g_signal_connect_after() to
    /// override what the default handler did.
    case dragBegin = "drag-begin"
    /// The ::drag-data-delete signal is emitted on the drag source when a drag
    /// with the action `GDK_ACTION_MOVE` is successfully completed. The signal
    /// handler is responsible for deleting the data that has been dropped. What
    /// "delete" means depends on the context of the drag operation.
    case dragDataDelete = "drag-data-delete"
    /// The ::drag-data-get signal is emitted on the drag source when the drop
    /// site requests the data which is dragged. It is the responsibility of
    /// the signal handler to fill `data` with the data in the format which
    /// is indicated by `info`. See gtk_selection_data_set() and
    /// gtk_selection_data_set_text().
    case dragDataGet = "drag-data-get"
    /// The ::drag-data-received signal is emitted on the drop site when the
    /// dragged data has been received. If the data was received in order to
    /// determine whether the drop will be accepted, the handler is expected
    /// to call gdk_drag_status() and not finish the drag.
    /// If the data was received in response to a `GtkWidget`::drag-drop signal
    /// (and this is the last target to be received), the handler for this
    /// signal is expected to process the received data and then call
    /// gtk_drag_finish(), setting the `success` parameter depending on
    /// whether the data was processed successfully.
    /// 
    /// Applications must create some means to determine why the signal was emitted
    /// and therefore whether to call gdk_drag_status() or gtk_drag_finish().
    /// 
    /// The handler may inspect the selected action with
    /// gdk_drag_context_get_selected_action() before calling
    /// gtk_drag_finish(), e.g. to implement `GDK_ACTION_ASK` as
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
    /// The ::drag-drop signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the cursor position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// Otherwise, the handler returns `true`. In this case, the handler must
    /// ensure that gtk_drag_finish() is called to let the source know that
    /// the drop is done. The call to gtk_drag_finish() can be done either
    /// directly or in a `GtkWidget`::drag-data-received handler which gets
    /// triggered by calling gtk_drag_get_data() to receive the data for one
    /// or more of the supported targets.
    case dragDrop = "drag-drop"
    /// The ::drag-end signal is emitted on the drag source when a drag is
    /// finished.  A typical reason to connect to this signal is to undo
    /// things done in `GtkWidget`::drag-begin.
    case dragEnd = "drag-end"
    /// The ::drag-failed signal is emitted on the drag source when a drag has
    /// failed. The signal handler may hook custom code to handle a failed DnD
    /// operation based on the type of error, it returns `true` is the failure has
    /// been already handled (not showing the default "drag operation failed"
    /// animation), otherwise it returns `false`.
    case dragFailed = "drag-failed"
    /// The ::drag-leave signal is emitted on the drop site when the cursor
    /// leaves the widget. A typical reason to connect to this signal is to
    /// undo things done in `GtkWidget`::drag-motion, e.g. undo highlighting
    /// with gtk_drag_unhighlight().
    /// 
    /// 
    /// Likewise, the `GtkWidget`::drag-leave signal is also emitted before the
    /// ::drag-drop signal, for instance to allow cleaning up of a preview item
    /// created in the `GtkWidget`::drag-motion signal handler.
    case dragLeave = "drag-leave"
    /// The ::drag-motion signal is emitted on the drop site when the user
    /// moves the cursor over the widget during a drag. The signal handler
    /// must determine whether the cursor position is in a drop zone or not.
    /// If it is not in a drop zone, it returns `false` and no further processing
    /// is necessary. Otherwise, the handler returns `true`. In this case, the
    /// handler is responsible for providing the necessary information for
    /// displaying feedback to the user, by calling gdk_drag_status().
    /// 
    /// If the decision whether the drop will be accepted or rejected can't be
    /// made based solely on the cursor position and the type of the data, the
    /// handler may inspect the dragged data by calling gtk_drag_get_data() and
    /// defer the gdk_drag_status() call to the `GtkWidget`::drag-data-received
    /// handler. Note that you must pass `GTK_DEST_DEFAULT_DROP`,
    /// `GTK_DEST_DEFAULT_MOTION` or `GTK_DEST_DEFAULT_ALL` to gtk_drag_dest_set()
    /// when using the drag-motion signal that way.
    /// 
    /// Also note that there is no drag-enter signal. The drag receiver has to
    /// keep track of whether he has received any drag-motion signals since the
    /// last `GtkWidget`::drag-leave and if not, treat the drag-motion signal as
    /// an "enter" signal. Upon an "enter", the handler will typically highlight
    /// the drop site with gtk_drag_highlight().
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
    /// gtk_widget_get_allocated_width() and
    /// gtk_widget_get_allocated_height().
    /// 
    /// Signal handlers connected to this signal can modify the cairo
    /// context passed as `cr` in any way they like and don't need to
    /// restore it. The signal emission takes care of calling cairo_save()
    /// before and cairo_restore() after invoking the handler.
    /// 
    /// The signal handler will get a `cr` with a clip region already set to the
    /// widget's dirty region, i.e. to the area that needs repainting.  Complicated
    /// widgets that want to avoid redrawing themselves completely can get the full
    /// extents of the clip region with gdk_cairo_get_clip_rectangle(), or they can
    /// get a finer-grained representation of the dirty region with
    /// cairo_copy_clip_rectangle_list().
    case draw = "draw"
    /// Emitted when the pointer enters the button.
    ///
    /// **enter is deprecated:**
    /// Use the #GtkWidget::enter-notify-event signal.
    case enter = "enter"
    /// The ::enter-notify-event will be emitted when the pointer enters
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_ENTER_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case enterNotifyEvent = "enter-notify-event"
    /// The GTK+ main loop will emit three signals for each GDK event delivered
    /// to a widget: one generic ::event signal, another, more specific,
    /// signal that matches the type of event delivered (e.g.
    /// `GtkWidget`::key-press-event) and finally a generic
    /// `GtkWidget`::event-after signal.
    case event = "event"
    /// After the emission of the `GtkWidget`::event signal and (optionally)
    /// the second more specific signal, ::event-after will be emitted
    /// regardless of the previous two signals handlers return values.
    case eventAfter = "event-after"
    case focus = "focus"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The ::focus-in-event signal will be emitted when the keyboard focus
    /// enters the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusInEvent = "focus-in-event"
    /// The ::focus-out-event signal will be emitted when the keyboard focus
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
    /// The ::grab-notify signal is emitted when a widget becomes
    /// shadowed by a GTK+ grab (not a pointer or keyboard grab) on
    /// another widget, or when it becomes unshadowed due to a grab
    /// being removed.
    /// 
    /// A widget is shadowed by a gtk_grab_add() when the topmost
    /// grab widget in the grab stack of its window group is not
    /// its ancestor.
    case grabNotify = "grab-notify"
    /// The ::hide signal is emitted when `widget` is hidden, for example with
    /// gtk_widget_hide().
    case hide = "hide"
    /// The ::hierarchy-changed signal is emitted when the
    /// anchored state of a widget changes. A widget is
    /// “anchored” when its toplevel
    /// ancestor is a `GtkWindow`. This signal is emitted when
    /// a widget changes from un-anchored to anchored or vice-versa.
    case hierarchyChanged = "hierarchy-changed"
    /// The ::key-press-event signal is emitted when a key is pressed. The signal
    /// emission will reoccur at the key-repeat rate when the key is kept pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyPressEvent = "key-press-event"
    /// The ::key-release-event signal is emitted when a key is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyReleaseEvent = "key-release-event"
    /// Gets emitted if keyboard navigation fails.
    /// See gtk_widget_keynav_failed() for details.
    case keynavFailed = "keynav-failed"
    /// Emitted when the pointer leaves the button.
    ///
    /// **leave is deprecated:**
    /// Use the #GtkWidget::leave-notify-event signal.
    case leave = "leave"
    /// The ::leave-notify-event will be emitted when the pointer leaves
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_LEAVE_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case leaveNotifyEvent = "leave-notify-event"
    /// The ::map signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// gtk_widget_set_visible()) and all its parents up to the toplevel widget
    /// are also visible. Once the map has occurred, `GtkWidget`::map-event will
    /// be emitted.
    /// 
    /// The ::map signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget`::unmap.
    case map = "map"
    /// The ::map-event signal will be emitted when the `widget`'s window is
    /// mapped. A window is mapped when it becomes visible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case mapEvent = "map-event"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// The ::motion-notify-event signal is emitted when the pointer moves
    /// over the widget's `GdkWindow`.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_POINTER_MOTION_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case motionNotifyEvent = "motion-notify-event"
    case moveFocus = "move-focus"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through g_object_set_property(), g_object_set(), et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to g_object_set_property() results
    /// in ::notify being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call g_object_notify() or g_object_notify_by_pspec(),
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// g_signal_connect() call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The ::parent-set signal is emitted when a new parent
    /// has been set on a widget.
    case parentSet = "parent-set"
    /// This signal gets emitted whenever a widget should pop up a context
    /// menu. This usually happens through the standard key binding mechanism;
    /// by pressing a certain key while a widget is focused, the user can cause
    /// the widget to pop up a menu.  For example, the `GtkEntry` widget creates
    /// a menu with clipboard commands. See the
    /// [Popup Menu Migration Checklist][checklist-popup-menu]
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
    /// g_object_notify() to emit property-changed
    /// notifications. `AtkObject`::property-changed is needed by the
    /// implementation of atk_add_global_event_listener() because GObject
    /// notify doesn't support emission hooks.
    case propertyChange = "property-change"
    /// The ::property-notify-event signal will be emitted when a property on
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
    /// Emitted when `GtkWidget`:has-tooltip is `true` and the hover timeout
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
    /// The ::realize signal is emitted when `widget` is associated with a
    /// `GdkWindow`, which means that gtk_widget_realize() has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// Emitted when the button is released.
    ///
    /// **released is deprecated:**
    /// Use the #GtkWidget::button-release-event signal.
    case released = "released"
    case remove = "remove"
    /// The ::screen-changed signal gets emitted when the
    /// screen of a widget has changed.
    case screenChanged = "screen-changed"
    /// The ::scroll-event signal is emitted when a button in the 4 to 7
    /// range is pressed. Wheel mice are usually configured to generate
    /// button press events for buttons 4 and 5 when the wheel is turned.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_SCROLL_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case scrollEvent = "scroll-event"
    /// The ::selection-clear-event signal will be emitted when the
    /// the `widget`'s window has lost ownership of a selection.
    case selectionClearEvent = "selection-clear-event"
    case selectionGet = "selection-get"
    case selectionNotifyEvent = "selection-notify-event"
    case selectionReceived = "selection-received"
    /// The ::selection-request-event signal will be emitted when
    /// another client requests ownership of the selection owned by
    /// the `widget`'s window.
    case selectionRequestEvent = "selection-request-event"
    case setFocusChild = "set-focus-child"
    /// The ::show signal is emitted when `widget` is shown, for example with
    /// gtk_widget_show().
    case show = "show"
    case showHelp = "show-help"
    case sizeAllocate = "size-allocate"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The ::state-changed signal is emitted when the widget state changes.
    /// See gtk_widget_get_state().
    ///
    /// **state-changed is deprecated:**
    /// Use #GtkWidget::state-flags-changed instead.
    case stateChanged = "state-changed"
    /// The ::state-flags-changed signal is emitted when the widget state
    /// changes, see gtk_widget_get_state_flags().
    case stateFlagsChanged = "state-flags-changed"
    /// The ::style-set signal is emitted when a new style has been set
    /// on a widget. Note that style-modifying functions like
    /// gtk_widget_modify_base() also cause this signal to be emitted.
    /// 
    /// Note that this signal is emitted for changes to the deprecated
    /// `GtkStyle`. To track changes to the `GtkStyleContext` associated
    /// with a widget, use the `GtkWidget`::style-updated signal.
    ///
    /// **style-set is deprecated:**
    /// Use the #GtkWidget::style-updated signal
    case styleSet = "style-set"
    /// The ::style-updated signal is a convenience signal that is emitted when the
    /// `GtkStyleContext`::changed signal is emitted on the `widget`'s associated
    /// `GtkStyleContext` as returned by gtk_widget_get_style_context().
    /// 
    /// Note that style-modifying functions like gtk_widget_override_color() also
    /// cause this signal to be emitted.
    case styleUpdated = "style-updated"
    case touchEvent = "touch-event"
    /// The ::unmap signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As ::unmap indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The ::unmap-event signal will be emitted when the `widget`'s window is
    /// unmapped. A window is unmapped when it becomes invisible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case unmapEvent = "unmap-event"
    /// The ::unrealize signal is emitted when the `GdkWindow` associated with
    /// `widget` is destroyed, which means that gtk_widget_unrealize() has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
    /// The ::visibility-notify-event will be emitted when the `widget`'s
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
    /// The ::window-state-event will be emitted when the state of the
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
    /// If `true`, the button will ignore the `GtkSettings`:gtk-button-images
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
    /// Whether to expand in both directions. Setting this sets both `GtkWidget`:hexpand and `GtkWidget`:vexpand
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
    /// Enables or disables the emission of `GtkWidget`::query-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget`::query-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See gtk_widget_set_hexpand().
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget`:hexpand property. See gtk_widget_get_hexpand_set().
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
    /// gtk_widget_set_size_request() for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case notifyMarginLeft = "notify::margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case notifyMarginRight = "notify::margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginTop = "notify::margin-top"
    case notifyName = "notify::name"
    case notifyNoShowAll = "notify::no-show-all"
    /// The requested opacity of the widget. See gtk_widget_set_opacity() for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case notifyOpacity = "notify::opacity"
    case notifyParent = "notify::parent"
    case notifyReceivesDefault = "notify::receives-default"
    case notifyRelief = "notify::relief"
    case notifyResizeMode = "notify::resize-mode"
    /// The scale factor of the widget. See gtk_widget_get_scale_factor() for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case notifyStyle = "notify::style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language][PangoMarkupFormat].
    /// Also see gtk_tooltip_set_markup().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see gtk_tooltip_set_text().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    /// The URI bound to this button.
    case notifyURI = "notify::uri"

    ///
    /// **use-stock is deprecated:**
    /// This method is deprecated.
    case notifyUseStock = "notify::use-stock"
    case notifyUseUnderline = "notify::use-underline"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    /// Whether to expand vertically. See gtk_widget_set_vexpand().
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget`:vexpand property. See gtk_widget_get_vexpand_set().
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    /// The 'visited' state of this button. A visited link is drawn in a
    /// different color.
    case notifyVisited = "notify::visited"
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

public extension LinkButtonProtocol {
    /// Connect a `LinkButtonSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: LinkButtonSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(link_button_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension LinkButtonProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLinkButton` instance.
    var link_button_ptr: UnsafeMutablePointer<GtkLinkButton> { return ptr.assumingMemoryBound(to: GtkLinkButton.self) }

    /// Retrieves the URI set using gtk_link_button_set_uri().
    func getURI() -> String! {
        let rv = gtk_link_button_get_uri(cast(link_button_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Retrieves the “visited” state of the URI where the `GtkLinkButton`
    /// points. The button becomes visited when it is clicked. If the URI
    /// is changed on the button, the “visited” state is unset again.
    /// 
    /// The state may also be changed using gtk_link_button_set_visited().
    func getVisited() -> Bool {
        let rv = gtk_link_button_get_visited(cast(link_button_ptr))
        return Bool(rv != 0)
    }

    /// Sets `uri` as the URI where the `GtkLinkButton` points. As a side-effect
    /// this unsets the “visited” state of the button.
    func set(uri: UnsafePointer<gchar>) {
        gtk_link_button_set_uri(cast(link_button_ptr), uri)
    
    }

    /// Sets the “visited” state of the URI where the `GtkLinkButton`
    /// points.  See gtk_link_button_get_visited() for more details.
    func set(visited: Bool) {
        gtk_link_button_set_visited(cast(link_button_ptr), gboolean(visited ? 1 : 0))
    
    }
    /// The URI bound to this button.
    var uri: String! {
        /// Retrieves the URI set using gtk_link_button_set_uri().
        get {
            let rv = gtk_link_button_get_uri(cast(link_button_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Sets `uri` as the URI where the `GtkLinkButton` points. As a side-effect
        /// this unsets the “visited” state of the button.
        nonmutating set {
            gtk_link_button_set_uri(cast(link_button_ptr), newValue)
        }
    }

    /// The 'visited' state of this button. A visited link is drawn in a
    /// different color.
    var visited: Bool {
        /// Retrieves the “visited” state of the URI where the `GtkLinkButton`
        /// points. The button becomes visited when it is clicked. If the URI
        /// is changed on the button, the “visited” state is unset again.
        /// 
        /// The state may also be changed using gtk_link_button_set_visited().
        get {
            let rv = gtk_link_button_get_visited(cast(link_button_ptr))
            return Bool(rv != 0)
        }
        /// Sets the “visited” state of the URI where the `GtkLinkButton`
        /// points.  See gtk_link_button_get_visited() for more details.
        nonmutating set {
            gtk_link_button_set_visited(cast(link_button_ptr), gboolean(newValue ? 1 : 0))
        }
    }
}



// MARK: - LinkButtonAccessible Class

/// The `LinkButtonAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkLinkButtonAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LinkButtonAccessible`.
/// Alternatively, use `LinkButtonAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol LinkButtonAccessibleProtocol: ButtonAccessibleProtocol, Atk.HyperlinkImplProtocol {
    /// Untyped pointer to the underlying `GtkLinkButtonAccessible` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkLinkButtonAccessible` instance.
    var link_button_accessible_ptr: UnsafeMutablePointer<GtkLinkButtonAccessible> { get }
}

/// The `LinkButtonAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkLinkButtonAccessible` instance.
/// It exposes methods that can operate on this data type through `LinkButtonAccessibleProtocol` conformance.
/// Use `LinkButtonAccessibleRef` only as an `unowned` reference to an existing `GtkLinkButtonAccessible` instance.
///

public struct LinkButtonAccessibleRef: LinkButtonAccessibleProtocol {
    /// Untyped pointer to the underlying `GtkLinkButtonAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `link_button_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension LinkButtonAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkLinkButtonAccessible>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `LinkButtonAccessibleProtocol`
    init<T: LinkButtonAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessibleProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessibleProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessibleProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessibleProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessibleProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `LinkButtonAccessible` type acts as a reference-counted owner of an underlying `GtkLinkButtonAccessible` instance.
/// It provides the methods that can operate on this data type through `LinkButtonAccessibleProtocol` conformance.
/// Use `LinkButtonAccessible` as a strong reference or owner of a `GtkLinkButtonAccessible` instance.
///

open class LinkButtonAccessible: ButtonAccessible, LinkButtonAccessibleProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `LinkButtonAccessible` instance.
    public init(_ op: UnsafeMutablePointer<GtkLinkButtonAccessible>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `LinkButtonAccessibleProtocol`
    /// Will retain `GtkLinkButtonAccessible`.
    public convenience init<T: LinkButtonAccessibleProtocol>(_ other: T) {
        self.init(cast(other.link_button_accessible_ptr))
        g_object_ref(cast(link_button_accessible_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessibleProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkLinkButtonAccessible.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessibleProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkLinkButtonAccessible.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessibleProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkLinkButtonAccessible.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessibleProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkLinkButtonAccessible>(opaquePointer))
    }



}

public enum LinkButtonAccessiblePropertyName: String, PropertyNameProtocol {
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

public extension LinkButtonAccessibleProtocol {
    /// Bind a `LinkButtonAccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: LinkButtonAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(link_button_accessible_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum LinkButtonAccessibleSignalName: String, SignalNameProtocol {
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
    /// its value set through g_object_set_property(), g_object_set(), et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to g_object_set_property() results
    /// in ::notify being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call g_object_notify() or g_object_notify_by_pspec(),
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// g_signal_connect() call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
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
    /// g_object_notify() to emit property-changed
    /// notifications. `AtkObject`::property-changed is needed by the
    /// implementation of atk_add_global_event_listener() because GObject
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

public extension LinkButtonAccessibleProtocol {
    /// Connect a `LinkButtonAccessibleSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: LinkButtonAccessibleSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(link_button_accessible_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension LinkButtonAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLinkButtonAccessible` instance.
    var link_button_accessible_ptr: UnsafeMutablePointer<GtkLinkButtonAccessible> { return ptr.assumingMemoryBound(to: GtkLinkButtonAccessible.self) }

}



// MARK: - ListBox Class

/// The `ListBoxProtocol` protocol exposes the methods and properties of an underlying `GtkListBox` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListBox`.
/// Alternatively, use `ListBoxRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A GtkListBox is a vertical container that contains GtkListBoxRow
/// children. These rows can by dynamically sorted and filtered, and
/// headers can be added dynamically depending on the row content.
/// It also allows keyboard and mouse navigation and selection like
/// a typical list.
/// 
/// Using GtkListBox is often an alternative to `GtkTreeView`, especially
/// when the list contents has a more complicated layout than what is allowed
/// by a `GtkCellRenderer`, or when the contents is interactive (i.e. has a
/// button in it).
/// 
/// Although a `GtkListBox` must have only `GtkListBoxRow` children you can
/// add any kind of widget to it via gtk_container_add(), and a `GtkListBoxRow`
/// widget will automatically be inserted between the list and the widget.
/// 
/// `GtkListBoxRows` can be marked as activatable or selectable. If a row
/// is activatable, `GtkListBox`::row-activated will be emitted for it when
/// the user tries to activate it. If it is selectable, the row will be marked
/// as selected when the user tries to select it.
/// 
/// The GtkListBox widget was added in GTK+ 3.10.
/// 
/// `` GtkListBox as GtkBuildable
/// 
/// The GtkListBox implementation of the `GtkBuildable` interface supports
/// setting a child as the placeholder by specifying “placeholder” as the “type”
/// attribute of a <child> element. See gtk_list_box_set_placeholder() for info.
/// 
/// `` CSS nodes
/// 
/// ```
/// list
/// ╰── row[.activatable]
/// ```
/// 
/// 
/// GtkListBox uses a single CSS node named list. Each GtkListBoxRow uses
/// a single CSS node named row. The row nodes get the .activatable
/// style class added when appropriate.
public protocol ListBoxProtocol: ContainerProtocol {
    /// Untyped pointer to the underlying `GtkListBox` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkListBox` instance.
    var list_box_ptr: UnsafeMutablePointer<GtkListBox> { get }
}

/// The `ListBoxRef` type acts as a lightweight Swift reference to an underlying `GtkListBox` instance.
/// It exposes methods that can operate on this data type through `ListBoxProtocol` conformance.
/// Use `ListBoxRef` only as an `unowned` reference to an existing `GtkListBox` instance.
///
/// A GtkListBox is a vertical container that contains GtkListBoxRow
/// children. These rows can by dynamically sorted and filtered, and
/// headers can be added dynamically depending on the row content.
/// It also allows keyboard and mouse navigation and selection like
/// a typical list.
/// 
/// Using GtkListBox is often an alternative to `GtkTreeView`, especially
/// when the list contents has a more complicated layout than what is allowed
/// by a `GtkCellRenderer`, or when the contents is interactive (i.e. has a
/// button in it).
/// 
/// Although a `GtkListBox` must have only `GtkListBoxRow` children you can
/// add any kind of widget to it via gtk_container_add(), and a `GtkListBoxRow`
/// widget will automatically be inserted between the list and the widget.
/// 
/// `GtkListBoxRows` can be marked as activatable or selectable. If a row
/// is activatable, `GtkListBox`::row-activated will be emitted for it when
/// the user tries to activate it. If it is selectable, the row will be marked
/// as selected when the user tries to select it.
/// 
/// The GtkListBox widget was added in GTK+ 3.10.
/// 
/// `` GtkListBox as GtkBuildable
/// 
/// The GtkListBox implementation of the `GtkBuildable` interface supports
/// setting a child as the placeholder by specifying “placeholder” as the “type”
/// attribute of a <child> element. See gtk_list_box_set_placeholder() for info.
/// 
/// `` CSS nodes
/// 
/// ```
/// list
/// ╰── row[.activatable]
/// ```
/// 
/// 
/// GtkListBox uses a single CSS node named list. Each GtkListBoxRow uses
/// a single CSS node named row. The row nodes get the .activatable
/// style class added when appropriate.
public struct ListBoxRef: ListBoxProtocol {
    /// Untyped pointer to the underlying `GtkListBox` instance.
    /// For type-safe access, use the generated, typed pointer `list_box_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ListBoxRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkListBox>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ListBoxProtocol`
    init<T: ListBoxProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkListBox` container.
    init() {
        let rv = gtk_list_box_new()
        self.init(cast(rv))
    }
}

/// The `ListBox` type acts as a reference-counted owner of an underlying `GtkListBox` instance.
/// It provides the methods that can operate on this data type through `ListBoxProtocol` conformance.
/// Use `ListBox` as a strong reference or owner of a `GtkListBox` instance.
///
/// A GtkListBox is a vertical container that contains GtkListBoxRow
/// children. These rows can by dynamically sorted and filtered, and
/// headers can be added dynamically depending on the row content.
/// It also allows keyboard and mouse navigation and selection like
/// a typical list.
/// 
/// Using GtkListBox is often an alternative to `GtkTreeView`, especially
/// when the list contents has a more complicated layout than what is allowed
/// by a `GtkCellRenderer`, or when the contents is interactive (i.e. has a
/// button in it).
/// 
/// Although a `GtkListBox` must have only `GtkListBoxRow` children you can
/// add any kind of widget to it via gtk_container_add(), and a `GtkListBoxRow`
/// widget will automatically be inserted between the list and the widget.
/// 
/// `GtkListBoxRows` can be marked as activatable or selectable. If a row
/// is activatable, `GtkListBox`::row-activated will be emitted for it when
/// the user tries to activate it. If it is selectable, the row will be marked
/// as selected when the user tries to select it.
/// 
/// The GtkListBox widget was added in GTK+ 3.10.
/// 
/// `` GtkListBox as GtkBuildable
/// 
/// The GtkListBox implementation of the `GtkBuildable` interface supports
/// setting a child as the placeholder by specifying “placeholder” as the “type”
/// attribute of a <child> element. See gtk_list_box_set_placeholder() for info.
/// 
/// `` CSS nodes
/// 
/// ```
/// list
/// ╰── row[.activatable]
/// ```
/// 
/// 
/// GtkListBox uses a single CSS node named list. Each GtkListBoxRow uses
/// a single CSS node named row. The row nodes get the .activatable
/// style class added when appropriate.
open class ListBox: Container, ListBoxProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ListBox` instance.
    public init(_ op: UnsafeMutablePointer<GtkListBox>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `ListBoxProtocol`
    /// Will retain `GtkListBox`.
    public convenience init<T: ListBoxProtocol>(_ other: T) {
        self.init(cast(other.list_box_ptr))
        g_object_ref(cast(list_box_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkListBox.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkListBox.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkListBox.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkListBox>(opaquePointer))
    }

    /// Creates a new `GtkListBox` container.
    public convenience init() {
        let rv = gtk_list_box_new()
        self.init(cast(rv))
    }


}

public enum ListBoxPropertyName: String, PropertyNameProtocol {
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
    case activateOnSingleClick = "activate-on-single-click"
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
    /// Whether to expand in both directions. Setting this sets both `GtkWidget`:hexpand and `GtkWidget`:vexpand
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
    /// Enables or disables the emission of `GtkWidget`::query-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget`::query-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See gtk_widget_set_hexpand().
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget`:hexpand property. See gtk_widget_get_hexpand_set().
    case hexpandSet = "hexpand-set"
    case isFocus = "is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginTop = "margin-top"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See gtk_widget_set_opacity() for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case receivesDefault = "receives-default"
    case resizeMode = "resize-mode"
    /// The scale factor of the widget. See gtk_widget_get_scale_factor() for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case selectionMode = "selection-mode"
    case sensitive = "sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language][PangoMarkupFormat].
    /// Also see gtk_tooltip_set_markup().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see gtk_tooltip_set_text().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See gtk_widget_set_vexpand().
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget`:vexpand property. See gtk_widget_get_vexpand_set().
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
}

public extension ListBoxProtocol {
    /// Bind a `ListBoxPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ListBoxPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(list_box_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum ListBoxSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    case activateCursorRow = "activate-cursor-row"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    case add = "add"
    /// The ::button-press-event signal will be emitted when a button
    /// (typically from a mouse) is pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonPressEvent = "button-press-event"
    /// The ::button-release-event signal will be emitted when a button
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
    /// The ::child-notify signal is emitted for each
    /// [child property][child-properties]  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// The ::composited-changed signal is emitted when the composited
    /// status of `widgets` screen changes.
    /// See gdk_screen_is_composited().
    ///
    /// **composited-changed is deprecated:**
    /// Use GdkScreen::composited-changed instead.
    case compositedChanged = "composited-changed"
    /// The ::configure-event signal will be emitted when the size, position or
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
    /// The ::delete-event signal is emitted if a user requests that
    /// a toplevel window is closed. The default handler for this signal
    /// destroys the window. Connecting gtk_widget_hide_on_delete() to
    /// this signal will cause the window to be hidden instead, so that
    /// it can later be shown again without reconstructing it.
    case deleteEvent = "delete-event"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The ::destroy-event signal is emitted when a `GdkWindow` is destroyed.
    /// You rarely get this signal, because most widgets disconnect themselves
    /// from their window before they destroy it, so no widget owns the
    /// window at destroy time.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case destroyEvent = "destroy-event"
    /// The ::direction-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The ::drag-begin signal is emitted on the drag source when a drag is
    /// started. A typical reason to connect to this signal is to set up a
    /// custom drag icon with e.g. gtk_drag_source_set_icon_pixbuf().
    /// 
    /// Note that some widgets set up a drag icon in the default handler of
    /// this signal, so you may have to use g_signal_connect_after() to
    /// override what the default handler did.
    case dragBegin = "drag-begin"
    /// The ::drag-data-delete signal is emitted on the drag source when a drag
    /// with the action `GDK_ACTION_MOVE` is successfully completed. The signal
    /// handler is responsible for deleting the data that has been dropped. What
    /// "delete" means depends on the context of the drag operation.
    case dragDataDelete = "drag-data-delete"
    /// The ::drag-data-get signal is emitted on the drag source when the drop
    /// site requests the data which is dragged. It is the responsibility of
    /// the signal handler to fill `data` with the data in the format which
    /// is indicated by `info`. See gtk_selection_data_set() and
    /// gtk_selection_data_set_text().
    case dragDataGet = "drag-data-get"
    /// The ::drag-data-received signal is emitted on the drop site when the
    /// dragged data has been received. If the data was received in order to
    /// determine whether the drop will be accepted, the handler is expected
    /// to call gdk_drag_status() and not finish the drag.
    /// If the data was received in response to a `GtkWidget`::drag-drop signal
    /// (and this is the last target to be received), the handler for this
    /// signal is expected to process the received data and then call
    /// gtk_drag_finish(), setting the `success` parameter depending on
    /// whether the data was processed successfully.
    /// 
    /// Applications must create some means to determine why the signal was emitted
    /// and therefore whether to call gdk_drag_status() or gtk_drag_finish().
    /// 
    /// The handler may inspect the selected action with
    /// gdk_drag_context_get_selected_action() before calling
    /// gtk_drag_finish(), e.g. to implement `GDK_ACTION_ASK` as
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
    /// The ::drag-drop signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the cursor position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// Otherwise, the handler returns `true`. In this case, the handler must
    /// ensure that gtk_drag_finish() is called to let the source know that
    /// the drop is done. The call to gtk_drag_finish() can be done either
    /// directly or in a `GtkWidget`::drag-data-received handler which gets
    /// triggered by calling gtk_drag_get_data() to receive the data for one
    /// or more of the supported targets.
    case dragDrop = "drag-drop"
    /// The ::drag-end signal is emitted on the drag source when a drag is
    /// finished.  A typical reason to connect to this signal is to undo
    /// things done in `GtkWidget`::drag-begin.
    case dragEnd = "drag-end"
    /// The ::drag-failed signal is emitted on the drag source when a drag has
    /// failed. The signal handler may hook custom code to handle a failed DnD
    /// operation based on the type of error, it returns `true` is the failure has
    /// been already handled (not showing the default "drag operation failed"
    /// animation), otherwise it returns `false`.
    case dragFailed = "drag-failed"
    /// The ::drag-leave signal is emitted on the drop site when the cursor
    /// leaves the widget. A typical reason to connect to this signal is to
    /// undo things done in `GtkWidget`::drag-motion, e.g. undo highlighting
    /// with gtk_drag_unhighlight().
    /// 
    /// 
    /// Likewise, the `GtkWidget`::drag-leave signal is also emitted before the
    /// ::drag-drop signal, for instance to allow cleaning up of a preview item
    /// created in the `GtkWidget`::drag-motion signal handler.
    case dragLeave = "drag-leave"
    /// The ::drag-motion signal is emitted on the drop site when the user
    /// moves the cursor over the widget during a drag. The signal handler
    /// must determine whether the cursor position is in a drop zone or not.
    /// If it is not in a drop zone, it returns `false` and no further processing
    /// is necessary. Otherwise, the handler returns `true`. In this case, the
    /// handler is responsible for providing the necessary information for
    /// displaying feedback to the user, by calling gdk_drag_status().
    /// 
    /// If the decision whether the drop will be accepted or rejected can't be
    /// made based solely on the cursor position and the type of the data, the
    /// handler may inspect the dragged data by calling gtk_drag_get_data() and
    /// defer the gdk_drag_status() call to the `GtkWidget`::drag-data-received
    /// handler. Note that you must pass `GTK_DEST_DEFAULT_DROP`,
    /// `GTK_DEST_DEFAULT_MOTION` or `GTK_DEST_DEFAULT_ALL` to gtk_drag_dest_set()
    /// when using the drag-motion signal that way.
    /// 
    /// Also note that there is no drag-enter signal. The drag receiver has to
    /// keep track of whether he has received any drag-motion signals since the
    /// last `GtkWidget`::drag-leave and if not, treat the drag-motion signal as
    /// an "enter" signal. Upon an "enter", the handler will typically highlight
    /// the drop site with gtk_drag_highlight().
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
    /// gtk_widget_get_allocated_width() and
    /// gtk_widget_get_allocated_height().
    /// 
    /// Signal handlers connected to this signal can modify the cairo
    /// context passed as `cr` in any way they like and don't need to
    /// restore it. The signal emission takes care of calling cairo_save()
    /// before and cairo_restore() after invoking the handler.
    /// 
    /// The signal handler will get a `cr` with a clip region already set to the
    /// widget's dirty region, i.e. to the area that needs repainting.  Complicated
    /// widgets that want to avoid redrawing themselves completely can get the full
    /// extents of the clip region with gdk_cairo_get_clip_rectangle(), or they can
    /// get a finer-grained representation of the dirty region with
    /// cairo_copy_clip_rectangle_list().
    case draw = "draw"
    /// The ::enter-notify-event will be emitted when the pointer enters
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_ENTER_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case enterNotifyEvent = "enter-notify-event"
    /// The GTK+ main loop will emit three signals for each GDK event delivered
    /// to a widget: one generic ::event signal, another, more specific,
    /// signal that matches the type of event delivered (e.g.
    /// `GtkWidget`::key-press-event) and finally a generic
    /// `GtkWidget`::event-after signal.
    case event = "event"
    /// After the emission of the `GtkWidget`::event signal and (optionally)
    /// the second more specific signal, ::event-after will be emitted
    /// regardless of the previous two signals handlers return values.
    case eventAfter = "event-after"
    case focus = "focus"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The ::focus-in-event signal will be emitted when the keyboard focus
    /// enters the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusInEvent = "focus-in-event"
    /// The ::focus-out-event signal will be emitted when the keyboard focus
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
    /// The ::grab-notify signal is emitted when a widget becomes
    /// shadowed by a GTK+ grab (not a pointer or keyboard grab) on
    /// another widget, or when it becomes unshadowed due to a grab
    /// being removed.
    /// 
    /// A widget is shadowed by a gtk_grab_add() when the topmost
    /// grab widget in the grab stack of its window group is not
    /// its ancestor.
    case grabNotify = "grab-notify"
    /// The ::hide signal is emitted when `widget` is hidden, for example with
    /// gtk_widget_hide().
    case hide = "hide"
    /// The ::hierarchy-changed signal is emitted when the
    /// anchored state of a widget changes. A widget is
    /// “anchored” when its toplevel
    /// ancestor is a `GtkWindow`. This signal is emitted when
    /// a widget changes from un-anchored to anchored or vice-versa.
    case hierarchyChanged = "hierarchy-changed"
    /// The ::key-press-event signal is emitted when a key is pressed. The signal
    /// emission will reoccur at the key-repeat rate when the key is kept pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyPressEvent = "key-press-event"
    /// The ::key-release-event signal is emitted when a key is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyReleaseEvent = "key-release-event"
    /// Gets emitted if keyboard navigation fails.
    /// See gtk_widget_keynav_failed() for details.
    case keynavFailed = "keynav-failed"
    /// The ::leave-notify-event will be emitted when the pointer leaves
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_LEAVE_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case leaveNotifyEvent = "leave-notify-event"
    /// The ::map signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// gtk_widget_set_visible()) and all its parents up to the toplevel widget
    /// are also visible. Once the map has occurred, `GtkWidget`::map-event will
    /// be emitted.
    /// 
    /// The ::map signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget`::unmap.
    case map = "map"
    /// The ::map-event signal will be emitted when the `widget`'s window is
    /// mapped. A window is mapped when it becomes visible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case mapEvent = "map-event"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// The ::motion-notify-event signal is emitted when the pointer moves
    /// over the widget's `GdkWindow`.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_POINTER_MOTION_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case motionNotifyEvent = "motion-notify-event"
    case moveCursor = "move-cursor"
    case moveFocus = "move-focus"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through g_object_set_property(), g_object_set(), et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to g_object_set_property() results
    /// in ::notify being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call g_object_notify() or g_object_notify_by_pspec(),
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// g_signal_connect() call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The ::parent-set signal is emitted when a new parent
    /// has been set on a widget.
    case parentSet = "parent-set"
    /// This signal gets emitted whenever a widget should pop up a context
    /// menu. This usually happens through the standard key binding mechanism;
    /// by pressing a certain key while a widget is focused, the user can cause
    /// the widget to pop up a menu.  For example, the `GtkEntry` widget creates
    /// a menu with clipboard commands. See the
    /// [Popup Menu Migration Checklist][checklist-popup-menu]
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
    /// g_object_notify() to emit property-changed
    /// notifications. `AtkObject`::property-changed is needed by the
    /// implementation of atk_add_global_event_listener() because GObject
    /// notify doesn't support emission hooks.
    case propertyChange = "property-change"
    /// The ::property-notify-event signal will be emitted when a property on
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
    /// Emitted when `GtkWidget`:has-tooltip is `true` and the hover timeout
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
    /// The ::realize signal is emitted when `widget` is associated with a
    /// `GdkWindow`, which means that gtk_widget_realize() has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    case remove = "remove"
    /// The ::row-activated signal is emitted when a row has been activated by the user.
    case rowActivated = "row-activated"
    /// The ::row-selected signal is emitted when a new row is selected, or
    /// (with a `nil` `row`) when the selection is cleared.
    /// 
    /// When the `box` is using `GTK_SELECTION_MULTIPLE`, this signal will not
    /// give you the full picture of selection changes, and you should use
    /// the `GtkListBox`::selected-rows-changed signal instead.
    case rowSelected = "row-selected"
    /// The ::screen-changed signal gets emitted when the
    /// screen of a widget has changed.
    case screenChanged = "screen-changed"
    /// The ::scroll-event signal is emitted when a button in the 4 to 7
    /// range is pressed. Wheel mice are usually configured to generate
    /// button press events for buttons 4 and 5 when the wheel is turned.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_SCROLL_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case scrollEvent = "scroll-event"
    /// The ::select-all signal is a [keybinding signal][GtkBindingSignal]
    /// which gets emitted to select all children of the box, if the selection
    /// mode permits it.
    /// 
    /// The default bindings for this signal is Ctrl-a.
    case selectAll = "select-all"
    /// The ::selected-rows-changed signal is emitted when the
    /// set of selected rows changes.
    case selectedRowsChanged = "selected-rows-changed"
    /// The ::selection-clear-event signal will be emitted when the
    /// the `widget`'s window has lost ownership of a selection.
    case selectionClearEvent = "selection-clear-event"
    case selectionGet = "selection-get"
    case selectionNotifyEvent = "selection-notify-event"
    case selectionReceived = "selection-received"
    /// The ::selection-request-event signal will be emitted when
    /// another client requests ownership of the selection owned by
    /// the `widget`'s window.
    case selectionRequestEvent = "selection-request-event"
    case setFocusChild = "set-focus-child"
    /// The ::show signal is emitted when `widget` is shown, for example with
    /// gtk_widget_show().
    case show = "show"
    case showHelp = "show-help"
    case sizeAllocate = "size-allocate"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The ::state-changed signal is emitted when the widget state changes.
    /// See gtk_widget_get_state().
    ///
    /// **state-changed is deprecated:**
    /// Use #GtkWidget::state-flags-changed instead.
    case stateChanged = "state-changed"
    /// The ::state-flags-changed signal is emitted when the widget state
    /// changes, see gtk_widget_get_state_flags().
    case stateFlagsChanged = "state-flags-changed"
    /// The ::style-set signal is emitted when a new style has been set
    /// on a widget. Note that style-modifying functions like
    /// gtk_widget_modify_base() also cause this signal to be emitted.
    /// 
    /// Note that this signal is emitted for changes to the deprecated
    /// `GtkStyle`. To track changes to the `GtkStyleContext` associated
    /// with a widget, use the `GtkWidget`::style-updated signal.
    ///
    /// **style-set is deprecated:**
    /// Use the #GtkWidget::style-updated signal
    case styleSet = "style-set"
    /// The ::style-updated signal is a convenience signal that is emitted when the
    /// `GtkStyleContext`::changed signal is emitted on the `widget`'s associated
    /// `GtkStyleContext` as returned by gtk_widget_get_style_context().
    /// 
    /// Note that style-modifying functions like gtk_widget_override_color() also
    /// cause this signal to be emitted.
    case styleUpdated = "style-updated"
    case toggleCursorRow = "toggle-cursor-row"
    case touchEvent = "touch-event"
    /// The ::unmap signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As ::unmap indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The ::unmap-event signal will be emitted when the `widget`'s window is
    /// unmapped. A window is unmapped when it becomes invisible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case unmapEvent = "unmap-event"
    /// The ::unrealize signal is emitted when the `GdkWindow` associated with
    /// `widget` is destroyed, which means that gtk_widget_unrealize() has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
    /// The ::unselect-all signal is a [keybinding signal][GtkBindingSignal]
    /// which gets emitted to unselect all children of the box, if the selection
    /// mode permits it.
    /// 
    /// The default bindings for this signal is Ctrl-Shift-a.
    case unselectAll = "unselect-all"
    /// The ::visibility-notify-event will be emitted when the `widget`'s
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
    /// The ::window-state-event will be emitted when the state of the
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
    case notifyActivateOnSingleClick = "notify::activate-on-single-click"
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
    /// Whether to expand in both directions. Setting this sets both `GtkWidget`:hexpand and `GtkWidget`:vexpand
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
    /// Enables or disables the emission of `GtkWidget`::query-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget`::query-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See gtk_widget_set_hexpand().
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget`:hexpand property. See gtk_widget_get_hexpand_set().
    case notifyHexpandSet = "notify::hexpand-set"
    case notifyIsFocus = "notify::is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case notifyMargin = "notify::margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case notifyMarginLeft = "notify::margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case notifyMarginRight = "notify::margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginTop = "notify::margin-top"
    case notifyName = "notify::name"
    case notifyNoShowAll = "notify::no-show-all"
    /// The requested opacity of the widget. See gtk_widget_set_opacity() for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case notifyOpacity = "notify::opacity"
    case notifyParent = "notify::parent"
    case notifyReceivesDefault = "notify::receives-default"
    case notifyResizeMode = "notify::resize-mode"
    /// The scale factor of the widget. See gtk_widget_get_scale_factor() for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySelectionMode = "notify::selection-mode"
    case notifySensitive = "notify::sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case notifyStyle = "notify::style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language][PangoMarkupFormat].
    /// Also see gtk_tooltip_set_markup().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see gtk_tooltip_set_text().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    /// Whether to expand vertically. See gtk_widget_set_vexpand().
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget`:vexpand property. See gtk_widget_get_vexpand_set().
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    case notifyWidthRequest = "notify::width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case notifyWindow = "notify::window"
}

public extension ListBoxProtocol {
    /// Connect a `ListBoxSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: ListBoxSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(list_box_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension ListBoxProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkListBox` instance.
    var list_box_ptr: UnsafeMutablePointer<GtkListBox> { return ptr.assumingMemoryBound(to: GtkListBox.self) }

    /// Binds `model` to `box`.
    /// 
    /// If `box` was already bound to a model, that previous binding is
    /// destroyed.
    /// 
    /// The contents of `box` are cleared and then filled with widgets that
    /// represent items from `model`. `box` is updated whenever `model` changes.
    /// If `model` is `nil`, `box` is left empty.
    /// 
    /// It is undefined to add or remove widgets directly (for example, with
    /// gtk_list_box_insert() or gtk_container_add()) while `box` is bound to a
    /// model.
    /// 
    /// Note that using a model is incompatible with the filtering and sorting
    /// functionality in GtkListBox. When using a model, filtering and sorting
    /// should be implemented by the model.
    func bind(model: ListModelProtocol, createWidgetFunc create_widget_func: @escaping ListBoxCreateWidgetFunc, userData user_data: UnsafeMutableRawPointer, userDataFreeFunc user_data_free_func: @escaping GLib.DestroyNotify) {
        gtk_list_box_bind_model(cast(list_box_ptr), cast(model.ptr), create_widget_func, cast(user_data), user_data_free_func)
    
    }

    /// This is a helper function for implementing DnD onto a `GtkListBox`.
    /// The passed in `row` will be highlighted via gtk_drag_highlight(),
    /// and any previously highlighted row will be unhighlighted.
    /// 
    /// The row will also be unhighlighted when the widget gets
    /// a drag leave event.
    func dragHighlight(row: ListBoxRowProtocol) {
        gtk_list_box_drag_highlight_row(cast(list_box_ptr), cast(row.ptr))
    
    }

    /// If a row has previously been highlighted via gtk_list_box_drag_highlight_row()
    /// it will have the highlight removed.
    func dragUnhighlightRow() {
        gtk_list_box_drag_unhighlight_row(cast(list_box_ptr))
    
    }

    /// Returns whether rows activate on single clicks.
    func getActivateOnSingleClick() -> Bool {
        let rv = gtk_list_box_get_activate_on_single_click(cast(list_box_ptr))
        return Bool(rv != 0)
    }

    /// Gets the adjustment (if any) that the widget uses to
    /// for vertical scrolling.
    func getAdjustment() -> UnsafeMutablePointer<GtkAdjustment>! {
        let rv = gtk_list_box_get_adjustment(cast(list_box_ptr))
        return cast(rv)
    }

    /// Gets the n-th child in the list (not counting headers).
    /// If `_index` is negative or larger than the number of items in the
    /// list, `nil` is returned.
    func getRowAtIndex(index_: CInt) -> UnsafeMutablePointer<GtkListBoxRow>! {
        let rv = gtk_list_box_get_row_at_index(cast(list_box_ptr), gint(index_))
        return cast(rv)
    }

    /// Gets the row at the `y` position.
    func getRowAt(y: CInt) -> UnsafeMutablePointer<GtkListBoxRow>! {
        let rv = gtk_list_box_get_row_at_y(cast(list_box_ptr), gint(y))
        return cast(rv)
    }

    /// Gets the selected row.
    /// 
    /// Note that the box may allow multiple selection, in which
    /// case you should use gtk_list_box_selected_foreach() to
    /// find all selected rows.
    func getSelectedRow() -> UnsafeMutablePointer<GtkListBoxRow>! {
        let rv = gtk_list_box_get_selected_row(cast(list_box_ptr))
        return cast(rv)
    }

    /// Creates a list of all selected children.
    func getSelectedRows() -> UnsafeMutablePointer<GList>! {
        let rv = gtk_list_box_get_selected_rows(cast(list_box_ptr))
        return cast(rv)
    }

    /// Gets the selection mode of the listbox.
    func getSelectionMode() -> GtkSelectionMode {
        let rv = gtk_list_box_get_selection_mode(cast(list_box_ptr))
        return rv
    }

    /// Insert the `child` into the `box` at `position`. If a sort function is
    /// set, the widget will actually be inserted at the calculated position and
    /// this function has the same effect of gtk_container_add().
    /// 
    /// If `position` is -1, or larger than the total number of items in the
    /// `box`, then the `child` will be appended to the end.
    func insert(child: WidgetProtocol, position: CInt) {
        gtk_list_box_insert(cast(list_box_ptr), cast(child.ptr), gint(position))
    
    }

    /// Update the filtering for all rows. Call this when result
    /// of the filter function on the `box` is changed due
    /// to an external factor. For instance, this would be used
    /// if the filter function just looked for a specific search
    /// string and the entry with the search string has changed.
    func invalidateFilter() {
        gtk_list_box_invalidate_filter(cast(list_box_ptr))
    
    }

    /// Update the separators for all rows. Call this when result
    /// of the header function on the `box` is changed due
    /// to an external factor.
    func invalidateHeaders() {
        gtk_list_box_invalidate_headers(cast(list_box_ptr))
    
    }

    /// Update the sorting for all rows. Call this when result
    /// of the sort function on the `box` is changed due
    /// to an external factor.
    func invalidateSort() {
        gtk_list_box_invalidate_sort(cast(list_box_ptr))
    
    }

    /// Prepend a widget to the list. If a sort function is set, the widget will
    /// actually be inserted at the calculated position and this function has the
    /// same effect of gtk_container_add().
    func prepend(child: WidgetProtocol) {
        gtk_list_box_prepend(cast(list_box_ptr), cast(child.ptr))
    
    }

    /// Select all children of `box`, if the selection mode allows it.
    func selectAll() {
        gtk_list_box_select_all(cast(list_box_ptr))
    
    }

    /// Make `row` the currently selected row.
    func select(row: ListBoxRowProtocol) {
        gtk_list_box_select_row(cast(list_box_ptr), cast(row.ptr))
    
    }

    /// Calls a function for each selected child.
    /// 
    /// Note that the selection cannot be modified from within this function.
    func selectedForeach(_ func_: @escaping ListBoxForeachFunc, data: UnsafeMutableRawPointer) {
        gtk_list_box_selected_foreach(cast(list_box_ptr), func_, cast(data))
    
    }

    /// If `single` is `true`, rows will be activated when you click on them,
    /// otherwise you need to double-click.
    func setActivateOnSingleClick(single: Bool) {
        gtk_list_box_set_activate_on_single_click(cast(list_box_ptr), gboolean(single ? 1 : 0))
    
    }

    /// Sets the adjustment (if any) that the widget uses to
    /// for vertical scrolling. For instance, this is used
    /// to get the page size for PageUp/Down key handling.
    /// 
    /// In the normal case when the `box` is packed inside
    /// a `GtkScrolledWindow` the adjustment from that will
    /// be picked up automatically, so there is no need
    /// to manually do that.
    func set(adjustment: AdjustmentProtocol) {
        gtk_list_box_set_adjustment(cast(list_box_ptr), cast(adjustment.ptr))
    
    }

    /// By setting a filter function on the `box` one can decide dynamically which
    /// of the rows to show. For instance, to implement a search function on a list that
    /// filters the original list to only show the matching rows.
    /// 
    /// The `filter_func` will be called for each row after the call, and it will
    /// continue to be called each time a row changes (via gtk_list_box_row_changed()) or
    /// when gtk_list_box_invalidate_filter() is called.
    /// 
    /// Note that using a filter function is incompatible with using a model
    /// (see gtk_list_box_bind_model()).
    func set(filterFunc filter_func: @escaping ListBoxFilterFunc, userData user_data: UnsafeMutableRawPointer, destroy: @escaping GLib.DestroyNotify) {
        gtk_list_box_set_filter_func(cast(list_box_ptr), filter_func, cast(user_data), destroy)
    
    }

    /// By setting a header function on the `box` one can dynamically add headers
    /// in front of rows, depending on the contents of the row and its position in the list.
    /// For instance, one could use it to add headers in front of the first item of a
    /// new kind, in a list sorted by the kind.
    /// 
    /// The `update_header` can look at the current header widget using gtk_list_box_row_get_header()
    /// and either update the state of the widget as needed, or set a new one using
    /// gtk_list_box_row_set_header(). If no header is needed, set the header to `nil`.
    /// 
    /// Note that you may get many calls `update_header` to this for a particular row when e.g.
    /// changing things that don’t affect the header. In this case it is important for performance
    /// to not blindly replace an existing header with an identical one.
    /// 
    /// The `update_header` function will be called for each row after the call, and it will
    /// continue to be called each time a row changes (via gtk_list_box_row_changed()) and when
    /// the row before changes (either by gtk_list_box_row_changed() on the previous row, or when
    /// the previous row becomes a different row). It is also called for all rows when
    /// gtk_list_box_invalidate_headers() is called.
    func setHeaderFunc(updateHeader update_header: @escaping ListBoxUpdateHeaderFunc, userData user_data: UnsafeMutableRawPointer, destroy: @escaping GLib.DestroyNotify) {
        gtk_list_box_set_header_func(cast(list_box_ptr), update_header, cast(user_data), destroy)
    
    }

    /// Sets the placeholder widget that is shown in the list when
    /// it doesn't display any visible children.
    func set(placeholder: WidgetProtocol) {
        gtk_list_box_set_placeholder(cast(list_box_ptr), cast(placeholder.ptr))
    
    }

    /// Sets how selection works in the listbox.
    /// See `GtkSelectionMode` for details.
    func setSelection(mode: SelectionMode) {
        gtk_list_box_set_selection_mode(cast(list_box_ptr), mode)
    
    }

    /// By setting a sort function on the `box` one can dynamically reorder the rows
    /// of the list, based on the contents of the rows.
    /// 
    /// The `sort_func` will be called for each row after the call, and will continue to
    /// be called each time a row changes (via gtk_list_box_row_changed()) and when
    /// gtk_list_box_invalidate_sort() is called.
    /// 
    /// Note that using a sort function is incompatible with using a model
    /// (see gtk_list_box_bind_model()).
    func set(sortFunc sort_func: @escaping ListBoxSortFunc, userData user_data: UnsafeMutableRawPointer, destroy: @escaping GLib.DestroyNotify) {
        gtk_list_box_set_sort_func(cast(list_box_ptr), sort_func, cast(user_data), destroy)
    
    }

    /// Unselect all children of `box`, if the selection mode allows it.
    func unselectAll() {
        gtk_list_box_unselect_all(cast(list_box_ptr))
    
    }

    /// Unselects a single row of `box`, if the selection mode allows it.
    func unselect(row: ListBoxRowProtocol) {
        gtk_list_box_unselect_row(cast(list_box_ptr), cast(row.ptr))
    
    }
    /// Returns whether rows activate on single clicks.
    var activateOnSingleClick: Bool {
        /// Returns whether rows activate on single clicks.
        get {
            let rv = gtk_list_box_get_activate_on_single_click(cast(list_box_ptr))
            return Bool(rv != 0)
        }
        /// If `single` is `true`, rows will be activated when you click on them,
        /// otherwise you need to double-click.
        nonmutating set {
            gtk_list_box_set_activate_on_single_click(cast(list_box_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Gets the adjustment (if any) that the widget uses to
    /// for vertical scrolling.
    var adjustment: UnsafeMutablePointer<GtkAdjustment>! {
        /// Gets the adjustment (if any) that the widget uses to
        /// for vertical scrolling.
        get {
            let rv = gtk_list_box_get_adjustment(cast(list_box_ptr))
            return cast(rv)
        }
        /// Sets the adjustment (if any) that the widget uses to
        /// for vertical scrolling. For instance, this is used
        /// to get the page size for PageUp/Down key handling.
        /// 
        /// In the normal case when the `box` is packed inside
        /// a `GtkScrolledWindow` the adjustment from that will
        /// be picked up automatically, so there is no need
        /// to manually do that.
        nonmutating set {
            gtk_list_box_set_adjustment(cast(list_box_ptr), cast(newValue))
        }
    }

    /// Gets the selected row.
    /// 
    /// Note that the box may allow multiple selection, in which
    /// case you should use gtk_list_box_selected_foreach() to
    /// find all selected rows.
    var selectedRow: UnsafeMutablePointer<GtkListBoxRow>! {
        /// Gets the selected row.
        /// 
        /// Note that the box may allow multiple selection, in which
        /// case you should use gtk_list_box_selected_foreach() to
        /// find all selected rows.
        get {
            let rv = gtk_list_box_get_selected_row(cast(list_box_ptr))
            return cast(rv)
        }
    }

    /// Creates a list of all selected children.
    var selectedRows: UnsafeMutablePointer<GList>! {
        /// Creates a list of all selected children.
        get {
            let rv = gtk_list_box_get_selected_rows(cast(list_box_ptr))
            return cast(rv)
        }
    }

    /// Gets the selection mode of the listbox.
    var selectionMode: GtkSelectionMode {
        /// Gets the selection mode of the listbox.
        get {
            let rv = gtk_list_box_get_selection_mode(cast(list_box_ptr))
            return rv
        }
        /// Sets how selection works in the listbox.
        /// See `GtkSelectionMode` for details.
        nonmutating set {
            gtk_list_box_set_selection_mode(cast(list_box_ptr), newValue)
        }
    }
}



// MARK: - ListBoxAccessible Class

/// The `ListBoxAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkListBoxAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListBoxAccessible`.
/// Alternatively, use `ListBoxAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ListBoxAccessibleProtocol: ContainerAccessibleProtocol, Atk.SelectionProtocol {
    /// Untyped pointer to the underlying `GtkListBoxAccessible` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkListBoxAccessible` instance.
    var list_box_accessible_ptr: UnsafeMutablePointer<GtkListBoxAccessible> { get }
}

/// The `ListBoxAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkListBoxAccessible` instance.
/// It exposes methods that can operate on this data type through `ListBoxAccessibleProtocol` conformance.
/// Use `ListBoxAccessibleRef` only as an `unowned` reference to an existing `GtkListBoxAccessible` instance.
///

public struct ListBoxAccessibleRef: ListBoxAccessibleProtocol {
    /// Untyped pointer to the underlying `GtkListBoxAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `list_box_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ListBoxAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkListBoxAccessible>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ListBoxAccessibleProtocol`
    init<T: ListBoxAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessibleProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessibleProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessibleProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessibleProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessibleProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ListBoxAccessible` type acts as a reference-counted owner of an underlying `GtkListBoxAccessible` instance.
/// It provides the methods that can operate on this data type through `ListBoxAccessibleProtocol` conformance.
/// Use `ListBoxAccessible` as a strong reference or owner of a `GtkListBoxAccessible` instance.
///

open class ListBoxAccessible: ContainerAccessible, ListBoxAccessibleProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ListBoxAccessible` instance.
    public init(_ op: UnsafeMutablePointer<GtkListBoxAccessible>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `ListBoxAccessibleProtocol`
    /// Will retain `GtkListBoxAccessible`.
    public convenience init<T: ListBoxAccessibleProtocol>(_ other: T) {
        self.init(cast(other.list_box_accessible_ptr))
        g_object_ref(cast(list_box_accessible_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessibleProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkListBoxAccessible.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessibleProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkListBoxAccessible.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessibleProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkListBoxAccessible.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessibleProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkListBoxAccessible>(opaquePointer))
    }



}

public enum ListBoxAccessiblePropertyName: String, PropertyNameProtocol {
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

public extension ListBoxAccessibleProtocol {
    /// Bind a `ListBoxAccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ListBoxAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(list_box_accessible_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum ListBoxAccessibleSignalName: String, SignalNameProtocol {
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
    /// its value set through g_object_set_property(), g_object_set(), et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to g_object_set_property() results
    /// in ::notify being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call g_object_notify() or g_object_notify_by_pspec(),
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// g_signal_connect() call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
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
    /// g_object_notify() to emit property-changed
    /// notifications. `AtkObject`::property-changed is needed by the
    /// implementation of atk_add_global_event_listener() because GObject
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

public extension ListBoxAccessibleProtocol {
    /// Connect a `ListBoxAccessibleSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: ListBoxAccessibleSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(list_box_accessible_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension ListBoxAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkListBoxAccessible` instance.
    var list_box_accessible_ptr: UnsafeMutablePointer<GtkListBoxAccessible> { return ptr.assumingMemoryBound(to: GtkListBoxAccessible.self) }

}



// MARK: - ListBoxRow Class

/// The `ListBoxRowProtocol` protocol exposes the methods and properties of an underlying `GtkListBoxRow` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListBoxRow`.
/// Alternatively, use `ListBoxRowRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ListBoxRowProtocol: BinProtocol, ActionableProtocol {
    /// Untyped pointer to the underlying `GtkListBoxRow` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkListBoxRow` instance.
    var list_box_row_ptr: UnsafeMutablePointer<GtkListBoxRow> { get }
}

/// The `ListBoxRowRef` type acts as a lightweight Swift reference to an underlying `GtkListBoxRow` instance.
/// It exposes methods that can operate on this data type through `ListBoxRowProtocol` conformance.
/// Use `ListBoxRowRef` only as an `unowned` reference to an existing `GtkListBoxRow` instance.
///

public struct ListBoxRowRef: ListBoxRowProtocol {
    /// Untyped pointer to the underlying `GtkListBoxRow` instance.
    /// For type-safe access, use the generated, typed pointer `list_box_row_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ListBoxRowRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkListBoxRow>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ListBoxRowProtocol`
    init<T: ListBoxRowProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkListBoxRow`, to be used as a child of a `GtkListBox`.
    init() {
        let rv = gtk_list_box_row_new()
        self.init(cast(rv))
    }
}

/// The `ListBoxRow` type acts as a reference-counted owner of an underlying `GtkListBoxRow` instance.
/// It provides the methods that can operate on this data type through `ListBoxRowProtocol` conformance.
/// Use `ListBoxRow` as a strong reference or owner of a `GtkListBoxRow` instance.
///

open class ListBoxRow: Bin, ListBoxRowProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ListBoxRow` instance.
    public init(_ op: UnsafeMutablePointer<GtkListBoxRow>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `ListBoxRowProtocol`
    /// Will retain `GtkListBoxRow`.
    public convenience init<T: ListBoxRowProtocol>(_ other: T) {
        self.init(cast(other.list_box_row_ptr))
        g_object_ref(cast(list_box_row_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkListBoxRow.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkListBoxRow.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkListBoxRow.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkListBoxRow>(opaquePointer))
    }

    /// Creates a new `GtkListBoxRow`, to be used as a child of a `GtkListBox`.
    public convenience init() {
        let rv = gtk_list_box_row_new()
        self.init(cast(rv))
    }


}

public enum ListBoxRowPropertyName: String, PropertyNameProtocol {
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
    /// The property determines whether the `GtkListBox`::row-activated
    /// signal will be emitted for this row.
    case activatable = "activatable"
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
    /// Whether to expand in both directions. Setting this sets both `GtkWidget`:hexpand and `GtkWidget`:vexpand
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
    /// Enables or disables the emission of `GtkWidget`::query-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget`::query-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See gtk_widget_set_hexpand().
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget`:hexpand property. See gtk_widget_get_hexpand_set().
    case hexpandSet = "hexpand-set"
    case isFocus = "is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginTop = "margin-top"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See gtk_widget_set_opacity() for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case receivesDefault = "receives-default"
    case resizeMode = "resize-mode"
    /// The scale factor of the widget. See gtk_widget_get_scale_factor() for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    /// The property determines whether this row can be selected.
    case selectable = "selectable"
    case sensitive = "sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language][PangoMarkupFormat].
    /// Also see gtk_tooltip_set_markup().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see gtk_tooltip_set_text().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See gtk_widget_set_vexpand().
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget`:vexpand property. See gtk_widget_get_vexpand_set().
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
}

public extension ListBoxRowProtocol {
    /// Bind a `ListBoxRowPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ListBoxRowPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(list_box_row_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum ListBoxRowSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// This is a keybinding signal, which will cause this row to be activated.
    /// 
    /// If you want to be notified when the user activates a row (by key or not),
    /// use the `GtkListBox`::row-activated signal on the row’s parent `GtkListBox`.
    case activate = "activate"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    case add = "add"
    /// The ::button-press-event signal will be emitted when a button
    /// (typically from a mouse) is pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonPressEvent = "button-press-event"
    /// The ::button-release-event signal will be emitted when a button
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
    /// The ::child-notify signal is emitted for each
    /// [child property][child-properties]  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// The ::composited-changed signal is emitted when the composited
    /// status of `widgets` screen changes.
    /// See gdk_screen_is_composited().
    ///
    /// **composited-changed is deprecated:**
    /// Use GdkScreen::composited-changed instead.
    case compositedChanged = "composited-changed"
    /// The ::configure-event signal will be emitted when the size, position or
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
    /// The ::delete-event signal is emitted if a user requests that
    /// a toplevel window is closed. The default handler for this signal
    /// destroys the window. Connecting gtk_widget_hide_on_delete() to
    /// this signal will cause the window to be hidden instead, so that
    /// it can later be shown again without reconstructing it.
    case deleteEvent = "delete-event"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The ::destroy-event signal is emitted when a `GdkWindow` is destroyed.
    /// You rarely get this signal, because most widgets disconnect themselves
    /// from their window before they destroy it, so no widget owns the
    /// window at destroy time.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case destroyEvent = "destroy-event"
    /// The ::direction-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The ::drag-begin signal is emitted on the drag source when a drag is
    /// started. A typical reason to connect to this signal is to set up a
    /// custom drag icon with e.g. gtk_drag_source_set_icon_pixbuf().
    /// 
    /// Note that some widgets set up a drag icon in the default handler of
    /// this signal, so you may have to use g_signal_connect_after() to
    /// override what the default handler did.
    case dragBegin = "drag-begin"
    /// The ::drag-data-delete signal is emitted on the drag source when a drag
    /// with the action `GDK_ACTION_MOVE` is successfully completed. The signal
    /// handler is responsible for deleting the data that has been dropped. What
    /// "delete" means depends on the context of the drag operation.
    case dragDataDelete = "drag-data-delete"
    /// The ::drag-data-get signal is emitted on the drag source when the drop
    /// site requests the data which is dragged. It is the responsibility of
    /// the signal handler to fill `data` with the data in the format which
    /// is indicated by `info`. See gtk_selection_data_set() and
    /// gtk_selection_data_set_text().
    case dragDataGet = "drag-data-get"
    /// The ::drag-data-received signal is emitted on the drop site when the
    /// dragged data has been received. If the data was received in order to
    /// determine whether the drop will be accepted, the handler is expected
    /// to call gdk_drag_status() and not finish the drag.
    /// If the data was received in response to a `GtkWidget`::drag-drop signal
    /// (and this is the last target to be received), the handler for this
    /// signal is expected to process the received data and then call
    /// gtk_drag_finish(), setting the `success` parameter depending on
    /// whether the data was processed successfully.
    /// 
    /// Applications must create some means to determine why the signal was emitted
    /// and therefore whether to call gdk_drag_status() or gtk_drag_finish().
    /// 
    /// The handler may inspect the selected action with
    /// gdk_drag_context_get_selected_action() before calling
    /// gtk_drag_finish(), e.g. to implement `GDK_ACTION_ASK` as
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
    /// The ::drag-drop signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the cursor position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// Otherwise, the handler returns `true`. In this case, the handler must
    /// ensure that gtk_drag_finish() is called to let the source know that
    /// the drop is done. The call to gtk_drag_finish() can be done either
    /// directly or in a `GtkWidget`::drag-data-received handler which gets
    /// triggered by calling gtk_drag_get_data() to receive the data for one
    /// or more of the supported targets.
    case dragDrop = "drag-drop"
    /// The ::drag-end signal is emitted on the drag source when a drag is
    /// finished.  A typical reason to connect to this signal is to undo
    /// things done in `GtkWidget`::drag-begin.
    case dragEnd = "drag-end"
    /// The ::drag-failed signal is emitted on the drag source when a drag has
    /// failed. The signal handler may hook custom code to handle a failed DnD
    /// operation based on the type of error, it returns `true` is the failure has
    /// been already handled (not showing the default "drag operation failed"
    /// animation), otherwise it returns `false`.
    case dragFailed = "drag-failed"
    /// The ::drag-leave signal is emitted on the drop site when the cursor
    /// leaves the widget. A typical reason to connect to this signal is to
    /// undo things done in `GtkWidget`::drag-motion, e.g. undo highlighting
    /// with gtk_drag_unhighlight().
    /// 
    /// 
    /// Likewise, the `GtkWidget`::drag-leave signal is also emitted before the
    /// ::drag-drop signal, for instance to allow cleaning up of a preview item
    /// created in the `GtkWidget`::drag-motion signal handler.
    case dragLeave = "drag-leave"
    /// The ::drag-motion signal is emitted on the drop site when the user
    /// moves the cursor over the widget during a drag. The signal handler
    /// must determine whether the cursor position is in a drop zone or not.
    /// If it is not in a drop zone, it returns `false` and no further processing
    /// is necessary. Otherwise, the handler returns `true`. In this case, the
    /// handler is responsible for providing the necessary information for
    /// displaying feedback to the user, by calling gdk_drag_status().
    /// 
    /// If the decision whether the drop will be accepted or rejected can't be
    /// made based solely on the cursor position and the type of the data, the
    /// handler may inspect the dragged data by calling gtk_drag_get_data() and
    /// defer the gdk_drag_status() call to the `GtkWidget`::drag-data-received
    /// handler. Note that you must pass `GTK_DEST_DEFAULT_DROP`,
    /// `GTK_DEST_DEFAULT_MOTION` or `GTK_DEST_DEFAULT_ALL` to gtk_drag_dest_set()
    /// when using the drag-motion signal that way.
    /// 
    /// Also note that there is no drag-enter signal. The drag receiver has to
    /// keep track of whether he has received any drag-motion signals since the
    /// last `GtkWidget`::drag-leave and if not, treat the drag-motion signal as
    /// an "enter" signal. Upon an "enter", the handler will typically highlight
    /// the drop site with gtk_drag_highlight().
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
    /// gtk_widget_get_allocated_width() and
    /// gtk_widget_get_allocated_height().
    /// 
    /// Signal handlers connected to this signal can modify the cairo
    /// context passed as `cr` in any way they like and don't need to
    /// restore it. The signal emission takes care of calling cairo_save()
    /// before and cairo_restore() after invoking the handler.
    /// 
    /// The signal handler will get a `cr` with a clip region already set to the
    /// widget's dirty region, i.e. to the area that needs repainting.  Complicated
    /// widgets that want to avoid redrawing themselves completely can get the full
    /// extents of the clip region with gdk_cairo_get_clip_rectangle(), or they can
    /// get a finer-grained representation of the dirty region with
    /// cairo_copy_clip_rectangle_list().
    case draw = "draw"
    /// The ::enter-notify-event will be emitted when the pointer enters
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_ENTER_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case enterNotifyEvent = "enter-notify-event"
    /// The GTK+ main loop will emit three signals for each GDK event delivered
    /// to a widget: one generic ::event signal, another, more specific,
    /// signal that matches the type of event delivered (e.g.
    /// `GtkWidget`::key-press-event) and finally a generic
    /// `GtkWidget`::event-after signal.
    case event = "event"
    /// After the emission of the `GtkWidget`::event signal and (optionally)
    /// the second more specific signal, ::event-after will be emitted
    /// regardless of the previous two signals handlers return values.
    case eventAfter = "event-after"
    case focus = "focus"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The ::focus-in-event signal will be emitted when the keyboard focus
    /// enters the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusInEvent = "focus-in-event"
    /// The ::focus-out-event signal will be emitted when the keyboard focus
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
    /// The ::grab-notify signal is emitted when a widget becomes
    /// shadowed by a GTK+ grab (not a pointer or keyboard grab) on
    /// another widget, or when it becomes unshadowed due to a grab
    /// being removed.
    /// 
    /// A widget is shadowed by a gtk_grab_add() when the topmost
    /// grab widget in the grab stack of its window group is not
    /// its ancestor.
    case grabNotify = "grab-notify"
    /// The ::hide signal is emitted when `widget` is hidden, for example with
    /// gtk_widget_hide().
    case hide = "hide"
    /// The ::hierarchy-changed signal is emitted when the
    /// anchored state of a widget changes. A widget is
    /// “anchored” when its toplevel
    /// ancestor is a `GtkWindow`. This signal is emitted when
    /// a widget changes from un-anchored to anchored or vice-versa.
    case hierarchyChanged = "hierarchy-changed"
    /// The ::key-press-event signal is emitted when a key is pressed. The signal
    /// emission will reoccur at the key-repeat rate when the key is kept pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyPressEvent = "key-press-event"
    /// The ::key-release-event signal is emitted when a key is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyReleaseEvent = "key-release-event"
    /// Gets emitted if keyboard navigation fails.
    /// See gtk_widget_keynav_failed() for details.
    case keynavFailed = "keynav-failed"
    /// The ::leave-notify-event will be emitted when the pointer leaves
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_LEAVE_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case leaveNotifyEvent = "leave-notify-event"
    /// The ::map signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// gtk_widget_set_visible()) and all its parents up to the toplevel widget
    /// are also visible. Once the map has occurred, `GtkWidget`::map-event will
    /// be emitted.
    /// 
    /// The ::map signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget`::unmap.
    case map = "map"
    /// The ::map-event signal will be emitted when the `widget`'s window is
    /// mapped. A window is mapped when it becomes visible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case mapEvent = "map-event"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// The ::motion-notify-event signal is emitted when the pointer moves
    /// over the widget's `GdkWindow`.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_POINTER_MOTION_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case motionNotifyEvent = "motion-notify-event"
    case moveFocus = "move-focus"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through g_object_set_property(), g_object_set(), et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to g_object_set_property() results
    /// in ::notify being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call g_object_notify() or g_object_notify_by_pspec(),
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// g_signal_connect() call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The ::parent-set signal is emitted when a new parent
    /// has been set on a widget.
    case parentSet = "parent-set"
    /// This signal gets emitted whenever a widget should pop up a context
    /// menu. This usually happens through the standard key binding mechanism;
    /// by pressing a certain key while a widget is focused, the user can cause
    /// the widget to pop up a menu.  For example, the `GtkEntry` widget creates
    /// a menu with clipboard commands. See the
    /// [Popup Menu Migration Checklist][checklist-popup-menu]
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
    /// g_object_notify() to emit property-changed
    /// notifications. `AtkObject`::property-changed is needed by the
    /// implementation of atk_add_global_event_listener() because GObject
    /// notify doesn't support emission hooks.
    case propertyChange = "property-change"
    /// The ::property-notify-event signal will be emitted when a property on
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
    /// Emitted when `GtkWidget`:has-tooltip is `true` and the hover timeout
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
    /// The ::realize signal is emitted when `widget` is associated with a
    /// `GdkWindow`, which means that gtk_widget_realize() has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    case remove = "remove"
    /// The ::screen-changed signal gets emitted when the
    /// screen of a widget has changed.
    case screenChanged = "screen-changed"
    /// The ::scroll-event signal is emitted when a button in the 4 to 7
    /// range is pressed. Wheel mice are usually configured to generate
    /// button press events for buttons 4 and 5 when the wheel is turned.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_SCROLL_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case scrollEvent = "scroll-event"
    /// The ::selection-clear-event signal will be emitted when the
    /// the `widget`'s window has lost ownership of a selection.
    case selectionClearEvent = "selection-clear-event"
    case selectionGet = "selection-get"
    case selectionNotifyEvent = "selection-notify-event"
    case selectionReceived = "selection-received"
    /// The ::selection-request-event signal will be emitted when
    /// another client requests ownership of the selection owned by
    /// the `widget`'s window.
    case selectionRequestEvent = "selection-request-event"
    case setFocusChild = "set-focus-child"
    /// The ::show signal is emitted when `widget` is shown, for example with
    /// gtk_widget_show().
    case show = "show"
    case showHelp = "show-help"
    case sizeAllocate = "size-allocate"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The ::state-changed signal is emitted when the widget state changes.
    /// See gtk_widget_get_state().
    ///
    /// **state-changed is deprecated:**
    /// Use #GtkWidget::state-flags-changed instead.
    case stateChanged = "state-changed"
    /// The ::state-flags-changed signal is emitted when the widget state
    /// changes, see gtk_widget_get_state_flags().
    case stateFlagsChanged = "state-flags-changed"
    /// The ::style-set signal is emitted when a new style has been set
    /// on a widget. Note that style-modifying functions like
    /// gtk_widget_modify_base() also cause this signal to be emitted.
    /// 
    /// Note that this signal is emitted for changes to the deprecated
    /// `GtkStyle`. To track changes to the `GtkStyleContext` associated
    /// with a widget, use the `GtkWidget`::style-updated signal.
    ///
    /// **style-set is deprecated:**
    /// Use the #GtkWidget::style-updated signal
    case styleSet = "style-set"
    /// The ::style-updated signal is a convenience signal that is emitted when the
    /// `GtkStyleContext`::changed signal is emitted on the `widget`'s associated
    /// `GtkStyleContext` as returned by gtk_widget_get_style_context().
    /// 
    /// Note that style-modifying functions like gtk_widget_override_color() also
    /// cause this signal to be emitted.
    case styleUpdated = "style-updated"
    case touchEvent = "touch-event"
    /// The ::unmap signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As ::unmap indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The ::unmap-event signal will be emitted when the `widget`'s window is
    /// unmapped. A window is unmapped when it becomes invisible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case unmapEvent = "unmap-event"
    /// The ::unrealize signal is emitted when the `GdkWindow` associated with
    /// `widget` is destroyed, which means that gtk_widget_unrealize() has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
    /// The ::visibility-notify-event will be emitted when the `widget`'s
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
    /// The ::window-state-event will be emitted when the state of the
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
    /// The property determines whether the `GtkListBox`::row-activated
    /// signal will be emitted for this row.
    case notifyActivatable = "notify::activatable"
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
    /// Whether to expand in both directions. Setting this sets both `GtkWidget`:hexpand and `GtkWidget`:vexpand
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
    /// Enables or disables the emission of `GtkWidget`::query-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget`::query-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See gtk_widget_set_hexpand().
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget`:hexpand property. See gtk_widget_get_hexpand_set().
    case notifyHexpandSet = "notify::hexpand-set"
    case notifyIsFocus = "notify::is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case notifyMargin = "notify::margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case notifyMarginLeft = "notify::margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case notifyMarginRight = "notify::margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginTop = "notify::margin-top"
    case notifyName = "notify::name"
    case notifyNoShowAll = "notify::no-show-all"
    /// The requested opacity of the widget. See gtk_widget_set_opacity() for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case notifyOpacity = "notify::opacity"
    case notifyParent = "notify::parent"
    case notifyReceivesDefault = "notify::receives-default"
    case notifyResizeMode = "notify::resize-mode"
    /// The scale factor of the widget. See gtk_widget_get_scale_factor() for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    /// The property determines whether this row can be selected.
    case notifySelectable = "notify::selectable"
    case notifySensitive = "notify::sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case notifyStyle = "notify::style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language][PangoMarkupFormat].
    /// Also see gtk_tooltip_set_markup().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see gtk_tooltip_set_text().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    /// Whether to expand vertically. See gtk_widget_set_vexpand().
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget`:vexpand property. See gtk_widget_get_vexpand_set().
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    case notifyWidthRequest = "notify::width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case notifyWindow = "notify::window"
}

public extension ListBoxRowProtocol {
    /// Connect a `ListBoxRowSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: ListBoxRowSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(list_box_row_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension ListBoxRowProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkListBoxRow` instance.
    var list_box_row_ptr: UnsafeMutablePointer<GtkListBoxRow> { return ptr.assumingMemoryBound(to: GtkListBoxRow.self) }

    /// Marks `row` as changed, causing any state that depends on this
    /// to be updated. This affects sorting, filtering and headers.
    /// 
    /// Note that calls to this method must be in sync with the data
    /// used for the row functions. For instance, if the list is
    /// mirroring some external data set, and *two* rows changed in the
    /// external data set then when you call gtk_list_box_row_changed()
    /// on the first row the sort function must only read the new data
    /// for the first of the two changed rows, otherwise the resorting
    /// of the rows will be wrong.
    /// 
    /// This generally means that if you don’t fully control the data
    /// model you have to duplicate the data that affects the listbox
    /// row functions into the row widgets themselves. Another alternative
    /// is to call gtk_list_box_invalidate_sort() on any model change,
    /// but that is more expensive.
    func changed() {
        gtk_list_box_row_changed(cast(list_box_row_ptr))
    
    }

    /// Gets the value of the `GtkListBoxRow`:activatable property
    /// for this row.
    func getActivatable() -> Bool {
        let rv = gtk_list_box_row_get_activatable(cast(list_box_row_ptr))
        return Bool(rv != 0)
    }

    /// Returns the current header of the `row`. This can be used
    /// in a `GtkListBoxUpdateHeaderFunc` to see if there is a header
    /// set already, and if so to update the state of it.
    func getHeader() -> UnsafeMutablePointer<GtkWidget>! {
        let rv = gtk_list_box_row_get_header(cast(list_box_row_ptr))
        return cast(rv)
    }

    /// Gets the current index of the `row` in its `GtkListBox` container.
    func getIndex() -> CInt {
        let rv = gtk_list_box_row_get_index(cast(list_box_row_ptr))
        return CInt(rv)
    }

    /// Gets the value of the `GtkListBoxRow`:selectable property
    /// for this row.
    func getSelectable() -> Bool {
        let rv = gtk_list_box_row_get_selectable(cast(list_box_row_ptr))
        return Bool(rv != 0)
    }

    /// Set the `GtkListBoxRow`:activatable property for this row.
    func set(activatable: Bool) {
        gtk_list_box_row_set_activatable(cast(list_box_row_ptr), gboolean(activatable ? 1 : 0))
    
    }

    /// Sets the current header of the `row`. This is only allowed to be called
    /// from a `GtkListBoxUpdateHeaderFunc`. It will replace any existing
    /// header in the row, and be shown in front of the row in the listbox.
    func set(header: WidgetProtocol) {
        gtk_list_box_row_set_header(cast(list_box_row_ptr), cast(header.ptr))
    
    }

    /// Set the `GtkListBoxRow`:selectable property for this row.
    func set(selectable: Bool) {
        gtk_list_box_row_set_selectable(cast(list_box_row_ptr), gboolean(selectable ? 1 : 0))
    
    }
    /// The property determines whether the `GtkListBox`::row-activated
    /// signal will be emitted for this row.
    var activatable: Bool {
        /// Gets the value of the `GtkListBoxRow`:activatable property
        /// for this row.
        get {
            let rv = gtk_list_box_row_get_activatable(cast(list_box_row_ptr))
            return Bool(rv != 0)
        }
        /// Set the `GtkListBoxRow`:activatable property for this row.
        nonmutating set {
            gtk_list_box_row_set_activatable(cast(list_box_row_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Returns the current header of the `row`. This can be used
    /// in a `GtkListBoxUpdateHeaderFunc` to see if there is a header
    /// set already, and if so to update the state of it.
    var header: UnsafeMutablePointer<GtkWidget>! {
        /// Returns the current header of the `row`. This can be used
        /// in a `GtkListBoxUpdateHeaderFunc` to see if there is a header
        /// set already, and if so to update the state of it.
        get {
            let rv = gtk_list_box_row_get_header(cast(list_box_row_ptr))
            return cast(rv)
        }
        /// Sets the current header of the `row`. This is only allowed to be called
        /// from a `GtkListBoxUpdateHeaderFunc`. It will replace any existing
        /// header in the row, and be shown in front of the row in the listbox.
        nonmutating set {
            gtk_list_box_row_set_header(cast(list_box_row_ptr), cast(newValue))
        }
    }

    /// Gets the current index of the `row` in its `GtkListBox` container.
    var index: CInt {
        /// Gets the current index of the `row` in its `GtkListBox` container.
        get {
            let rv = gtk_list_box_row_get_index(cast(list_box_row_ptr))
            return CInt(rv)
        }
    }

    /// Returns whether the child is currently selected in its
    /// `GtkListBox` container.
    var isSelected: Bool {
        /// Returns whether the child is currently selected in its
        /// `GtkListBox` container.
        get {
            let rv = gtk_list_box_row_is_selected(cast(list_box_row_ptr))
            return Bool(rv != 0)
        }
    }

    /// The property determines whether this row can be selected.
    var selectable: Bool {
        /// Gets the value of the `GtkListBoxRow`:selectable property
        /// for this row.
        get {
            let rv = gtk_list_box_row_get_selectable(cast(list_box_row_ptr))
            return Bool(rv != 0)
        }
        /// Set the `GtkListBoxRow`:selectable property for this row.
        nonmutating set {
            gtk_list_box_row_set_selectable(cast(list_box_row_ptr), gboolean(newValue ? 1 : 0))
        }
    }
}



// MARK: - ListBoxRowAccessible Class

/// The `ListBoxRowAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkListBoxRowAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListBoxRowAccessible`.
/// Alternatively, use `ListBoxRowAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ListBoxRowAccessibleProtocol: ContainerAccessibleProtocol {
    /// Untyped pointer to the underlying `GtkListBoxRowAccessible` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkListBoxRowAccessible` instance.
    var list_box_row_accessible_ptr: UnsafeMutablePointer<GtkListBoxRowAccessible> { get }
}

/// The `ListBoxRowAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkListBoxRowAccessible` instance.
/// It exposes methods that can operate on this data type through `ListBoxRowAccessibleProtocol` conformance.
/// Use `ListBoxRowAccessibleRef` only as an `unowned` reference to an existing `GtkListBoxRowAccessible` instance.
///

public struct ListBoxRowAccessibleRef: ListBoxRowAccessibleProtocol {
    /// Untyped pointer to the underlying `GtkListBoxRowAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `list_box_row_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ListBoxRowAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkListBoxRowAccessible>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ListBoxRowAccessibleProtocol`
    init<T: ListBoxRowAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowAccessibleProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowAccessibleProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowAccessibleProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowAccessibleProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowAccessibleProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ListBoxRowAccessible` type acts as a reference-counted owner of an underlying `GtkListBoxRowAccessible` instance.
/// It provides the methods that can operate on this data type through `ListBoxRowAccessibleProtocol` conformance.
/// Use `ListBoxRowAccessible` as a strong reference or owner of a `GtkListBoxRowAccessible` instance.
///

open class ListBoxRowAccessible: ContainerAccessible, ListBoxRowAccessibleProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ListBoxRowAccessible` instance.
    public init(_ op: UnsafeMutablePointer<GtkListBoxRowAccessible>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `ListBoxRowAccessibleProtocol`
    /// Will retain `GtkListBoxRowAccessible`.
    public convenience init<T: ListBoxRowAccessibleProtocol>(_ other: T) {
        self.init(cast(other.list_box_row_accessible_ptr))
        g_object_ref(cast(list_box_row_accessible_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowAccessibleProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkListBoxRowAccessible.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowAccessibleProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkListBoxRowAccessible.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowAccessibleProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkListBoxRowAccessible.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowAccessibleProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkListBoxRowAccessible>(opaquePointer))
    }



}

public enum ListBoxRowAccessiblePropertyName: String, PropertyNameProtocol {
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

public extension ListBoxRowAccessibleProtocol {
    /// Bind a `ListBoxRowAccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ListBoxRowAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(list_box_row_accessible_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum ListBoxRowAccessibleSignalName: String, SignalNameProtocol {
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
    /// its value set through g_object_set_property(), g_object_set(), et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to g_object_set_property() results
    /// in ::notify being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call g_object_notify() or g_object_notify_by_pspec(),
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// g_signal_connect() call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
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
    /// g_object_notify() to emit property-changed
    /// notifications. `AtkObject`::property-changed is needed by the
    /// implementation of atk_add_global_event_listener() because GObject
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

public extension ListBoxRowAccessibleProtocol {
    /// Connect a `ListBoxRowAccessibleSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: ListBoxRowAccessibleSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(list_box_row_accessible_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension ListBoxRowAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkListBoxRowAccessible` instance.
    var list_box_row_accessible_ptr: UnsafeMutablePointer<GtkListBoxRowAccessible> { return ptr.assumingMemoryBound(to: GtkListBoxRowAccessible.self) }

}



// MARK: - ListStore Class

/// The `ListStoreProtocol` protocol exposes the methods and properties of an underlying `GtkListStore` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListStore`.
/// Alternatively, use `ListStoreRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkListStore` object is a list model for use with a `GtkTreeView`
/// widget.  It implements the `GtkTreeModel` interface, and consequentialy,
/// can use all of the methods available there.  It also implements the
/// `GtkTreeSortable` interface so it can be sorted by the view.
/// Finally, it also implements the tree
/// [drag and drop][gtk3-GtkTreeView-drag-and-drop]
/// interfaces.
/// 
/// The `GtkListStore` can accept most GObject types as a column type, though
/// it can’t accept all custom types.  Internally, it will keep a copy of
/// data passed in (such as a string or a boxed pointer).  Columns that
/// accept `GObjects` are handled a little differently.  The
/// `GtkListStore` will keep a reference to the object instead of copying the
/// value.  As a result, if the object is modified, it is up to the
/// application writer to call gtk_tree_model_row_changed() to emit the
/// `GtkTreeModel`::row_changed signal.  This most commonly affects lists with
/// `GdkPixbufs` stored.
/// 
/// An example for creating a simple list store:
/// (C Language Example):
/// ```C
/// enum {
///   COLUMN_STRING,
///   COLUMN_INT,
///   COLUMN_BOOLEAN,
///   N_COLUMNS
/// };
/// 
/// {
///   GtkListStore *list_store;
///   GtkTreePath *path;
///   GtkTreeIter iter;
///   gint i;
/// 
///   list_store = gtk_list_store_new (N_COLUMNS,
///                                    G_TYPE_STRING,
///                                    G_TYPE_INT,
///                                    G_TYPE_BOOLEAN);
/// 
///   for (i = 0; i < 10; i++)
///     {
///       gchar *some_data;
/// 
///       some_data = get_some_data (i);
/// 
///       // Add a new row to the model
///       gtk_list_store_append (list_store, &iter);
///       gtk_list_store_set (list_store, &iter,
///                           COLUMN_STRING, some_data,
///                           COLUMN_INT, i,
///                           COLUMN_BOOLEAN,  FALSE,
///                           -1);
/// 
///       // As the store will keep a copy of the string internally,
///       // we free some_data.
///       g_free (some_data);
///     }
/// 
///   // Modify a particular row
///   path = gtk_tree_path_new_from_string ("4");
///   gtk_tree_model_get_iter (GTK_TREE_MODEL (list_store),
///                            &iter,
///                            path);
///   gtk_tree_path_free (path);
///   gtk_list_store_set (list_store, &iter,
///                       COLUMN_BOOLEAN, TRUE,
///                       -1);
/// }
/// ```
/// 
/// 
/// `` Performance Considerations
/// 
/// Internally, the `GtkListStore` was implemented with a linked list with
/// a tail pointer prior to GTK+ 2.6.  As a result, it was fast at data
/// insertion and deletion, and not fast at random data access.  The
/// `GtkListStore` sets the `GTK_TREE_MODEL_ITERS_PERSIST` flag, which means
/// that `GtkTreeIters` can be cached while the row exists.  Thus, if
/// access to a particular row is needed often and your code is expected to
/// run on older versions of GTK+, it is worth keeping the iter around.
/// 
/// `` Atomic Operations
/// 
/// It is important to note that only the methods
/// gtk_list_store_insert_with_values() and gtk_list_store_insert_with_valuesv()
/// are atomic, in the sense that the row is being appended to the store and the
/// values filled in in a single operation with regard to `GtkTreeModel` signaling.
/// In contrast, using e.g. gtk_list_store_append() and then gtk_list_store_set()
/// will first create a row, which triggers the `GtkTreeModel`::row-inserted signal
/// on `GtkListStore`. The row, however, is still empty, and any signal handler
/// connecting to `GtkTreeModel`::row-inserted on this particular store should be prepared
/// for the situation that the row might be empty. This is especially important
/// if you are wrapping the `GtkListStore` inside a `GtkTreeModelFilter` and are
/// using a `GtkTreeModelFilterVisibleFunc`. Using any of the non-atomic operations
/// to append rows to the `GtkListStore` will cause the
/// `GtkTreeModelFilterVisibleFunc` to be visited with an empty row first; the
/// function must be prepared for that.
/// 
/// `` GtkListStore as GtkBuildable
/// 
/// The GtkListStore implementation of the GtkBuildable interface allows
/// to specify the model columns with a <columns> element that may contain
/// multiple <column> elements, each specifying one model column. The “type”
/// attribute specifies the data type for the column.
/// 
/// Additionally, it is possible to specify content for the list store
/// in the UI definition, with the <data> element. It can contain multiple
/// <row> elements, each specifying to content for one row of the list model.
/// Inside a <row>, the <col> elements specify the content for individual cells.
/// 
/// Note that it is probably more common to define your models in the code,
/// and one might consider it a layering violation to specify the content of
/// a list store in a UI definition, data, not presentation, and common wisdom
/// is to separate the two, as far as possible.
/// 
/// An example of a UI Definition fragment for a list store:
/// (C Language Example):
/// ```C
/// <object class="GtkListStore">
///   <columns>
///     <column type="gchararray"/>
///     <column type="gchararray"/>
///     <column type="gint"/>
///   </columns>
///   <data>
///     <row>
///       <col id="0">John</col>
///       <col id="1">Doe</col>
///       <col id="2">25</col>
///     </row>
///     <row>
///       <col id="0">Johan</col>
///       <col id="1">Dahlin</col>
///       <col id="2">50</col>
///     </row>
///   </data>
/// </object>
/// ```
/// 
public protocol ListStoreProtocol: GLibObject.ObjectProtocol, BuildableProtocol, TreeDragDestProtocol, TreeDragSourceProtocol, TreeModelProtocol, TreeSortableProtocol {
    /// Untyped pointer to the underlying `GtkListStore` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkListStore` instance.
    var list_store_ptr: UnsafeMutablePointer<GtkListStore> { get }
}

/// The `ListStoreRef` type acts as a lightweight Swift reference to an underlying `GtkListStore` instance.
/// It exposes methods that can operate on this data type through `ListStoreProtocol` conformance.
/// Use `ListStoreRef` only as an `unowned` reference to an existing `GtkListStore` instance.
///
/// The `GtkListStore` object is a list model for use with a `GtkTreeView`
/// widget.  It implements the `GtkTreeModel` interface, and consequentialy,
/// can use all of the methods available there.  It also implements the
/// `GtkTreeSortable` interface so it can be sorted by the view.
/// Finally, it also implements the tree
/// [drag and drop][gtk3-GtkTreeView-drag-and-drop]
/// interfaces.
/// 
/// The `GtkListStore` can accept most GObject types as a column type, though
/// it can’t accept all custom types.  Internally, it will keep a copy of
/// data passed in (such as a string or a boxed pointer).  Columns that
/// accept `GObjects` are handled a little differently.  The
/// `GtkListStore` will keep a reference to the object instead of copying the
/// value.  As a result, if the object is modified, it is up to the
/// application writer to call gtk_tree_model_row_changed() to emit the
/// `GtkTreeModel`::row_changed signal.  This most commonly affects lists with
/// `GdkPixbufs` stored.
/// 
/// An example for creating a simple list store:
/// (C Language Example):
/// ```C
/// enum {
///   COLUMN_STRING,
///   COLUMN_INT,
///   COLUMN_BOOLEAN,
///   N_COLUMNS
/// };
/// 
/// {
///   GtkListStore *list_store;
///   GtkTreePath *path;
///   GtkTreeIter iter;
///   gint i;
/// 
///   list_store = gtk_list_store_new (N_COLUMNS,
///                                    G_TYPE_STRING,
///                                    G_TYPE_INT,
///                                    G_TYPE_BOOLEAN);
/// 
///   for (i = 0; i < 10; i++)
///     {
///       gchar *some_data;
/// 
///       some_data = get_some_data (i);
/// 
///       // Add a new row to the model
///       gtk_list_store_append (list_store, &iter);
///       gtk_list_store_set (list_store, &iter,
///                           COLUMN_STRING, some_data,
///                           COLUMN_INT, i,
///                           COLUMN_BOOLEAN,  FALSE,
///                           -1);
/// 
///       // As the store will keep a copy of the string internally,
///       // we free some_data.
///       g_free (some_data);
///     }
/// 
///   // Modify a particular row
///   path = gtk_tree_path_new_from_string ("4");
///   gtk_tree_model_get_iter (GTK_TREE_MODEL (list_store),
///                            &iter,
///                            path);
///   gtk_tree_path_free (path);
///   gtk_list_store_set (list_store, &iter,
///                       COLUMN_BOOLEAN, TRUE,
///                       -1);
/// }
/// ```
/// 
/// 
/// `` Performance Considerations
/// 
/// Internally, the `GtkListStore` was implemented with a linked list with
/// a tail pointer prior to GTK+ 2.6.  As a result, it was fast at data
/// insertion and deletion, and not fast at random data access.  The
/// `GtkListStore` sets the `GTK_TREE_MODEL_ITERS_PERSIST` flag, which means
/// that `GtkTreeIters` can be cached while the row exists.  Thus, if
/// access to a particular row is needed often and your code is expected to
/// run on older versions of GTK+, it is worth keeping the iter around.
/// 
/// `` Atomic Operations
/// 
/// It is important to note that only the methods
/// gtk_list_store_insert_with_values() and gtk_list_store_insert_with_valuesv()
/// are atomic, in the sense that the row is being appended to the store and the
/// values filled in in a single operation with regard to `GtkTreeModel` signaling.
/// In contrast, using e.g. gtk_list_store_append() and then gtk_list_store_set()
/// will first create a row, which triggers the `GtkTreeModel`::row-inserted signal
/// on `GtkListStore`. The row, however, is still empty, and any signal handler
/// connecting to `GtkTreeModel`::row-inserted on this particular store should be prepared
/// for the situation that the row might be empty. This is especially important
/// if you are wrapping the `GtkListStore` inside a `GtkTreeModelFilter` and are
/// using a `GtkTreeModelFilterVisibleFunc`. Using any of the non-atomic operations
/// to append rows to the `GtkListStore` will cause the
/// `GtkTreeModelFilterVisibleFunc` to be visited with an empty row first; the
/// function must be prepared for that.
/// 
/// `` GtkListStore as GtkBuildable
/// 
/// The GtkListStore implementation of the GtkBuildable interface allows
/// to specify the model columns with a <columns> element that may contain
/// multiple <column> elements, each specifying one model column. The “type”
/// attribute specifies the data type for the column.
/// 
/// Additionally, it is possible to specify content for the list store
/// in the UI definition, with the <data> element. It can contain multiple
/// <row> elements, each specifying to content for one row of the list model.
/// Inside a <row>, the <col> elements specify the content for individual cells.
/// 
/// Note that it is probably more common to define your models in the code,
/// and one might consider it a layering violation to specify the content of
/// a list store in a UI definition, data, not presentation, and common wisdom
/// is to separate the two, as far as possible.
/// 
/// An example of a UI Definition fragment for a list store:
/// (C Language Example):
/// ```C
/// <object class="GtkListStore">
///   <columns>
///     <column type="gchararray"/>
///     <column type="gchararray"/>
///     <column type="gint"/>
///   </columns>
///   <data>
///     <row>
///       <col id="0">John</col>
///       <col id="1">Doe</col>
///       <col id="2">25</col>
///     </row>
///     <row>
///       <col id="0">Johan</col>
///       <col id="1">Dahlin</col>
///       <col id="2">50</col>
///     </row>
///   </data>
/// </object>
/// ```
/// 
public struct ListStoreRef: ListStoreProtocol {
    /// Untyped pointer to the underlying `GtkListStore` instance.
    /// For type-safe access, use the generated, typed pointer `list_store_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ListStoreRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkListStore>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ListStoreProtocol`
    init<T: ListStoreProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    
    // *** new() is not available because it has a varargs (...) parameter!


    /// Non-vararg creation function.  Used primarily by language bindings.
    init(nColumns n_columns: CInt, types: UnsafeMutablePointer<GType>) {
        let rv = gtk_list_store_newv(gint(n_columns), cast(types))
        self.init(cast(rv))
    }
    /// Non-vararg creation function.  Used primarily by language bindings.
    static func listStoreNewv(nColumns n_columns: CInt, types: UnsafeMutablePointer<GType>) -> ListStoreRef! {
        let rv = gtk_list_store_newv(gint(n_columns), cast(types))
        return rv.map { ListStoreRef(cast($0)) }
    }
}

/// The `ListStore` type acts as a reference-counted owner of an underlying `GtkListStore` instance.
/// It provides the methods that can operate on this data type through `ListStoreProtocol` conformance.
/// Use `ListStore` as a strong reference or owner of a `GtkListStore` instance.
///
/// The `GtkListStore` object is a list model for use with a `GtkTreeView`
/// widget.  It implements the `GtkTreeModel` interface, and consequentialy,
/// can use all of the methods available there.  It also implements the
/// `GtkTreeSortable` interface so it can be sorted by the view.
/// Finally, it also implements the tree
/// [drag and drop][gtk3-GtkTreeView-drag-and-drop]
/// interfaces.
/// 
/// The `GtkListStore` can accept most GObject types as a column type, though
/// it can’t accept all custom types.  Internally, it will keep a copy of
/// data passed in (such as a string or a boxed pointer).  Columns that
/// accept `GObjects` are handled a little differently.  The
/// `GtkListStore` will keep a reference to the object instead of copying the
/// value.  As a result, if the object is modified, it is up to the
/// application writer to call gtk_tree_model_row_changed() to emit the
/// `GtkTreeModel`::row_changed signal.  This most commonly affects lists with
/// `GdkPixbufs` stored.
/// 
/// An example for creating a simple list store:
/// (C Language Example):
/// ```C
/// enum {
///   COLUMN_STRING,
///   COLUMN_INT,
///   COLUMN_BOOLEAN,
///   N_COLUMNS
/// };
/// 
/// {
///   GtkListStore *list_store;
///   GtkTreePath *path;
///   GtkTreeIter iter;
///   gint i;
/// 
///   list_store = gtk_list_store_new (N_COLUMNS,
///                                    G_TYPE_STRING,
///                                    G_TYPE_INT,
///                                    G_TYPE_BOOLEAN);
/// 
///   for (i = 0; i < 10; i++)
///     {
///       gchar *some_data;
/// 
///       some_data = get_some_data (i);
/// 
///       // Add a new row to the model
///       gtk_list_store_append (list_store, &iter);
///       gtk_list_store_set (list_store, &iter,
///                           COLUMN_STRING, some_data,
///                           COLUMN_INT, i,
///                           COLUMN_BOOLEAN,  FALSE,
///                           -1);
/// 
///       // As the store will keep a copy of the string internally,
///       // we free some_data.
///       g_free (some_data);
///     }
/// 
///   // Modify a particular row
///   path = gtk_tree_path_new_from_string ("4");
///   gtk_tree_model_get_iter (GTK_TREE_MODEL (list_store),
///                            &iter,
///                            path);
///   gtk_tree_path_free (path);
///   gtk_list_store_set (list_store, &iter,
///                       COLUMN_BOOLEAN, TRUE,
///                       -1);
/// }
/// ```
/// 
/// 
/// `` Performance Considerations
/// 
/// Internally, the `GtkListStore` was implemented with a linked list with
/// a tail pointer prior to GTK+ 2.6.  As a result, it was fast at data
/// insertion and deletion, and not fast at random data access.  The
/// `GtkListStore` sets the `GTK_TREE_MODEL_ITERS_PERSIST` flag, which means
/// that `GtkTreeIters` can be cached while the row exists.  Thus, if
/// access to a particular row is needed often and your code is expected to
/// run on older versions of GTK+, it is worth keeping the iter around.
/// 
/// `` Atomic Operations
/// 
/// It is important to note that only the methods
/// gtk_list_store_insert_with_values() and gtk_list_store_insert_with_valuesv()
/// are atomic, in the sense that the row is being appended to the store and the
/// values filled in in a single operation with regard to `GtkTreeModel` signaling.
/// In contrast, using e.g. gtk_list_store_append() and then gtk_list_store_set()
/// will first create a row, which triggers the `GtkTreeModel`::row-inserted signal
/// on `GtkListStore`. The row, however, is still empty, and any signal handler
/// connecting to `GtkTreeModel`::row-inserted on this particular store should be prepared
/// for the situation that the row might be empty. This is especially important
/// if you are wrapping the `GtkListStore` inside a `GtkTreeModelFilter` and are
/// using a `GtkTreeModelFilterVisibleFunc`. Using any of the non-atomic operations
/// to append rows to the `GtkListStore` will cause the
/// `GtkTreeModelFilterVisibleFunc` to be visited with an empty row first; the
/// function must be prepared for that.
/// 
/// `` GtkListStore as GtkBuildable
/// 
/// The GtkListStore implementation of the GtkBuildable interface allows
/// to specify the model columns with a <columns> element that may contain
/// multiple <column> elements, each specifying one model column. The “type”
/// attribute specifies the data type for the column.
/// 
/// Additionally, it is possible to specify content for the list store
/// in the UI definition, with the <data> element. It can contain multiple
/// <row> elements, each specifying to content for one row of the list model.
/// Inside a <row>, the <col> elements specify the content for individual cells.
/// 
/// Note that it is probably more common to define your models in the code,
/// and one might consider it a layering violation to specify the content of
/// a list store in a UI definition, data, not presentation, and common wisdom
/// is to separate the two, as far as possible.
/// 
/// An example of a UI Definition fragment for a list store:
/// (C Language Example):
/// ```C
/// <object class="GtkListStore">
///   <columns>
///     <column type="gchararray"/>
///     <column type="gchararray"/>
///     <column type="gint"/>
///   </columns>
///   <data>
///     <row>
///       <col id="0">John</col>
///       <col id="1">Doe</col>
///       <col id="2">25</col>
///     </row>
///     <row>
///       <col id="0">Johan</col>
///       <col id="1">Dahlin</col>
///       <col id="2">50</col>
///     </row>
///   </data>
/// </object>
/// ```
/// 
open class ListStore: GLibObject.Object, ListStoreProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ListStore` instance.
    public init(_ op: UnsafeMutablePointer<GtkListStore>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `ListStoreProtocol`
    /// Will retain `GtkListStore`.
    public convenience init<T: ListStoreProtocol>(_ other: T) {
        self.init(cast(other.list_store_ptr))
        g_object_ref(cast(list_store_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkListStore.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkListStore.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkListStore.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkListStore>(opaquePointer))
    }


    // *** new() is not available because it has a varargs (...) parameter!


    /// Non-vararg creation function.  Used primarily by language bindings.
    public convenience init(nColumns n_columns: CInt, types: UnsafeMutablePointer<GType>) {
        let rv = gtk_list_store_newv(gint(n_columns), cast(types))
        self.init(cast(rv))
    }

    /// Non-vararg creation function.  Used primarily by language bindings.
    public static func listStoreNewv(nColumns n_columns: CInt, types: UnsafeMutablePointer<GType>) -> ListStore! {
        let rv = gtk_list_store_newv(gint(n_columns), cast(types))
        return rv.map { ListStore(cast($0)) }
    }

}

// MARK: - no ListStore properties

public enum ListStoreSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through g_object_set_property(), g_object_set(), et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to g_object_set_property() results
    /// in ::notify being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call g_object_notify() or g_object_notify_by_pspec(),
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// g_signal_connect() call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"

}

public extension ListStoreProtocol {
    /// Connect a `ListStoreSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: ListStoreSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(list_store_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension ListStoreProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkListStore` instance.
    var list_store_ptr: UnsafeMutablePointer<GtkListStore> { return ptr.assumingMemoryBound(to: GtkListStore.self) }

    /// Appends a new row to `list_store`.  `iter` will be changed to point to this new
    /// row.  The row will be empty after this function is called.  To fill in
    /// values, you need to call gtk_list_store_set() or gtk_list_store_set_value().
    func append(iter: TreeIterProtocol) {
        gtk_list_store_append(cast(list_store_ptr), cast(iter.ptr))
    
    }

    /// Removes all rows from the list store.
    func clear() {
        gtk_list_store_clear(cast(list_store_ptr))
    
    }

    /// Creates a new row at `position`.  `iter` will be changed to point to this new
    /// row.  If `position` is -1 or is larger than the number of rows on the list,
    /// then the new row will be appended to the list. The row will be empty after
    /// this function is called.  To fill in values, you need to call
    /// gtk_list_store_set() or gtk_list_store_set_value().
    func insert(iter: TreeIterProtocol, position: CInt) {
        gtk_list_store_insert(cast(list_store_ptr), cast(iter.ptr), gint(position))
    
    }

    /// Inserts a new row after `sibling`. If `sibling` is `nil`, then the row will be
    /// prepended to the beginning of the list. `iter` will be changed to point to
    /// this new row. The row will be empty after this function is called. To fill
    /// in values, you need to call gtk_list_store_set() or gtk_list_store_set_value().
    func insertAfter(iter: TreeIterProtocol, sibling: TreeIterProtocol) {
        gtk_list_store_insert_after(cast(list_store_ptr), cast(iter.ptr), cast(sibling.ptr))
    
    }

    /// Inserts a new row before `sibling`. If `sibling` is `nil`, then the row will
    /// be appended to the end of the list. `iter` will be changed to point to this
    /// new row. The row will be empty after this function is called. To fill in
    /// values, you need to call gtk_list_store_set() or gtk_list_store_set_value().
    func insertBefore(iter: TreeIterProtocol, sibling: TreeIterProtocol) {
        gtk_list_store_insert_before(cast(list_store_ptr), cast(iter.ptr), cast(sibling.ptr))
    
    }


    // *** insertWithValues() is not available because it has a varargs (...) parameter!


    /// A variant of gtk_list_store_insert_with_values() which
    /// takes the columns and values as two arrays, instead of
    /// varargs. This function is mainly intended for
    /// language-bindings.
    func insertWithValuesv(iter: TreeIterProtocol, position: CInt, columns: UnsafeMutablePointer<CInt>, values: UnsafeMutablePointer<GValue>, nValues n_values: CInt) {
        gtk_list_store_insert_with_valuesv(cast(list_store_ptr), cast(iter.ptr), gint(position), cast(columns), cast(values), gint(n_values))
    
    }

    /// > This function is slow. Only use it for debugging and/or testing
    /// > purposes.
    /// 
    /// Checks if the given iter is a valid iter for this `GtkListStore`.
    func iterIsValid(iter: TreeIterProtocol) -> Bool {
        let rv = gtk_list_store_iter_is_valid(cast(list_store_ptr), cast(iter.ptr))
        return Bool(rv != 0)
    }

    /// Moves `iter` in `store` to the position after `position`. Note that this
    /// function only works with unsorted stores. If `position` is `nil`, `iter`
    /// will be moved to the start of the list.
    func moveAfter(iter: TreeIterProtocol, position: TreeIterProtocol) {
        gtk_list_store_move_after(cast(list_store_ptr), cast(iter.ptr), cast(position.ptr))
    
    }

    /// Moves `iter` in `store` to the position before `position`. Note that this
    /// function only works with unsorted stores. If `position` is `nil`, `iter`
    /// will be moved to the end of the list.
    func moveBefore(iter: TreeIterProtocol, position: TreeIterProtocol) {
        gtk_list_store_move_before(cast(list_store_ptr), cast(iter.ptr), cast(position.ptr))
    
    }

    /// Prepends a new row to `list_store`. `iter` will be changed to point to this new
    /// row. The row will be empty after this function is called. To fill in
    /// values, you need to call gtk_list_store_set() or gtk_list_store_set_value().
    func prepend(iter: TreeIterProtocol) {
        gtk_list_store_prepend(cast(list_store_ptr), cast(iter.ptr))
    
    }

    /// Removes the given row from the list store.  After being removed,
    /// `iter` is set to be the next valid row, or invalidated if it pointed
    /// to the last row in `list_store`.
    func remove(iter: TreeIterProtocol) -> Bool {
        let rv = gtk_list_store_remove(cast(list_store_ptr), cast(iter.ptr))
        return Bool(rv != 0)
    }

    /// Reorders `store` to follow the order indicated by `new_order`. Note that
    /// this function only works with unsorted stores.
    func reorder(newOrder new_order: UnsafeMutablePointer<CInt>) {
        gtk_list_store_reorder(cast(list_store_ptr), cast(new_order))
    
    }


    // *** set() is not available because it has a varargs (...) parameter!


    /// This function is meant primarily for `GObjects` that inherit from `GtkListStore`,
    /// and should only be used when constructing a new `GtkListStore`.  It will not
    /// function after a row has been added, or a method on the `GtkTreeModel`
    /// interface is called.
    func setColumnTypes(nColumns n_columns: CInt, types: UnsafeMutablePointer<GType>) {
        gtk_list_store_set_column_types(cast(list_store_ptr), gint(n_columns), cast(types))
    
    }

    /// See gtk_list_store_set(); this version takes a va_list for use by language
    /// bindings.
    func setValist(iter: TreeIterProtocol, varArgs var_args: CVaListPointer) {
        gtk_list_store_set_valist(cast(list_store_ptr), cast(iter.ptr), var_args)
    
    }

    /// Sets the data in the cell specified by `iter` and `column`.
    /// The type of `value` must be convertible to the type of the
    /// column.
    func setValue(iter: TreeIterProtocol, column: CInt, value: GLibObject.ValueProtocol) {
        gtk_list_store_set_value(cast(list_store_ptr), cast(iter.ptr), gint(column), cast(value.ptr))
    
    }

    /// A variant of gtk_list_store_set_valist() which
    /// takes the columns and values as two arrays, instead of
    /// varargs. This function is mainly intended for
    /// language-bindings and in case the number of columns to
    /// change is not known until run-time.
    func setValuesv(iter: TreeIterProtocol, columns: UnsafeMutablePointer<CInt>, values: UnsafeMutablePointer<GValue>, nValues n_values: CInt) {
        gtk_list_store_set_valuesv(cast(list_store_ptr), cast(iter.ptr), cast(columns), cast(values), gint(n_values))
    
    }

    /// Swaps `a` and `b` in `store`. Note that this function only works with
    /// unsorted stores.
    func swap(a: TreeIterProtocol, b: TreeIterProtocol) {
        gtk_list_store_swap(cast(list_store_ptr), cast(a.ptr), cast(b.ptr))
    
    }
}



// MARK: - LockButton Class

/// The `LockButtonProtocol` protocol exposes the methods and properties of an underlying `GtkLockButton` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LockButton`.
/// Alternatively, use `LockButtonRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkLockButton is a widget that can be used in control panels or
/// preference dialogs to allow users to obtain and revoke authorizations
/// needed to operate the controls. The required authorization is represented
/// by a `GPermission` object. Concrete implementations of `GPermission` may use
/// PolicyKit or some other authorization framework. To obtain a PolicyKit-based
/// `GPermission`, use polkit_permission_new().
/// 
/// If the user is not currently allowed to perform the action, but can obtain
/// the permission, the widget looks like this:
/// 
/// ![](lockbutton-locked.png)
/// 
/// and the user can click the button to request the permission. Depending
/// on the platform, this may pop up an authentication dialog or ask the user
/// to authenticate in some other way. Once the user has obtained the permission,
/// the widget changes to this:
/// 
/// ![](lockbutton-unlocked.png)
/// 
/// and the permission can be dropped again by clicking the button. If the user
/// is not able to obtain the permission at all, the widget looks like this:
/// 
/// ![](lockbutton-sorry.png)
/// 
/// If the user has the permission and cannot drop it, the button is hidden.
/// 
/// The text (and tooltips) that are shown in the various cases can be adjusted
/// with the `GtkLockButton`:text-lock, `GtkLockButton`:text-unlock,
/// `GtkLockButton`:tooltip-lock, `GtkLockButton`:tooltip-unlock and
/// `GtkLockButton`:tooltip-not-authorized properties.
public protocol LockButtonProtocol: ButtonProtocol {
    /// Untyped pointer to the underlying `GtkLockButton` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkLockButton` instance.
    var lock_button_ptr: UnsafeMutablePointer<GtkLockButton> { get }
}

/// The `LockButtonRef` type acts as a lightweight Swift reference to an underlying `GtkLockButton` instance.
/// It exposes methods that can operate on this data type through `LockButtonProtocol` conformance.
/// Use `LockButtonRef` only as an `unowned` reference to an existing `GtkLockButton` instance.
///
/// GtkLockButton is a widget that can be used in control panels or
/// preference dialogs to allow users to obtain and revoke authorizations
/// needed to operate the controls. The required authorization is represented
/// by a `GPermission` object. Concrete implementations of `GPermission` may use
/// PolicyKit or some other authorization framework. To obtain a PolicyKit-based
/// `GPermission`, use polkit_permission_new().
/// 
/// If the user is not currently allowed to perform the action, but can obtain
/// the permission, the widget looks like this:
/// 
/// ![](lockbutton-locked.png)
/// 
/// and the user can click the button to request the permission. Depending
/// on the platform, this may pop up an authentication dialog or ask the user
/// to authenticate in some other way. Once the user has obtained the permission,
/// the widget changes to this:
/// 
/// ![](lockbutton-unlocked.png)
/// 
/// and the permission can be dropped again by clicking the button. If the user
/// is not able to obtain the permission at all, the widget looks like this:
/// 
/// ![](lockbutton-sorry.png)
/// 
/// If the user has the permission and cannot drop it, the button is hidden.
/// 
/// The text (and tooltips) that are shown in the various cases can be adjusted
/// with the `GtkLockButton`:text-lock, `GtkLockButton`:text-unlock,
/// `GtkLockButton`:tooltip-lock, `GtkLockButton`:tooltip-unlock and
/// `GtkLockButton`:tooltip-not-authorized properties.
public struct LockButtonRef: LockButtonProtocol {
    /// Untyped pointer to the underlying `GtkLockButton` instance.
    /// For type-safe access, use the generated, typed pointer `lock_button_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension LockButtonRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkLockButton>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `LockButtonProtocol`
    init<T: LockButtonProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new lock button which reflects the `permission`.
    init( permission: PermissionProtocol) {
        let rv = gtk_lock_button_new(cast(permission.ptr))
        self.init(cast(rv))
    }
}

/// The `LockButton` type acts as a reference-counted owner of an underlying `GtkLockButton` instance.
/// It provides the methods that can operate on this data type through `LockButtonProtocol` conformance.
/// Use `LockButton` as a strong reference or owner of a `GtkLockButton` instance.
///
/// GtkLockButton is a widget that can be used in control panels or
/// preference dialogs to allow users to obtain and revoke authorizations
/// needed to operate the controls. The required authorization is represented
/// by a `GPermission` object. Concrete implementations of `GPermission` may use
/// PolicyKit or some other authorization framework. To obtain a PolicyKit-based
/// `GPermission`, use polkit_permission_new().
/// 
/// If the user is not currently allowed to perform the action, but can obtain
/// the permission, the widget looks like this:
/// 
/// ![](lockbutton-locked.png)
/// 
/// and the user can click the button to request the permission. Depending
/// on the platform, this may pop up an authentication dialog or ask the user
/// to authenticate in some other way. Once the user has obtained the permission,
/// the widget changes to this:
/// 
/// ![](lockbutton-unlocked.png)
/// 
/// and the permission can be dropped again by clicking the button. If the user
/// is not able to obtain the permission at all, the widget looks like this:
/// 
/// ![](lockbutton-sorry.png)
/// 
/// If the user has the permission and cannot drop it, the button is hidden.
/// 
/// The text (and tooltips) that are shown in the various cases can be adjusted
/// with the `GtkLockButton`:text-lock, `GtkLockButton`:text-unlock,
/// `GtkLockButton`:tooltip-lock, `GtkLockButton`:tooltip-unlock and
/// `GtkLockButton`:tooltip-not-authorized properties.
open class LockButton: Button, LockButtonProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `LockButton` instance.
    public init(_ op: UnsafeMutablePointer<GtkLockButton>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `LockButtonProtocol`
    /// Will retain `GtkLockButton`.
    public convenience init<T: LockButtonProtocol>(_ other: T) {
        self.init(cast(other.lock_button_ptr))
        g_object_ref(cast(lock_button_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkLockButton.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkLockButton.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkLockButton.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkLockButton>(opaquePointer))
    }

    /// Creates a new lock button which reflects the `permission`.
    public convenience init( permission: PermissionProtocol) {
        let rv = gtk_lock_button_new(cast(permission.ptr))
        self.init(cast(rv))
    }


}

public enum LockButtonPropertyName: String, PropertyNameProtocol {
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
    /// If `true`, the button will ignore the `GtkSettings`:gtk-button-images
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
    /// Whether to expand in both directions. Setting this sets both `GtkWidget`:hexpand and `GtkWidget`:vexpand
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
    /// Enables or disables the emission of `GtkWidget`::query-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget`::query-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See gtk_widget_set_hexpand().
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget`:hexpand property. See gtk_widget_get_hexpand_set().
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
    /// gtk_widget_set_size_request() for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginTop = "margin-top"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See gtk_widget_set_opacity() for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case permission = "permission"
    case receivesDefault = "receives-default"
    case relief = "relief"
    case resizeMode = "resize-mode"
    /// The scale factor of the widget. See gtk_widget_get_scale_factor() for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    case textLock = "text-lock"
    case textUnlock = "text-unlock"
    case tooltipLock = "tooltip-lock"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language][PangoMarkupFormat].
    /// Also see gtk_tooltip_set_markup().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    case tooltipNotAuthorized = "tooltip-not-authorized"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see gtk_tooltip_set_text().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    case tooltipUnlock = "tooltip-unlock"

    ///
    /// **use-stock is deprecated:**
    /// This method is deprecated.
    case useStock = "use-stock"
    case useUnderline = "use-underline"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See gtk_widget_set_vexpand().
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget`:vexpand property. See gtk_widget_get_vexpand_set().
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

public extension LockButtonProtocol {
    /// Bind a `LockButtonPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: LockButtonPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(lock_button_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum LockButtonSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// The ::activate signal on GtkButton is an action signal and
    /// emitting it causes the button to animate press then release.
    /// Applications should never connect to this signal, but use the
    /// `GtkButton`::clicked signal.
    case activate = "activate"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    case add = "add"
    /// The ::button-press-event signal will be emitted when a button
    /// (typically from a mouse) is pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonPressEvent = "button-press-event"
    /// The ::button-release-event signal will be emitted when a button
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
    /// The ::child-notify signal is emitted for each
    /// [child property][child-properties]  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// Emitted when the button has been activated (pressed and released).
    case clicked = "clicked"
    /// The ::composited-changed signal is emitted when the composited
    /// status of `widgets` screen changes.
    /// See gdk_screen_is_composited().
    ///
    /// **composited-changed is deprecated:**
    /// Use GdkScreen::composited-changed instead.
    case compositedChanged = "composited-changed"
    /// The ::configure-event signal will be emitted when the size, position or
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
    /// The ::delete-event signal is emitted if a user requests that
    /// a toplevel window is closed. The default handler for this signal
    /// destroys the window. Connecting gtk_widget_hide_on_delete() to
    /// this signal will cause the window to be hidden instead, so that
    /// it can later be shown again without reconstructing it.
    case deleteEvent = "delete-event"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The ::destroy-event signal is emitted when a `GdkWindow` is destroyed.
    /// You rarely get this signal, because most widgets disconnect themselves
    /// from their window before they destroy it, so no widget owns the
    /// window at destroy time.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case destroyEvent = "destroy-event"
    /// The ::direction-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The ::drag-begin signal is emitted on the drag source when a drag is
    /// started. A typical reason to connect to this signal is to set up a
    /// custom drag icon with e.g. gtk_drag_source_set_icon_pixbuf().
    /// 
    /// Note that some widgets set up a drag icon in the default handler of
    /// this signal, so you may have to use g_signal_connect_after() to
    /// override what the default handler did.
    case dragBegin = "drag-begin"
    /// The ::drag-data-delete signal is emitted on the drag source when a drag
    /// with the action `GDK_ACTION_MOVE` is successfully completed. The signal
    /// handler is responsible for deleting the data that has been dropped. What
    /// "delete" means depends on the context of the drag operation.
    case dragDataDelete = "drag-data-delete"
    /// The ::drag-data-get signal is emitted on the drag source when the drop
    /// site requests the data which is dragged. It is the responsibility of
    /// the signal handler to fill `data` with the data in the format which
    /// is indicated by `info`. See gtk_selection_data_set() and
    /// gtk_selection_data_set_text().
    case dragDataGet = "drag-data-get"
    /// The ::drag-data-received signal is emitted on the drop site when the
    /// dragged data has been received. If the data was received in order to
    /// determine whether the drop will be accepted, the handler is expected
    /// to call gdk_drag_status() and not finish the drag.
    /// If the data was received in response to a `GtkWidget`::drag-drop signal
    /// (and this is the last target to be received), the handler for this
    /// signal is expected to process the received data and then call
    /// gtk_drag_finish(), setting the `success` parameter depending on
    /// whether the data was processed successfully.
    /// 
    /// Applications must create some means to determine why the signal was emitted
    /// and therefore whether to call gdk_drag_status() or gtk_drag_finish().
    /// 
    /// The handler may inspect the selected action with
    /// gdk_drag_context_get_selected_action() before calling
    /// gtk_drag_finish(), e.g. to implement `GDK_ACTION_ASK` as
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
    /// The ::drag-drop signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the cursor position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// Otherwise, the handler returns `true`. In this case, the handler must
    /// ensure that gtk_drag_finish() is called to let the source know that
    /// the drop is done. The call to gtk_drag_finish() can be done either
    /// directly or in a `GtkWidget`::drag-data-received handler which gets
    /// triggered by calling gtk_drag_get_data() to receive the data for one
    /// or more of the supported targets.
    case dragDrop = "drag-drop"
    /// The ::drag-end signal is emitted on the drag source when a drag is
    /// finished.  A typical reason to connect to this signal is to undo
    /// things done in `GtkWidget`::drag-begin.
    case dragEnd = "drag-end"
    /// The ::drag-failed signal is emitted on the drag source when a drag has
    /// failed. The signal handler may hook custom code to handle a failed DnD
    /// operation based on the type of error, it returns `true` is the failure has
    /// been already handled (not showing the default "drag operation failed"
    /// animation), otherwise it returns `false`.
    case dragFailed = "drag-failed"
    /// The ::drag-leave signal is emitted on the drop site when the cursor
    /// leaves the widget. A typical reason to connect to this signal is to
    /// undo things done in `GtkWidget`::drag-motion, e.g. undo highlighting
    /// with gtk_drag_unhighlight().
    /// 
    /// 
    /// Likewise, the `GtkWidget`::drag-leave signal is also emitted before the
    /// ::drag-drop signal, for instance to allow cleaning up of a preview item
    /// created in the `GtkWidget`::drag-motion signal handler.
    case dragLeave = "drag-leave"
    /// The ::drag-motion signal is emitted on the drop site when the user
    /// moves the cursor over the widget during a drag. The signal handler
    /// must determine whether the cursor position is in a drop zone or not.
    /// If it is not in a drop zone, it returns `false` and no further processing
    /// is necessary. Otherwise, the handler returns `true`. In this case, the
    /// handler is responsible for providing the necessary information for
    /// displaying feedback to the user, by calling gdk_drag_status().
    /// 
    /// If the decision whether the drop will be accepted or rejected can't be
    /// made based solely on the cursor position and the type of the data, the
    /// handler may inspect the dragged data by calling gtk_drag_get_data() and
    /// defer the gdk_drag_status() call to the `GtkWidget`::drag-data-received
    /// handler. Note that you must pass `GTK_DEST_DEFAULT_DROP`,
    /// `GTK_DEST_DEFAULT_MOTION` or `GTK_DEST_DEFAULT_ALL` to gtk_drag_dest_set()
    /// when using the drag-motion signal that way.
    /// 
    /// Also note that there is no drag-enter signal. The drag receiver has to
    /// keep track of whether he has received any drag-motion signals since the
    /// last `GtkWidget`::drag-leave and if not, treat the drag-motion signal as
    /// an "enter" signal. Upon an "enter", the handler will typically highlight
    /// the drop site with gtk_drag_highlight().
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
    /// gtk_widget_get_allocated_width() and
    /// gtk_widget_get_allocated_height().
    /// 
    /// Signal handlers connected to this signal can modify the cairo
    /// context passed as `cr` in any way they like and don't need to
    /// restore it. The signal emission takes care of calling cairo_save()
    /// before and cairo_restore() after invoking the handler.
    /// 
    /// The signal handler will get a `cr` with a clip region already set to the
    /// widget's dirty region, i.e. to the area that needs repainting.  Complicated
    /// widgets that want to avoid redrawing themselves completely can get the full
    /// extents of the clip region with gdk_cairo_get_clip_rectangle(), or they can
    /// get a finer-grained representation of the dirty region with
    /// cairo_copy_clip_rectangle_list().
    case draw = "draw"
    /// Emitted when the pointer enters the button.
    ///
    /// **enter is deprecated:**
    /// Use the #GtkWidget::enter-notify-event signal.
    case enter = "enter"
    /// The ::enter-notify-event will be emitted when the pointer enters
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_ENTER_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case enterNotifyEvent = "enter-notify-event"
    /// The GTK+ main loop will emit three signals for each GDK event delivered
    /// to a widget: one generic ::event signal, another, more specific,
    /// signal that matches the type of event delivered (e.g.
    /// `GtkWidget`::key-press-event) and finally a generic
    /// `GtkWidget`::event-after signal.
    case event = "event"
    /// After the emission of the `GtkWidget`::event signal and (optionally)
    /// the second more specific signal, ::event-after will be emitted
    /// regardless of the previous two signals handlers return values.
    case eventAfter = "event-after"
    case focus = "focus"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The ::focus-in-event signal will be emitted when the keyboard focus
    /// enters the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusInEvent = "focus-in-event"
    /// The ::focus-out-event signal will be emitted when the keyboard focus
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
    /// The ::grab-notify signal is emitted when a widget becomes
    /// shadowed by a GTK+ grab (not a pointer or keyboard grab) on
    /// another widget, or when it becomes unshadowed due to a grab
    /// being removed.
    /// 
    /// A widget is shadowed by a gtk_grab_add() when the topmost
    /// grab widget in the grab stack of its window group is not
    /// its ancestor.
    case grabNotify = "grab-notify"
    /// The ::hide signal is emitted when `widget` is hidden, for example with
    /// gtk_widget_hide().
    case hide = "hide"
    /// The ::hierarchy-changed signal is emitted when the
    /// anchored state of a widget changes. A widget is
    /// “anchored” when its toplevel
    /// ancestor is a `GtkWindow`. This signal is emitted when
    /// a widget changes from un-anchored to anchored or vice-versa.
    case hierarchyChanged = "hierarchy-changed"
    /// The ::key-press-event signal is emitted when a key is pressed. The signal
    /// emission will reoccur at the key-repeat rate when the key is kept pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyPressEvent = "key-press-event"
    /// The ::key-release-event signal is emitted when a key is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyReleaseEvent = "key-release-event"
    /// Gets emitted if keyboard navigation fails.
    /// See gtk_widget_keynav_failed() for details.
    case keynavFailed = "keynav-failed"
    /// Emitted when the pointer leaves the button.
    ///
    /// **leave is deprecated:**
    /// Use the #GtkWidget::leave-notify-event signal.
    case leave = "leave"
    /// The ::leave-notify-event will be emitted when the pointer leaves
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_LEAVE_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case leaveNotifyEvent = "leave-notify-event"
    /// The ::map signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// gtk_widget_set_visible()) and all its parents up to the toplevel widget
    /// are also visible. Once the map has occurred, `GtkWidget`::map-event will
    /// be emitted.
    /// 
    /// The ::map signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget`::unmap.
    case map = "map"
    /// The ::map-event signal will be emitted when the `widget`'s window is
    /// mapped. A window is mapped when it becomes visible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case mapEvent = "map-event"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// The ::motion-notify-event signal is emitted when the pointer moves
    /// over the widget's `GdkWindow`.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_POINTER_MOTION_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case motionNotifyEvent = "motion-notify-event"
    case moveFocus = "move-focus"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through g_object_set_property(), g_object_set(), et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to g_object_set_property() results
    /// in ::notify being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call g_object_notify() or g_object_notify_by_pspec(),
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// g_signal_connect() call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The ::parent-set signal is emitted when a new parent
    /// has been set on a widget.
    case parentSet = "parent-set"
    /// This signal gets emitted whenever a widget should pop up a context
    /// menu. This usually happens through the standard key binding mechanism;
    /// by pressing a certain key while a widget is focused, the user can cause
    /// the widget to pop up a menu.  For example, the `GtkEntry` widget creates
    /// a menu with clipboard commands. See the
    /// [Popup Menu Migration Checklist][checklist-popup-menu]
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
    /// g_object_notify() to emit property-changed
    /// notifications. `AtkObject`::property-changed is needed by the
    /// implementation of atk_add_global_event_listener() because GObject
    /// notify doesn't support emission hooks.
    case propertyChange = "property-change"
    /// The ::property-notify-event signal will be emitted when a property on
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
    /// Emitted when `GtkWidget`:has-tooltip is `true` and the hover timeout
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
    /// The ::realize signal is emitted when `widget` is associated with a
    /// `GdkWindow`, which means that gtk_widget_realize() has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// Emitted when the button is released.
    ///
    /// **released is deprecated:**
    /// Use the #GtkWidget::button-release-event signal.
    case released = "released"
    case remove = "remove"
    /// The ::screen-changed signal gets emitted when the
    /// screen of a widget has changed.
    case screenChanged = "screen-changed"
    /// The ::scroll-event signal is emitted when a button in the 4 to 7
    /// range is pressed. Wheel mice are usually configured to generate
    /// button press events for buttons 4 and 5 when the wheel is turned.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_SCROLL_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case scrollEvent = "scroll-event"
    /// The ::selection-clear-event signal will be emitted when the
    /// the `widget`'s window has lost ownership of a selection.
    case selectionClearEvent = "selection-clear-event"
    case selectionGet = "selection-get"
    case selectionNotifyEvent = "selection-notify-event"
    case selectionReceived = "selection-received"
    /// The ::selection-request-event signal will be emitted when
    /// another client requests ownership of the selection owned by
    /// the `widget`'s window.
    case selectionRequestEvent = "selection-request-event"
    case setFocusChild = "set-focus-child"
    /// The ::show signal is emitted when `widget` is shown, for example with
    /// gtk_widget_show().
    case show = "show"
    case showHelp = "show-help"
    case sizeAllocate = "size-allocate"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The ::state-changed signal is emitted when the widget state changes.
    /// See gtk_widget_get_state().
    ///
    /// **state-changed is deprecated:**
    /// Use #GtkWidget::state-flags-changed instead.
    case stateChanged = "state-changed"
    /// The ::state-flags-changed signal is emitted when the widget state
    /// changes, see gtk_widget_get_state_flags().
    case stateFlagsChanged = "state-flags-changed"
    /// The ::style-set signal is emitted when a new style has been set
    /// on a widget. Note that style-modifying functions like
    /// gtk_widget_modify_base() also cause this signal to be emitted.
    /// 
    /// Note that this signal is emitted for changes to the deprecated
    /// `GtkStyle`. To track changes to the `GtkStyleContext` associated
    /// with a widget, use the `GtkWidget`::style-updated signal.
    ///
    /// **style-set is deprecated:**
    /// Use the #GtkWidget::style-updated signal
    case styleSet = "style-set"
    /// The ::style-updated signal is a convenience signal that is emitted when the
    /// `GtkStyleContext`::changed signal is emitted on the `widget`'s associated
    /// `GtkStyleContext` as returned by gtk_widget_get_style_context().
    /// 
    /// Note that style-modifying functions like gtk_widget_override_color() also
    /// cause this signal to be emitted.
    case styleUpdated = "style-updated"
    case touchEvent = "touch-event"
    /// The ::unmap signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As ::unmap indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The ::unmap-event signal will be emitted when the `widget`'s window is
    /// unmapped. A window is unmapped when it becomes invisible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case unmapEvent = "unmap-event"
    /// The ::unrealize signal is emitted when the `GdkWindow` associated with
    /// `widget` is destroyed, which means that gtk_widget_unrealize() has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
    /// The ::visibility-notify-event will be emitted when the `widget`'s
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
    /// The ::window-state-event will be emitted when the state of the
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
    /// If `true`, the button will ignore the `GtkSettings`:gtk-button-images
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
    /// Whether to expand in both directions. Setting this sets both `GtkWidget`:hexpand and `GtkWidget`:vexpand
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
    /// Enables or disables the emission of `GtkWidget`::query-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget`::query-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See gtk_widget_set_hexpand().
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget`:hexpand property. See gtk_widget_get_hexpand_set().
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
    /// gtk_widget_set_size_request() for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case notifyMarginLeft = "notify::margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case notifyMarginRight = "notify::margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginTop = "notify::margin-top"
    case notifyName = "notify::name"
    case notifyNoShowAll = "notify::no-show-all"
    /// The requested opacity of the widget. See gtk_widget_set_opacity() for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case notifyOpacity = "notify::opacity"
    case notifyParent = "notify::parent"
    case notifyPermission = "notify::permission"
    case notifyReceivesDefault = "notify::receives-default"
    case notifyRelief = "notify::relief"
    case notifyResizeMode = "notify::resize-mode"
    /// The scale factor of the widget. See gtk_widget_get_scale_factor() for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case notifyStyle = "notify::style"
    case notifyTextLock = "notify::text-lock"
    case notifyTextUnlock = "notify::text-unlock"
    case notifyTooltipLock = "notify::tooltip-lock"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language][PangoMarkupFormat].
    /// Also see gtk_tooltip_set_markup().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    case notifyTooltipNotAuthorized = "notify::tooltip-not-authorized"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see gtk_tooltip_set_text().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    case notifyTooltipUnlock = "notify::tooltip-unlock"

    ///
    /// **use-stock is deprecated:**
    /// This method is deprecated.
    case notifyUseStock = "notify::use-stock"
    case notifyUseUnderline = "notify::use-underline"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    /// Whether to expand vertically. See gtk_widget_set_vexpand().
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget`:vexpand property. See gtk_widget_get_vexpand_set().
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

public extension LockButtonProtocol {
    /// Connect a `LockButtonSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: LockButtonSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(lock_button_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension LockButtonProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLockButton` instance.
    var lock_button_ptr: UnsafeMutablePointer<GtkLockButton> { return ptr.assumingMemoryBound(to: GtkLockButton.self) }

    /// Obtains the `GPermission` object that controls `button`.
    func getPermission() -> UnsafeMutablePointer<GPermission>! {
        let rv = gtk_lock_button_get_permission(cast(lock_button_ptr))
        return cast(rv)
    }

    /// Sets the `GPermission` object that controls `button`.
    func set(permission: PermissionProtocol) {
        gtk_lock_button_set_permission(cast(lock_button_ptr), cast(permission.ptr))
    
    }
    var permission: UnsafeMutablePointer<GPermission>! {
        /// Obtains the `GPermission` object that controls `button`.
        get {
            let rv = gtk_lock_button_get_permission(cast(lock_button_ptr))
            return cast(rv)
        }
        /// Sets the `GPermission` object that controls `button`.
        nonmutating set {
            gtk_lock_button_set_permission(cast(lock_button_ptr), cast(newValue))
        }
    }
}



// MARK: - LockButtonAccessible Class

/// The `LockButtonAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkLockButtonAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LockButtonAccessible`.
/// Alternatively, use `LockButtonAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol LockButtonAccessibleProtocol: ButtonAccessibleProtocol {
    /// Untyped pointer to the underlying `GtkLockButtonAccessible` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkLockButtonAccessible` instance.
    var lock_button_accessible_ptr: UnsafeMutablePointer<GtkLockButtonAccessible> { get }
}

/// The `LockButtonAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkLockButtonAccessible` instance.
/// It exposes methods that can operate on this data type through `LockButtonAccessibleProtocol` conformance.
/// Use `LockButtonAccessibleRef` only as an `unowned` reference to an existing `GtkLockButtonAccessible` instance.
///

public struct LockButtonAccessibleRef: LockButtonAccessibleProtocol {
    /// Untyped pointer to the underlying `GtkLockButtonAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `lock_button_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension LockButtonAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkLockButtonAccessible>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `LockButtonAccessibleProtocol`
    init<T: LockButtonAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessibleProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessibleProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessibleProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessibleProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessibleProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `LockButtonAccessible` type acts as a reference-counted owner of an underlying `GtkLockButtonAccessible` instance.
/// It provides the methods that can operate on this data type through `LockButtonAccessibleProtocol` conformance.
/// Use `LockButtonAccessible` as a strong reference or owner of a `GtkLockButtonAccessible` instance.
///

open class LockButtonAccessible: ButtonAccessible, LockButtonAccessibleProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `LockButtonAccessible` instance.
    public init(_ op: UnsafeMutablePointer<GtkLockButtonAccessible>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `LockButtonAccessibleProtocol`
    /// Will retain `GtkLockButtonAccessible`.
    public convenience init<T: LockButtonAccessibleProtocol>(_ other: T) {
        self.init(cast(other.lock_button_accessible_ptr))
        g_object_ref(cast(lock_button_accessible_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessibleProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkLockButtonAccessible.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessibleProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkLockButtonAccessible.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessibleProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkLockButtonAccessible.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessibleProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkLockButtonAccessible>(opaquePointer))
    }



}

public enum LockButtonAccessiblePropertyName: String, PropertyNameProtocol {
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

public extension LockButtonAccessibleProtocol {
    /// Bind a `LockButtonAccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: LockButtonAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(lock_button_accessible_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum LockButtonAccessibleSignalName: String, SignalNameProtocol {
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
    /// its value set through g_object_set_property(), g_object_set(), et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to g_object_set_property() results
    /// in ::notify being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call g_object_notify() or g_object_notify_by_pspec(),
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// g_signal_connect() call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
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
    /// g_object_notify() to emit property-changed
    /// notifications. `AtkObject`::property-changed is needed by the
    /// implementation of atk_add_global_event_listener() because GObject
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

public extension LockButtonAccessibleProtocol {
    /// Connect a `LockButtonAccessibleSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: LockButtonAccessibleSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(lock_button_accessible_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension LockButtonAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLockButtonAccessible` instance.
    var lock_button_accessible_ptr: UnsafeMutablePointer<GtkLockButtonAccessible> { return ptr.assumingMemoryBound(to: GtkLockButtonAccessible.self) }

}



// MARK: - Menu Class

/// The `MenuProtocol` protocol exposes the methods and properties of an underlying `GtkMenu` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Menu`.
/// Alternatively, use `MenuRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GtkMenu` is a `GtkMenuShell` that implements a drop down menu
/// consisting of a list of `GtkMenuItem` objects which can be navigated
/// and activated by the user to perform application functions.
/// 
/// A `GtkMenu` is most commonly dropped down by activating a
/// `GtkMenuItem` in a `GtkMenuBar` or popped up by activating a
/// `GtkMenuItem` in another `GtkMenu`.
/// 
/// A `GtkMenu` can also be popped up by activating a `GtkComboBox`.
/// Other composite widgets such as the `GtkNotebook` can pop up a
/// `GtkMenu` as well.
/// 
/// Applications can display a `GtkMenu` as a popup menu by calling the
/// gtk_menu_popup() function.  The example below shows how an application
/// can pop up a menu when the 3rd mouse button is pressed.
/// 
/// ``` Connecting the popup signal handler.
/// 
/// (C Language Example):
/// ```C
///   // connect our handler which will popup the menu
///   g_signal_connect_swapped (window, "button_press_event",
/// G_CALLBACK (my_popup_handler), menu);
/// ```
/// 
/// 
/// ``` Signal handler which displays a popup menu.
/// 
/// (C Language Example):
/// ```C
/// static gint
/// my_popup_handler (GtkWidget *widget, GdkEvent *event)
/// {
///   GtkMenu *menu;
///   GdkEventButton *event_button;
/// 
///   g_return_val_if_fail (widget != NULL, FALSE);
///   g_return_val_if_fail (GTK_IS_MENU (widget), FALSE);
///   g_return_val_if_fail (event != NULL, FALSE);
/// 
///   // The "widget" is the menu that was supplied when
///   // g_signal_connect_swapped() was called.
///   menu = GTK_MENU (widget);
/// 
///   if (event->type == GDK_BUTTON_PRESS)
///     {
///       event_button = (GdkEventButton *) event;
///       if (event_button->button == GDK_BUTTON_SECONDARY)
///         {
///           gtk_menu_popup (menu, NULL, NULL, NULL, NULL,
///                           event_button->button, event_button->time);
///           return TRUE;
///         }
///     }
/// 
///   return FALSE;
/// }
/// ```
/// 
/// 
/// `` CSS nodes
/// 
/// ```
/// menu
/// ├── arrow.top
/// ├── <child>
/// ┊
/// ├── <child>
/// ╰── arrow.bottom
/// ```
/// 
/// 
/// The main CSS node of GtkMenu has name menu, and there are two subnodes
/// with name arrow, for scrolling menu arrows. These subnodes get the
/// .top and .bottom style classes.
public protocol MenuProtocol: MenuShellProtocol {
    /// Untyped pointer to the underlying `GtkMenu` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkMenu` instance.
    var menu_ptr: UnsafeMutablePointer<GtkMenu> { get }
}

/// The `MenuRef` type acts as a lightweight Swift reference to an underlying `GtkMenu` instance.
/// It exposes methods that can operate on this data type through `MenuProtocol` conformance.
/// Use `MenuRef` only as an `unowned` reference to an existing `GtkMenu` instance.
///
/// A `GtkMenu` is a `GtkMenuShell` that implements a drop down menu
/// consisting of a list of `GtkMenuItem` objects which can be navigated
/// and activated by the user to perform application functions.
/// 
/// A `GtkMenu` is most commonly dropped down by activating a
/// `GtkMenuItem` in a `GtkMenuBar` or popped up by activating a
/// `GtkMenuItem` in another `GtkMenu`.
/// 
/// A `GtkMenu` can also be popped up by activating a `GtkComboBox`.
/// Other composite widgets such as the `GtkNotebook` can pop up a
/// `GtkMenu` as well.
/// 
/// Applications can display a `GtkMenu` as a popup menu by calling the
/// gtk_menu_popup() function.  The example below shows how an application
/// can pop up a menu when the 3rd mouse button is pressed.
/// 
/// ``` Connecting the popup signal handler.
/// 
/// (C Language Example):
/// ```C
///   // connect our handler which will popup the menu
///   g_signal_connect_swapped (window, "button_press_event",
/// G_CALLBACK (my_popup_handler), menu);
/// ```
/// 
/// 
/// ``` Signal handler which displays a popup menu.
/// 
/// (C Language Example):
/// ```C
/// static gint
/// my_popup_handler (GtkWidget *widget, GdkEvent *event)
/// {
///   GtkMenu *menu;
///   GdkEventButton *event_button;
/// 
///   g_return_val_if_fail (widget != NULL, FALSE);
///   g_return_val_if_fail (GTK_IS_MENU (widget), FALSE);
///   g_return_val_if_fail (event != NULL, FALSE);
/// 
///   // The "widget" is the menu that was supplied when
///   // g_signal_connect_swapped() was called.
///   menu = GTK_MENU (widget);
/// 
///   if (event->type == GDK_BUTTON_PRESS)
///     {
///       event_button = (GdkEventButton *) event;
///       if (event_button->button == GDK_BUTTON_SECONDARY)
///         {
///           gtk_menu_popup (menu, NULL, NULL, NULL, NULL,
///                           event_button->button, event_button->time);
///           return TRUE;
///         }
///     }
/// 
///   return FALSE;
/// }
/// ```
/// 
/// 
/// `` CSS nodes
/// 
/// ```
/// menu
/// ├── arrow.top
/// ├── <child>
/// ┊
/// ├── <child>
/// ╰── arrow.bottom
/// ```
/// 
/// 
/// The main CSS node of GtkMenu has name menu, and there are two subnodes
/// with name arrow, for scrolling menu arrows. These subnodes get the
/// .top and .bottom style classes.
public struct MenuRef: MenuProtocol {
    /// Untyped pointer to the underlying `GtkMenu` instance.
    /// For type-safe access, use the generated, typed pointer `menu_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MenuRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkMenu>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MenuProtocol`
    init<T: MenuProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkMenu`
    init() {
        let rv = gtk_menu_new()
        self.init(cast(rv))
    }

    /// Creates a `GtkMenu` and populates it with menu items and
    /// submenus according to `model`.
    /// 
    /// The created menu items are connected to actions found in the
    /// `GtkApplicationWindow` to which the menu belongs - typically
    /// by means of being attached to a widget (see gtk_menu_attach_to_widget())
    /// that is contained within the `GtkApplicationWindows` widget hierarchy.
    /// 
    /// Actions can also be added using gtk_widget_insert_action_group() on the menu's
    /// attach widget or on any of its parent widgets.
    init(model: MenuModelProtocol) {
        let rv = gtk_menu_new_from_model(cast(model.ptr))
        self.init(cast(rv))
    }
    /// Creates a `GtkMenu` and populates it with menu items and
    /// submenus according to `model`.
    /// 
    /// The created menu items are connected to actions found in the
    /// `GtkApplicationWindow` to which the menu belongs - typically
    /// by means of being attached to a widget (see gtk_menu_attach_to_widget())
    /// that is contained within the `GtkApplicationWindows` widget hierarchy.
    /// 
    /// Actions can also be added using gtk_widget_insert_action_group() on the menu's
    /// attach widget or on any of its parent widgets.
    static func newFrom(model: MenuModelProtocol) -> MenuRef! {
        let rv = gtk_menu_new_from_model(cast(model.ptr))
        return rv.map { MenuRef(cast($0)) }
    }
}

/// The `Menu` type acts as a reference-counted owner of an underlying `GtkMenu` instance.
/// It provides the methods that can operate on this data type through `MenuProtocol` conformance.
/// Use `Menu` as a strong reference or owner of a `GtkMenu` instance.
///
/// A `GtkMenu` is a `GtkMenuShell` that implements a drop down menu
/// consisting of a list of `GtkMenuItem` objects which can be navigated
/// and activated by the user to perform application functions.
/// 
/// A `GtkMenu` is most commonly dropped down by activating a
/// `GtkMenuItem` in a `GtkMenuBar` or popped up by activating a
/// `GtkMenuItem` in another `GtkMenu`.
/// 
/// A `GtkMenu` can also be popped up by activating a `GtkComboBox`.
/// Other composite widgets such as the `GtkNotebook` can pop up a
/// `GtkMenu` as well.
/// 
/// Applications can display a `GtkMenu` as a popup menu by calling the
/// gtk_menu_popup() function.  The example below shows how an application
/// can pop up a menu when the 3rd mouse button is pressed.
/// 
/// ``` Connecting the popup signal handler.
/// 
/// (C Language Example):
/// ```C
///   // connect our handler which will popup the menu
///   g_signal_connect_swapped (window, "button_press_event",
/// G_CALLBACK (my_popup_handler), menu);
/// ```
/// 
/// 
/// ``` Signal handler which displays a popup menu.
/// 
/// (C Language Example):
/// ```C
/// static gint
/// my_popup_handler (GtkWidget *widget, GdkEvent *event)
/// {
///   GtkMenu *menu;
///   GdkEventButton *event_button;
/// 
///   g_return_val_if_fail (widget != NULL, FALSE);
///   g_return_val_if_fail (GTK_IS_MENU (widget), FALSE);
///   g_return_val_if_fail (event != NULL, FALSE);
/// 
///   // The "widget" is the menu that was supplied when
///   // g_signal_connect_swapped() was called.
///   menu = GTK_MENU (widget);
/// 
///   if (event->type == GDK_BUTTON_PRESS)
///     {
///       event_button = (GdkEventButton *) event;
///       if (event_button->button == GDK_BUTTON_SECONDARY)
///         {
///           gtk_menu_popup (menu, NULL, NULL, NULL, NULL,
///                           event_button->button, event_button->time);
///           return TRUE;
///         }
///     }
/// 
///   return FALSE;
/// }
/// ```
/// 
/// 
/// `` CSS nodes
/// 
/// ```
/// menu
/// ├── arrow.top
/// ├── <child>
/// ┊
/// ├── <child>
/// ╰── arrow.bottom
/// ```
/// 
/// 
/// The main CSS node of GtkMenu has name menu, and there are two subnodes
/// with name arrow, for scrolling menu arrows. These subnodes get the
/// .top and .bottom style classes.
open class Menu: MenuShell, MenuProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Menu` instance.
    public init(_ op: UnsafeMutablePointer<GtkMenu>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `MenuProtocol`
    /// Will retain `GtkMenu`.
    public convenience init<T: MenuProtocol>(_ other: T) {
        self.init(cast(other.menu_ptr))
        g_object_ref(cast(menu_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkMenu.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkMenu.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkMenu.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkMenu>(opaquePointer))
    }

    /// Creates a new `GtkMenu`
    public convenience init() {
        let rv = gtk_menu_new()
        self.init(cast(rv))
    }

    /// Creates a `GtkMenu` and populates it with menu items and
    /// submenus according to `model`.
    /// 
    /// The created menu items are connected to actions found in the
    /// `GtkApplicationWindow` to which the menu belongs - typically
    /// by means of being attached to a widget (see gtk_menu_attach_to_widget())
    /// that is contained within the `GtkApplicationWindows` widget hierarchy.
    /// 
    /// Actions can also be added using gtk_widget_insert_action_group() on the menu's
    /// attach widget or on any of its parent widgets.
    public convenience init(model: MenuModelProtocol) {
        let rv = gtk_menu_new_from_model(cast(model.ptr))
        self.init(cast(rv))
    }

    /// Creates a `GtkMenu` and populates it with menu items and
    /// submenus according to `model`.
    /// 
    /// The created menu items are connected to actions found in the
    /// `GtkApplicationWindow` to which the menu belongs - typically
    /// by means of being attached to a widget (see gtk_menu_attach_to_widget())
    /// that is contained within the `GtkApplicationWindows` widget hierarchy.
    /// 
    /// Actions can also be added using gtk_widget_insert_action_group() on the menu's
    /// attach widget or on any of its parent widgets.
    public static func newFrom(model: MenuModelProtocol) -> Menu! {
        let rv = gtk_menu_new_from_model(cast(model.ptr))
        return rv.map { Menu(cast($0)) }
    }

}

public enum MenuPropertyName: String, PropertyNameProtocol {
    /// The accel group holding accelerators for the menu.
    case accelGroup = "accel-group"
    /// An accel path used to conveniently construct accel paths of child items.
    case accelPath = "accel-path"
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
    /// The index of the currently selected menu item, or -1 if no
    /// menu item is selected.
    case active = "active"
    /// Positioning hints for aligning the menu relative to a rectangle.
    /// 
    /// These hints determine how the menu should be positioned in the case that
    /// the menu would fall off-screen if placed in its ideal position.
    /// 
    /// ![](popup-flip.png)
    /// 
    /// For example, `GDK_ANCHOR_FLIP_Y` will replace `GDK_GRAVITY_NORTH_WEST` with
    /// `GDK_GRAVITY_SOUTH_WEST` and vice versa if the menu extends beyond the
    /// bottom edge of the monitor.
    /// 
    /// See gtk_menu_popup_at_rect (), gtk_menu_popup_at_widget (),
    /// gtk_menu_popup_at_pointer (), `GtkMenu`:rect-anchor-dx,
    /// `GtkMenu`:rect-anchor-dy, `GtkMenu`:menu-type-hint, and `GtkMenu`::popped-up.
    case anchorHints = "anchor-hints"
    case appPaintable = "app-paintable"
    /// The widget the menu is attached to. Setting this property attaches
    /// the menu without a `GtkMenuDetachFunc`. If you need to use a detacher,
    /// use gtk_menu_attach_to_widget() directly.
    case attachWidget = "attach-widget"
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
    /// Whether to expand in both directions. Setting this sets both `GtkWidget`:hexpand and `GtkWidget`:vexpand
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
    /// Enables or disables the emission of `GtkWidget`::query-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget`::query-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See gtk_widget_set_hexpand().
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget`:hexpand property. See gtk_widget_get_hexpand_set().
    case hexpandSet = "hexpand-set"
    case isFocus = "is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginTop = "margin-top"
    /// The `GdkWindowTypeHint` to use for the menu's `GdkWindow`.
    /// 
    /// See gtk_menu_popup_at_rect (), gtk_menu_popup_at_widget (),
    /// gtk_menu_popup_at_pointer (), `GtkMenu`:anchor-hints,
    /// `GtkMenu`:rect-anchor-dx, `GtkMenu`:rect-anchor-dy, and `GtkMenu`::popped-up.
    case menuTypeHint = "menu-type-hint"
    /// The monitor the menu will be popped up on.
    case monitor = "monitor"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See gtk_widget_set_opacity() for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case receivesDefault = "receives-default"
    /// Horizontal offset to apply to the menu, i.e. the rectangle or widget
    /// anchor.
    /// 
    /// See gtk_menu_popup_at_rect (), gtk_menu_popup_at_widget (),
    /// gtk_menu_popup_at_pointer (), `GtkMenu`:anchor-hints,
    /// `GtkMenu`:rect-anchor-dy, `GtkMenu`:menu-type-hint, and `GtkMenu`::popped-up.
    case rectAnchorDx = "rect-anchor-dx"
    /// Vertical offset to apply to the menu, i.e. the rectangle or widget anchor.
    /// 
    /// See gtk_menu_popup_at_rect (), gtk_menu_popup_at_widget (),
    /// gtk_menu_popup_at_pointer (), `GtkMenu`:anchor-hints,
    /// `GtkMenu`:rect-anchor-dx, `GtkMenu`:menu-type-hint, and `GtkMenu`::popped-up.
    case rectAnchorDy = "rect-anchor-dy"
    /// A boolean that indicates whether the menu reserves space for
    /// toggles and icons, regardless of their actual presence.
    /// 
    /// This property should only be changed from its default value
    /// for special-purposes such as tabular menus. Regular menus that
    /// are connected to a menu bar or context menus should reserve
    /// toggle space for consistency.
    case reserveToggleSize = "reserve-toggle-size"
    case resizeMode = "resize-mode"
    /// The scale factor of the widget. See gtk_widget_get_scale_factor() for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    /// A boolean that determines whether the menu and its submenus grab the
    /// keyboard focus. See gtk_menu_shell_set_take_focus() and
    /// gtk_menu_shell_get_take_focus().
    case takeFocus = "take-focus"
    /// A boolean that indicates whether the menu is torn-off.
    ///
    /// **tearoff-state is deprecated:**
    /// This method is deprecated.
    case tearoffState = "tearoff-state"
    /// A title that may be displayed by the window manager when this
    /// menu is torn-off.
    ///
    /// **tearoff-title is deprecated:**
    /// This method is deprecated.
    case tearoffTitle = "tearoff-title"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language][PangoMarkupFormat].
    /// Also see gtk_tooltip_set_markup().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see gtk_tooltip_set_text().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See gtk_widget_set_vexpand().
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget`:vexpand property. See gtk_widget_get_vexpand_set().
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
}

public extension MenuProtocol {
    /// Bind a `MenuPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: MenuPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(menu_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum MenuSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// An action signal that activates the current menu item within
    /// the menu shell.
    case activateCurrent = "activate-current"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    case add = "add"
    /// The ::button-press-event signal will be emitted when a button
    /// (typically from a mouse) is pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonPressEvent = "button-press-event"
    /// The ::button-release-event signal will be emitted when a button
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
    /// An action signal which cancels the selection within the menu shell.
    /// Causes the `GtkMenuShell`::selection-done signal to be emitted.
    case cancel = "cancel"
    case checkResize = "check-resize"
    /// The ::child-notify signal is emitted for each
    /// [child property][child-properties]  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// The ::composited-changed signal is emitted when the composited
    /// status of `widgets` screen changes.
    /// See gdk_screen_is_composited().
    ///
    /// **composited-changed is deprecated:**
    /// Use GdkScreen::composited-changed instead.
    case compositedChanged = "composited-changed"
    /// The ::configure-event signal will be emitted when the size, position or
    /// stacking of the `widget`'s window has changed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case configureEvent = "configure-event"
    /// A keybinding signal which moves the focus in the
    /// given `direction`.
    case cycleFocus = "cycle-focus"
    /// Emitted when a redirected window belonging to `widget` gets drawn into.
    /// The region/area members of the event shows what area of the redirected
    /// drawable was drawn into.
    case damageEvent = "damage-event"
    /// This signal is emitted when a menu shell is deactivated.
    case deactivate = "deactivate"
    /// The ::delete-event signal is emitted if a user requests that
    /// a toplevel window is closed. The default handler for this signal
    /// destroys the window. Connecting gtk_widget_hide_on_delete() to
    /// this signal will cause the window to be hidden instead, so that
    /// it can later be shown again without reconstructing it.
    case deleteEvent = "delete-event"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The ::destroy-event signal is emitted when a `GdkWindow` is destroyed.
    /// You rarely get this signal, because most widgets disconnect themselves
    /// from their window before they destroy it, so no widget owns the
    /// window at destroy time.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case destroyEvent = "destroy-event"
    /// The ::direction-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The ::drag-begin signal is emitted on the drag source when a drag is
    /// started. A typical reason to connect to this signal is to set up a
    /// custom drag icon with e.g. gtk_drag_source_set_icon_pixbuf().
    /// 
    /// Note that some widgets set up a drag icon in the default handler of
    /// this signal, so you may have to use g_signal_connect_after() to
    /// override what the default handler did.
    case dragBegin = "drag-begin"
    /// The ::drag-data-delete signal is emitted on the drag source when a drag
    /// with the action `GDK_ACTION_MOVE` is successfully completed. The signal
    /// handler is responsible for deleting the data that has been dropped. What
    /// "delete" means depends on the context of the drag operation.
    case dragDataDelete = "drag-data-delete"
    /// The ::drag-data-get signal is emitted on the drag source when the drop
    /// site requests the data which is dragged. It is the responsibility of
    /// the signal handler to fill `data` with the data in the format which
    /// is indicated by `info`. See gtk_selection_data_set() and
    /// gtk_selection_data_set_text().
    case dragDataGet = "drag-data-get"
    /// The ::drag-data-received signal is emitted on the drop site when the
    /// dragged data has been received. If the data was received in order to
    /// determine whether the drop will be accepted, the handler is expected
    /// to call gdk_drag_status() and not finish the drag.
    /// If the data was received in response to a `GtkWidget`::drag-drop signal
    /// (and this is the last target to be received), the handler for this
    /// signal is expected to process the received data and then call
    /// gtk_drag_finish(), setting the `success` parameter depending on
    /// whether the data was processed successfully.
    /// 
    /// Applications must create some means to determine why the signal was emitted
    /// and therefore whether to call gdk_drag_status() or gtk_drag_finish().
    /// 
    /// The handler may inspect the selected action with
    /// gdk_drag_context_get_selected_action() before calling
    /// gtk_drag_finish(), e.g. to implement `GDK_ACTION_ASK` as
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
    /// The ::drag-drop signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the cursor position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// Otherwise, the handler returns `true`. In this case, the handler must
    /// ensure that gtk_drag_finish() is called to let the source know that
    /// the drop is done. The call to gtk_drag_finish() can be done either
    /// directly or in a `GtkWidget`::drag-data-received handler which gets
    /// triggered by calling gtk_drag_get_data() to receive the data for one
    /// or more of the supported targets.
    case dragDrop = "drag-drop"
    /// The ::drag-end signal is emitted on the drag source when a drag is
    /// finished.  A typical reason to connect to this signal is to undo
    /// things done in `GtkWidget`::drag-begin.
    case dragEnd = "drag-end"
    /// The ::drag-failed signal is emitted on the drag source when a drag has
    /// failed. The signal handler may hook custom code to handle a failed DnD
    /// operation based on the type of error, it returns `true` is the failure has
    /// been already handled (not showing the default "drag operation failed"
    /// animation), otherwise it returns `false`.
    case dragFailed = "drag-failed"
    /// The ::drag-leave signal is emitted on the drop site when the cursor
    /// leaves the widget. A typical reason to connect to this signal is to
    /// undo things done in `GtkWidget`::drag-motion, e.g. undo highlighting
    /// with gtk_drag_unhighlight().
    /// 
    /// 
    /// Likewise, the `GtkWidget`::drag-leave signal is also emitted before the
    /// ::drag-drop signal, for instance to allow cleaning up of a preview item
    /// created in the `GtkWidget`::drag-motion signal handler.
    case dragLeave = "drag-leave"
    /// The ::drag-motion signal is emitted on the drop site when the user
    /// moves the cursor over the widget during a drag. The signal handler
    /// must determine whether the cursor position is in a drop zone or not.
    /// If it is not in a drop zone, it returns `false` and no further processing
    /// is necessary. Otherwise, the handler returns `true`. In this case, the
    /// handler is responsible for providing the necessary information for
    /// displaying feedback to the user, by calling gdk_drag_status().
    /// 
    /// If the decision whether the drop will be accepted or rejected can't be
    /// made based solely on the cursor position and the type of the data, the
    /// handler may inspect the dragged data by calling gtk_drag_get_data() and
    /// defer the gdk_drag_status() call to the `GtkWidget`::drag-data-received
    /// handler. Note that you must pass `GTK_DEST_DEFAULT_DROP`,
    /// `GTK_DEST_DEFAULT_MOTION` or `GTK_DEST_DEFAULT_ALL` to gtk_drag_dest_set()
    /// when using the drag-motion signal that way.
    /// 
    /// Also note that there is no drag-enter signal. The drag receiver has to
    /// keep track of whether he has received any drag-motion signals since the
    /// last `GtkWidget`::drag-leave and if not, treat the drag-motion signal as
    /// an "enter" signal. Upon an "enter", the handler will typically highlight
    /// the drop site with gtk_drag_highlight().
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
    /// gtk_widget_get_allocated_width() and
    /// gtk_widget_get_allocated_height().
    /// 
    /// Signal handlers connected to this signal can modify the cairo
    /// context passed as `cr` in any way they like and don't need to
    /// restore it. The signal emission takes care of calling cairo_save()
    /// before and cairo_restore() after invoking the handler.
    /// 
    /// The signal handler will get a `cr` with a clip region already set to the
    /// widget's dirty region, i.e. to the area that needs repainting.  Complicated
    /// widgets that want to avoid redrawing themselves completely can get the full
    /// extents of the clip region with gdk_cairo_get_clip_rectangle(), or they can
    /// get a finer-grained representation of the dirty region with
    /// cairo_copy_clip_rectangle_list().
    case draw = "draw"
    /// The ::enter-notify-event will be emitted when the pointer enters
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_ENTER_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case enterNotifyEvent = "enter-notify-event"
    /// The GTK+ main loop will emit three signals for each GDK event delivered
    /// to a widget: one generic ::event signal, another, more specific,
    /// signal that matches the type of event delivered (e.g.
    /// `GtkWidget`::key-press-event) and finally a generic
    /// `GtkWidget`::event-after signal.
    case event = "event"
    /// After the emission of the `GtkWidget`::event signal and (optionally)
    /// the second more specific signal, ::event-after will be emitted
    /// regardless of the previous two signals handlers return values.
    case eventAfter = "event-after"
    case focus = "focus"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The ::focus-in-event signal will be emitted when the keyboard focus
    /// enters the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusInEvent = "focus-in-event"
    /// The ::focus-out-event signal will be emitted when the keyboard focus
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
    /// The ::grab-notify signal is emitted when a widget becomes
    /// shadowed by a GTK+ grab (not a pointer or keyboard grab) on
    /// another widget, or when it becomes unshadowed due to a grab
    /// being removed.
    /// 
    /// A widget is shadowed by a gtk_grab_add() when the topmost
    /// grab widget in the grab stack of its window group is not
    /// its ancestor.
    case grabNotify = "grab-notify"
    /// The ::hide signal is emitted when `widget` is hidden, for example with
    /// gtk_widget_hide().
    case hide = "hide"
    /// The ::hierarchy-changed signal is emitted when the
    /// anchored state of a widget changes. A widget is
    /// “anchored” when its toplevel
    /// ancestor is a `GtkWindow`. This signal is emitted when
    /// a widget changes from un-anchored to anchored or vice-versa.
    case hierarchyChanged = "hierarchy-changed"
    /// The ::insert signal is emitted when a new `GtkMenuItem` is added to
    /// a `GtkMenuShell`.  A separate signal is used instead of
    /// GtkContainer::add because of the need for an additional position
    /// parameter.
    /// 
    /// The inverse of this signal is the GtkContainer::removed signal.
    case insert = "insert"
    /// The ::key-press-event signal is emitted when a key is pressed. The signal
    /// emission will reoccur at the key-repeat rate when the key is kept pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyPressEvent = "key-press-event"
    /// The ::key-release-event signal is emitted when a key is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyReleaseEvent = "key-release-event"
    /// Gets emitted if keyboard navigation fails.
    /// See gtk_widget_keynav_failed() for details.
    case keynavFailed = "keynav-failed"
    /// The ::leave-notify-event will be emitted when the pointer leaves
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_LEAVE_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case leaveNotifyEvent = "leave-notify-event"
    /// The ::map signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// gtk_widget_set_visible()) and all its parents up to the toplevel widget
    /// are also visible. Once the map has occurred, `GtkWidget`::map-event will
    /// be emitted.
    /// 
    /// The ::map signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget`::unmap.
    case map = "map"
    /// The ::map-event signal will be emitted when the `widget`'s window is
    /// mapped. A window is mapped when it becomes visible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case mapEvent = "map-event"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// The ::motion-notify-event signal is emitted when the pointer moves
    /// over the widget's `GdkWindow`.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_POINTER_MOTION_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case motionNotifyEvent = "motion-notify-event"
    /// An keybinding signal which moves the current menu item
    /// in the direction specified by `direction`.
    case moveCurrent = "move-current"
    case moveFocus = "move-focus"
    case moveScroll = "move-scroll"
    /// The ::move-selected signal is emitted to move the selection to
    /// another item.
    case moveSelected = "move-selected"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through g_object_set_property(), g_object_set(), et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to g_object_set_property() results
    /// in ::notify being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call g_object_notify() or g_object_notify_by_pspec(),
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// g_signal_connect() call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The ::parent-set signal is emitted when a new parent
    /// has been set on a widget.
    case parentSet = "parent-set"
    /// Emitted when the position of `menu` is finalized after being popped up
    /// using gtk_menu_popup_at_rect (), gtk_menu_popup_at_widget (), or
    /// gtk_menu_popup_at_pointer ().
    /// 
    /// `menu` might be flipped over the anchor rectangle in order to keep it
    /// on-screen, in which case `flipped_x` and `flipped_y` will be set to `true`
    /// accordingly.
    /// 
    /// `flipped_rect` is the ideal position of `menu` after any possible flipping,
    /// but before any possible sliding. `final_rect` is `flipped_rect`, but possibly
    /// translated in the case that flipping is still ineffective in keeping `menu`
    /// on-screen.
    /// 
    /// ![](popup-slide.png)
    /// 
    /// The blue menu is `menu`'s ideal position, the green menu is `flipped_rect`,
    /// and the red menu is `final_rect`.
    /// 
    /// See gtk_menu_popup_at_rect (), gtk_menu_popup_at_widget (),
    /// gtk_menu_popup_at_pointer (), `GtkMenu`:anchor-hints,
    /// `GtkMenu`:rect-anchor-dx, `GtkMenu`:rect-anchor-dy, and
    /// `GtkMenu`:menu-type-hint.
    case poppedUp = "popped-up"
    /// This signal gets emitted whenever a widget should pop up a context
    /// menu. This usually happens through the standard key binding mechanism;
    /// by pressing a certain key while a widget is focused, the user can cause
    /// the widget to pop up a menu.  For example, the `GtkEntry` widget creates
    /// a menu with clipboard commands. See the
    /// [Popup Menu Migration Checklist][checklist-popup-menu]
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
    /// g_object_notify() to emit property-changed
    /// notifications. `AtkObject`::property-changed is needed by the
    /// implementation of atk_add_global_event_listener() because GObject
    /// notify doesn't support emission hooks.
    case propertyChange = "property-change"
    /// The ::property-notify-event signal will be emitted when a property on
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
    /// Emitted when `GtkWidget`:has-tooltip is `true` and the hover timeout
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
    /// The ::realize signal is emitted when `widget` is associated with a
    /// `GdkWindow`, which means that gtk_widget_realize() has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    case remove = "remove"
    /// The ::screen-changed signal gets emitted when the
    /// screen of a widget has changed.
    case screenChanged = "screen-changed"
    /// The ::scroll-event signal is emitted when a button in the 4 to 7
    /// range is pressed. Wheel mice are usually configured to generate
    /// button press events for buttons 4 and 5 when the wheel is turned.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_SCROLL_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case scrollEvent = "scroll-event"
    /// The ::selection-clear-event signal will be emitted when the
    /// the `widget`'s window has lost ownership of a selection.
    case selectionClearEvent = "selection-clear-event"
    /// This signal is emitted when a selection has been
    /// completed within a menu shell.
    case selectionDone = "selection-done"
    case selectionGet = "selection-get"
    case selectionNotifyEvent = "selection-notify-event"
    case selectionReceived = "selection-received"
    /// The ::selection-request-event signal will be emitted when
    /// another client requests ownership of the selection owned by
    /// the `widget`'s window.
    case selectionRequestEvent = "selection-request-event"
    case setFocusChild = "set-focus-child"
    /// The ::show signal is emitted when `widget` is shown, for example with
    /// gtk_widget_show().
    case show = "show"
    case showHelp = "show-help"
    case sizeAllocate = "size-allocate"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The ::state-changed signal is emitted when the widget state changes.
    /// See gtk_widget_get_state().
    ///
    /// **state-changed is deprecated:**
    /// Use #GtkWidget::state-flags-changed instead.
    case stateChanged = "state-changed"
    /// The ::state-flags-changed signal is emitted when the widget state
    /// changes, see gtk_widget_get_state_flags().
    case stateFlagsChanged = "state-flags-changed"
    /// The ::style-set signal is emitted when a new style has been set
    /// on a widget. Note that style-modifying functions like
    /// gtk_widget_modify_base() also cause this signal to be emitted.
    /// 
    /// Note that this signal is emitted for changes to the deprecated
    /// `GtkStyle`. To track changes to the `GtkStyleContext` associated
    /// with a widget, use the `GtkWidget`::style-updated signal.
    ///
    /// **style-set is deprecated:**
    /// Use the #GtkWidget::style-updated signal
    case styleSet = "style-set"
    /// The ::style-updated signal is a convenience signal that is emitted when the
    /// `GtkStyleContext`::changed signal is emitted on the `widget`'s associated
    /// `GtkStyleContext` as returned by gtk_widget_get_style_context().
    /// 
    /// Note that style-modifying functions like gtk_widget_override_color() also
    /// cause this signal to be emitted.
    case styleUpdated = "style-updated"
    case touchEvent = "touch-event"
    /// The ::unmap signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As ::unmap indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The ::unmap-event signal will be emitted when the `widget`'s window is
    /// unmapped. A window is unmapped when it becomes invisible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case unmapEvent = "unmap-event"
    /// The ::unrealize signal is emitted when the `GdkWindow` associated with
    /// `widget` is destroyed, which means that gtk_widget_unrealize() has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
    /// The ::visibility-notify-event will be emitted when the `widget`'s
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
    /// The ::window-state-event will be emitted when the state of the
    /// toplevel window associated to the `widget` changes.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable
    /// this mask automatically for all new windows.
    case windowStateEvent = "window-state-event"
    /// The accel group holding accelerators for the menu.
    case notifyAccelGroup = "notify::accel-group"
    /// An accel path used to conveniently construct accel paths of child items.
    case notifyAccelPath = "notify::accel-path"
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
    /// The index of the currently selected menu item, or -1 if no
    /// menu item is selected.
    case notifyActive = "notify::active"
    /// Positioning hints for aligning the menu relative to a rectangle.
    /// 
    /// These hints determine how the menu should be positioned in the case that
    /// the menu would fall off-screen if placed in its ideal position.
    /// 
    /// ![](popup-flip.png)
    /// 
    /// For example, `GDK_ANCHOR_FLIP_Y` will replace `GDK_GRAVITY_NORTH_WEST` with
    /// `GDK_GRAVITY_SOUTH_WEST` and vice versa if the menu extends beyond the
    /// bottom edge of the monitor.
    /// 
    /// See gtk_menu_popup_at_rect (), gtk_menu_popup_at_widget (),
    /// gtk_menu_popup_at_pointer (), `GtkMenu`:rect-anchor-dx,
    /// `GtkMenu`:rect-anchor-dy, `GtkMenu`:menu-type-hint, and `GtkMenu`::popped-up.
    case notifyAnchorHints = "notify::anchor-hints"
    case notifyAppPaintable = "notify::app-paintable"
    /// The widget the menu is attached to. Setting this property attaches
    /// the menu without a `GtkMenuDetachFunc`. If you need to use a detacher,
    /// use gtk_menu_attach_to_widget() directly.
    case notifyAttachWidget = "notify::attach-widget"
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
    /// Whether to expand in both directions. Setting this sets both `GtkWidget`:hexpand and `GtkWidget`:vexpand
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
    /// Enables or disables the emission of `GtkWidget`::query-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget`::query-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See gtk_widget_set_hexpand().
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget`:hexpand property. See gtk_widget_get_hexpand_set().
    case notifyHexpandSet = "notify::hexpand-set"
    case notifyIsFocus = "notify::is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case notifyMargin = "notify::margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case notifyMarginLeft = "notify::margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case notifyMarginRight = "notify::margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginTop = "notify::margin-top"
    /// The `GdkWindowTypeHint` to use for the menu's `GdkWindow`.
    /// 
    /// See gtk_menu_popup_at_rect (), gtk_menu_popup_at_widget (),
    /// gtk_menu_popup_at_pointer (), `GtkMenu`:anchor-hints,
    /// `GtkMenu`:rect-anchor-dx, `GtkMenu`:rect-anchor-dy, and `GtkMenu`::popped-up.
    case notifyMenuTypeHint = "notify::menu-type-hint"
    /// The monitor the menu will be popped up on.
    case notifyMonitor = "notify::monitor"
    case notifyName = "notify::name"
    case notifyNoShowAll = "notify::no-show-all"
    /// The requested opacity of the widget. See gtk_widget_set_opacity() for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case notifyOpacity = "notify::opacity"
    case notifyParent = "notify::parent"
    case notifyReceivesDefault = "notify::receives-default"
    /// Horizontal offset to apply to the menu, i.e. the rectangle or widget
    /// anchor.
    /// 
    /// See gtk_menu_popup_at_rect (), gtk_menu_popup_at_widget (),
    /// gtk_menu_popup_at_pointer (), `GtkMenu`:anchor-hints,
    /// `GtkMenu`:rect-anchor-dy, `GtkMenu`:menu-type-hint, and `GtkMenu`::popped-up.
    case notifyRectAnchorDx = "notify::rect-anchor-dx"
    /// Vertical offset to apply to the menu, i.e. the rectangle or widget anchor.
    /// 
    /// See gtk_menu_popup_at_rect (), gtk_menu_popup_at_widget (),
    /// gtk_menu_popup_at_pointer (), `GtkMenu`:anchor-hints,
    /// `GtkMenu`:rect-anchor-dx, `GtkMenu`:menu-type-hint, and `GtkMenu`::popped-up.
    case notifyRectAnchorDy = "notify::rect-anchor-dy"
    /// A boolean that indicates whether the menu reserves space for
    /// toggles and icons, regardless of their actual presence.
    /// 
    /// This property should only be changed from its default value
    /// for special-purposes such as tabular menus. Regular menus that
    /// are connected to a menu bar or context menus should reserve
    /// toggle space for consistency.
    case notifyReserveToggleSize = "notify::reserve-toggle-size"
    case notifyResizeMode = "notify::resize-mode"
    /// The scale factor of the widget. See gtk_widget_get_scale_factor() for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case notifyStyle = "notify::style"
    /// A boolean that determines whether the menu and its submenus grab the
    /// keyboard focus. See gtk_menu_shell_set_take_focus() and
    /// gtk_menu_shell_get_take_focus().
    case notifyTakeFocus = "notify::take-focus"
    /// A boolean that indicates whether the menu is torn-off.
    ///
    /// **tearoff-state is deprecated:**
    /// This method is deprecated.
    case notifyTearoffState = "notify::tearoff-state"
    /// A title that may be displayed by the window manager when this
    /// menu is torn-off.
    ///
    /// **tearoff-title is deprecated:**
    /// This method is deprecated.
    case notifyTearoffTitle = "notify::tearoff-title"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language][PangoMarkupFormat].
    /// Also see gtk_tooltip_set_markup().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see gtk_tooltip_set_text().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    /// Whether to expand vertically. See gtk_widget_set_vexpand().
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget`:vexpand property. See gtk_widget_get_vexpand_set().
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    case notifyWidthRequest = "notify::width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case notifyWindow = "notify::window"
}

public extension MenuProtocol {
    /// Connect a `MenuSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: MenuSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(menu_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension MenuProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenu` instance.
    var menu_ptr: UnsafeMutablePointer<GtkMenu> { return ptr.assumingMemoryBound(to: GtkMenu.self) }

    /// Adds a new `GtkMenuItem` to a (table) menu. The number of “cells” that
    /// an item will occupy is specified by `left_attach`, `right_attach`,
    /// `top_attach` and `bottom_attach`. These each represent the leftmost,
    /// rightmost, uppermost and lower column and row numbers of the table.
    /// (Columns and rows are indexed from zero).
    /// 
    /// Note that this function is not related to gtk_menu_detach().
    func attach(child: WidgetProtocol, leftAttach left_attach: CUnsignedInt, rightAttach right_attach: CUnsignedInt, topAttach top_attach: CUnsignedInt, bottomAttach bottom_attach: CUnsignedInt) {
        gtk_menu_attach(cast(menu_ptr), cast(child.ptr), guint(left_attach), guint(right_attach), guint(top_attach), guint(bottom_attach))
    
    }

    /// Attaches the menu to the widget and provides a callback function
    /// that will be invoked when the menu calls gtk_menu_detach() during
    /// its destruction.
    /// 
    /// If the menu is attached to the widget then it will be destroyed
    /// when the widget is destroyed, as if it was a child widget.
    /// An attached menu will also move between screens correctly if the
    /// widgets moves between screens.
    func attachToWidget(attachWidget attach_widget: WidgetProtocol, detacher: @escaping MenuDetachFunc) {
        gtk_menu_attach_to_widget(cast(menu_ptr), cast(attach_widget.ptr), detacher)
    
    }

    /// Detaches the menu from the widget to which it had been attached.
    /// This function will call the callback function, `detacher`, provided
    /// when the gtk_menu_attach_to_widget() function was called.
    func detach() {
        gtk_menu_detach(cast(menu_ptr))
    
    }

    /// Gets the `GtkAccelGroup` which holds global accelerators for the
    /// menu. See gtk_menu_set_accel_group().
    func getAccelGroup() -> UnsafeMutablePointer<GtkAccelGroup>! {
        let rv = gtk_menu_get_accel_group(cast(menu_ptr))
        return cast(rv)
    }

    /// Retrieves the accelerator path set on the menu.
    func getAccelPath() -> String! {
        let rv = gtk_menu_get_accel_path(cast(menu_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Returns the selected menu item from the menu.  This is used by the
    /// `GtkComboBox`.
    func getActive() -> UnsafeMutablePointer<GtkWidget>! {
        let rv = gtk_menu_get_active(cast(menu_ptr))
        return cast(rv)
    }

    /// Returns the `GtkWidget` that the menu is attached to.
    func getAttachWidget() -> UnsafeMutablePointer<GtkWidget>! {
        let rv = gtk_menu_get_attach_widget(cast(menu_ptr))
        return cast(rv)
    }

    /// Retrieves the number of the monitor on which to show the menu.
    func getMonitor() -> CInt {
        let rv = gtk_menu_get_monitor(cast(menu_ptr))
        return CInt(rv)
    }

    /// Returns whether the menu reserves space for toggles and
    /// icons, regardless of their actual presence.
    func getReserveToggleSize() -> Bool {
        let rv = gtk_menu_get_reserve_toggle_size(cast(menu_ptr))
        return Bool(rv != 0)
    }

    /// Returns whether the menu is torn off.
    /// See gtk_menu_set_tearoff_state().
    ///
    /// **get_tearoff_state is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) func getTearoffState() -> Bool {
        let rv = gtk_menu_get_tearoff_state(cast(menu_ptr))
        return Bool(rv != 0)
    }

    /// Returns the title of the menu. See gtk_menu_set_title().
    ///
    /// **get_title is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) func getTitle() -> String! {
        let rv = gtk_menu_get_title(cast(menu_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Places `menu` on the given monitor.
    func placeOn(monitor: MonitorProtocol) {
        gtk_menu_place_on_monitor(cast(menu_ptr), cast(monitor.ptr))
    
    }

    /// Removes the menu from the screen.
    func popdown() {
        gtk_menu_popdown(cast(menu_ptr))
    
    }

    /// Displays a menu and makes it available for selection.
    /// 
    /// Applications can use this function to display context-sensitive
    /// menus, and will typically supply `nil` for the `parent_menu_shell`,
    /// `parent_menu_item`, `func` and `data` parameters. The default menu
    /// positioning function will position the menu at the current mouse
    /// cursor position.
    /// 
    /// The `button` parameter should be the mouse button pressed to initiate
    /// the menu popup. If the menu popup was initiated by something other
    /// than a mouse button press, such as a mouse button release or a keypress,
    /// `button` should be 0.
    /// 
    /// The `activate_time` parameter is used to conflict-resolve initiation
    /// of concurrent requests for mouse/keyboard grab requests. To function
    /// properly, this needs to be the timestamp of the user event (such as
    /// a mouse click or key press) that caused the initiation of the popup.
    /// Only if no such event is available, gtk_get_current_event_time() can
    /// be used instead.
    /// 
    /// Note that this function does not work very well on GDK backends that
    /// do not have global coordinates, such as Wayland or Mir. You should
    /// probably use one of the gtk_menu_popup_at_ variants, which do not
    /// have this problem.
    ///
    /// **popup is deprecated:**
    /// Please use gtk_menu_popup_at_widget(),
    ///     gtk_menu_popup_at_pointer(). or gtk_menu_popup_at_rect() instead
    @available(*, deprecated) func popup(parentMenuShell parent_menu_shell: WidgetProtocol, parentMenuItem parent_menu_item: WidgetProtocol, func_: @escaping MenuPositionFunc, data: UnsafeMutableRawPointer, button: CUnsignedInt, activateTime activate_time: UInt32) {
        gtk_menu_popup(cast(menu_ptr), cast(parent_menu_shell.ptr), cast(parent_menu_item.ptr), func_, cast(data), guint(button), guint32(activate_time))
    
    }

    /// Displays `menu` and makes it available for selection.
    /// 
    /// See gtk_menu_popup_at_widget () to pop up a menu at a widget.
    /// gtk_menu_popup_at_rect () also allows you to position a menu at an arbitrary
    /// rectangle.
    /// 
    /// `menu` will be positioned at the pointer associated with `trigger_event`.
    /// 
    /// Properties that influence the behaviour of this function are
    /// `GtkMenu`:anchor-hints, `GtkMenu`:rect-anchor-dx, `GtkMenu`:rect-anchor-dy, and
    /// `GtkMenu`:menu-type-hint. Connect to the `GtkMenu`::popped-up signal to find
    /// out how it was actually positioned.
    func popupAtPointer(triggerEvent trigger_event: UnsafePointer<GdkEvent>) {
        gtk_menu_popup_at_pointer(cast(menu_ptr), cast(trigger_event))
    
    }

    /// Displays `menu` and makes it available for selection.
    /// 
    /// See gtk_menu_popup_at_widget () and gtk_menu_popup_at_pointer (), which
    /// handle more common cases for popping up menus.
    /// 
    /// `menu` will be positioned at `rect`, aligning their anchor points. `rect` is
    /// relative to the top-left corner of `rect_window`. `rect_anchor` and
    /// `menu_anchor` determine anchor points on `rect` and `menu` to pin together.
    /// `menu` can optionally be offset by `GtkMenu`:rect-anchor-dx and
    /// `GtkMenu`:rect-anchor-dy.
    /// 
    /// Anchors should be specified under the assumption that the text direction is
    /// left-to-right; they will be flipped horizontally automatically if the text
    /// direction is right-to-left.
    /// 
    /// Other properties that influence the behaviour of this function are
    /// `GtkMenu`:anchor-hints and `GtkMenu`:menu-type-hint. Connect to the
    /// `GtkMenu`::popped-up signal to find out how it was actually positioned.
    func popupAtRect(rectWindow rect_window: WindowProtocol, rect: Gdk.RectangleProtocol, rectAnchor rect_anchor: Gdk.Gravity, menuAnchor menu_anchor: Gdk.Gravity, triggerEvent trigger_event: UnsafePointer<GdkEvent>) {
        gtk_menu_popup_at_rect(cast(menu_ptr), cast(rect_window.ptr), cast(rect.ptr), rect_anchor, menu_anchor, cast(trigger_event))
    
    }

    /// Displays `menu` and makes it available for selection.
    /// 
    /// See gtk_menu_popup_at_pointer () to pop up a menu at the master pointer.
    /// gtk_menu_popup_at_rect () also allows you to position a menu at an arbitrary
    /// rectangle.
    /// 
    /// ![](popup-anchors.png)
    /// 
    /// `menu` will be positioned at `widget`, aligning their anchor points.
    /// `widget_anchor` and `menu_anchor` determine anchor points on `widget` and `menu`
    /// to pin together. `menu` can optionally be offset by `GtkMenu`:rect-anchor-dx
    /// and `GtkMenu`:rect-anchor-dy.
    /// 
    /// Anchors should be specified under the assumption that the text direction is
    /// left-to-right; they will be flipped horizontally automatically if the text
    /// direction is right-to-left.
    /// 
    /// Other properties that influence the behaviour of this function are
    /// `GtkMenu`:anchor-hints and `GtkMenu`:menu-type-hint. Connect to the
    /// `GtkMenu`::popped-up signal to find out how it was actually positioned.
    func popupAt(widget: WidgetProtocol, widgetAnchor widget_anchor: Gdk.Gravity, menuAnchor menu_anchor: Gdk.Gravity, triggerEvent trigger_event: UnsafePointer<GdkEvent>) {
        gtk_menu_popup_at_widget(cast(menu_ptr), cast(widget.ptr), widget_anchor, menu_anchor, cast(trigger_event))
    
    }

    /// Displays a menu and makes it available for selection.
    /// 
    /// Applications can use this function to display context-sensitive menus,
    /// and will typically supply `nil` for the `parent_menu_shell`,
    /// `parent_menu_item`, `func`, `data` and `destroy` parameters. The default
    /// menu positioning function will position the menu at the current position
    /// of `device` (or its corresponding pointer).
    /// 
    /// The `button` parameter should be the mouse button pressed to initiate
    /// the menu popup. If the menu popup was initiated by something other than
    /// a mouse button press, such as a mouse button release or a keypress,
    /// `button` should be 0.
    /// 
    /// The `activate_time` parameter is used to conflict-resolve initiation of
    /// concurrent requests for mouse/keyboard grab requests. To function
    /// properly, this needs to be the time stamp of the user event (such as
    /// a mouse click or key press) that caused the initiation of the popup.
    /// Only if no such event is available, gtk_get_current_event_time() can
    /// be used instead.
    /// 
    /// Note that this function does not work very well on GDK backends that
    /// do not have global coordinates, such as Wayland or Mir. You should
    /// probably use one of the gtk_menu_popup_at_ variants, which do not
    /// have this problem.
    ///
    /// **popup_for_device is deprecated:**
    /// Please use gtk_menu_popup_at_widget(),
    ///     gtk_menu_popup_at_pointer(). or gtk_menu_popup_at_rect() instead
    @available(*, deprecated) func popupFor(device: Gdk.DeviceProtocol, parentMenuShell parent_menu_shell: WidgetProtocol, parentMenuItem parent_menu_item: WidgetProtocol, func_: @escaping MenuPositionFunc, data: UnsafeMutableRawPointer, destroy: @escaping GLib.DestroyNotify, button: CUnsignedInt, activateTime activate_time: UInt32) {
        gtk_menu_popup_for_device(cast(menu_ptr), cast(device.ptr), cast(parent_menu_shell.ptr), cast(parent_menu_item.ptr), func_, cast(data), destroy, guint(button), guint32(activate_time))
    
    }

    /// Moves `child` to a new `position` in the list of `menu`
    /// children.
    func reorder(child: WidgetProtocol, position: CInt) {
        gtk_menu_reorder_child(cast(menu_ptr), cast(child.ptr), gint(position))
    
    }

    /// Repositions the menu according to its position function.
    func reposition() {
        gtk_menu_reposition(cast(menu_ptr))
    
    }

    /// Set the `GtkAccelGroup` which holds global accelerators for the
    /// menu.  This accelerator group needs to also be added to all windows
    /// that this menu is being used in with gtk_window_add_accel_group(),
    /// in order for those windows to support all the accelerators
    /// contained in this group.
    func set(accelGroup accel_group: AccelGroupProtocol) {
        gtk_menu_set_accel_group(cast(menu_ptr), cast(accel_group.ptr))
    
    }

    /// Sets an accelerator path for this menu from which accelerator paths
    /// for its immediate children, its menu items, can be constructed.
    /// The main purpose of this function is to spare the programmer the
    /// inconvenience of having to call gtk_menu_item_set_accel_path() on
    /// each menu item that should support runtime user changable accelerators.
    /// Instead, by just calling gtk_menu_set_accel_path() on their parent,
    /// each menu item of this menu, that contains a label describing its
    /// purpose, automatically gets an accel path assigned.
    /// 
    /// For example, a menu containing menu items “New” and “Exit”, will, after
    /// `gtk_menu_set_accel_path (menu, "<Gnumeric-Sheet>/File");` has been
    /// called, assign its items the accel paths: `"<Gnumeric-Sheet>/File/New"`
    /// and `"<Gnumeric-Sheet>/File/Exit"`.
    /// 
    /// Assigning accel paths to menu items then enables the user to change
    /// their accelerators at runtime. More details about accelerator paths
    /// and their default setups can be found at gtk_accel_map_add_entry().
    /// 
    /// Note that `accel_path` string will be stored in a `GQuark`. Therefore,
    /// if you pass a static string, you can save some memory by interning
    /// it first with g_intern_static_string().
    func set(accelPath accel_path: UnsafePointer<gchar>) {
        gtk_menu_set_accel_path(cast(menu_ptr), accel_path)
    
    }

    /// Selects the specified menu item within the menu.  This is used by
    /// the `GtkComboBox` and should not be used by anyone else.
    func setActive(index: CUnsignedInt) {
        gtk_menu_set_active(cast(menu_ptr), guint(index))
    
    }

    /// Informs GTK+ on which monitor a menu should be popped up.
    /// See gdk_monitor_get_geometry().
    /// 
    /// This function should be called from a `GtkMenuPositionFunc`
    /// if the menu should not appear on the same monitor as the pointer.
    /// This information can’t be reliably inferred from the coordinates
    /// returned by a `GtkMenuPositionFunc`, since, for very long menus,
    /// these coordinates may extend beyond the monitor boundaries or even
    /// the screen boundaries.
    func setMonitor(monitorNum monitor_num: CInt) {
        gtk_menu_set_monitor(cast(menu_ptr), gint(monitor_num))
    
    }

    /// Sets whether the menu should reserve space for drawing toggles
    /// or icons, regardless of their actual presence.
    func set(reserveToggleSize reserve_toggle_size: Bool) {
        gtk_menu_set_reserve_toggle_size(cast(menu_ptr), gboolean(reserve_toggle_size ? 1 : 0))
    
    }

    /// Sets the `GdkScreen` on which the menu will be displayed.
    func set(screen: ScreenProtocol) {
        gtk_menu_set_screen(cast(menu_ptr), cast(screen.ptr))
    
    }

    /// Changes the tearoff state of the menu.  A menu is normally
    /// displayed as drop down menu which persists as long as the menu is
    /// active.  It can also be displayed as a tearoff menu which persists
    /// until it is closed or reattached.
    ///
    /// **set_tearoff_state is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) func setTearoffState(tornOff torn_off: Bool) {
        gtk_menu_set_tearoff_state(cast(menu_ptr), gboolean(torn_off ? 1 : 0))
    
    }

    /// Sets the title string for the menu.
    /// 
    /// The title is displayed when the menu is shown as a tearoff
    /// menu. If `title` is `nil`, the menu will see if it is attached
    /// to a parent menu item, and if so it will try to use the same
    /// text as that menu item’s label.
    ///
    /// **set_title is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) func set(title: UnsafePointer<gchar>) {
        gtk_menu_set_title(cast(menu_ptr), title)
    
    }
    /// Gets the `GtkAccelGroup` which holds global accelerators for the
    /// menu. See gtk_menu_set_accel_group().
    var accelGroup: UnsafeMutablePointer<GtkAccelGroup>! {
        /// Gets the `GtkAccelGroup` which holds global accelerators for the
        /// menu. See gtk_menu_set_accel_group().
        get {
            let rv = gtk_menu_get_accel_group(cast(menu_ptr))
            return cast(rv)
        }
        /// Set the `GtkAccelGroup` which holds global accelerators for the
        /// menu.  This accelerator group needs to also be added to all windows
        /// that this menu is being used in with gtk_window_add_accel_group(),
        /// in order for those windows to support all the accelerators
        /// contained in this group.
        nonmutating set {
            gtk_menu_set_accel_group(cast(menu_ptr), cast(newValue))
        }
    }

    /// Retrieves the accelerator path set on the menu.
    var accelPath: String! {
        /// Retrieves the accelerator path set on the menu.
        get {
            let rv = gtk_menu_get_accel_path(cast(menu_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Sets an accelerator path for this menu from which accelerator paths
        /// for its immediate children, its menu items, can be constructed.
        /// The main purpose of this function is to spare the programmer the
        /// inconvenience of having to call gtk_menu_item_set_accel_path() on
        /// each menu item that should support runtime user changable accelerators.
        /// Instead, by just calling gtk_menu_set_accel_path() on their parent,
        /// each menu item of this menu, that contains a label describing its
        /// purpose, automatically gets an accel path assigned.
        /// 
        /// For example, a menu containing menu items “New” and “Exit”, will, after
        /// `gtk_menu_set_accel_path (menu, "<Gnumeric-Sheet>/File");` has been
        /// called, assign its items the accel paths: `"<Gnumeric-Sheet>/File/New"`
        /// and `"<Gnumeric-Sheet>/File/Exit"`.
        /// 
        /// Assigning accel paths to menu items then enables the user to change
        /// their accelerators at runtime. More details about accelerator paths
        /// and their default setups can be found at gtk_accel_map_add_entry().
        /// 
        /// Note that `accel_path` string will be stored in a `GQuark`. Therefore,
        /// if you pass a static string, you can save some memory by interning
        /// it first with g_intern_static_string().
        nonmutating set {
            gtk_menu_set_accel_path(cast(menu_ptr), newValue)
        }
    }

    /// The index of the currently selected menu item, or -1 if no
    /// menu item is selected.
    var active: UnsafeMutablePointer<GtkWidget>! {
        /// Returns the selected menu item from the menu.  This is used by the
        /// `GtkComboBox`.
        get {
            let rv = gtk_menu_get_active(cast(menu_ptr))
            return cast(rv)
        }
        /// Selects the specified menu item within the menu.  This is used by
        /// the `GtkComboBox` and should not be used by anyone else.
        nonmutating set {
            // gtk_menu_set_active(cast(menu_ptr), guint(newValue))
        }
    }

    /// Returns the `GtkWidget` that the menu is attached to.
    var attachWidget: UnsafeMutablePointer<GtkWidget>! {
        /// Returns the `GtkWidget` that the menu is attached to.
        get {
            let rv = gtk_menu_get_attach_widget(cast(menu_ptr))
            return cast(rv)
        }
    }

    /// The monitor the menu will be popped up on.
    var monitor: CInt {
        /// Retrieves the number of the monitor on which to show the menu.
        get {
            let rv = gtk_menu_get_monitor(cast(menu_ptr))
            return CInt(rv)
        }
        /// Informs GTK+ on which monitor a menu should be popped up.
        /// See gdk_monitor_get_geometry().
        /// 
        /// This function should be called from a `GtkMenuPositionFunc`
        /// if the menu should not appear on the same monitor as the pointer.
        /// This information can’t be reliably inferred from the coordinates
        /// returned by a `GtkMenuPositionFunc`, since, for very long menus,
        /// these coordinates may extend beyond the monitor boundaries or even
        /// the screen boundaries.
        nonmutating set {
            gtk_menu_set_monitor(cast(menu_ptr), gint(newValue))
        }
    }

    /// Returns whether the menu reserves space for toggles and
    /// icons, regardless of their actual presence.
    var reserveToggleSize: Bool {
        /// Returns whether the menu reserves space for toggles and
        /// icons, regardless of their actual presence.
        get {
            let rv = gtk_menu_get_reserve_toggle_size(cast(menu_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether the menu should reserve space for drawing toggles
        /// or icons, regardless of their actual presence.
        nonmutating set {
            gtk_menu_set_reserve_toggle_size(cast(menu_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Returns whether the menu is torn off.
    /// See gtk_menu_set_tearoff_state().
    ///
    /// **get_tearoff_state is deprecated:**
    /// This method is deprecated.
    var tearoffState: Bool {
        /// Returns whether the menu is torn off.
        /// See gtk_menu_set_tearoff_state().
        ///
        /// **get_tearoff_state is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated) get {
            let rv = gtk_menu_get_tearoff_state(cast(menu_ptr))
            return Bool(rv != 0)
        }
        /// Changes the tearoff state of the menu.  A menu is normally
        /// displayed as drop down menu which persists as long as the menu is
        /// active.  It can also be displayed as a tearoff menu which persists
        /// until it is closed or reattached.
        ///
        /// **set_tearoff_state is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated) nonmutating set {
            gtk_menu_set_tearoff_state(cast(menu_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Returns the title of the menu. See gtk_menu_set_title().
    ///
    /// **get_title is deprecated:**
    /// This method is deprecated.
    var title: String! {
        /// Returns the title of the menu. See gtk_menu_set_title().
        ///
        /// **get_title is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated) get {
            let rv = gtk_menu_get_title(cast(menu_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Sets the title string for the menu.
        /// 
        /// The title is displayed when the menu is shown as a tearoff
        /// menu. If `title` is `nil`, the menu will see if it is attached
        /// to a parent menu item, and if so it will try to use the same
        /// text as that menu item’s label.
        ///
        /// **set_title is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated) nonmutating set {
            gtk_menu_set_title(cast(menu_ptr), newValue)
        }
    }
}



