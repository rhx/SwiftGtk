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

// MARK: - Actionable Interface

/// The `ActionableProtocol` protocol exposes the methods and properties of an underlying `GtkActionable` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Actionable`.
/// Alternatively, use `ActionableRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// This interface provides a convenient way of associating widgets with
/// actions on a `GtkApplicationWindow` or `GtkApplication`.
/// 
/// It primarily consists of two properties: `GtkActionable:action`-name
/// and `GtkActionable:action`-target. There are also some convenience APIs
/// for setting these properties.
/// 
/// The action will be looked up in action groups that are found among
/// the widgets ancestors. Most commonly, these will be the actions with
/// the “win.” or “app.” prefix that are associated with the `GtkApplicationWindow`
/// or `GtkApplication`, but other action groups that are added with
/// `gtk_widget_insert_action_group()` will be consulted as well.
public protocol ActionableProtocol: WidgetProtocol {
        /// Untyped pointer to the underlying `GtkActionable` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkActionable` instance.
    var actionable_ptr: UnsafeMutablePointer<GtkActionable>! { get }

}

/// The `ActionableRef` type acts as a lightweight Swift reference to an underlying `GtkActionable` instance.
/// It exposes methods that can operate on this data type through `ActionableProtocol` conformance.
/// Use `ActionableRef` only as an `unowned` reference to an existing `GtkActionable` instance.
///
/// This interface provides a convenient way of associating widgets with
/// actions on a `GtkApplicationWindow` or `GtkApplication`.
/// 
/// It primarily consists of two properties: `GtkActionable:action`-name
/// and `GtkActionable:action`-target. There are also some convenience APIs
/// for setting these properties.
/// 
/// The action will be looked up in action groups that are found among
/// the widgets ancestors. Most commonly, these will be the actions with
/// the “win.” or “app.” prefix that are associated with the `GtkApplicationWindow`
/// or `GtkApplication`, but other action groups that are added with
/// `gtk_widget_insert_action_group()` will be consulted as well.
public struct ActionableRef: ActionableProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkActionable` instance.
    /// For type-safe access, use the generated, typed pointer `actionable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ActionableRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkActionable>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkActionable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkActionable>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkActionable>?) {
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

    /// Reference intialiser for a related type that implements `ActionableProtocol`
    @inlinable init<T: ActionableProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ActionableProtocol>(_ other: T) -> ActionableRef { ActionableRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Actionable` type acts as a reference-counted owner of an underlying `GtkActionable` instance.
/// It provides the methods that can operate on this data type through `ActionableProtocol` conformance.
/// Use `Actionable` as a strong reference or owner of a `GtkActionable` instance.
///
/// This interface provides a convenient way of associating widgets with
/// actions on a `GtkApplicationWindow` or `GtkApplication`.
/// 
/// It primarily consists of two properties: `GtkActionable:action`-name
/// and `GtkActionable:action`-target. There are also some convenience APIs
/// for setting these properties.
/// 
/// The action will be looked up in action groups that are found among
/// the widgets ancestors. Most commonly, these will be the actions with
/// the “win.” or “app.” prefix that are associated with the `GtkApplicationWindow`
/// or `GtkApplication`, but other action groups that are added with
/// `gtk_widget_insert_action_group()` will be consulted as well.
open class Actionable: Widget, ActionableProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Actionable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkActionable>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Actionable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkActionable>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Actionable` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Actionable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Actionable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkActionable>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Actionable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkActionable>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkActionable`.
    /// i.e., ownership is transferred to the `Actionable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkActionable>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ActionableProtocol`
    /// Will retain `GtkActionable`.
    /// - Parameter other: an instance of a related type that implements `ActionableProtocol`
    @inlinable public init<T: ActionableProtocol>(actionable other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum ActionablePropertyName: String, PropertyNameProtocol {
    case actionName = "action-name"
    case actionTarget = "action-target"
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

public extension ActionableProtocol {
    /// Bind a `ActionablePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ActionablePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Actionable property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ActionablePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Actionable property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ActionablePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Actionable has no signals// MARK: Actionable Interface: ActionableProtocol extension (methods and fields)
public extension ActionableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkActionable` instance.
    @inlinable var actionable_ptr: UnsafeMutablePointer<GtkActionable>! { return ptr?.assumingMemoryBound(to: GtkActionable.self) }

    /// Gets the action name for `actionable`.
    /// 
    /// See `gtk_actionable_set_action_name()` for more information.
    @inlinable func getActionName() -> String! {
        let rv = gtk_actionable_get_action_name(actionable_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the current target value of `actionable`.
    /// 
    /// See `gtk_actionable_set_action_target_value()` for more information.
    @inlinable func getActionTargetValue() -> GLib.VariantRef! {
        let rv = GLib.VariantRef(gtk_actionable_get_action_target_value(actionable_ptr))
        return rv
    }

    /// Specifies the name of the action with which this widget should be
    /// associated.  If `action_name` is `nil` then the widget will be
    /// unassociated from any previous action.
    /// 
    /// Usually this function is used when the widget is located (or will be
    /// located) within the hierarchy of a `GtkApplicationWindow`.
    /// 
    /// Names are of the form “win.save” or “app.quit” for actions on the
    /// containing `GtkApplicationWindow` or its associated `GtkApplication`,
    /// respectively.  This is the same form used for actions in the `GMenu`
    /// associated with the window.
    @inlinable func set(actionName: UnsafePointer<gchar>? = nil) {
        gtk_actionable_set_action_name(actionable_ptr, actionName)
    
    }


    // *** setActionTarget() is not available because it has a varargs (...) parameter!


    /// Sets the target value of an actionable widget.
    /// 
    /// If `target_value` is `nil` then the target value is unset.
    /// 
    /// The target value has two purposes.  First, it is used as the
    /// parameter to activation of the action associated with the
    /// `GtkActionable` widget. Second, it is used to determine if the widget
    /// should be rendered as “active” — the widget is active if the state
    /// is equal to the given target.
    /// 
    /// Consider the example of associating a set of buttons with a `GAction`
    /// with string state in a typical “radio button” situation.  Each button
    /// will be associated with the same action, but with a different target
    /// value for that action.  Clicking on a particular button will activate
    /// the action with the target of that button, which will typically cause
    /// the action’s state to change to that value.  Since the action’s state
    /// is now equal to the target value of the button, the button will now
    /// be rendered as active (and the other buttons, with different targets,
    /// rendered inactive).
    @inlinable func setAction(targetValue: GLib.VariantRef? = nil) {
        gtk_actionable_set_action_target_value(actionable_ptr, targetValue?.variant_ptr)
    
    }
    /// Sets the target value of an actionable widget.
    /// 
    /// If `target_value` is `nil` then the target value is unset.
    /// 
    /// The target value has two purposes.  First, it is used as the
    /// parameter to activation of the action associated with the
    /// `GtkActionable` widget. Second, it is used to determine if the widget
    /// should be rendered as “active” — the widget is active if the state
    /// is equal to the given target.
    /// 
    /// Consider the example of associating a set of buttons with a `GAction`
    /// with string state in a typical “radio button” situation.  Each button
    /// will be associated with the same action, but with a different target
    /// value for that action.  Clicking on a particular button will activate
    /// the action with the target of that button, which will typically cause
    /// the action’s state to change to that value.  Since the action’s state
    /// is now equal to the target value of the button, the button will now
    /// be rendered as active (and the other buttons, with different targets,
    /// rendered inactive).
    @inlinable func setAction<VariantT: GLib.VariantProtocol>(targetValue: VariantT?) {
        gtk_actionable_set_action_target_value(actionable_ptr, targetValue?.variant_ptr)
    
    }

    /// Sets the action-name and associated string target value of an
    /// actionable widget.
    /// 
    /// `detailed_action_name` is a string in the format accepted by
    /// `g_action_parse_detailed_name()`.
    /// 
    /// (Note that prior to version 3.22.25,
    /// this function is only usable for actions with a simple "s" target, and
    /// `detailed_action_name` must be of the form `"action`target`"` where
    /// `action` is the action name and `target` is the string to use
    /// as the target.)
    @inlinable func set(detailedActionName: UnsafePointer<gchar>!) {
        gtk_actionable_set_detailed_action_name(actionable_ptr, detailedActionName)
    
    }
    /// Gets the action name for `actionable`.
    /// 
    /// See `gtk_actionable_set_action_name()` for more information.
    @inlinable var actionName: String! {
        /// Gets the action name for `actionable`.
        /// 
        /// See `gtk_actionable_set_action_name()` for more information.
        get {
            let rv = gtk_actionable_get_action_name(actionable_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Specifies the name of the action with which this widget should be
        /// associated.  If `action_name` is `nil` then the widget will be
        /// unassociated from any previous action.
        /// 
        /// Usually this function is used when the widget is located (or will be
        /// located) within the hierarchy of a `GtkApplicationWindow`.
        /// 
        /// Names are of the form “win.save” or “app.quit” for actions on the
        /// containing `GtkApplicationWindow` or its associated `GtkApplication`,
        /// respectively.  This is the same form used for actions in the `GMenu`
        /// associated with the window.
        nonmutating set {
            gtk_actionable_set_action_name(actionable_ptr, newValue)
        }
    }

    /// Gets the current target value of `actionable`.
    /// 
    /// See `gtk_actionable_set_action_target_value()` for more information.
    @inlinable var actionTargetValue: GLib.VariantRef! {
        /// Gets the current target value of `actionable`.
        /// 
        /// See `gtk_actionable_set_action_target_value()` for more information.
        get {
            let rv = GLib.VariantRef(gtk_actionable_get_action_target_value(actionable_ptr))
            return rv
        }
        /// Sets the target value of an actionable widget.
        /// 
        /// If `target_value` is `nil` then the target value is unset.
        /// 
        /// The target value has two purposes.  First, it is used as the
        /// parameter to activation of the action associated with the
        /// `GtkActionable` widget. Second, it is used to determine if the widget
        /// should be rendered as “active” — the widget is active if the state
        /// is equal to the given target.
        /// 
        /// Consider the example of associating a set of buttons with a `GAction`
        /// with string state in a typical “radio button” situation.  Each button
        /// will be associated with the same action, but with a different target
        /// value for that action.  Clicking on a particular button will activate
        /// the action with the target of that button, which will typically cause
        /// the action’s state to change to that value.  Since the action’s state
        /// is now equal to the target value of the button, the button will now
        /// be rendered as active (and the other buttons, with different targets,
        /// rendered inactive).
        nonmutating set {
            gtk_actionable_set_action_target_value(actionable_ptr, UnsafeMutablePointer<GVariant>(newValue?.variant_ptr))
        }
    }


}



// MARK: - Activatable Interface

/// The `ActivatableProtocol` protocol exposes the methods and properties of an underlying `GtkActivatable` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Activatable`.
/// Alternatively, use `ActivatableRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Activatable widgets can be connected to a `GtkAction` and reflects
/// the state of its action. A `GtkActivatable` can also provide feedback
/// through its action, as they are responsible for activating their
/// related actions.
/// 
/// # Implementing GtkActivatable
/// 
/// When extending a class that is already `GtkActivatable`; it is only
/// necessary to implement the `GtkActivatable``->sync_action_properties()`
/// and `GtkActivatable``->update()` methods and chain up to the parent
/// implementation, however when introducing
/// a new `GtkActivatable` class; the `GtkActivatable:related`-action and
/// `GtkActivatable:use`-action-appearance properties need to be handled by
/// the implementor. Handling these properties is mostly a matter of installing
/// the action pointer and boolean flag on your instance, and calling
/// `gtk_activatable_do_set_related_action()` and
/// `gtk_activatable_sync_action_properties()` at the appropriate times.
/// 
/// ## A class fragment implementing `GtkActivatable`
/// 
/// (C Language Example):
/// ```C
/// 
/// enum {
/// ...
/// 
/// PROP_ACTIVATABLE_RELATED_ACTION,
/// PROP_ACTIVATABLE_USE_ACTION_APPEARANCE
/// }
/// 
/// struct _FooBarPrivate
/// {
/// 
///   ...
/// 
///   GtkAction      *action;
///   gboolean        use_action_appearance;
/// };
/// 
/// ...
/// 
/// static void foo_bar_activatable_interface_init         (GtkActivatableIface  *iface);
/// static void foo_bar_activatable_update                 (GtkActivatable       *activatable,
/// 						           GtkAction            *action,
/// 						           const gchar          *property_name);
/// static void foo_bar_activatable_sync_action_properties (GtkActivatable       *activatable,
/// 						           GtkAction            *action);
/// ...
/// 
/// 
/// static void
/// foo_bar_class_init (FooBarClass *klass)
/// {
/// 
///   ...
/// 
///   g_object_class_override_property (gobject_class, PROP_ACTIVATABLE_RELATED_ACTION, "related-action");
///   g_object_class_override_property (gobject_class, PROP_ACTIVATABLE_USE_ACTION_APPEARANCE, "use-action-appearance");
/// 
///   ...
/// }
/// 
/// 
/// static void
/// foo_bar_activatable_interface_init (GtkActivatableIface  *iface)
/// {
///   iface->update = foo_bar_activatable_update;
///   iface->sync_action_properties = foo_bar_activatable_sync_action_properties;
/// }
/// 
/// ... Break the reference using gtk_activatable_do_set_related_action()...
/// 
/// static void
/// foo_bar_dispose (GObject *object)
/// {
///   FooBar *bar = FOO_BAR (object);
///   FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (bar);
/// 
///   ...
/// 
///   if (priv->action)
///     {
///       gtk_activatable_do_set_related_action (GTK_ACTIVATABLE (bar), NULL);
///       priv->action = NULL;
///     }
///   G_OBJECT_CLASS (foo_bar_parent_class)->dispose (object);
/// }
/// 
/// ... Handle the “related-action” and “use-action-appearance” properties ...
/// 
/// static void
/// foo_bar_set_property (GObject         *object,
///                       guint            prop_id,
///                       const GValue    *value,
///                       GParamSpec      *pspec)
/// {
///   FooBar *bar = FOO_BAR (object);
///   FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (bar);
/// 
///   switch (prop_id)
///     {
/// 
///       ...
/// 
///     case PROP_ACTIVATABLE_RELATED_ACTION:
///       foo_bar_set_related_action (bar, g_value_get_object (value));
///       break;
///     case PROP_ACTIVATABLE_USE_ACTION_APPEARANCE:
///       foo_bar_set_use_action_appearance (bar, g_value_get_boolean (value));
///       break;
///     default:
///       G_OBJECT_WARN_INVALID_PROPERTY_ID (object, prop_id, pspec);
///       break;
///     }
/// }
/// 
/// static void
/// foo_bar_get_property (GObject         *object,
///                          guint            prop_id,
///                          GValue          *value,
///                          GParamSpec      *pspec)
/// {
///   FooBar *bar = FOO_BAR (object);
///   FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (bar);
/// 
///   switch (prop_id)
///     {
/// 
///       ...
/// 
///     case PROP_ACTIVATABLE_RELATED_ACTION:
///       g_value_set_object (value, priv->action);
///       break;
///     case PROP_ACTIVATABLE_USE_ACTION_APPEARANCE:
///       g_value_set_boolean (value, priv->use_action_appearance);
///       break;
///     default:
///       G_OBJECT_WARN_INVALID_PROPERTY_ID (object, prop_id, pspec);
///       break;
///     }
/// }
/// 
/// 
/// static void
/// foo_bar_set_use_action_appearance (FooBar   *bar,
/// 				   gboolean  use_appearance)
/// {
///   FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (bar);
/// 
///   if (priv->use_action_appearance != use_appearance)
///     {
///       priv->use_action_appearance = use_appearance;
///       
///       gtk_activatable_sync_action_properties (GTK_ACTIVATABLE (bar), priv->action);
///     }
/// }
/// 
/// ... call gtk_activatable_do_set_related_action() and then assign the action pointer,
/// no need to reference the action here since gtk_activatable_do_set_related_action() already
/// holds a reference here for you...
/// static void
/// foo_bar_set_related_action (FooBar    *bar,
/// 			    GtkAction *action)
/// {
///   FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (bar);
/// 
///   if (priv->action == action)
///     return;
/// 
///   gtk_activatable_do_set_related_action (GTK_ACTIVATABLE (bar), action);
/// 
///   priv->action = action;
/// }
/// 
/// ... Selectively reset and update activatable depending on the use-action-appearance property ...
/// static void
/// gtk_button_activatable_sync_action_properties (GtkActivatable       *activatable,
/// 		                                  GtkAction            *action)
/// {
///   GtkButtonPrivate *priv = GTK_BUTTON_GET_PRIVATE (activatable);
/// 
///   if (!action)
///     return;
/// 
///   if (gtk_action_is_visible (action))
///     gtk_widget_show (GTK_WIDGET (activatable));
///   else
///     gtk_widget_hide (GTK_WIDGET (activatable));
///   
///   gtk_widget_set_sensitive (GTK_WIDGET (activatable), gtk_action_is_sensitive (action));
/// 
///   ...
///   
///   if (priv->use_action_appearance)
///     {
///       if (gtk_action_get_stock_id (action))
/// 	foo_bar_set_stock (button, gtk_action_get_stock_id (action));
///       else if (gtk_action_get_label (action))
/// 	foo_bar_set_label (button, gtk_action_get_label (action));
/// 
///       ...
/// 
///     }
/// }
/// 
/// static void
/// foo_bar_activatable_update (GtkActivatable       *activatable,
/// 			       GtkAction            *action,
/// 			       const gchar          *property_name)
/// {
///   FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (activatable);
/// 
///   if (strcmp (property_name, "visible") == 0)
///     {
///       if (gtk_action_is_visible (action))
/// 	gtk_widget_show (GTK_WIDGET (activatable));
///       else
/// 	gtk_widget_hide (GTK_WIDGET (activatable));
///     }
///   else if (strcmp (property_name, "sensitive") == 0)
///     gtk_widget_set_sensitive (GTK_WIDGET (activatable), gtk_action_is_sensitive (action));
/// 
///   ...
/// 
///   if (!priv->use_action_appearance)
///     return;
/// 
///   if (strcmp (property_name, "stock-id") == 0)
///     foo_bar_set_stock (button, gtk_action_get_stock_id (action));
///   else if (strcmp (property_name, "label") == 0)
///     foo_bar_set_label (button, gtk_action_get_label (action));
/// 
///   ...
/// }
/// ```
/// 
public protocol ActivatableProtocol {
        /// Untyped pointer to the underlying `GtkActivatable` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkActivatable` instance.
    var activatable_ptr: UnsafeMutablePointer<GtkActivatable>! { get }

}

/// The `ActivatableRef` type acts as a lightweight Swift reference to an underlying `GtkActivatable` instance.
/// It exposes methods that can operate on this data type through `ActivatableProtocol` conformance.
/// Use `ActivatableRef` only as an `unowned` reference to an existing `GtkActivatable` instance.
///
/// Activatable widgets can be connected to a `GtkAction` and reflects
/// the state of its action. A `GtkActivatable` can also provide feedback
/// through its action, as they are responsible for activating their
/// related actions.
/// 
/// # Implementing GtkActivatable
/// 
/// When extending a class that is already `GtkActivatable`; it is only
/// necessary to implement the `GtkActivatable``->sync_action_properties()`
/// and `GtkActivatable``->update()` methods and chain up to the parent
/// implementation, however when introducing
/// a new `GtkActivatable` class; the `GtkActivatable:related`-action and
/// `GtkActivatable:use`-action-appearance properties need to be handled by
/// the implementor. Handling these properties is mostly a matter of installing
/// the action pointer and boolean flag on your instance, and calling
/// `gtk_activatable_do_set_related_action()` and
/// `gtk_activatable_sync_action_properties()` at the appropriate times.
/// 
/// ## A class fragment implementing `GtkActivatable`
/// 
/// (C Language Example):
/// ```C
/// 
/// enum {
/// ...
/// 
/// PROP_ACTIVATABLE_RELATED_ACTION,
/// PROP_ACTIVATABLE_USE_ACTION_APPEARANCE
/// }
/// 
/// struct _FooBarPrivate
/// {
/// 
///   ...
/// 
///   GtkAction      *action;
///   gboolean        use_action_appearance;
/// };
/// 
/// ...
/// 
/// static void foo_bar_activatable_interface_init         (GtkActivatableIface  *iface);
/// static void foo_bar_activatable_update                 (GtkActivatable       *activatable,
/// 						           GtkAction            *action,
/// 						           const gchar          *property_name);
/// static void foo_bar_activatable_sync_action_properties (GtkActivatable       *activatable,
/// 						           GtkAction            *action);
/// ...
/// 
/// 
/// static void
/// foo_bar_class_init (FooBarClass *klass)
/// {
/// 
///   ...
/// 
///   g_object_class_override_property (gobject_class, PROP_ACTIVATABLE_RELATED_ACTION, "related-action");
///   g_object_class_override_property (gobject_class, PROP_ACTIVATABLE_USE_ACTION_APPEARANCE, "use-action-appearance");
/// 
///   ...
/// }
/// 
/// 
/// static void
/// foo_bar_activatable_interface_init (GtkActivatableIface  *iface)
/// {
///   iface->update = foo_bar_activatable_update;
///   iface->sync_action_properties = foo_bar_activatable_sync_action_properties;
/// }
/// 
/// ... Break the reference using gtk_activatable_do_set_related_action()...
/// 
/// static void
/// foo_bar_dispose (GObject *object)
/// {
///   FooBar *bar = FOO_BAR (object);
///   FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (bar);
/// 
///   ...
/// 
///   if (priv->action)
///     {
///       gtk_activatable_do_set_related_action (GTK_ACTIVATABLE (bar), NULL);
///       priv->action = NULL;
///     }
///   G_OBJECT_CLASS (foo_bar_parent_class)->dispose (object);
/// }
/// 
/// ... Handle the “related-action” and “use-action-appearance” properties ...
/// 
/// static void
/// foo_bar_set_property (GObject         *object,
///                       guint            prop_id,
///                       const GValue    *value,
///                       GParamSpec      *pspec)
/// {
///   FooBar *bar = FOO_BAR (object);
///   FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (bar);
/// 
///   switch (prop_id)
///     {
/// 
///       ...
/// 
///     case PROP_ACTIVATABLE_RELATED_ACTION:
///       foo_bar_set_related_action (bar, g_value_get_object (value));
///       break;
///     case PROP_ACTIVATABLE_USE_ACTION_APPEARANCE:
///       foo_bar_set_use_action_appearance (bar, g_value_get_boolean (value));
///       break;
///     default:
///       G_OBJECT_WARN_INVALID_PROPERTY_ID (object, prop_id, pspec);
///       break;
///     }
/// }
/// 
/// static void
/// foo_bar_get_property (GObject         *object,
///                          guint            prop_id,
///                          GValue          *value,
///                          GParamSpec      *pspec)
/// {
///   FooBar *bar = FOO_BAR (object);
///   FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (bar);
/// 
///   switch (prop_id)
///     {
/// 
///       ...
/// 
///     case PROP_ACTIVATABLE_RELATED_ACTION:
///       g_value_set_object (value, priv->action);
///       break;
///     case PROP_ACTIVATABLE_USE_ACTION_APPEARANCE:
///       g_value_set_boolean (value, priv->use_action_appearance);
///       break;
///     default:
///       G_OBJECT_WARN_INVALID_PROPERTY_ID (object, prop_id, pspec);
///       break;
///     }
/// }
/// 
/// 
/// static void
/// foo_bar_set_use_action_appearance (FooBar   *bar,
/// 				   gboolean  use_appearance)
/// {
///   FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (bar);
/// 
///   if (priv->use_action_appearance != use_appearance)
///     {
///       priv->use_action_appearance = use_appearance;
///       
///       gtk_activatable_sync_action_properties (GTK_ACTIVATABLE (bar), priv->action);
///     }
/// }
/// 
/// ... call gtk_activatable_do_set_related_action() and then assign the action pointer,
/// no need to reference the action here since gtk_activatable_do_set_related_action() already
/// holds a reference here for you...
/// static void
/// foo_bar_set_related_action (FooBar    *bar,
/// 			    GtkAction *action)
/// {
///   FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (bar);
/// 
///   if (priv->action == action)
///     return;
/// 
///   gtk_activatable_do_set_related_action (GTK_ACTIVATABLE (bar), action);
/// 
///   priv->action = action;
/// }
/// 
/// ... Selectively reset and update activatable depending on the use-action-appearance property ...
/// static void
/// gtk_button_activatable_sync_action_properties (GtkActivatable       *activatable,
/// 		                                  GtkAction            *action)
/// {
///   GtkButtonPrivate *priv = GTK_BUTTON_GET_PRIVATE (activatable);
/// 
///   if (!action)
///     return;
/// 
///   if (gtk_action_is_visible (action))
///     gtk_widget_show (GTK_WIDGET (activatable));
///   else
///     gtk_widget_hide (GTK_WIDGET (activatable));
///   
///   gtk_widget_set_sensitive (GTK_WIDGET (activatable), gtk_action_is_sensitive (action));
/// 
///   ...
///   
///   if (priv->use_action_appearance)
///     {
///       if (gtk_action_get_stock_id (action))
/// 	foo_bar_set_stock (button, gtk_action_get_stock_id (action));
///       else if (gtk_action_get_label (action))
/// 	foo_bar_set_label (button, gtk_action_get_label (action));
/// 
///       ...
/// 
///     }
/// }
/// 
/// static void
/// foo_bar_activatable_update (GtkActivatable       *activatable,
/// 			       GtkAction            *action,
/// 			       const gchar          *property_name)
/// {
///   FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (activatable);
/// 
///   if (strcmp (property_name, "visible") == 0)
///     {
///       if (gtk_action_is_visible (action))
/// 	gtk_widget_show (GTK_WIDGET (activatable));
///       else
/// 	gtk_widget_hide (GTK_WIDGET (activatable));
///     }
///   else if (strcmp (property_name, "sensitive") == 0)
///     gtk_widget_set_sensitive (GTK_WIDGET (activatable), gtk_action_is_sensitive (action));
/// 
///   ...
/// 
///   if (!priv->use_action_appearance)
///     return;
/// 
///   if (strcmp (property_name, "stock-id") == 0)
///     foo_bar_set_stock (button, gtk_action_get_stock_id (action));
///   else if (strcmp (property_name, "label") == 0)
///     foo_bar_set_label (button, gtk_action_get_label (action));
/// 
///   ...
/// }
/// ```
/// 
public struct ActivatableRef: ActivatableProtocol {
        /// Untyped pointer to the underlying `GtkActivatable` instance.
    /// For type-safe access, use the generated, typed pointer `activatable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ActivatableRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkActivatable>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkActivatable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkActivatable>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkActivatable>?) {
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

    /// Reference intialiser for a related type that implements `ActivatableProtocol`
    @inlinable init<T: ActivatableProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActivatableProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActivatableProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActivatableProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActivatableProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActivatableProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Activatable` type acts as an owner of an underlying `GtkActivatable` instance.
/// It provides the methods that can operate on this data type through `ActivatableProtocol` conformance.
/// Use `Activatable` as a strong reference or owner of a `GtkActivatable` instance.
///
/// Activatable widgets can be connected to a `GtkAction` and reflects
/// the state of its action. A `GtkActivatable` can also provide feedback
/// through its action, as they are responsible for activating their
/// related actions.
/// 
/// # Implementing GtkActivatable
/// 
/// When extending a class that is already `GtkActivatable`; it is only
/// necessary to implement the `GtkActivatable``->sync_action_properties()`
/// and `GtkActivatable``->update()` methods and chain up to the parent
/// implementation, however when introducing
/// a new `GtkActivatable` class; the `GtkActivatable:related`-action and
/// `GtkActivatable:use`-action-appearance properties need to be handled by
/// the implementor. Handling these properties is mostly a matter of installing
/// the action pointer and boolean flag on your instance, and calling
/// `gtk_activatable_do_set_related_action()` and
/// `gtk_activatable_sync_action_properties()` at the appropriate times.
/// 
/// ## A class fragment implementing `GtkActivatable`
/// 
/// (C Language Example):
/// ```C
/// 
/// enum {
/// ...
/// 
/// PROP_ACTIVATABLE_RELATED_ACTION,
/// PROP_ACTIVATABLE_USE_ACTION_APPEARANCE
/// }
/// 
/// struct _FooBarPrivate
/// {
/// 
///   ...
/// 
///   GtkAction      *action;
///   gboolean        use_action_appearance;
/// };
/// 
/// ...
/// 
/// static void foo_bar_activatable_interface_init         (GtkActivatableIface  *iface);
/// static void foo_bar_activatable_update                 (GtkActivatable       *activatable,
/// 						           GtkAction            *action,
/// 						           const gchar          *property_name);
/// static void foo_bar_activatable_sync_action_properties (GtkActivatable       *activatable,
/// 						           GtkAction            *action);
/// ...
/// 
/// 
/// static void
/// foo_bar_class_init (FooBarClass *klass)
/// {
/// 
///   ...
/// 
///   g_object_class_override_property (gobject_class, PROP_ACTIVATABLE_RELATED_ACTION, "related-action");
///   g_object_class_override_property (gobject_class, PROP_ACTIVATABLE_USE_ACTION_APPEARANCE, "use-action-appearance");
/// 
///   ...
/// }
/// 
/// 
/// static void
/// foo_bar_activatable_interface_init (GtkActivatableIface  *iface)
/// {
///   iface->update = foo_bar_activatable_update;
///   iface->sync_action_properties = foo_bar_activatable_sync_action_properties;
/// }
/// 
/// ... Break the reference using gtk_activatable_do_set_related_action()...
/// 
/// static void
/// foo_bar_dispose (GObject *object)
/// {
///   FooBar *bar = FOO_BAR (object);
///   FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (bar);
/// 
///   ...
/// 
///   if (priv->action)
///     {
///       gtk_activatable_do_set_related_action (GTK_ACTIVATABLE (bar), NULL);
///       priv->action = NULL;
///     }
///   G_OBJECT_CLASS (foo_bar_parent_class)->dispose (object);
/// }
/// 
/// ... Handle the “related-action” and “use-action-appearance” properties ...
/// 
/// static void
/// foo_bar_set_property (GObject         *object,
///                       guint            prop_id,
///                       const GValue    *value,
///                       GParamSpec      *pspec)
/// {
///   FooBar *bar = FOO_BAR (object);
///   FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (bar);
/// 
///   switch (prop_id)
///     {
/// 
///       ...
/// 
///     case PROP_ACTIVATABLE_RELATED_ACTION:
///       foo_bar_set_related_action (bar, g_value_get_object (value));
///       break;
///     case PROP_ACTIVATABLE_USE_ACTION_APPEARANCE:
///       foo_bar_set_use_action_appearance (bar, g_value_get_boolean (value));
///       break;
///     default:
///       G_OBJECT_WARN_INVALID_PROPERTY_ID (object, prop_id, pspec);
///       break;
///     }
/// }
/// 
/// static void
/// foo_bar_get_property (GObject         *object,
///                          guint            prop_id,
///                          GValue          *value,
///                          GParamSpec      *pspec)
/// {
///   FooBar *bar = FOO_BAR (object);
///   FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (bar);
/// 
///   switch (prop_id)
///     {
/// 
///       ...
/// 
///     case PROP_ACTIVATABLE_RELATED_ACTION:
///       g_value_set_object (value, priv->action);
///       break;
///     case PROP_ACTIVATABLE_USE_ACTION_APPEARANCE:
///       g_value_set_boolean (value, priv->use_action_appearance);
///       break;
///     default:
///       G_OBJECT_WARN_INVALID_PROPERTY_ID (object, prop_id, pspec);
///       break;
///     }
/// }
/// 
/// 
/// static void
/// foo_bar_set_use_action_appearance (FooBar   *bar,
/// 				   gboolean  use_appearance)
/// {
///   FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (bar);
/// 
///   if (priv->use_action_appearance != use_appearance)
///     {
///       priv->use_action_appearance = use_appearance;
///       
///       gtk_activatable_sync_action_properties (GTK_ACTIVATABLE (bar), priv->action);
///     }
/// }
/// 
/// ... call gtk_activatable_do_set_related_action() and then assign the action pointer,
/// no need to reference the action here since gtk_activatable_do_set_related_action() already
/// holds a reference here for you...
/// static void
/// foo_bar_set_related_action (FooBar    *bar,
/// 			    GtkAction *action)
/// {
///   FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (bar);
/// 
///   if (priv->action == action)
///     return;
/// 
///   gtk_activatable_do_set_related_action (GTK_ACTIVATABLE (bar), action);
/// 
///   priv->action = action;
/// }
/// 
/// ... Selectively reset and update activatable depending on the use-action-appearance property ...
/// static void
/// gtk_button_activatable_sync_action_properties (GtkActivatable       *activatable,
/// 		                                  GtkAction            *action)
/// {
///   GtkButtonPrivate *priv = GTK_BUTTON_GET_PRIVATE (activatable);
/// 
///   if (!action)
///     return;
/// 
///   if (gtk_action_is_visible (action))
///     gtk_widget_show (GTK_WIDGET (activatable));
///   else
///     gtk_widget_hide (GTK_WIDGET (activatable));
///   
///   gtk_widget_set_sensitive (GTK_WIDGET (activatable), gtk_action_is_sensitive (action));
/// 
///   ...
///   
///   if (priv->use_action_appearance)
///     {
///       if (gtk_action_get_stock_id (action))
/// 	foo_bar_set_stock (button, gtk_action_get_stock_id (action));
///       else if (gtk_action_get_label (action))
/// 	foo_bar_set_label (button, gtk_action_get_label (action));
/// 
///       ...
/// 
///     }
/// }
/// 
/// static void
/// foo_bar_activatable_update (GtkActivatable       *activatable,
/// 			       GtkAction            *action,
/// 			       const gchar          *property_name)
/// {
///   FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (activatable);
/// 
///   if (strcmp (property_name, "visible") == 0)
///     {
///       if (gtk_action_is_visible (action))
/// 	gtk_widget_show (GTK_WIDGET (activatable));
///       else
/// 	gtk_widget_hide (GTK_WIDGET (activatable));
///     }
///   else if (strcmp (property_name, "sensitive") == 0)
///     gtk_widget_set_sensitive (GTK_WIDGET (activatable), gtk_action_is_sensitive (action));
/// 
///   ...
/// 
///   if (!priv->use_action_appearance)
///     return;
/// 
///   if (strcmp (property_name, "stock-id") == 0)
///     foo_bar_set_stock (button, gtk_action_get_stock_id (action));
///   else if (strcmp (property_name, "label") == 0)
///     foo_bar_set_label (button, gtk_action_get_label (action));
/// 
///   ...
/// }
/// ```
/// 
open class Activatable: ActivatableProtocol {
        /// Untyped pointer to the underlying `GtkActivatable` instance.
    /// For type-safe access, use the generated, typed pointer `activatable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Activatable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkActivatable>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Activatable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkActivatable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Activatable` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Activatable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Activatable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkActivatable>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Activatable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkActivatable>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkActivatable` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Activatable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkActivatable>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkActivatable, cannot ref(activatable_ptr)
    }

    /// Reference intialiser for a related type that implements `ActivatableProtocol`
    /// `GtkActivatable` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ActivatableProtocol`
    @inlinable public init<T: ActivatableProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkActivatable, cannot ref(activatable_ptr)
    }

    /// Do-nothing destructor for `GtkActivatable`.
    deinit {
        // no reference counting for GtkActivatable, cannot unref(activatable_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActivatableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActivatableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkActivatable, cannot ref(activatable_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActivatableProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActivatableProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkActivatable, cannot ref(activatable_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActivatableProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActivatableProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkActivatable, cannot ref(activatable_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActivatableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActivatableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkActivatable, cannot ref(activatable_ptr)
    }



}

public enum ActivatablePropertyName: String, PropertyNameProtocol {
    /// The action that this activatable will activate and receive
    /// updates from for various states and possibly appearance.
    /// 
    /// > `GtkActivatable` implementors need to handle the this property and
    /// > call `gtk_activatable_do_set_related_action()` when it changes.
    ///
    /// **related-action is deprecated:**
    /// This method is deprecated.
    case relatedAction = "related-action"
    /// Whether this activatable should reset its layout
    /// and appearance when setting the related action or when
    /// the action changes appearance.
    /// 
    /// See the `GtkAction` documentation directly to find which properties
    /// should be ignored by the `GtkActivatable` when this property is `false`.
    /// 
    /// > `GtkActivatable` implementors need to handle this property
    /// > and call `gtk_activatable_sync_action_properties()` on the activatable
    /// > widget when it changes.
    ///
    /// **use-action-appearance is deprecated:**
    /// This method is deprecated.
    case useActionAppearance = "use-action-appearance"
}

public extension ActivatableProtocol {
    /// Bind a `ActivatablePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ActivatablePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Activatable property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ActivatablePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Activatable property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ActivatablePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Activatable has no signals// MARK: Activatable Interface: ActivatableProtocol extension (methods and fields)
public extension ActivatableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkActivatable` instance.
    @inlinable var activatable_ptr: UnsafeMutablePointer<GtkActivatable>! { return ptr?.assumingMemoryBound(to: GtkActivatable.self) }

    /// This is a utility function for `GtkActivatable` implementors.
    /// 
    /// When implementing `GtkActivatable` you must call this when
    /// handling changes of the `GtkActivatable:related`-action, and
    /// you must also use this to break references in `GObject``->dispose()`.
    /// 
    /// This function adds a reference to the currently set related
    /// action for you, it also makes sure the `GtkActivatable``->update()`
    /// method is called when the related `GtkAction` properties change
    /// and registers to the action’s proxy list.
    /// 
    /// > Be careful to call this before setting the local
    /// > copy of the `GtkAction` property, since this function uses
    /// > `gtk_activatable_get_related_action()` to retrieve the
    /// > previous action.
    ///
    /// **do_set_related_action is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func doSetRelated<ActionT: ActionProtocol>(action: ActionT) {
        gtk_activatable_do_set_related_action(activatable_ptr, action.action_ptr)
    
    }

    /// Gets the related `GtkAction` for `activatable`.
    ///
    /// **get_related_action is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func getRelatedAction() -> ActionRef! {
        let rv = ActionRef(gconstpointer: gconstpointer(gtk_activatable_get_related_action(activatable_ptr)))
        return rv
    }

    /// Gets whether this activatable should reset its layout
    /// and appearance when setting the related action or when
    /// the action changes appearance.
    ///
    /// **get_use_action_appearance is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func getUseActionAppearance() -> Bool {
        let rv = ((gtk_activatable_get_use_action_appearance(activatable_ptr)) != 0)
        return rv
    }

    /// Sets the related action on the `activatable` object.
    /// 
    /// > `GtkActivatable` implementors need to handle the `GtkActivatable:related`-action
    /// > property and call `gtk_activatable_do_set_related_action()` when it changes.
    ///
    /// **set_related_action is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func setRelated<ActionT: ActionProtocol>(action: ActionT) {
        gtk_activatable_set_related_action(activatable_ptr, action.action_ptr)
    
    }

    /// Sets whether this activatable should reset its layout and appearance
    /// when setting the related action or when the action changes appearance
    /// 
    /// > `GtkActivatable` implementors need to handle the
    /// > `GtkActivatable:use`-action-appearance property and call
    /// > `gtk_activatable_sync_action_properties()` to update `activatable`
    /// > if needed.
    ///
    /// **set_use_action_appearance is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func setUseActionAppearance(useAppearance: Bool) {
        gtk_activatable_set_use_action_appearance(activatable_ptr, gboolean((useAppearance) ? 1 : 0))
    
    }

    /// This is called to update the activatable completely, this is called
    /// internally when the `GtkActivatable:related`-action property is set
    /// or unset and by the implementing class when
    /// `GtkActivatable:use`-action-appearance changes.
    ///
    /// **sync_action_properties is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func syncActionProperties(action: ActionRef? = nil) {
        gtk_activatable_sync_action_properties(activatable_ptr, action?.action_ptr)
    
    }
    /// This is called to update the activatable completely, this is called
    /// internally when the `GtkActivatable:related`-action property is set
    /// or unset and by the implementing class when
    /// `GtkActivatable:use`-action-appearance changes.
    ///
    /// **sync_action_properties is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func syncActionProperties<ActionT: ActionProtocol>(action: ActionT?) {
        gtk_activatable_sync_action_properties(activatable_ptr, action?.action_ptr)
    
    }
    /// Gets the related `GtkAction` for `activatable`.
    ///
    /// **get_related_action is deprecated:**
    /// This method is deprecated.
    @inlinable var relatedAction: ActionRef! {
        /// Gets the related `GtkAction` for `activatable`.
        ///
        /// **get_related_action is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated)
    get {
            let rv = ActionRef(gconstpointer: gconstpointer(gtk_activatable_get_related_action(activatable_ptr)))
            return rv
        }
        /// Sets the related action on the `activatable` object.
        /// 
        /// > `GtkActivatable` implementors need to handle the `GtkActivatable:related`-action
        /// > property and call `gtk_activatable_do_set_related_action()` when it changes.
        ///
        /// **set_related_action is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated)
    nonmutating set {
            gtk_activatable_set_related_action(activatable_ptr, UnsafeMutablePointer<GtkAction>(newValue?.action_ptr))
        }
    }

    /// Gets whether this activatable should reset its layout
    /// and appearance when setting the related action or when
    /// the action changes appearance.
    ///
    /// **get_use_action_appearance is deprecated:**
    /// This method is deprecated.
    @inlinable var useActionAppearance: Bool {
        /// Gets whether this activatable should reset its layout
        /// and appearance when setting the related action or when
        /// the action changes appearance.
        ///
        /// **get_use_action_appearance is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated)
    get {
            let rv = ((gtk_activatable_get_use_action_appearance(activatable_ptr)) != 0)
            return rv
        }
        /// Sets whether this activatable should reset its layout and appearance
        /// when setting the related action or when the action changes appearance
        /// 
        /// > `GtkActivatable` implementors need to handle the
        /// > `GtkActivatable:use`-action-appearance property and call
        /// > `gtk_activatable_sync_action_properties()` to update `activatable`
        /// > if needed.
        ///
        /// **set_use_action_appearance is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated)
    nonmutating set {
            gtk_activatable_set_use_action_appearance(activatable_ptr, gboolean((newValue) ? 1 : 0))
        }
    }


}



// MARK: - AppChooser Interface

/// The `AppChooserProtocol` protocol exposes the methods and properties of an underlying `GtkAppChooser` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AppChooser`.
/// Alternatively, use `AppChooserRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkAppChooser` is an interface that can be implemented by widgets which
/// allow the user to choose an application (typically for the purpose of
/// opening a file). The main objects that implement this interface are
/// `GtkAppChooserWidget`, `GtkAppChooserDialog` and `GtkAppChooserButton`.
/// 
/// Applications are represented by GIO `GAppInfo` objects here.
/// GIO has a concept of recommended and fallback applications for a
/// given content type. Recommended applications are those that claim
/// to handle the content type itself, while fallback also includes
/// applications that handle a more generic content type. GIO also
/// knows the default and last-used application for a given content
/// type. The `GtkAppChooserWidget` provides detailed control over
/// whether the shown list of applications should include default,
/// recommended or fallback applications.
/// 
/// To obtain the application that has been selected in a `GtkAppChooser`,
/// use `gtk_app_chooser_get_app_info()`.
public protocol AppChooserProtocol: WidgetProtocol {
        /// Untyped pointer to the underlying `GtkAppChooser` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkAppChooser` instance.
    var app_chooser_ptr: UnsafeMutablePointer<GtkAppChooser>! { get }

}

/// The `AppChooserRef` type acts as a lightweight Swift reference to an underlying `GtkAppChooser` instance.
/// It exposes methods that can operate on this data type through `AppChooserProtocol` conformance.
/// Use `AppChooserRef` only as an `unowned` reference to an existing `GtkAppChooser` instance.
///
/// `GtkAppChooser` is an interface that can be implemented by widgets which
/// allow the user to choose an application (typically for the purpose of
/// opening a file). The main objects that implement this interface are
/// `GtkAppChooserWidget`, `GtkAppChooserDialog` and `GtkAppChooserButton`.
/// 
/// Applications are represented by GIO `GAppInfo` objects here.
/// GIO has a concept of recommended and fallback applications for a
/// given content type. Recommended applications are those that claim
/// to handle the content type itself, while fallback also includes
/// applications that handle a more generic content type. GIO also
/// knows the default and last-used application for a given content
/// type. The `GtkAppChooserWidget` provides detailed control over
/// whether the shown list of applications should include default,
/// recommended or fallback applications.
/// 
/// To obtain the application that has been selected in a `GtkAppChooser`,
/// use `gtk_app_chooser_get_app_info()`.
public struct AppChooserRef: AppChooserProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkAppChooser` instance.
    /// For type-safe access, use the generated, typed pointer `app_chooser_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AppChooserRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkAppChooser>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkAppChooser>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkAppChooser>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkAppChooser>?) {
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

    /// Reference intialiser for a related type that implements `AppChooserProtocol`
    @inlinable init<T: AppChooserProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: AppChooserProtocol>(_ other: T) -> AppChooserRef { AppChooserRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AppChooser` type acts as a reference-counted owner of an underlying `GtkAppChooser` instance.
/// It provides the methods that can operate on this data type through `AppChooserProtocol` conformance.
/// Use `AppChooser` as a strong reference or owner of a `GtkAppChooser` instance.
///
/// `GtkAppChooser` is an interface that can be implemented by widgets which
/// allow the user to choose an application (typically for the purpose of
/// opening a file). The main objects that implement this interface are
/// `GtkAppChooserWidget`, `GtkAppChooserDialog` and `GtkAppChooserButton`.
/// 
/// Applications are represented by GIO `GAppInfo` objects here.
/// GIO has a concept of recommended and fallback applications for a
/// given content type. Recommended applications are those that claim
/// to handle the content type itself, while fallback also includes
/// applications that handle a more generic content type. GIO also
/// knows the default and last-used application for a given content
/// type. The `GtkAppChooserWidget` provides detailed control over
/// whether the shown list of applications should include default,
/// recommended or fallback applications.
/// 
/// To obtain the application that has been selected in a `GtkAppChooser`,
/// use `gtk_app_chooser_get_app_info()`.
open class AppChooser: Widget, AppChooserProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkAppChooser>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkAppChooser>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppChooser` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkAppChooser>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkAppChooser>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkAppChooser`.
    /// i.e., ownership is transferred to the `AppChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkAppChooser>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `AppChooserProtocol`
    /// Will retain `GtkAppChooser`.
    /// - Parameter other: an instance of a related type that implements `AppChooserProtocol`
    @inlinable public init<T: AppChooserProtocol>(appChooser other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum AppChooserPropertyName: String, PropertyNameProtocol {
    case appPaintable = "app-paintable"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case compositeChild = "composite-child"
    /// The content type of the `GtkAppChooser` object.
    /// 
    /// See [GContentType](#gio-GContentType)
    /// for more information about content types.
    case contentType = "content-type"
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

public extension AppChooserProtocol {
    /// Bind a `AppChooserPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: AppChooserPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a AppChooser property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: AppChooserPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a AppChooser property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: AppChooserPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: AppChooser has no signals// MARK: AppChooser Interface: AppChooserProtocol extension (methods and fields)
public extension AppChooserProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAppChooser` instance.
    @inlinable var app_chooser_ptr: UnsafeMutablePointer<GtkAppChooser>! { return ptr?.assumingMemoryBound(to: GtkAppChooser.self) }

    /// Returns the currently selected application.
    @inlinable func getAppInfo() -> GIO.AppInfoRef! {
        let rv = GIO.AppInfoRef(gtk_app_chooser_get_app_info(app_chooser_ptr))
        return rv
    }

    /// Returns the current value of the `GtkAppChooser:content`-type property.
    @inlinable func getContentType() -> String! {
        let rv = gtk_app_chooser_get_content_type(app_chooser_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Reloads the list of applications.
    @inlinable func refresh() {
        gtk_app_chooser_refresh(app_chooser_ptr)
    
    }
    /// Returns the currently selected application.
    @inlinable var appInfo: GIO.AppInfoRef! {
        /// Returns the currently selected application.
        get {
            let rv = GIO.AppInfoRef(gtk_app_chooser_get_app_info(app_chooser_ptr))
            return rv
        }
    }

    /// Returns the current value of the `GtkAppChooser:content`-type property.
    @inlinable var contentType: String! {
        /// Returns the current value of the `GtkAppChooser:content`-type property.
        get {
            let rv = gtk_app_chooser_get_content_type(app_chooser_ptr).map({ String(cString: $0) })
            return rv
        }
    }


}



// MARK: - Buildable Interface

/// The `BuildableProtocol` protocol exposes the methods and properties of an underlying `GtkBuildable` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Buildable`.
/// Alternatively, use `BuildableRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkBuildable allows objects to extend and customize their deserialization
/// from [GtkBuilder UI descriptions](#BUILDER-UI).
/// The interface includes methods for setting names and properties of objects,
/// parsing custom tags and constructing child objects.
/// 
/// The GtkBuildable interface is implemented by all widgets and
/// many of the non-widget objects that are provided by GTK+. The
/// main user of this interface is `GtkBuilder`. There should be
/// very little need for applications to call any of these functions directly.
/// 
/// An object only needs to implement this interface if it needs to extend the
/// `GtkBuilder` format or run any extra routines at deserialization time.
public protocol BuildableProtocol {
        /// Untyped pointer to the underlying `GtkBuildable` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkBuildable` instance.
    var buildable_ptr: UnsafeMutablePointer<GtkBuildable>! { get }

}

/// The `BuildableRef` type acts as a lightweight Swift reference to an underlying `GtkBuildable` instance.
/// It exposes methods that can operate on this data type through `BuildableProtocol` conformance.
/// Use `BuildableRef` only as an `unowned` reference to an existing `GtkBuildable` instance.
///
/// GtkBuildable allows objects to extend and customize their deserialization
/// from [GtkBuilder UI descriptions](#BUILDER-UI).
/// The interface includes methods for setting names and properties of objects,
/// parsing custom tags and constructing child objects.
/// 
/// The GtkBuildable interface is implemented by all widgets and
/// many of the non-widget objects that are provided by GTK+. The
/// main user of this interface is `GtkBuilder`. There should be
/// very little need for applications to call any of these functions directly.
/// 
/// An object only needs to implement this interface if it needs to extend the
/// `GtkBuilder` format or run any extra routines at deserialization time.
public struct BuildableRef: BuildableProtocol {
        /// Untyped pointer to the underlying `GtkBuildable` instance.
    /// For type-safe access, use the generated, typed pointer `buildable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BuildableRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkBuildable>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkBuildable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkBuildable>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkBuildable>?) {
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

    /// Reference intialiser for a related type that implements `BuildableProtocol`
    @inlinable init<T: BuildableProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Buildable` type acts as an owner of an underlying `GtkBuildable` instance.
/// It provides the methods that can operate on this data type through `BuildableProtocol` conformance.
/// Use `Buildable` as a strong reference or owner of a `GtkBuildable` instance.
///
/// GtkBuildable allows objects to extend and customize their deserialization
/// from [GtkBuilder UI descriptions](#BUILDER-UI).
/// The interface includes methods for setting names and properties of objects,
/// parsing custom tags and constructing child objects.
/// 
/// The GtkBuildable interface is implemented by all widgets and
/// many of the non-widget objects that are provided by GTK+. The
/// main user of this interface is `GtkBuilder`. There should be
/// very little need for applications to call any of these functions directly.
/// 
/// An object only needs to implement this interface if it needs to extend the
/// `GtkBuilder` format or run any extra routines at deserialization time.
open class Buildable: BuildableProtocol {
        /// Untyped pointer to the underlying `GtkBuildable` instance.
    /// For type-safe access, use the generated, typed pointer `buildable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Buildable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkBuildable>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Buildable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkBuildable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Buildable` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Buildable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Buildable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkBuildable>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Buildable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkBuildable>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkBuildable` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Buildable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkBuildable>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkBuildable, cannot ref(buildable_ptr)
    }

    /// Reference intialiser for a related type that implements `BuildableProtocol`
    /// `GtkBuildable` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `BuildableProtocol`
    @inlinable public init<T: BuildableProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkBuildable, cannot ref(buildable_ptr)
    }

    /// Do-nothing destructor for `GtkBuildable`.
    deinit {
        // no reference counting for GtkBuildable, cannot unref(buildable_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkBuildable, cannot ref(buildable_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkBuildable, cannot ref(buildable_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkBuildable, cannot ref(buildable_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkBuildable, cannot ref(buildable_ptr)
    }



}

// MARK: no Buildable properties

// MARK: Buildable has no signals// MARK: Buildable Interface: BuildableProtocol extension (methods and fields)
public extension BuildableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBuildable` instance.
    @inlinable var buildable_ptr: UnsafeMutablePointer<GtkBuildable>! { return ptr?.assumingMemoryBound(to: GtkBuildable.self) }

    /// Adds a child to `buildable`. `type` is an optional string
    /// describing how the child should be added.
    @inlinable func addChild<BuilderT: BuilderProtocol, ObjectT: GLibObject.ObjectProtocol>(builder: BuilderT, child: ObjectT, type: UnsafePointer<gchar>? = nil) {
        gtk_buildable_add_child(buildable_ptr, builder.builder_ptr, child.object_ptr, type)
    
    }

    /// Constructs a child of `buildable` with the name `name`.
    /// 
    /// `GtkBuilder` calls this function if a “constructor” has been
    /// specified in the UI definition.
    @inlinable func constructChild<BuilderT: BuilderProtocol>(builder: BuilderT, name: UnsafePointer<gchar>!) -> GLibObject.ObjectRef! {
        let rv = GLibObject.ObjectRef(gtk_buildable_construct_child(buildable_ptr, builder.builder_ptr, name))
        return rv
    }

    /// This is similar to `gtk_buildable_parser_finished()` but is
    /// called once for each custom tag handled by the `buildable`.
    @inlinable func customFinished<BuilderT: BuilderProtocol>(builder: BuilderT, child: GLibObject.ObjectRef? = nil, tagname: UnsafePointer<gchar>!, data: gpointer! = nil) {
        gtk_buildable_custom_finished(buildable_ptr, builder.builder_ptr, child?.object_ptr, tagname, data)
    
    }
    /// This is similar to `gtk_buildable_parser_finished()` but is
    /// called once for each custom tag handled by the `buildable`.
    @inlinable func customFinished<BuilderT: BuilderProtocol, ObjectT: GLibObject.ObjectProtocol>(builder: BuilderT, child: ObjectT?, tagname: UnsafePointer<gchar>!, data: gpointer! = nil) {
        gtk_buildable_custom_finished(buildable_ptr, builder.builder_ptr, child?.object_ptr, tagname, data)
    
    }

    /// This is called at the end of each custom element handled by
    /// the buildable.
    @inlinable func customTagEnd<BuilderT: BuilderProtocol>(builder: BuilderT, child: GLibObject.ObjectRef? = nil, tagname: UnsafePointer<gchar>!, data: UnsafeMutablePointer<gpointer?>? = nil) {
        gtk_buildable_custom_tag_end(buildable_ptr, builder.builder_ptr, child?.object_ptr, tagname, data)
    
    }
    /// This is called at the end of each custom element handled by
    /// the buildable.
    @inlinable func customTagEnd<BuilderT: BuilderProtocol, ObjectT: GLibObject.ObjectProtocol>(builder: BuilderT, child: ObjectT?, tagname: UnsafePointer<gchar>!, data: UnsafeMutablePointer<gpointer?>? = nil) {
        gtk_buildable_custom_tag_end(buildable_ptr, builder.builder_ptr, child?.object_ptr, tagname, data)
    
    }

    /// This is called for each unknown element under <child>.
    @inlinable func customTagStart<BuilderT: BuilderProtocol, MarkupParserT: GLib.MarkupParserProtocol>(builder: BuilderT, child: GLibObject.ObjectRef? = nil, tagname: UnsafePointer<gchar>!, parser: MarkupParserT, data: UnsafeMutablePointer<gpointer?>?) -> Bool {
        let rv = ((gtk_buildable_custom_tag_start(buildable_ptr, builder.builder_ptr, child?.object_ptr, tagname, parser._ptr, data)) != 0)
        return rv
    }
    /// This is called for each unknown element under <child>.
    @inlinable func customTagStart<BuilderT: BuilderProtocol, MarkupParserT: GLib.MarkupParserProtocol, ObjectT: GLibObject.ObjectProtocol>(builder: BuilderT, child: ObjectT?, tagname: UnsafePointer<gchar>!, parser: MarkupParserT, data: UnsafeMutablePointer<gpointer?>?) -> Bool {
        let rv = ((gtk_buildable_custom_tag_start(buildable_ptr, builder.builder_ptr, child?.object_ptr, tagname, parser._ptr, data)) != 0)
        return rv
    }

    /// Get the internal child called `childname` of the `buildable` object.
    @inlinable func getInternalChild<BuilderT: BuilderProtocol>(builder: BuilderT, childname: UnsafePointer<gchar>!) -> GLibObject.ObjectRef! {
        let rv = GLibObject.ObjectRef(gtk_buildable_get_internal_child(buildable_ptr, builder.builder_ptr, childname))
        return rv
    }

    /// Gets the name of the `buildable` object.
    /// 
    /// `GtkBuilder` sets the name based on the
    /// [GtkBuilder UI definition](#BUILDER-UI)
    /// used to construct the `buildable`.
    @inlinable func getName() -> String! {
        let rv = gtk_buildable_get_name(buildable_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Called when the builder finishes the parsing of a
    /// [GtkBuilder UI definition](#BUILDER-UI).
    /// Note that this will be called once for each time
    /// `gtk_builder_add_from_file()` or `gtk_builder_add_from_string()`
    /// is called on a builder.
    @inlinable func parserFinished<BuilderT: BuilderProtocol>(builder: BuilderT) {
        gtk_buildable_parser_finished(buildable_ptr, builder.builder_ptr)
    
    }

    /// Sets the property name `name` to `value` on the `buildable` object.
    @inlinable func setBuildableProperty<BuilderT: BuilderProtocol, ValueT: GLibObject.ValueProtocol>(builder: BuilderT, name: UnsafePointer<gchar>!, value: ValueT) {
        gtk_buildable_set_buildable_property(buildable_ptr, builder.builder_ptr, name, value.value_ptr)
    
    }

    /// Sets the name of the `buildable` object.
    @inlinable func set(name: UnsafePointer<gchar>!) {
        gtk_buildable_set_name(buildable_ptr, name)
    
    }
    /// Gets the name of the `buildable` object.
    /// 
    /// `GtkBuilder` sets the name based on the
    /// [GtkBuilder UI definition](#BUILDER-UI)
    /// used to construct the `buildable`.
    @inlinable var name: String! {
        /// Gets the name of the `buildable` object.
        /// 
        /// `GtkBuilder` sets the name based on the
        /// [GtkBuilder UI definition](#BUILDER-UI)
        /// used to construct the `buildable`.
        get {
            let rv = gtk_buildable_get_name(buildable_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the name of the `buildable` object.
        nonmutating set {
            gtk_buildable_set_name(buildable_ptr, newValue)
        }
    }


}



