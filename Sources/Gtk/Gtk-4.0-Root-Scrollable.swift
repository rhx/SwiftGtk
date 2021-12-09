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

// MARK: - Root Interface

/// `GtkRoot` is the interface implemented by all widgets that can act as a toplevel
/// widget.
/// 
/// The root widget takes care of providing the connection to the windowing system
/// and manages layout, drawing and event delivery for its widget hierarchy.
/// 
/// The obvious example of a `GtkRoot` is `GtkWindow`.
/// 
/// To get the display to which a `GtkRoot` belongs, use
/// [method`Gtk.Root.get_display`].
/// 
/// `GtkRoot` also maintains the location of keyboard focus inside its widget
/// hierarchy, with [method`Gtk.Root.set_focus`] and [method`Gtk.Root.get_focus`].
///
/// The `RootProtocol` protocol exposes the methods and properties of an underlying `GtkRoot` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Root`.
/// Alternatively, use `RootRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol RootProtocol: NativeProtocol {
        /// Untyped pointer to the underlying `GtkRoot` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRoot` instance.
    var root_ptr: UnsafeMutablePointer<GtkRoot>! { get }

    /// Required Initialiser for types conforming to `RootProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkRoot` is the interface implemented by all widgets that can act as a toplevel
/// widget.
/// 
/// The root widget takes care of providing the connection to the windowing system
/// and manages layout, drawing and event delivery for its widget hierarchy.
/// 
/// The obvious example of a `GtkRoot` is `GtkWindow`.
/// 
/// To get the display to which a `GtkRoot` belongs, use
/// [method`Gtk.Root.get_display`].
/// 
/// `GtkRoot` also maintains the location of keyboard focus inside its widget
/// hierarchy, with [method`Gtk.Root.set_focus`] and [method`Gtk.Root.get_focus`].
///
/// The `RootRef` type acts as a lightweight Swift reference to an underlying `GtkRoot` instance.
/// It exposes methods that can operate on this data type through `RootProtocol` conformance.
/// Use `RootRef` only as an `unowned` reference to an existing `GtkRoot` instance.
///
public struct RootRef: RootProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkRoot` instance.
    /// For type-safe access, use the generated, typed pointer `root_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RootRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRoot>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRoot>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRoot>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRoot>?) {
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

    /// Reference intialiser for a related type that implements `RootProtocol`
    @inlinable init<T: RootProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: RootProtocol>(_ other: T) -> RootRef { RootRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RootProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RootProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RootProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RootProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RootProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// `GtkRoot` is the interface implemented by all widgets that can act as a toplevel
/// widget.
/// 
/// The root widget takes care of providing the connection to the windowing system
/// and manages layout, drawing and event delivery for its widget hierarchy.
/// 
/// The obvious example of a `GtkRoot` is `GtkWindow`.
/// 
/// To get the display to which a `GtkRoot` belongs, use
/// [method`Gtk.Root.get_display`].
/// 
/// `GtkRoot` also maintains the location of keyboard focus inside its widget
/// hierarchy, with [method`Gtk.Root.set_focus`] and [method`Gtk.Root.get_focus`].
///
/// The `Root` type acts as a reference-counted owner of an underlying `GtkRoot` instance.
/// It provides the methods that can operate on this data type through `RootProtocol` conformance.
/// Use `Root` as a strong reference or owner of a `GtkRoot` instance.
///
open class Root: Native, RootProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Root` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkRoot>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Root` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkRoot>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Root` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Root` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Root` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkRoot>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Root` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkRoot>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkRoot`.
    /// i.e., ownership is transferred to the `Root` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkRoot>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `RootProtocol`
    /// Will retain `GtkRoot`.
    /// - Parameter other: an instance of a related type that implements `RootProtocol`
    @inlinable public init<T: RootProtocol>(root other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RootProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RootProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RootProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RootProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RootProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RootProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RootProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RootProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum RootPropertyName: String, PropertyNameProtocol {
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    /// Whether the widget can receive pointer events.
    case canTarget = "can-target"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`.
    case cursor = "cursor"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// How to distribute horizontal space if widget gets extra space.
    case halign = "halign"
    /// Whether the widget is the default widget.
    case hasDefault = "has-default"
    /// Whether the widget has the input focus.
    case hasFocus = "has-focus"
    /// Enables or disables the emission of the `query-tooltip` signal on `widget`.
    /// 
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using [signal`Gtk.Widget::query-tooltip`] to
    /// determine whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    /// Override for height request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case heightRequest = "height-request"
    /// Whether to expand horizontally.
    case hexpand = "hexpand"
    /// Whether to use the `hexpand` property.
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
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginEnd = "margin-end"
    /// Margin on start of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginTop = "margin-top"
    /// The name of the widget.
    case name = "name"
    /// The requested opacity of the widget.
    case opacity = "opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    /// The parent widget of this widget.
    case parent = "parent"
    /// Whether the widget will receive the default action when it is focused.
    case receivesDefault = "receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget.
    case scaleFactor = "scale-factor"
    /// Whether the widget responds to input.
    case sensitive = "sensitive"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with Pango markup.
    /// 
    /// Also see [method`Gtk.Tooltip.set_markup`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see [method`Gtk.Tooltip.set_text`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// How to distribute vertical space if widget gets extra space.
    case valign = "valign"
    /// Whether to expand vertically.
    case vexpand = "vexpand"
    /// Whether to use the `vexpand` property.
    case vexpandSet = "vexpand-set"
    /// Whether the widget is visible.
    case visible = "visible"
    /// Override for width request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case widthRequest = "width-request"
}

public extension RootProtocol {
    /// Bind a `RootPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: RootPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Root property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: RootPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Root property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: RootPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum RootSignalName: String, SignalNameProtocol {
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold.
    /// 
    /// May result in finalization of the widget if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// Emitted when the text direction of a widget changes.
    case directionChanged = "direction-changed"
    /// Emitted when `widget` is hidden.
    case hide = "hide"
    /// Emitted if keyboard navigation fails.
    /// 
    /// See [method`Gtk.Widget.keynav_failed`] for details.
    case keynavFailed = "keynav-failed"
    /// Emitted when `widget` is going to be mapped.
    /// 
    /// A widget is mapped when the widget is visible (which is controlled with
    /// [property`Gtk.Widget:visible`]) and all its parents up to the toplevel widget
    /// are also visible.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of [signal`Gtk.Widget::unmap`].
    case map = "map"
    /// Emitted when a widget is activated via a mnemonic.
    /// 
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
    /// Emitted when the widgets tooltip is about to be shown.
    /// 
    /// This happens when the [property`Gtk.Widget:has-tooltip`] property
    /// is `true` and the hover timeout has expired with the cursor hovering
    /// "above" `widget`; or emitted when `widget` got focus in keyboard mode.
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
    /// Emitted when `widget` is associated with a `GdkSurface`.
    /// 
    /// This means that [method`Gtk.Widget.realize`] has been called
    /// or the widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// Emitted when `widget` is shown.
    case show = "show"
    /// Emitted when the widget state changes.
    /// 
    /// See [method`Gtk.Widget.get_state_flags`].
    case stateFlagsChanged = "state-flags-changed"
    /// Emitted when `widget` is going to be unmapped.
    /// 
    /// A widget is unmapped when either it or any of its parents up to the
    /// toplevel widget have been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer,
    /// it can be used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// Emitted when the `GdkSurface` associated with `widget` is destroyed.
    /// 
    /// This means that [method`Gtk.Widget.unrealize`] has been called
    /// or the widget has been unmapped (that is, it is going to be hidden).
    case unrealize = "unrealize"
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCanFocus = "notify::can-focus"
    /// Whether the widget can receive pointer events.
    case notifyCanTarget = "notify::can-target"
    /// A list of css classes applied to this widget.
    case notifyCssClasses = "notify::css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCssName = "notify::css-name"
    /// The cursor used by `widget`.
    case notifyCursor = "notify::cursor"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case notifyFocusable = "notify::focusable"
    /// How to distribute horizontal space if widget gets extra space.
    case notifyHalign = "notify::halign"
    /// Whether the widget is the default widget.
    case notifyHasDefault = "notify::has-default"
    /// Whether the widget has the input focus.
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of the `query-tooltip` signal on `widget`.
    /// 
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using [signal`Gtk.Widget::query-tooltip`] to
    /// determine whether it will provide a tooltip or not.
    case notifyHasTooltip = "notify::has-tooltip"
    /// Override for height request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `hexpand` property.
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
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on start of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginTop = "notify::margin-top"
    /// The name of the widget.
    case notifyName = "notify::name"
    /// The requested opacity of the widget.
    case notifyOpacity = "notify::opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyOverflow = "notify::overflow"
    /// The parent widget of this widget.
    case notifyParent = "notify::parent"
    /// Whether the widget will receive the default action when it is focused.
    case notifyReceivesDefault = "notify::receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case notifyRoot = "notify::root"
    /// The scale factor of the widget.
    case notifyScaleFactor = "notify::scale-factor"
    /// Whether the widget responds to input.
    case notifySensitive = "notify::sensitive"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with Pango markup.
    /// 
    /// Also see [method`Gtk.Tooltip.set_markup`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see [method`Gtk.Tooltip.set_text`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    /// How to distribute vertical space if widget gets extra space.
    case notifyValign = "notify::valign"
    /// Whether to expand vertically.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `vexpand` property.
    case notifyVexpandSet = "notify::vexpand-set"
    /// Whether the widget is visible.
    case notifyVisible = "notify::visible"
    /// Override for width request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case notifyWidthRequest = "notify::width-request"
}

// MARK: Root has no signals
// MARK: Root Interface: RootProtocol extension (methods and fields)
public extension RootProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRoot` instance.
    @inlinable var root_ptr: UnsafeMutablePointer<GtkRoot>! { return ptr?.assumingMemoryBound(to: GtkRoot.self) }

    /// Returns the display that this `GtkRoot` is on.
    @inlinable func getDisplay() -> Gdk.DisplayRef! {
        let rv = Gdk.DisplayRef(gtk_root_get_display(root_ptr))
        return rv
    }

    /// Retrieves the current focused widget within the root.
    /// 
    /// Note that this is the widget that would have the focus
    /// if the root is active; if the root is not focused then
    /// `gtk_widget_has_focus (widget)` will be `false` for the
    /// widget.
    @inlinable func getFocus() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_root_get_focus(root_ptr))) else { return nil }
        return rv
    }

    /// If `focus` is not the current focus widget, and is focusable, sets
    /// it as the focus widget for the root.
    /// 
    /// If `focus` is `nil`, unsets the focus widget for the root.
    /// 
    /// To set the focus to a particular widget in the root, it is usually
    /// more convenient to use [method`Gtk.Widget.grab_focus`] instead of
    /// this function.
    @inlinable func set(focus: WidgetRef? = nil) {
        gtk_root_set_focus(root_ptr, focus?.widget_ptr)
    
    }
    /// If `focus` is not the current focus widget, and is focusable, sets
    /// it as the focus widget for the root.
    /// 
    /// If `focus` is `nil`, unsets the focus widget for the root.
    /// 
    /// To set the focus to a particular widget in the root, it is usually
    /// more convenient to use [method`Gtk.Widget.grab_focus`] instead of
    /// this function.
    @inlinable func set<WidgetT: WidgetProtocol>(focus: WidgetT?) {
        gtk_root_set_focus(root_ptr, focus?.widget_ptr)
    
    }
    /// Returns the display that this `GtkRoot` is on.
    @inlinable var display: Gdk.DisplayRef! {
        /// Returns the display that this `GtkRoot` is on.
        get {
            let rv = Gdk.DisplayRef(gtk_root_get_display(root_ptr))
            return rv
        }
    }

    /// Retrieves the current focused widget within the root.
    /// 
    /// Note that this is the widget that would have the focus
    /// if the root is active; if the root is not focused then
    /// `gtk_widget_has_focus (widget)` will be `false` for the
    /// widget.
    @inlinable var focus: WidgetRef! {
        /// Retrieves the current focused widget within the root.
        /// 
        /// Note that this is the widget that would have the focus
        /// if the root is active; if the root is not focused then
        /// `gtk_widget_has_focus (widget)` will be `false` for the
        /// widget.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_root_get_focus(root_ptr))) else { return nil }
            return rv
        }
        /// If `focus` is not the current focus widget, and is focusable, sets
        /// it as the focus widget for the root.
        /// 
        /// If `focus` is `nil`, unsets the focus widget for the root.
        /// 
        /// To set the focus to a particular widget in the root, it is usually
        /// more convenient to use [method`Gtk.Widget.grab_focus`] instead of
        /// this function.
        nonmutating set {
            gtk_root_set_focus(root_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }


}



// MARK: - Scrollable Interface

/// `GtkScrollable` is an interface for widgets with native scrolling ability.
/// 
/// To implement this interface you should override the
/// [property`Gtk.Scrollable:hadjustment`] and
/// [property`Gtk.Scrollable:vadjustment`] properties.
/// 
/// ## Creating a scrollable widget
/// 
/// All scrollable widgets should do the following.
/// 
/// - When a parent widget sets the scrollable child widget’s adjustments,
///   the widget should populate the adjustments’
///   [property`Gtk.Adjustment:lower`],
///   [property`Gtk.Adjustment:upper`],
///   [property`Gtk.Adjustment:step-increment`],
///   [property`Gtk.Adjustment:page-increment`] and
///   [property`Gtk.Adjustment:page-size`] properties and connect to the
///   [signal`Gtk.Adjustment::value-changed`] signal.
/// 
/// - Because its preferred size is the size for a fully expanded widget,
///   the scrollable widget must be able to cope with underallocations.
///   This means that it must accept any value passed to its
///   [vfunc`Gtk.Widget.size_allocate`] implementation.
/// 
/// - When the parent allocates space to the scrollable child widget,
///   the widget should update the adjustments’ properties with new values.
/// 
/// - When any of the adjustments emits the [signal`Gtk.Adjustment::value-changed`]
///   signal, the scrollable widget should scroll its contents.
///
/// The `ScrollableProtocol` protocol exposes the methods and properties of an underlying `GtkScrollable` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Scrollable`.
/// Alternatively, use `ScrollableRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ScrollableProtocol {
        /// Untyped pointer to the underlying `GtkScrollable` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkScrollable` instance.
    var scrollable_ptr: UnsafeMutablePointer<GtkScrollable>! { get }

    /// Required Initialiser for types conforming to `ScrollableProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkScrollable` is an interface for widgets with native scrolling ability.
/// 
/// To implement this interface you should override the
/// [property`Gtk.Scrollable:hadjustment`] and
/// [property`Gtk.Scrollable:vadjustment`] properties.
/// 
/// ## Creating a scrollable widget
/// 
/// All scrollable widgets should do the following.
/// 
/// - When a parent widget sets the scrollable child widget’s adjustments,
///   the widget should populate the adjustments’
///   [property`Gtk.Adjustment:lower`],
///   [property`Gtk.Adjustment:upper`],
///   [property`Gtk.Adjustment:step-increment`],
///   [property`Gtk.Adjustment:page-increment`] and
///   [property`Gtk.Adjustment:page-size`] properties and connect to the
///   [signal`Gtk.Adjustment::value-changed`] signal.
/// 
/// - Because its preferred size is the size for a fully expanded widget,
///   the scrollable widget must be able to cope with underallocations.
///   This means that it must accept any value passed to its
///   [vfunc`Gtk.Widget.size_allocate`] implementation.
/// 
/// - When the parent allocates space to the scrollable child widget,
///   the widget should update the adjustments’ properties with new values.
/// 
/// - When any of the adjustments emits the [signal`Gtk.Adjustment::value-changed`]
///   signal, the scrollable widget should scroll its contents.
///
/// The `ScrollableRef` type acts as a lightweight Swift reference to an underlying `GtkScrollable` instance.
/// It exposes methods that can operate on this data type through `ScrollableProtocol` conformance.
/// Use `ScrollableRef` only as an `unowned` reference to an existing `GtkScrollable` instance.
///
public struct ScrollableRef: ScrollableProtocol {
        /// Untyped pointer to the underlying `GtkScrollable` instance.
    /// For type-safe access, use the generated, typed pointer `scrollable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ScrollableRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkScrollable>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkScrollable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkScrollable>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkScrollable>?) {
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

    /// Reference intialiser for a related type that implements `ScrollableProtocol`
    @inlinable init<T: ScrollableProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// `GtkScrollable` is an interface for widgets with native scrolling ability.
/// 
/// To implement this interface you should override the
/// [property`Gtk.Scrollable:hadjustment`] and
/// [property`Gtk.Scrollable:vadjustment`] properties.
/// 
/// ## Creating a scrollable widget
/// 
/// All scrollable widgets should do the following.
/// 
/// - When a parent widget sets the scrollable child widget’s adjustments,
///   the widget should populate the adjustments’
///   [property`Gtk.Adjustment:lower`],
///   [property`Gtk.Adjustment:upper`],
///   [property`Gtk.Adjustment:step-increment`],
///   [property`Gtk.Adjustment:page-increment`] and
///   [property`Gtk.Adjustment:page-size`] properties and connect to the
///   [signal`Gtk.Adjustment::value-changed`] signal.
/// 
/// - Because its preferred size is the size for a fully expanded widget,
///   the scrollable widget must be able to cope with underallocations.
///   This means that it must accept any value passed to its
///   [vfunc`Gtk.Widget.size_allocate`] implementation.
/// 
/// - When the parent allocates space to the scrollable child widget,
///   the widget should update the adjustments’ properties with new values.
/// 
/// - When any of the adjustments emits the [signal`Gtk.Adjustment::value-changed`]
///   signal, the scrollable widget should scroll its contents.
///
/// The `Scrollable` type acts as an owner of an underlying `GtkScrollable` instance.
/// It provides the methods that can operate on this data type through `ScrollableProtocol` conformance.
/// Use `Scrollable` as a strong reference or owner of a `GtkScrollable` instance.
///
open class Scrollable: ScrollableProtocol {
        /// Untyped pointer to the underlying `GtkScrollable` instance.
    /// For type-safe access, use the generated, typed pointer `scrollable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Scrollable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkScrollable>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Scrollable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkScrollable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Scrollable` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Scrollable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Scrollable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkScrollable>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Scrollable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkScrollable>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkScrollable` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Scrollable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkScrollable>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkScrollable, cannot ref(scrollable_ptr)
    }

    /// Reference intialiser for a related type that implements `ScrollableProtocol`
    /// `GtkScrollable` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ScrollableProtocol`
    @inlinable public init<T: ScrollableProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkScrollable, cannot ref(scrollable_ptr)
    }

    /// Do-nothing destructor for `GtkScrollable`.
    deinit {
        // no reference counting for GtkScrollable, cannot unref(scrollable_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkScrollable, cannot ref(scrollable_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkScrollable, cannot ref(scrollable_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkScrollable, cannot ref(scrollable_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkScrollable, cannot ref(scrollable_ptr)
    }



}

public enum ScrollablePropertyName: String, PropertyNameProtocol {
    /// Horizontal `GtkAdjustment` of the scrollable widget.
    /// 
    /// This adjustment is shared between the scrollable widget and its parent.
    case hadjustment = "hadjustment"
    /// Determines when horizontal scrolling should start.
    case hscrollPolicy = "hscroll-policy"
    /// Vertical `GtkAdjustment` of the scrollable widget.
    /// 
    /// This adjustment is shared between the scrollable widget and its parent.
    case vadjustment = "vadjustment"
    /// Determines when vertical scrolling should start.
    case vscrollPolicy = "vscroll-policy"
}

public extension ScrollableProtocol {
    /// Bind a `ScrollablePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ScrollablePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Scrollable property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ScrollablePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Scrollable property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ScrollablePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum ScrollableSignalName: String, SignalNameProtocol {

    /// Horizontal `GtkAdjustment` of the scrollable widget.
    /// 
    /// This adjustment is shared between the scrollable widget and its parent.
    case notifyHadjustment = "notify::hadjustment"
    /// Determines when horizontal scrolling should start.
    case notifyHscrollPolicy = "notify::hscroll-policy"
    /// Vertical `GtkAdjustment` of the scrollable widget.
    /// 
    /// This adjustment is shared between the scrollable widget and its parent.
    case notifyVadjustment = "notify::vadjustment"
    /// Determines when vertical scrolling should start.
    case notifyVscrollPolicy = "notify::vscroll-policy"
}

// MARK: Scrollable has no signals
// MARK: Scrollable Interface: ScrollableProtocol extension (methods and fields)
public extension ScrollableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkScrollable` instance.
    @inlinable var scrollable_ptr: UnsafeMutablePointer<GtkScrollable>! { return ptr?.assumingMemoryBound(to: GtkScrollable.self) }

    /// Returns the size of a non-scrolling border around the
    /// outside of the scrollable.
    /// 
    /// An example for this would be treeview headers. GTK can use
    /// this information to display overlaid graphics, like the
    /// overshoot indication, at the right position.
    @inlinable func get<BorderT: BorderProtocol>(border: BorderT) -> Bool {
        let rv = ((gtk_scrollable_get_border(scrollable_ptr, border.border_ptr)) != 0)
        return rv
    }

    /// Retrieves the `GtkAdjustment` used for horizontal scrolling.
    @inlinable func getHadjustment() -> AdjustmentRef! {
        let rv = AdjustmentRef(gconstpointer: gconstpointer(gtk_scrollable_get_hadjustment(scrollable_ptr)))
        return rv
    }

    /// Gets the horizontal `GtkScrollablePolicy`.
    @inlinable func getHscrollPolicy() -> GtkScrollablePolicy {
        let rv = gtk_scrollable_get_hscroll_policy(scrollable_ptr)
        return rv
    }

    /// Retrieves the `GtkAdjustment` used for vertical scrolling.
    @inlinable func getVadjustment() -> AdjustmentRef! {
        let rv = AdjustmentRef(gconstpointer: gconstpointer(gtk_scrollable_get_vadjustment(scrollable_ptr)))
        return rv
    }

    /// Gets the vertical `GtkScrollablePolicy`.
    @inlinable func getVscrollPolicy() -> GtkScrollablePolicy {
        let rv = gtk_scrollable_get_vscroll_policy(scrollable_ptr)
        return rv
    }

    /// Sets the horizontal adjustment of the `GtkScrollable`.
    @inlinable func set(hadjustment: AdjustmentRef? = nil) {
        gtk_scrollable_set_hadjustment(scrollable_ptr, hadjustment?.adjustment_ptr)
    
    }
    /// Sets the horizontal adjustment of the `GtkScrollable`.
    @inlinable func set<AdjustmentT: AdjustmentProtocol>(hadjustment: AdjustmentT?) {
        gtk_scrollable_set_hadjustment(scrollable_ptr, hadjustment?.adjustment_ptr)
    
    }

    /// Sets the `GtkScrollablePolicy`.
    /// 
    /// The policy determines whether horizontal scrolling should start
    /// below the minimum width or below the natural width.
    @inlinable func setHscroll(policy: GtkScrollablePolicy) {
        gtk_scrollable_set_hscroll_policy(scrollable_ptr, policy)
    
    }

    /// Sets the vertical adjustment of the `GtkScrollable`.
    @inlinable func set(vadjustment: AdjustmentRef? = nil) {
        gtk_scrollable_set_vadjustment(scrollable_ptr, vadjustment?.adjustment_ptr)
    
    }
    /// Sets the vertical adjustment of the `GtkScrollable`.
    @inlinable func set<AdjustmentT: AdjustmentProtocol>(vadjustment: AdjustmentT?) {
        gtk_scrollable_set_vadjustment(scrollable_ptr, vadjustment?.adjustment_ptr)
    
    }

    /// Sets the `GtkScrollablePolicy`.
    /// 
    /// The policy determines whether vertical scrolling should start
    /// below the minimum height or below the natural height.
    @inlinable func setVscroll(policy: GtkScrollablePolicy) {
        gtk_scrollable_set_vscroll_policy(scrollable_ptr, policy)
    
    }
    /// Horizontal `GtkAdjustment` of the scrollable widget.
    /// 
    /// This adjustment is shared between the scrollable widget and its parent.
    @inlinable var hadjustment: AdjustmentRef! {
        /// Retrieves the `GtkAdjustment` used for horizontal scrolling.
        get {
            let rv = AdjustmentRef(gconstpointer: gconstpointer(gtk_scrollable_get_hadjustment(scrollable_ptr)))
            return rv
        }
        /// Sets the horizontal adjustment of the `GtkScrollable`.
        nonmutating set {
            gtk_scrollable_set_hadjustment(scrollable_ptr, UnsafeMutablePointer<GtkAdjustment>(newValue?.adjustment_ptr))
        }
    }

    /// Gets the horizontal `GtkScrollablePolicy`.
    @inlinable var hscrollPolicy: GtkScrollablePolicy {
        /// Gets the horizontal `GtkScrollablePolicy`.
        get {
            let rv = gtk_scrollable_get_hscroll_policy(scrollable_ptr)
            return rv
        }
        /// Sets the `GtkScrollablePolicy`.
        /// 
        /// The policy determines whether horizontal scrolling should start
        /// below the minimum width or below the natural width.
        nonmutating set {
            gtk_scrollable_set_hscroll_policy(scrollable_ptr, newValue)
        }
    }

    /// Vertical `GtkAdjustment` of the scrollable widget.
    /// 
    /// This adjustment is shared between the scrollable widget and its parent.
    @inlinable var vadjustment: AdjustmentRef! {
        /// Retrieves the `GtkAdjustment` used for vertical scrolling.
        get {
            let rv = AdjustmentRef(gconstpointer: gconstpointer(gtk_scrollable_get_vadjustment(scrollable_ptr)))
            return rv
        }
        /// Sets the vertical adjustment of the `GtkScrollable`.
        nonmutating set {
            gtk_scrollable_set_vadjustment(scrollable_ptr, UnsafeMutablePointer<GtkAdjustment>(newValue?.adjustment_ptr))
        }
    }

    /// Gets the vertical `GtkScrollablePolicy`.
    @inlinable var vscrollPolicy: GtkScrollablePolicy {
        /// Gets the vertical `GtkScrollablePolicy`.
        get {
            let rv = gtk_scrollable_get_vscroll_policy(scrollable_ptr)
            return rv
        }
        /// Sets the `GtkScrollablePolicy`.
        /// 
        /// The policy determines whether vertical scrolling should start
        /// below the minimum height or below the natural height.
        nonmutating set {
            gtk_scrollable_set_vscroll_policy(scrollable_ptr, newValue)
        }
    }


}



