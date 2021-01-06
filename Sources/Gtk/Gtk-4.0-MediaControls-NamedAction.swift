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

/// The `MediaControlsProtocol` protocol exposes the methods and properties of an underlying `GtkMediaControls` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MediaControls`.
/// Alternatively, use `MediaControlsRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkMediaControls is a widget to show controls for a `GtkMediaStream`
/// and giving users a way to use it.
public protocol MediaControlsProtocol: WidgetProtocol {
        /// Untyped pointer to the underlying `GtkMediaControls` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMediaControls` instance.
    var media_controls_ptr: UnsafeMutablePointer<GtkMediaControls>! { get }

}

/// The `MediaControlsRef` type acts as a lightweight Swift reference to an underlying `GtkMediaControls` instance.
/// It exposes methods that can operate on this data type through `MediaControlsProtocol` conformance.
/// Use `MediaControlsRef` only as an `unowned` reference to an existing `GtkMediaControls` instance.
///
/// GtkMediaControls is a widget to show controls for a `GtkMediaStream`
/// and giving users a way to use it.
public struct MediaControlsRef: MediaControlsProtocol {
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

/// The `MediaControls` type acts as a reference-counted owner of an underlying `GtkMediaControls` instance.
/// It provides the methods that can operate on this data type through `MediaControlsProtocol` conformance.
/// Use `MediaControls` as a strong reference or owner of a `GtkMediaControls` instance.
///
/// GtkMediaControls is a widget to show controls for a `GtkMediaStream`
/// and giving users a way to use it.
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
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaControlsProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
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
    }


}

public enum MediaControlsPropertyName: String, PropertyNameProtocol {
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
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
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
    /// The media-stream managed by this object or `nil` if none.
    case mediaStream = "media-stream"
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
    case sensitive = "sensitive"
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
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The `direction`-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The `hide` signal is emitted when `widget` is hidden, for example with
    /// `gtk_widget_hide()`.
    case hide = "hide"
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
    /// `GdkSurface`, which means that `gtk_widget_realize()` has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// The `show` signal is emitted when `widget` is shown, for example with
    /// `gtk_widget_show()`.
    case show = "show"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The `state`-flags-changed signal is emitted when the widget state
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
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
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
    /// The media-stream managed by this object or `nil` if none.
    case notifyMediaStream = "notify::media-stream"
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
    case notifySensitive = "notify::sensitive"
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
}

public extension MediaControlsProtocol {
    /// Connect a `MediaControlsSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: MediaControlsSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

/// The `MediaFileProtocol` protocol exposes the methods and properties of an underlying `GtkMediaFile` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MediaFile`.
/// Alternatively, use `MediaFileRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkMediaFile` is the implementation for media file usage with `GtkMediaStream`.
/// 
/// This provides a simple way to play back video files with GTK.
/// 
/// GTK provides a GIO extension point for `GtkMediaFile` implementations
/// to allow for external implementations using various media frameworks.
/// GTK itself includes implementations using GStreamer and ffmpeg.
public protocol MediaFileProtocol: MediaStreamProtocol {
        /// Untyped pointer to the underlying `GtkMediaFile` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMediaFile` instance.
    var media_file_ptr: UnsafeMutablePointer<GtkMediaFile>! { get }

}

/// The `MediaFileRef` type acts as a lightweight Swift reference to an underlying `GtkMediaFile` instance.
/// It exposes methods that can operate on this data type through `MediaFileProtocol` conformance.
/// Use `MediaFileRef` only as an `unowned` reference to an existing `GtkMediaFile` instance.
///
/// `GtkMediaFile` is the implementation for media file usage with `GtkMediaStream`.
/// 
/// This provides a simple way to play back video files with GTK.
/// 
/// GTK provides a GIO extension point for `GtkMediaFile` implementations
/// to allow for external implementations using various media frameworks.
/// GTK itself includes implementations using GStreamer and ffmpeg.
public struct MediaFileRef: MediaFileProtocol {
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

/// The `MediaFile` type acts as a reference-counted owner of an underlying `GtkMediaFile` instance.
/// It provides the methods that can operate on this data type through `MediaFileProtocol` conformance.
/// Use `MediaFile` as a strong reference or owner of a `GtkMediaFile` instance.
///
/// `GtkMediaFile` is the implementation for media file usage with `GtkMediaStream`.
/// 
/// This provides a simple way to play back video files with GTK.
/// 
/// GTK provides a GIO extension point for `GtkMediaFile` implementations
/// to allow for external implementations using various media frameworks.
/// GTK itself includes implementations using GStreamer and ffmpeg.
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
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaFileProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
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
    /// `nil` for a properly working stream or the `GError` that the stream is in.
    case error = "error"
    /// The file being played back or `nil` if not playing a file.
    case file = "file"
    /// Whether the stream contains audio
    case hasAudio = "has-audio"
    /// Whether the stream contains video
    case hasVideo = "has-video"
    /// The stream being played back or `nil` if not playing a stream, like when playing a file.
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
    /// The stream's duration in microseconds or 0 if unknown.
    case notifyDuration = "notify::duration"
    /// Set when playback has finished.
    case notifyEnded = "notify::ended"
    /// `nil` for a properly working stream or the `GError` that the stream is in.
    case notifyGLibError = "notify::error"
    /// The file being played back or `nil` if not playing a file.
    case notifyFile = "notify::file"
    /// Whether the stream contains audio
    case notifyHasAudio = "notify::has-audio"
    /// Whether the stream contains video
    case notifyHasVideo = "notify::has-video"
    /// The stream being played back or `nil` if not playing a stream, like when playing a file.
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

public extension MediaFileProtocol {
    /// Connect a `MediaFileSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: MediaFileSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

    /// If any file is still playing, stop playing it.
    /// 
    /// Then start playing the given `file`.
    @inlinable func set(file: GIO.FileRef? = nil) {
        gtk_media_file_set_file(media_file_ptr, file?.file_ptr)
    
    }
    /// If any file is still playing, stop playing it.
    /// 
    /// Then start playing the given `file`.
    @inlinable func set<FileT: GIO.FileProtocol>(file: FileT?) {
        gtk_media_file_set_file(media_file_ptr, file?.file_ptr)
    
    }

    /// This is a utility function that converts the given `filename`
    /// to a `GFile` and calls `gtk_media_file_set_file()`.
    @inlinable func set(filename: UnsafePointer<CChar>? = nil) {
        gtk_media_file_set_filename(media_file_ptr, filename)
    
    }

    /// If anything is still playing, stop playing it. Then start
    /// playing the given `stream`.
    /// 
    /// Full control about the `stream` is assumed for the duration of
    /// playback. The stream will not bt be closed.
    @inlinable func setInput(stream: GIO.InputStreamRef? = nil) {
        gtk_media_file_set_input_stream(media_file_ptr, stream?.input_stream_ptr)
    
    }
    /// If anything is still playing, stop playing it. Then start
    /// playing the given `stream`.
    /// 
    /// Full control about the `stream` is assumed for the duration of
    /// playback. The stream will not bt be closed.
    @inlinable func setInput<InputStreamT: GIO.InputStreamProtocol>(stream: InputStreamT?) {
        gtk_media_file_set_input_stream(media_file_ptr, stream?.input_stream_ptr)
    
    }

    /// This is a utility function that converts the given `resource_path`
    /// to a `GFile` and calls `gtk_media_file_set_file()`.
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
        /// If any file is still playing, stop playing it.
        /// 
        /// Then start playing the given `file`.
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
        /// If anything is still playing, stop playing it. Then start
        /// playing the given `stream`.
        /// 
        /// Full control about the `stream` is assumed for the duration of
        /// playback. The stream will not bt be closed.
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

/// The `MediaStreamProtocol` protocol exposes the methods and properties of an underlying `GtkMediaStream` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MediaStream`.
/// Alternatively, use `MediaStreamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkMediaStream` is the integration point for media playback inside GTK.
/// 
/// Apart from application-facing API for stream playback, `GtkMediaStream`
/// has a number of APIs that are only useful for implementations and should
/// not be used in applications:
/// `gtk_media_stream_prepared()`,
/// `gtk_media_stream_unprepared()`,
/// `gtk_media_stream_update()`,
/// `gtk_media_stream_ended()`,
/// `gtk_media_stream_seek_success()`,
/// `gtk_media_stream_seek_failed()`,
/// `gtk_media_stream_gerror()`,
/// `gtk_media_stream_error()`,
/// `gtk_media_stream_error_valist()`.
public protocol MediaStreamProtocol: GLibObject.ObjectProtocol, Gdk.PaintableProtocol {
        /// Untyped pointer to the underlying `GtkMediaStream` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMediaStream` instance.
    var media_stream_ptr: UnsafeMutablePointer<GtkMediaStream>! { get }

}

/// The `MediaStreamRef` type acts as a lightweight Swift reference to an underlying `GtkMediaStream` instance.
/// It exposes methods that can operate on this data type through `MediaStreamProtocol` conformance.
/// Use `MediaStreamRef` only as an `unowned` reference to an existing `GtkMediaStream` instance.
///
/// `GtkMediaStream` is the integration point for media playback inside GTK.
/// 
/// Apart from application-facing API for stream playback, `GtkMediaStream`
/// has a number of APIs that are only useful for implementations and should
/// not be used in applications:
/// `gtk_media_stream_prepared()`,
/// `gtk_media_stream_unprepared()`,
/// `gtk_media_stream_update()`,
/// `gtk_media_stream_ended()`,
/// `gtk_media_stream_seek_success()`,
/// `gtk_media_stream_seek_failed()`,
/// `gtk_media_stream_gerror()`,
/// `gtk_media_stream_error()`,
/// `gtk_media_stream_error_valist()`.
public struct MediaStreamRef: MediaStreamProtocol {
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

/// The `MediaStream` type acts as a reference-counted owner of an underlying `GtkMediaStream` instance.
/// It provides the methods that can operate on this data type through `MediaStreamProtocol` conformance.
/// Use `MediaStream` as a strong reference or owner of a `GtkMediaStream` instance.
///
/// `GtkMediaStream` is the integration point for media playback inside GTK.
/// 
/// Apart from application-facing API for stream playback, `GtkMediaStream`
/// has a number of APIs that are only useful for implementations and should
/// not be used in applications:
/// `gtk_media_stream_prepared()`,
/// `gtk_media_stream_unprepared()`,
/// `gtk_media_stream_update()`,
/// `gtk_media_stream_ended()`,
/// `gtk_media_stream_seek_success()`,
/// `gtk_media_stream_seek_failed()`,
/// `gtk_media_stream_gerror()`,
/// `gtk_media_stream_error()`,
/// `gtk_media_stream_error_valist()`.
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
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MediaStreamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
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
    /// `nil` for a properly working stream or the `GError` that the stream is in.
    case error = "error"
    /// Whether the stream contains audio
    case hasAudio = "has-audio"
    /// Whether the stream contains video
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
    /// The stream's duration in microseconds or 0 if unknown.
    case notifyDuration = "notify::duration"
    /// Set when playback has finished.
    case notifyEnded = "notify::ended"
    /// `nil` for a properly working stream or the `GError` that the stream is in.
    case notifyGLibError = "notify::error"
    /// Whether the stream contains audio
    case notifyHasAudio = "notify::has-audio"
    /// Whether the stream contains video
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

public extension MediaStreamProtocol {
    /// Connect a `MediaStreamSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: MediaStreamSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: MediaStream Class: MediaStreamProtocol extension (methods and fields)
public extension MediaStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMediaStream` instance.
    @inlinable var media_stream_ptr: UnsafeMutablePointer<GtkMediaStream>! { return ptr?.assumingMemoryBound(to: GtkMediaStream.self) }

    /// Pauses the media stream and marks it as ended. This is a hint only, calls
    /// to `GtkMediaStream.play()` may still happen.
    @inlinable func getEnded() {
        gtk_media_stream_ended(media_stream_ptr)
    
    }


    // *** getError() is not available because it has a varargs (...) parameter!


    /// Sets `self` into an error state using a `printf()`-style format string.
    /// 
    /// This is a utility function that calls `gtk_media_stream_gerror()`. See
    /// that function for details.
    @inlinable func errorValist(domain: GQuark, code: Int, format: UnsafePointer<CChar>!, args: CVaListPointer) {
        gtk_media_stream_error_valist(media_stream_ptr, domain, gint(code), format, args)
    
    }

    /// Sets `self` into an error state. This will pause the stream
    /// (you can check for an error via `gtk_media_stream_get_error()` in
    /// your `GtkMediaStream.pause()` implementation), abort pending seeks
    /// and mark the stream as prepared.
    /// 
    /// if the stream is already in an error state, this call will be ignored
    /// and the existing error will be retained.
    /// FIXME: Or do we want to set the new error?
    /// 
    /// To unset an error, the stream must be reset via a call to
    /// `gtk_media_stream_unprepared()`.
    @inlinable func gerror<GLibErrorT: ErrorProtocol>(error: GLibErrorT) {
        gtk_media_stream_gerror(media_stream_ptr, error.error_ptr)
    
    }

    /// Gets the duration of the stream. If the duration is not known,
    /// 0 will be returned.
    @inlinable func getDuration() -> gint64 {
        let rv = gtk_media_stream_get_duration(media_stream_ptr)
        return rv
    }

    /// Returns whether the streams playback is finished.
    @inlinable func getEnded() -> Bool {
        let rv = ((gtk_media_stream_get_ended(media_stream_ptr)) != 0)
        return rv
    }

    /// If the stream is in an error state, returns the `GError` explaining that state.
    /// Any type of error can be reported here depending on the implementation of the
    /// media stream.
    /// 
    /// A media stream in an error cannot be operated on, calls like
    /// `gtk_media_stream_play()` or `gtk_media_stream_seek()` will not have any effect.
    /// 
    /// `GtkMediaStream` itself does not provide a way to unset an error, but
    /// implementations may provide options. For example, a `GtkMediaFile` will unset
    /// errors when a new source is set with ie `gtk_media_file_set_file()`.
    @inlinable func getError() -> GLib.ErrorRef! {
        let rv = GLib.ErrorRef(gtk_media_stream_get_error(media_stream_ptr))
        return rv
    }

    /// Returns whether the stream is set to loop. See
    /// `gtk_media_stream_set_loop()` for details.
    @inlinable func getLoop() -> Bool {
        let rv = ((gtk_media_stream_get_loop(media_stream_ptr)) != 0)
        return rv
    }

    /// Returns whether the audio for the stream is muted.
    /// See `gtk_media_stream_set_muted()` for details.
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
    /// See `gtk_media_stream_set_volume()` for details.
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

    /// Pauses playback of the stream. If the stream
    /// is not playing, do nothing.
    @inlinable func pause() {
        gtk_media_stream_pause(media_stream_ptr)
    
    }

    /// Starts playing the stream. If the stream
    /// is in error or already playing, do nothing.
    @inlinable func play() {
        gtk_media_stream_play(media_stream_ptr)
    
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
    /// reset via `gtk_media_stream_unprepared()`.
    @inlinable func prepared(hasAudio: Bool, hasVideo: Bool, seekable: Bool, duration: gint64) {
        gtk_media_stream_prepared(media_stream_ptr, gboolean((hasAudio) ? 1 : 0), gboolean((hasVideo) ? 1 : 0), gboolean((seekable) ? 1 : 0), duration)
    
    }

    /// Called by users to attach the media stream to a `GdkSurface` they manage.
    /// The stream can then access the resources of `surface` for its rendering
    /// purposes. In particular, media streams might want to create
    /// `GdkGLContexts` or sync to the `GdkFrameClock`.
    /// 
    /// Whoever calls this function is responsible for calling
    /// `gtk_media_stream_unrealize()` before either the stream or `surface` get
    /// destroyed.
    /// 
    /// Multiple calls to this function may happen from different users of the
    /// video, even with the same `surface`. Each of these calls must be followed
    /// by its own call to `gtk_media_stream_unrealize()`.
    /// 
    /// It is not required to call this function to make a media stream work.
    @inlinable func realize(surface: UnsafeMutablePointer<GdkSurface>!) {
        gtk_media_stream_realize(media_stream_ptr, surface)
    
    }

    /// Start a seek operation on `self` to `timestamp`. If `timestamp` is out of range,
    /// it will be clamped.
    /// 
    /// Seek operations may not finish instantly. While a seek operation is
    /// in process, the GtkMediaStream:seeking property will be set.
    /// 
    /// When calling `gtk_media_stream_seek()` during an ongoing seek operation,
    /// the new seek will override any pending seek.
    @inlinable func seek(timestamp: gint64) {
        gtk_media_stream_seek(media_stream_ptr, timestamp)
    
    }

    /// Ends a seek operation started via `GtkMediaStream.seek()` as a failure.
    /// This will not cause an error on the stream and will assume that
    /// playback continues as if no seek had happened.
    /// 
    /// See `gtk_media_stream_seek_success()` for the other way of
    /// ending a seek.
    @inlinable func seekFailed() {
        gtk_media_stream_seek_failed(media_stream_ptr)
    
    }

    /// Ends a seek operation started via `GtkMediaStream.seek()` successfully.
    /// This function will unset the GtkMediaStream:ended property if it was
    /// set.
    /// 
    /// See `gtk_media_stream_seek_failed()` for the other way of
    /// ending a seek.
    @inlinable func seekSuccess() {
        gtk_media_stream_seek_success(media_stream_ptr)
    
    }

    /// Sets whether the stream should loop, ie restart playback from
    /// the beginning instead of stopping at the end.
    /// 
    /// Not all streams may support looping, in particular non-seekable
    /// streams. Those streams will ignore the loop setting and just end.
    @inlinable func set(loop: Bool) {
        gtk_media_stream_set_loop(media_stream_ptr, gboolean((loop) ? 1 : 0))
    
    }

    /// Sets whether the audio stream should be muted. Muting a stream will
    /// cause no audio to be played, but it does not modify the volume.
    /// This means that muting and then unmuting the stream will restore
    /// the volume settings.
    /// 
    /// If the stream has no audio, calling this function will still work
    /// but it will not have an audible effect.
    @inlinable func set(muted: Bool) {
        gtk_media_stream_set_muted(media_stream_ptr, gboolean((muted) ? 1 : 0))
    
    }

    /// Starts or pauses playback of the stream.
    @inlinable func set(playing: Bool) {
        gtk_media_stream_set_playing(media_stream_ptr, gboolean((playing) ? 1 : 0))
    
    }

    /// Sets the volume of the audio stream. This function call will work even if
    /// the stream is muted.
    /// 
    /// The given `volume` should range from 0.0 for silence to 1.0 for as loud as
    /// possible. Values outside of this range will be clamped to the nearest
    /// value.
    /// 
    /// If the stream has no audio or is muted, calling this function will still
    /// work but it will not have an immediate audible effect. When the stream is
    /// unmuted, the new volume setting will take effect.
    @inlinable func set(volume: CDouble) {
        gtk_media_stream_set_volume(media_stream_ptr, volume)
    
    }

    /// Resets a given media stream implementation. `gtk_media_stream_prepared()`
    /// can now be called again.
    /// 
    /// This function will also reset any error state the stream was in.
    @inlinable func unprepared() {
        gtk_media_stream_unprepared(media_stream_ptr)
    
    }

    /// Undoes a previous call to `gtk_media_stream_realize()` and causes
    /// the stream to release all resources it had allocated from `surface`.
    @inlinable func unrealize(surface: UnsafeMutablePointer<GdkSurface>!) {
        gtk_media_stream_unrealize(media_stream_ptr, surface)
    
    }

    /// Media stream implementations should regularly call this function to
    /// update the timestamp reported by the stream. It is up to
    /// implementations to call this at the frequency they deem appropriate.
    @inlinable func update(timestamp: gint64) {
        gtk_media_stream_update(media_stream_ptr, timestamp)
    
    }
    /// The stream's duration in microseconds or 0 if unknown.
    @inlinable var duration: gint64 {
        /// Gets the duration of the stream. If the duration is not known,
        /// 0 will be returned.
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

    /// `nil` for a properly working stream or the `GError` that the stream is in.
    @inlinable var error: GLib.ErrorRef! {
        /// If the stream is in an error state, returns the `GError` explaining that state.
        /// Any type of error can be reported here depending on the implementation of the
        /// media stream.
        /// 
        /// A media stream in an error cannot be operated on, calls like
        /// `gtk_media_stream_play()` or `gtk_media_stream_seek()` will not have any effect.
        /// 
        /// `GtkMediaStream` itself does not provide a way to unset an error, but
        /// implementations may provide options. For example, a `GtkMediaFile` will unset
        /// errors when a new source is set with ie `gtk_media_file_set_file()`.
        get {
            let rv = GLib.ErrorRef(gtk_media_stream_get_error(media_stream_ptr))
            return rv
        }
    }

    /// Returns whether the stream has finished initializing and existence of
    /// audio and video is known.
    @inlinable var isPrepared: Bool {
        /// Returns whether the stream has finished initializing and existence of
        /// audio and video is known.
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
    /// It is allowed to call `gtk_media_stream_seek()` on a non-seekable
    /// stream, though it will not do anything.
    @inlinable var isSeekable: Bool {
        /// Checks if a stream may be seekable.
        /// 
        /// This is meant to be a hint. Streams may not allow seeking even if
        /// this function returns `true`. However, if this function returns
        /// `false`, streams are guaranteed to not be seekable and user interfaces
        /// may hide controls that allow seeking.
        /// 
        /// It is allowed to call `gtk_media_stream_seek()` on a non-seekable
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
        /// Returns whether the stream is set to loop. See
        /// `gtk_media_stream_set_loop()` for details.
        get {
            let rv = ((gtk_media_stream_get_loop(media_stream_ptr)) != 0)
            return rv
        }
        /// Sets whether the stream should loop, ie restart playback from
        /// the beginning instead of stopping at the end.
        /// 
        /// Not all streams may support looping, in particular non-seekable
        /// streams. Those streams will ignore the loop setting and just end.
        nonmutating set {
            gtk_media_stream_set_loop(media_stream_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Whether the audio stream should be muted.
    @inlinable var muted: Bool {
        /// Returns whether the audio for the stream is muted.
        /// See `gtk_media_stream_set_muted()` for details.
        get {
            let rv = ((gtk_media_stream_get_muted(media_stream_ptr)) != 0)
            return rv
        }
        /// Sets whether the audio stream should be muted. Muting a stream will
        /// cause no audio to be played, but it does not modify the volume.
        /// This means that muting and then unmuting the stream will restore
        /// the volume settings.
        /// 
        /// If the stream has no audio, calling this function will still work
        /// but it will not have an audible effect.
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
        /// See `gtk_media_stream_set_volume()` for details.
        get {
            let rv = gtk_media_stream_get_volume(media_stream_ptr)
            return rv
        }
        /// Sets the volume of the audio stream. This function call will work even if
        /// the stream is muted.
        /// 
        /// The given `volume` should range from 0.0 for silence to 1.0 for as loud as
        /// possible. Values outside of this range will be clamped to the nearest
        /// value.
        /// 
        /// If the stream has no audio or is muted, calling this function will still
        /// work but it will not have an immediate audible effect. When the stream is
        /// unmuted, the new volume setting will take effect.
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

/// The `MenuButtonProtocol` protocol exposes the methods and properties of an underlying `GtkMenuButton` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuButton`.
/// Alternatively, use `MenuButtonRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkMenuButton` widget is used to display a popup when clicked on.
/// This popup can be provided either as a `GtkPopover` or as an abstract
/// `GMenuModel`.
/// 
/// The `GtkMenuButton` widget can show either an icon (set with the
/// `GtkMenuButton:icon`-name property) or a label (set with the
/// `GtkMenuButton:label` property). If neither is explicitly set,
/// a `GtkImage` is automatically created, using an arrow image oriented
/// according to `GtkMenuButton:direction` or the generic “open-menu-symbolic”
/// icon if the direction is not set.
/// 
/// The positioning of the popup is determined by the `GtkMenuButton:direction`
/// property of the menu button.
/// 
/// For menus, the `GtkWidget:halign` and `GtkWidget:valign` properties of the
/// menu are also taken into account. For example, when the direction is
/// `GTK_ARROW_DOWN` and the horizontal alignment is `GTK_ALIGN_START`, the
/// menu will be positioned below the button, with the starting edge
/// (depending on the text direction) of the menu aligned with the starting
/// edge of the button. If there is not enough space below the button, the
/// menu is popped up above the button instead. If the alignment would move
/// part of the menu offscreen, it is “pushed in”.
/// 
/// ## Direction = Down
/// 
/// - halign = start
/// 
///     ![](down-start.png)
/// 
/// - halign = center
/// 
///     ![](down-center.png)
/// 
/// - halign = end
/// 
///     ![](down-end.png)
/// 
/// ## Direction = Up
/// 
/// - halign = start
/// 
///     ![](up-start.png)
/// 
/// - halign = center
/// 
///     ![](up-center.png)
/// 
/// - halign = end
/// 
///     ![](up-end.png)
/// 
/// ## Direction = Left
/// 
/// - valign = start
/// 
///     ![](left-start.png)
/// 
/// - valign = center
/// 
///     ![](left-center.png)
/// 
/// - valign = end
/// 
///     ![](left-end.png)
/// 
/// ## Direction = Right
/// 
/// - valign = start
/// 
///     ![](right-start.png)
/// 
/// - valign = center
/// 
///     ![](right-center.png)
/// 
/// - valign = end
/// 
///     ![](right-end.png)
/// 
/// # CSS nodes
/// 
/// GtkMenuButton has a single CSS node with name button. To differentiate
/// it from a plain `GtkButton`, it gets the .popup style class.
/// 
/// # Accessibility
/// 
/// GtkMenuButton uses the `GTK_ACCESSIBLE_ROLE_BUTTON` role.
public protocol MenuButtonProtocol: WidgetProtocol {
        /// Untyped pointer to the underlying `GtkMenuButton` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMenuButton` instance.
    var menu_button_ptr: UnsafeMutablePointer<GtkMenuButton>! { get }

}

/// The `MenuButtonRef` type acts as a lightweight Swift reference to an underlying `GtkMenuButton` instance.
/// It exposes methods that can operate on this data type through `MenuButtonProtocol` conformance.
/// Use `MenuButtonRef` only as an `unowned` reference to an existing `GtkMenuButton` instance.
///
/// The `GtkMenuButton` widget is used to display a popup when clicked on.
/// This popup can be provided either as a `GtkPopover` or as an abstract
/// `GMenuModel`.
/// 
/// The `GtkMenuButton` widget can show either an icon (set with the
/// `GtkMenuButton:icon`-name property) or a label (set with the
/// `GtkMenuButton:label` property). If neither is explicitly set,
/// a `GtkImage` is automatically created, using an arrow image oriented
/// according to `GtkMenuButton:direction` or the generic “open-menu-symbolic”
/// icon if the direction is not set.
/// 
/// The positioning of the popup is determined by the `GtkMenuButton:direction`
/// property of the menu button.
/// 
/// For menus, the `GtkWidget:halign` and `GtkWidget:valign` properties of the
/// menu are also taken into account. For example, when the direction is
/// `GTK_ARROW_DOWN` and the horizontal alignment is `GTK_ALIGN_START`, the
/// menu will be positioned below the button, with the starting edge
/// (depending on the text direction) of the menu aligned with the starting
/// edge of the button. If there is not enough space below the button, the
/// menu is popped up above the button instead. If the alignment would move
/// part of the menu offscreen, it is “pushed in”.
/// 
/// ## Direction = Down
/// 
/// - halign = start
/// 
///     ![](down-start.png)
/// 
/// - halign = center
/// 
///     ![](down-center.png)
/// 
/// - halign = end
/// 
///     ![](down-end.png)
/// 
/// ## Direction = Up
/// 
/// - halign = start
/// 
///     ![](up-start.png)
/// 
/// - halign = center
/// 
///     ![](up-center.png)
/// 
/// - halign = end
/// 
///     ![](up-end.png)
/// 
/// ## Direction = Left
/// 
/// - valign = start
/// 
///     ![](left-start.png)
/// 
/// - valign = center
/// 
///     ![](left-center.png)
/// 
/// - valign = end
/// 
///     ![](left-end.png)
/// 
/// ## Direction = Right
/// 
/// - valign = start
/// 
///     ![](right-start.png)
/// 
/// - valign = center
/// 
///     ![](right-center.png)
/// 
/// - valign = end
/// 
///     ![](right-end.png)
/// 
/// # CSS nodes
/// 
/// GtkMenuButton has a single CSS node with name button. To differentiate
/// it from a plain `GtkButton`, it gets the .popup style class.
/// 
/// # Accessibility
/// 
/// GtkMenuButton uses the `GTK_ACCESSIBLE_ROLE_BUTTON` role.
public struct MenuButtonRef: MenuButtonProtocol {
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
    /// arrow as the only child. You can replace the child widget
    /// with another `GtkWidget` should you wish to.
    @inlinable init() {
        let rv = gtk_menu_button_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `MenuButton` type acts as a reference-counted owner of an underlying `GtkMenuButton` instance.
/// It provides the methods that can operate on this data type through `MenuButtonProtocol` conformance.
/// Use `MenuButton` as a strong reference or owner of a `GtkMenuButton` instance.
///
/// The `GtkMenuButton` widget is used to display a popup when clicked on.
/// This popup can be provided either as a `GtkPopover` or as an abstract
/// `GMenuModel`.
/// 
/// The `GtkMenuButton` widget can show either an icon (set with the
/// `GtkMenuButton:icon`-name property) or a label (set with the
/// `GtkMenuButton:label` property). If neither is explicitly set,
/// a `GtkImage` is automatically created, using an arrow image oriented
/// according to `GtkMenuButton:direction` or the generic “open-menu-symbolic”
/// icon if the direction is not set.
/// 
/// The positioning of the popup is determined by the `GtkMenuButton:direction`
/// property of the menu button.
/// 
/// For menus, the `GtkWidget:halign` and `GtkWidget:valign` properties of the
/// menu are also taken into account. For example, when the direction is
/// `GTK_ARROW_DOWN` and the horizontal alignment is `GTK_ALIGN_START`, the
/// menu will be positioned below the button, with the starting edge
/// (depending on the text direction) of the menu aligned with the starting
/// edge of the button. If there is not enough space below the button, the
/// menu is popped up above the button instead. If the alignment would move
/// part of the menu offscreen, it is “pushed in”.
/// 
/// ## Direction = Down
/// 
/// - halign = start
/// 
///     ![](down-start.png)
/// 
/// - halign = center
/// 
///     ![](down-center.png)
/// 
/// - halign = end
/// 
///     ![](down-end.png)
/// 
/// ## Direction = Up
/// 
/// - halign = start
/// 
///     ![](up-start.png)
/// 
/// - halign = center
/// 
///     ![](up-center.png)
/// 
/// - halign = end
/// 
///     ![](up-end.png)
/// 
/// ## Direction = Left
/// 
/// - valign = start
/// 
///     ![](left-start.png)
/// 
/// - valign = center
/// 
///     ![](left-center.png)
/// 
/// - valign = end
/// 
///     ![](left-end.png)
/// 
/// ## Direction = Right
/// 
/// - valign = start
/// 
///     ![](right-start.png)
/// 
/// - valign = center
/// 
///     ![](right-center.png)
/// 
/// - valign = end
/// 
///     ![](right-end.png)
/// 
/// # CSS nodes
/// 
/// GtkMenuButton has a single CSS node with name button. To differentiate
/// it from a plain `GtkButton`, it gets the .popup style class.
/// 
/// # Accessibility
/// 
/// GtkMenuButton uses the `GTK_ACCESSIBLE_ROLE_BUTTON` role.
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
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
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
    /// arrow as the only child. You can replace the child widget
    /// with another `GtkWidget` should you wish to.
    @inlinable public init() {
        let rv = gtk_menu_button_new()
        super.init(gpointer: gpointer(rv))
    }


}

public enum MenuButtonPropertyName: String, PropertyNameProtocol {
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
    /// The `GtkArrowType` representing the direction in which the
    /// menu or popover will be popped out.
    case direction = "direction"
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
    case hasFrame = "has-frame"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    case iconName = "icon-name"
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
    /// The `GMenuModel` from which the popup will be created.
    /// 
    /// See `gtk_menu_button_set_menu_model()` for the interaction with the
    /// `GtkMenuButton:popup` property.
    case menuModel = "menu-model"
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
    /// The `GtkPopover` that will be popped up when the button is clicked.
    case popover = "popover"
    case receivesDefault = "receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget or `nil` if
    /// the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
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
    case useUnderline = "use-underline"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
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
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The `direction`-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The `hide` signal is emitted when `widget` is hidden, for example with
    /// `gtk_widget_hide()`.
    case hide = "hide"
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
    /// `GdkSurface`, which means that `gtk_widget_realize()` has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// The `show` signal is emitted when `widget` is shown, for example with
    /// `gtk_widget_show()`.
    case show = "show"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The `state`-flags-changed signal is emitted when the widget state
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
    /// The `GtkArrowType` representing the direction in which the
    /// menu or popover will be popped out.
    case notifyDirection = "notify::direction"
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
    case notifyHasFrame = "notify::has-frame"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case notifyHexpandSet = "notify::hexpand-set"
    case notifyIconName = "notify::icon-name"
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
    /// The `GMenuModel` from which the popup will be created.
    /// 
    /// See `gtk_menu_button_set_menu_model()` for the interaction with the
    /// `GtkMenuButton:popup` property.
    case notifyMenuModel = "notify::menu-model"
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
    /// The `GtkPopover` that will be popped up when the button is clicked.
    case notifyPopover = "notify::popover"
    case notifyReceivesDefault = "notify::receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget or `nil` if
    /// the widget is not contained in a root widget.
    case notifyRoot = "notify::root"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
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
    case notifyUseUnderline = "notify::use-underline"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    case notifyWidthRequest = "notify::width-request"
}

public extension MenuButtonProtocol {
    /// Connect a `MenuButtonSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: MenuButtonSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: MenuButton Class: MenuButtonProtocol extension (methods and fields)
public extension MenuButtonProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenuButton` instance.
    @inlinable var menu_button_ptr: UnsafeMutablePointer<GtkMenuButton>! { return ptr?.assumingMemoryBound(to: GtkMenuButton.self) }

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
    /// If the button is not using a `GtkPopover`, this function
    /// returns `nil`.
    @inlinable func getPopover() -> PopoverRef! {
        let rv = PopoverRef(gconstpointer: gconstpointer(gtk_menu_button_get_popover(menu_button_ptr)))
        return rv
    }

    /// Returns whether an embedded underline in the text indicates a
    /// mnemonic. See `gtk_menu_button_set_use_underline()`.
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

    /// Sets `func` to be called when a popup is about to be shown.
    /// `func` should use one of
    /// 
    ///  - `gtk_menu_button_set_popover()`
    ///  - `gtk_menu_button_set_menu_model()`
    /// 
    /// to set a popup for `menu_button`.
    /// If `func` is non-`nil`, `menu_button` will always be sensitive.
    /// 
    /// Using this function will not reset the menu widget attached to `menu_button`.
    /// Instead, this can be done manually in `func`.
    @inlinable func setCreatePopupFunc(`func`: GtkMenuButtonCreatePopupFunc? = nil, userData: gpointer! = nil, destroyNotify: GDestroyNotify? = nil) {
        gtk_menu_button_set_create_popup_func(menu_button_ptr, `func`, userData, destroyNotify)
    
    }

    /// Sets the direction in which the popup will be popped up, as
    /// well as changing the arrow’s direction. The child will not
    /// be changed to an arrow if it was customized.
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

    /// Sets the `GMenuModel` from which the popup will be constructed,
    /// or `nil` to dissociate any existing menu model and disable the button.
    /// 
    /// A `GtkPopover` will be created from the menu model with `gtk_popover_menu_new_from_model()`.
    /// Actions will be connected as documented for this function.
    /// 
    /// If `GtkMenuButton:popover` is already set, it will be dissociated from the `menu_button`,
    /// and the property is set to `nil`.
    @inlinable func set(menuModel: GIO.MenuModelRef? = nil) {
        gtk_menu_button_set_menu_model(menu_button_ptr, menuModel?.menu_model_ptr)
    
    }
    /// Sets the `GMenuModel` from which the popup will be constructed,
    /// or `nil` to dissociate any existing menu model and disable the button.
    /// 
    /// A `GtkPopover` will be created from the menu model with `gtk_popover_menu_new_from_model()`.
    /// Actions will be connected as documented for this function.
    /// 
    /// If `GtkMenuButton:popover` is already set, it will be dissociated from the `menu_button`,
    /// and the property is set to `nil`.
    @inlinable func set<MenuModelT: GIO.MenuModelProtocol>(menuModel: MenuModelT?) {
        gtk_menu_button_set_menu_model(menu_button_ptr, menuModel?.menu_model_ptr)
    
    }

    /// Sets the `GtkPopover` that will be popped up when the `menu_button` is clicked,
    /// or `nil` to dissociate any existing popover and disable the button.
    /// 
    /// If `GtkMenuButton:menu`-model is set, the menu model is dissociated from the
    /// `menu_button`, and the property is set to `nil`.
    @inlinable func set(popover: WidgetRef? = nil) {
        gtk_menu_button_set_popover(menu_button_ptr, popover?.widget_ptr)
    
    }
    /// Sets the `GtkPopover` that will be popped up when the `menu_button` is clicked,
    /// or `nil` to dissociate any existing popover and disable the button.
    /// 
    /// If `GtkMenuButton:menu`-model is set, the menu model is dissociated from the
    /// `menu_button`, and the property is set to `nil`.
    @inlinable func set<WidgetT: WidgetProtocol>(popover: WidgetT?) {
        gtk_menu_button_set_popover(menu_button_ptr, popover?.widget_ptr)
    
    }

    /// If true, an underline in the text indicates the next character should be
    /// used for the mnemonic accelerator key.
    @inlinable func set(useUnderline: Bool) {
        gtk_menu_button_set_use_underline(menu_button_ptr, gboolean((useUnderline) ? 1 : 0))
    
    }
    /// The `GtkArrowType` representing the direction in which the
    /// menu or popover will be popped out.
    @inlinable var direction: GtkArrowType {
        /// Returns the direction the popup will be pointing at when popped up.
        get {
            let rv = gtk_menu_button_get_direction(menu_button_ptr)
            return rv
        }
        /// Sets the direction in which the popup will be popped up, as
        /// well as changing the arrow’s direction. The child will not
        /// be changed to an arrow if it was customized.
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
        /// Sets the `GMenuModel` from which the popup will be constructed,
        /// or `nil` to dissociate any existing menu model and disable the button.
        /// 
        /// A `GtkPopover` will be created from the menu model with `gtk_popover_menu_new_from_model()`.
        /// Actions will be connected as documented for this function.
        /// 
        /// If `GtkMenuButton:popover` is already set, it will be dissociated from the `menu_button`,
        /// and the property is set to `nil`.
        nonmutating set {
            gtk_menu_button_set_menu_model(menu_button_ptr, UnsafeMutablePointer<GMenuModel>(newValue?.menu_model_ptr))
        }
    }

    /// The `GtkPopover` that will be popped up when the button is clicked.
    @inlinable var popover: PopoverRef! {
        /// Returns the `GtkPopover` that pops out of the button.
        /// If the button is not using a `GtkPopover`, this function
        /// returns `nil`.
        get {
            let rv = PopoverRef(gconstpointer: gconstpointer(gtk_menu_button_get_popover(menu_button_ptr)))
            return rv
        }
        /// Sets the `GtkPopover` that will be popped up when the `menu_button` is clicked,
        /// or `nil` to dissociate any existing popover and disable the button.
        /// 
        /// If `GtkMenuButton:menu`-model is set, the menu model is dissociated from the
        /// `menu_button`, and the property is set to `nil`.
        nonmutating set {
            gtk_menu_button_set_popover(menu_button_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }

    /// Returns whether an embedded underline in the text indicates a
    /// mnemonic. See `gtk_menu_button_set_use_underline()`.
    @inlinable var useUnderline: Bool {
        /// Returns whether an embedded underline in the text indicates a
        /// mnemonic. See `gtk_menu_button_set_use_underline()`.
        get {
            let rv = ((gtk_menu_button_get_use_underline(menu_button_ptr)) != 0)
            return rv
        }
        /// If true, an underline in the text indicates the next character should be
        /// used for the mnemonic accelerator key.
        nonmutating set {
            gtk_menu_button_set_use_underline(menu_button_ptr, gboolean((newValue) ? 1 : 0))
        }
    }


}



// MARK: - MessageDialog Class

/// The `MessageDialogProtocol` protocol exposes the methods and properties of an underlying `GtkMessageDialog` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MessageDialog`.
/// Alternatively, use `MessageDialogRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkMessageDialog` presents a dialog with some message text. It’s simply a
/// convenience widget; you could construct the equivalent of `GtkMessageDialog`
/// from `GtkDialog` without too much effort, but `GtkMessageDialog` saves typing.
/// 
/// The easiest way to do a modal message dialog is to use the `GTK_DIALOG_MODAL`
/// flag, which will call `gtk_window_set_modal()` internally. The dialog will
/// prevent interaction with the parent window until it's hidden or destroyed.
/// You can use the `GtkDialog::response` signal to know when the user dismissed
/// the dialog.
/// 
/// An example for using a modal dialog:
/// (C Language Example):
/// ```C
///  GtkDialogFlags flags = GTK_DIALOG_DESTROY_WITH_PARENT | GTK_DIALOG_MODAL;
///  dialog = gtk_message_dialog_new (parent_window,
///                                   flags,
///                                   GTK_MESSAGE_ERROR,
///                                   GTK_BUTTONS_CLOSE,
///                                   "Error reading “%s”: %s",
///                                   filename,
///                                   g_strerror (errno));
///  // Destroy the dialog when the user responds to it
///  // (e.g. clicks a button)
/// 
///  g_signal_connect (dialog, "response",
///                    G_CALLBACK (gtk_window_destroy),
///                    NULL);
/// ```
/// 
/// You might do a non-modal `GtkMessageDialog` simply by omitting the
/// `GTK_DIALOG_MODAL` flag:
/// 
/// (C Language Example):
/// ```C
///  GtkDialogFlags flags = GTK_DIALOG_DESTROY_WITH_PARENT;
///  dialog = gtk_message_dialog_new (parent_window,
///                                   flags,
///                                   GTK_MESSAGE_ERROR,
///                                   GTK_BUTTONS_CLOSE,
///                                   "Error reading “%s”: %s",
///                                   filename,
///                                   g_strerror (errno));
/// 
///  // Destroy the dialog when the user responds to it
///  // (e.g. clicks a button)
///  g_signal_connect (dialog, "response",
///                    G_CALLBACK (gtk_window_destroy),
///                    NULL);
/// ```
/// 
/// # GtkMessageDialog as GtkBuildable
/// 
/// The GtkMessageDialog implementation of the GtkBuildable interface exposes
/// the message area as an internal child with the name “message_area”.
public protocol MessageDialogProtocol: DialogProtocol {
        /// Untyped pointer to the underlying `GtkMessageDialog` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMessageDialog` instance.
    var message_dialog_ptr: UnsafeMutablePointer<GtkMessageDialog>! { get }

}

/// The `MessageDialogRef` type acts as a lightweight Swift reference to an underlying `GtkMessageDialog` instance.
/// It exposes methods that can operate on this data type through `MessageDialogProtocol` conformance.
/// Use `MessageDialogRef` only as an `unowned` reference to an existing `GtkMessageDialog` instance.
///
/// `GtkMessageDialog` presents a dialog with some message text. It’s simply a
/// convenience widget; you could construct the equivalent of `GtkMessageDialog`
/// from `GtkDialog` without too much effort, but `GtkMessageDialog` saves typing.
/// 
/// The easiest way to do a modal message dialog is to use the `GTK_DIALOG_MODAL`
/// flag, which will call `gtk_window_set_modal()` internally. The dialog will
/// prevent interaction with the parent window until it's hidden or destroyed.
/// You can use the `GtkDialog::response` signal to know when the user dismissed
/// the dialog.
/// 
/// An example for using a modal dialog:
/// (C Language Example):
/// ```C
///  GtkDialogFlags flags = GTK_DIALOG_DESTROY_WITH_PARENT | GTK_DIALOG_MODAL;
///  dialog = gtk_message_dialog_new (parent_window,
///                                   flags,
///                                   GTK_MESSAGE_ERROR,
///                                   GTK_BUTTONS_CLOSE,
///                                   "Error reading “%s”: %s",
///                                   filename,
///                                   g_strerror (errno));
///  // Destroy the dialog when the user responds to it
///  // (e.g. clicks a button)
/// 
///  g_signal_connect (dialog, "response",
///                    G_CALLBACK (gtk_window_destroy),
///                    NULL);
/// ```
/// 
/// You might do a non-modal `GtkMessageDialog` simply by omitting the
/// `GTK_DIALOG_MODAL` flag:
/// 
/// (C Language Example):
/// ```C
///  GtkDialogFlags flags = GTK_DIALOG_DESTROY_WITH_PARENT;
///  dialog = gtk_message_dialog_new (parent_window,
///                                   flags,
///                                   GTK_MESSAGE_ERROR,
///                                   GTK_BUTTONS_CLOSE,
///                                   "Error reading “%s”: %s",
///                                   filename,
///                                   g_strerror (errno));
/// 
///  // Destroy the dialog when the user responds to it
///  // (e.g. clicks a button)
///  g_signal_connect (dialog, "response",
///                    G_CALLBACK (gtk_window_destroy),
///                    NULL);
/// ```
/// 
/// # GtkMessageDialog as GtkBuildable
/// 
/// The GtkMessageDialog implementation of the GtkBuildable interface exposes
/// the message area as an internal child with the name “message_area”.
public struct MessageDialogRef: MessageDialogProtocol {
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

/// The `MessageDialog` type acts as a reference-counted owner of an underlying `GtkMessageDialog` instance.
/// It provides the methods that can operate on this data type through `MessageDialogProtocol` conformance.
/// Use `MessageDialog` as a strong reference or owner of a `GtkMessageDialog` instance.
///
/// `GtkMessageDialog` presents a dialog with some message text. It’s simply a
/// convenience widget; you could construct the equivalent of `GtkMessageDialog`
/// from `GtkDialog` without too much effort, but `GtkMessageDialog` saves typing.
/// 
/// The easiest way to do a modal message dialog is to use the `GTK_DIALOG_MODAL`
/// flag, which will call `gtk_window_set_modal()` internally. The dialog will
/// prevent interaction with the parent window until it's hidden or destroyed.
/// You can use the `GtkDialog::response` signal to know when the user dismissed
/// the dialog.
/// 
/// An example for using a modal dialog:
/// (C Language Example):
/// ```C
///  GtkDialogFlags flags = GTK_DIALOG_DESTROY_WITH_PARENT | GTK_DIALOG_MODAL;
///  dialog = gtk_message_dialog_new (parent_window,
///                                   flags,
///                                   GTK_MESSAGE_ERROR,
///                                   GTK_BUTTONS_CLOSE,
///                                   "Error reading “%s”: %s",
///                                   filename,
///                                   g_strerror (errno));
///  // Destroy the dialog when the user responds to it
///  // (e.g. clicks a button)
/// 
///  g_signal_connect (dialog, "response",
///                    G_CALLBACK (gtk_window_destroy),
///                    NULL);
/// ```
/// 
/// You might do a non-modal `GtkMessageDialog` simply by omitting the
/// `GTK_DIALOG_MODAL` flag:
/// 
/// (C Language Example):
/// ```C
///  GtkDialogFlags flags = GTK_DIALOG_DESTROY_WITH_PARENT;
///  dialog = gtk_message_dialog_new (parent_window,
///                                   flags,
///                                   GTK_MESSAGE_ERROR,
///                                   GTK_BUTTONS_CLOSE,
///                                   "Error reading “%s”: %s",
///                                   filename,
///                                   g_strerror (errno));
/// 
///  // Destroy the dialog when the user responds to it
///  // (e.g. clicks a button)
///  g_signal_connect (dialog, "response",
///                    G_CALLBACK (gtk_window_destroy),
///                    NULL);
/// ```
/// 
/// # GtkMessageDialog as GtkBuildable
/// 
/// The GtkMessageDialog implementation of the GtkBuildable interface exposes
/// the message area as an internal child with the name “message_area”.
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
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
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
    case canTarget = "can-target"
    case child = "child"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`. See `gtk_widget_set_cursor()` for details.
    case cursor = "cursor"
    /// Whether the window should be decorated by the window manager.
    case decorated = "decorated"
    case defaultHeight = "default-height"
    case defaultWidget = "default-widget"
    case defaultWidth = "default-width"
    /// Whether the window frame should have a close button.
    case deletable = "deletable"
    case destroyWithParent = "destroy-with-parent"
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
    case focusWidget = "focus-widget"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// Whether the window is fullscreen.
    /// 
    /// Setting this property is the equivalent of calling `gtk_window_fullscreen()`
    /// and `gtk_window_unfullscreen()`; either operation is asynchronous, which
    /// means you will need to connect to the `GObject::notify` signal in order to
    /// know whether the operation was successful.
    case fullscreened = "fullscreened"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    case hideOnClose = "hide-on-close"
    /// The :icon-name property specifies the name of the themed icon to
    /// use as the window icon. See `GtkIconTheme` for more details.
    case iconName = "icon-name"
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
    /// Whether the window is maximized.
    /// 
    /// Setting this property is the equivalent of calling `gtk_window_maximize()`
    /// and `gtk_window_unmaximize()`; either operation is asynchronous, which
    /// means you will need to connect to the `GObject::notify` signal in order to
    /// know whether the operation was successful.
    case maximized = "maximized"
    /// The `GtkBox` that corresponds to the message area of this dialog.  See
    /// `gtk_message_dialog_get_message_area()` for a detailed description of this
    /// area.
    case messageArea = "message-area"
    /// The type of the message.
    case messageType = "message-type"
    /// Whether mnemonics are currently visible in this window.
    /// 
    /// This property is maintained by GTK based on user input,
    /// and should not be set by applications.
    case mnemonicsVisible = "mnemonics-visible"
    case modal = "modal"
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
    case resizable = "resizable"
    /// The `GtkRoot` widget of the widget tree containing this widget or `nil` if
    /// the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    /// The secondary text of the message dialog.
    case secondaryText = "secondary-text"
    /// `true` if the secondary text of the dialog includes Pango markup.
    /// See `pango_parse_markup()`.
    case secondaryUseMarkup = "secondary-use-markup"
    case sensitive = "sensitive"
    /// The :startup-id is a write-only property for setting window's
    /// startup notification identifier. See `gtk_window_set_startup_id()`
    /// for more details.
    case startupId = "startup-id"
    /// The primary text of the message dialog. If the dialog has
    /// a secondary text, this will appear as the title.
    case text = "text"
    case title = "title"
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
    /// The transient parent of the window. See `gtk_window_set_transient_for()` for
    /// more details about transient windows.
    case transientFor = "transient-for"
    /// `true` if the dialog uses a `GtkHeaderBar` for action buttons
    /// instead of the action-area.
    /// 
    /// For technical reasons, this property is declared as an integer
    /// property, but you should only set it to `true` or `false`.
    case useHeaderBar = "use-header-bar"
    /// `true` if the primary text of the dialog includes Pango markup.
    /// See `pango_parse_markup()`.
    case useMarkup = "use-markup"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
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
    /// The `activate`-default signal is a
    /// [keybinding signal](#GtkSignalAction)
    /// which gets emitted when the user activates the default widget
    /// of `window`.
    case activateDefault = "activate-default"
    /// The `activate`-focus signal is a
    /// [keybinding signal](#GtkSignalAction)
    /// which gets emitted when the user activates the currently
    /// focused widget of `window`.
    case activateFocus = "activate-focus"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// The `close` signal is a
    /// [keybinding signal](#GtkSignalAction)
    /// which gets emitted when the user uses a keybinding to close
    /// the dialog.
    /// 
    /// The default binding for this signal is the Escape key.
    case close = "close"
    /// The `close`-request signal is emitted when the user clicks on the close
    /// button of the window.
    case closeRequest = "close-request"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The `direction`-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The `enable`-debugging signal is a [keybinding signal](#GtkSignalAction)
    /// which gets emitted when the user enables or disables interactive
    /// debugging. When `toggle` is `true`, interactive debugging is toggled
    /// on or off, when it is `false`, the debugger will be pointed at the
    /// widget under the pointer.
    /// 
    /// The default bindings for this signal are Ctrl-Shift-I
    /// and Ctrl-Shift-D.
    case enableDebugging = "enable-debugging"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The `hide` signal is emitted when `widget` is hidden, for example with
    /// `gtk_widget_hide()`.
    case hide = "hide"
    /// Gets emitted if keyboard navigation fails.
    /// See `gtk_widget_keynav_failed()` for details.
    case keynavFailed = "keynav-failed"
    /// The `keys`-changed signal gets emitted when the set of accelerators
    /// or mnemonics that are associated with `window` changes.
    case keysChanged = "keys-changed"
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
    /// `GdkSurface`, which means that `gtk_widget_realize()` has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// Emitted when an action widget is clicked, the dialog receives a
    /// delete event, or the application programmer calls `gtk_dialog_response()`.
    /// On a delete event, the response ID is `GTK_RESPONSE_DELETE_EVENT`.
    /// Otherwise, it depends on which action widget was clicked.
    case response = "response"
    /// The `show` signal is emitted when `widget` is shown, for example with
    /// `gtk_widget_show()`.
    case show = "show"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The `state`-flags-changed signal is emitted when the widget state
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
    case notifyCanTarget = "notify::can-target"
    case notifyChild = "notify::child"
    /// A list of css classes applied to this widget.
    case notifyCssClasses = "notify::css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCssName = "notify::css-name"
    /// The cursor used by `widget`. See `gtk_widget_set_cursor()` for details.
    case notifyCursor = "notify::cursor"
    /// Whether the window should be decorated by the window manager.
    case notifyDecorated = "notify::decorated"
    case notifyDefaultHeight = "notify::default-height"
    case notifyDefaultWidget = "notify::default-widget"
    case notifyDefaultWidth = "notify::default-width"
    /// Whether the window frame should have a close button.
    case notifyDeletable = "notify::deletable"
    case notifyDestroyWithParent = "notify::destroy-with-parent"
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
    case notifyFocusWidget = "notify::focus-widget"
    /// Whether this widget itself will accept the input focus.
    case notifyFocusable = "notify::focusable"
    /// Whether the window is fullscreen.
    /// 
    /// Setting this property is the equivalent of calling `gtk_window_fullscreen()`
    /// and `gtk_window_unfullscreen()`; either operation is asynchronous, which
    /// means you will need to connect to the `GObject::notify` signal in order to
    /// know whether the operation was successful.
    case notifyFullscreened = "notify::fullscreened"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case notifyHalign = "notify::halign"
    case notifyHasDefault = "notify::has-default"
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case notifyHexpandSet = "notify::hexpand-set"
    case notifyHideOnClose = "notify::hide-on-close"
    /// The :icon-name property specifies the name of the themed icon to
    /// use as the window icon. See `GtkIconTheme` for more details.
    case notifyIconName = "notify::icon-name"
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
    /// Whether the window is maximized.
    /// 
    /// Setting this property is the equivalent of calling `gtk_window_maximize()`
    /// and `gtk_window_unmaximize()`; either operation is asynchronous, which
    /// means you will need to connect to the `GObject::notify` signal in order to
    /// know whether the operation was successful.
    case notifyMaximized = "notify::maximized"
    /// The `GtkBox` that corresponds to the message area of this dialog.  See
    /// `gtk_message_dialog_get_message_area()` for a detailed description of this
    /// area.
    case notifyMessageArea = "notify::message-area"
    /// The type of the message.
    case notifyMessageType = "notify::message-type"
    /// Whether mnemonics are currently visible in this window.
    /// 
    /// This property is maintained by GTK based on user input,
    /// and should not be set by applications.
    case notifyMnemonicsVisible = "notify::mnemonics-visible"
    case notifyModal = "notify::modal"
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
    case notifyResizable = "notify::resizable"
    /// The `GtkRoot` widget of the widget tree containing this widget or `nil` if
    /// the widget is not contained in a root widget.
    case notifyRoot = "notify::root"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    /// The secondary text of the message dialog.
    case notifySecondaryText = "notify::secondary-text"
    /// `true` if the secondary text of the dialog includes Pango markup.
    /// See `pango_parse_markup()`.
    case notifySecondaryUseMarkup = "notify::secondary-use-markup"
    case notifySensitive = "notify::sensitive"
    /// The :startup-id is a write-only property for setting window's
    /// startup notification identifier. See `gtk_window_set_startup_id()`
    /// for more details.
    case notifyStartupId = "notify::startup-id"
    /// The primary text of the message dialog. If the dialog has
    /// a secondary text, this will appear as the title.
    case notifyText = "notify::text"
    case notifyTitle = "notify::title"
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
    /// The transient parent of the window. See `gtk_window_set_transient_for()` for
    /// more details about transient windows.
    case notifyTransientFor = "notify::transient-for"
    /// `true` if the dialog uses a `GtkHeaderBar` for action buttons
    /// instead of the action-area.
    /// 
    /// For technical reasons, this property is declared as an integer
    /// property, but you should only set it to `true` or `false`.
    case notifyUseHeaderBar = "notify::use-header-bar"
    /// `true` if the primary text of the dialog includes Pango markup.
    /// See `pango_parse_markup()`.
    case notifyUseMarkup = "notify::use-markup"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    case notifyWidthRequest = "notify::width-request"
}

public extension MessageDialogProtocol {
    /// Connect a `MessageDialogSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: MessageDialogSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: MessageDialog Class: MessageDialogProtocol extension (methods and fields)
public extension MessageDialogProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMessageDialog` instance.
    @inlinable var message_dialog_ptr: UnsafeMutablePointer<GtkMessageDialog>! { return ptr?.assumingMemoryBound(to: GtkMessageDialog.self) }


    // *** formatSecondaryMarkup() is not available because it has a varargs (...) parameter!



    // *** formatSecondaryText() is not available because it has a varargs (...) parameter!


    /// Returns the message area of the dialog. This is the box where the
    /// dialog’s primary and secondary labels are packed. You can add your
    /// own extra content to that box and it will appear below those labels.
    /// See `gtk_dialog_get_content_area()` for the corresponding
    /// function in the parent `GtkDialog`.
    @inlinable func getMessageArea() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_message_dialog_get_message_area(message_dialog_ptr))) else { return nil }
        return rv
    }

    /// Sets the text of the message dialog to be `str`, which is marked
    /// up with the [Pango text markup language](#PangoMarkupFormat).
    @inlinable func setMarkup(str: UnsafePointer<CChar>!) {
        gtk_message_dialog_set_markup(message_dialog_ptr, str)
    
    }
    /// Returns the message area of the dialog. This is the box where the
    /// dialog’s primary and secondary labels are packed. You can add your
    /// own extra content to that box and it will appear below those labels.
    /// See `gtk_dialog_get_content_area()` for the corresponding
    /// function in the parent `GtkDialog`.
    @inlinable var messageArea: WidgetRef! {
        /// Returns the message area of the dialog. This is the box where the
        /// dialog’s primary and secondary labels are packed. You can add your
        /// own extra content to that box and it will appear below those labels.
        /// See `gtk_dialog_get_content_area()` for the corresponding
        /// function in the parent `GtkDialog`.
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

/// The `MnemonicActionProtocol` protocol exposes the methods and properties of an underlying `GtkMnemonicAction` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MnemonicAction`.
/// Alternatively, use `MnemonicActionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GtkShortcutAction` that calls `gtk_widget_mnemonic_activate()`.
public protocol MnemonicActionProtocol: ShortcutActionProtocol {
        /// Untyped pointer to the underlying `GtkMnemonicAction` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMnemonicAction` instance.
    var mnemonic_action_ptr: UnsafeMutablePointer<GtkMnemonicAction>! { get }

}

/// The `MnemonicActionRef` type acts as a lightweight Swift reference to an underlying `GtkMnemonicAction` instance.
/// It exposes methods that can operate on this data type through `MnemonicActionProtocol` conformance.
/// Use `MnemonicActionRef` only as an `unowned` reference to an existing `GtkMnemonicAction` instance.
///
/// A `GtkShortcutAction` that calls `gtk_widget_mnemonic_activate()`.
public struct MnemonicActionRef: MnemonicActionProtocol {
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

/// The `MnemonicAction` type acts as a reference-counted owner of an underlying `GtkMnemonicAction` instance.
/// It provides the methods that can operate on this data type through `MnemonicActionProtocol` conformance.
/// Use `MnemonicAction` as a strong reference or owner of a `GtkMnemonicAction` instance.
///
/// A `GtkShortcutAction` that calls `gtk_widget_mnemonic_activate()`.
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
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MnemonicActionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
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

}

public extension MnemonicActionProtocol {
    /// Connect a `MnemonicActionSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: MnemonicActionSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: MnemonicAction Class: MnemonicActionProtocol extension (methods and fields)
public extension MnemonicActionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMnemonicAction` instance.
    @inlinable var mnemonic_action_ptr: UnsafeMutablePointer<GtkMnemonicAction>! { return ptr?.assumingMemoryBound(to: GtkMnemonicAction.self) }



}



// MARK: - MnemonicTrigger Class

/// The `MnemonicTriggerProtocol` protocol exposes the methods and properties of an underlying `GtkMnemonicTrigger` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MnemonicTrigger`.
/// Alternatively, use `MnemonicTriggerRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GtkShortcutTrigger` that triggers when a specific mnemonic
/// is pressed.
public protocol MnemonicTriggerProtocol: ShortcutTriggerProtocol {
        /// Untyped pointer to the underlying `GtkMnemonicTrigger` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMnemonicTrigger` instance.
    var mnemonic_trigger_ptr: UnsafeMutablePointer<GtkMnemonicTrigger>! { get }

}

/// The `MnemonicTriggerRef` type acts as a lightweight Swift reference to an underlying `GtkMnemonicTrigger` instance.
/// It exposes methods that can operate on this data type through `MnemonicTriggerProtocol` conformance.
/// Use `MnemonicTriggerRef` only as an `unowned` reference to an existing `GtkMnemonicTrigger` instance.
///
/// A `GtkShortcutTrigger` that triggers when a specific mnemonic
/// is pressed.
public struct MnemonicTriggerRef: MnemonicTriggerProtocol {
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

/// The `MnemonicTrigger` type acts as a reference-counted owner of an underlying `GtkMnemonicTrigger` instance.
/// It provides the methods that can operate on this data type through `MnemonicTriggerProtocol` conformance.
/// Use `MnemonicTrigger` as a strong reference or owner of a `GtkMnemonicTrigger` instance.
///
/// A `GtkShortcutTrigger` that triggers when a specific mnemonic
/// is pressed.
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
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MnemonicTriggerProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
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
    /// The key value for the trigger.
    case notifyKeyval = "notify::keyval"
}

public extension MnemonicTriggerProtocol {
    /// Connect a `MnemonicTriggerSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: MnemonicTriggerSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

/// The `MountOperationProtocol` protocol exposes the methods and properties of an underlying `GtkMountOperation` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MountOperation`.
/// Alternatively, use `MountOperationRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// This should not be accessed directly. Use the accessor functions below.
public protocol MountOperationProtocol: GIO.MountOperationProtocol {
        /// Untyped pointer to the underlying `GtkMountOperation` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMountOperation` instance.
    var mount_operation_ptr: UnsafeMutablePointer<GtkMountOperation>! { get }

}

/// The `MountOperationRef` type acts as a lightweight Swift reference to an underlying `GtkMountOperation` instance.
/// It exposes methods that can operate on this data type through `MountOperationProtocol` conformance.
/// Use `MountOperationRef` only as an `unowned` reference to an existing `GtkMountOperation` instance.
///
/// This should not be accessed directly. Use the accessor functions below.
public struct MountOperationRef: MountOperationProtocol {
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

/// The `MountOperation` type acts as a reference-counted owner of an underlying `GtkMountOperation` instance.
/// It provides the methods that can operate on this data type through `MountOperationProtocol` conformance.
/// Use `MountOperation` as a strong reference or owner of a `GtkMountOperation` instance.
///
/// This should not be accessed directly. Use the accessor functions below.
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
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
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
    /// mount operation. See the `GMountOperation::ask`-question signal.
    case choice = "choice"
    case display = "display"
    /// The domain to use for the mount operation.
    case domain = "domain"
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
    /// mount operation. See the `GMountOperation::ask`-question signal.
    case notifyChoice = "notify::choice"
    case notifyDisplay = "notify::display"
    /// The domain to use for the mount operation.
    case notifyDomain = "notify::domain"
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

public extension MountOperationProtocol {
    /// Connect a `MountOperationSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: MountOperationSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

    /// Gets the transient parent used by the `GtkMountOperation`
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

    @inlinable var parent: WindowRef! {
        /// Gets the transient parent used by the `GtkMountOperation`
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

    @inlinable var priv: MountOperationPrivateRef! {
        get {
            let rv = MountOperationPrivateRef(gconstpointer: gconstpointer(mount_operation_ptr.pointee.priv))
            return rv
        }
    }

}



// MARK: - MultiFilter Class

/// The `MultiFilterProtocol` protocol exposes the methods and properties of an underlying `GtkMultiFilter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MultiFilter`.
/// Alternatively, use `MultiFilterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkMultiFilter is the base type that implements support for handling
/// multiple filters.
/// 
/// GtkAnyFilter is a subclass of GtkMultiFilter that matches an item
/// when at least one of its filters matches.
/// 
/// GtkEveryFilter is a subclass of GtkMultiFilter that matches an item
/// when each of its filters matches.
public protocol MultiFilterProtocol: FilterProtocol, GIO.ListModelProtocol, BuildableProtocol {
        /// Untyped pointer to the underlying `GtkMultiFilter` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMultiFilter` instance.
    var multi_filter_ptr: UnsafeMutablePointer<GtkMultiFilter>! { get }

}

/// The `MultiFilterRef` type acts as a lightweight Swift reference to an underlying `GtkMultiFilter` instance.
/// It exposes methods that can operate on this data type through `MultiFilterProtocol` conformance.
/// Use `MultiFilterRef` only as an `unowned` reference to an existing `GtkMultiFilter` instance.
///
/// GtkMultiFilter is the base type that implements support for handling
/// multiple filters.
/// 
/// GtkAnyFilter is a subclass of GtkMultiFilter that matches an item
/// when at least one of its filters matches.
/// 
/// GtkEveryFilter is a subclass of GtkMultiFilter that matches an item
/// when each of its filters matches.
public struct MultiFilterRef: MultiFilterProtocol {
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

/// The `MultiFilter` type acts as a reference-counted owner of an underlying `GtkMultiFilter` instance.
/// It provides the methods that can operate on this data type through `MultiFilterProtocol` conformance.
/// Use `MultiFilter` as a strong reference or owner of a `GtkMultiFilter` instance.
///
/// GtkMultiFilter is the base type that implements support for handling
/// multiple filters.
/// 
/// GtkAnyFilter is a subclass of GtkMultiFilter that matches an item
/// when at least one of its filters matches.
/// 
/// GtkEveryFilter is a subclass of GtkMultiFilter that matches an item
/// when each of its filters matches.
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
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiFilterProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
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
    /// This signal is emitted whenever the filter changed. Users of the filter
    /// should then check items again via `gtk_filter_match()`.
    /// 
    /// `GtkFilterListModel` handles this signal automatically.
    /// 
    /// Depending on the `change` parameter, not all items need to be changed, but
    /// only some. Refer to the `GtkFilterChange` documentation for details.
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

}

public extension MultiFilterProtocol {
    /// Connect a `MultiFilterSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: MultiFilterSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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
    /// If `position` is larger than the number of filters, nothing happens and
    /// the function returns.
    @inlinable func remove(position: Int) {
        gtk_multi_filter_remove(multi_filter_ptr, guint(position))
    
    }


}



// MARK: - MultiSelection Class

/// The `MultiSelectionProtocol` protocol exposes the methods and properties of an underlying `GtkMultiSelection` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MultiSelection`.
/// Alternatively, use `MultiSelectionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkMultiSelection is an implementation of the `GtkSelectionModel` interface
/// that allows selecting multiple elements.
public protocol MultiSelectionProtocol: GLibObject.ObjectProtocol, GIO.ListModelProtocol, SelectionModelProtocol {
        /// Untyped pointer to the underlying `GtkMultiSelection` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMultiSelection` instance.
    var multi_selection_ptr: UnsafeMutablePointer<GtkMultiSelection>! { get }

}

/// The `MultiSelectionRef` type acts as a lightweight Swift reference to an underlying `GtkMultiSelection` instance.
/// It exposes methods that can operate on this data type through `MultiSelectionProtocol` conformance.
/// Use `MultiSelectionRef` only as an `unowned` reference to an existing `GtkMultiSelection` instance.
///
/// GtkMultiSelection is an implementation of the `GtkSelectionModel` interface
/// that allows selecting multiple elements.
public struct MultiSelectionRef: MultiSelectionProtocol {
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

/// The `MultiSelection` type acts as a reference-counted owner of an underlying `GtkMultiSelection` instance.
/// It provides the methods that can operate on this data type through `MultiSelectionProtocol` conformance.
/// Use `MultiSelection` as a strong reference or owner of a `GtkMultiSelection` instance.
///
/// GtkMultiSelection is an implementation of the `GtkSelectionModel` interface
/// that allows selecting multiple elements.
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
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiSelectionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
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
    }


}

public enum MultiSelectionPropertyName: String, PropertyNameProtocol {
    /// The list managed by this selection
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
    /// The list managed by this selection
    case notifyModel = "notify::model"
}

public extension MultiSelectionProtocol {
    /// Connect a `MultiSelectionSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: MultiSelectionSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: MultiSelection Class: MultiSelectionProtocol extension (methods and fields)
public extension MultiSelectionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMultiSelection` instance.
    @inlinable var multi_selection_ptr: UnsafeMutablePointer<GtkMultiSelection>! { return ptr?.assumingMemoryBound(to: GtkMultiSelection.self) }

    /// Returns the underlying model of `self`.
    @inlinable func getModel() -> GIO.ListModelRef! {
        let rv = GIO.ListModelRef(gtk_multi_selection_get_model(multi_selection_ptr))
        return rv
    }

    /// Sets the model that `self` should wrap. If `model` is `nil`, `self`
    /// will be empty.
    @inlinable func set(model: GIO.ListModelRef? = nil) {
        gtk_multi_selection_set_model(multi_selection_ptr, model?.list_model_ptr)
    
    }
    /// Sets the model that `self` should wrap. If `model` is `nil`, `self`
    /// will be empty.
    @inlinable func set<ListModelT: GIO.ListModelProtocol>(model: ListModelT?) {
        gtk_multi_selection_set_model(multi_selection_ptr, model?.list_model_ptr)
    
    }
    /// The list managed by this selection
    @inlinable var model: GIO.ListModelRef! {
        /// Returns the underlying model of `self`.
        get {
            let rv = GIO.ListModelRef(gtk_multi_selection_get_model(multi_selection_ptr))
            return rv
        }
        /// Sets the model that `self` should wrap. If `model` is `nil`, `self`
        /// will be empty.
        nonmutating set {
            gtk_multi_selection_set_model(multi_selection_ptr, UnsafeMutablePointer<GListModel>(newValue?.list_model_ptr))
        }
    }


}



// MARK: - MultiSorter Class

/// The `MultiSorterProtocol` protocol exposes the methods and properties of an underlying `GtkMultiSorter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MultiSorter`.
/// Alternatively, use `MultiSorterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkMultiSorter combines multiple sorters by trying them
/// in turn. If the first sorter compares two items as equal,
/// the second is tried next, and so on.
public protocol MultiSorterProtocol: SorterProtocol, GIO.ListModelProtocol, BuildableProtocol {
        /// Untyped pointer to the underlying `GtkMultiSorter` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMultiSorter` instance.
    var multi_sorter_ptr: UnsafeMutablePointer<GtkMultiSorter>! { get }

}

/// The `MultiSorterRef` type acts as a lightweight Swift reference to an underlying `GtkMultiSorter` instance.
/// It exposes methods that can operate on this data type through `MultiSorterProtocol` conformance.
/// Use `MultiSorterRef` only as an `unowned` reference to an existing `GtkMultiSorter` instance.
///
/// GtkMultiSorter combines multiple sorters by trying them
/// in turn. If the first sorter compares two items as equal,
/// the second is tried next, and so on.
public struct MultiSorterRef: MultiSorterProtocol {
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

/// The `MultiSorter` type acts as a reference-counted owner of an underlying `GtkMultiSorter` instance.
/// It provides the methods that can operate on this data type through `MultiSorterProtocol` conformance.
/// Use `MultiSorter` as a strong reference or owner of a `GtkMultiSorter` instance.
///
/// GtkMultiSorter combines multiple sorters by trying them
/// in turn. If the first sorter compares two items as equal,
/// the second is tried next, and so on.
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
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MultiSorterProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
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
    }


}

// MARK: no MultiSorter properties

public enum MultiSorterSignalName: String, SignalNameProtocol {
    /// This signal is emitted whenever the sorter changed. Users of the sorter
    /// should then update the sort order again via `gtk_sorter_compare()`.
    /// 
    /// `GtkSortListModel` handles this signal automatically.
    /// 
    /// Depending on the `change` parameter, it may be possible to update
    /// the sort order without a full resorting. Refer to the `GtkSorterChange`
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

}

public extension MultiSorterProtocol {
    /// Connect a `MultiSorterSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: MultiSorterSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: MultiSorter Class: MultiSorterProtocol extension (methods and fields)
public extension MultiSorterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMultiSorter` instance.
    @inlinable var multi_sorter_ptr: UnsafeMutablePointer<GtkMultiSorter>! { return ptr?.assumingMemoryBound(to: GtkMultiSorter.self) }

    /// Add `sorter` to `self` to use for sorting at the end. `self`
    /// will consult all existing sorters before it will sort with
    /// the given `sorter`.
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

/// The `NamedActionProtocol` protocol exposes the methods and properties of an underlying `GtkNamedAction` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NamedAction`.
/// Alternatively, use `NamedActionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GtkShortcutAction` that activates an action by name.
public protocol NamedActionProtocol: ShortcutActionProtocol {
        /// Untyped pointer to the underlying `GtkNamedAction` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkNamedAction` instance.
    var named_action_ptr: UnsafeMutablePointer<GtkNamedAction>! { get }

}

/// The `NamedActionRef` type acts as a lightweight Swift reference to an underlying `GtkNamedAction` instance.
/// It exposes methods that can operate on this data type through `NamedActionProtocol` conformance.
/// Use `NamedActionRef` only as an `unowned` reference to an existing `GtkNamedAction` instance.
///
/// A `GtkShortcutAction` that activates an action by name.
public struct NamedActionRef: NamedActionProtocol {
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

/// The `NamedAction` type acts as a reference-counted owner of an underlying `GtkNamedAction` instance.
/// It provides the methods that can operate on this data type through `NamedActionProtocol` conformance.
/// Use `NamedAction` as a strong reference or owner of a `GtkNamedAction` instance.
///
/// A `GtkShortcutAction` that activates an action by name.
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
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NamedActionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
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
    /// The name of the action to activate.
    case notifyActionName = "notify::action-name"
}

public extension NamedActionProtocol {
    /// Connect a `NamedActionSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: NamedActionSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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



