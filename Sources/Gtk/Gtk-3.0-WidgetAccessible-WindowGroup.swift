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

// MARK: - WidgetAccessible Class


///
/// The `WidgetAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkWidgetAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `WidgetAccessible`.
/// Alternatively, use `WidgetAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol WidgetAccessibleProtocol: AccessibleProtocol, Atk.ComponentProtocol {
        /// Untyped pointer to the underlying `GtkWidgetAccessible` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkWidgetAccessible` instance.
    var widget_accessible_ptr: UnsafeMutablePointer<GtkWidgetAccessible>! { get }

    /// Required Initialiser for types conforming to `WidgetAccessibleProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `WidgetAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkWidgetAccessible` instance.
/// It exposes methods that can operate on this data type through `WidgetAccessibleProtocol` conformance.
/// Use `WidgetAccessibleRef` only as an `unowned` reference to an existing `GtkWidgetAccessible` instance.
///
public struct WidgetAccessibleRef: WidgetAccessibleProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkWidgetAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `widget_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension WidgetAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkWidgetAccessible>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkWidgetAccessible>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkWidgetAccessible>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkWidgetAccessible>?) {
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

    /// Reference intialiser for a related type that implements `WidgetAccessibleProtocol`
    @inlinable init<T: WidgetAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: WidgetAccessibleProtocol>(_ other: T) -> WidgetAccessibleRef { WidgetAccessibleRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetAccessibleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetAccessibleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetAccessibleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetAccessibleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetAccessibleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }


///
/// The `WidgetAccessible` type acts as a reference-counted owner of an underlying `GtkWidgetAccessible` instance.
/// It provides the methods that can operate on this data type through `WidgetAccessibleProtocol` conformance.
/// Use `WidgetAccessible` as a strong reference or owner of a `GtkWidgetAccessible` instance.
///
open class WidgetAccessible: Accessible, WidgetAccessibleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WidgetAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkWidgetAccessible>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WidgetAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkWidgetAccessible>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WidgetAccessible` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WidgetAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WidgetAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkWidgetAccessible>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WidgetAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkWidgetAccessible>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkWidgetAccessible`.
    /// i.e., ownership is transferred to the `WidgetAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkWidgetAccessible>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `WidgetAccessibleProtocol`
    /// Will retain `GtkWidgetAccessible`.
    /// - Parameter other: an instance of a related type that implements `WidgetAccessibleProtocol`
    @inlinable public init<T: WidgetAccessibleProtocol>(widgetAccessible other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetAccessibleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetAccessibleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetAccessibleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetAccessibleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum WidgetAccessiblePropertyName: String, PropertyNameProtocol {
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

public extension WidgetAccessibleProtocol {
    /// Bind a `WidgetAccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: WidgetAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a WidgetAccessible property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: WidgetAccessiblePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a WidgetAccessible property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: WidgetAccessiblePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum WidgetAccessibleSignalName: String, SignalNameProtocol {
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
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
    /// notifications. `AtkObject::property-changed` is needed by the
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

// MARK: WidgetAccessible has no signals
// MARK: WidgetAccessible Class: WidgetAccessibleProtocol extension (methods and fields)
public extension WidgetAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkWidgetAccessible` instance.
    @inlinable var widget_accessible_ptr: UnsafeMutablePointer<GtkWidgetAccessible>! { return ptr?.assumingMemoryBound(to: GtkWidgetAccessible.self) }


    @inlinable var parent: GtkAccessible {
        get {
            let rv = widget_accessible_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - Window Class

/// A GtkWindow is a toplevel window which can contain other widgets.
/// Windows normally have decorations that are under the control
/// of the windowing system and allow the user to manipulate the window
/// (resize it, move it, close it,...).
/// 
/// # GtkWindow as GtkBuildable
/// 
/// The GtkWindow implementation of the `GtkBuildable` interface supports a
/// custom &lt;accel-groups&gt; element, which supports any number of &lt;group&gt;
/// elements representing the `GtkAccelGroup` objects you want to add to
/// your window (synonymous with `gtk_window_add_accel_group()`.
/// 
/// It also supports the &lt;initial-focus&gt; element, whose name property names
/// the widget to receive the focus when the window is mapped.
/// 
/// An example of a UI definition fragment with accel groups:
/// ```
/// <object class="GtkWindow">
///   <accel-groups>
///     <group name="accelgroup1"/>
///   </accel-groups>
///   <initial-focus name="thunderclap"/>
/// </object>
/// 
/// ...
/// 
/// <object class="GtkAccelGroup" id="accelgroup1"/>
/// ```
/// 
/// The GtkWindow implementation of the `GtkBuildable` interface supports
/// setting a child as the titlebar by specifying “titlebar” as the “type”
/// attribute of a &lt;child&gt; element.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// window.background
/// ├── decoration
/// ├── <titlebar child>.titlebar [.default-decoration]
/// ╰── <child>
/// ```
/// 
/// GtkWindow has a main CSS node with name window and style class .background,
/// and a subnode with name decoration.
/// 
/// Style classes that are typically used with the main CSS node are .csd (when
/// client-side decorations are in use), .solid-csd (for client-side decorations
/// without invisible borders), .ssd (used by mutter when rendering server-side
/// decorations). GtkWindow also represents window states with the following
/// style classes on the main node: .tiled, .maximized, .fullscreen. Specialized
/// types of window often add their own discriminating style classes, such as
/// .popup or .tooltip.
/// 
/// GtkWindow adds the .titlebar and .default-decoration style classes to the
/// widget that is added as a titlebar child.
///
/// The `WindowProtocol` protocol exposes the methods and properties of an underlying `GtkWindow` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Window`.
/// Alternatively, use `WindowRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol WindowProtocol: BinProtocol {
        /// Untyped pointer to the underlying `GtkWindow` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkWindow` instance.
    var window_ptr: UnsafeMutablePointer<GtkWindow>! { get }

    /// Required Initialiser for types conforming to `WindowProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A GtkWindow is a toplevel window which can contain other widgets.
/// Windows normally have decorations that are under the control
/// of the windowing system and allow the user to manipulate the window
/// (resize it, move it, close it,...).
/// 
/// # GtkWindow as GtkBuildable
/// 
/// The GtkWindow implementation of the `GtkBuildable` interface supports a
/// custom &lt;accel-groups&gt; element, which supports any number of &lt;group&gt;
/// elements representing the `GtkAccelGroup` objects you want to add to
/// your window (synonymous with `gtk_window_add_accel_group()`.
/// 
/// It also supports the &lt;initial-focus&gt; element, whose name property names
/// the widget to receive the focus when the window is mapped.
/// 
/// An example of a UI definition fragment with accel groups:
/// ```
/// <object class="GtkWindow">
///   <accel-groups>
///     <group name="accelgroup1"/>
///   </accel-groups>
///   <initial-focus name="thunderclap"/>
/// </object>
/// 
/// ...
/// 
/// <object class="GtkAccelGroup" id="accelgroup1"/>
/// ```
/// 
/// The GtkWindow implementation of the `GtkBuildable` interface supports
/// setting a child as the titlebar by specifying “titlebar” as the “type”
/// attribute of a &lt;child&gt; element.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// window.background
/// ├── decoration
/// ├── <titlebar child>.titlebar [.default-decoration]
/// ╰── <child>
/// ```
/// 
/// GtkWindow has a main CSS node with name window and style class .background,
/// and a subnode with name decoration.
/// 
/// Style classes that are typically used with the main CSS node are .csd (when
/// client-side decorations are in use), .solid-csd (for client-side decorations
/// without invisible borders), .ssd (used by mutter when rendering server-side
/// decorations). GtkWindow also represents window states with the following
/// style classes on the main node: .tiled, .maximized, .fullscreen. Specialized
/// types of window often add their own discriminating style classes, such as
/// .popup or .tooltip.
/// 
/// GtkWindow adds the .titlebar and .default-decoration style classes to the
/// widget that is added as a titlebar child.
///
/// The `WindowRef` type acts as a lightweight Swift reference to an underlying `GtkWindow` instance.
/// It exposes methods that can operate on this data type through `WindowProtocol` conformance.
/// Use `WindowRef` only as an `unowned` reference to an existing `GtkWindow` instance.
///
public struct WindowRef: WindowProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkWindow` instance.
    /// For type-safe access, use the generated, typed pointer `window_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension WindowRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkWindow>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkWindow>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkWindow>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkWindow>?) {
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

    /// Reference intialiser for a related type that implements `WindowProtocol`
    @inlinable init<T: WindowProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: WindowProtocol>(_ other: T) -> WindowRef { WindowRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkWindow`, which is a toplevel window that can
    /// contain other widgets. Nearly always, the type of the window should
    /// be `GTK_WINDOW_TOPLEVEL`. If you’re implementing something like a
    /// popup menu from scratch (which is a bad idea, just use `GtkMenu`),
    /// you might use `GTK_WINDOW_POPUP`. `GTK_WINDOW_POPUP` is not for
    /// dialogs, though in some other toolkits dialogs are called “popups”.
    /// In GTK+, `GTK_WINDOW_POPUP` means a pop-up menu or pop-up tooltip.
    /// On X11, popup windows are not controlled by the
    /// [window manager](#gtk-X11-arch).
    /// 
    /// If you simply want an undecorated window (no window borders), use
    /// `gtk_window_set_decorated()`, don’t use `GTK_WINDOW_POPUP`.
    /// 
    /// All top-level windows created by `gtk_window_new()` are stored in
    /// an internal top-level window list.  This list can be obtained from
    /// `gtk_window_list_toplevels()`.  Due to Gtk+ keeping a reference to
    /// the window internally, `gtk_window_new()` does not return a reference
    /// to the caller.
    /// 
    /// To delete a `GtkWindow`, call `gtk_widget_destroy()`.
    @inlinable init( type: GtkWindowType) {
        let rv = gtk_window_new(type)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// A GtkWindow is a toplevel window which can contain other widgets.
/// Windows normally have decorations that are under the control
/// of the windowing system and allow the user to manipulate the window
/// (resize it, move it, close it,...).
/// 
/// # GtkWindow as GtkBuildable
/// 
/// The GtkWindow implementation of the `GtkBuildable` interface supports a
/// custom &lt;accel-groups&gt; element, which supports any number of &lt;group&gt;
/// elements representing the `GtkAccelGroup` objects you want to add to
/// your window (synonymous with `gtk_window_add_accel_group()`.
/// 
/// It also supports the &lt;initial-focus&gt; element, whose name property names
/// the widget to receive the focus when the window is mapped.
/// 
/// An example of a UI definition fragment with accel groups:
/// ```
/// <object class="GtkWindow">
///   <accel-groups>
///     <group name="accelgroup1"/>
///   </accel-groups>
///   <initial-focus name="thunderclap"/>
/// </object>
/// 
/// ...
/// 
/// <object class="GtkAccelGroup" id="accelgroup1"/>
/// ```
/// 
/// The GtkWindow implementation of the `GtkBuildable` interface supports
/// setting a child as the titlebar by specifying “titlebar” as the “type”
/// attribute of a &lt;child&gt; element.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// window.background
/// ├── decoration
/// ├── <titlebar child>.titlebar [.default-decoration]
/// ╰── <child>
/// ```
/// 
/// GtkWindow has a main CSS node with name window and style class .background,
/// and a subnode with name decoration.
/// 
/// Style classes that are typically used with the main CSS node are .csd (when
/// client-side decorations are in use), .solid-csd (for client-side decorations
/// without invisible borders), .ssd (used by mutter when rendering server-side
/// decorations). GtkWindow also represents window states with the following
/// style classes on the main node: .tiled, .maximized, .fullscreen. Specialized
/// types of window often add their own discriminating style classes, such as
/// .popup or .tooltip.
/// 
/// GtkWindow adds the .titlebar and .default-decoration style classes to the
/// widget that is added as a titlebar child.
///
/// The `Window` type acts as a reference-counted owner of an underlying `GtkWindow` instance.
/// It provides the methods that can operate on this data type through `WindowProtocol` conformance.
/// Use `Window` as a strong reference or owner of a `GtkWindow` instance.
///
open class Window: Bin, WindowProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Window` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkWindow>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Window` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkWindow>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Window` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Window` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Window` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkWindow>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Window` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkWindow>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkWindow`.
    /// i.e., ownership is transferred to the `Window` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkWindow>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `WindowProtocol`
    /// Will retain `GtkWindow`.
    /// - Parameter other: an instance of a related type that implements `WindowProtocol`
    @inlinable public init<T: WindowProtocol>(window other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkWindow`, which is a toplevel window that can
    /// contain other widgets. Nearly always, the type of the window should
    /// be `GTK_WINDOW_TOPLEVEL`. If you’re implementing something like a
    /// popup menu from scratch (which is a bad idea, just use `GtkMenu`),
    /// you might use `GTK_WINDOW_POPUP`. `GTK_WINDOW_POPUP` is not for
    /// dialogs, though in some other toolkits dialogs are called “popups”.
    /// In GTK+, `GTK_WINDOW_POPUP` means a pop-up menu or pop-up tooltip.
    /// On X11, popup windows are not controlled by the
    /// [window manager](#gtk-X11-arch).
    /// 
    /// If you simply want an undecorated window (no window borders), use
    /// `gtk_window_set_decorated()`, don’t use `GTK_WINDOW_POPUP`.
    /// 
    /// All top-level windows created by `gtk_window_new()` are stored in
    /// an internal top-level window list.  This list can be obtained from
    /// `gtk_window_list_toplevels()`.  Due to Gtk+ keeping a reference to
    /// the window internally, `gtk_window_new()` does not return a reference
    /// to the caller.
    /// 
    /// To delete a `GtkWindow`, call `gtk_widget_destroy()`.
    @inlinable public init( type: GtkWindowType) {
        let rv = gtk_window_new(type)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum WindowPropertyName: String, PropertyNameProtocol {
    /// Whether the window should receive the input focus.
    case acceptFocus = "accept-focus"
    case appPaintable = "app-paintable"
    /// The `GtkApplication` associated with the window.
    /// 
    /// The application will be kept alive for at least as long as it
    /// has any windows associated with it (see `g_application_hold()`
    /// for a way to keep it alive without windows).
    /// 
    /// Normally, the connection between the application and the window
    /// will remain until the window is destroyed, but you can explicitly
    /// remove it by setting the :application property to `nil`.
    case application = "application"
    /// The widget to which this window is attached.
    /// See `gtk_window_set_attached_to()`.
    /// 
    /// Examples of places where specifying this relation is useful are
    /// for instance a `GtkMenu` created by a `GtkComboBox`, a completion
    /// popup window created by `GtkEntry` or a typeahead search entry
    /// created by `GtkTreeView`.
    case attachedTo = "attached-to"
    case borderWidth = "border-width"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case child = "child"
    case compositeChild = "composite-child"
    /// Whether the window should be decorated by the window manager.
    case decorated = "decorated"
    case defaultHeight = "default-height"
    case defaultWidth = "default-width"
    /// Whether the window frame should have a close button.
    case deletable = "deletable"
    case destroyWithParent = "destroy-with-parent"
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
    /// Whether the window should receive the input focus when mapped.
    case focusOnMap = "focus-on-map"
    /// Whether 'focus rectangles' are currently visible in this window.
    /// 
    /// This property is maintained by GTK+ based on user input
    /// and should not be set by applications.
    case focusVisible = "focus-visible"
    /// The window gravity of the window. See `gtk_window_move()` and `GdkGravity` for
    /// more details about window gravity.
    case gravity = "gravity"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Whether the window has a corner resize grip.
    /// 
    /// Note that the resize grip is only shown if the window is
    /// actually resizable and not maximized. Use
    /// `GtkWindow:resize-grip-visible` to find out if the resize
    /// grip is currently shown.
    ///
    /// **has-resize-grip is deprecated:**
    /// Resize grips have been removed.
    case hasResizeGrip = "has-resize-grip"
    /// Enables or disables the emission of `GtkWidget::query-tooltip` on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query-tooltip` to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case hasToplevelFocus = "has-toplevel-focus"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    /// Whether the titlebar should be hidden during maximization.
    case hideTitlebarWhenMaximized = "hide-titlebar-when-maximized"
    case icon = "icon"
    /// The :icon-name property specifies the name of the themed icon to
    /// use as the window icon. See `GtkIconTheme` for more details.
    case iconName = "icon-name"
    case isActive = "is-active"
    case isFocus = "is-focus"
    case isMaximized = "is-maximized"
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
    /// Whether mnemonics are currently visible in this window.
    /// 
    /// This property is maintained by GTK+ based on user input,
    /// and should not be set by applications.
    case mnemonicsVisible = "mnemonics-visible"
    case modal = "modal"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case receivesDefault = "receives-default"
    case resizable = "resizable"
    /// Whether a corner resize grip is currently shown.
    ///
    /// **resize-grip-visible is deprecated:**
    /// Resize grips have been removed.
    case resizeGripVisible = "resize-grip-visible"
    case resizeMode = "resize-mode"
    case role = "role"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case screen = "screen"
    case sensitive = "sensitive"
    case skipPagerHint = "skip-pager-hint"
    case skipTaskbarHint = "skip-taskbar-hint"
    /// The :startup-id is a write-only property for setting window's
    /// startup notification identifier. See `gtk_window_set_startup_id()`
    /// for more details.
    case startupID = "startup-id"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    case title = "title"
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
    /// The transient parent of the window. See `gtk_window_set_transient_for()` for
    /// more details about transient windows.
    case transientFor = "transient-for"
    case type = "type"
    case typeHint = "type-hint"
    case urgencyHint = "urgency-hint"
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
    case windowPosition = "window-position"
}

public extension WindowProtocol {
    /// Bind a `WindowPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: WindowPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Window property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: WindowPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Window property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: WindowPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum WindowSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// The `activate-default` signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user activates the default widget
    /// of `window`.
    case activateDefault = "activate-default"
    /// The `activate-focus` signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user activates the currently
    /// focused widget of `window`.
    case activateFocus = "activate-focus"
    case add = "add"
    /// The `button-press-event` signal will be emitted when a button
    /// (typically from a mouse) is pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonPressEvent = "button-press-event"
    /// The `button-release-event` signal will be emitted when a button
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
    /// The `child-notify` signal is emitted for each
    /// [child property](#child-properties)  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// The `composited-changed` signal is emitted when the composited
    /// status of `widgets` screen changes.
    /// See `gdk_screen_is_composited()`.
    ///
    /// **composited-changed is deprecated:**
    /// Use GdkScreen::composited-changed instead.
    case compositedChanged = "composited-changed"
    /// The `configure-event` signal will be emitted when the size, position or
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
    /// The `delete-event` signal is emitted if a user requests that
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
    /// The `destroy-event` signal is emitted when a `GdkWindow` is destroyed.
    /// You rarely get this signal, because most widgets disconnect themselves
    /// from their window before they destroy it, so no widget owns the
    /// window at destroy time.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case destroyEvent = "destroy-event"
    /// The `direction-changed` signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The `drag-begin` signal is emitted on the drag source when a drag is
    /// started. A typical reason to connect to this signal is to set up a
    /// custom drag icon with e.g. `gtk_drag_source_set_icon_pixbuf()`.
    /// 
    /// Note that some widgets set up a drag icon in the default handler of
    /// this signal, so you may have to use `g_signal_connect_after()` to
    /// override what the default handler did.
    case dragBegin = "drag-begin"
    /// The `drag-data-delete` signal is emitted on the drag source when a drag
    /// with the action `GDK_ACTION_MOVE` is successfully completed. The signal
    /// handler is responsible for deleting the data that has been dropped. What
    /// "delete" means depends on the context of the drag operation.
    case dragDataDelete = "drag-data-delete"
    /// The `drag-data-get` signal is emitted on the drag source when the drop
    /// site requests the data which is dragged. It is the responsibility of
    /// the signal handler to fill `data` with the data in the format which
    /// is indicated by `info`. See `gtk_selection_data_set()` and
    /// `gtk_selection_data_set_text()`.
    case dragDataGet = "drag-data-get"
    /// The `drag-data-received` signal is emitted on the drop site when the
    /// dragged data has been received. If the data was received in order to
    /// determine whether the drop will be accepted, the handler is expected
    /// to call `gdk_drag_status()` and not finish the drag.
    /// If the data was received in response to a `GtkWidget::drag-drop` signal
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
    /// The `drag-drop` signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the cursor position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// Otherwise, the handler returns `true`. In this case, the handler must
    /// ensure that `gtk_drag_finish()` is called to let the source know that
    /// the drop is done. The call to `gtk_drag_finish()` can be done either
    /// directly or in a `GtkWidget::drag-data-received` handler which gets
    /// triggered by calling `gtk_drag_get_data()` to receive the data for one
    /// or more of the supported targets.
    case dragDrop = "drag-drop"
    /// The `drag-end` signal is emitted on the drag source when a drag is
    /// finished.  A typical reason to connect to this signal is to undo
    /// things done in `GtkWidget::drag-begin`.
    case dragEnd = "drag-end"
    /// The `drag-failed` signal is emitted on the drag source when a drag has
    /// failed. The signal handler may hook custom code to handle a failed DnD
    /// operation based on the type of error, it returns `true` is the failure has
    /// been already handled (not showing the default "drag operation failed"
    /// animation), otherwise it returns `false`.
    case dragFailed = "drag-failed"
    /// The `drag-leave` signal is emitted on the drop site when the cursor
    /// leaves the widget. A typical reason to connect to this signal is to
    /// undo things done in `GtkWidget::drag-motion`, e.g. undo highlighting
    /// with `gtk_drag_unhighlight()`.
    /// 
    /// 
    /// Likewise, the `GtkWidget::drag-leave` signal is also emitted before the
    /// `drag-drop` signal, for instance to allow cleaning up of a preview item
    /// created in the `GtkWidget::drag-motion` signal handler.
    case dragLeave = "drag-leave"
    /// The `drag-motion` signal is emitted on the drop site when the user
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
    /// defer the `gdk_drag_status()` call to the `GtkWidget::drag-data-received`
    /// handler. Note that you must pass `GTK_DEST_DEFAULT_DROP`,
    /// `GTK_DEST_DEFAULT_MOTION` or `GTK_DEST_DEFAULT_ALL` to `gtk_drag_dest_set()`
    /// when using the drag-motion signal that way.
    /// 
    /// Also note that there is no drag-enter signal. The drag receiver has to
    /// keep track of whether he has received any drag-motion signals since the
    /// last `GtkWidget::drag-leave` and if not, treat the drag-motion signal as
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
    /// The `enable-debugging` signal is a [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user enables or disables interactive
    /// debugging. When `toggle` is `true`, interactive debugging is toggled
    /// on or off, when it is `false`, the debugger will be pointed at the
    /// widget under the pointer.
    /// 
    /// The default bindings for this signal are Ctrl-Shift-I
    /// and Ctrl-Shift-D.
    case enableDebugging = "enable-debugging"
    /// The `enter-notify-event` will be emitted when the pointer enters
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
    /// `GtkWidget::key-press-event`) and finally a generic
    /// `GtkWidget::event-after` signal.
    case event = "event"
    /// After the emission of the `GtkWidget::event` signal and (optionally)
    /// the second more specific signal, `event-after` will be emitted
    /// regardless of the previous two signals handlers return values.
    case eventAfter = "event-after"
    case focus = "focus"
    /// The `focus-in-event` signal will be emitted when the keyboard focus
    /// enters the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusInEvent = "focus-in-event"
    /// The `focus-out-event` signal will be emitted when the keyboard focus
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
    /// The `grab-notify` signal is emitted when a widget becomes
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
    /// The `hierarchy-changed` signal is emitted when the
    /// anchored state of a widget changes. A widget is
    /// “anchored” when its toplevel
    /// ancestor is a `GtkWindow`. This signal is emitted when
    /// a widget changes from un-anchored to anchored or vice-versa.
    case hierarchyChanged = "hierarchy-changed"
    /// The `key-press-event` signal is emitted when a key is pressed. The signal
    /// emission will reoccur at the key-repeat rate when the key is kept pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyPressEvent = "key-press-event"
    /// The `key-release-event` signal is emitted when a key is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyReleaseEvent = "key-release-event"
    /// Gets emitted if keyboard navigation fails.
    /// See `gtk_widget_keynav_failed()` for details.
    case keynavFailed = "keynav-failed"
    /// The `keys-changed` signal gets emitted when the set of accelerators
    /// or mnemonics that are associated with `window` changes.
    case keysChanged = "keys-changed"
    /// The `leave-notify-event` will be emitted when the pointer leaves
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
    /// are also visible. Once the map has occurred, `GtkWidget::map-event` will
    /// be emitted.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget::unmap`.
    case map = "map"
    /// The `map-event` signal will be emitted when the `widget`'s window is
    /// mapped. A window is mapped when it becomes visible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case mapEvent = "map-event"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// The `motion-notify-event` signal is emitted when the pointer moves
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The `parent-set` signal is emitted when a new parent
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
    /// The `property-notify-event` signal will be emitted when a property on
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
    /// `GdkWindow`, which means that `gtk_widget_realize()` has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    case remove = "remove"
    /// The `screen-changed` signal gets emitted when the
    /// screen of a widget has changed.
    case screenChanged = "screen-changed"
    /// The `scroll-event` signal is emitted when a button in the 4 to 7
    /// range is pressed. Wheel mice are usually configured to generate
    /// button press events for buttons 4 and 5 when the wheel is turned.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_SCROLL_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case scrollEvent = "scroll-event"
    /// The `selection-clear-event` signal will be emitted when the
    /// the `widget`'s window has lost ownership of a selection.
    case selectionClearEvent = "selection-clear-event"
    case selectionGet = "selection-get"
    case selectionNotifyEvent = "selection-notify-event"
    case selectionReceived = "selection-received"
    /// The `selection-request-event` signal will be emitted when
    /// another client requests ownership of the selection owned by
    /// the `widget`'s window.
    case selectionRequestEvent = "selection-request-event"
    /// This signal is emitted whenever the currently focused widget in
    /// this window changes.
    case setFocus = "set-focus"
    case setFocusChild = "set-focus-child"
    /// The `show` signal is emitted when `widget` is shown, for example with
    /// `gtk_widget_show()`.
    case show = "show"
    case showHelp = "show-help"
    case sizeAllocate = "size-allocate"
    /// The `state-changed` signal is emitted when the widget state changes.
    /// See `gtk_widget_get_state()`.
    ///
    /// **state-changed is deprecated:**
    /// Use #GtkWidget::state-flags-changed instead.
    case stateChanged = "state-changed"
    /// The `state-flags-changed` signal is emitted when the widget state
    /// changes, see `gtk_widget_get_state_flags()`.
    case stateFlagsChanged = "state-flags-changed"
    /// The `style-set` signal is emitted when a new style has been set
    /// on a widget. Note that style-modifying functions like
    /// `gtk_widget_modify_base()` also cause this signal to be emitted.
    /// 
    /// Note that this signal is emitted for changes to the deprecated
    /// `GtkStyle`. To track changes to the `GtkStyleContext` associated
    /// with a widget, use the `GtkWidget::style-updated` signal.
    ///
    /// **style-set is deprecated:**
    /// Use the #GtkWidget::style-updated signal
    case styleSet = "style-set"
    /// The `style-updated` signal is a convenience signal that is emitted when the
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
    /// The `unmap-event` signal will be emitted when the `widget`'s window is
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
    /// The `visibility-notify-event` will be emitted when the `widget`'s
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
    /// The `window-state-event` will be emitted when the state of the
    /// toplevel window associated to the `widget` changes.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable
    /// this mask automatically for all new windows.
    case windowStateEvent = "window-state-event"
    /// Whether the window should receive the input focus.
    case notifyAcceptFocus = "notify::accept-focus"
    case notifyAppPaintable = "notify::app-paintable"
    /// The `GtkApplication` associated with the window.
    /// 
    /// The application will be kept alive for at least as long as it
    /// has any windows associated with it (see `g_application_hold()`
    /// for a way to keep it alive without windows).
    /// 
    /// Normally, the connection between the application and the window
    /// will remain until the window is destroyed, but you can explicitly
    /// remove it by setting the :application property to `nil`.
    case notifyApplication = "notify::application"
    /// The widget to which this window is attached.
    /// See `gtk_window_set_attached_to()`.
    /// 
    /// Examples of places where specifying this relation is useful are
    /// for instance a `GtkMenu` created by a `GtkComboBox`, a completion
    /// popup window created by `GtkEntry` or a typeahead search entry
    /// created by `GtkTreeView`.
    case notifyAttachedTo = "notify::attached-to"
    case notifyBorderWidth = "notify::border-width"
    case notifyCanDefault = "notify::can-default"
    case notifyCanFocus = "notify::can-focus"
    case notifyChild = "notify::child"
    case notifyCompositeChild = "notify::composite-child"
    /// Whether the window should be decorated by the window manager.
    case notifyDecorated = "notify::decorated"
    case notifyDefaultHeight = "notify::default-height"
    case notifyDefaultWidth = "notify::default-width"
    /// Whether the window frame should have a close button.
    case notifyDeletable = "notify::deletable"
    case notifyDestroyWithParent = "notify::destroy-with-parent"
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
    /// Whether the window should receive the input focus when mapped.
    case notifyFocusOnMap = "notify::focus-on-map"
    /// Whether 'focus rectangles' are currently visible in this window.
    /// 
    /// This property is maintained by GTK+ based on user input
    /// and should not be set by applications.
    case notifyFocusVisible = "notify::focus-visible"
    /// The window gravity of the window. See `gtk_window_move()` and `GdkGravity` for
    /// more details about window gravity.
    case notifyGravity = "notify::gravity"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case notifyHalign = "notify::halign"
    case notifyHasDefault = "notify::has-default"
    case notifyHasFocus = "notify::has-focus"
    /// Whether the window has a corner resize grip.
    /// 
    /// Note that the resize grip is only shown if the window is
    /// actually resizable and not maximized. Use
    /// `GtkWindow:resize-grip-visible` to find out if the resize
    /// grip is currently shown.
    ///
    /// **has-resize-grip is deprecated:**
    /// Resize grips have been removed.
    case notifyHasResizeGrip = "notify::has-resize-grip"
    /// Enables or disables the emission of `GtkWidget::query-tooltip` on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query-tooltip` to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHasToplevelFocus = "notify::has-toplevel-focus"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case notifyHexpandSet = "notify::hexpand-set"
    /// Whether the titlebar should be hidden during maximization.
    case notifyHideTitlebarWhenMaximized = "notify::hide-titlebar-when-maximized"
    case notifyIcon = "notify::icon"
    /// The :icon-name property specifies the name of the themed icon to
    /// use as the window icon. See `GtkIconTheme` for more details.
    case notifyIconName = "notify::icon-name"
    case notifyIsActive = "notify::is-active"
    case notifyIsFocus = "notify::is-focus"
    case notifyIsMaximized = "notify::is-maximized"
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
    /// Whether mnemonics are currently visible in this window.
    /// 
    /// This property is maintained by GTK+ based on user input,
    /// and should not be set by applications.
    case notifyMnemonicsVisible = "notify::mnemonics-visible"
    case notifyModal = "notify::modal"
    case notifyName = "notify::name"
    case notifyNoShowAll = "notify::no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case notifyOpacity = "notify::opacity"
    case notifyParent = "notify::parent"
    case notifyReceivesDefault = "notify::receives-default"
    case notifyResizable = "notify::resizable"
    /// Whether a corner resize grip is currently shown.
    ///
    /// **resize-grip-visible is deprecated:**
    /// Resize grips have been removed.
    case notifyResizeGripVisible = "notify::resize-grip-visible"
    case notifyResizeMode = "notify::resize-mode"
    case notifyRole = "notify::role"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifyScreen = "notify::screen"
    case notifySensitive = "notify::sensitive"
    case notifySkipPagerHint = "notify::skip-pager-hint"
    case notifySkipTaskbarHint = "notify::skip-taskbar-hint"
    /// The :startup-id is a write-only property for setting window's
    /// startup notification identifier. See `gtk_window_set_startup_id()`
    /// for more details.
    case notifyStartupID = "notify::startup-id"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case notifyStyle = "notify::style"
    case notifyTitle = "notify::title"
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
    /// The transient parent of the window. See `gtk_window_set_transient_for()` for
    /// more details about transient windows.
    case notifyTransientFor = "notify::transient-for"
    case notifyType = "notify::type"
    case notifyTypeHint = "notify::type-hint"
    case notifyUrgencyHint = "notify::urgency-hint"
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
    case notifyWindowPosition = "notify::window-position"
}

// MARK: Window signals
public extension WindowProtocol {
    /// Connect a Swift signal handler to the given, typed `WindowSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: WindowSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `WindowSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: WindowSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// The `activate-default` signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user activates the default widget
    /// of `window`.
    /// - Note: This represents the underlying `activate-default` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `activateDefault` signal is emitted
    @discardableResult @inlinable func onActivateDefault(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<WindowRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .activateDefault,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `activate-default` signal for using the `connect(signal:)` methods
    static var activateDefaultSignal: WindowSignalName { .activateDefault }
    
    /// The `activate-focus` signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user activates the currently
    /// focused widget of `window`.
    /// - Note: This represents the underlying `activate-focus` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `activateFocus` signal is emitted
    @discardableResult @inlinable func onActivateFocus(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<WindowRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .activateFocus,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `activate-focus` signal for using the `connect(signal:)` methods
    static var activateFocusSignal: WindowSignalName { .activateFocus }
    
    /// The `enable-debugging` signal is a [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user enables or disables interactive
    /// debugging. When `toggle` is `true`, interactive debugging is toggled
    /// on or off, when it is `false`, the debugger will be pointed at the
    /// widget under the pointer.
    /// 
    /// The default bindings for this signal are Ctrl-Shift-I
    /// and Ctrl-Shift-D.
    /// - Note: This represents the underlying `enable-debugging` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter toggle: toggle the debugger
    /// - Parameter handler: `true` if the key binding was handled
    /// Run the given callback whenever the `enableDebugging` signal is emitted
    @discardableResult @inlinable func onEnableDebugging(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ toggle: Bool) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, Bool, Bool>
        let cCallback: @convention(c) (gpointer, gboolean, gpointer) -> gboolean = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(WindowRef(raw: unownedSelf), ((arg1) != 0))
            return gboolean((output) ? 1 : 0)
        }
        return connect(
            signal: .enableDebugging,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `enable-debugging` signal for using the `connect(signal:)` methods
    static var enableDebuggingSignal: WindowSignalName { .enableDebugging }
    
    /// The `keys-changed` signal gets emitted when the set of accelerators
    /// or mnemonics that are associated with `window` changes.
    /// - Note: This represents the underlying `keys-changed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `keysChanged` signal is emitted
    @discardableResult @inlinable func onKeysChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<WindowRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .keysChanged,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `keys-changed` signal for using the `connect(signal:)` methods
    static var keysChangedSignal: WindowSignalName { .keysChanged }
    
    /// This signal is emitted whenever the currently focused widget in
    /// this window changes.
    /// - Note: This represents the underlying `set-focus` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter widget: the newly focused widget (or `nil` for no focus)
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `setFocus` signal is emitted
    @discardableResult @inlinable func onSetFocus(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ widget: WidgetRef?) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, WidgetRef?, Void>
        let cCallback: @convention(c) (gpointer, gpointer?, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), arg1.flatMap(WidgetRef.init(raw:)))
            return output
        }
        return connect(
            signal: .setFocus,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `set-focus` signal for using the `connect(signal:)` methods
    static var setFocusSignal: WindowSignalName { .setFocus }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::accept-focus` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyAcceptFocus` signal is emitted
    @discardableResult @inlinable func onNotifyAcceptFocus(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyAcceptFocus,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::accept-focus` signal for using the `connect(signal:)` methods
    static var notifyAcceptFocusSignal: WindowSignalName { .notifyAcceptFocus }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::application` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyApplication` signal is emitted
    @discardableResult @inlinable func onNotifyApplication(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyApplication,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::application` signal for using the `connect(signal:)` methods
    static var notifyApplicationSignal: WindowSignalName { .notifyApplication }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::attached-to` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyAttachedTo` signal is emitted
    @discardableResult @inlinable func onNotifyAttachedTo(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyAttachedTo,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::attached-to` signal for using the `connect(signal:)` methods
    static var notifyAttachedToSignal: WindowSignalName { .notifyAttachedTo }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::decorated` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyDecorated` signal is emitted
    @discardableResult @inlinable func onNotifyDecorated(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyDecorated,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::decorated` signal for using the `connect(signal:)` methods
    static var notifyDecoratedSignal: WindowSignalName { .notifyDecorated }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::default-height` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyDefaultHeight` signal is emitted
    @discardableResult @inlinable func onNotifyDefaultHeight(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyDefaultHeight,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::default-height` signal for using the `connect(signal:)` methods
    static var notifyDefaultHeightSignal: WindowSignalName { .notifyDefaultHeight }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::default-width` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyDefaultWidth` signal is emitted
    @discardableResult @inlinable func onNotifyDefaultWidth(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyDefaultWidth,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::default-width` signal for using the `connect(signal:)` methods
    static var notifyDefaultWidthSignal: WindowSignalName { .notifyDefaultWidth }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::deletable` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyDeletable` signal is emitted
    @discardableResult @inlinable func onNotifyDeletable(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyDeletable,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::deletable` signal for using the `connect(signal:)` methods
    static var notifyDeletableSignal: WindowSignalName { .notifyDeletable }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::destroy-with-parent` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyDestroyWithParent` signal is emitted
    @discardableResult @inlinable func onNotifyDestroyWithParent(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyDestroyWithParent,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::destroy-with-parent` signal for using the `connect(signal:)` methods
    static var notifyDestroyWithParentSignal: WindowSignalName { .notifyDestroyWithParent }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::focus-on-map` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyFocusOnMap` signal is emitted
    @discardableResult @inlinable func onNotifyFocusOnMap(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyFocusOnMap,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::focus-on-map` signal for using the `connect(signal:)` methods
    static var notifyFocusOnMapSignal: WindowSignalName { .notifyFocusOnMap }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::focus-visible` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyFocusVisible` signal is emitted
    @discardableResult @inlinable func onNotifyFocusVisible(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyFocusVisible,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::focus-visible` signal for using the `connect(signal:)` methods
    static var notifyFocusVisibleSignal: WindowSignalName { .notifyFocusVisible }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::gravity` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyGravity` signal is emitted
    @discardableResult @inlinable func onNotifyGravity(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyGravity,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::gravity` signal for using the `connect(signal:)` methods
    static var notifyGravitySignal: WindowSignalName { .notifyGravity }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::has-resize-grip` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyHasResizeGrip` signal is emitted
    @discardableResult @inlinable func onNotifyHasResizeGrip(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyHasResizeGrip,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::has-resize-grip` signal for using the `connect(signal:)` methods
    static var notifyHasResizeGripSignal: WindowSignalName { .notifyHasResizeGrip }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::has-toplevel-focus` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyHasToplevelFocus` signal is emitted
    @discardableResult @inlinable func onNotifyHasToplevelFocus(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyHasToplevelFocus,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::has-toplevel-focus` signal for using the `connect(signal:)` methods
    static var notifyHasToplevelFocusSignal: WindowSignalName { .notifyHasToplevelFocus }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::hide-titlebar-when-maximized` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyHideTitlebarWhenMaximized` signal is emitted
    @discardableResult @inlinable func onNotifyHideTitlebarWhenMaximized(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyHideTitlebarWhenMaximized,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::hide-titlebar-when-maximized` signal for using the `connect(signal:)` methods
    static var notifyHideTitlebarWhenMaximizedSignal: WindowSignalName { .notifyHideTitlebarWhenMaximized }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::icon` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyIcon` signal is emitted
    @discardableResult @inlinable func onNotifyIcon(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyIcon,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::icon` signal for using the `connect(signal:)` methods
    static var notifyIconSignal: WindowSignalName { .notifyIcon }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::icon-name` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyIconName` signal is emitted
    @discardableResult @inlinable func onNotifyIconName(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyIconName,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::icon-name` signal for using the `connect(signal:)` methods
    static var notifyIconNameSignal: WindowSignalName { .notifyIconName }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::is-active` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyIsActive` signal is emitted
    @discardableResult @inlinable func onNotifyIsActive(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyIsActive,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::is-active` signal for using the `connect(signal:)` methods
    static var notifyIsActiveSignal: WindowSignalName { .notifyIsActive }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::is-maximized` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyIsMaximized` signal is emitted
    @discardableResult @inlinable func onNotifyIsMaximized(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyIsMaximized,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::is-maximized` signal for using the `connect(signal:)` methods
    static var notifyIsMaximizedSignal: WindowSignalName { .notifyIsMaximized }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::mnemonics-visible` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyMnemonicsVisible` signal is emitted
    @discardableResult @inlinable func onNotifyMnemonicsVisible(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyMnemonicsVisible,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::mnemonics-visible` signal for using the `connect(signal:)` methods
    static var notifyMnemonicsVisibleSignal: WindowSignalName { .notifyMnemonicsVisible }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::modal` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyModal` signal is emitted
    @discardableResult @inlinable func onNotifyModal(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyModal,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::modal` signal for using the `connect(signal:)` methods
    static var notifyModalSignal: WindowSignalName { .notifyModal }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::resizable` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyResizable` signal is emitted
    @discardableResult @inlinable func onNotifyResizable(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyResizable,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::resizable` signal for using the `connect(signal:)` methods
    static var notifyResizableSignal: WindowSignalName { .notifyResizable }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::resize-grip-visible` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyResizeGripVisible` signal is emitted
    @discardableResult @inlinable func onNotifyResizeGripVisible(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyResizeGripVisible,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::resize-grip-visible` signal for using the `connect(signal:)` methods
    static var notifyResizeGripVisibleSignal: WindowSignalName { .notifyResizeGripVisible }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::role` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyRole` signal is emitted
    @discardableResult @inlinable func onNotifyRole(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyRole,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::role` signal for using the `connect(signal:)` methods
    static var notifyRoleSignal: WindowSignalName { .notifyRole }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::screen` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyScreen` signal is emitted
    @discardableResult @inlinable func onNotifyScreen(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyScreen,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::screen` signal for using the `connect(signal:)` methods
    static var notifyScreenSignal: WindowSignalName { .notifyScreen }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::skip-pager-hint` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifySkipPagerHint` signal is emitted
    @discardableResult @inlinable func onNotifySkipPagerHint(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifySkipPagerHint,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::skip-pager-hint` signal for using the `connect(signal:)` methods
    static var notifySkipPagerHintSignal: WindowSignalName { .notifySkipPagerHint }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::skip-taskbar-hint` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifySkipTaskbarHint` signal is emitted
    @discardableResult @inlinable func onNotifySkipTaskbarHint(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifySkipTaskbarHint,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::skip-taskbar-hint` signal for using the `connect(signal:)` methods
    static var notifySkipTaskbarHintSignal: WindowSignalName { .notifySkipTaskbarHint }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::startup-id` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyStartupID` signal is emitted
    @discardableResult @inlinable func onNotifyStartupID(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyStartupID,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::startup-id` signal for using the `connect(signal:)` methods
    static var notifyStartupIDSignal: WindowSignalName { .notifyStartupID }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::title` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyTitle` signal is emitted
    @discardableResult @inlinable func onNotifyTitle(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyTitle,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::title` signal for using the `connect(signal:)` methods
    static var notifyTitleSignal: WindowSignalName { .notifyTitle }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::transient-for` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyTransientFor` signal is emitted
    @discardableResult @inlinable func onNotifyTransientFor(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyTransientFor,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::transient-for` signal for using the `connect(signal:)` methods
    static var notifyTransientForSignal: WindowSignalName { .notifyTransientFor }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::type` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyType` signal is emitted
    @discardableResult @inlinable func onNotifyType(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyType,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::type` signal for using the `connect(signal:)` methods
    static var notifyTypeSignal: WindowSignalName { .notifyType }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::type-hint` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyTypeHint` signal is emitted
    @discardableResult @inlinable func onNotifyTypeHint(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyTypeHint,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::type-hint` signal for using the `connect(signal:)` methods
    static var notifyTypeHintSignal: WindowSignalName { .notifyTypeHint }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::urgency-hint` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyUrgencyHint` signal is emitted
    @discardableResult @inlinable func onNotifyUrgencyHint(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyUrgencyHint,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::urgency-hint` signal for using the `connect(signal:)` methods
    static var notifyUrgencyHintSignal: WindowSignalName { .notifyUrgencyHint }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::window-position` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyWindowPosition` signal is emitted
    @discardableResult @inlinable func onNotifyWindowPosition(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyWindowPosition,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::window-position` signal for using the `connect(signal:)` methods
    static var notifyWindowPositionSignal: WindowSignalName { .notifyWindowPosition }
    
}

// MARK: Window Class: WindowProtocol extension (methods and fields)
public extension WindowProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkWindow` instance.
    @inlinable var window_ptr: UnsafeMutablePointer<GtkWindow>! { return ptr?.assumingMemoryBound(to: GtkWindow.self) }

    /// Activates the default widget for the window, unless the current
    /// focused widget has been configured to receive the default action
    /// (see `gtk_widget_set_receives_default()`), in which case the
    /// focused widget is activated.
    @inlinable func activateDefault() -> Bool {
        let rv = ((gtk_window_activate_default(window_ptr)) != 0)
        return rv
    }

    /// Activates the current focused widget within the window.
    @inlinable func activateFocus() -> Bool {
        let rv = ((gtk_window_activate_focus(window_ptr)) != 0)
        return rv
    }

    /// Activates mnemonics and accelerators for this `GtkWindow`. This is normally
    /// called by the default `key_press_event` handler for toplevel windows,
    /// however in some cases it may be useful to call this directly when
    /// overriding the standard key handling for a toplevel window.
    @inlinable func activateKey<EventKeyT: Gdk.EventKeyProtocol>(event: EventKeyT) -> Bool {
        let rv = ((gtk_window_activate_key(window_ptr, event._ptr)) != 0)
        return rv
    }

    /// Associate `accel_group` with `window`, such that calling
    /// `gtk_accel_groups_activate()` on `window` will activate accelerators
    /// in `accel_group`.
    @inlinable func add<AccelGroupT: AccelGroupProtocol>(accelGroup: AccelGroupT) {
        gtk_window_add_accel_group(window_ptr, accelGroup.accel_group_ptr)
    
    }

    /// Adds a mnemonic to this window.
    @inlinable func addMnemonic<WidgetT: WidgetProtocol>(keyval: Int, target: WidgetT) {
        gtk_window_add_mnemonic(window_ptr, guint(keyval), target.widget_ptr)
    
    }

    /// Starts moving a window. This function is used if an application has
    /// window movement grips. When GDK can support it, the window movement
    /// will be done using the standard mechanism for the
    /// [window manager](#gtk-X11-arch) or windowing
    /// system. Otherwise, GDK will try to emulate window movement,
    /// potentially not all that well, depending on the windowing system.
    @inlinable func beginMoveDrag(button: Int, rootX: Int, rootY: Int, timestamp: guint32) {
        gtk_window_begin_move_drag(window_ptr, gint(button), gint(rootX), gint(rootY), timestamp)
    
    }

    /// Starts resizing a window. This function is used if an application
    /// has window resizing controls. When GDK can support it, the resize
    /// will be done using the standard mechanism for the
    /// [window manager](#gtk-X11-arch) or windowing
    /// system. Otherwise, GDK will try to emulate window resizing,
    /// potentially not all that well, depending on the windowing system.
    @inlinable func beginResizeDrag(edge: GdkWindowEdge, button: Int, rootX: Int, rootY: Int, timestamp: guint32) {
        gtk_window_begin_resize_drag(window_ptr, edge, gint(button), gint(rootX), gint(rootY), timestamp)
    
    }

    /// Requests that the window is closed, similar to what happens
    /// when a window manager close button is clicked.
    /// 
    /// This function can be used with close buttons in custom
    /// titlebars.
    @inlinable func close() {
        gtk_window_close(window_ptr)
    
    }

    /// Asks to deiconify (i.e. unminimize) the specified `window`. Note
    /// that you shouldn’t assume the window is definitely deiconified
    /// afterward, because other entities (e.g. the user or
    /// [window manager](#gtk-X11-arch))) could iconify it
    /// again before your code which assumes deiconification gets to run.
    /// 
    /// You can track iconification via the “window-state-event” signal
    /// on `GtkWidget`.
    @inlinable func deiconify() {
        gtk_window_deiconify(window_ptr)
    
    }

    /// Asks to place `window` in the fullscreen state. Note that you
    /// shouldn’t assume the window is definitely full screen afterward,
    /// because other entities (e.g. the user or
    /// [window manager](#gtk-X11-arch)) could unfullscreen it
    /// again, and not all window managers honor requests to fullscreen
    /// windows. But normally the window will end up fullscreen. Just
    /// don’t write code that crashes if not.
    /// 
    /// You can track the fullscreen state via the “window-state-event” signal
    /// on `GtkWidget`.
    @inlinable func fullscreen() {
        gtk_window_fullscreen(window_ptr)
    
    }

    /// Asks to place `window` in the fullscreen state. Note that you shouldn't assume
    /// the window is definitely full screen afterward.
    /// 
    /// You can track the fullscreen state via the "window-state-event" signal
    /// on `GtkWidget`.
    @inlinable func fullscreenOnMonitor<ScreenT: Gdk.ScreenProtocol>(screen: ScreenT, monitor: Int) {
        gtk_window_fullscreen_on_monitor(window_ptr, screen.screen_ptr, gint(monitor))
    
    }

    /// Gets the value set by `gtk_window_set_accept_focus()`.
    @inlinable func getAcceptFocus() -> Bool {
        let rv = ((gtk_window_get_accept_focus(window_ptr)) != 0)
        return rv
    }

    /// Gets the `GtkApplication` associated with the window (if any).
    @inlinable func getApplication() -> ApplicationRef! {
        let rv = ApplicationRef(gconstpointer: gconstpointer(gtk_window_get_application(window_ptr)))
        return rv
    }

    /// Fetches the attach widget for this window. See
    /// `gtk_window_set_attached_to()`.
    @inlinable func getAttachedTo() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_window_get_attached_to(window_ptr))) else { return nil }
        return rv
    }

    /// Returns whether the window has been set to have decorations
    /// such as a title bar via `gtk_window_set_decorated()`.
    @inlinable func getDecorated() -> Bool {
        let rv = ((gtk_window_get_decorated(window_ptr)) != 0)
        return rv
    }

    /// Gets the default size of the window. A value of -1 for the width or
    /// height indicates that a default size has not been explicitly set
    /// for that dimension, so the “natural” size of the window will be
    /// used.
    @inlinable func getDefaultSize(width: UnsafeMutablePointer<gint>! = nil, height: UnsafeMutablePointer<gint>! = nil) {
        gtk_window_get_default_size(window_ptr, width, height)
    
    }

    /// Returns the default widget for `window`. See
    /// `gtk_window_set_default()` for more details.
    @inlinable func getDefaultWidget() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_window_get_default_widget(window_ptr))) else { return nil }
        return rv
    }

    /// Returns whether the window has been set to have a close button
    /// via `gtk_window_set_deletable()`.
    @inlinable func getDeletable() -> Bool {
        let rv = ((gtk_window_get_deletable(window_ptr)) != 0)
        return rv
    }

    /// Returns whether the window will be destroyed with its transient parent. See
    /// gtk_window_set_destroy_with_parent ().
    @inlinable func getDestroyWithParent() -> Bool {
        let rv = ((gtk_window_get_destroy_with_parent(window_ptr)) != 0)
        return rv
    }

    /// Retrieves the current focused widget within the window.
    /// Note that this is the widget that would have the focus
    /// if the toplevel window focused; if the toplevel window
    /// is not focused then  `gtk_widget_has_focus (widget)` will
    /// not be `true` for the widget.
    @inlinable func getFocus() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_window_get_focus(window_ptr))) else { return nil }
        return rv
    }

    /// Gets the value set by `gtk_window_set_focus_on_map()`.
    @inlinable func getFocusOnMap() -> Bool {
        let rv = ((gtk_window_get_focus_on_map(window_ptr)) != 0)
        return rv
    }

    /// Gets the value of the `GtkWindow:focus-visible` property.
    @inlinable func getFocusVisible() -> Bool {
        let rv = ((gtk_window_get_focus_visible(window_ptr)) != 0)
        return rv
    }

    /// Gets the value set by `gtk_window_set_gravity()`.
    @inlinable func getGravity() -> GdkGravity {
        let rv = gtk_window_get_gravity(window_ptr)
        return rv
    }

    /// Returns the group for `window` or the default group, if
    /// `window` is `nil` or if `window` does not have an explicit
    /// window group.
    @inlinable func getGroup() -> WindowGroupRef! {
        let rv = WindowGroupRef(gconstpointer: gconstpointer(gtk_window_get_group(window_ptr)))
        return rv
    }

    /// Determines whether the window may have a resize grip.
    ///
    /// **get_has_resize_grip is deprecated:**
    /// Resize grips have been removed.
    @available(*, deprecated)
    @inlinable func getHasResizeGrip() -> Bool {
        let rv = ((gtk_window_get_has_resize_grip(window_ptr)) != 0)
        return rv
    }

    /// Returns whether the window has requested to have its titlebar hidden
    /// when maximized. See gtk_window_set_hide_titlebar_when_maximized ().
    @inlinable func getHideTitlebarWhenMaximized() -> Bool {
        let rv = ((gtk_window_get_hide_titlebar_when_maximized(window_ptr)) != 0)
        return rv
    }

    /// Gets the value set by `gtk_window_set_icon()` (or if you've
    /// called `gtk_window_set_icon_list()`, gets the first icon in
    /// the icon list).
    @inlinable func getIcon() -> PixbufRef! {
        let rv = PixbufRef(gconstpointer: gconstpointer(gtk_window_get_icon(window_ptr)))
        return rv
    }

    /// Retrieves the list of icons set by `gtk_window_set_icon_list()`.
    /// The list is copied, but the reference count on each
    /// member won’t be incremented.
    @inlinable func getIconList() -> GLib.ListRef! {
        let rv = GLib.ListRef(gtk_window_get_icon_list(window_ptr))
        return rv
    }

    /// Returns the name of the themed icon for the window,
    /// see `gtk_window_set_icon_name()`.
    @inlinable func getIconName() -> String! {
        let rv = gtk_window_get_icon_name(window_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns the mnemonic modifier for this window. See
    /// `gtk_window_set_mnemonic_modifier()`.
    @inlinable func getMnemonicModifier() -> Gdk.ModifierType {
        let rv = Gdk.ModifierType(gtk_window_get_mnemonic_modifier(window_ptr))
        return rv
    }

    /// Gets the value of the `GtkWindow:mnemonics-visible` property.
    @inlinable func getMnemonicsVisible() -> Bool {
        let rv = ((gtk_window_get_mnemonics_visible(window_ptr)) != 0)
        return rv
    }

    /// Returns whether the window is modal. See `gtk_window_set_modal()`.
    @inlinable func getModal() -> Bool {
        let rv = ((gtk_window_get_modal(window_ptr)) != 0)
        return rv
    }

    /// Fetches the requested opacity for this window. See
    /// `gtk_window_set_opacity()`.
    ///
    /// **get_opacity is deprecated:**
    /// Use gtk_widget_get_opacity instead.
    @available(*, deprecated)
    @inlinable func getOpacity() -> Double {
        let rv = Double(gtk_window_get_opacity(window_ptr))
        return rv
    }

    /// This function returns the position you need to pass to
    /// `gtk_window_move()` to keep `window` in its current position.
    /// This means that the meaning of the returned value varies with
    /// window gravity. See `gtk_window_move()` for more details.
    /// 
    /// The reliability of this function depends on the windowing system
    /// currently in use. Some windowing systems, such as Wayland, do not
    /// support a global coordinate system, and thus the position of the
    /// window will always be (0, 0). Others, like X11, do not have a reliable
    /// way to obtain the geometry of the decorations of a window if they are
    /// provided by the window manager. Additionally, on X11, window manager
    /// have been known to mismanage window gravity, which result in windows
    /// moving even if you use the coordinates of the current position as
    /// returned by this function.
    /// 
    /// If you haven’t changed the window gravity, its gravity will be
    /// `GDK_GRAVITY_NORTH_WEST`. This means that `gtk_window_get_position()`
    /// gets the position of the top-left corner of the window manager
    /// frame for the window. `gtk_window_move()` sets the position of this
    /// same top-left corner.
    /// 
    /// If a window has gravity `GDK_GRAVITY_STATIC` the window manager
    /// frame is not relevant, and thus `gtk_window_get_position()` will
    /// always produce accurate results. However you can’t use static
    /// gravity to do things like place a window in a corner of the screen,
    /// because static gravity ignores the window manager decorations.
    /// 
    /// Ideally, this function should return appropriate values if the
    /// window has client side decorations, assuming that the windowing
    /// system supports global coordinates.
    /// 
    /// In practice, saving the window position should not be left to
    /// applications, as they lack enough knowledge of the windowing
    /// system and the window manager state to effectively do so. The
    /// appropriate way to implement saving the window position is to
    /// use a platform-specific protocol, wherever that is available.
    @inlinable func getPosition(rootX: UnsafeMutablePointer<gint>! = nil, rootY: UnsafeMutablePointer<gint>! = nil) {
        gtk_window_get_position(window_ptr, rootX, rootY)
    
    }

    /// Gets the value set by `gtk_window_set_resizable()`.
    @inlinable func getResizable() -> Bool {
        let rv = ((gtk_window_get_resizable(window_ptr)) != 0)
        return rv
    }

    /// If a window has a resize grip, this will retrieve the grip
    /// position, width and height into the specified `GdkRectangle`.
    ///
    /// **get_resize_grip_area is deprecated:**
    /// Resize grips have been removed.
    @available(*, deprecated)
    @inlinable func getResizeGripArea<RectangleT: Gdk.RectangleProtocol>(rect: RectangleT) -> Bool {
        let rv = ((gtk_window_get_resize_grip_area(window_ptr, rect.rectangle_ptr)) != 0)
        return rv
    }

    /// Returns the role of the window. See `gtk_window_set_role()` for
    /// further explanation.
    @inlinable func getRole() -> String! {
        let rv = gtk_window_get_role(window_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns the `GdkScreen` associated with `window`.
    @inlinable func getScreen() -> Gdk.ScreenRef! {
        let rv = Gdk.ScreenRef(gtk_window_get_screen(window_ptr))
        return rv
    }

    /// Obtains the current size of `window`.
    /// 
    /// If `window` is not visible on screen, this function return the size GTK+
    /// will suggest to the [window manager](#gtk-X11-arch) for the initial window
    /// size (but this is not reliably the same as the size the window manager
    /// will actually select). See: `gtk_window_set_default_size()`.
    /// 
    /// Depending on the windowing system and the window manager constraints,
    /// the size returned by this function may not match the size set using
    /// `gtk_window_resize()`; additionally, since `gtk_window_resize()` may be
    /// implemented as an asynchronous operation, GTK+ cannot guarantee in any
    /// way that this code:
    /// 
    /// (C Language Example):
    /// ```C
    ///   // width and height are set elsewhere
    ///   gtk_window_resize (window, width, height);
    /// 
    ///   int new_width, new_height;
    ///   gtk_window_get_size (window, &new_width, &new_height);
    /// ```
    /// 
    /// will result in `new_width` and `new_height` matching `width` and
    /// `height`, respectively.
    /// 
    /// This function will return the logical size of the `GtkWindow`,
    /// excluding the widgets used in client side decorations; there is,
    /// however, no guarantee that the result will be completely accurate
    /// because client side decoration may include widgets that depend on
    /// the user preferences and that may not be visibile at the time you
    /// call this function.
    /// 
    /// The dimensions returned by this function are suitable for being
    /// stored across sessions; use `gtk_window_set_default_size()` to
    /// restore them when before showing the window.
    /// 
    /// To avoid potential race conditions, you should only call this
    /// function in response to a size change notification, for instance
    /// inside a handler for the `GtkWidget::size-allocate` signal, or
    /// inside a handler for the `GtkWidget::configure-event` signal:
    /// 
    /// (C Language Example):
    /// ```C
    /// static void
    /// on_size_allocate (GtkWidget *widget, GtkAllocation *allocation)
    /// {
    ///   int new_width, new_height;
    /// 
    ///   gtk_window_get_size (GTK_WINDOW (widget), &new_width, &new_height);
    /// 
    ///   ...
    /// }
    /// ```
    /// 
    /// Note that, if you connect to the `GtkWidget::size-allocate` signal,
    /// you should not use the dimensions of the `GtkAllocation` passed to
    /// the signal handler, as the allocation may contain client side
    /// decorations added by GTK+, depending on the windowing system in
    /// use.
    /// 
    /// If you are getting a window size in order to position the window
    /// on the screen, you should, instead, simply set the window’s semantic
    /// type with `gtk_window_set_type_hint()`, which allows the window manager
    /// to e.g. center dialogs. Also, if you set the transient parent of
    /// dialogs with `gtk_window_set_transient_for()` window managers will
    /// often center the dialog over its parent window. It's much preferred
    /// to let the window manager handle these cases rather than doing it
    /// yourself, because all apps will behave consistently and according to
    /// user or system preferences, if the window manager handles it. Also,
    /// the window manager can take into account the size of the window
    /// decorations and border that it may add, and of which GTK+ has no
    /// knowledge. Additionally, positioning windows in global screen coordinates
    /// may not be allowed by the windowing system. For more information,
    /// see: `gtk_window_set_position()`.
    @inlinable func getSize(width: UnsafeMutablePointer<gint>?, height: UnsafeMutablePointer<gint>?) {
        gtk_window_get_size(window_ptr, width, height)
    
    }

    /// Gets the value set by `gtk_window_set_skip_pager_hint()`.
    @inlinable func getSkipPagerHint() -> Bool {
        let rv = ((gtk_window_get_skip_pager_hint(window_ptr)) != 0)
        return rv
    }

    /// Gets the value set by `gtk_window_set_skip_taskbar_hint()`
    @inlinable func getSkipTaskbarHint() -> Bool {
        let rv = ((gtk_window_get_skip_taskbar_hint(window_ptr)) != 0)
        return rv
    }

    /// Retrieves the title of the window. See `gtk_window_set_title()`.
    @inlinable func getTitle() -> String! {
        let rv = gtk_window_get_title(window_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns the custom titlebar that has been set with
    /// `gtk_window_set_titlebar()`.
    @inlinable func getTitlebar() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_window_get_titlebar(window_ptr))) else { return nil }
        return rv
    }

    /// Fetches the transient parent for this window. See
    /// `gtk_window_set_transient_for()`.
    @inlinable func getTransientFor() -> WindowRef! {
        guard let rv = WindowRef(gconstpointer: gconstpointer(gtk_window_get_transient_for(window_ptr))) else { return nil }
        return rv
    }

    /// Gets the type hint for this window. See `gtk_window_set_type_hint()`.
    @inlinable func getTypeHint() -> GdkWindowTypeHint {
        let rv = gtk_window_get_type_hint(window_ptr)
        return rv
    }

    /// Gets the value set by `gtk_window_set_urgency_hint()`
    @inlinable func getUrgencyHint() -> Bool {
        let rv = ((gtk_window_get_urgency_hint(window_ptr)) != 0)
        return rv
    }

    /// Gets the type of the window. See `GtkWindowType`.
    @inlinable func getWindowType() -> GtkWindowType {
        let rv = gtk_window_get_window_type(window_ptr)
        return rv
    }

    /// Returns whether `window` has an explicit window group.
    @inlinable func hasGroup() -> Bool {
        let rv = ((gtk_window_has_group(window_ptr)) != 0)
        return rv
    }

    /// Returns whether the input focus is within this GtkWindow.
    /// For real toplevel windows, this is identical to `gtk_window_is_active()`,
    /// but for embedded windows, like `GtkPlug`, the results will differ.
    @inlinable func hasToplevelFocus() -> Bool {
        let rv = ((gtk_window_has_toplevel_focus(window_ptr)) != 0)
        return rv
    }

    /// Asks to iconify (i.e. minimize) the specified `window`. Note that
    /// you shouldn’t assume the window is definitely iconified afterward,
    /// because other entities (e.g. the user or
    /// [window manager](#gtk-X11-arch)) could deiconify it
    /// again, or there may not be a window manager in which case
    /// iconification isn’t possible, etc. But normally the window will end
    /// up iconified. Just don’t write code that crashes if not.
    /// 
    /// It’s permitted to call this function before showing a window,
    /// in which case the window will be iconified before it ever appears
    /// onscreen.
    /// 
    /// You can track iconification via the “window-state-event” signal
    /// on `GtkWidget`.
    @inlinable func iconify() {
        gtk_window_iconify(window_ptr)
    
    }

    /// Asks to maximize `window`, so that it becomes full-screen. Note that
    /// you shouldn’t assume the window is definitely maximized afterward,
    /// because other entities (e.g. the user or
    /// [window manager](#gtk-X11-arch)) could unmaximize it
    /// again, and not all window managers support maximization. But
    /// normally the window will end up maximized. Just don’t write code
    /// that crashes if not.
    /// 
    /// It’s permitted to call this function before showing a window,
    /// in which case the window will be maximized when it appears onscreen
    /// initially.
    /// 
    /// You can track maximization via the “window-state-event” signal
    /// on `GtkWidget`, or by listening to notifications on the
    /// `GtkWindow:is-maximized` property.
    @inlinable func maximize() {
        gtk_window_maximize(window_ptr)
    
    }

    /// Activates the targets associated with the mnemonic.
    @inlinable func mnemonicActivate(keyval: Int, modifier: Gdk.ModifierType) -> Bool {
        let rv = ((gtk_window_mnemonic_activate(window_ptr, guint(keyval), modifier.value)) != 0)
        return rv
    }

    /// Asks the [window manager](#gtk-X11-arch) to move
    /// `window` to the given position.  Window managers are free to ignore
    /// this; most window managers ignore requests for initial window
    /// positions (instead using a user-defined placement algorithm) and
    /// honor requests after the window has already been shown.
    /// 
    /// Note: the position is the position of the gravity-determined
    /// reference point for the window. The gravity determines two things:
    /// first, the location of the reference point in root window
    /// coordinates; and second, which point on the window is positioned at
    /// the reference point.
    /// 
    /// By default the gravity is `GDK_GRAVITY_NORTH_WEST`, so the reference
    /// point is simply the `x`, `y` supplied to `gtk_window_move()`. The
    /// top-left corner of the window decorations (aka window frame or
    /// border) will be placed at `x`, `y`.  Therefore, to position a window
    /// at the top left of the screen, you want to use the default gravity
    /// (which is `GDK_GRAVITY_NORTH_WEST`) and move the window to 0,0.
    /// 
    /// To position a window at the bottom right corner of the screen, you
    /// would set `GDK_GRAVITY_SOUTH_EAST`, which means that the reference
    /// point is at `x` + the window width and `y` + the window height, and
    /// the bottom-right corner of the window border will be placed at that
    /// reference point. So, to place a window in the bottom right corner
    /// you would first set gravity to south east, then write:
    /// `gtk_window_move (window, gdk_screen_width () - window_width,
    /// gdk_screen_height () - window_height)` (note that this
    /// example does not take multi-head scenarios into account).
    /// 
    /// The [Extended Window Manager Hints Specification](http://www.freedesktop.org/Standards/wm-spec)
    /// has a nice table of gravities in the “implementation notes” section.
    /// 
    /// The `gtk_window_get_position()` documentation may also be relevant.
    @inlinable func move(x: Int, y: Int) {
        gtk_window_move(window_ptr, gint(x), gint(y))
    
    }

    /// Parses a standard X Window System geometry string - see the
    /// manual page for X (type “man X”) for details on this.
    /// `gtk_window_parse_geometry()` does work on all GTK+ ports
    /// including Win32 but is primarily intended for an X environment.
    /// 
    /// If either a size or a position can be extracted from the
    /// geometry string, `gtk_window_parse_geometry()` returns `true`
    /// and calls `gtk_window_set_default_size()` and/or `gtk_window_move()`
    /// to resize/move the window.
    /// 
    /// If `gtk_window_parse_geometry()` returns `true`, it will also
    /// set the `GDK_HINT_USER_POS` and/or `GDK_HINT_USER_SIZE` hints
    /// indicating to the window manager that the size/position of
    /// the window was user-specified. This causes most window
    /// managers to honor the geometry.
    /// 
    /// Note that for `gtk_window_parse_geometry()` to work as expected, it has
    /// to be called when the window has its “final” size, i.e. after calling
    /// `gtk_widget_show_all()` on the contents and `gtk_window_set_geometry_hints()`
    /// on the window.
    /// (C Language Example):
    /// ```C
    /// #include <gtk/gtk.h>
    /// 
    /// static void
    /// fill_with_content (GtkWidget *vbox)
    /// {
    ///   // fill with content...
    /// }
    /// 
    /// int
    /// main (int argc, char *argv[])
    /// {
    ///   GtkWidget *window, *vbox;
    ///   GdkGeometry size_hints = {
    ///     100, 50, 0, 0, 100, 50, 10,
    ///     10, 0.0, 0.0, GDK_GRAVITY_NORTH_WEST
    ///   };
    /// 
    ///   gtk_init (&argc, &argv);
    /// 
    ///   window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
    ///   vbox = gtk_box_new (GTK_ORIENTATION_VERTICAL, 0);
    /// 
    ///   gtk_container_add (GTK_CONTAINER (window), vbox);
    ///   fill_with_content (vbox);
    ///   gtk_widget_show_all (vbox);
    /// 
    ///   gtk_window_set_geometry_hints (GTK_WINDOW (window),
    /// 	  			    NULL,
    /// 				    &size_hints,
    /// 				    GDK_HINT_MIN_SIZE |
    /// 				    GDK_HINT_BASE_SIZE |
    /// 				    GDK_HINT_RESIZE_INC);
    /// 
    ///   if (argc > 1)
    ///     {
    ///       gboolean res;
    ///       res = gtk_window_parse_geometry (GTK_WINDOW (window),
    ///                                        argv[1]);
    ///       if (! res)
    ///         fprintf (stderr,
    ///                  "Failed to parse “%s”\n",
    ///                  argv[1]);
    ///     }
    /// 
    ///   gtk_widget_show_all (window);
    ///   gtk_main ();
    /// 
    ///   return 0;
    /// }
    /// ```
    /// 
    ///
    /// **parse_geometry is deprecated:**
    /// Geometry handling in GTK is deprecated.
    @available(*, deprecated)
    @inlinable func parse(geometry: UnsafePointer<gchar>!) -> Bool {
        let rv = ((gtk_window_parse_geometry(window_ptr, geometry)) != 0)
        return rv
    }

    /// Presents a window to the user. This function should not be used
    /// as when it is called, it is too late to gather a valid timestamp
    /// to allow focus stealing prevention to work correctly.
    @inlinable func present() {
        gtk_window_present(window_ptr)
    
    }

    /// Presents a window to the user. This may mean raising the window
    /// in the stacking order, deiconifying it, moving it to the current
    /// desktop, and/or giving it the keyboard focus, possibly dependent
    /// on the user’s platform, window manager, and preferences.
    /// 
    /// If `window` is hidden, this function calls `gtk_widget_show()`
    /// as well.
    /// 
    /// This function should be used when the user tries to open a window
    /// that’s already open. Say for example the preferences dialog is
    /// currently open, and the user chooses Preferences from the menu
    /// a second time; use `gtk_window_present()` to move the already-open dialog
    /// where the user can see it.
    /// 
    /// Presents a window to the user in response to a user interaction. The
    /// timestamp should be gathered when the window was requested to be shown
    /// (when clicking a link for example), rather than once the window is
    /// ready to be shown.
    @inlinable func presentWithTime(timestamp: guint32) {
        gtk_window_present_with_time(window_ptr, timestamp)
    
    }

    /// Propagate a key press or release event to the focus widget and
    /// up the focus container chain until a widget handles `event`.
    /// This is normally called by the default `key_press_event` and
    /// `key_release_event` handlers for toplevel windows,
    /// however in some cases it may be useful to call this directly when
    /// overriding the standard key handling for a toplevel window.
    @inlinable func propagateKey<EventKeyT: Gdk.EventKeyProtocol>(event: EventKeyT) -> Bool {
        let rv = ((gtk_window_propagate_key_event(window_ptr, event._ptr)) != 0)
        return rv
    }

    /// Reverses the effects of `gtk_window_add_accel_group()`.
    @inlinable func remove<AccelGroupT: AccelGroupProtocol>(accelGroup: AccelGroupT) {
        gtk_window_remove_accel_group(window_ptr, accelGroup.accel_group_ptr)
    
    }

    /// Removes a mnemonic from this window.
    @inlinable func removeMnemonic<WidgetT: WidgetProtocol>(keyval: Int, target: WidgetT) {
        gtk_window_remove_mnemonic(window_ptr, guint(keyval), target.widget_ptr)
    
    }

    /// Hides `window`, then reshows it, resetting the
    /// default size and position of the window. Used
    /// by GUI builders only.
    ///
    /// **reshow_with_initial_size is deprecated:**
    /// GUI builders can call gtk_widget_hide(),
    ///   gtk_widget_unrealize() and then gtk_widget_show() on @window
    ///   themselves, if they still need this functionality.
    @available(*, deprecated)
    @inlinable func reshowWithInitialSize() {
        gtk_window_reshow_with_initial_size(window_ptr)
    
    }

    /// Resizes the window as if the user had done so, obeying geometry
    /// constraints. The default geometry constraint is that windows may
    /// not be smaller than their size request; to override this
    /// constraint, call `gtk_widget_set_size_request()` to set the window's
    /// request to a smaller value.
    /// 
    /// If `gtk_window_resize()` is called before showing a window for the
    /// first time, it overrides any default size set with
    /// `gtk_window_set_default_size()`.
    /// 
    /// Windows may not be resized smaller than 1 by 1 pixels.
    /// 
    /// When using client side decorations, GTK+ will do its best to adjust
    /// the given size so that the resulting window size matches the
    /// requested size without the title bar, borders and shadows added for
    /// the client side decorations, but there is no guarantee that the
    /// result will be totally accurate because these widgets added for
    /// client side decorations depend on the theme and may not be realized
    /// or visible at the time `gtk_window_resize()` is issued.
    /// 
    /// If the GtkWindow has a titlebar widget (see `gtk_window_set_titlebar()`), then
    /// typically, `gtk_window_resize()` will compensate for the height of the titlebar
    /// widget only if the height is known when the resulting GtkWindow configuration
    /// is issued.
    /// For example, if new widgets are added after the GtkWindow configuration
    /// and cause the titlebar widget to grow in height, this will result in a
    /// window content smaller that specified by `gtk_window_resize()` and not
    /// a larger window.
    @inlinable func resize(width: Int, height: Int) {
        gtk_window_resize(window_ptr, gint(width), gint(height))
    
    }

    /// Determines whether a resize grip is visible for the specified window.
    ///
    /// **resize_grip_is_visible is deprecated:**
    /// Resize grips have been removed.
    @available(*, deprecated)
    @inlinable func resizeGripIsVisible() -> Bool {
        let rv = ((gtk_window_resize_grip_is_visible(window_ptr)) != 0)
        return rv
    }

    /// Like `gtk_window_resize()`, but `width` and `height` are interpreted
    /// in terms of the base size and increment set with
    /// gtk_window_set_geometry_hints.
    ///
    /// **resize_to_geometry is deprecated:**
    /// This function does nothing. Use
    ///    gtk_window_resize() and compute the geometry yourself.
    @available(*, deprecated)
    @inlinable func resizeToGeometry(width: Int, height: Int) {
        gtk_window_resize_to_geometry(window_ptr, gint(width), gint(height))
    
    }

    /// Windows may set a hint asking the desktop environment not to receive
    /// the input focus. This function sets this hint.
    @inlinable func setAcceptFocus(setting: Bool) {
        gtk_window_set_accept_focus(window_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Sets or unsets the `GtkApplication` associated with the window.
    /// 
    /// The application will be kept alive for at least as long as it has any windows
    /// associated with it (see `g_application_hold()` for a way to keep it alive
    /// without windows).
    /// 
    /// Normally, the connection between the application and the window will remain
    /// until the window is destroyed, but you can explicitly remove it by setting
    /// the `application` to `nil`.
    /// 
    /// This is equivalent to calling `gtk_application_remove_window()` and/or
    /// `gtk_application_add_window()` on the old/new applications as relevant.
    @inlinable func set(application: ApplicationRef? = nil) {
        gtk_window_set_application(window_ptr, application?.application_ptr)
    
    }
    /// Sets or unsets the `GtkApplication` associated with the window.
    /// 
    /// The application will be kept alive for at least as long as it has any windows
    /// associated with it (see `g_application_hold()` for a way to keep it alive
    /// without windows).
    /// 
    /// Normally, the connection between the application and the window will remain
    /// until the window is destroyed, but you can explicitly remove it by setting
    /// the `application` to `nil`.
    /// 
    /// This is equivalent to calling `gtk_application_remove_window()` and/or
    /// `gtk_application_add_window()` on the old/new applications as relevant.
    @inlinable func set<ApplicationT: ApplicationProtocol>(application: ApplicationT?) {
        gtk_window_set_application(window_ptr, application?.application_ptr)
    
    }

    /// Marks `window` as attached to `attach_widget`. This creates a logical binding
    /// between the window and the widget it belongs to, which is used by GTK+ to
    /// propagate information such as styling or accessibility to `window` as if it
    /// was a children of `attach_widget`.
    /// 
    /// Examples of places where specifying this relation is useful are for instance
    /// a `GtkMenu` created by a `GtkComboBox`, a completion popup window
    /// created by `GtkEntry` or a typeahead search entry created by `GtkTreeView`.
    /// 
    /// Note that this function should not be confused with
    /// `gtk_window_set_transient_for()`, which specifies a window manager relation
    /// between two toplevels instead.
    /// 
    /// Passing `nil` for `attach_widget` detaches the window.
    @inlinable func setAttachedTo(attachWidget: WidgetRef? = nil) {
        gtk_window_set_attached_to(window_ptr, attachWidget?.widget_ptr)
    
    }
    /// Marks `window` as attached to `attach_widget`. This creates a logical binding
    /// between the window and the widget it belongs to, which is used by GTK+ to
    /// propagate information such as styling or accessibility to `window` as if it
    /// was a children of `attach_widget`.
    /// 
    /// Examples of places where specifying this relation is useful are for instance
    /// a `GtkMenu` created by a `GtkComboBox`, a completion popup window
    /// created by `GtkEntry` or a typeahead search entry created by `GtkTreeView`.
    /// 
    /// Note that this function should not be confused with
    /// `gtk_window_set_transient_for()`, which specifies a window manager relation
    /// between two toplevels instead.
    /// 
    /// Passing `nil` for `attach_widget` detaches the window.
    @inlinable func setAttachedTo<WidgetT: WidgetProtocol>(attachWidget: WidgetT?) {
        gtk_window_set_attached_to(window_ptr, attachWidget?.widget_ptr)
    
    }

    /// By default, windows are decorated with a title bar, resize
    /// controls, etc.  Some [window managers](#gtk-X11-arch)
    /// allow GTK+ to disable these decorations, creating a
    /// borderless window. If you set the decorated property to `false`
    /// using this function, GTK+ will do its best to convince the window
    /// manager not to decorate the window. Depending on the system, this
    /// function may not have any effect when called on a window that is
    /// already visible, so you should call it before calling `gtk_widget_show()`.
    /// 
    /// On Windows, this function always works, since there’s no window manager
    /// policy involved.
    @inlinable func setDecorated(setting: Bool) {
        gtk_window_set_decorated(window_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// The default widget is the widget that’s activated when the user
    /// presses Enter in a dialog (for example). This function sets or
    /// unsets the default widget for a `GtkWindow`. When setting (rather
    /// than unsetting) the default widget it’s generally easier to call
    /// `gtk_widget_grab_default()` on the widget. Before making a widget
    /// the default widget, you must call `gtk_widget_set_can_default()` on
    /// the widget you’d like to make the default.
    @inlinable func setDefault(defaultWidget: WidgetRef? = nil) {
        gtk_window_set_default(window_ptr, defaultWidget?.widget_ptr)
    
    }
    /// The default widget is the widget that’s activated when the user
    /// presses Enter in a dialog (for example). This function sets or
    /// unsets the default widget for a `GtkWindow`. When setting (rather
    /// than unsetting) the default widget it’s generally easier to call
    /// `gtk_widget_grab_default()` on the widget. Before making a widget
    /// the default widget, you must call `gtk_widget_set_can_default()` on
    /// the widget you’d like to make the default.
    @inlinable func setDefault<WidgetT: WidgetProtocol>(defaultWidget: WidgetT?) {
        gtk_window_set_default(window_ptr, defaultWidget?.widget_ptr)
    
    }

    /// Like `gtk_window_set_default_size()`, but `width` and `height` are interpreted
    /// in terms of the base size and increment set with
    /// gtk_window_set_geometry_hints.
    ///
    /// **set_default_geometry is deprecated:**
    /// This function does nothing. If you want to set a default
    ///     size, use gtk_window_set_default_size() instead.
    @available(*, deprecated)
    @inlinable func setDefaultGeometry(width: Int, height: Int) {
        gtk_window_set_default_geometry(window_ptr, gint(width), gint(height))
    
    }

    /// Sets the default size of a window. If the window’s “natural” size
    /// (its size request) is larger than the default, the default will be
    /// ignored. More generally, if the default size does not obey the
    /// geometry hints for the window (`gtk_window_set_geometry_hints()` can
    /// be used to set these explicitly), the default size will be clamped
    /// to the nearest permitted size.
    /// 
    /// Unlike `gtk_widget_set_size_request()`, which sets a size request for
    /// a widget and thus would keep users from shrinking the window, this
    /// function only sets the initial size, just as if the user had
    /// resized the window themselves. Users can still shrink the window
    /// again as they normally would. Setting a default size of -1 means to
    /// use the “natural” default size (the size request of the window).
    /// 
    /// For more control over a window’s initial size and how resizing works,
    /// investigate `gtk_window_set_geometry_hints()`.
    /// 
    /// For some uses, `gtk_window_resize()` is a more appropriate function.
    /// `gtk_window_resize()` changes the current size of the window, rather
    /// than the size to be used on initial display. `gtk_window_resize()` always
    /// affects the window itself, not the geometry widget.
    /// 
    /// The default size of a window only affects the first time a window is
    /// shown; if a window is hidden and re-shown, it will remember the size
    /// it had prior to hiding, rather than using the default size.
    /// 
    /// Windows can’t actually be 0x0 in size, they must be at least 1x1, but
    /// passing 0 for `width` and `height` is OK, resulting in a 1x1 default size.
    /// 
    /// If you use this function to reestablish a previously saved window size,
    /// note that the appropriate size to save is the one returned by
    /// `gtk_window_get_size()`. Using the window allocation directly will not
    /// work in all circumstances and can lead to growing or shrinking windows.
    @inlinable func setDefaultSize(width: Int, height: Int) {
        gtk_window_set_default_size(window_ptr, gint(width), gint(height))
    
    }

    /// By default, windows have a close button in the window frame. Some
    /// [window managers](#gtk-X11-arch) allow GTK+ to
    /// disable this button. If you set the deletable property to `false`
    /// using this function, GTK+ will do its best to convince the window
    /// manager not to show a close button. Depending on the system, this
    /// function may not have any effect when called on a window that is
    /// already visible, so you should call it before calling `gtk_widget_show()`.
    /// 
    /// On Windows, this function always works, since there’s no window manager
    /// policy involved.
    @inlinable func setDeletable(setting: Bool) {
        gtk_window_set_deletable(window_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// If `setting` is `true`, then destroying the transient parent of `window`
    /// will also destroy `window` itself. This is useful for dialogs that
    /// shouldn’t persist beyond the lifetime of the main window they're
    /// associated with, for example.
    @inlinable func setDestroyWithParent(setting: Bool) {
        gtk_window_set_destroy_with_parent(window_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// If `focus` is not the current focus widget, and is focusable, sets
    /// it as the focus widget for the window. If `focus` is `nil`, unsets
    /// the focus widget for this window. To set the focus to a particular
    /// widget in the toplevel, it is usually more convenient to use
    /// `gtk_widget_grab_focus()` instead of this function.
    @inlinable func set(focus: WidgetRef? = nil) {
        gtk_window_set_focus(window_ptr, focus?.widget_ptr)
    
    }
    /// If `focus` is not the current focus widget, and is focusable, sets
    /// it as the focus widget for the window. If `focus` is `nil`, unsets
    /// the focus widget for this window. To set the focus to a particular
    /// widget in the toplevel, it is usually more convenient to use
    /// `gtk_widget_grab_focus()` instead of this function.
    @inlinable func set<WidgetT: WidgetProtocol>(focus: WidgetT?) {
        gtk_window_set_focus(window_ptr, focus?.widget_ptr)
    
    }

    /// Windows may set a hint asking the desktop environment not to receive
    /// the input focus when the window is mapped.  This function sets this
    /// hint.
    @inlinable func setFocusOnMap(setting: Bool) {
        gtk_window_set_focus_on_map(window_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Sets the `GtkWindow:focus-visible` property.
    @inlinable func setFocusVisible(setting: Bool) {
        gtk_window_set_focus_visible(window_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// This function sets up hints about how a window can be resized by
    /// the user.  You can set a minimum and maximum size; allowed resize
    /// increments (e.g. for xterm, you can only resize by the size of a
    /// character); aspect ratios; and more. See the `GdkGeometry` struct.
    @inlinable func setGeometryHints(geometryWidget: WidgetRef? = nil, geometry: Gdk.GeometryRef? = nil, geomMask: Gdk.WindowHints) {
        gtk_window_set_geometry_hints(window_ptr, geometryWidget?.widget_ptr, geometry?._ptr, geomMask.value)
    
    }
    /// This function sets up hints about how a window can be resized by
    /// the user.  You can set a minimum and maximum size; allowed resize
    /// increments (e.g. for xterm, you can only resize by the size of a
    /// character); aspect ratios; and more. See the `GdkGeometry` struct.
    @inlinable func setGeometryHints<GeometryT: Gdk.GeometryProtocol, WidgetT: WidgetProtocol>(geometryWidget: WidgetT?, geometry: GeometryT?, geomMask: Gdk.WindowHints) {
        gtk_window_set_geometry_hints(window_ptr, geometryWidget?.widget_ptr, geometry?._ptr, geomMask.value)
    
    }

    /// Window gravity defines the meaning of coordinates passed to
    /// `gtk_window_move()`. See `gtk_window_move()` and `GdkGravity` for
    /// more details.
    /// 
    /// The default window gravity is `GDK_GRAVITY_NORTH_WEST` which will
    /// typically “do what you mean.”
    @inlinable func set(gravity: GdkGravity) {
        gtk_window_set_gravity(window_ptr, gravity)
    
    }

    /// Sets whether `window` has a corner resize grip.
    /// 
    /// Note that the resize grip is only shown if the window
    /// is actually resizable and not maximized. Use
    /// `gtk_window_resize_grip_is_visible()` to find out if the
    /// resize grip is currently shown.
    ///
    /// **set_has_resize_grip is deprecated:**
    /// Resize grips have been removed.
    @available(*, deprecated)
    @inlinable func setHasResizeGrip(value: Bool) {
        gtk_window_set_has_resize_grip(window_ptr, gboolean((value) ? 1 : 0))
    
    }

    /// Tells GTK+ whether to drop its extra reference to the window
    /// when `gtk_widget_destroy()` is called.
    /// 
    /// This function is only exported for the benefit of language
    /// bindings which may need to keep the window alive until their
    /// wrapper object is garbage collected. There is no justification
    /// for ever calling this function in an application.
    @inlinable func setHasUserRefCount(setting: Bool) {
        gtk_window_set_has_user_ref_count(window_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// If `setting` is `true`, then `window` will request that it’s titlebar
    /// should be hidden when maximized.
    /// This is useful for windows that don’t convey any information other
    /// than the application name in the titlebar, to put the available
    /// screen space to better use. If the underlying window system does not
    /// support the request, the setting will not have any effect.
    /// 
    /// Note that custom titlebars set with `gtk_window_set_titlebar()` are
    /// not affected by this. The application is in full control of their
    /// content and visibility anyway.
    @inlinable func setHideTitlebarWhenMaximized(setting: Bool) {
        gtk_window_set_hide_titlebar_when_maximized(window_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Sets up the icon representing a `GtkWindow`. This icon is used when
    /// the window is minimized (also known as iconified).  Some window
    /// managers or desktop environments may also place it in the window
    /// frame, or display it in other contexts. On others, the icon is not
    /// used at all, so your mileage may vary.
    /// 
    /// The icon should be provided in whatever size it was naturally
    /// drawn; that is, don’t scale the image before passing it to
    /// GTK+. Scaling is postponed until the last minute, when the desired
    /// final size is known, to allow best quality.
    /// 
    /// If you have your icon hand-drawn in multiple sizes, use
    /// `gtk_window_set_icon_list()`. Then the best size will be used.
    /// 
    /// This function is equivalent to calling `gtk_window_set_icon_list()`
    /// with a 1-element list.
    /// 
    /// See also `gtk_window_set_default_icon_list()` to set the icon
    /// for all windows in your application in one go.
    @inlinable func set(icon: PixbufRef? = nil) {
        gtk_window_set_icon(window_ptr, icon?.pixbuf_ptr)
    
    }
    /// Sets up the icon representing a `GtkWindow`. This icon is used when
    /// the window is minimized (also known as iconified).  Some window
    /// managers or desktop environments may also place it in the window
    /// frame, or display it in other contexts. On others, the icon is not
    /// used at all, so your mileage may vary.
    /// 
    /// The icon should be provided in whatever size it was naturally
    /// drawn; that is, don’t scale the image before passing it to
    /// GTK+. Scaling is postponed until the last minute, when the desired
    /// final size is known, to allow best quality.
    /// 
    /// If you have your icon hand-drawn in multiple sizes, use
    /// `gtk_window_set_icon_list()`. Then the best size will be used.
    /// 
    /// This function is equivalent to calling `gtk_window_set_icon_list()`
    /// with a 1-element list.
    /// 
    /// See also `gtk_window_set_default_icon_list()` to set the icon
    /// for all windows in your application in one go.
    @inlinable func set<PixbufT: PixbufProtocol>(icon: PixbufT?) {
        gtk_window_set_icon(window_ptr, icon?.pixbuf_ptr)
    
    }

    /// Sets the icon for `window`.
    /// Warns on failure if `err` is `nil`.
    /// 
    /// This function is equivalent to calling `gtk_window_set_icon()`
    /// with a pixbuf created by loading the image from `filename`.
    @inlinable func setIconFromFile(filename: UnsafePointer<gchar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gtk_window_set_icon_from_file(window_ptr, filename, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Sets up the icon representing a `GtkWindow`. The icon is used when
    /// the window is minimized (also known as iconified).  Some window
    /// managers or desktop environments may also place it in the window
    /// frame, or display it in other contexts. On others, the icon is not
    /// used at all, so your mileage may vary.
    /// 
    /// `gtk_window_set_icon_list()` allows you to pass in the same icon in
    /// several hand-drawn sizes. The list should contain the natural sizes
    /// your icon is available in; that is, don’t scale the image before
    /// passing it to GTK+. Scaling is postponed until the last minute,
    /// when the desired final size is known, to allow best quality.
    /// 
    /// By passing several sizes, you may improve the final image quality
    /// of the icon, by reducing or eliminating automatic image scaling.
    /// 
    /// Recommended sizes to provide: 16x16, 32x32, 48x48 at minimum, and
    /// larger images (64x64, 128x128) if you have them.
    /// 
    /// See also `gtk_window_set_default_icon_list()` to set the icon
    /// for all windows in your application in one go.
    /// 
    /// Note that transient windows (those who have been set transient for another
    /// window using `gtk_window_set_transient_for()`) will inherit their
    /// icon from their transient parent. So there’s no need to explicitly
    /// set the icon on transient windows.
    @inlinable func setIcon<ListT: GLib.ListProtocol>(list: ListT) {
        gtk_window_set_icon_list(window_ptr, list._ptr)
    
    }

    /// Sets the icon for the window from a named themed icon.
    /// See the docs for `GtkIconTheme` for more details.
    /// On some platforms, the window icon is not used at all.
    /// 
    /// Note that this has nothing to do with the WM_ICON_NAME
    /// property which is mentioned in the ICCCM.
    @inlinable func setIcon(name: UnsafePointer<gchar>? = nil) {
        gtk_window_set_icon_name(window_ptr, name)
    
    }

    /// Asks to keep `window` above, so that it stays on top. Note that
    /// you shouldn’t assume the window is definitely above afterward,
    /// because other entities (e.g. the user or
    /// [window manager](#gtk-X11-arch)) could not keep it above,
    /// and not all window managers support keeping windows above. But
    /// normally the window will end kept above. Just don’t write code
    /// that crashes if not.
    /// 
    /// It’s permitted to call this function before showing a window,
    /// in which case the window will be kept above when it appears onscreen
    /// initially.
    /// 
    /// You can track the above state via the “window-state-event” signal
    /// on `GtkWidget`.
    /// 
    /// Note that, according to the
    /// [Extended Window Manager Hints Specification](http://www.freedesktop.org/Standards/wm-spec),
    /// the above state is mainly meant for user preferences and should not
    /// be used by applications e.g. for drawing attention to their
    /// dialogs.
    @inlinable func setKeepAbove(setting: Bool) {
        gtk_window_set_keep_above(window_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Asks to keep `window` below, so that it stays in bottom. Note that
    /// you shouldn’t assume the window is definitely below afterward,
    /// because other entities (e.g. the user or
    /// [window manager](#gtk-X11-arch)) could not keep it below,
    /// and not all window managers support putting windows below. But
    /// normally the window will be kept below. Just don’t write code
    /// that crashes if not.
    /// 
    /// It’s permitted to call this function before showing a window,
    /// in which case the window will be kept below when it appears onscreen
    /// initially.
    /// 
    /// You can track the below state via the “window-state-event” signal
    /// on `GtkWidget`.
    /// 
    /// Note that, according to the
    /// [Extended Window Manager Hints Specification](http://www.freedesktop.org/Standards/wm-spec),
    /// the above state is mainly meant for user preferences and should not
    /// be used by applications e.g. for drawing attention to their
    /// dialogs.
    @inlinable func setKeepBelow(setting: Bool) {
        gtk_window_set_keep_below(window_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Sets the mnemonic modifier for this window.
    @inlinable func setMnemonic(modifier: Gdk.ModifierType) {
        gtk_window_set_mnemonic_modifier(window_ptr, modifier.value)
    
    }

    /// Sets the `GtkWindow:mnemonics-visible` property.
    @inlinable func setMnemonicsVisible(setting: Bool) {
        gtk_window_set_mnemonics_visible(window_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Sets a window modal or non-modal. Modal windows prevent interaction
    /// with other windows in the same application. To keep modal dialogs
    /// on top of main application windows, use
    /// `gtk_window_set_transient_for()` to make the dialog transient for the
    /// parent; most [window managers](#gtk-X11-arch)
    /// will then disallow lowering the dialog below the parent.
    @inlinable func set(modal: Bool) {
        gtk_window_set_modal(window_ptr, gboolean((modal) ? 1 : 0))
    
    }

    /// Request the windowing system to make `window` partially transparent,
    /// with opacity 0 being fully transparent and 1 fully opaque. (Values
    /// of the opacity parameter are clamped to the [0,1] range.) On X11
    /// this has any effect only on X screens with a compositing manager
    /// running. See `gtk_widget_is_composited()`. On Windows it should work
    /// always.
    /// 
    /// Note that setting a window’s opacity after the window has been
    /// shown causes it to flicker once on Windows.
    ///
    /// **set_opacity is deprecated:**
    /// Use gtk_widget_set_opacity instead.
    @available(*, deprecated)
    @inlinable func set(opacity: Double) {
        gtk_window_set_opacity(window_ptr, gdouble(opacity))
    
    }

    /// Sets a position constraint for this window. If the old or new
    /// constraint is `GTK_WIN_POS_CENTER_ALWAYS`, this will also cause
    /// the window to be repositioned to satisfy the new constraint.
    @inlinable func set(position: GtkWindowPosition) {
        gtk_window_set_position(window_ptr, position)
    
    }

    /// Sets whether the user can resize a window. Windows are user resizable
    /// by default.
    @inlinable func set(resizable: Bool) {
        gtk_window_set_resizable(window_ptr, gboolean((resizable) ? 1 : 0))
    
    }

    /// This function is only useful on X11, not with other GTK+ targets.
    /// 
    /// In combination with the window title, the window role allows a
    /// [window manager](#gtk-X11-arch) to identify "the
    /// same" window when an application is restarted. So for example you
    /// might set the “toolbox” role on your app’s toolbox window, so that
    /// when the user restarts their session, the window manager can put
    /// the toolbox back in the same place.
    /// 
    /// If a window already has a unique title, you don’t need to set the
    /// role, since the WM can use the title to identify the window when
    /// restoring the session.
    @inlinable func set(role: UnsafePointer<gchar>!) {
        gtk_window_set_role(window_ptr, role)
    
    }

    /// Sets the `GdkScreen` where the `window` is displayed; if
    /// the window is already mapped, it will be unmapped, and
    /// then remapped on the new screen.
    @inlinable func set<ScreenT: Gdk.ScreenProtocol>(screen: ScreenT) {
        gtk_window_set_screen(window_ptr, screen.screen_ptr)
    
    }

    /// Windows may set a hint asking the desktop environment not to display
    /// the window in the pager. This function sets this hint.
    /// (A "pager" is any desktop navigation tool such as a workspace
    /// switcher that displays a thumbnail representation of the windows
    /// on the screen.)
    @inlinable func setSkipPagerHint(setting: Bool) {
        gtk_window_set_skip_pager_hint(window_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Windows may set a hint asking the desktop environment not to display
    /// the window in the task bar. This function sets this hint.
    @inlinable func setSkipTaskbarHint(setting: Bool) {
        gtk_window_set_skip_taskbar_hint(window_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Startup notification identifiers are used by desktop environment to
    /// track application startup, to provide user feedback and other
    /// features. This function changes the corresponding property on the
    /// underlying GdkWindow. Normally, startup identifier is managed
    /// automatically and you should only use this function in special cases
    /// like transferring focus from other processes. You should use this
    /// function before calling `gtk_window_present()` or any equivalent
    /// function generating a window map event.
    /// 
    /// This function is only useful on X11, not with other GTK+ targets.
    @inlinable func set(startupID: UnsafePointer<gchar>!) {
        gtk_window_set_startup_id(window_ptr, startupID)
    
    }

    /// Sets the title of the `GtkWindow`. The title of a window will be
    /// displayed in its title bar; on the X Window System, the title bar
    /// is rendered by the [window manager](#gtk-X11-arch),
    /// so exactly how the title appears to users may vary
    /// according to a user’s exact configuration. The title should help a
    /// user distinguish this window from other windows they may have
    /// open. A good title might include the application name and current
    /// document filename, for example.
    @inlinable func set(title: UnsafePointer<gchar>!) {
        gtk_window_set_title(window_ptr, title)
    
    }

    /// Sets a custom titlebar for `window`.
    /// 
    /// A typical widget used here is `GtkHeaderBar`, as it provides various features
    /// expected of a titlebar while allowing the addition of child widgets to it.
    /// 
    /// If you set a custom titlebar, GTK+ will do its best to convince
    /// the window manager not to put its own titlebar on the window.
    /// Depending on the system, this function may not work for a window
    /// that is already visible, so you set the titlebar before calling
    /// `gtk_widget_show()`.
    @inlinable func set(titlebar: WidgetRef? = nil) {
        gtk_window_set_titlebar(window_ptr, titlebar?.widget_ptr)
    
    }
    /// Sets a custom titlebar for `window`.
    /// 
    /// A typical widget used here is `GtkHeaderBar`, as it provides various features
    /// expected of a titlebar while allowing the addition of child widgets to it.
    /// 
    /// If you set a custom titlebar, GTK+ will do its best to convince
    /// the window manager not to put its own titlebar on the window.
    /// Depending on the system, this function may not work for a window
    /// that is already visible, so you set the titlebar before calling
    /// `gtk_widget_show()`.
    @inlinable func set<WidgetT: WidgetProtocol>(titlebar: WidgetT?) {
        gtk_window_set_titlebar(window_ptr, titlebar?.widget_ptr)
    
    }

    /// Dialog windows should be set transient for the main application
    /// window they were spawned from. This allows
    /// [window managers](#gtk-X11-arch) to e.g. keep the
    /// dialog on top of the main window, or center the dialog over the
    /// main window. `gtk_dialog_new_with_buttons()` and other convenience
    /// functions in GTK+ will sometimes call
    /// `gtk_window_set_transient_for()` on your behalf.
    /// 
    /// Passing `nil` for `parent` unsets the current transient window.
    /// 
    /// On Wayland, this function can also be used to attach a new
    /// `GTK_WINDOW_POPUP` to a `GTK_WINDOW_TOPLEVEL` parent already mapped
    /// on screen so that the `GTK_WINDOW_POPUP` will be created as a
    /// subsurface-based window `GDK_WINDOW_SUBSURFACE` which can be
    /// positioned at will relatively to the `GTK_WINDOW_TOPLEVEL` surface.
    /// 
    /// On Windows, this function puts the child window on top of the parent,
    /// much as the window manager would have done on X.
    @inlinable func setTransientFor(parent: WindowRef? = nil) {
        gtk_window_set_transient_for(window_ptr, parent?.window_ptr)
    
    }
    /// Dialog windows should be set transient for the main application
    /// window they were spawned from. This allows
    /// [window managers](#gtk-X11-arch) to e.g. keep the
    /// dialog on top of the main window, or center the dialog over the
    /// main window. `gtk_dialog_new_with_buttons()` and other convenience
    /// functions in GTK+ will sometimes call
    /// `gtk_window_set_transient_for()` on your behalf.
    /// 
    /// Passing `nil` for `parent` unsets the current transient window.
    /// 
    /// On Wayland, this function can also be used to attach a new
    /// `GTK_WINDOW_POPUP` to a `GTK_WINDOW_TOPLEVEL` parent already mapped
    /// on screen so that the `GTK_WINDOW_POPUP` will be created as a
    /// subsurface-based window `GDK_WINDOW_SUBSURFACE` which can be
    /// positioned at will relatively to the `GTK_WINDOW_TOPLEVEL` surface.
    /// 
    /// On Windows, this function puts the child window on top of the parent,
    /// much as the window manager would have done on X.
    @inlinable func setTransientFor<WindowT: WindowProtocol>(parent: WindowT?) {
        gtk_window_set_transient_for(window_ptr, parent?.window_ptr)
    
    }

    /// By setting the type hint for the window, you allow the window
    /// manager to decorate and handle the window in a way which is
    /// suitable to the function of the window in your application.
    /// 
    /// This function should be called before the window becomes visible.
    /// 
    /// `gtk_dialog_new_with_buttons()` and other convenience functions in GTK+
    /// will sometimes call `gtk_window_set_type_hint()` on your behalf.
    @inlinable func setType(hint: GdkWindowTypeHint) {
        gtk_window_set_type_hint(window_ptr, hint)
    
    }

    /// Windows may set a hint asking the desktop environment to draw
    /// the users attention to the window. This function sets this hint.
    @inlinable func setUrgencyHint(setting: Bool) {
        gtk_window_set_urgency_hint(window_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Don’t use this function. It sets the X Window System “class” and
    /// “name” hints for a window.  According to the ICCCM, you should
    /// always set these to the same value for all windows in an
    /// application, and GTK+ sets them to that value by default, so calling
    /// this function is sort of pointless. However, you may want to call
    /// `gtk_window_set_role()` on each window in your application, for the
    /// benefit of the session manager. Setting the role allows the window
    /// manager to restore window positions when loading a saved session.
    ///
    /// **set_wmclass is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func setWmclass(wmclassName: UnsafePointer<gchar>!, wmclassClass: UnsafePointer<gchar>!) {
        gtk_window_set_wmclass(window_ptr, wmclassName, wmclassClass)
    
    }

    /// Asks to stick `window`, which means that it will appear on all user
    /// desktops. Note that you shouldn’t assume the window is definitely
    /// stuck afterward, because other entities (e.g. the user or
    /// [window manager](#gtk-X11-arch) could unstick it
    /// again, and some window managers do not support sticking
    /// windows. But normally the window will end up stuck. Just don't
    /// write code that crashes if not.
    /// 
    /// It’s permitted to call this function before showing a window.
    /// 
    /// You can track stickiness via the “window-state-event” signal
    /// on `GtkWidget`.
    @inlinable func stick() {
        gtk_window_stick(window_ptr)
    
    }

    /// Asks to toggle off the fullscreen state for `window`. Note that you
    /// shouldn’t assume the window is definitely not full screen
    /// afterward, because other entities (e.g. the user or
    /// [window manager](#gtk-X11-arch)) could fullscreen it
    /// again, and not all window managers honor requests to unfullscreen
    /// windows. But normally the window will end up restored to its normal
    /// state. Just don’t write code that crashes if not.
    /// 
    /// You can track the fullscreen state via the “window-state-event” signal
    /// on `GtkWidget`.
    @inlinable func unfullscreen() {
        gtk_window_unfullscreen(window_ptr)
    
    }

    /// Asks to unmaximize `window`. Note that you shouldn’t assume the
    /// window is definitely unmaximized afterward, because other entities
    /// (e.g. the user or [window manager](#gtk-X11-arch))
    /// could maximize it again, and not all window
    /// managers honor requests to unmaximize. But normally the window will
    /// end up unmaximized. Just don’t write code that crashes if not.
    /// 
    /// You can track maximization via the “window-state-event” signal
    /// on `GtkWidget`.
    @inlinable func unmaximize() {
        gtk_window_unmaximize(window_ptr)
    
    }

    /// Asks to unstick `window`, which means that it will appear on only
    /// one of the user’s desktops. Note that you shouldn’t assume the
    /// window is definitely unstuck afterward, because other entities
    /// (e.g. the user or [window manager](#gtk-X11-arch)) could
    /// stick it again. But normally the window will
    /// end up stuck. Just don’t write code that crashes if not.
    /// 
    /// You can track stickiness via the “window-state-event” signal
    /// on `GtkWidget`.
    @inlinable func unstick() {
        gtk_window_unstick(window_ptr)
    
    }

    /// Runs a page setup dialog, letting the user modify the values from
    /// `page_setup`. If the user cancels the dialog, the returned `GtkPageSetup`
    /// is identical to the passed in `page_setup`, otherwise it contains the
    /// modifications done in the dialog.
    /// 
    /// Note that this function may use a recursive mainloop to show the page
    /// setup dialog. See `gtk_print_run_page_setup_dialog_async()` if this is
    /// a problem.
    @inlinable func printRunPageSetupDialog<PrintSettingsT: PrintSettingsProtocol>(pageSetup: PageSetupRef? = nil, settings: PrintSettingsT) -> PageSetupRef! {
        let rv = PageSetupRef(gconstpointer: gconstpointer(gtk_print_run_page_setup_dialog(window_ptr, pageSetup?.page_setup_ptr, settings.print_settings_ptr)))
        return rv
    }
    /// Runs a page setup dialog, letting the user modify the values from
    /// `page_setup`. If the user cancels the dialog, the returned `GtkPageSetup`
    /// is identical to the passed in `page_setup`, otherwise it contains the
    /// modifications done in the dialog.
    /// 
    /// Note that this function may use a recursive mainloop to show the page
    /// setup dialog. See `gtk_print_run_page_setup_dialog_async()` if this is
    /// a problem.
    @inlinable func printRunPageSetupDialog<PageSetupT: PageSetupProtocol, PrintSettingsT: PrintSettingsProtocol>(pageSetup: PageSetupT?, settings: PrintSettingsT) -> PageSetupRef! {
        let rv = PageSetupRef(gconstpointer: gconstpointer(gtk_print_run_page_setup_dialog(window_ptr, pageSetup?.page_setup_ptr, settings.print_settings_ptr)))
        return rv
    }

    /// Runs a page setup dialog, letting the user modify the values from `page_setup`.
    /// 
    /// In contrast to `gtk_print_run_page_setup_dialog()`, this function  returns after
    /// showing the page setup dialog on platforms that support this, and calls `done_cb`
    /// from a signal handler for the `response` signal of the dialog.
    @inlinable func printRunPageSetupDialogAsync<PrintSettingsT: PrintSettingsProtocol>(pageSetup: PageSetupRef? = nil, settings: PrintSettingsT, doneCb: GtkPageSetupDoneFunc?, data: gpointer! = nil) {
        gtk_print_run_page_setup_dialog_async(window_ptr, pageSetup?.page_setup_ptr, settings.print_settings_ptr, doneCb, data)
    
    }
    /// Runs a page setup dialog, letting the user modify the values from `page_setup`.
    /// 
    /// In contrast to `gtk_print_run_page_setup_dialog()`, this function  returns after
    /// showing the page setup dialog on platforms that support this, and calls `done_cb`
    /// from a signal handler for the `response` signal of the dialog.
    @inlinable func printRunPageSetupDialogAsync<PageSetupT: PageSetupProtocol, PrintSettingsT: PrintSettingsProtocol>(pageSetup: PageSetupT?, settings: PrintSettingsT, doneCb: GtkPageSetupDoneFunc?, data: gpointer! = nil) {
        gtk_print_run_page_setup_dialog_async(window_ptr, pageSetup?.page_setup_ptr, settings.print_settings_ptr, doneCb, data)
    
    }


    // *** showAboutDialog() is not available because it has a varargs (...) parameter!


    /// This is a convenience function for launching the default application
    /// to show the uri. The uri must be of a form understood by GIO (i.e. you
    /// need to install gvfs to get support for uri schemes such as http://
    /// or ftp://, as only local files are handled by GIO itself).
    /// Typical examples are
    /// - `file:///home/gnome/pict.jpg`
    /// - `http://www.gnome.org`
    /// - `mailto:me`gnome.org``
    /// 
    /// Ideally the timestamp is taken from the event triggering
    /// the `gtk_show_uri()` call. If timestamp is not known you can take
    /// `GDK_CURRENT_TIME`.
    /// 
    /// This is the recommended call to be used as it passes information
    /// necessary for sandbox helpers to parent their dialogs properly.
    @inlinable func showURIOnWindow(uri: UnsafePointer<CChar>!, timestamp: guint32) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gtk_show_uri_on_window(window_ptr, uri, timestamp, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Gets the value set by `gtk_window_set_accept_focus()`.
    @inlinable var acceptFocus: Bool {
        /// Gets the value set by `gtk_window_set_accept_focus()`.
        get {
            let rv = ((gtk_window_get_accept_focus(window_ptr)) != 0)
            return rv
        }
        /// Windows may set a hint asking the desktop environment not to receive
        /// the input focus. This function sets this hint.
        nonmutating set {
            gtk_window_set_accept_focus(window_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// The `GtkApplication` associated with the window.
    /// 
    /// The application will be kept alive for at least as long as it
    /// has any windows associated with it (see `g_application_hold()`
    /// for a way to keep it alive without windows).
    /// 
    /// Normally, the connection between the application and the window
    /// will remain until the window is destroyed, but you can explicitly
    /// remove it by setting the :application property to `nil`.
    @inlinable var application: ApplicationRef! {
        /// Gets the `GtkApplication` associated with the window (if any).
        get {
            let rv = ApplicationRef(gconstpointer: gconstpointer(gtk_window_get_application(window_ptr)))
            return rv
        }
        /// Sets or unsets the `GtkApplication` associated with the window.
        /// 
        /// The application will be kept alive for at least as long as it has any windows
        /// associated with it (see `g_application_hold()` for a way to keep it alive
        /// without windows).
        /// 
        /// Normally, the connection between the application and the window will remain
        /// until the window is destroyed, but you can explicitly remove it by setting
        /// the `application` to `nil`.
        /// 
        /// This is equivalent to calling `gtk_application_remove_window()` and/or
        /// `gtk_application_add_window()` on the old/new applications as relevant.
        nonmutating set {
            gtk_window_set_application(window_ptr, UnsafeMutablePointer<GtkApplication>(newValue?.application_ptr))
        }
    }

    /// Fetches the attach widget for this window. See
    /// `gtk_window_set_attached_to()`.
    @inlinable var attachedTo: WidgetRef! {
        /// Fetches the attach widget for this window. See
        /// `gtk_window_set_attached_to()`.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_window_get_attached_to(window_ptr))) else { return nil }
            return rv
        }
        /// Marks `window` as attached to `attach_widget`. This creates a logical binding
        /// between the window and the widget it belongs to, which is used by GTK+ to
        /// propagate information such as styling or accessibility to `window` as if it
        /// was a children of `attach_widget`.
        /// 
        /// Examples of places where specifying this relation is useful are for instance
        /// a `GtkMenu` created by a `GtkComboBox`, a completion popup window
        /// created by `GtkEntry` or a typeahead search entry created by `GtkTreeView`.
        /// 
        /// Note that this function should not be confused with
        /// `gtk_window_set_transient_for()`, which specifies a window manager relation
        /// between two toplevels instead.
        /// 
        /// Passing `nil` for `attach_widget` detaches the window.
        nonmutating set {
            gtk_window_set_attached_to(window_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }

    /// Whether the window should be decorated by the window manager.
    @inlinable var decorated: Bool {
        /// Returns whether the window has been set to have decorations
        /// such as a title bar via `gtk_window_set_decorated()`.
        get {
            let rv = ((gtk_window_get_decorated(window_ptr)) != 0)
            return rv
        }
        /// By default, windows are decorated with a title bar, resize
        /// controls, etc.  Some [window managers](#gtk-X11-arch)
        /// allow GTK+ to disable these decorations, creating a
        /// borderless window. If you set the decorated property to `false`
        /// using this function, GTK+ will do its best to convince the window
        /// manager not to decorate the window. Depending on the system, this
        /// function may not have any effect when called on a window that is
        /// already visible, so you should call it before calling `gtk_widget_show()`.
        /// 
        /// On Windows, this function always works, since there’s no window manager
        /// policy involved.
        nonmutating set {
            gtk_window_set_decorated(window_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns the default widget for `window`. See
    /// `gtk_window_set_default()` for more details.
    @inlinable var defaultWidget: WidgetRef! {
        /// Returns the default widget for `window`. See
        /// `gtk_window_set_default()` for more details.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_window_get_default_widget(window_ptr))) else { return nil }
            return rv
        }
    }

    /// Whether the window frame should have a close button.
    @inlinable var deletable: Bool {
        /// Returns whether the window has been set to have a close button
        /// via `gtk_window_set_deletable()`.
        get {
            let rv = ((gtk_window_get_deletable(window_ptr)) != 0)
            return rv
        }
        /// By default, windows have a close button in the window frame. Some
        /// [window managers](#gtk-X11-arch) allow GTK+ to
        /// disable this button. If you set the deletable property to `false`
        /// using this function, GTK+ will do its best to convince the window
        /// manager not to show a close button. Depending on the system, this
        /// function may not have any effect when called on a window that is
        /// already visible, so you should call it before calling `gtk_widget_show()`.
        /// 
        /// On Windows, this function always works, since there’s no window manager
        /// policy involved.
        nonmutating set {
            gtk_window_set_deletable(window_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns whether the window will be destroyed with its transient parent. See
    /// gtk_window_set_destroy_with_parent ().
    @inlinable var destroyWithParent: Bool {
        /// Returns whether the window will be destroyed with its transient parent. See
        /// gtk_window_set_destroy_with_parent ().
        get {
            let rv = ((gtk_window_get_destroy_with_parent(window_ptr)) != 0)
            return rv
        }
        /// If `setting` is `true`, then destroying the transient parent of `window`
        /// will also destroy `window` itself. This is useful for dialogs that
        /// shouldn’t persist beyond the lifetime of the main window they're
        /// associated with, for example.
        nonmutating set {
            gtk_window_set_destroy_with_parent(window_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Retrieves the current focused widget within the window.
    /// Note that this is the widget that would have the focus
    /// if the toplevel window focused; if the toplevel window
    /// is not focused then  `gtk_widget_has_focus (widget)` will
    /// not be `true` for the widget.
    @inlinable var focus: WidgetRef! {
        /// Retrieves the current focused widget within the window.
        /// Note that this is the widget that would have the focus
        /// if the toplevel window focused; if the toplevel window
        /// is not focused then  `gtk_widget_has_focus (widget)` will
        /// not be `true` for the widget.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_window_get_focus(window_ptr))) else { return nil }
            return rv
        }
        /// If `focus` is not the current focus widget, and is focusable, sets
        /// it as the focus widget for the window. If `focus` is `nil`, unsets
        /// the focus widget for this window. To set the focus to a particular
        /// widget in the toplevel, it is usually more convenient to use
        /// `gtk_widget_grab_focus()` instead of this function.
        nonmutating set {
            gtk_window_set_focus(window_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }

    /// Gets the value set by `gtk_window_set_focus_on_map()`.
    @inlinable var focusOnMap: Bool {
        /// Gets the value set by `gtk_window_set_focus_on_map()`.
        get {
            let rv = ((gtk_window_get_focus_on_map(window_ptr)) != 0)
            return rv
        }
        /// Windows may set a hint asking the desktop environment not to receive
        /// the input focus when the window is mapped.  This function sets this
        /// hint.
        nonmutating set {
            gtk_window_set_focus_on_map(window_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the value of the `GtkWindow:focus-visible` property.
    @inlinable var focusVisible: Bool {
        /// Gets the value of the `GtkWindow:focus-visible` property.
        get {
            let rv = ((gtk_window_get_focus_visible(window_ptr)) != 0)
            return rv
        }
        /// Sets the `GtkWindow:focus-visible` property.
        nonmutating set {
            gtk_window_set_focus_visible(window_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// The window gravity of the window. See `gtk_window_move()` and `GdkGravity` for
    /// more details about window gravity.
    @inlinable var gravity: GdkGravity {
        /// Gets the value set by `gtk_window_set_gravity()`.
        get {
            let rv = gtk_window_get_gravity(window_ptr)
            return rv
        }
        /// Window gravity defines the meaning of coordinates passed to
        /// `gtk_window_move()`. See `gtk_window_move()` and `GdkGravity` for
        /// more details.
        /// 
        /// The default window gravity is `GDK_GRAVITY_NORTH_WEST` which will
        /// typically “do what you mean.”
        nonmutating set {
            gtk_window_set_gravity(window_ptr, newValue)
        }
    }

    /// Returns the group for `window` or the default group, if
    /// `window` is `nil` or if `window` does not have an explicit
    /// window group.
    @inlinable var group: WindowGroupRef! {
        /// Returns the group for `window` or the default group, if
        /// `window` is `nil` or if `window` does not have an explicit
        /// window group.
        get {
            let rv = WindowGroupRef(gconstpointer: gconstpointer(gtk_window_get_group(window_ptr)))
            return rv
        }
    }

    /// Determines whether the window may have a resize grip.
    ///
    /// **get_has_resize_grip is deprecated:**
    /// Resize grips have been removed.
    @inlinable var hasResizeGrip: Bool {
        /// Determines whether the window may have a resize grip.
        ///
        /// **get_has_resize_grip is deprecated:**
        /// Resize grips have been removed.
        @available(*, deprecated)
    get {
            let rv = ((gtk_window_get_has_resize_grip(window_ptr)) != 0)
            return rv
        }
        /// Sets whether `window` has a corner resize grip.
        /// 
        /// Note that the resize grip is only shown if the window
        /// is actually resizable and not maximized. Use
        /// `gtk_window_resize_grip_is_visible()` to find out if the
        /// resize grip is currently shown.
        ///
        /// **set_has_resize_grip is deprecated:**
        /// Resize grips have been removed.
        @available(*, deprecated)
    nonmutating set {
            gtk_window_set_has_resize_grip(window_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns whether the window has requested to have its titlebar hidden
    /// when maximized. See gtk_window_set_hide_titlebar_when_maximized ().
    @inlinable var hideTitlebarWhenMaximized: Bool {
        /// Returns whether the window has requested to have its titlebar hidden
        /// when maximized. See gtk_window_set_hide_titlebar_when_maximized ().
        get {
            let rv = ((gtk_window_get_hide_titlebar_when_maximized(window_ptr)) != 0)
            return rv
        }
        /// If `setting` is `true`, then `window` will request that it’s titlebar
        /// should be hidden when maximized.
        /// This is useful for windows that don’t convey any information other
        /// than the application name in the titlebar, to put the available
        /// screen space to better use. If the underlying window system does not
        /// support the request, the setting will not have any effect.
        /// 
        /// Note that custom titlebars set with `gtk_window_set_titlebar()` are
        /// not affected by this. The application is in full control of their
        /// content and visibility anyway.
        nonmutating set {
            gtk_window_set_hide_titlebar_when_maximized(window_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    @inlinable var icon: PixbufRef! {
        /// Gets the value set by `gtk_window_set_icon()` (or if you've
        /// called `gtk_window_set_icon_list()`, gets the first icon in
        /// the icon list).
        get {
            let rv = PixbufRef(gconstpointer: gconstpointer(gtk_window_get_icon(window_ptr)))
            return rv
        }
        /// Sets up the icon representing a `GtkWindow`. This icon is used when
        /// the window is minimized (also known as iconified).  Some window
        /// managers or desktop environments may also place it in the window
        /// frame, or display it in other contexts. On others, the icon is not
        /// used at all, so your mileage may vary.
        /// 
        /// The icon should be provided in whatever size it was naturally
        /// drawn; that is, don’t scale the image before passing it to
        /// GTK+. Scaling is postponed until the last minute, when the desired
        /// final size is known, to allow best quality.
        /// 
        /// If you have your icon hand-drawn in multiple sizes, use
        /// `gtk_window_set_icon_list()`. Then the best size will be used.
        /// 
        /// This function is equivalent to calling `gtk_window_set_icon_list()`
        /// with a 1-element list.
        /// 
        /// See also `gtk_window_set_default_icon_list()` to set the icon
        /// for all windows in your application in one go.
        nonmutating set {
            gtk_window_set_icon(window_ptr, UnsafeMutablePointer<GdkPixbuf>(newValue?.pixbuf_ptr))
        }
    }

    /// Retrieves the list of icons set by `gtk_window_set_icon_list()`.
    /// The list is copied, but the reference count on each
    /// member won’t be incremented.
    @inlinable var iconList: GLib.ListRef! {
        /// Retrieves the list of icons set by `gtk_window_set_icon_list()`.
        /// The list is copied, but the reference count on each
        /// member won’t be incremented.
        get {
            let rv = GLib.ListRef(gtk_window_get_icon_list(window_ptr))
            return rv
        }
        /// Sets up the icon representing a `GtkWindow`. The icon is used when
        /// the window is minimized (also known as iconified).  Some window
        /// managers or desktop environments may also place it in the window
        /// frame, or display it in other contexts. On others, the icon is not
        /// used at all, so your mileage may vary.
        /// 
        /// `gtk_window_set_icon_list()` allows you to pass in the same icon in
        /// several hand-drawn sizes. The list should contain the natural sizes
        /// your icon is available in; that is, don’t scale the image before
        /// passing it to GTK+. Scaling is postponed until the last minute,
        /// when the desired final size is known, to allow best quality.
        /// 
        /// By passing several sizes, you may improve the final image quality
        /// of the icon, by reducing or eliminating automatic image scaling.
        /// 
        /// Recommended sizes to provide: 16x16, 32x32, 48x48 at minimum, and
        /// larger images (64x64, 128x128) if you have them.
        /// 
        /// See also `gtk_window_set_default_icon_list()` to set the icon
        /// for all windows in your application in one go.
        /// 
        /// Note that transient windows (those who have been set transient for another
        /// window using `gtk_window_set_transient_for()`) will inherit their
        /// icon from their transient parent. So there’s no need to explicitly
        /// set the icon on transient windows.
        nonmutating set {
            gtk_window_set_icon_list(window_ptr, UnsafeMutablePointer<GList>(newValue?._ptr))
        }
    }

    /// Returns the name of the themed icon for the window,
    /// see `gtk_window_set_icon_name()`.
    @inlinable var iconName: String! {
        /// Returns the name of the themed icon for the window,
        /// see `gtk_window_set_icon_name()`.
        get {
            let rv = gtk_window_get_icon_name(window_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the icon for the window from a named themed icon.
        /// See the docs for `GtkIconTheme` for more details.
        /// On some platforms, the window icon is not used at all.
        /// 
        /// Note that this has nothing to do with the WM_ICON_NAME
        /// property which is mentioned in the ICCCM.
        nonmutating set {
            gtk_window_set_icon_name(window_ptr, newValue)
        }
    }

    /// Returns whether the window is part of the current active toplevel.
    /// (That is, the toplevel window receiving keystrokes.)
    /// The return value is `true` if the window is active toplevel
    /// itself, but also if it is, say, a `GtkPlug` embedded in the active toplevel.
    /// You might use this function if you wanted to draw a widget
    /// differently in an active window from a widget in an inactive window.
    /// See `gtk_window_has_toplevel_focus()`
    @inlinable var isActive: Bool {
        /// Returns whether the window is part of the current active toplevel.
        /// (That is, the toplevel window receiving keystrokes.)
        /// The return value is `true` if the window is active toplevel
        /// itself, but also if it is, say, a `GtkPlug` embedded in the active toplevel.
        /// You might use this function if you wanted to draw a widget
        /// differently in an active window from a widget in an inactive window.
        /// See `gtk_window_has_toplevel_focus()`
        get {
            let rv = ((gtk_window_is_active(window_ptr)) != 0)
            return rv
        }
    }

    /// Retrieves the current maximized state of `window`.
    /// 
    /// Note that since maximization is ultimately handled by the window
    /// manager and happens asynchronously to an application request, you
    /// shouldn’t assume the return value of this function changing
    /// immediately (or at all), as an effect of calling
    /// `gtk_window_maximize()` or `gtk_window_unmaximize()`.
    @inlinable var isMaximized: Bool {
        /// Retrieves the current maximized state of `window`.
        /// 
        /// Note that since maximization is ultimately handled by the window
        /// manager and happens asynchronously to an application request, you
        /// shouldn’t assume the return value of this function changing
        /// immediately (or at all), as an effect of calling
        /// `gtk_window_maximize()` or `gtk_window_unmaximize()`.
        get {
            let rv = ((gtk_window_is_maximized(window_ptr)) != 0)
            return rv
        }
    }

    /// Returns the mnemonic modifier for this window. See
    /// `gtk_window_set_mnemonic_modifier()`.
    @inlinable var mnemonicModifier: Gdk.ModifierType {
        /// Returns the mnemonic modifier for this window. See
        /// `gtk_window_set_mnemonic_modifier()`.
        get {
            let rv = Gdk.ModifierType(gtk_window_get_mnemonic_modifier(window_ptr))
            return rv
        }
        /// Sets the mnemonic modifier for this window.
        nonmutating set {
            gtk_window_set_mnemonic_modifier(window_ptr, newValue.value)
        }
    }

    /// Gets the value of the `GtkWindow:mnemonics-visible` property.
    @inlinable var mnemonicsVisible: Bool {
        /// Gets the value of the `GtkWindow:mnemonics-visible` property.
        get {
            let rv = ((gtk_window_get_mnemonics_visible(window_ptr)) != 0)
            return rv
        }
        /// Sets the `GtkWindow:mnemonics-visible` property.
        nonmutating set {
            gtk_window_set_mnemonics_visible(window_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    @inlinable var modal: Bool {
        /// Returns whether the window is modal. See `gtk_window_set_modal()`.
        get {
            let rv = ((gtk_window_get_modal(window_ptr)) != 0)
            return rv
        }
        /// Sets a window modal or non-modal. Modal windows prevent interaction
        /// with other windows in the same application. To keep modal dialogs
        /// on top of main application windows, use
        /// `gtk_window_set_transient_for()` to make the dialog transient for the
        /// parent; most [window managers](#gtk-X11-arch)
        /// will then disallow lowering the dialog below the parent.
        nonmutating set {
            gtk_window_set_modal(window_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Fetches the requested opacity for this window. See
    /// `gtk_window_set_opacity()`.
    ///
    /// **get_opacity is deprecated:**
    /// Use gtk_widget_get_opacity instead.
    @inlinable var opacity: Double {
        /// Fetches the requested opacity for this window. See
        /// `gtk_window_set_opacity()`.
        ///
        /// **get_opacity is deprecated:**
        /// Use gtk_widget_get_opacity instead.
        @available(*, deprecated)
    get {
            let rv = Double(gtk_window_get_opacity(window_ptr))
            return rv
        }
        /// Request the windowing system to make `window` partially transparent,
        /// with opacity 0 being fully transparent and 1 fully opaque. (Values
        /// of the opacity parameter are clamped to the [0,1] range.) On X11
        /// this has any effect only on X screens with a compositing manager
        /// running. See `gtk_widget_is_composited()`. On Windows it should work
        /// always.
        /// 
        /// Note that setting a window’s opacity after the window has been
        /// shown causes it to flicker once on Windows.
        ///
        /// **set_opacity is deprecated:**
        /// Use gtk_widget_set_opacity instead.
        @available(*, deprecated)
    nonmutating set {
            gtk_window_set_opacity(window_ptr, gdouble(newValue))
        }
    }

    @inlinable var resizable: Bool {
        /// Gets the value set by `gtk_window_set_resizable()`.
        get {
            let rv = ((gtk_window_get_resizable(window_ptr)) != 0)
            return rv
        }
        /// Sets whether the user can resize a window. Windows are user resizable
        /// by default.
        nonmutating set {
            gtk_window_set_resizable(window_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    @inlinable var role: String! {
        /// Returns the role of the window. See `gtk_window_set_role()` for
        /// further explanation.
        get {
            let rv = gtk_window_get_role(window_ptr).map({ String(cString: $0) })
            return rv
        }
        /// This function is only useful on X11, not with other GTK+ targets.
        /// 
        /// In combination with the window title, the window role allows a
        /// [window manager](#gtk-X11-arch) to identify "the
        /// same" window when an application is restarted. So for example you
        /// might set the “toolbox” role on your app’s toolbox window, so that
        /// when the user restarts their session, the window manager can put
        /// the toolbox back in the same place.
        /// 
        /// If a window already has a unique title, you don’t need to set the
        /// role, since the WM can use the title to identify the window when
        /// restoring the session.
        nonmutating set {
            gtk_window_set_role(window_ptr, newValue)
        }
    }

    @inlinable var screen: Gdk.ScreenRef! {
        /// Returns the `GdkScreen` associated with `window`.
        get {
            let rv = Gdk.ScreenRef(gtk_window_get_screen(window_ptr))
            return rv
        }
        /// Sets the `GdkScreen` where the `window` is displayed; if
        /// the window is already mapped, it will be unmapped, and
        /// then remapped on the new screen.
        nonmutating set {
            gtk_window_set_screen(window_ptr, UnsafeMutablePointer<GdkScreen>(newValue?.screen_ptr))
        }
    }

    /// Gets the value set by `gtk_window_set_skip_pager_hint()`.
    @inlinable var skipPagerHint: Bool {
        /// Gets the value set by `gtk_window_set_skip_pager_hint()`.
        get {
            let rv = ((gtk_window_get_skip_pager_hint(window_ptr)) != 0)
            return rv
        }
        /// Windows may set a hint asking the desktop environment not to display
        /// the window in the pager. This function sets this hint.
        /// (A "pager" is any desktop navigation tool such as a workspace
        /// switcher that displays a thumbnail representation of the windows
        /// on the screen.)
        nonmutating set {
            gtk_window_set_skip_pager_hint(window_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the value set by `gtk_window_set_skip_taskbar_hint()`
    @inlinable var skipTaskbarHint: Bool {
        /// Gets the value set by `gtk_window_set_skip_taskbar_hint()`
        get {
            let rv = ((gtk_window_get_skip_taskbar_hint(window_ptr)) != 0)
            return rv
        }
        /// Windows may set a hint asking the desktop environment not to display
        /// the window in the task bar. This function sets this hint.
        nonmutating set {
            gtk_window_set_skip_taskbar_hint(window_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    @inlinable var title: String! {
        /// Retrieves the title of the window. See `gtk_window_set_title()`.
        get {
            let rv = gtk_window_get_title(window_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the title of the `GtkWindow`. The title of a window will be
        /// displayed in its title bar; on the X Window System, the title bar
        /// is rendered by the [window manager](#gtk-X11-arch),
        /// so exactly how the title appears to users may vary
        /// according to a user’s exact configuration. The title should help a
        /// user distinguish this window from other windows they may have
        /// open. A good title might include the application name and current
        /// document filename, for example.
        nonmutating set {
            gtk_window_set_title(window_ptr, newValue)
        }
    }

    /// Returns the custom titlebar that has been set with
    /// `gtk_window_set_titlebar()`.
    @inlinable var titlebar: WidgetRef! {
        /// Returns the custom titlebar that has been set with
        /// `gtk_window_set_titlebar()`.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_window_get_titlebar(window_ptr))) else { return nil }
            return rv
        }
        /// Sets a custom titlebar for `window`.
        /// 
        /// A typical widget used here is `GtkHeaderBar`, as it provides various features
        /// expected of a titlebar while allowing the addition of child widgets to it.
        /// 
        /// If you set a custom titlebar, GTK+ will do its best to convince
        /// the window manager not to put its own titlebar on the window.
        /// Depending on the system, this function may not work for a window
        /// that is already visible, so you set the titlebar before calling
        /// `gtk_widget_show()`.
        nonmutating set {
            gtk_window_set_titlebar(window_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }

    /// Fetches the transient parent for this window. See
    /// `gtk_window_set_transient_for()`.
    @inlinable var transientFor: WindowRef! {
        /// Fetches the transient parent for this window. See
        /// `gtk_window_set_transient_for()`.
        get {
            guard let rv = WindowRef(gconstpointer: gconstpointer(gtk_window_get_transient_for(window_ptr))) else { return nil }
            return rv
        }
        /// Dialog windows should be set transient for the main application
        /// window they were spawned from. This allows
        /// [window managers](#gtk-X11-arch) to e.g. keep the
        /// dialog on top of the main window, or center the dialog over the
        /// main window. `gtk_dialog_new_with_buttons()` and other convenience
        /// functions in GTK+ will sometimes call
        /// `gtk_window_set_transient_for()` on your behalf.
        /// 
        /// Passing `nil` for `parent` unsets the current transient window.
        /// 
        /// On Wayland, this function can also be used to attach a new
        /// `GTK_WINDOW_POPUP` to a `GTK_WINDOW_TOPLEVEL` parent already mapped
        /// on screen so that the `GTK_WINDOW_POPUP` will be created as a
        /// subsurface-based window `GDK_WINDOW_SUBSURFACE` which can be
        /// positioned at will relatively to the `GTK_WINDOW_TOPLEVEL` surface.
        /// 
        /// On Windows, this function puts the child window on top of the parent,
        /// much as the window manager would have done on X.
        nonmutating set {
            gtk_window_set_transient_for(window_ptr, window_ptr)
        }
    }

    /// Gets the type hint for this window. See `gtk_window_set_type_hint()`.
    @inlinable var typeHint: GdkWindowTypeHint {
        /// Gets the type hint for this window. See `gtk_window_set_type_hint()`.
        get {
            let rv = gtk_window_get_type_hint(window_ptr)
            return rv
        }
        /// By setting the type hint for the window, you allow the window
        /// manager to decorate and handle the window in a way which is
        /// suitable to the function of the window in your application.
        /// 
        /// This function should be called before the window becomes visible.
        /// 
        /// `gtk_dialog_new_with_buttons()` and other convenience functions in GTK+
        /// will sometimes call `gtk_window_set_type_hint()` on your behalf.
        nonmutating set {
            gtk_window_set_type_hint(window_ptr, newValue)
        }
    }

    /// Gets the value set by `gtk_window_set_urgency_hint()`
    @inlinable var urgencyHint: Bool {
        /// Gets the value set by `gtk_window_set_urgency_hint()`
        get {
            let rv = ((gtk_window_get_urgency_hint(window_ptr)) != 0)
            return rv
        }
        /// Windows may set a hint asking the desktop environment to draw
        /// the users attention to the window. This function sets this hint.
        nonmutating set {
            gtk_window_set_urgency_hint(window_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the type of the window. See `GtkWindowType`.
    @inlinable var windowType: GtkWindowType {
        /// Gets the type of the window. See `GtkWindowType`.
        get {
            let rv = gtk_window_get_window_type(window_ptr)
            return rv
        }
    }

    @inlinable var bin: GtkBin {
        get {
            let rv = window_ptr.pointee.bin
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - WindowAccessible Class


///
/// The `WindowAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkWindowAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `WindowAccessible`.
/// Alternatively, use `WindowAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol WindowAccessibleProtocol: ContainerAccessibleProtocol, Atk.WindowProtocol {
        /// Untyped pointer to the underlying `GtkWindowAccessible` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkWindowAccessible` instance.
    var window_accessible_ptr: UnsafeMutablePointer<GtkWindowAccessible>! { get }

    /// Required Initialiser for types conforming to `WindowAccessibleProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `WindowAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkWindowAccessible` instance.
/// It exposes methods that can operate on this data type through `WindowAccessibleProtocol` conformance.
/// Use `WindowAccessibleRef` only as an `unowned` reference to an existing `GtkWindowAccessible` instance.
///
public struct WindowAccessibleRef: WindowAccessibleProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkWindowAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `window_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension WindowAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkWindowAccessible>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkWindowAccessible>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkWindowAccessible>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkWindowAccessible>?) {
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

    /// Reference intialiser for a related type that implements `WindowAccessibleProtocol`
    @inlinable init<T: WindowAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: WindowAccessibleProtocol>(_ other: T) -> WindowAccessibleRef { WindowAccessibleRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAccessibleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAccessibleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAccessibleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAccessibleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAccessibleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }


///
/// The `WindowAccessible` type acts as a reference-counted owner of an underlying `GtkWindowAccessible` instance.
/// It provides the methods that can operate on this data type through `WindowAccessibleProtocol` conformance.
/// Use `WindowAccessible` as a strong reference or owner of a `GtkWindowAccessible` instance.
///
open class WindowAccessible: ContainerAccessible, WindowAccessibleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WindowAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkWindowAccessible>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WindowAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkWindowAccessible>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WindowAccessible` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WindowAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WindowAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkWindowAccessible>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WindowAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkWindowAccessible>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkWindowAccessible`.
    /// i.e., ownership is transferred to the `WindowAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkWindowAccessible>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `WindowAccessibleProtocol`
    /// Will retain `GtkWindowAccessible`.
    /// - Parameter other: an instance of a related type that implements `WindowAccessibleProtocol`
    @inlinable public init<T: WindowAccessibleProtocol>(windowAccessible other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAccessibleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAccessibleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAccessibleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAccessibleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum WindowAccessiblePropertyName: String, PropertyNameProtocol {
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

public extension WindowAccessibleProtocol {
    /// Bind a `WindowAccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: WindowAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a WindowAccessible property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: WindowAccessiblePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a WindowAccessible property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: WindowAccessiblePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum WindowAccessibleSignalName: String, SignalNameProtocol {
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
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
    /// notifications. `AtkObject::property-changed` is needed by the
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

// MARK: WindowAccessible has no signals
// MARK: WindowAccessible Class: WindowAccessibleProtocol extension (methods and fields)
public extension WindowAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkWindowAccessible` instance.
    @inlinable var window_accessible_ptr: UnsafeMutablePointer<GtkWindowAccessible>! { return ptr?.assumingMemoryBound(to: GtkWindowAccessible.self) }


    @inlinable var parent: GtkContainerAccessible {
        get {
            let rv = window_accessible_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - WindowGroup Class

/// A `GtkWindowGroup` restricts the effect of grabs to windows
/// in the same group, thereby making window groups almost behave
/// like separate applications.
/// 
/// A window can be a member in at most one window group at a time.
/// Windows that have not been explicitly assigned to a group are
/// implicitly treated like windows of the default window group.
/// 
/// GtkWindowGroup objects are referenced by each window in the group,
/// so once you have added all windows to a GtkWindowGroup, you can drop
/// the initial reference to the window group with `g_object_unref()`. If the
/// windows in the window group are subsequently destroyed, then they will
/// be removed from the window group and drop their references on the window
/// group; when all window have been removed, the window group will be
/// freed.
///
/// The `WindowGroupProtocol` protocol exposes the methods and properties of an underlying `GtkWindowGroup` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `WindowGroup`.
/// Alternatively, use `WindowGroupRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol WindowGroupProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GtkWindowGroup` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkWindowGroup` instance.
    var window_group_ptr: UnsafeMutablePointer<GtkWindowGroup>! { get }

    /// Required Initialiser for types conforming to `WindowGroupProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GtkWindowGroup` restricts the effect of grabs to windows
/// in the same group, thereby making window groups almost behave
/// like separate applications.
/// 
/// A window can be a member in at most one window group at a time.
/// Windows that have not been explicitly assigned to a group are
/// implicitly treated like windows of the default window group.
/// 
/// GtkWindowGroup objects are referenced by each window in the group,
/// so once you have added all windows to a GtkWindowGroup, you can drop
/// the initial reference to the window group with `g_object_unref()`. If the
/// windows in the window group are subsequently destroyed, then they will
/// be removed from the window group and drop their references on the window
/// group; when all window have been removed, the window group will be
/// freed.
///
/// The `WindowGroupRef` type acts as a lightweight Swift reference to an underlying `GtkWindowGroup` instance.
/// It exposes methods that can operate on this data type through `WindowGroupProtocol` conformance.
/// Use `WindowGroupRef` only as an `unowned` reference to an existing `GtkWindowGroup` instance.
///
public struct WindowGroupRef: WindowGroupProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkWindowGroup` instance.
    /// For type-safe access, use the generated, typed pointer `window_group_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension WindowGroupRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkWindowGroup>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkWindowGroup>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkWindowGroup>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkWindowGroup>?) {
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

    /// Reference intialiser for a related type that implements `WindowGroupProtocol`
    @inlinable init<T: WindowGroupProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: WindowGroupProtocol>(_ other: T) -> WindowGroupRef { WindowGroupRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkWindowGroup` object. Grabs added with
    /// `gtk_grab_add()` only affect windows within the same `GtkWindowGroup`.
    @inlinable init() {
        let rv = gtk_window_group_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// A `GtkWindowGroup` restricts the effect of grabs to windows
/// in the same group, thereby making window groups almost behave
/// like separate applications.
/// 
/// A window can be a member in at most one window group at a time.
/// Windows that have not been explicitly assigned to a group are
/// implicitly treated like windows of the default window group.
/// 
/// GtkWindowGroup objects are referenced by each window in the group,
/// so once you have added all windows to a GtkWindowGroup, you can drop
/// the initial reference to the window group with `g_object_unref()`. If the
/// windows in the window group are subsequently destroyed, then they will
/// be removed from the window group and drop their references on the window
/// group; when all window have been removed, the window group will be
/// freed.
///
/// The `WindowGroup` type acts as a reference-counted owner of an underlying `GtkWindowGroup` instance.
/// It provides the methods that can operate on this data type through `WindowGroupProtocol` conformance.
/// Use `WindowGroup` as a strong reference or owner of a `GtkWindowGroup` instance.
///
open class WindowGroup: GLibObject.Object, WindowGroupProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WindowGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkWindowGroup>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WindowGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkWindowGroup>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WindowGroup` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WindowGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WindowGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkWindowGroup>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WindowGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkWindowGroup>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkWindowGroup`.
    /// i.e., ownership is transferred to the `WindowGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkWindowGroup>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `WindowGroupProtocol`
    /// Will retain `GtkWindowGroup`.
    /// - Parameter other: an instance of a related type that implements `WindowGroupProtocol`
    @inlinable public init<T: WindowGroupProtocol>(windowGroup other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkWindowGroup` object. Grabs added with
    /// `gtk_grab_add()` only affect windows within the same `GtkWindowGroup`.
    @inlinable public init() {
        let rv = gtk_window_group_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

// MARK: no WindowGroup properties

public enum WindowGroupSignalName: String, SignalNameProtocol {
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"

}

// MARK: WindowGroup has no signals
// MARK: WindowGroup Class: WindowGroupProtocol extension (methods and fields)
public extension WindowGroupProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkWindowGroup` instance.
    @inlinable var window_group_ptr: UnsafeMutablePointer<GtkWindowGroup>! { return ptr?.assumingMemoryBound(to: GtkWindowGroup.self) }

    /// Adds a window to a `GtkWindowGroup`.
    @inlinable func add<WindowT: WindowProtocol>(window: WindowT) {
        gtk_window_group_add_window(window_group_ptr, window.window_ptr)
    
    }

    /// Returns the current grab widget for `device`, or `nil` if none.
    @inlinable func getCurrentDeviceGrab<DeviceT: Gdk.DeviceProtocol>(device: DeviceT) -> WidgetRef! {
        let rv = WidgetRef(gconstpointer: gconstpointer(gtk_window_group_get_current_device_grab(window_group_ptr, device.device_ptr)))
        return rv
    }

    /// Gets the current grab widget of the given group,
    /// see `gtk_grab_add()`.
    @inlinable func getCurrentGrab() -> WidgetRef! {
        let rv = WidgetRef(gconstpointer: gconstpointer(gtk_window_group_get_current_grab(window_group_ptr)))
        return rv
    }

    /// Returns a list of the `GtkWindows` that belong to `window_group`.
    @inlinable func listWindows() -> GLib.ListRef! {
        let rv = GLib.ListRef(gtk_window_group_list_windows(window_group_ptr))
        return rv
    }

    /// Removes a window from a `GtkWindowGroup`.
    @inlinable func remove<WindowT: WindowProtocol>(window: WindowT) {
        gtk_window_group_remove_window(window_group_ptr, window.window_ptr)
    
    }
    /// Gets the current grab widget of the given group,
    /// see `gtk_grab_add()`.
    @inlinable var currentGrab: WidgetRef! {
        /// Gets the current grab widget of the given group,
        /// see `gtk_grab_add()`.
        get {
            let rv = WidgetRef(gconstpointer: gconstpointer(gtk_window_group_get_current_grab(window_group_ptr)))
            return rv
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = window_group_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



