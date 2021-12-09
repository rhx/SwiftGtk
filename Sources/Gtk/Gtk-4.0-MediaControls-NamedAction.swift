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

// MARK: - MediaControls Class

/// `GtkMediaControls` is a widget to show controls for a video.
/// 
/// ![An example GtkMediaControls](media-controls.png)
/// 
/// Usually, `GtkMediaControls` is used as part of [class`Gtk.Video`].
///
/// The `MediaControlsProtocol` protocol exposes the methods and properties of an underlying `GtkMediaControls` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MediaControls`.
/// Alternatively, use `MediaControlsRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol MediaControlsProtocol: WidgetProtocol {
        /// Untyped pointer to the underlying `GtkMediaControls` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMediaControls` instance.
    var media_controls_ptr: UnsafeMutablePointer<GtkMediaControls>! { get }

    /// Required Initialiser for types conforming to `MediaControlsProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkMediaControls` is a widget to show controls for a video.
/// 
/// ![An example GtkMediaControls](media-controls.png)
/// 
/// Usually, `GtkMediaControls` is used as part of [class`Gtk.Video`].
///
/// The `MediaControlsRef` type acts as a lightweight Swift reference to an underlying `GtkMediaControls` instance.
/// It exposes methods that can operate on this data type through `MediaControlsProtocol` conformance.
/// Use `MediaControlsRef` only as an `unowned` reference to an existing `GtkMediaControls` instance.
///
public struct MediaControlsRef: MediaControlsProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkMediaControls` instance.
    /// For type-safe access, use the generated, typed pointer `media_controls_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MediaControlsRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMediaControls>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMediaControls>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMediaControls>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMediaControls>?) {
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

    /// Reference intialiser for a related type that implements `MediaControlsProtocol`
    @inlinable init<T: MediaControlsProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: MediaControlsProtocol>(_ other: T) -> MediaControlsRef { MediaControlsRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaControlsProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaControlsProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaControlsProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaControlsProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaControlsProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkMediaControls` managing the `stream` passed to it.
    @inlinable init<MediaStreamT: MediaStreamProtocol>( stream: MediaStreamT?) {
        let rv = gtk_media_controls_new(stream?.media_stream_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// `GtkMediaControls` is a widget to show controls for a video.
/// 
/// ![An example GtkMediaControls](media-controls.png)
/// 
/// Usually, `GtkMediaControls` is used as part of [class`Gtk.Video`].
///
/// The `MediaControls` type acts as a reference-counted owner of an underlying `GtkMediaControls` instance.
/// It provides the methods that can operate on this data type through `MediaControlsProtocol` conformance.
/// Use `MediaControls` as a strong reference or owner of a `GtkMediaControls` instance.
///
open class MediaControls: Widget, MediaControlsProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MediaControls` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkMediaControls>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MediaControls` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkMediaControls>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MediaControls` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MediaControls` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MediaControls` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkMediaControls>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MediaControls` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkMediaControls>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkMediaControls`.
    /// i.e., ownership is transferred to the `MediaControls` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkMediaControls>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `MediaControlsProtocol`
    /// Will retain `GtkMediaControls`.
    /// - Parameter other: an instance of a related type that implements `MediaControlsProtocol`
    @inlinable public init<T: MediaControlsProtocol>(mediaControls other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaControlsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaControlsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaControlsProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaControlsProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaControlsProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaControlsProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaControlsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaControlsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkMediaControls` managing the `stream` passed to it.
    @inlinable public init<MediaStreamT: MediaStreamProtocol>( stream: MediaStreamT?) {
        let rv = gtk_media_controls_new(stream?.media_stream_ptr)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum MediaControlsPropertyName: String, PropertyNameProtocol {
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
    /// The media-stream managed by this object or `nil` if none.
    case mediaStream = "media-stream"
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

public extension MediaControlsProtocol {
    /// Bind a `MediaControlsPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: MediaControlsPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a MediaControls property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: MediaControlsPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a MediaControls property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: MediaControlsPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum MediaControlsSignalName: String, SignalNameProtocol {
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
    /// The media-stream managed by this object or `nil` if none.
    case notifyMediaStream = "notify::media-stream"
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

// MARK: MediaControls has no signals
// MARK: MediaControls Class: MediaControlsProtocol extension (methods and fields)
public extension MediaControlsProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMediaControls` instance.
    @inlinable var media_controls_ptr: UnsafeMutablePointer<GtkMediaControls>! { return ptr?.assumingMemoryBound(to: GtkMediaControls.self) }

    /// Gets the media stream managed by `controls` or `nil` if none.
    @inlinable func getMediaStream() -> MediaStreamRef! {
        let rv = MediaStreamRef(gconstpointer: gconstpointer(gtk_media_controls_get_media_stream(media_controls_ptr)))
        return rv
    }

    /// Sets the stream that is controlled by `controls`.
    @inlinable func setMedia(stream: MediaStreamRef? = nil) {
        gtk_media_controls_set_media_stream(media_controls_ptr, stream?.media_stream_ptr)
    
    }
    /// Sets the stream that is controlled by `controls`.
    @inlinable func setMedia<MediaStreamT: MediaStreamProtocol>(stream: MediaStreamT?) {
        gtk_media_controls_set_media_stream(media_controls_ptr, stream?.media_stream_ptr)
    
    }
    /// Gets the media stream managed by `controls` or `nil` if none.
    @inlinable var mediaStream: MediaStreamRef! {
        /// Gets the media stream managed by `controls` or `nil` if none.
        get {
            let rv = MediaStreamRef(gconstpointer: gconstpointer(gtk_media_controls_get_media_stream(media_controls_ptr)))
            return rv
        }
        /// Sets the stream that is controlled by `controls`.
        nonmutating set {
            gtk_media_controls_set_media_stream(media_controls_ptr, UnsafeMutablePointer<GtkMediaStream>(newValue?.media_stream_ptr))
        }
    }


}



// MARK: - MediaFile Class

/// `GtkMediaFile` implements `GtkMediaStream` for files.
/// 
/// This provides a simple way to play back video files with GTK.
/// 
/// GTK provides a GIO extension point for `GtkMediaFile` implementations
/// to allow for external implementations using various media frameworks.
/// 
/// GTK itself includes implementations using GStreamer and ffmpeg.
///
/// The `MediaFileProtocol` protocol exposes the methods and properties of an underlying `GtkMediaFile` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MediaFile`.
/// Alternatively, use `MediaFileRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol MediaFileProtocol: MediaStreamProtocol {
        /// Untyped pointer to the underlying `GtkMediaFile` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMediaFile` instance.
    var media_file_ptr: UnsafeMutablePointer<GtkMediaFile>! { get }

    /// Required Initialiser for types conforming to `MediaFileProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkMediaFile` implements `GtkMediaStream` for files.
/// 
/// This provides a simple way to play back video files with GTK.
/// 
/// GTK provides a GIO extension point for `GtkMediaFile` implementations
/// to allow for external implementations using various media frameworks.
/// 
/// GTK itself includes implementations using GStreamer and ffmpeg.
///
/// The `MediaFileRef` type acts as a lightweight Swift reference to an underlying `GtkMediaFile` instance.
/// It exposes methods that can operate on this data type through `MediaFileProtocol` conformance.
/// Use `MediaFileRef` only as an `unowned` reference to an existing `GtkMediaFile` instance.
///
public struct MediaFileRef: MediaFileProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkMediaFile` instance.
    /// For type-safe access, use the generated, typed pointer `media_file_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MediaFileRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMediaFile>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMediaFile>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMediaFile>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMediaFile>?) {
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

    /// Reference intialiser for a related type that implements `MediaFileProtocol`
    @inlinable init<T: MediaFileProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: MediaFileProtocol>(_ other: T) -> MediaFileRef { MediaFileRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaFileProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaFileProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaFileProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaFileProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaFileProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// `GtkMediaFile` implements `GtkMediaStream` for files.
/// 
/// This provides a simple way to play back video files with GTK.
/// 
/// GTK provides a GIO extension point for `GtkMediaFile` implementations
/// to allow for external implementations using various media frameworks.
/// 
/// GTK itself includes implementations using GStreamer and ffmpeg.
///
/// The `MediaFile` type acts as a reference-counted owner of an underlying `GtkMediaFile` instance.
/// It provides the methods that can operate on this data type through `MediaFileProtocol` conformance.
/// Use `MediaFile` as a strong reference or owner of a `GtkMediaFile` instance.
///
open class MediaFile: MediaStream, MediaFileProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MediaFile` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkMediaFile>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MediaFile` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkMediaFile>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MediaFile` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MediaFile` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MediaFile` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkMediaFile>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MediaFile` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkMediaFile>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkMediaFile`.
    /// i.e., ownership is transferred to the `MediaFile` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkMediaFile>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `MediaFileProtocol`
    /// Will retain `GtkMediaFile`.
    /// - Parameter other: an instance of a related type that implements `MediaFileProtocol`
    @inlinable public init<T: MediaFileProtocol>(mediaFile other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaFileProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaFileProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaFileProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaFileProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaFileProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaFileProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaFileProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaFileProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum MediaFilePropertyName: String, PropertyNameProtocol {
    /// The stream's duration in microseconds or 0 if unknown.
    case duration = "duration"
    /// Set when playback has finished.
    case ended = "ended"
    /// `nil` for a properly working stream or the `GError`
    /// that the stream is in.
    case error = "error"
    /// The file being played back or `nil` if not playing a file.
    case file = "file"
    /// Whether the stream contains audio.
    case hasAudio = "has-audio"
    /// Whether the stream contains video.
    case hasVideo = "has-video"
    /// The stream being played back or `nil` if not playing a stream.
    /// 
    /// This is `nil` when playing a file.
    case inputStream = "input-stream"
    /// Try to restart the media from the beginning once it ended.
    case loop = "loop"
    /// Whether the audio stream should be muted.
    case muted = "muted"
    /// Whether the stream is currently playing.
    case playing = "playing"
    /// Whether the stream has finished initializing and existence of
    /// audio and video is known.
    case prepared = "prepared"
    /// Set unless the stream is known to not support seeking.
    case seekable = "seekable"
    /// Set while a seek is in progress.
    case seeking = "seeking"
    /// The current presentation timestamp in microseconds.
    case timestamp = "timestamp"
    /// Volume of the audio stream.
    case volume = "volume"
}

public extension MediaFileProtocol {
    /// Bind a `MediaFilePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: MediaFilePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a MediaFile property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: MediaFilePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a MediaFile property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: MediaFilePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum MediaFileSignalName: String, SignalNameProtocol {
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
    /// The stream's duration in microseconds or 0 if unknown.
    case notifyDuration = "notify::duration"
    /// Set when playback has finished.
    case notifyEnded = "notify::ended"
    /// `nil` for a properly working stream or the `GError`
    /// that the stream is in.
    case notifyError = "notify::error"
    /// The file being played back or `nil` if not playing a file.
    case notifyFile = "notify::file"
    /// Whether the stream contains audio.
    case notifyHasAudio = "notify::has-audio"
    /// Whether the stream contains video.
    case notifyHasVideo = "notify::has-video"
    /// The stream being played back or `nil` if not playing a stream.
    /// 
    /// This is `nil` when playing a file.
    case notifyInputStream = "notify::input-stream"
    /// Try to restart the media from the beginning once it ended.
    case notifyLoop = "notify::loop"
    /// Whether the audio stream should be muted.
    case notifyMuted = "notify::muted"
    /// Whether the stream is currently playing.
    case notifyPlaying = "notify::playing"
    /// Whether the stream has finished initializing and existence of
    /// audio and video is known.
    case notifyPrepared = "notify::prepared"
    /// Set unless the stream is known to not support seeking.
    case notifySeekable = "notify::seekable"
    /// Set while a seek is in progress.
    case notifySeeking = "notify::seeking"
    /// The current presentation timestamp in microseconds.
    case notifyTimestamp = "notify::timestamp"
    /// Volume of the audio stream.
    case notifyVolume = "notify::volume"
}

// MARK: MediaFile has no signals
// MARK: MediaFile Class: MediaFileProtocol extension (methods and fields)
public extension MediaFileProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMediaFile` instance.
    @inlinable var media_file_ptr: UnsafeMutablePointer<GtkMediaFile>! { return ptr?.assumingMemoryBound(to: GtkMediaFile.self) }

    /// Resets the media file to be empty.
    @inlinable func clear() {
        gtk_media_file_clear(media_file_ptr)
    
    }

    /// Returns the file that `self` is currently playing from.
    /// 
    /// When `self` is not playing or not playing from a file,
    /// `nil` is returned.
    @inlinable func getFile() -> GIO.FileRef! {
        let rv = GIO.FileRef(gtk_media_file_get_file(media_file_ptr))
        return rv
    }

    /// Returns the stream that `self` is currently playing from.
    /// 
    /// When `self` is not playing or not playing from a stream,
    /// `nil` is returned.
    @inlinable func getInputStream() -> GIO.InputStreamRef! {
        let rv = GIO.InputStreamRef(gtk_media_file_get_input_stream(media_file_ptr))
        return rv
    }

    /// Sets the `GtkMediaFile` to play the given file.
    /// 
    /// If any file is still playing, stop playing it.
    @inlinable func set(file: GIO.FileRef? = nil) {
        gtk_media_file_set_file(media_file_ptr, file?.file_ptr)
    
    }
    /// Sets the `GtkMediaFile` to play the given file.
    /// 
    /// If any file is still playing, stop playing it.
    @inlinable func set<FileT: GIO.FileProtocol>(file: FileT?) {
        gtk_media_file_set_file(media_file_ptr, file?.file_ptr)
    
    }

    /// Sets the `GtkMediaFile to play the given file.
    /// 
    /// This is a utility function that converts the given `filename`
    /// to a `GFile` and calls [method`Gtk.MediaFile.set_file`].
    @inlinable func set(filename: UnsafePointer<CChar>? = nil) {
        gtk_media_file_set_filename(media_file_ptr, filename)
    
    }

    /// Sets the `GtkMediaFile` to play the given stream.
    /// 
    /// If anything is still playing, stop playing it.
    /// 
    /// Full control about the `stream` is assumed for the duration of
    /// playback. The stream will not be closed.
    @inlinable func setInput(stream: GIO.InputStreamRef? = nil) {
        gtk_media_file_set_input_stream(media_file_ptr, stream?.input_stream_ptr)
    
    }
    /// Sets the `GtkMediaFile` to play the given stream.
    /// 
    /// If anything is still playing, stop playing it.
    /// 
    /// Full control about the `stream` is assumed for the duration of
    /// playback. The stream will not be closed.
    @inlinable func setInput<InputStreamT: GIO.InputStreamProtocol>(stream: InputStreamT?) {
        gtk_media_file_set_input_stream(media_file_ptr, stream?.input_stream_ptr)
    
    }

    /// Sets the `GtkMediaFile to play the given resource.
    /// 
    /// This is a utility function that converts the given `resource_path`
    /// to a `GFile` and calls [method`Gtk.MediaFile.set_file`].
    @inlinable func setResource(resourcePath: UnsafePointer<CChar>? = nil) {
        gtk_media_file_set_resource(media_file_ptr, resourcePath)
    
    }
    /// The file being played back or `nil` if not playing a file.
    @inlinable var file: GIO.FileRef! {
        /// Returns the file that `self` is currently playing from.
        /// 
        /// When `self` is not playing or not playing from a file,
        /// `nil` is returned.
        get {
            let rv = GIO.FileRef(gtk_media_file_get_file(media_file_ptr))
            return rv
        }
        /// Sets the `GtkMediaFile` to play the given file.
        /// 
        /// If any file is still playing, stop playing it.
        nonmutating set {
            gtk_media_file_set_file(media_file_ptr, UnsafeMutablePointer<GFile>(newValue?.file_ptr))
        }
    }

    /// Returns the stream that `self` is currently playing from.
    /// 
    /// When `self` is not playing or not playing from a stream,
    /// `nil` is returned.
    @inlinable var inputStream: GIO.InputStreamRef! {
        /// Returns the stream that `self` is currently playing from.
        /// 
        /// When `self` is not playing or not playing from a stream,
        /// `nil` is returned.
        get {
            let rv = GIO.InputStreamRef(gtk_media_file_get_input_stream(media_file_ptr))
            return rv
        }
        /// Sets the `GtkMediaFile` to play the given stream.
        /// 
        /// If anything is still playing, stop playing it.
        /// 
        /// Full control about the `stream` is assumed for the duration of
        /// playback. The stream will not be closed.
        nonmutating set {
            gtk_media_file_set_input_stream(media_file_ptr, UnsafeMutablePointer<GInputStream>(newValue?.input_stream_ptr))
        }
    }

    @inlinable var parentInstance: GtkMediaStream {
        get {
            let rv = media_file_ptr.pointee.parent_instance
            return rv
        }
    }

}



// MARK: - MediaStream Class

/// `GtkMediaStream` is the integration point for media playback inside GTK.
/// 
/// GTK provides an implementation of the `GtkMediaStream` interface that
/// is called [class`Gtk.MediaFile`].
/// 
/// Apart from application-facing API for stream playback, `GtkMediaStream`
/// has a number of APIs that are only useful for implementations and should
/// not be used in applications:
/// [method`Gtk.MediaStream.prepared`],
/// [method`Gtk.MediaStream.unprepared`],
/// [method`Gtk.MediaStream.update`],
/// [method`Gtk.MediaStream.ended`],
/// [method`Gtk.MediaStream.seek_success`],
/// [method`Gtk.MediaStream.seek_failed`],
/// [method`Gtk.MediaStream.gerror`],
/// [method`Gtk.MediaStream.error`],
/// [method`Gtk.MediaStream.error_valist`].
///
/// The `MediaStreamProtocol` protocol exposes the methods and properties of an underlying `GtkMediaStream` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MediaStream`.
/// Alternatively, use `MediaStreamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol MediaStreamProtocol: GLibObject.ObjectProtocol, Gdk.PaintableProtocol {
        /// Untyped pointer to the underlying `GtkMediaStream` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMediaStream` instance.
    var media_stream_ptr: UnsafeMutablePointer<GtkMediaStream>! { get }

    /// Required Initialiser for types conforming to `MediaStreamProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkMediaStream` is the integration point for media playback inside GTK.
/// 
/// GTK provides an implementation of the `GtkMediaStream` interface that
/// is called [class`Gtk.MediaFile`].
/// 
/// Apart from application-facing API for stream playback, `GtkMediaStream`
/// has a number of APIs that are only useful for implementations and should
/// not be used in applications:
/// [method`Gtk.MediaStream.prepared`],
/// [method`Gtk.MediaStream.unprepared`],
/// [method`Gtk.MediaStream.update`],
/// [method`Gtk.MediaStream.ended`],
/// [method`Gtk.MediaStream.seek_success`],
/// [method`Gtk.MediaStream.seek_failed`],
/// [method`Gtk.MediaStream.gerror`],
/// [method`Gtk.MediaStream.error`],
/// [method`Gtk.MediaStream.error_valist`].
///
/// The `MediaStreamRef` type acts as a lightweight Swift reference to an underlying `GtkMediaStream` instance.
/// It exposes methods that can operate on this data type through `MediaStreamProtocol` conformance.
/// Use `MediaStreamRef` only as an `unowned` reference to an existing `GtkMediaStream` instance.
///
public struct MediaStreamRef: MediaStreamProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkMediaStream` instance.
    /// For type-safe access, use the generated, typed pointer `media_stream_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MediaStreamRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMediaStream>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMediaStream>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMediaStream>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMediaStream>?) {
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

    /// Reference intialiser for a related type that implements `MediaStreamProtocol`
    @inlinable init<T: MediaStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: MediaStreamProtocol>(_ other: T) -> MediaStreamRef { MediaStreamRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaStreamProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaStreamProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaStreamProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaStreamProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaStreamProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// `GtkMediaStream` is the integration point for media playback inside GTK.
/// 
/// GTK provides an implementation of the `GtkMediaStream` interface that
/// is called [class`Gtk.MediaFile`].
/// 
/// Apart from application-facing API for stream playback, `GtkMediaStream`
/// has a number of APIs that are only useful for implementations and should
/// not be used in applications:
/// [method`Gtk.MediaStream.prepared`],
/// [method`Gtk.MediaStream.unprepared`],
/// [method`Gtk.MediaStream.update`],
/// [method`Gtk.MediaStream.ended`],
/// [method`Gtk.MediaStream.seek_success`],
/// [method`Gtk.MediaStream.seek_failed`],
/// [method`Gtk.MediaStream.gerror`],
/// [method`Gtk.MediaStream.error`],
/// [method`Gtk.MediaStream.error_valist`].
///
/// The `MediaStream` type acts as a reference-counted owner of an underlying `GtkMediaStream` instance.
/// It provides the methods that can operate on this data type through `MediaStreamProtocol` conformance.
/// Use `MediaStream` as a strong reference or owner of a `GtkMediaStream` instance.
///
open class MediaStream: GLibObject.Object, MediaStreamProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MediaStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkMediaStream>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MediaStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkMediaStream>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MediaStream` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MediaStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MediaStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkMediaStream>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MediaStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkMediaStream>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkMediaStream`.
    /// i.e., ownership is transferred to the `MediaStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkMediaStream>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `MediaStreamProtocol`
    /// Will retain `GtkMediaStream`.
    /// - Parameter other: an instance of a related type that implements `MediaStreamProtocol`
    @inlinable public init<T: MediaStreamProtocol>(mediaStream other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaStreamProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaStreamProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaStreamProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaStreamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum MediaStreamPropertyName: String, PropertyNameProtocol {
    /// The stream's duration in microseconds or 0 if unknown.
    case duration = "duration"
    /// Set when playback has finished.
    case ended = "ended"
    /// `nil` for a properly working stream or the `GError`
    /// that the stream is in.
    case error = "error"
    /// Whether the stream contains audio.
    case hasAudio = "has-audio"
    /// Whether the stream contains video.
    case hasVideo = "has-video"
    /// Try to restart the media from the beginning once it ended.
    case loop = "loop"
    /// Whether the audio stream should be muted.
    case muted = "muted"
    /// Whether the stream is currently playing.
    case playing = "playing"
    /// Whether the stream has finished initializing and existence of
    /// audio and video is known.
    case prepared = "prepared"
    /// Set unless the stream is known to not support seeking.
    case seekable = "seekable"
    /// Set while a seek is in progress.
    case seeking = "seeking"
    /// The current presentation timestamp in microseconds.
    case timestamp = "timestamp"
    /// Volume of the audio stream.
    case volume = "volume"
}

public extension MediaStreamProtocol {
    /// Bind a `MediaStreamPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: MediaStreamPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a MediaStream property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: MediaStreamPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a MediaStream property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: MediaStreamPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum MediaStreamSignalName: String, SignalNameProtocol {
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
    /// The stream's duration in microseconds or 0 if unknown.
    case notifyDuration = "notify::duration"
    /// Set when playback has finished.
    case notifyEnded = "notify::ended"
    /// `nil` for a properly working stream or the `GError`
    /// that the stream is in.
    case notifyError = "notify::error"
    /// Whether the stream contains audio.
    case notifyHasAudio = "notify::has-audio"
    /// Whether the stream contains video.
    case notifyHasVideo = "notify::has-video"
    /// Try to restart the media from the beginning once it ended.
    case notifyLoop = "notify::loop"
    /// Whether the audio stream should be muted.
    case notifyMuted = "notify::muted"
    /// Whether the stream is currently playing.
    case notifyPlaying = "notify::playing"
    /// Whether the stream has finished initializing and existence of
    /// audio and video is known.
    case notifyPrepared = "notify::prepared"
    /// Set unless the stream is known to not support seeking.
    case notifySeekable = "notify::seekable"
    /// Set while a seek is in progress.
    case notifySeeking = "notify::seeking"
    /// The current presentation timestamp in microseconds.
    case notifyTimestamp = "notify::timestamp"
    /// Volume of the audio stream.
    case notifyVolume = "notify::volume"
}

// MARK: MediaStream has no signals
// MARK: MediaStream Class: MediaStreamProtocol extension (methods and fields)
public extension MediaStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMediaStream` instance.
    @inlinable var media_stream_ptr: UnsafeMutablePointer<GtkMediaStream>! { return ptr?.assumingMemoryBound(to: GtkMediaStream.self) }

    /// Pauses the media stream and marks it as ended.
    /// 
    /// This is a hint only, calls to [method`Gtk.MediaStream.play`]
    /// may still happen.
    /// 
    /// The media stream must be prepared when this function is called.
    ///
    /// **ended is deprecated:**
    /// Use [method@Gtk.MediaStream.stream_ended] instead
    @available(*, deprecated) @inlinable func getEnded() {
        gtk_media_stream_ended(media_stream_ptr)
    
    }


    // *** getError() is not available because it has a varargs (...) parameter!


    /// Sets `self` into an error state using a `printf()`-style format string.
    /// 
    /// This is a utility function that calls [method`Gtk.MediaStream.gerror`].
    /// See that function for details.
    @inlinable func errorValist(domain: GQuark, code: Int, format: UnsafePointer<CChar>!, args: CVaListPointer) {
        gtk_media_stream_error_valist(media_stream_ptr, domain, gint(code), format, args)
    
    }

    /// Sets `self` into an error state.
    /// 
    /// This will pause the stream (you can check for an error
    /// via [method`Gtk.MediaStream.get_error`] in your
    /// `GtkMediaStream.pause()` implementation), abort pending
    /// seeks and mark the stream as prepared.
    /// 
    /// if the stream is already in an error state, this call
    /// will be ignored and the existing error will be retained.
    /// 
    /// To unset an error, the stream must be reset via a call to
    /// [method`Gtk.MediaStream.unprepared`].
    @inlinable func gerror<GLibErrorT: ErrorProtocol>(error: GLibErrorT) {
        gtk_media_stream_gerror(media_stream_ptr, error.error_ptr)
    
    }

    /// Gets the duration of the stream.
    /// 
    /// If the duration is not known, 0 will be returned.
    @inlinable func getDuration() -> gint64 {
        let rv = gtk_media_stream_get_duration(media_stream_ptr)
        return rv
    }

    /// Returns whether the streams playback is finished.
    @inlinable func getEnded() -> Bool {
        let rv = ((gtk_media_stream_get_ended(media_stream_ptr)) != 0)
        return rv
    }

    /// If the stream is in an error state, returns the `GError`
    /// explaining that state.
    /// 
    /// Any type of error can be reported here depending on the
    /// implementation of the media stream.
    /// 
    /// A media stream in an error cannot be operated on, calls
    /// like [method`Gtk.MediaStream.play`] or
    /// [method`Gtk.MediaStream.seek`] will not have any effect.
    /// 
    /// `GtkMediaStream` itself does not provide a way to unset
    /// an error, but implementations may provide options. For example,
    /// a [class`Gtk.MediaFile`] will unset errors when a new source is
    /// set, e.g. with [method`Gtk.MediaFile.set_file`].
    @inlinable func getError() -> GLib.ErrorRef! {
        let rv = GLib.ErrorRef(gtk_media_stream_get_error(media_stream_ptr))
        return rv
    }

    /// Returns whether the stream is set to loop.
    /// 
    /// See [method`Gtk.MediaStream.set_loop`] for details.
    @inlinable func getLoop() -> Bool {
        let rv = ((gtk_media_stream_get_loop(media_stream_ptr)) != 0)
        return rv
    }

    /// Returns whether the audio for the stream is muted.
    /// 
    /// See [method`Gtk.MediaStream.set_muted`] for details.
    @inlinable func getMuted() -> Bool {
        let rv = ((gtk_media_stream_get_muted(media_stream_ptr)) != 0)
        return rv
    }

    /// Return whether the stream is currently playing.
    @inlinable func getPlaying() -> Bool {
        let rv = ((gtk_media_stream_get_playing(media_stream_ptr)) != 0)
        return rv
    }

    /// Returns the current presentation timestamp in microseconds.
    @inlinable func getTimestamp() -> gint64 {
        let rv = gtk_media_stream_get_timestamp(media_stream_ptr)
        return rv
    }

    /// Returns the volume of the audio for the stream.
    /// 
    /// See [method`Gtk.MediaStream.set_volume`] for details.
    @inlinable func getVolume() -> CDouble {
        let rv = gtk_media_stream_get_volume(media_stream_ptr)
        return rv
    }

    /// Returns whether the stream has audio.
    @inlinable func hasAudio() -> Bool {
        let rv = ((gtk_media_stream_has_audio(media_stream_ptr)) != 0)
        return rv
    }

    /// Returns whether the stream has video.
    @inlinable func hasVideo() -> Bool {
        let rv = ((gtk_media_stream_has_video(media_stream_ptr)) != 0)
        return rv
    }

    /// Pauses playback of the stream.
    /// 
    /// If the stream is not playing, do nothing.
    @inlinable func pause() {
        gtk_media_stream_pause(media_stream_ptr)
    
    }

    /// Starts playing the stream.
    /// 
    /// If the stream is in error or already playing, do nothing.
    @inlinable func play() {
        gtk_media_stream_play(media_stream_ptr)
    
    }

    /// Same as `gtk_media_stream_stream_prepared()`.
    ///
    /// **prepared is deprecated:**
    /// Use [method@Gtk.MediaStream.stream_prepared] instead.
    @available(*, deprecated) @inlinable func prepared(hasAudio: Bool, hasVideo: Bool, seekable: Bool, duration: gint64) {
        gtk_media_stream_prepared(media_stream_ptr, gboolean((hasAudio) ? 1 : 0), gboolean((hasVideo) ? 1 : 0), gboolean((seekable) ? 1 : 0), duration)
    
    }

    /// Called by users to attach the media stream to a `GdkSurface` they manage.
    /// 
    /// The stream can then access the resources of `surface` for its
    /// rendering purposes. In particular, media streams might want to
    /// create a `GdkGLContext` or sync to the `GdkFrameClock`.
    /// 
    /// Whoever calls this function is responsible for calling
    /// [method`Gtk.MediaStream.unrealize`] before either the stream
    /// or `surface` get destroyed.
    /// 
    /// Multiple calls to this function may happen from different
    /// users of the video, even with the same `surface`. Each of these
    /// calls must be followed by its own call to
    /// [method`Gtk.MediaStream.unrealize`].
    /// 
    /// It is not required to call this function to make a media stream work.
    @inlinable func realize<SurfaceT: Gdk.SurfaceProtocol>(surface: SurfaceT) {
        gtk_media_stream_realize(media_stream_ptr, surface.surface_ptr)
    
    }

    /// Start a seek operation on `self` to `timestamp`.
    /// 
    /// If `timestamp` is out of range, it will be clamped.
    /// 
    /// Seek operations may not finish instantly. While a
    /// seek operation is in process, the [property`Gtk.MediaStream:seeking`]
    /// property will be set.
    /// 
    /// When calling `gtk_media_stream_seek()` during an
    /// ongoing seek operation, the new seek will override
    /// any pending seek.
    @inlinable func seek(timestamp: gint64) {
        gtk_media_stream_seek(media_stream_ptr, timestamp)
    
    }

    /// Ends a seek operation started via `GtkMediaStream.seek()` as a failure.
    /// 
    /// This will not cause an error on the stream and will assume that
    /// playback continues as if no seek had happened.
    /// 
    /// See [method`Gtk.MediaStream.seek_success`] for the other way of
    /// ending a seek.
    @inlinable func seekFailed() {
        gtk_media_stream_seek_failed(media_stream_ptr)
    
    }

    /// Ends a seek operation started via `GtkMediaStream.seek()` successfully.
    /// 
    /// This function will unset the GtkMediaStream:ended property
    /// if it was set.
    /// 
    /// See [method`Gtk.MediaStream.seek_failed`] for the other way of
    /// ending a seek.
    @inlinable func seekSuccess() {
        gtk_media_stream_seek_success(media_stream_ptr)
    
    }

    /// Sets whether the stream should loop.
    /// 
    /// In this case, it will attempt to restart playback
    /// from the beginning instead of stopping at the end.
    /// 
    /// Not all streams may support looping, in particular
    /// non-seekable streams. Those streams will ignore the
    /// loop setting and just end.
    @inlinable func set(loop: Bool) {
        gtk_media_stream_set_loop(media_stream_ptr, gboolean((loop) ? 1 : 0))
    
    }

    /// Sets whether the audio stream should be muted.
    /// 
    /// Muting a stream will cause no audio to be played, but it
    /// does not modify the volume. This means that muting and
    /// then unmuting the stream will restore the volume settings.
    /// 
    /// If the stream has no audio, calling this function will
    /// still work but it will not have an audible effect.
    @inlinable func set(muted: Bool) {
        gtk_media_stream_set_muted(media_stream_ptr, gboolean((muted) ? 1 : 0))
    
    }

    /// Starts or pauses playback of the stream.
    @inlinable func set(playing: Bool) {
        gtk_media_stream_set_playing(media_stream_ptr, gboolean((playing) ? 1 : 0))
    
    }

    /// Sets the volume of the audio stream.
    /// 
    /// This function call will work even if the stream is muted.
    /// 
    /// The given `volume` should range from 0.0 for silence to 1.0
    /// for as loud as possible. Values outside of this range will
    /// be clamped to the nearest value.
    /// 
    /// If the stream has no audio or is muted, calling this function
    /// will still work but it will not have an immediate audible effect.
    /// When the stream is unmuted, the new volume setting will take effect.
    @inlinable func set(volume: CDouble) {
        gtk_media_stream_set_volume(media_stream_ptr, volume)
    
    }

    /// Pauses the media stream and marks it as ended.
    /// 
    /// This is a hint only, calls to [method`Gtk.MediaStream.play`]
    /// may still happen.
    /// 
    /// The media stream must be prepared when this function is called.
    @inlinable func streamEnded() {
        gtk_media_stream_stream_ended(media_stream_ptr)
    
    }

    /// Called by `GtkMediaStream` implementations to advertise the stream
    /// being ready to play and providing details about the stream.
    /// 
    /// Note that the arguments are hints. If the stream implementation
    /// cannot determine the correct values, it is better to err on the
    /// side of caution and return `true`. User interfaces will use those
    /// values to determine what controls to show.
    /// 
    /// This function may not be called again until the stream has been
    /// reset via [method`Gtk.MediaStream.stream_unprepared`].
    @inlinable func streamPrepared(hasAudio: Bool, hasVideo: Bool, seekable: Bool, duration: gint64) {
        gtk_media_stream_stream_prepared(media_stream_ptr, gboolean((hasAudio) ? 1 : 0), gboolean((hasVideo) ? 1 : 0), gboolean((seekable) ? 1 : 0), duration)
    
    }

    /// Resets a given media stream implementation.
    /// 
    /// [method`Gtk.MediaStream.stream_prepared`] can then be called again.
    /// 
    /// This function will also reset any error state the stream was in.
    @inlinable func streamUnprepared() {
        gtk_media_stream_stream_unprepared(media_stream_ptr)
    
    }

    /// Same as `gtk_media_stream_stream_unprepared()`.
    ///
    /// **unprepared is deprecated:**
    /// Use [method@Gtk.MediaStream.stream_unprepared] instead.
    @available(*, deprecated) @inlinable func unprepared() {
        gtk_media_stream_unprepared(media_stream_ptr)
    
    }

    /// Undoes a previous call to `gtk_media_stream_realize()`.
    /// 
    /// This causes the stream to release all resources it had
    /// allocated from `surface`.
    @inlinable func unrealize<SurfaceT: Gdk.SurfaceProtocol>(surface: SurfaceT) {
        gtk_media_stream_unrealize(media_stream_ptr, surface.surface_ptr)
    
    }

    /// Media stream implementations should regularly call this
    /// function to update the timestamp reported by the stream.
    /// 
    /// It is up to implementations to call this at the frequency
    /// they deem appropriate.
    /// 
    /// The media stream must be prepared when this function is called.
    @inlinable func update(timestamp: gint64) {
        gtk_media_stream_update(media_stream_ptr, timestamp)
    
    }
    /// The stream's duration in microseconds or 0 if unknown.
    @inlinable var duration: gint64 {
        /// Gets the duration of the stream.
        /// 
        /// If the duration is not known, 0 will be returned.
        get {
            let rv = gtk_media_stream_get_duration(media_stream_ptr)
            return rv
        }
    }

    /// Set when playback has finished.
    @inlinable var ended: Bool {
        /// Returns whether the streams playback is finished.
        get {
            let rv = ((gtk_media_stream_get_ended(media_stream_ptr)) != 0)
            return rv
        }
    }

    /// `nil` for a properly working stream or the `GError`
    /// that the stream is in.
    @inlinable var error: GLib.ErrorRef! {
        /// If the stream is in an error state, returns the `GError`
        /// explaining that state.
        /// 
        /// Any type of error can be reported here depending on the
        /// implementation of the media stream.
        /// 
        /// A media stream in an error cannot be operated on, calls
        /// like [method`Gtk.MediaStream.play`] or
        /// [method`Gtk.MediaStream.seek`] will not have any effect.
        /// 
        /// `GtkMediaStream` itself does not provide a way to unset
        /// an error, but implementations may provide options. For example,
        /// a [class`Gtk.MediaFile`] will unset errors when a new source is
        /// set, e.g. with [method`Gtk.MediaFile.set_file`].
        get {
            let rv = GLib.ErrorRef(gtk_media_stream_get_error(media_stream_ptr))
            return rv
        }
    }

    /// Returns whether the stream has finished initializing.
    /// 
    /// At this point the existence of audio and video is known.
    @inlinable var isPrepared: Bool {
        /// Returns whether the stream has finished initializing.
        /// 
        /// At this point the existence of audio and video is known.
        get {
            let rv = ((gtk_media_stream_is_prepared(media_stream_ptr)) != 0)
            return rv
        }
    }

    /// Checks if a stream may be seekable.
    /// 
    /// This is meant to be a hint. Streams may not allow seeking even if
    /// this function returns `true`. However, if this function returns
    /// `false`, streams are guaranteed to not be seekable and user interfaces
    /// may hide controls that allow seeking.
    /// 
    /// It is allowed to call [method`Gtk.MediaStream.seek`] on a non-seekable
    /// stream, though it will not do anything.
    @inlinable var isSeekable: Bool {
        /// Checks if a stream may be seekable.
        /// 
        /// This is meant to be a hint. Streams may not allow seeking even if
        /// this function returns `true`. However, if this function returns
        /// `false`, streams are guaranteed to not be seekable and user interfaces
        /// may hide controls that allow seeking.
        /// 
        /// It is allowed to call [method`Gtk.MediaStream.seek`] on a non-seekable
        /// stream, though it will not do anything.
        get {
            let rv = ((gtk_media_stream_is_seekable(media_stream_ptr)) != 0)
            return rv
        }
    }

    /// Checks if there is currently a seek operation going on.
    @inlinable var isSeeking: Bool {
        /// Checks if there is currently a seek operation going on.
        get {
            let rv = ((gtk_media_stream_is_seeking(media_stream_ptr)) != 0)
            return rv
        }
    }

    /// Try to restart the media from the beginning once it ended.
    @inlinable var loop: Bool {
        /// Returns whether the stream is set to loop.
        /// 
        /// See [method`Gtk.MediaStream.set_loop`] for details.
        get {
            let rv = ((gtk_media_stream_get_loop(media_stream_ptr)) != 0)
            return rv
        }
        /// Sets whether the stream should loop.
        /// 
        /// In this case, it will attempt to restart playback
        /// from the beginning instead of stopping at the end.
        /// 
        /// Not all streams may support looping, in particular
        /// non-seekable streams. Those streams will ignore the
        /// loop setting and just end.
        nonmutating set {
            gtk_media_stream_set_loop(media_stream_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Whether the audio stream should be muted.
    @inlinable var muted: Bool {
        /// Returns whether the audio for the stream is muted.
        /// 
        /// See [method`Gtk.MediaStream.set_muted`] for details.
        get {
            let rv = ((gtk_media_stream_get_muted(media_stream_ptr)) != 0)
            return rv
        }
        /// Sets whether the audio stream should be muted.
        /// 
        /// Muting a stream will cause no audio to be played, but it
        /// does not modify the volume. This means that muting and
        /// then unmuting the stream will restore the volume settings.
        /// 
        /// If the stream has no audio, calling this function will
        /// still work but it will not have an audible effect.
        nonmutating set {
            gtk_media_stream_set_muted(media_stream_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Whether the stream is currently playing.
    @inlinable var playing: Bool {
        /// Return whether the stream is currently playing.
        get {
            let rv = ((gtk_media_stream_get_playing(media_stream_ptr)) != 0)
            return rv
        }
        /// Starts or pauses playback of the stream.
        nonmutating set {
            gtk_media_stream_set_playing(media_stream_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// The current presentation timestamp in microseconds.
    @inlinable var timestamp: gint64 {
        /// Returns the current presentation timestamp in microseconds.
        get {
            let rv = gtk_media_stream_get_timestamp(media_stream_ptr)
            return rv
        }
    }

    /// Volume of the audio stream.
    @inlinable var volume: CDouble {
        /// Returns the volume of the audio for the stream.
        /// 
        /// See [method`Gtk.MediaStream.set_volume`] for details.
        get {
            let rv = gtk_media_stream_get_volume(media_stream_ptr)
            return rv
        }
        /// Sets the volume of the audio stream.
        /// 
        /// This function call will work even if the stream is muted.
        /// 
        /// The given `volume` should range from 0.0 for silence to 1.0
        /// for as loud as possible. Values outside of this range will
        /// be clamped to the nearest value.
        /// 
        /// If the stream has no audio or is muted, calling this function
        /// will still work but it will not have an immediate audible effect.
        /// When the stream is unmuted, the new volume setting will take effect.
        nonmutating set {
            gtk_media_stream_set_volume(media_stream_ptr, newValue)
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = media_stream_ptr.pointee.parent_instance
            return rv
        }
    }

}



// MARK: - MenuButton Class

/// The `GtkMenuButton` widget is used to display a popup when clicked.
/// 
/// ![An example GtkMenuButton](menu-button.png)
/// 
/// This popup can be provided either as a `GtkPopover` or as an abstract
/// `GMenuModel`.
/// 
/// The `GtkMenuButton` widget can show either an icon (set with the
/// [property`Gtk.MenuButton:icon-name`] property) or a label (set with the
/// [property`Gtk.MenuButton:label`] property). If neither is explicitly set,
/// a [class`Gtk.Image`] is automatically created, using an arrow image oriented
/// according to [property`Gtk.MenuButton:direction`] or the generic
/// “open-menu-symbolic” icon if the direction is not set.
/// 
/// The positioning of the popup is determined by the
/// [property`Gtk.MenuButton:direction`] property of the menu button.
/// 
/// For menus, the [property`Gtk.Widget:halign`] and [property`Gtk.Widget:valign`]
/// properties of the menu are also taken into account. For example, when the
/// direction is `GTK_ARROW_DOWN` and the horizontal alignment is `GTK_ALIGN_START`,
/// the menu will be positioned below the button, with the starting edge
/// (depending on the text direction) of the menu aligned with the starting
/// edge of the button. If there is not enough space below the button, the
/// menu is popped up above the button instead. If the alignment would move
/// part of the menu offscreen, it is “pushed in”.
/// 
/// |           | start                | center                | end                |
/// | -         | ---                  | ---                   | ---                |
/// | **down**  | ![](down-start.png)  | ![](down-center.png)  | ![](down-end.png)  |
/// | **up**    | ![](up-start.png)    | ![](up-center.png)    | ![](up-end.png)    |
/// | **left**  | ![](left-start.png)  | ![](left-center.png)  | ![](left-end.png)  |
/// | **right** | ![](right-start.png) | ![](right-center.png) | ![](right-end.png) |
/// 
/// # CSS nodes
/// 
/// ```
/// menubutton
/// ╰── button.toggle
///     ╰── &lt;content&gt;
///          ╰── [arrow]
/// ```
/// 
/// `GtkMenuButton` has a single CSS node with name `menubutton`
/// which contains a `button` node with a `.toggle` style class.
/// 
/// If the button contains only an icon or an arrow, it will have the
/// `.image-button` style class, if it contains both, it will have the
/// `.arrow-button` style class.
/// 
/// Inside the toggle button content, there is an `arrow` node for
/// the indicator, which will carry one of the `.none`, `.up`, `.down`,
/// `.left` or `.right` style classes to indicate the direction that
/// the menu will appear in. The CSS is expected to provide a suitable
/// image for each of these cases using the `-gtk-icon-source` property.
/// 
/// Optionally, the `menubutton` node can carry the `.circular` style class
/// to request a round appearance.
/// 
/// # Accessibility
/// 
/// `GtkMenuButton` uses the `GTK_ACCESSIBLE_ROLE_BUTTON` role.
///
/// The `MenuButtonProtocol` protocol exposes the methods and properties of an underlying `GtkMenuButton` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuButton`.
/// Alternatively, use `MenuButtonRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol MenuButtonProtocol: WidgetProtocol {
        /// Untyped pointer to the underlying `GtkMenuButton` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMenuButton` instance.
    var menu_button_ptr: UnsafeMutablePointer<GtkMenuButton>! { get }

    /// Required Initialiser for types conforming to `MenuButtonProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `GtkMenuButton` widget is used to display a popup when clicked.
/// 
/// ![An example GtkMenuButton](menu-button.png)
/// 
/// This popup can be provided either as a `GtkPopover` or as an abstract
/// `GMenuModel`.
/// 
/// The `GtkMenuButton` widget can show either an icon (set with the
/// [property`Gtk.MenuButton:icon-name`] property) or a label (set with the
/// [property`Gtk.MenuButton:label`] property). If neither is explicitly set,
/// a [class`Gtk.Image`] is automatically created, using an arrow image oriented
/// according to [property`Gtk.MenuButton:direction`] or the generic
/// “open-menu-symbolic” icon if the direction is not set.
/// 
/// The positioning of the popup is determined by the
/// [property`Gtk.MenuButton:direction`] property of the menu button.
/// 
/// For menus, the [property`Gtk.Widget:halign`] and [property`Gtk.Widget:valign`]
/// properties of the menu are also taken into account. For example, when the
/// direction is `GTK_ARROW_DOWN` and the horizontal alignment is `GTK_ALIGN_START`,
/// the menu will be positioned below the button, with the starting edge
/// (depending on the text direction) of the menu aligned with the starting
/// edge of the button. If there is not enough space below the button, the
/// menu is popped up above the button instead. If the alignment would move
/// part of the menu offscreen, it is “pushed in”.
/// 
/// |           | start                | center                | end                |
/// | -         | ---                  | ---                   | ---                |
/// | **down**  | ![](down-start.png)  | ![](down-center.png)  | ![](down-end.png)  |
/// | **up**    | ![](up-start.png)    | ![](up-center.png)    | ![](up-end.png)    |
/// | **left**  | ![](left-start.png)  | ![](left-center.png)  | ![](left-end.png)  |
/// | **right** | ![](right-start.png) | ![](right-center.png) | ![](right-end.png) |
/// 
/// # CSS nodes
/// 
/// ```
/// menubutton
/// ╰── button.toggle
///     ╰── &lt;content&gt;
///          ╰── [arrow]
/// ```
/// 
/// `GtkMenuButton` has a single CSS node with name `menubutton`
/// which contains a `button` node with a `.toggle` style class.
/// 
/// If the button contains only an icon or an arrow, it will have the
/// `.image-button` style class, if it contains both, it will have the
/// `.arrow-button` style class.
/// 
/// Inside the toggle button content, there is an `arrow` node for
/// the indicator, which will carry one of the `.none`, `.up`, `.down`,
/// `.left` or `.right` style classes to indicate the direction that
/// the menu will appear in. The CSS is expected to provide a suitable
/// image for each of these cases using the `-gtk-icon-source` property.
/// 
/// Optionally, the `menubutton` node can carry the `.circular` style class
/// to request a round appearance.
/// 
/// # Accessibility
/// 
/// `GtkMenuButton` uses the `GTK_ACCESSIBLE_ROLE_BUTTON` role.
///
/// The `MenuButtonRef` type acts as a lightweight Swift reference to an underlying `GtkMenuButton` instance.
/// It exposes methods that can operate on this data type through `MenuButtonProtocol` conformance.
/// Use `MenuButtonRef` only as an `unowned` reference to an existing `GtkMenuButton` instance.
///
public struct MenuButtonRef: MenuButtonProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkMenuButton` instance.
    /// For type-safe access, use the generated, typed pointer `menu_button_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MenuButtonRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMenuButton>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMenuButton>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMenuButton>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMenuButton>?) {
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

    /// Reference intialiser for a related type that implements `MenuButtonProtocol`
    @inlinable init<T: MenuButtonProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: MenuButtonProtocol>(_ other: T) -> MenuButtonRef { MenuButtonRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkMenuButton` widget with downwards-pointing
    /// arrow as the only child.
    /// 
    /// You can replace the child widget with another `GtkWidget`
    /// should you wish to.
    @inlinable init() {
        let rv = gtk_menu_button_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `GtkMenuButton` widget is used to display a popup when clicked.
/// 
/// ![An example GtkMenuButton](menu-button.png)
/// 
/// This popup can be provided either as a `GtkPopover` or as an abstract
/// `GMenuModel`.
/// 
/// The `GtkMenuButton` widget can show either an icon (set with the
/// [property`Gtk.MenuButton:icon-name`] property) or a label (set with the
/// [property`Gtk.MenuButton:label`] property). If neither is explicitly set,
/// a [class`Gtk.Image`] is automatically created, using an arrow image oriented
/// according to [property`Gtk.MenuButton:direction`] or the generic
/// “open-menu-symbolic” icon if the direction is not set.
/// 
/// The positioning of the popup is determined by the
/// [property`Gtk.MenuButton:direction`] property of the menu button.
/// 
/// For menus, the [property`Gtk.Widget:halign`] and [property`Gtk.Widget:valign`]
/// properties of the menu are also taken into account. For example, when the
/// direction is `GTK_ARROW_DOWN` and the horizontal alignment is `GTK_ALIGN_START`,
/// the menu will be positioned below the button, with the starting edge
/// (depending on the text direction) of the menu aligned with the starting
/// edge of the button. If there is not enough space below the button, the
/// menu is popped up above the button instead. If the alignment would move
/// part of the menu offscreen, it is “pushed in”.
/// 
/// |           | start                | center                | end                |
/// | -         | ---                  | ---                   | ---                |
/// | **down**  | ![](down-start.png)  | ![](down-center.png)  | ![](down-end.png)  |
/// | **up**    | ![](up-start.png)    | ![](up-center.png)    | ![](up-end.png)    |
/// | **left**  | ![](left-start.png)  | ![](left-center.png)  | ![](left-end.png)  |
/// | **right** | ![](right-start.png) | ![](right-center.png) | ![](right-end.png) |
/// 
/// # CSS nodes
/// 
/// ```
/// menubutton
/// ╰── button.toggle
///     ╰── &lt;content&gt;
///          ╰── [arrow]
/// ```
/// 
/// `GtkMenuButton` has a single CSS node with name `menubutton`
/// which contains a `button` node with a `.toggle` style class.
/// 
/// If the button contains only an icon or an arrow, it will have the
/// `.image-button` style class, if it contains both, it will have the
/// `.arrow-button` style class.
/// 
/// Inside the toggle button content, there is an `arrow` node for
/// the indicator, which will carry one of the `.none`, `.up`, `.down`,
/// `.left` or `.right` style classes to indicate the direction that
/// the menu will appear in. The CSS is expected to provide a suitable
/// image for each of these cases using the `-gtk-icon-source` property.
/// 
/// Optionally, the `menubutton` node can carry the `.circular` style class
/// to request a round appearance.
/// 
/// # Accessibility
/// 
/// `GtkMenuButton` uses the `GTK_ACCESSIBLE_ROLE_BUTTON` role.
///
/// The `MenuButton` type acts as a reference-counted owner of an underlying `GtkMenuButton` instance.
/// It provides the methods that can operate on this data type through `MenuButtonProtocol` conformance.
/// Use `MenuButton` as a strong reference or owner of a `GtkMenuButton` instance.
///
open class MenuButton: Widget, MenuButtonProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkMenuButton>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkMenuButton>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuButton` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkMenuButton>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkMenuButton>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkMenuButton`.
    /// i.e., ownership is transferred to the `MenuButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkMenuButton>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `MenuButtonProtocol`
    /// Will retain `GtkMenuButton`.
    /// - Parameter other: an instance of a related type that implements `MenuButtonProtocol`
    @inlinable public init<T: MenuButtonProtocol>(menuButton other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkMenuButton` widget with downwards-pointing
    /// arrow as the only child.
    /// 
    /// You can replace the child widget with another `GtkWidget`
    /// should you wish to.
    @inlinable public init() {
        let rv = gtk_menu_button_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum MenuButtonPropertyName: String, PropertyNameProtocol {
    /// Whether to show a dropdown arrow even when using an icon.
    case alwaysShowArrow = "always-show-arrow"
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
    /// The `GtkArrowType` representing the direction in which the
    /// menu or popover will be popped out.
    case direction = "direction"
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
    /// Whether the button has a frame.
    case hasFrame = "has-frame"
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
    /// The name of the icon used to automatically populate the button.
    case iconName = "icon-name"
    /// The label for the button.
    case label = "label"
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
    /// The `GMenuModel` from which the popup will be created.
    /// 
    /// See [method`Gtk.MenuButton.set_menu_model`] for the interaction
    /// with the [property`Gtk.MenuButton:popover`] property.
    case menuModel = "menu-model"
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
    /// The `GtkPopover` that will be popped up when the button is clicked.
    case popover = "popover"
    /// Whether the menu button acts as a primary menu.
    /// 
    /// Primary menus can be opened using the &lt;kbd&gt;F10&lt;/kbd&gt; key
    case primary = "primary"
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
    /// If set an underscore in the text indicates a mnemonic.
    case useUnderline = "use-underline"
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

public extension MenuButtonProtocol {
    /// Bind a `MenuButtonPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: MenuButtonPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a MenuButton property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: MenuButtonPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a MenuButton property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: MenuButtonPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum MenuButtonSignalName: String, SignalNameProtocol {
    /// Emitted to when the menu button is activated.
    /// 
    /// The ``activate`` signal on `GtkMenuButton` is an action signal and
    /// emitting it causes the button to pop up its menu.
    case activate = "activate"
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
    /// Whether to show a dropdown arrow even when using an icon.
    case notifyAlwaysShowArrow = "notify::always-show-arrow"
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
    /// The `GtkArrowType` representing the direction in which the
    /// menu or popover will be popped out.
    case notifyDirection = "notify::direction"
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
    /// Whether the button has a frame.
    case notifyHasFrame = "notify::has-frame"
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
    /// The name of the icon used to automatically populate the button.
    case notifyIconName = "notify::icon-name"
    /// The label for the button.
    case notifyLabel = "notify::label"
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
    /// The `GMenuModel` from which the popup will be created.
    /// 
    /// See [method`Gtk.MenuButton.set_menu_model`] for the interaction
    /// with the [property`Gtk.MenuButton:popover`] property.
    case notifyMenuModel = "notify::menu-model"
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
    /// The `GtkPopover` that will be popped up when the button is clicked.
    case notifyPopover = "notify::popover"
    /// Whether the menu button acts as a primary menu.
    /// 
    /// Primary menus can be opened using the &lt;kbd&gt;F10&lt;/kbd&gt; key
    case notifyPrimary = "notify::primary"
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
    /// If set an underscore in the text indicates a mnemonic.
    case notifyUseUnderline = "notify::use-underline"
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

// MARK: MenuButton signals
public extension MenuButtonProtocol {
    /// Connect a Swift signal handler to the given, typed `MenuButtonSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: MenuButtonSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `MenuButtonSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: MenuButtonSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted to when the menu button is activated.
    /// 
    /// The ``activate`` signal on `GtkMenuButton` is an action signal and
    /// emitting it causes the button to pop up its menu.
    /// - Note: This represents the underlying `activate` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `activate` signal is emitted
    @discardableResult @inlinable func onActivate(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuButtonRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<MenuButtonRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuButtonRef(raw: unownedSelf))
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
    static var activateSignal: MenuButtonSignalName { .activate }
    
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
    /// - Note: This represents the underlying `notify::always-show-arrow` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyAlwaysShowArrow` signal is emitted
    @discardableResult @inlinable func onNotifyAlwaysShowArrow(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuButtonRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MenuButtonRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuButtonRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyAlwaysShowArrow,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::always-show-arrow` signal for using the `connect(signal:)` methods
    static var notifyAlwaysShowArrowSignal: MenuButtonSignalName { .notifyAlwaysShowArrow }
    
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
    /// - Note: This represents the underlying `notify::direction` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyDirection` signal is emitted
    @discardableResult @inlinable func onNotifyDirection(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuButtonRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MenuButtonRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuButtonRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyDirection,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::direction` signal for using the `connect(signal:)` methods
    static var notifyDirectionSignal: MenuButtonSignalName { .notifyDirection }
    
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
    /// - Note: This represents the underlying `notify::has-frame` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyHasFrame` signal is emitted
    @discardableResult @inlinable func onNotifyHasFrame(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuButtonRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MenuButtonRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuButtonRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyHasFrame,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::has-frame` signal for using the `connect(signal:)` methods
    static var notifyHasFrameSignal: MenuButtonSignalName { .notifyHasFrame }
    
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
    @discardableResult @inlinable func onNotifyIconName(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuButtonRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MenuButtonRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuButtonRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
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
    static var notifyIconNameSignal: MenuButtonSignalName { .notifyIconName }
    
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
    /// - Note: This represents the underlying `notify::label` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyLabel` signal is emitted
    @discardableResult @inlinable func onNotifyLabel(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuButtonRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MenuButtonRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuButtonRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
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
    static var notifyLabelSignal: MenuButtonSignalName { .notifyLabel }
    
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
    /// - Note: This represents the underlying `notify::menu-model` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyMenuModel` signal is emitted
    @discardableResult @inlinable func onNotifyMenuModel(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuButtonRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MenuButtonRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuButtonRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyMenuModel,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::menu-model` signal for using the `connect(signal:)` methods
    static var notifyMenuModelSignal: MenuButtonSignalName { .notifyMenuModel }
    
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
    /// - Note: This represents the underlying `notify::popover` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyPopover` signal is emitted
    @discardableResult @inlinable func onNotifyPopover(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuButtonRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MenuButtonRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuButtonRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyPopover,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::popover` signal for using the `connect(signal:)` methods
    static var notifyPopoverSignal: MenuButtonSignalName { .notifyPopover }
    
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
    /// - Note: This represents the underlying `notify::primary` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyPrimary` signal is emitted
    @discardableResult @inlinable func onNotifyPrimary(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuButtonRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MenuButtonRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuButtonRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyPrimary,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::primary` signal for using the `connect(signal:)` methods
    static var notifyPrimarySignal: MenuButtonSignalName { .notifyPrimary }
    
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
    /// - Note: This represents the underlying `notify::use-underline` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyUseUnderline` signal is emitted
    @discardableResult @inlinable func onNotifyUseUnderline(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuButtonRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MenuButtonRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuButtonRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
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
    static var notifyUseUnderlineSignal: MenuButtonSignalName { .notifyUseUnderline }
    
}

// MARK: MenuButton Class: MenuButtonProtocol extension (methods and fields)
public extension MenuButtonProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenuButton` instance.
    @inlinable var menu_button_ptr: UnsafeMutablePointer<GtkMenuButton>! { return ptr?.assumingMemoryBound(to: GtkMenuButton.self) }

    /// Gets whether to show a dropdown arrow even when using an icon.
    @inlinable func getAlwaysShowArrow() -> Bool {
        let rv = ((gtk_menu_button_get_always_show_arrow(menu_button_ptr)) != 0)
        return rv
    }

    /// Returns the direction the popup will be pointing at when popped up.
    @inlinable func getDirection() -> GtkArrowType {
        let rv = gtk_menu_button_get_direction(menu_button_ptr)
        return rv
    }

    /// Returns whether the button has a frame.
    @inlinable func getHasFrame() -> Bool {
        let rv = ((gtk_menu_button_get_has_frame(menu_button_ptr)) != 0)
        return rv
    }

    /// Gets the name of the icon shown in the button.
    @inlinable func getIconName() -> String! {
        let rv = gtk_menu_button_get_icon_name(menu_button_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the label shown in the button
    @inlinable func getLabel() -> String! {
        let rv = gtk_menu_button_get_label(menu_button_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns the `GMenuModel` used to generate the popup.
    @inlinable func getMenuModel() -> GIO.MenuModelRef! {
        let rv = GIO.MenuModelRef(gtk_menu_button_get_menu_model(menu_button_ptr))
        return rv
    }

    /// Returns the `GtkPopover` that pops out of the button.
    /// 
    /// If the button is not using a `GtkPopover`, this function
    /// returns `nil`.
    @inlinable func getPopover() -> PopoverRef! {
        let rv = PopoverRef(gconstpointer: gconstpointer(gtk_menu_button_get_popover(menu_button_ptr)))
        return rv
    }

    /// Returns whether the menu button acts as a primary menu.
    @inlinable func getPrimary() -> Bool {
        let rv = ((gtk_menu_button_get_primary(menu_button_ptr)) != 0)
        return rv
    }

    /// Returns whether an embedded underline in the text indicates a
    /// mnemonic.
    @inlinable func getUseUnderline() -> Bool {
        let rv = ((gtk_menu_button_get_use_underline(menu_button_ptr)) != 0)
        return rv
    }

    /// Dismiss the menu.
    @inlinable func popdown() {
        gtk_menu_button_popdown(menu_button_ptr)
    
    }

    /// Pop up the menu.
    @inlinable func popup() {
        gtk_menu_button_popup(menu_button_ptr)
    
    }

    /// Sets whether to show a dropdown arrow even when using an icon.
    @inlinable func set(alwaysShowArrow: Bool) {
        gtk_menu_button_set_always_show_arrow(menu_button_ptr, gboolean((alwaysShowArrow) ? 1 : 0))
    
    }

    /// Sets `func` to be called when a popup is about to be shown.
    /// 
    /// `func` should use one of
    /// 
    ///  - [method`Gtk.MenuButton.set_popover`]
    ///  - [method`Gtk.MenuButton.set_menu_model`]
    /// 
    /// to set a popup for `menu_button`.
    /// If `func` is non-`nil`, `menu_button` will always be sensitive.
    /// 
    /// Using this function will not reset the menu widget attached to
    /// `menu_button`. Instead, this can be done manually in `func`.
    @inlinable func setCreatePopupFunc(`func`: GtkMenuButtonCreatePopupFunc? = nil, userData: gpointer! = nil, destroyNotify: GDestroyNotify? = nil) {
        gtk_menu_button_set_create_popup_func(menu_button_ptr, `func`, userData, destroyNotify)
    
    }

    /// Sets the direction in which the popup will be popped up.
    /// 
    /// If the button is automatically populated with an arrow icon,
    /// its direction will be changed to match.
    /// 
    /// If the does not fit in the available space in the given direction,
    /// GTK will its best to keep it inside the screen and fully visible.
    /// 
    /// If you pass `GTK_ARROW_NONE` for a `direction`, the popup will behave
    /// as if you passed `GTK_ARROW_DOWN` (although you won’t see any arrows).
    @inlinable func set(direction: GtkArrowType) {
        gtk_menu_button_set_direction(menu_button_ptr, direction)
    
    }

    /// Sets the style of the button.
    @inlinable func set(hasFrame: Bool) {
        gtk_menu_button_set_has_frame(menu_button_ptr, gboolean((hasFrame) ? 1 : 0))
    
    }

    /// Sets the name of an icon to show inside the menu button.
    @inlinable func set(iconName: UnsafePointer<CChar>!) {
        gtk_menu_button_set_icon_name(menu_button_ptr, iconName)
    
    }

    /// Sets the label to show inside the menu button.
    @inlinable func set(label: UnsafePointer<CChar>!) {
        gtk_menu_button_set_label(menu_button_ptr, label)
    
    }

    /// Sets the `GMenuModel` from which the popup will be constructed.
    /// 
    /// If `menu_model` is `nil`, the button is disabled.
    /// 
    /// A [class`Gtk.Popover`] will be created from the menu model with
    /// [ctor`Gtk.PopoverMenu.new_from_model`]. Actions will be connected
    /// as documented for this function.
    /// 
    /// If [property`Gtk.MenuButton:popover`] is already set, it will be
    /// dissociated from the `menu_button`, and the property is set to `nil`.
    @inlinable func set(menuModel: GIO.MenuModelRef? = nil) {
        gtk_menu_button_set_menu_model(menu_button_ptr, menuModel?.menu_model_ptr)
    
    }
    /// Sets the `GMenuModel` from which the popup will be constructed.
    /// 
    /// If `menu_model` is `nil`, the button is disabled.
    /// 
    /// A [class`Gtk.Popover`] will be created from the menu model with
    /// [ctor`Gtk.PopoverMenu.new_from_model`]. Actions will be connected
    /// as documented for this function.
    /// 
    /// If [property`Gtk.MenuButton:popover`] is already set, it will be
    /// dissociated from the `menu_button`, and the property is set to `nil`.
    @inlinable func set<MenuModelT: GIO.MenuModelProtocol>(menuModel: MenuModelT?) {
        gtk_menu_button_set_menu_model(menu_button_ptr, menuModel?.menu_model_ptr)
    
    }

    /// Sets the `GtkPopover` that will be popped up when the `menu_button` is clicked.
    /// 
    /// If `popover` is `nil`, the button is disabled.
    /// 
    /// If [property`Gtk.MenuButton:menu-model`] is set, the menu model is dissociated
    /// from the `menu_button`, and the property is set to `nil`.
    @inlinable func set(popover: WidgetRef? = nil) {
        gtk_menu_button_set_popover(menu_button_ptr, popover?.widget_ptr)
    
    }
    /// Sets the `GtkPopover` that will be popped up when the `menu_button` is clicked.
    /// 
    /// If `popover` is `nil`, the button is disabled.
    /// 
    /// If [property`Gtk.MenuButton:menu-model`] is set, the menu model is dissociated
    /// from the `menu_button`, and the property is set to `nil`.
    @inlinable func set<WidgetT: WidgetProtocol>(popover: WidgetT?) {
        gtk_menu_button_set_popover(menu_button_ptr, popover?.widget_ptr)
    
    }

    /// Sets whether menu button acts as a primary menu.
    /// 
    /// Primary menus can be opened with the &lt;kbd&gt;F10&lt;/kbd&gt; key.
    @inlinable func set(primary: Bool) {
        gtk_menu_button_set_primary(menu_button_ptr, gboolean((primary) ? 1 : 0))
    
    }

    /// If true, an underline in the text indicates a mnemonic.
    @inlinable func set(useUnderline: Bool) {
        gtk_menu_button_set_use_underline(menu_button_ptr, gboolean((useUnderline) ? 1 : 0))
    
    }
    /// Gets whether to show a dropdown arrow even when using an icon.
    @inlinable var alwaysShowArrow: Bool {
        /// Gets whether to show a dropdown arrow even when using an icon.
        get {
            let rv = ((gtk_menu_button_get_always_show_arrow(menu_button_ptr)) != 0)
            return rv
        }
        /// Sets whether to show a dropdown arrow even when using an icon.
        nonmutating set {
            gtk_menu_button_set_always_show_arrow(menu_button_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// The `GtkArrowType` representing the direction in which the
    /// menu or popover will be popped out.
    @inlinable var direction: GtkArrowType {
        /// Returns the direction the popup will be pointing at when popped up.
        get {
            let rv = gtk_menu_button_get_direction(menu_button_ptr)
            return rv
        }
        /// Sets the direction in which the popup will be popped up.
        /// 
        /// If the button is automatically populated with an arrow icon,
        /// its direction will be changed to match.
        /// 
        /// If the does not fit in the available space in the given direction,
        /// GTK will its best to keep it inside the screen and fully visible.
        /// 
        /// If you pass `GTK_ARROW_NONE` for a `direction`, the popup will behave
        /// as if you passed `GTK_ARROW_DOWN` (although you won’t see any arrows).
        nonmutating set {
            gtk_menu_button_set_direction(menu_button_ptr, newValue)
        }
    }

    /// Returns whether the button has a frame.
    @inlinable var hasFrame: Bool {
        /// Returns whether the button has a frame.
        get {
            let rv = ((gtk_menu_button_get_has_frame(menu_button_ptr)) != 0)
            return rv
        }
        /// Sets the style of the button.
        nonmutating set {
            gtk_menu_button_set_has_frame(menu_button_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the name of the icon shown in the button.
    @inlinable var iconName: String! {
        /// Gets the name of the icon shown in the button.
        get {
            let rv = gtk_menu_button_get_icon_name(menu_button_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the name of an icon to show inside the menu button.
        nonmutating set {
            gtk_menu_button_set_icon_name(menu_button_ptr, newValue)
        }
    }

    /// The label for the button.
    @inlinable var label: String! {
        /// Gets the label shown in the button
        get {
            let rv = gtk_menu_button_get_label(menu_button_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the label to show inside the menu button.
        nonmutating set {
            gtk_menu_button_set_label(menu_button_ptr, newValue)
        }
    }

    /// Returns the `GMenuModel` used to generate the popup.
    @inlinable var menuModel: GIO.MenuModelRef! {
        /// Returns the `GMenuModel` used to generate the popup.
        get {
            let rv = GIO.MenuModelRef(gtk_menu_button_get_menu_model(menu_button_ptr))
            return rv
        }
        /// Sets the `GMenuModel` from which the popup will be constructed.
        /// 
        /// If `menu_model` is `nil`, the button is disabled.
        /// 
        /// A [class`Gtk.Popover`] will be created from the menu model with
        /// [ctor`Gtk.PopoverMenu.new_from_model`]. Actions will be connected
        /// as documented for this function.
        /// 
        /// If [property`Gtk.MenuButton:popover`] is already set, it will be
        /// dissociated from the `menu_button`, and the property is set to `nil`.
        nonmutating set {
            gtk_menu_button_set_menu_model(menu_button_ptr, UnsafeMutablePointer<GMenuModel>(newValue?.menu_model_ptr))
        }
    }

    /// The `GtkPopover` that will be popped up when the button is clicked.
    @inlinable var popover: PopoverRef! {
        /// Returns the `GtkPopover` that pops out of the button.
        /// 
        /// If the button is not using a `GtkPopover`, this function
        /// returns `nil`.
        get {
            let rv = PopoverRef(gconstpointer: gconstpointer(gtk_menu_button_get_popover(menu_button_ptr)))
            return rv
        }
        /// Sets the `GtkPopover` that will be popped up when the `menu_button` is clicked.
        /// 
        /// If `popover` is `nil`, the button is disabled.
        /// 
        /// If [property`Gtk.MenuButton:menu-model`] is set, the menu model is dissociated
        /// from the `menu_button`, and the property is set to `nil`.
        nonmutating set {
            gtk_menu_button_set_popover(menu_button_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }

    /// Whether the menu button acts as a primary menu.
    /// 
    /// Primary menus can be opened using the &lt;kbd&gt;F10&lt;/kbd&gt; key
    @inlinable var primary: Bool {
        /// Returns whether the menu button acts as a primary menu.
        get {
            let rv = ((gtk_menu_button_get_primary(menu_button_ptr)) != 0)
            return rv
        }
        /// Sets whether menu button acts as a primary menu.
        /// 
        /// Primary menus can be opened with the &lt;kbd&gt;F10&lt;/kbd&gt; key.
        nonmutating set {
            gtk_menu_button_set_primary(menu_button_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns whether an embedded underline in the text indicates a
    /// mnemonic.
    @inlinable var useUnderline: Bool {
        /// Returns whether an embedded underline in the text indicates a
        /// mnemonic.
        get {
            let rv = ((gtk_menu_button_get_use_underline(menu_button_ptr)) != 0)
            return rv
        }
        /// If true, an underline in the text indicates a mnemonic.
        nonmutating set {
            gtk_menu_button_set_use_underline(menu_button_ptr, gboolean((newValue) ? 1 : 0))
        }
    }


}



// MARK: - MessageDialog Class

/// `GtkMessageDialog` presents a dialog with some message text.
/// 
/// ![An example GtkMessageDialog](messagedialog.png)
/// 
/// It’s simply a convenience widget; you could construct the equivalent of
/// `GtkMessageDialog` from `GtkDialog` without too much effort, but
/// `GtkMessageDialog` saves typing.
/// 
/// The easiest way to do a modal message dialog is to use the `GTK_DIALOG_MODAL`
/// flag, which will call [method`Gtk.Window.set_modal`] internally. The dialog will
/// prevent interaction with the parent window until it's hidden or destroyed.
/// You can use the [signal`Gtk.Dialog::response`] signal to know when the user
/// dismissed the dialog.
/// 
/// An example for using a modal dialog:
/// ```c
/// GtkDialogFlags flags = GTK_DIALOG_DESTROY_WITH_PARENT | GTK_DIALOG_MODAL;
/// dialog = gtk_message_dialog_new (parent_window,
///                                  flags,
///                                  GTK_MESSAGE_ERROR,
///                                  GTK_BUTTONS_CLOSE,
///                                  "Error reading “`s`”: `s`",
///                                  filename,
///                                  g_strerror (errno));
/// // Destroy the dialog when the user responds to it
/// // (e.g. clicks a button)
/// 
/// g_signal_connect (dialog, "response",
///                   G_CALLBACK (gtk_window_destroy),
///                   NULL);
/// ```
/// 
/// You might do a non-modal `GtkMessageDialog` simply by omitting the
/// `GTK_DIALOG_MODAL` flag:
/// 
/// ```c
/// GtkDialogFlags flags = GTK_DIALOG_DESTROY_WITH_PARENT;
/// dialog = gtk_message_dialog_new (parent_window,
///                                  flags,
///                                  GTK_MESSAGE_ERROR,
///                                  GTK_BUTTONS_CLOSE,
///                                  "Error reading “`s`”: `s`",
///                                  filename,
///                                  g_strerror (errno));
/// 
/// // Destroy the dialog when the user responds to it
/// // (e.g. clicks a button)
/// g_signal_connect (dialog, "response",
///                   G_CALLBACK (gtk_window_destroy),
///                   NULL);
/// ```
/// 
/// # GtkMessageDialog as GtkBuildable
/// 
/// The `GtkMessageDialog` implementation of the `GtkBuildable` interface exposes
/// the message area as an internal child with the name “message_area”.
///
/// The `MessageDialogProtocol` protocol exposes the methods and properties of an underlying `GtkMessageDialog` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MessageDialog`.
/// Alternatively, use `MessageDialogRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol MessageDialogProtocol: DialogProtocol {
        /// Untyped pointer to the underlying `GtkMessageDialog` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMessageDialog` instance.
    var message_dialog_ptr: UnsafeMutablePointer<GtkMessageDialog>! { get }

    /// Required Initialiser for types conforming to `MessageDialogProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkMessageDialog` presents a dialog with some message text.
/// 
/// ![An example GtkMessageDialog](messagedialog.png)
/// 
/// It’s simply a convenience widget; you could construct the equivalent of
/// `GtkMessageDialog` from `GtkDialog` without too much effort, but
/// `GtkMessageDialog` saves typing.
/// 
/// The easiest way to do a modal message dialog is to use the `GTK_DIALOG_MODAL`
/// flag, which will call [method`Gtk.Window.set_modal`] internally. The dialog will
/// prevent interaction with the parent window until it's hidden or destroyed.
/// You can use the [signal`Gtk.Dialog::response`] signal to know when the user
/// dismissed the dialog.
/// 
/// An example for using a modal dialog:
/// ```c
/// GtkDialogFlags flags = GTK_DIALOG_DESTROY_WITH_PARENT | GTK_DIALOG_MODAL;
/// dialog = gtk_message_dialog_new (parent_window,
///                                  flags,
///                                  GTK_MESSAGE_ERROR,
///                                  GTK_BUTTONS_CLOSE,
///                                  "Error reading “`s`”: `s`",
///                                  filename,
///                                  g_strerror (errno));
/// // Destroy the dialog when the user responds to it
/// // (e.g. clicks a button)
/// 
/// g_signal_connect (dialog, "response",
///                   G_CALLBACK (gtk_window_destroy),
///                   NULL);
/// ```
/// 
/// You might do a non-modal `GtkMessageDialog` simply by omitting the
/// `GTK_DIALOG_MODAL` flag:
/// 
/// ```c
/// GtkDialogFlags flags = GTK_DIALOG_DESTROY_WITH_PARENT;
/// dialog = gtk_message_dialog_new (parent_window,
///                                  flags,
///                                  GTK_MESSAGE_ERROR,
///                                  GTK_BUTTONS_CLOSE,
///                                  "Error reading “`s`”: `s`",
///                                  filename,
///                                  g_strerror (errno));
/// 
/// // Destroy the dialog when the user responds to it
/// // (e.g. clicks a button)
/// g_signal_connect (dialog, "response",
///                   G_CALLBACK (gtk_window_destroy),
///                   NULL);
/// ```
/// 
/// # GtkMessageDialog as GtkBuildable
/// 
/// The `GtkMessageDialog` implementation of the `GtkBuildable` interface exposes
/// the message area as an internal child with the name “message_area”.
///
/// The `MessageDialogRef` type acts as a lightweight Swift reference to an underlying `GtkMessageDialog` instance.
/// It exposes methods that can operate on this data type through `MessageDialogProtocol` conformance.
/// Use `MessageDialogRef` only as an `unowned` reference to an existing `GtkMessageDialog` instance.
///
public struct MessageDialogRef: MessageDialogProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkMessageDialog` instance.
    /// For type-safe access, use the generated, typed pointer `message_dialog_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MessageDialogRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMessageDialog>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMessageDialog>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMessageDialog>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMessageDialog>?) {
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

    /// Reference intialiser for a related type that implements `MessageDialogProtocol`
    @inlinable init<T: MessageDialogProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: MessageDialogProtocol>(_ other: T) -> MessageDialogRef { MessageDialogRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    
    // *** new() is not available because it has a varargs (...) parameter!



    // *** newWithMarkup() is not available because it has a varargs (...) parameter!


    // *** newWithMarkup() is not available because it has a varargs (...) parameter!

}

/// `GtkMessageDialog` presents a dialog with some message text.
/// 
/// ![An example GtkMessageDialog](messagedialog.png)
/// 
/// It’s simply a convenience widget; you could construct the equivalent of
/// `GtkMessageDialog` from `GtkDialog` without too much effort, but
/// `GtkMessageDialog` saves typing.
/// 
/// The easiest way to do a modal message dialog is to use the `GTK_DIALOG_MODAL`
/// flag, which will call [method`Gtk.Window.set_modal`] internally. The dialog will
/// prevent interaction with the parent window until it's hidden or destroyed.
/// You can use the [signal`Gtk.Dialog::response`] signal to know when the user
/// dismissed the dialog.
/// 
/// An example for using a modal dialog:
/// ```c
/// GtkDialogFlags flags = GTK_DIALOG_DESTROY_WITH_PARENT | GTK_DIALOG_MODAL;
/// dialog = gtk_message_dialog_new (parent_window,
///                                  flags,
///                                  GTK_MESSAGE_ERROR,
///                                  GTK_BUTTONS_CLOSE,
///                                  "Error reading “`s`”: `s`",
///                                  filename,
///                                  g_strerror (errno));
/// // Destroy the dialog when the user responds to it
/// // (e.g. clicks a button)
/// 
/// g_signal_connect (dialog, "response",
///                   G_CALLBACK (gtk_window_destroy),
///                   NULL);
/// ```
/// 
/// You might do a non-modal `GtkMessageDialog` simply by omitting the
/// `GTK_DIALOG_MODAL` flag:
/// 
/// ```c
/// GtkDialogFlags flags = GTK_DIALOG_DESTROY_WITH_PARENT;
/// dialog = gtk_message_dialog_new (parent_window,
///                                  flags,
///                                  GTK_MESSAGE_ERROR,
///                                  GTK_BUTTONS_CLOSE,
///                                  "Error reading “`s`”: `s`",
///                                  filename,
///                                  g_strerror (errno));
/// 
/// // Destroy the dialog when the user responds to it
/// // (e.g. clicks a button)
/// g_signal_connect (dialog, "response",
///                   G_CALLBACK (gtk_window_destroy),
///                   NULL);
/// ```
/// 
/// # GtkMessageDialog as GtkBuildable
/// 
/// The `GtkMessageDialog` implementation of the `GtkBuildable` interface exposes
/// the message area as an internal child with the name “message_area”.
///
/// The `MessageDialog` type acts as a reference-counted owner of an underlying `GtkMessageDialog` instance.
/// It provides the methods that can operate on this data type through `MessageDialogProtocol` conformance.
/// Use `MessageDialog` as a strong reference or owner of a `GtkMessageDialog` instance.
///
open class MessageDialog: Dialog, MessageDialogProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MessageDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkMessageDialog>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MessageDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkMessageDialog>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MessageDialog` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MessageDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MessageDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkMessageDialog>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MessageDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkMessageDialog>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkMessageDialog`.
    /// i.e., ownership is transferred to the `MessageDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkMessageDialog>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `MessageDialogProtocol`
    /// Will retain `GtkMessageDialog`.
    /// - Parameter other: an instance of a related type that implements `MessageDialogProtocol`
    @inlinable public init<T: MessageDialogProtocol>(messageDialog other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }


    // *** new() is not available because it has a varargs (...) parameter!



    // *** newWithMarkup() is not available because it has a varargs (...) parameter!



    // *** newWithMarkup() is not available because it has a varargs (...) parameter!


}

public enum MessageDialogPropertyName: String, PropertyNameProtocol {
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
    case buttons = "buttons"
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    /// Whether the widget can receive pointer events.
    case canTarget = "can-target"
    /// The child widget.
    case child = "child"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`.
    case cursor = "cursor"
    /// Whether the window should have a frame (also known as *decorations*).
    case decorated = "decorated"
    /// The default height of the window.
    case defaultHeight = "default-height"
    /// The default widget.
    case defaultWidget = "default-widget"
    /// The default width of the window.
    case defaultWidth = "default-width"
    /// Whether the window frame should have a close button.
    case deletable = "deletable"
    /// If this window should be destroyed when the parent is destroyed.
    case destroyWithParent = "destroy-with-parent"
    /// The display that will display this window.
    case display = "display"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether 'focus rectangles' are currently visible in this window.
    /// 
    /// This property is maintained by GTK based on user input
    /// and should not be set by applications.
    case focusVisible = "focus-visible"
    /// The focus widget.
    case focusWidget = "focus-widget"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// Whether the window is fullscreen.
    /// 
    /// Setting this property is the equivalent of calling
    /// [method`Gtk.Window.fullscreen`] or [method`Gtk.Window.unfullscreen`];
    /// either operation is asynchronous, which means you will need to
    /// connect to the `notify` signal in order to know whether the
    /// operation was successful.
    case fullscreened = "fullscreened"
    /// How to distribute horizontal space if widget gets extra space.
    case halign = "halign"
    /// Whether the window frame should handle F10 for activating
    /// menubars.
    case handleMenubarAccel = "handle-menubar-accel"
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
    /// If this window should be hidden when the users clicks the close button.
    case hideOnClose = "hide-on-close"
    /// Specifies the name of the themed icon to use as the window icon.
    /// 
    /// See [class`Gtk.IconTheme`] for more details.
    case iconName = "icon-name"
    /// Whether the toplevel is the currently active window.
    case isActive = "is-active"
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
    /// Whether the window is maximized.
    /// 
    /// Setting this property is the equivalent of calling
    /// [method`Gtk.Window.maximize`] or [method`Gtk.Window.unmaximize`];
    /// either operation is asynchronous, which means you will need to
    /// connect to the `notify` signal in order to know whether the
    /// operation was successful.
    case maximized = "maximized"
    /// The `GtkBox` that corresponds to the message area of this dialog.
    /// 
    /// See [method`Gtk.MessageDialog.get_message_area`] for a detailed
    /// description of this area.
    case messageArea = "message-area"
    /// The type of the message.
    case messageType = "message-type"
    /// Whether mnemonics are currently visible in this window.
    /// 
    /// This property is maintained by GTK based on user input,
    /// and should not be set by applications.
    case mnemonicsVisible = "mnemonics-visible"
    /// If `true`, the window is modal.
    case modal = "modal"
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
    /// If `true`, users can resize the window.
    case resizable = "resizable"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget.
    case scaleFactor = "scale-factor"
    /// The secondary text of the message dialog.
    case secondaryText = "secondary-text"
    /// `true` if the secondary text of the dialog includes Pango markup.
    /// 
    /// See [func`Pango.parse_markup`].
    case secondaryUseMarkup = "secondary-use-markup"
    /// Whether the widget responds to input.
    case sensitive = "sensitive"
    /// A write-only property for setting window's startup notification identifier.
    case startupId = "startup-id"
    /// The primary text of the message dialog.
    /// 
    /// If the dialog has a secondary text, this will appear as the title.
    case text = "text"
    /// The title of the window.
    case title = "title"
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
    /// The transient parent of the window.
    case transientFor = "transient-for"
    /// `true` if the dialog uses a headerbar for action buttons
    /// instead of the action-area.
    /// 
    /// For technical reasons, this property is declared as an integer
    /// property, but you should only set it to `true` or `false`.
    /// 
    /// ## Creating a dialog with headerbar
    /// 
    /// Builtin `GtkDialog` subclasses such as [class`Gtk.ColorChooserDialog`]
    /// set this property according to platform conventions (using the
    /// [property`Gtk.Settings:gtk-dialogs-use-header`] setting).
    /// 
    /// Here is how you can achieve the same:
    /// 
    /// ```c
    /// g_object_get (settings, "gtk-dialogs-use-header", &header, NULL);
    /// dialog = g_object_new (GTK_TYPE_DIALOG, header, TRUE, NULL);
    /// ```
    case useHeaderBar = "use-header-bar"
    /// `true` if the primary text of the dialog includes Pango markup.
    /// 
    /// See [func`Pango.parse_markup`].
    case useMarkup = "use-markup"
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

public extension MessageDialogProtocol {
    /// Bind a `MessageDialogPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: MessageDialogPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a MessageDialog property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: MessageDialogPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a MessageDialog property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: MessageDialogPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum MessageDialogSignalName: String, SignalNameProtocol {
    /// Emitted when the user activates the default widget
    /// of `window`.
    /// 
    /// This is a [keybinding signal](class.SignalAction.html).
    case activateDefault = "activate-default"
    /// Emitted when the user activates the currently focused
    /// widget of `window`.
    /// 
    /// This is a [keybinding signal](class.SignalAction.html).
    case activateFocus = "activate-focus"
    /// Emitted when the user uses a keybinding to close the dialog.
    /// 
    /// This is a [keybinding signal](class.SignalAction.html).
    /// 
    /// The default binding for this signal is the Escape key.
    case close = "close"
    /// Emitted when the user clicks on the close button of the window.
    case closeRequest = "close-request"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold.
    /// 
    /// May result in finalization of the widget if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// Emitted when the text direction of a widget changes.
    case directionChanged = "direction-changed"
    /// Emitted when the user enables or disables interactive debugging.
    /// 
    /// When `toggle` is `true`, interactive debugging is toggled on or off,
    /// when it is `false`, the debugger will be pointed at the widget
    /// under the pointer.
    /// 
    /// This is a [keybinding signal](class.SignalAction.html).
    /// 
    /// The default bindings for this signal are Ctrl-Shift-I
    /// and Ctrl-Shift-D.
    case enableDebugging = "enable-debugging"
    /// Emitted when `widget` is hidden.
    case hide = "hide"
    /// Emitted if keyboard navigation fails.
    /// 
    /// See [method`Gtk.Widget.keynav_failed`] for details.
    case keynavFailed = "keynav-failed"
    /// emitted when the set of accelerators or mnemonics that
    /// are associated with `window` changes.
    case keysChanged = "keys-changed"
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
    /// Emitted when an action widget is clicked.
    /// 
    /// The signal is also emitted when the dialog receives a
    /// delete event, and when [method`Gtk.Dialog.response`] is called.
    /// On a delete event, the response ID is `GTK_RESPONSE_DELETE_EVENT`.
    /// Otherwise, it depends on which action widget was clicked.
    case response = "response"
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
    case notifyButtons = "notify::buttons"
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCanFocus = "notify::can-focus"
    /// Whether the widget can receive pointer events.
    case notifyCanTarget = "notify::can-target"
    /// The child widget.
    case notifyChild = "notify::child"
    /// A list of css classes applied to this widget.
    case notifyCssClasses = "notify::css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCssName = "notify::css-name"
    /// The cursor used by `widget`.
    case notifyCursor = "notify::cursor"
    /// Whether the window should have a frame (also known as *decorations*).
    case notifyDecorated = "notify::decorated"
    /// The default height of the window.
    case notifyDefaultHeight = "notify::default-height"
    /// The default widget.
    case notifyDefaultWidget = "notify::default-widget"
    /// The default width of the window.
    case notifyDefaultWidth = "notify::default-width"
    /// Whether the window frame should have a close button.
    case notifyDeletable = "notify::deletable"
    /// If this window should be destroyed when the parent is destroyed.
    case notifyDestroyWithParent = "notify::destroy-with-parent"
    /// The display that will display this window.
    case notifyDisplay = "notify::display"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// Whether 'focus rectangles' are currently visible in this window.
    /// 
    /// This property is maintained by GTK based on user input
    /// and should not be set by applications.
    case notifyFocusVisible = "notify::focus-visible"
    /// The focus widget.
    case notifyFocusWidget = "notify::focus-widget"
    /// Whether this widget itself will accept the input focus.
    case notifyFocusable = "notify::focusable"
    /// Whether the window is fullscreen.
    /// 
    /// Setting this property is the equivalent of calling
    /// [method`Gtk.Window.fullscreen`] or [method`Gtk.Window.unfullscreen`];
    /// either operation is asynchronous, which means you will need to
    /// connect to the `notify` signal in order to know whether the
    /// operation was successful.
    case notifyFullscreened = "notify::fullscreened"
    /// How to distribute horizontal space if widget gets extra space.
    case notifyHalign = "notify::halign"
    /// Whether the window frame should handle F10 for activating
    /// menubars.
    case notifyHandleMenubarAccel = "notify::handle-menubar-accel"
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
    /// If this window should be hidden when the users clicks the close button.
    case notifyHideOnClose = "notify::hide-on-close"
    /// Specifies the name of the themed icon to use as the window icon.
    /// 
    /// See [class`Gtk.IconTheme`] for more details.
    case notifyIconName = "notify::icon-name"
    /// Whether the toplevel is the currently active window.
    case notifyIsActive = "notify::is-active"
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
    /// Whether the window is maximized.
    /// 
    /// Setting this property is the equivalent of calling
    /// [method`Gtk.Window.maximize`] or [method`Gtk.Window.unmaximize`];
    /// either operation is asynchronous, which means you will need to
    /// connect to the `notify` signal in order to know whether the
    /// operation was successful.
    case notifyMaximized = "notify::maximized"
    /// The `GtkBox` that corresponds to the message area of this dialog.
    /// 
    /// See [method`Gtk.MessageDialog.get_message_area`] for a detailed
    /// description of this area.
    case notifyMessageArea = "notify::message-area"
    /// The type of the message.
    case notifyMessageType = "notify::message-type"
    /// Whether mnemonics are currently visible in this window.
    /// 
    /// This property is maintained by GTK based on user input,
    /// and should not be set by applications.
    case notifyMnemonicsVisible = "notify::mnemonics-visible"
    /// If `true`, the window is modal.
    case notifyModal = "notify::modal"
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
    /// If `true`, users can resize the window.
    case notifyResizable = "notify::resizable"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case notifyRoot = "notify::root"
    /// The scale factor of the widget.
    case notifyScaleFactor = "notify::scale-factor"
    /// The secondary text of the message dialog.
    case notifySecondaryText = "notify::secondary-text"
    /// `true` if the secondary text of the dialog includes Pango markup.
    /// 
    /// See [func`Pango.parse_markup`].
    case notifySecondaryUseMarkup = "notify::secondary-use-markup"
    /// Whether the widget responds to input.
    case notifySensitive = "notify::sensitive"
    /// A write-only property for setting window's startup notification identifier.
    case notifyStartupId = "notify::startup-id"
    /// The primary text of the message dialog.
    /// 
    /// If the dialog has a secondary text, this will appear as the title.
    case notifyText = "notify::text"
    /// The title of the window.
    case notifyTitle = "notify::title"
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
    /// The transient parent of the window.
    case notifyTransientFor = "notify::transient-for"
    /// `true` if the dialog uses a headerbar for action buttons
    /// instead of the action-area.
    /// 
    /// For technical reasons, this property is declared as an integer
    /// property, but you should only set it to `true` or `false`.
    /// 
    /// ## Creating a dialog with headerbar
    /// 
    /// Builtin `GtkDialog` subclasses such as [class`Gtk.ColorChooserDialog`]
    /// set this property according to platform conventions (using the
    /// [property`Gtk.Settings:gtk-dialogs-use-header`] setting).
    /// 
    /// Here is how you can achieve the same:
    /// 
    /// ```c
    /// g_object_get (settings, "gtk-dialogs-use-header", &header, NULL);
    /// dialog = g_object_new (GTK_TYPE_DIALOG, header, TRUE, NULL);
    /// ```
    case notifyUseHeaderBar = "notify::use-header-bar"
    /// `true` if the primary text of the dialog includes Pango markup.
    /// 
    /// See [func`Pango.parse_markup`].
    case notifyUseMarkup = "notify::use-markup"
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

// MARK: MessageDialog has no signals
// MARK: MessageDialog Class: MessageDialogProtocol extension (methods and fields)
public extension MessageDialogProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMessageDialog` instance.
    @inlinable var message_dialog_ptr: UnsafeMutablePointer<GtkMessageDialog>! { return ptr?.assumingMemoryBound(to: GtkMessageDialog.self) }


    // *** formatSecondaryMarkup() is not available because it has a varargs (...) parameter!



    // *** formatSecondaryText() is not available because it has a varargs (...) parameter!


    /// Returns the message area of the dialog.
    /// 
    /// This is the box where the dialog’s primary and secondary labels
    /// are packed. You can add your own extra content to that box and it
    /// will appear below those labels. See [method`Gtk.Dialog.get_content_area`]
    /// for the corresponding function in the parent [class`Gtk.Dialog`].
    @inlinable func getMessageArea() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_message_dialog_get_message_area(message_dialog_ptr))) else { return nil }
        return rv
    }

    /// Sets the text of the message dialog.
    @inlinable func setMarkup(str: UnsafePointer<CChar>!) {
        gtk_message_dialog_set_markup(message_dialog_ptr, str)
    
    }
    /// Returns the message area of the dialog.
    /// 
    /// This is the box where the dialog’s primary and secondary labels
    /// are packed. You can add your own extra content to that box and it
    /// will appear below those labels. See [method`Gtk.Dialog.get_content_area`]
    /// for the corresponding function in the parent [class`Gtk.Dialog`].
    @inlinable var messageArea: WidgetRef! {
        /// Returns the message area of the dialog.
        /// 
        /// This is the box where the dialog’s primary and secondary labels
        /// are packed. You can add your own extra content to that box and it
        /// will appear below those labels. See [method`Gtk.Dialog.get_content_area`]
        /// for the corresponding function in the parent [class`Gtk.Dialog`].
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_message_dialog_get_message_area(message_dialog_ptr))) else { return nil }
            return rv
        }
    }

    @inlinable var parentInstance: GtkDialog {
        get {
            let rv = message_dialog_ptr.pointee.parent_instance
            return rv
        }
    }

}



// MARK: - MnemonicAction Class

/// A `GtkShortcutAction` that calls `gtk_widget_mnemonic_activate()`.
///
/// The `MnemonicActionProtocol` protocol exposes the methods and properties of an underlying `GtkMnemonicAction` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MnemonicAction`.
/// Alternatively, use `MnemonicActionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol MnemonicActionProtocol: ShortcutActionProtocol {
        /// Untyped pointer to the underlying `GtkMnemonicAction` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMnemonicAction` instance.
    var mnemonic_action_ptr: UnsafeMutablePointer<GtkMnemonicAction>! { get }

    /// Required Initialiser for types conforming to `MnemonicActionProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GtkShortcutAction` that calls `gtk_widget_mnemonic_activate()`.
///
/// The `MnemonicActionRef` type acts as a lightweight Swift reference to an underlying `GtkMnemonicAction` instance.
/// It exposes methods that can operate on this data type through `MnemonicActionProtocol` conformance.
/// Use `MnemonicActionRef` only as an `unowned` reference to an existing `GtkMnemonicAction` instance.
///
public struct MnemonicActionRef: MnemonicActionProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkMnemonicAction` instance.
    /// For type-safe access, use the generated, typed pointer `mnemonic_action_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MnemonicActionRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMnemonicAction>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMnemonicAction>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMnemonicAction>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMnemonicAction>?) {
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

    /// Reference intialiser for a related type that implements `MnemonicActionProtocol`
    @inlinable init<T: MnemonicActionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: MnemonicActionProtocol>(_ other: T) -> MnemonicActionRef { MnemonicActionRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MnemonicActionProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MnemonicActionProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MnemonicActionProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MnemonicActionProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MnemonicActionProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GtkShortcutAction` that calls `gtk_widget_mnemonic_activate()`.
///
/// The `MnemonicAction` type acts as a reference-counted owner of an underlying `GtkMnemonicAction` instance.
/// It provides the methods that can operate on this data type through `MnemonicActionProtocol` conformance.
/// Use `MnemonicAction` as a strong reference or owner of a `GtkMnemonicAction` instance.
///
open class MnemonicAction: ShortcutAction, MnemonicActionProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MnemonicAction` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkMnemonicAction>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MnemonicAction` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkMnemonicAction>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MnemonicAction` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MnemonicAction` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MnemonicAction` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkMnemonicAction>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MnemonicAction` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkMnemonicAction>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkMnemonicAction`.
    /// i.e., ownership is transferred to the `MnemonicAction` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkMnemonicAction>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `MnemonicActionProtocol`
    /// Will retain `GtkMnemonicAction`.
    /// - Parameter other: an instance of a related type that implements `MnemonicActionProtocol`
    @inlinable public init<T: MnemonicActionProtocol>(mnemonicAction other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MnemonicActionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MnemonicActionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MnemonicActionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MnemonicActionProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MnemonicActionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MnemonicActionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MnemonicActionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MnemonicActionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no MnemonicAction properties

public enum MnemonicActionSignalName: String, SignalNameProtocol {
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

// MARK: MnemonicAction has no signals
// MARK: MnemonicAction Class: MnemonicActionProtocol extension (methods and fields)
public extension MnemonicActionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMnemonicAction` instance.
    @inlinable var mnemonic_action_ptr: UnsafeMutablePointer<GtkMnemonicAction>! { return ptr?.assumingMemoryBound(to: GtkMnemonicAction.self) }



}



// MARK: - MnemonicTrigger Class

/// A `GtkShortcutTrigger` that triggers when a specific mnemonic is pressed.
/// 
/// Mnemonics require a *mnemonic modifier* (typically &lt;kbd&gt;Alt&lt;/kbd&gt;) to be
/// pressed together with the mnemonic key.
///
/// The `MnemonicTriggerProtocol` protocol exposes the methods and properties of an underlying `GtkMnemonicTrigger` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MnemonicTrigger`.
/// Alternatively, use `MnemonicTriggerRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol MnemonicTriggerProtocol: ShortcutTriggerProtocol {
        /// Untyped pointer to the underlying `GtkMnemonicTrigger` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMnemonicTrigger` instance.
    var mnemonic_trigger_ptr: UnsafeMutablePointer<GtkMnemonicTrigger>! { get }

    /// Required Initialiser for types conforming to `MnemonicTriggerProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GtkShortcutTrigger` that triggers when a specific mnemonic is pressed.
/// 
/// Mnemonics require a *mnemonic modifier* (typically &lt;kbd&gt;Alt&lt;/kbd&gt;) to be
/// pressed together with the mnemonic key.
///
/// The `MnemonicTriggerRef` type acts as a lightweight Swift reference to an underlying `GtkMnemonicTrigger` instance.
/// It exposes methods that can operate on this data type through `MnemonicTriggerProtocol` conformance.
/// Use `MnemonicTriggerRef` only as an `unowned` reference to an existing `GtkMnemonicTrigger` instance.
///
public struct MnemonicTriggerRef: MnemonicTriggerProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkMnemonicTrigger` instance.
    /// For type-safe access, use the generated, typed pointer `mnemonic_trigger_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MnemonicTriggerRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMnemonicTrigger>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMnemonicTrigger>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMnemonicTrigger>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMnemonicTrigger>?) {
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

    /// Reference intialiser for a related type that implements `MnemonicTriggerProtocol`
    @inlinable init<T: MnemonicTriggerProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: MnemonicTriggerProtocol>(_ other: T) -> MnemonicTriggerRef { MnemonicTriggerRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MnemonicTriggerProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MnemonicTriggerProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MnemonicTriggerProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MnemonicTriggerProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MnemonicTriggerProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GtkShortcutTrigger` that triggers when a specific mnemonic is pressed.
/// 
/// Mnemonics require a *mnemonic modifier* (typically &lt;kbd&gt;Alt&lt;/kbd&gt;) to be
/// pressed together with the mnemonic key.
///
/// The `MnemonicTrigger` type acts as a reference-counted owner of an underlying `GtkMnemonicTrigger` instance.
/// It provides the methods that can operate on this data type through `MnemonicTriggerProtocol` conformance.
/// Use `MnemonicTrigger` as a strong reference or owner of a `GtkMnemonicTrigger` instance.
///
open class MnemonicTrigger: ShortcutTrigger, MnemonicTriggerProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MnemonicTrigger` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkMnemonicTrigger>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MnemonicTrigger` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkMnemonicTrigger>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MnemonicTrigger` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MnemonicTrigger` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MnemonicTrigger` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkMnemonicTrigger>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MnemonicTrigger` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkMnemonicTrigger>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkMnemonicTrigger`.
    /// i.e., ownership is transferred to the `MnemonicTrigger` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkMnemonicTrigger>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `MnemonicTriggerProtocol`
    /// Will retain `GtkMnemonicTrigger`.
    /// - Parameter other: an instance of a related type that implements `MnemonicTriggerProtocol`
    @inlinable public init<T: MnemonicTriggerProtocol>(mnemonicTrigger other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MnemonicTriggerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MnemonicTriggerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MnemonicTriggerProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MnemonicTriggerProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MnemonicTriggerProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MnemonicTriggerProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MnemonicTriggerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MnemonicTriggerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum MnemonicTriggerPropertyName: String, PropertyNameProtocol {
    /// The key value for the trigger.
    case keyval = "keyval"
}

public extension MnemonicTriggerProtocol {
    /// Bind a `MnemonicTriggerPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: MnemonicTriggerPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a MnemonicTrigger property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: MnemonicTriggerPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a MnemonicTrigger property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: MnemonicTriggerPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum MnemonicTriggerSignalName: String, SignalNameProtocol {
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
    /// The key value for the trigger.
    case notifyKeyval = "notify::keyval"
}

// MARK: MnemonicTrigger has no signals
// MARK: MnemonicTrigger Class: MnemonicTriggerProtocol extension (methods and fields)
public extension MnemonicTriggerProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMnemonicTrigger` instance.
    @inlinable var mnemonic_trigger_ptr: UnsafeMutablePointer<GtkMnemonicTrigger>! { return ptr?.assumingMemoryBound(to: GtkMnemonicTrigger.self) }

    /// Gets the keyval that must be pressed to succeed triggering `self`.
    @inlinable func getKeyval() -> Int {
        let rv = Int(gtk_mnemonic_trigger_get_keyval(mnemonic_trigger_ptr))
        return rv
    }
    /// The key value for the trigger.
    @inlinable var keyval: Int {
        /// Gets the keyval that must be pressed to succeed triggering `self`.
        get {
            let rv = Int(gtk_mnemonic_trigger_get_keyval(mnemonic_trigger_ptr))
            return rv
        }
    }


}



// MARK: - MountOperation Class

/// `GtkMountOperation` is an implementation of `GMountOperation`.
/// 
/// The functions and objects described here make working with GTK and
/// GIO more convenient.
/// 
/// `GtkMountOperation` is needed when mounting volumes:
/// It is an implementation of `GMountOperation` that can be used with
/// GIO functions for mounting volumes such as
/// `g_file_mount_enclosing_volume()`, `g_file_mount_mountable()`,
/// `g_volume_mount()`, `g_mount_unmount_with_operation()` and others.
/// 
/// When necessary, `GtkMountOperation` shows dialogs to let the user
/// enter passwords, ask questions or show processes blocking unmount.
///
/// The `MountOperationProtocol` protocol exposes the methods and properties of an underlying `GtkMountOperation` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MountOperation`.
/// Alternatively, use `MountOperationRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol MountOperationProtocol: GIO.MountOperationProtocol {
        /// Untyped pointer to the underlying `GtkMountOperation` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMountOperation` instance.
    var mount_operation_ptr: UnsafeMutablePointer<GtkMountOperation>! { get }

    /// Required Initialiser for types conforming to `MountOperationProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkMountOperation` is an implementation of `GMountOperation`.
/// 
/// The functions and objects described here make working with GTK and
/// GIO more convenient.
/// 
/// `GtkMountOperation` is needed when mounting volumes:
/// It is an implementation of `GMountOperation` that can be used with
/// GIO functions for mounting volumes such as
/// `g_file_mount_enclosing_volume()`, `g_file_mount_mountable()`,
/// `g_volume_mount()`, `g_mount_unmount_with_operation()` and others.
/// 
/// When necessary, `GtkMountOperation` shows dialogs to let the user
/// enter passwords, ask questions or show processes blocking unmount.
///
/// The `MountOperationRef` type acts as a lightweight Swift reference to an underlying `GtkMountOperation` instance.
/// It exposes methods that can operate on this data type through `MountOperationProtocol` conformance.
/// Use `MountOperationRef` only as an `unowned` reference to an existing `GtkMountOperation` instance.
///
public struct MountOperationRef: MountOperationProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkMountOperation` instance.
    /// For type-safe access, use the generated, typed pointer `mount_operation_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MountOperationRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMountOperation>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMountOperation>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMountOperation>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMountOperation>?) {
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

    /// Reference intialiser for a related type that implements `MountOperationProtocol`
    @inlinable init<T: MountOperationProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: MountOperationProtocol>(_ other: T) -> MountOperationRef { MountOperationRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// `GtkMountOperation` is an implementation of `GMountOperation`.
/// 
/// The functions and objects described here make working with GTK and
/// GIO more convenient.
/// 
/// `GtkMountOperation` is needed when mounting volumes:
/// It is an implementation of `GMountOperation` that can be used with
/// GIO functions for mounting volumes such as
/// `g_file_mount_enclosing_volume()`, `g_file_mount_mountable()`,
/// `g_volume_mount()`, `g_mount_unmount_with_operation()` and others.
/// 
/// When necessary, `GtkMountOperation` shows dialogs to let the user
/// enter passwords, ask questions or show processes blocking unmount.
///
/// The `MountOperation` type acts as a reference-counted owner of an underlying `GtkMountOperation` instance.
/// It provides the methods that can operate on this data type through `MountOperationProtocol` conformance.
/// Use `MountOperation` as a strong reference or owner of a `GtkMountOperation` instance.
///
open class MountOperation: GIO.MountOperation, MountOperationProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MountOperation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkMountOperation>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MountOperation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkMountOperation>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MountOperation` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MountOperation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MountOperation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkMountOperation>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MountOperation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkMountOperation>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkMountOperation`.
    /// i.e., ownership is transferred to the `MountOperation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkMountOperation>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `MountOperationProtocol`
    /// Will retain `GtkMountOperation`.
    /// - Parameter other: an instance of a related type that implements `MountOperationProtocol`
    @inlinable public init<T: MountOperationProtocol>(_ other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum MountOperationPropertyName: String, PropertyNameProtocol {
    /// Whether to use an anonymous user when authenticating.
    case anonymous = "anonymous"
    /// The index of the user's choice when a question is asked during the
    /// mount operation. See the `GMountOperation::ask-question` signal.
    case choice = "choice"
    /// The display where dialogs will be shown.
    case display = "display"
    /// The domain to use for the mount operation.
    case domain = "domain"
    /// Whether a dialog is currently shown.
    case isShowing = "is-showing"
    /// Whether the device to be unlocked is a TCRYPT hidden volume.
    /// See [the VeraCrypt documentation](https://www.veracrypt.fr/en/Hidden`20Volume.html`).
    case isTcryptHiddenVolume = "is-tcrypt-hidden-volume"
    /// Whether the device to be unlocked is a TCRYPT system volume.
    /// In this context, a system volume is a volume with a bootloader
    /// and operating system installed. This is only supported for Windows
    /// operating systems. For further documentation, see
    /// [the VeraCrypt documentation](https://www.veracrypt.fr/en/System`20Encryption.html`).
    case isTcryptSystemVolume = "is-tcrypt-system-volume"
    /// The parent window.
    case parent = "parent"
    /// The password that is used for authentication when carrying out
    /// the mount operation.
    case password = "password"
    /// Determines if and how the password information should be saved.
    case passwordSave = "password-save"
    /// The VeraCrypt PIM value, when unlocking a VeraCrypt volume. See
    /// [the VeraCrypt documentation](https://www.veracrypt.fr/en/Personal`20Iterations``20Multiplier``20``(PIM)`.html).
    case pim = "pim"
    /// The user name that is used for authentication when carrying out
    /// the mount operation.
    case username = "username"
}

public extension MountOperationProtocol {
    /// Bind a `MountOperationPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: MountOperationPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a MountOperation property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: MountOperationPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a MountOperation property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: MountOperationPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum MountOperationSignalName: String, SignalNameProtocol {
    /// Emitted by the backend when e.g. a device becomes unavailable
    /// while a mount operation is in progress.
    /// 
    /// Implementations of GMountOperation should handle this signal
    /// by dismissing open password dialogs.
    case aborted = "aborted"
    /// Emitted when a mount operation asks the user for a password.
    /// 
    /// If the message contains a line break, the first line should be
    /// presented as a heading. For example, it may be used as the
    /// primary text in a `GtkMessageDialog`.
    case askPassword = "ask-password"
    /// Emitted when asking the user a question and gives a list of
    /// choices for the user to choose from.
    /// 
    /// If the message contains a line break, the first line should be
    /// presented as a heading. For example, it may be used as the
    /// primary text in a `GtkMessageDialog`.
    case askQuestion = "ask-question"
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
    /// Emitted when the user has replied to the mount operation.
    case reply = "reply"
    /// Emitted when one or more processes are blocking an operation
    /// e.g. unmounting/ejecting a `GMount` or stopping a `GDrive`.
    /// 
    /// Note that this signal may be emitted several times to update the
    /// list of blocking processes as processes close files. The
    /// application should only respond with `g_mount_operation_reply()` to
    /// the latest signal (setting `GMountOperation:choice` to the choice
    /// the user made).
    /// 
    /// If the message contains a line break, the first line should be
    /// presented as a heading. For example, it may be used as the
    /// primary text in a `GtkMessageDialog`.
    case showProcesses = "show-processes"
    /// Emitted when an unmount operation has been busy for more than some time
    /// (typically 1.5 seconds).
    /// 
    /// When unmounting or ejecting a volume, the kernel might need to flush
    /// pending data in its buffers to the volume stable storage, and this operation
    /// can take a considerable amount of time. This signal may be emitted several
    /// times as long as the unmount operation is outstanding, and then one
    /// last time when the operation is completed, with `bytes_left` set to zero.
    /// 
    /// Implementations of GMountOperation should handle this signal by
    /// showing an UI notification, and then dismiss it, or show another notification
    /// of completion, when `bytes_left` reaches zero.
    /// 
    /// If the message contains a line break, the first line should be
    /// presented as a heading. For example, it may be used as the
    /// primary text in a `GtkMessageDialog`.
    case showUnmountProgress = "show-unmount-progress"
    /// Whether to use an anonymous user when authenticating.
    case notifyAnonymous = "notify::anonymous"
    /// The index of the user's choice when a question is asked during the
    /// mount operation. See the `GMountOperation::ask-question` signal.
    case notifyChoice = "notify::choice"
    /// The display where dialogs will be shown.
    case notifyDisplay = "notify::display"
    /// The domain to use for the mount operation.
    case notifyDomain = "notify::domain"
    /// Whether a dialog is currently shown.
    case notifyIsShowing = "notify::is-showing"
    /// Whether the device to be unlocked is a TCRYPT hidden volume.
    /// See [the VeraCrypt documentation](https://www.veracrypt.fr/en/Hidden`20Volume.html`).
    case notifyIsTcryptHiddenVolume = "notify::is-tcrypt-hidden-volume"
    /// Whether the device to be unlocked is a TCRYPT system volume.
    /// In this context, a system volume is a volume with a bootloader
    /// and operating system installed. This is only supported for Windows
    /// operating systems. For further documentation, see
    /// [the VeraCrypt documentation](https://www.veracrypt.fr/en/System`20Encryption.html`).
    case notifyIsTcryptSystemVolume = "notify::is-tcrypt-system-volume"
    /// The parent window.
    case notifyParent = "notify::parent"
    /// The password that is used for authentication when carrying out
    /// the mount operation.
    case notifyPassword = "notify::password"
    /// Determines if and how the password information should be saved.
    case notifyPasswordSave = "notify::password-save"
    /// The VeraCrypt PIM value, when unlocking a VeraCrypt volume. See
    /// [the VeraCrypt documentation](https://www.veracrypt.fr/en/Personal`20Iterations``20Multiplier``20``(PIM)`.html).
    case notifyPim = "notify::pim"
    /// The user name that is used for authentication when carrying out
    /// the mount operation.
    case notifyUsername = "notify::username"
}

// MARK: MountOperation has no signals
// MARK: MountOperation Class: MountOperationProtocol extension (methods and fields)
public extension MountOperationProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMountOperation` instance.
    @inlinable var mount_operation_ptr: UnsafeMutablePointer<GtkMountOperation>! { return ptr?.assumingMemoryBound(to: GtkMountOperation.self) }

    /// Gets the display on which windows of the `GtkMountOperation`
    /// will be shown.
    @inlinable func getDisplay() -> Gdk.DisplayRef! {
        let rv = Gdk.DisplayRef(gtk_mount_operation_get_display(mount_operation_ptr))
        return rv
    }

    /// Gets the transient parent used by the `GtkMountOperation`.
    @inlinable func getParent() -> WindowRef! {
        let rv = WindowRef(gconstpointer: gconstpointer(gtk_mount_operation_get_parent(mount_operation_ptr)))
        return rv
    }

    /// Sets the display to show windows of the `GtkMountOperation` on.
    @inlinable func set<DisplayT: Gdk.DisplayProtocol>(display: DisplayT) {
        gtk_mount_operation_set_display(mount_operation_ptr, display.display_ptr)
    
    }

    /// Sets the transient parent for windows shown by the
    /// `GtkMountOperation`.
    @inlinable func set(parent: WindowRef? = nil) {
        gtk_mount_operation_set_parent(mount_operation_ptr, parent?.window_ptr)
    
    }
    /// Sets the transient parent for windows shown by the
    /// `GtkMountOperation`.
    @inlinable func set<WindowT: WindowProtocol>(parent: WindowT?) {
        gtk_mount_operation_set_parent(mount_operation_ptr, parent?.window_ptr)
    
    }
    /// The display where dialogs will be shown.
    @inlinable var display: Gdk.DisplayRef! {
        /// Gets the display on which windows of the `GtkMountOperation`
        /// will be shown.
        get {
            let rv = Gdk.DisplayRef(gtk_mount_operation_get_display(mount_operation_ptr))
            return rv
        }
        /// Sets the display to show windows of the `GtkMountOperation` on.
        nonmutating set {
            gtk_mount_operation_set_display(mount_operation_ptr, UnsafeMutablePointer<GdkDisplay>(newValue?.display_ptr))
        }
    }

    /// Returns whether the `GtkMountOperation` is currently displaying
    /// a window.
    @inlinable var isShowing: Bool {
        /// Returns whether the `GtkMountOperation` is currently displaying
        /// a window.
        get {
            let rv = ((gtk_mount_operation_is_showing(mount_operation_ptr)) != 0)
            return rv
        }
    }

    /// The parent window.
    @inlinable var parent: WindowRef! {
        /// Gets the transient parent used by the `GtkMountOperation`.
        get {
            let rv = WindowRef(gconstpointer: gconstpointer(gtk_mount_operation_get_parent(mount_operation_ptr)))
            return rv
        }
        /// Sets the transient parent for windows shown by the
        /// `GtkMountOperation`.
        nonmutating set {
            gtk_mount_operation_set_parent(mount_operation_ptr, UnsafeMutablePointer<GtkWindow>(newValue?.window_ptr))
        }
    }

    @inlinable var parentInstance: GMountOperation {
        get {
            let rv = mount_operation_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - MultiFilter Class

/// `GtkMultiFilter` is the base class for filters that combine multiple filters.
///
/// The `MultiFilterProtocol` protocol exposes the methods and properties of an underlying `GtkMultiFilter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MultiFilter`.
/// Alternatively, use `MultiFilterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol MultiFilterProtocol: FilterProtocol, GIO.ListModelProtocol, BuildableProtocol {
        /// Untyped pointer to the underlying `GtkMultiFilter` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMultiFilter` instance.
    var multi_filter_ptr: UnsafeMutablePointer<GtkMultiFilter>! { get }

    /// Required Initialiser for types conforming to `MultiFilterProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkMultiFilter` is the base class for filters that combine multiple filters.
///
/// The `MultiFilterRef` type acts as a lightweight Swift reference to an underlying `GtkMultiFilter` instance.
/// It exposes methods that can operate on this data type through `MultiFilterProtocol` conformance.
/// Use `MultiFilterRef` only as an `unowned` reference to an existing `GtkMultiFilter` instance.
///
public struct MultiFilterRef: MultiFilterProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkMultiFilter` instance.
    /// For type-safe access, use the generated, typed pointer `multi_filter_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MultiFilterRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMultiFilter>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMultiFilter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMultiFilter>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMultiFilter>?) {
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

    /// Reference intialiser for a related type that implements `MultiFilterProtocol`
    @inlinable init<T: MultiFilterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: MultiFilterProtocol>(_ other: T) -> MultiFilterRef { MultiFilterRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiFilterProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiFilterProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiFilterProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiFilterProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiFilterProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// `GtkMultiFilter` is the base class for filters that combine multiple filters.
///
/// The `MultiFilter` type acts as a reference-counted owner of an underlying `GtkMultiFilter` instance.
/// It provides the methods that can operate on this data type through `MultiFilterProtocol` conformance.
/// Use `MultiFilter` as a strong reference or owner of a `GtkMultiFilter` instance.
///
open class MultiFilter: Filter, MultiFilterProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MultiFilter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkMultiFilter>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MultiFilter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkMultiFilter>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MultiFilter` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MultiFilter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MultiFilter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkMultiFilter>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MultiFilter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkMultiFilter>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkMultiFilter`.
    /// i.e., ownership is transferred to the `MultiFilter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkMultiFilter>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `MultiFilterProtocol`
    /// Will retain `GtkMultiFilter`.
    /// - Parameter other: an instance of a related type that implements `MultiFilterProtocol`
    @inlinable public init<T: MultiFilterProtocol>(multiFilter other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiFilterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiFilterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiFilterProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiFilterProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiFilterProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiFilterProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiFilterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiFilterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no MultiFilter properties

public enum MultiFilterSignalName: String, SignalNameProtocol {
    /// Emitted whenever the filter changed.
    /// 
    /// Users of the filter should then check items again via
    /// [method`Gtk.Filter.match`].
    /// 
    /// `GtkFilterListModel` handles this signal automatically.
    /// 
    /// Depending on the `change` parameter, not all items need
    /// to be checked, but only some. Refer to the [enum`Gtk.FilterChange`]
    /// documentation for details.
    case changed = "changed"
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

// MARK: MultiFilter has no signals
// MARK: MultiFilter Class: MultiFilterProtocol extension (methods and fields)
public extension MultiFilterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMultiFilter` instance.
    @inlinable var multi_filter_ptr: UnsafeMutablePointer<GtkMultiFilter>! { return ptr?.assumingMemoryBound(to: GtkMultiFilter.self) }

    /// Adds a `filter` to `self` to use for matching.
    @inlinable func append<FilterT: FilterProtocol>(filter: FilterT) {
        gtk_multi_filter_append(multi_filter_ptr, filter.filter_ptr)
    
    }

    /// Removes the filter at the given `position` from the list of filters used
    /// by `self`.
    /// 
    /// If `position` is larger than the number of filters, nothing happens and
    /// the function returns.
    @inlinable func remove(position: Int) {
        gtk_multi_filter_remove(multi_filter_ptr, guint(position))
    
    }


}



// MARK: - MultiSelection Class

/// `GtkMultiSelection` is a `GtkSelectionModel` that allows selecting multiple
/// elements.
///
/// The `MultiSelectionProtocol` protocol exposes the methods and properties of an underlying `GtkMultiSelection` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MultiSelection`.
/// Alternatively, use `MultiSelectionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol MultiSelectionProtocol: GLibObject.ObjectProtocol, GIO.ListModelProtocol, SelectionModelProtocol {
        /// Untyped pointer to the underlying `GtkMultiSelection` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMultiSelection` instance.
    var multi_selection_ptr: UnsafeMutablePointer<GtkMultiSelection>! { get }

    /// Required Initialiser for types conforming to `MultiSelectionProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkMultiSelection` is a `GtkSelectionModel` that allows selecting multiple
/// elements.
///
/// The `MultiSelectionRef` type acts as a lightweight Swift reference to an underlying `GtkMultiSelection` instance.
/// It exposes methods that can operate on this data type through `MultiSelectionProtocol` conformance.
/// Use `MultiSelectionRef` only as an `unowned` reference to an existing `GtkMultiSelection` instance.
///
public struct MultiSelectionRef: MultiSelectionProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkMultiSelection` instance.
    /// For type-safe access, use the generated, typed pointer `multi_selection_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MultiSelectionRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMultiSelection>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMultiSelection>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMultiSelection>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMultiSelection>?) {
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

    /// Reference intialiser for a related type that implements `MultiSelectionProtocol`
    @inlinable init<T: MultiSelectionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: MultiSelectionProtocol>(_ other: T) -> MultiSelectionRef { MultiSelectionRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiSelectionProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiSelectionProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiSelectionProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiSelectionProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiSelectionProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new selection to handle `model`.
    @inlinable init<ListModelT: GIO.ListModelProtocol>( model: ListModelT?) {
        let rv = gtk_multi_selection_new(model?.list_model_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// `GtkMultiSelection` is a `GtkSelectionModel` that allows selecting multiple
/// elements.
///
/// The `MultiSelection` type acts as a reference-counted owner of an underlying `GtkMultiSelection` instance.
/// It provides the methods that can operate on this data type through `MultiSelectionProtocol` conformance.
/// Use `MultiSelection` as a strong reference or owner of a `GtkMultiSelection` instance.
///
open class MultiSelection: GLibObject.Object, MultiSelectionProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MultiSelection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkMultiSelection>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MultiSelection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkMultiSelection>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MultiSelection` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MultiSelection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MultiSelection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkMultiSelection>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MultiSelection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkMultiSelection>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkMultiSelection`.
    /// i.e., ownership is transferred to the `MultiSelection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkMultiSelection>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `MultiSelectionProtocol`
    /// Will retain `GtkMultiSelection`.
    /// - Parameter other: an instance of a related type that implements `MultiSelectionProtocol`
    @inlinable public init<T: MultiSelectionProtocol>(multiSelection other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiSelectionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiSelectionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiSelectionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiSelectionProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiSelectionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiSelectionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiSelectionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiSelectionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new selection to handle `model`.
    @inlinable public init<ListModelT: GIO.ListModelProtocol>( model: ListModelT?) {
        let rv = gtk_multi_selection_new(model?.list_model_ptr)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum MultiSelectionPropertyName: String, PropertyNameProtocol {
    /// The list managed by this selection.
    case model = "model"
}

public extension MultiSelectionProtocol {
    /// Bind a `MultiSelectionPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: MultiSelectionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a MultiSelection property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: MultiSelectionPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a MultiSelection property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: MultiSelectionPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum MultiSelectionSignalName: String, SignalNameProtocol {
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
    /// The list managed by this selection.
    case notifyModel = "notify::model"
}

// MARK: MultiSelection has no signals
// MARK: MultiSelection Class: MultiSelectionProtocol extension (methods and fields)
public extension MultiSelectionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMultiSelection` instance.
    @inlinable var multi_selection_ptr: UnsafeMutablePointer<GtkMultiSelection>! { return ptr?.assumingMemoryBound(to: GtkMultiSelection.self) }

    /// Returns the underlying model of `self`.
    @inlinable func getModel() -> GIO.ListModelRef! {
        let rv = GIO.ListModelRef(gtk_multi_selection_get_model(multi_selection_ptr))
        return rv
    }

    /// Sets the model that `self` should wrap.
    /// 
    /// If `model` is `nil`, `self` will be empty.
    @inlinable func set(model: GIO.ListModelRef? = nil) {
        gtk_multi_selection_set_model(multi_selection_ptr, model?.list_model_ptr)
    
    }
    /// Sets the model that `self` should wrap.
    /// 
    /// If `model` is `nil`, `self` will be empty.
    @inlinable func set<ListModelT: GIO.ListModelProtocol>(model: ListModelT?) {
        gtk_multi_selection_set_model(multi_selection_ptr, model?.list_model_ptr)
    
    }
    /// The list managed by this selection.
    @inlinable var model: GIO.ListModelRef! {
        /// Returns the underlying model of `self`.
        get {
            let rv = GIO.ListModelRef(gtk_multi_selection_get_model(multi_selection_ptr))
            return rv
        }
        /// Sets the model that `self` should wrap.
        /// 
        /// If `model` is `nil`, `self` will be empty.
        nonmutating set {
            gtk_multi_selection_set_model(multi_selection_ptr, UnsafeMutablePointer<GListModel>(newValue?.list_model_ptr))
        }
    }


}



// MARK: - MultiSorter Class

/// `GtkMultiSorter` combines multiple sorters by trying them
/// in turn.
/// 
/// If the first sorter compares two items as equal,
/// the second is tried next, and so on.
///
/// The `MultiSorterProtocol` protocol exposes the methods and properties of an underlying `GtkMultiSorter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MultiSorter`.
/// Alternatively, use `MultiSorterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol MultiSorterProtocol: SorterProtocol, GIO.ListModelProtocol, BuildableProtocol {
        /// Untyped pointer to the underlying `GtkMultiSorter` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMultiSorter` instance.
    var multi_sorter_ptr: UnsafeMutablePointer<GtkMultiSorter>! { get }

    /// Required Initialiser for types conforming to `MultiSorterProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkMultiSorter` combines multiple sorters by trying them
/// in turn.
/// 
/// If the first sorter compares two items as equal,
/// the second is tried next, and so on.
///
/// The `MultiSorterRef` type acts as a lightweight Swift reference to an underlying `GtkMultiSorter` instance.
/// It exposes methods that can operate on this data type through `MultiSorterProtocol` conformance.
/// Use `MultiSorterRef` only as an `unowned` reference to an existing `GtkMultiSorter` instance.
///
public struct MultiSorterRef: MultiSorterProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkMultiSorter` instance.
    /// For type-safe access, use the generated, typed pointer `multi_sorter_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MultiSorterRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMultiSorter>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMultiSorter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMultiSorter>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMultiSorter>?) {
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

    /// Reference intialiser for a related type that implements `MultiSorterProtocol`
    @inlinable init<T: MultiSorterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: MultiSorterProtocol>(_ other: T) -> MultiSorterRef { MultiSorterRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiSorterProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiSorterProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiSorterProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiSorterProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiSorterProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new multi sorter.
    /// 
    /// This sorter compares items by trying each of the sorters
    /// in turn, until one returns non-zero. In particular, if
    /// no sorter has been added to it, it will always compare
    /// items as equal.
    @inlinable init() {
        let rv = gtk_multi_sorter_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// `GtkMultiSorter` combines multiple sorters by trying them
/// in turn.
/// 
/// If the first sorter compares two items as equal,
/// the second is tried next, and so on.
///
/// The `MultiSorter` type acts as a reference-counted owner of an underlying `GtkMultiSorter` instance.
/// It provides the methods that can operate on this data type through `MultiSorterProtocol` conformance.
/// Use `MultiSorter` as a strong reference or owner of a `GtkMultiSorter` instance.
///
open class MultiSorter: Sorter, MultiSorterProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MultiSorter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkMultiSorter>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MultiSorter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkMultiSorter>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MultiSorter` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MultiSorter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MultiSorter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkMultiSorter>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MultiSorter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkMultiSorter>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkMultiSorter`.
    /// i.e., ownership is transferred to the `MultiSorter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkMultiSorter>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `MultiSorterProtocol`
    /// Will retain `GtkMultiSorter`.
    /// - Parameter other: an instance of a related type that implements `MultiSorterProtocol`
    @inlinable public init<T: MultiSorterProtocol>(multiSorter other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiSorterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiSorterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiSorterProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiSorterProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiSorterProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiSorterProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiSorterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiSorterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new multi sorter.
    /// 
    /// This sorter compares items by trying each of the sorters
    /// in turn, until one returns non-zero. In particular, if
    /// no sorter has been added to it, it will always compare
    /// items as equal.
    @inlinable public init() {
        let rv = gtk_multi_sorter_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

// MARK: no MultiSorter properties

public enum MultiSorterSignalName: String, SignalNameProtocol {
    /// Emitted whenever the sorter changed.
    /// 
    /// Users of the sorter should then update the sort order
    /// again via `gtk_sorter_compare()`.
    /// 
    /// [class`Gtk.SortListModel`] handles this signal automatically.
    /// 
    /// Depending on the `change` parameter, it may be possible to update
    /// the sort order without a full resorting. Refer to the
    /// [enum`Gtk.SorterChange`] documentation for details.
    case changed = "changed"
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

// MARK: MultiSorter has no signals
// MARK: MultiSorter Class: MultiSorterProtocol extension (methods and fields)
public extension MultiSorterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMultiSorter` instance.
    @inlinable var multi_sorter_ptr: UnsafeMutablePointer<GtkMultiSorter>! { return ptr?.assumingMemoryBound(to: GtkMultiSorter.self) }

    /// Add `sorter` to `self` to use for sorting at the end.
    /// 
    /// `self` will consult all existing sorters before it will
    /// sort with the given `sorter`.
    @inlinable func append<SorterT: SorterProtocol>(sorter: SorterT) {
        gtk_multi_sorter_append(multi_sorter_ptr, sorter.sorter_ptr)
    
    }

    /// Removes the sorter at the given `position` from the list of sorter
    /// used by `self`.
    /// 
    /// If `position` is larger than the number of sorters, nothing happens.
    @inlinable func remove(position: Int) {
        gtk_multi_sorter_remove(multi_sorter_ptr, guint(position))
    
    }


}



// MARK: - NamedAction Class

/// A `GtkShortcutAction` that activates an action by name.
///
/// The `NamedActionProtocol` protocol exposes the methods and properties of an underlying `GtkNamedAction` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NamedAction`.
/// Alternatively, use `NamedActionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol NamedActionProtocol: ShortcutActionProtocol {
        /// Untyped pointer to the underlying `GtkNamedAction` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkNamedAction` instance.
    var named_action_ptr: UnsafeMutablePointer<GtkNamedAction>! { get }

    /// Required Initialiser for types conforming to `NamedActionProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GtkShortcutAction` that activates an action by name.
///
/// The `NamedActionRef` type acts as a lightweight Swift reference to an underlying `GtkNamedAction` instance.
/// It exposes methods that can operate on this data type through `NamedActionProtocol` conformance.
/// Use `NamedActionRef` only as an `unowned` reference to an existing `GtkNamedAction` instance.
///
public struct NamedActionRef: NamedActionProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkNamedAction` instance.
    /// For type-safe access, use the generated, typed pointer `named_action_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension NamedActionRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkNamedAction>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkNamedAction>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkNamedAction>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkNamedAction>?) {
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

    /// Reference intialiser for a related type that implements `NamedActionProtocol`
    @inlinable init<T: NamedActionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: NamedActionProtocol>(_ other: T) -> NamedActionRef { NamedActionRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NamedActionProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NamedActionProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NamedActionProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NamedActionProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NamedActionProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GtkShortcutAction` that activates an action by name.
///
/// The `NamedAction` type acts as a reference-counted owner of an underlying `GtkNamedAction` instance.
/// It provides the methods that can operate on this data type through `NamedActionProtocol` conformance.
/// Use `NamedAction` as a strong reference or owner of a `GtkNamedAction` instance.
///
open class NamedAction: ShortcutAction, NamedActionProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NamedAction` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkNamedAction>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NamedAction` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkNamedAction>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NamedAction` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NamedAction` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NamedAction` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkNamedAction>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NamedAction` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkNamedAction>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkNamedAction`.
    /// i.e., ownership is transferred to the `NamedAction` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkNamedAction>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `NamedActionProtocol`
    /// Will retain `GtkNamedAction`.
    /// - Parameter other: an instance of a related type that implements `NamedActionProtocol`
    @inlinable public init<T: NamedActionProtocol>(namedAction other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NamedActionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NamedActionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NamedActionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NamedActionProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NamedActionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NamedActionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NamedActionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NamedActionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum NamedActionPropertyName: String, PropertyNameProtocol {
    /// The name of the action to activate.
    case actionName = "action-name"
}

public extension NamedActionProtocol {
    /// Bind a `NamedActionPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: NamedActionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a NamedAction property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: NamedActionPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a NamedAction property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: NamedActionPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum NamedActionSignalName: String, SignalNameProtocol {
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
    /// The name of the action to activate.
    case notifyActionName = "notify::action-name"
}

// MARK: NamedAction has no signals
// MARK: NamedAction Class: NamedActionProtocol extension (methods and fields)
public extension NamedActionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkNamedAction` instance.
    @inlinable var named_action_ptr: UnsafeMutablePointer<GtkNamedAction>! { return ptr?.assumingMemoryBound(to: GtkNamedAction.self) }

    /// Returns the name of the action that will be activated.
    @inlinable func getActionName() -> String! {
        let rv = gtk_named_action_get_action_name(named_action_ptr).map({ String(cString: $0) })
        return rv
    }
    /// Returns the name of the action that will be activated.
    @inlinable var actionName: String! {
        /// Returns the name of the action that will be activated.
        get {
            let rv = gtk_named_action_get_action_name(named_action_ptr).map({ String(cString: $0) })
            return rv
        }
    }


}



