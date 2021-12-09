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

// MARK: - Overlay Class

/// `GtkOverlay` is a container which contains a single main child, on top
/// of which it can place “overlay” widgets.
/// 
/// ![An example GtkOverlay](overlay.png)
/// 
/// The position of each overlay widget is determined by its
/// [property`Gtk.Widget:halign`] and [property`Gtk.Widget:valign`]
/// properties. E.g. a widget with both alignments set to `GTK_ALIGN_START`
/// will be placed at the top left corner of the `GtkOverlay` container,
/// whereas an overlay with halign set to `GTK_ALIGN_CENTER` and valign set
/// to `GTK_ALIGN_END` will be placed a the bottom edge of the `GtkOverlay`,
/// horizontally centered. The position can be adjusted by setting the margin
/// properties of the child to non-zero values.
/// 
/// More complicated placement of overlays is possible by connecting
/// to the [signal`Gtk.Overlay::get-child-position`] signal.
/// 
/// An overlay’s minimum and natural sizes are those of its main child.
/// The sizes of overlay children are not considered when measuring these
/// preferred sizes.
/// 
/// # GtkOverlay as GtkBuildable
/// 
/// The `GtkOverlay` implementation of the `GtkBuildable` interface
/// supports placing a child as an overlay by specifying “overlay” as
/// the “type” attribute of a `&lt;child&gt;` element.
/// 
/// # CSS nodes
/// 
/// `GtkOverlay` has a single CSS node with the name “overlay”. Overlay children
/// whose alignments cause them to be positioned at an edge get the style classes
/// “.left”, “.right”, “.top”, and/or “.bottom” according to their position.
///
/// The `OverlayProtocol` protocol exposes the methods and properties of an underlying `GtkOverlay` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Overlay`.
/// Alternatively, use `OverlayRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol OverlayProtocol: WidgetProtocol {
        /// Untyped pointer to the underlying `GtkOverlay` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkOverlay` instance.
    var overlay_ptr: UnsafeMutablePointer<GtkOverlay>! { get }

    /// Required Initialiser for types conforming to `OverlayProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkOverlay` is a container which contains a single main child, on top
/// of which it can place “overlay” widgets.
/// 
/// ![An example GtkOverlay](overlay.png)
/// 
/// The position of each overlay widget is determined by its
/// [property`Gtk.Widget:halign`] and [property`Gtk.Widget:valign`]
/// properties. E.g. a widget with both alignments set to `GTK_ALIGN_START`
/// will be placed at the top left corner of the `GtkOverlay` container,
/// whereas an overlay with halign set to `GTK_ALIGN_CENTER` and valign set
/// to `GTK_ALIGN_END` will be placed a the bottom edge of the `GtkOverlay`,
/// horizontally centered. The position can be adjusted by setting the margin
/// properties of the child to non-zero values.
/// 
/// More complicated placement of overlays is possible by connecting
/// to the [signal`Gtk.Overlay::get-child-position`] signal.
/// 
/// An overlay’s minimum and natural sizes are those of its main child.
/// The sizes of overlay children are not considered when measuring these
/// preferred sizes.
/// 
/// # GtkOverlay as GtkBuildable
/// 
/// The `GtkOverlay` implementation of the `GtkBuildable` interface
/// supports placing a child as an overlay by specifying “overlay” as
/// the “type” attribute of a `&lt;child&gt;` element.
/// 
/// # CSS nodes
/// 
/// `GtkOverlay` has a single CSS node with the name “overlay”. Overlay children
/// whose alignments cause them to be positioned at an edge get the style classes
/// “.left”, “.right”, “.top”, and/or “.bottom” according to their position.
///
/// The `OverlayRef` type acts as a lightweight Swift reference to an underlying `GtkOverlay` instance.
/// It exposes methods that can operate on this data type through `OverlayProtocol` conformance.
/// Use `OverlayRef` only as an `unowned` reference to an existing `GtkOverlay` instance.
///
public struct OverlayRef: OverlayProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkOverlay` instance.
    /// For type-safe access, use the generated, typed pointer `overlay_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension OverlayRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkOverlay>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkOverlay>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkOverlay>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkOverlay>?) {
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

    /// Reference intialiser for a related type that implements `OverlayProtocol`
    @inlinable init<T: OverlayProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: OverlayProtocol>(_ other: T) -> OverlayRef { OverlayRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkOverlay`.
    @inlinable init() {
        let rv = gtk_overlay_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// `GtkOverlay` is a container which contains a single main child, on top
/// of which it can place “overlay” widgets.
/// 
/// ![An example GtkOverlay](overlay.png)
/// 
/// The position of each overlay widget is determined by its
/// [property`Gtk.Widget:halign`] and [property`Gtk.Widget:valign`]
/// properties. E.g. a widget with both alignments set to `GTK_ALIGN_START`
/// will be placed at the top left corner of the `GtkOverlay` container,
/// whereas an overlay with halign set to `GTK_ALIGN_CENTER` and valign set
/// to `GTK_ALIGN_END` will be placed a the bottom edge of the `GtkOverlay`,
/// horizontally centered. The position can be adjusted by setting the margin
/// properties of the child to non-zero values.
/// 
/// More complicated placement of overlays is possible by connecting
/// to the [signal`Gtk.Overlay::get-child-position`] signal.
/// 
/// An overlay’s minimum and natural sizes are those of its main child.
/// The sizes of overlay children are not considered when measuring these
/// preferred sizes.
/// 
/// # GtkOverlay as GtkBuildable
/// 
/// The `GtkOverlay` implementation of the `GtkBuildable` interface
/// supports placing a child as an overlay by specifying “overlay” as
/// the “type” attribute of a `&lt;child&gt;` element.
/// 
/// # CSS nodes
/// 
/// `GtkOverlay` has a single CSS node with the name “overlay”. Overlay children
/// whose alignments cause them to be positioned at an edge get the style classes
/// “.left”, “.right”, “.top”, and/or “.bottom” according to their position.
///
/// The `Overlay` type acts as a reference-counted owner of an underlying `GtkOverlay` instance.
/// It provides the methods that can operate on this data type through `OverlayProtocol` conformance.
/// Use `Overlay` as a strong reference or owner of a `GtkOverlay` instance.
///
open class Overlay: Widget, OverlayProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Overlay` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkOverlay>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Overlay` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkOverlay>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Overlay` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Overlay` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Overlay` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkOverlay>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Overlay` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkOverlay>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkOverlay`.
    /// i.e., ownership is transferred to the `Overlay` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkOverlay>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `OverlayProtocol`
    /// Will retain `GtkOverlay`.
    /// - Parameter other: an instance of a related type that implements `OverlayProtocol`
    @inlinable public init<T: OverlayProtocol>(overlay other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkOverlay`.
    @inlinable public init() {
        let rv = gtk_overlay_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum OverlayPropertyName: String, PropertyNameProtocol {
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    /// Whether the widget can receive pointer events.
    case canTarget = "can-target"
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

public extension OverlayProtocol {
    /// Bind a `OverlayPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: OverlayPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Overlay property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: OverlayPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Overlay property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: OverlayPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum OverlaySignalName: String, SignalNameProtocol {
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold.
    /// 
    /// May result in finalization of the widget if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// Emitted when the text direction of a widget changes.
    case directionChanged = "direction-changed"
    /// Emitted to determine the position and size of any overlay
    /// child widgets.
    /// 
    /// A handler for this signal should fill `allocation` with
    /// the desired position and size for `widget`, relative to
    /// the 'main' child of `overlay`.
    /// 
    /// The default handler for this signal uses the `widget`'s
    /// halign and valign properties to determine the position
    /// and gives the widget its natural size (except that an
    /// alignment of `GTK_ALIGN_FILL` will cause the overlay to
    /// be full-width/height). If the main child is a
    /// `GtkScrolledWindow`, the overlays are placed relative
    /// to its contents.
    case getChildPosition = "get-child-position"
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

// MARK: Overlay signals
public extension OverlayProtocol {
    /// Connect a Swift signal handler to the given, typed `OverlaySignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: OverlaySignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `OverlaySignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: OverlaySignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted to determine the position and size of any overlay
    /// child widgets.
    /// 
    /// A handler for this signal should fill `allocation` with
    /// the desired position and size for `widget`, relative to
    /// the 'main' child of `overlay`.
    /// 
    /// The default handler for this signal uses the `widget`'s
    /// halign and valign properties to determine the position
    /// and gives the widget its natural size (except that an
    /// alignment of `GTK_ALIGN_FILL` will cause the overlay to
    /// be full-width/height). If the main child is a
    /// `GtkScrolledWindow`, the overlays are placed relative
    /// to its contents.
    /// - Note: This represents the underlying `get-child-position` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter widget: the child widget to position
    /// - Parameter allocation: return   location for the allocation
    /// - Parameter handler: `true` if the `allocation` has been filled
    /// - Warning: a `onGetChildPosition` wrapper for this signal could not be generated because it contains unimplemented features: { (2)  `out` or `inout` argument direction is not allowed }
    /// - Note: Instead, you can connect `getChildPositionSignal` using the `connect(signal:)` methods
    static var getChildPositionSignal: OverlaySignalName { .getChildPosition }
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
    /// - Note: This represents the underlying `notify::child` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyChild` signal is emitted
    @discardableResult @inlinable func onNotifyChild(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: OverlayRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<OverlayRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(OverlayRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyChild,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::child` signal for using the `connect(signal:)` methods
    static var notifyChildSignal: OverlaySignalName { .notifyChild }
    
}

// MARK: Overlay Class: OverlayProtocol extension (methods and fields)
public extension OverlayProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkOverlay` instance.
    @inlinable var overlay_ptr: UnsafeMutablePointer<GtkOverlay>! { return ptr?.assumingMemoryBound(to: GtkOverlay.self) }

    /// Adds `widget` to `overlay`.
    /// 
    /// The widget will be stacked on top of the main widget
    /// added with [method`Gtk.Overlay.set_child`].
    /// 
    /// The position at which `widget` is placed is determined
    /// from its [property`Gtk.Widget:halign`] and
    /// [property`Gtk.Widget:valign`] properties.
    @inlinable func addOverlay<WidgetT: WidgetProtocol>(widget: WidgetT) {
        gtk_overlay_add_overlay(overlay_ptr, widget.widget_ptr)
    
    }

    /// Gets the child widget of `overlay`.
    @inlinable func getChild() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_overlay_get_child(overlay_ptr))) else { return nil }
        return rv
    }

    /// Gets whether `widget` should be clipped within the parent.
    @inlinable func getClipOverlay<WidgetT: WidgetProtocol>(widget: WidgetT) -> Bool {
        let rv = ((gtk_overlay_get_clip_overlay(overlay_ptr, widget.widget_ptr)) != 0)
        return rv
    }

    /// Gets whether `widget`'s size is included in the measurement of
    /// `overlay`.
    @inlinable func getMeasureOverlay<WidgetT: WidgetProtocol>(widget: WidgetT) -> Bool {
        let rv = ((gtk_overlay_get_measure_overlay(overlay_ptr, widget.widget_ptr)) != 0)
        return rv
    }

    /// Removes an overlay that was added with `gtk_overlay_add_overlay()`.
    @inlinable func removeOverlay<WidgetT: WidgetProtocol>(widget: WidgetT) {
        gtk_overlay_remove_overlay(overlay_ptr, widget.widget_ptr)
    
    }

    /// Sets the child widget of `overlay`.
    @inlinable func set(child: WidgetRef? = nil) {
        gtk_overlay_set_child(overlay_ptr, child?.widget_ptr)
    
    }
    /// Sets the child widget of `overlay`.
    @inlinable func set<WidgetT: WidgetProtocol>(child: WidgetT?) {
        gtk_overlay_set_child(overlay_ptr, child?.widget_ptr)
    
    }

    /// Sets whether `widget` should be clipped within the parent.
    @inlinable func setClipOverlay<WidgetT: WidgetProtocol>(widget: WidgetT, clipOverlay: Bool) {
        gtk_overlay_set_clip_overlay(overlay_ptr, widget.widget_ptr, gboolean((clipOverlay) ? 1 : 0))
    
    }

    /// Sets whether `widget` is included in the measured size of `overlay`.
    /// 
    /// The overlay will request the size of the largest child that has
    /// this property set to `true`. Children who are not included may
    /// be drawn outside of `overlay`'s allocation if they are too large.
    @inlinable func setMeasureOverlay<WidgetT: WidgetProtocol>(widget: WidgetT, measure: Bool) {
        gtk_overlay_set_measure_overlay(overlay_ptr, widget.widget_ptr, gboolean((measure) ? 1 : 0))
    
    }
    @inlinable var child: WidgetRef! {
        /// Gets the child widget of `overlay`.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_overlay_get_child(overlay_ptr))) else { return nil }
            return rv
        }
        /// Sets the child widget of `overlay`.
        nonmutating set {
            gtk_overlay_set_child(overlay_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }


}



// MARK: - OverlayLayout Class

/// `GtkOverlayLayout` is the layout manager used by `GtkOverlay`.
/// 
/// It places widgets as overlays on top of the main child.
/// 
/// This is not a reusable layout manager, since it expects its widget
/// to be a `GtkOverlay`. It only listed here so that its layout
/// properties get documented.
///
/// The `OverlayLayoutProtocol` protocol exposes the methods and properties of an underlying `GtkOverlayLayout` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `OverlayLayout`.
/// Alternatively, use `OverlayLayoutRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol OverlayLayoutProtocol: LayoutManagerProtocol {
        /// Untyped pointer to the underlying `GtkOverlayLayout` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkOverlayLayout` instance.
    var overlay_layout_ptr: UnsafeMutablePointer<GtkOverlayLayout>! { get }

    /// Required Initialiser for types conforming to `OverlayLayoutProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkOverlayLayout` is the layout manager used by `GtkOverlay`.
/// 
/// It places widgets as overlays on top of the main child.
/// 
/// This is not a reusable layout manager, since it expects its widget
/// to be a `GtkOverlay`. It only listed here so that its layout
/// properties get documented.
///
/// The `OverlayLayoutRef` type acts as a lightweight Swift reference to an underlying `GtkOverlayLayout` instance.
/// It exposes methods that can operate on this data type through `OverlayLayoutProtocol` conformance.
/// Use `OverlayLayoutRef` only as an `unowned` reference to an existing `GtkOverlayLayout` instance.
///
public struct OverlayLayoutRef: OverlayLayoutProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkOverlayLayout` instance.
    /// For type-safe access, use the generated, typed pointer `overlay_layout_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension OverlayLayoutRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkOverlayLayout>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkOverlayLayout>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkOverlayLayout>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkOverlayLayout>?) {
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

    /// Reference intialiser for a related type that implements `OverlayLayoutProtocol`
    @inlinable init<T: OverlayLayoutProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: OverlayLayoutProtocol>(_ other: T) -> OverlayLayoutRef { OverlayLayoutRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayLayoutProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayLayoutProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayLayoutProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayLayoutProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayLayoutProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkOverlayLayout` instance.
    @inlinable init() {
        let rv = gtk_overlay_layout_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// `GtkOverlayLayout` is the layout manager used by `GtkOverlay`.
/// 
/// It places widgets as overlays on top of the main child.
/// 
/// This is not a reusable layout manager, since it expects its widget
/// to be a `GtkOverlay`. It only listed here so that its layout
/// properties get documented.
///
/// The `OverlayLayout` type acts as a reference-counted owner of an underlying `GtkOverlayLayout` instance.
/// It provides the methods that can operate on this data type through `OverlayLayoutProtocol` conformance.
/// Use `OverlayLayout` as a strong reference or owner of a `GtkOverlayLayout` instance.
///
open class OverlayLayout: LayoutManager, OverlayLayoutProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OverlayLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkOverlayLayout>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OverlayLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkOverlayLayout>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OverlayLayout` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OverlayLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OverlayLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkOverlayLayout>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OverlayLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkOverlayLayout>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkOverlayLayout`.
    /// i.e., ownership is transferred to the `OverlayLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkOverlayLayout>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `OverlayLayoutProtocol`
    /// Will retain `GtkOverlayLayout`.
    /// - Parameter other: an instance of a related type that implements `OverlayLayoutProtocol`
    @inlinable public init<T: OverlayLayoutProtocol>(overlayLayout other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayLayoutProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayLayoutProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayLayoutProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayLayoutProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayLayoutProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayLayoutProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayLayoutProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayLayoutProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkOverlayLayout` instance.
    @inlinable public init() {
        let rv = gtk_overlay_layout_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

// MARK: no OverlayLayout properties

public enum OverlayLayoutSignalName: String, SignalNameProtocol {
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

// MARK: OverlayLayout has no signals
// MARK: OverlayLayout Class: OverlayLayoutProtocol extension (methods and fields)
public extension OverlayLayoutProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkOverlayLayout` instance.
    @inlinable var overlay_layout_ptr: UnsafeMutablePointer<GtkOverlayLayout>! { return ptr?.assumingMemoryBound(to: GtkOverlayLayout.self) }



}



// MARK: - OverlayLayoutChild Class

/// `GtkLayoutChild` subclass for children in a `GtkOverlayLayout`.
///
/// The `OverlayLayoutChildProtocol` protocol exposes the methods and properties of an underlying `GtkOverlayLayoutChild` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `OverlayLayoutChild`.
/// Alternatively, use `OverlayLayoutChildRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol OverlayLayoutChildProtocol: LayoutChildProtocol {
        /// Untyped pointer to the underlying `GtkOverlayLayoutChild` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkOverlayLayoutChild` instance.
    var overlay_layout_child_ptr: UnsafeMutablePointer<GtkOverlayLayoutChild>! { get }

    /// Required Initialiser for types conforming to `OverlayLayoutChildProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkLayoutChild` subclass for children in a `GtkOverlayLayout`.
///
/// The `OverlayLayoutChildRef` type acts as a lightweight Swift reference to an underlying `GtkOverlayLayoutChild` instance.
/// It exposes methods that can operate on this data type through `OverlayLayoutChildProtocol` conformance.
/// Use `OverlayLayoutChildRef` only as an `unowned` reference to an existing `GtkOverlayLayoutChild` instance.
///
public struct OverlayLayoutChildRef: OverlayLayoutChildProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkOverlayLayoutChild` instance.
    /// For type-safe access, use the generated, typed pointer `overlay_layout_child_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension OverlayLayoutChildRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkOverlayLayoutChild>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkOverlayLayoutChild>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkOverlayLayoutChild>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkOverlayLayoutChild>?) {
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

    /// Reference intialiser for a related type that implements `OverlayLayoutChildProtocol`
    @inlinable init<T: OverlayLayoutChildProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: OverlayLayoutChildProtocol>(_ other: T) -> OverlayLayoutChildRef { OverlayLayoutChildRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayLayoutChildProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayLayoutChildProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayLayoutChildProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayLayoutChildProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayLayoutChildProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// `GtkLayoutChild` subclass for children in a `GtkOverlayLayout`.
///
/// The `OverlayLayoutChild` type acts as a reference-counted owner of an underlying `GtkOverlayLayoutChild` instance.
/// It provides the methods that can operate on this data type through `OverlayLayoutChildProtocol` conformance.
/// Use `OverlayLayoutChild` as a strong reference or owner of a `GtkOverlayLayoutChild` instance.
///
open class OverlayLayoutChild: LayoutChild, OverlayLayoutChildProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OverlayLayoutChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkOverlayLayoutChild>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OverlayLayoutChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkOverlayLayoutChild>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OverlayLayoutChild` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OverlayLayoutChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OverlayLayoutChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkOverlayLayoutChild>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OverlayLayoutChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkOverlayLayoutChild>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkOverlayLayoutChild`.
    /// i.e., ownership is transferred to the `OverlayLayoutChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkOverlayLayoutChild>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `OverlayLayoutChildProtocol`
    /// Will retain `GtkOverlayLayoutChild`.
    /// - Parameter other: an instance of a related type that implements `OverlayLayoutChildProtocol`
    @inlinable public init<T: OverlayLayoutChildProtocol>(overlayLayoutChild other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayLayoutChildProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayLayoutChildProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayLayoutChildProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayLayoutChildProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayLayoutChildProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayLayoutChildProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayLayoutChildProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayLayoutChildProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum OverlayLayoutChildPropertyName: String, PropertyNameProtocol {
    /// The widget that is associated to the `GtkLayoutChild` instance.
    case childWidget = "child-widget"
    /// Whether the child should be clipped to fit the parent's size.
    case clipOverlay = "clip-overlay"
    /// The layout manager that created the `GtkLayoutChild` instance.
    case layoutManager = "layout-manager"
    /// Whether the child size should contribute to the `GtkOverlayLayout`'s
    /// measurement.
    case measure = "measure"
}

public extension OverlayLayoutChildProtocol {
    /// Bind a `OverlayLayoutChildPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: OverlayLayoutChildPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a OverlayLayoutChild property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: OverlayLayoutChildPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a OverlayLayoutChild property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: OverlayLayoutChildPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum OverlayLayoutChildSignalName: String, SignalNameProtocol {
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
    /// The widget that is associated to the `GtkLayoutChild` instance.
    case notifyChildWidget = "notify::child-widget"
    /// Whether the child should be clipped to fit the parent's size.
    case notifyClipOverlay = "notify::clip-overlay"
    /// The layout manager that created the `GtkLayoutChild` instance.
    case notifyLayoutManager = "notify::layout-manager"
    /// Whether the child size should contribute to the `GtkOverlayLayout`'s
    /// measurement.
    case notifyMeasure = "notify::measure"
}

// MARK: OverlayLayoutChild has no signals
// MARK: OverlayLayoutChild Class: OverlayLayoutChildProtocol extension (methods and fields)
public extension OverlayLayoutChildProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkOverlayLayoutChild` instance.
    @inlinable var overlay_layout_child_ptr: UnsafeMutablePointer<GtkOverlayLayoutChild>! { return ptr?.assumingMemoryBound(to: GtkOverlayLayoutChild.self) }

    /// Retrieves whether the child is clipped.
    @inlinable func getClipOverlay() -> Bool {
        let rv = ((gtk_overlay_layout_child_get_clip_overlay(overlay_layout_child_ptr)) != 0)
        return rv
    }

    /// Retrieves whether the child is measured.
    @inlinable func getMeasure() -> Bool {
        let rv = ((gtk_overlay_layout_child_get_measure(overlay_layout_child_ptr)) != 0)
        return rv
    }

    /// Sets whether to clip this child.
    @inlinable func set(clipOverlay: Bool) {
        gtk_overlay_layout_child_set_clip_overlay(overlay_layout_child_ptr, gboolean((clipOverlay) ? 1 : 0))
    
    }

    /// Sets whether to measure this child.
    @inlinable func set(measure: Bool) {
        gtk_overlay_layout_child_set_measure(overlay_layout_child_ptr, gboolean((measure) ? 1 : 0))
    
    }
    /// Retrieves whether the child is clipped.
    @inlinable var clipOverlay: Bool {
        /// Retrieves whether the child is clipped.
        get {
            let rv = ((gtk_overlay_layout_child_get_clip_overlay(overlay_layout_child_ptr)) != 0)
            return rv
        }
        /// Sets whether to clip this child.
        nonmutating set {
            gtk_overlay_layout_child_set_clip_overlay(overlay_layout_child_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Whether the child size should contribute to the `GtkOverlayLayout`'s
    /// measurement.
    @inlinable var measure: Bool {
        /// Retrieves whether the child is measured.
        get {
            let rv = ((gtk_overlay_layout_child_get_measure(overlay_layout_child_ptr)) != 0)
            return rv
        }
        /// Sets whether to measure this child.
        nonmutating set {
            gtk_overlay_layout_child_set_measure(overlay_layout_child_ptr, gboolean((newValue) ? 1 : 0))
        }
    }


}



// MARK: - PadController Class

/// `GtkPadController` is an event controller for the pads found in drawing
/// tablets.
/// 
/// Pads are the collection of buttons and tactile sensors often found around
/// the stylus-sensitive area.
/// 
/// These buttons and sensors have no implicit meaning, and by default they
/// perform no action. `GtkPadController` is provided to map those to
/// `GAction` objects, thus letting the application give them a more
/// semantic meaning.
/// 
/// Buttons and sensors are not constrained to triggering a single action,
/// some `GDK_SOURCE_TABLET_PAD` devices feature multiple "modes". All these
/// input elements have one current mode, which may determine the final action
/// being triggered.
/// 
/// Pad devices often divide buttons and sensors into groups. All elements
/// in a group share the same current mode, but different groups may have
/// different modes. See [method`Gdk.DevicePad.get_n_groups`] and
/// [method`Gdk.DevicePad.get_group_n_modes`].
/// 
/// Each of the actions that a given button/strip/ring performs for a given
/// mode is defined by a [struct`Gtk.PadActionEntry`]. It contains an action
/// name that will be looked up in the given `GActionGroup` and activated
/// whenever the specified input element and mode are triggered.
/// 
/// A simple example of `GtkPadController` usage: Assigning button 1 in all
/// modes and pad devices to an "invert-selection" action:
/// 
/// ```c
/// GtkPadActionEntry *pad_actions[] = {
///   { GTK_PAD_ACTION_BUTTON, 1, -1, "Invert selection", "pad-actions.invert-selection" },
///   …
/// };
/// 
/// …
/// action_group = g_simple_action_group_new ();
/// action = g_simple_action_new ("pad-actions.invert-selection", NULL);
/// g_signal_connect (action, "activate", on_invert_selection_activated, NULL);
/// g_action_map_add_action (G_ACTION_MAP (action_group), action);
/// …
/// pad_controller = gtk_pad_controller_new (action_group, NULL);
/// ```
/// 
/// The actions belonging to rings/strips will be activated with a parameter
/// of type `G_VARIANT_TYPE_DOUBLE` bearing the value of the given axis, it
/// is required that those are made stateful and accepting this `GVariantType`.
///
/// The `PadControllerProtocol` protocol exposes the methods and properties of an underlying `GtkPadController` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PadController`.
/// Alternatively, use `PadControllerRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol PadControllerProtocol: EventControllerProtocol {
        /// Untyped pointer to the underlying `GtkPadController` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkPadController` instance.
    var pad_controller_ptr: UnsafeMutablePointer<GtkPadController>! { get }

    /// Required Initialiser for types conforming to `PadControllerProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkPadController` is an event controller for the pads found in drawing
/// tablets.
/// 
/// Pads are the collection of buttons and tactile sensors often found around
/// the stylus-sensitive area.
/// 
/// These buttons and sensors have no implicit meaning, and by default they
/// perform no action. `GtkPadController` is provided to map those to
/// `GAction` objects, thus letting the application give them a more
/// semantic meaning.
/// 
/// Buttons and sensors are not constrained to triggering a single action,
/// some `GDK_SOURCE_TABLET_PAD` devices feature multiple "modes". All these
/// input elements have one current mode, which may determine the final action
/// being triggered.
/// 
/// Pad devices often divide buttons and sensors into groups. All elements
/// in a group share the same current mode, but different groups may have
/// different modes. See [method`Gdk.DevicePad.get_n_groups`] and
/// [method`Gdk.DevicePad.get_group_n_modes`].
/// 
/// Each of the actions that a given button/strip/ring performs for a given
/// mode is defined by a [struct`Gtk.PadActionEntry`]. It contains an action
/// name that will be looked up in the given `GActionGroup` and activated
/// whenever the specified input element and mode are triggered.
/// 
/// A simple example of `GtkPadController` usage: Assigning button 1 in all
/// modes and pad devices to an "invert-selection" action:
/// 
/// ```c
/// GtkPadActionEntry *pad_actions[] = {
///   { GTK_PAD_ACTION_BUTTON, 1, -1, "Invert selection", "pad-actions.invert-selection" },
///   …
/// };
/// 
/// …
/// action_group = g_simple_action_group_new ();
/// action = g_simple_action_new ("pad-actions.invert-selection", NULL);
/// g_signal_connect (action, "activate", on_invert_selection_activated, NULL);
/// g_action_map_add_action (G_ACTION_MAP (action_group), action);
/// …
/// pad_controller = gtk_pad_controller_new (action_group, NULL);
/// ```
/// 
/// The actions belonging to rings/strips will be activated with a parameter
/// of type `G_VARIANT_TYPE_DOUBLE` bearing the value of the given axis, it
/// is required that those are made stateful and accepting this `GVariantType`.
///
/// The `PadControllerRef` type acts as a lightweight Swift reference to an underlying `GtkPadController` instance.
/// It exposes methods that can operate on this data type through `PadControllerProtocol` conformance.
/// Use `PadControllerRef` only as an `unowned` reference to an existing `GtkPadController` instance.
///
public struct PadControllerRef: PadControllerProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkPadController` instance.
    /// For type-safe access, use the generated, typed pointer `pad_controller_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PadControllerRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkPadController>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkPadController>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkPadController>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkPadController>?) {
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

    /// Reference intialiser for a related type that implements `PadControllerProtocol`
    @inlinable init<T: PadControllerProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: PadControllerProtocol>(_ other: T) -> PadControllerRef { PadControllerRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadControllerProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadControllerProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadControllerProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadControllerProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadControllerProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkPadController` that will associate events from `pad` to
    /// actions.
    /// 
    /// A `nil` pad may be provided so the controller manages all pad devices
    /// generically, it is discouraged to mix `GtkPadController` objects with
    /// `nil` and non-`nil` `pad` argument on the same toplevel window, as execution
    /// order is not guaranteed.
    /// 
    /// The `GtkPadController` is created with no mapped actions. In order to
    /// map pad events to actions, use [method`Gtk.PadController.set_action_entries`]
    /// or [method`Gtk.PadController.set_action`].
    /// 
    /// Be aware that pad events will only be delivered to `GtkWindow`s, so adding
    /// a pad controller to any other type of widget will not have an effect.
    @inlinable init<ActionGroupT: GIO.ActionGroupProtocol, DeviceT: Gdk.DeviceProtocol>( group: ActionGroupT, pad: DeviceT?) {
        let rv = gtk_pad_controller_new(group.action_group_ptr, pad?.device_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// `GtkPadController` is an event controller for the pads found in drawing
/// tablets.
/// 
/// Pads are the collection of buttons and tactile sensors often found around
/// the stylus-sensitive area.
/// 
/// These buttons and sensors have no implicit meaning, and by default they
/// perform no action. `GtkPadController` is provided to map those to
/// `GAction` objects, thus letting the application give them a more
/// semantic meaning.
/// 
/// Buttons and sensors are not constrained to triggering a single action,
/// some `GDK_SOURCE_TABLET_PAD` devices feature multiple "modes". All these
/// input elements have one current mode, which may determine the final action
/// being triggered.
/// 
/// Pad devices often divide buttons and sensors into groups. All elements
/// in a group share the same current mode, but different groups may have
/// different modes. See [method`Gdk.DevicePad.get_n_groups`] and
/// [method`Gdk.DevicePad.get_group_n_modes`].
/// 
/// Each of the actions that a given button/strip/ring performs for a given
/// mode is defined by a [struct`Gtk.PadActionEntry`]. It contains an action
/// name that will be looked up in the given `GActionGroup` and activated
/// whenever the specified input element and mode are triggered.
/// 
/// A simple example of `GtkPadController` usage: Assigning button 1 in all
/// modes and pad devices to an "invert-selection" action:
/// 
/// ```c
/// GtkPadActionEntry *pad_actions[] = {
///   { GTK_PAD_ACTION_BUTTON, 1, -1, "Invert selection", "pad-actions.invert-selection" },
///   …
/// };
/// 
/// …
/// action_group = g_simple_action_group_new ();
/// action = g_simple_action_new ("pad-actions.invert-selection", NULL);
/// g_signal_connect (action, "activate", on_invert_selection_activated, NULL);
/// g_action_map_add_action (G_ACTION_MAP (action_group), action);
/// …
/// pad_controller = gtk_pad_controller_new (action_group, NULL);
/// ```
/// 
/// The actions belonging to rings/strips will be activated with a parameter
/// of type `G_VARIANT_TYPE_DOUBLE` bearing the value of the given axis, it
/// is required that those are made stateful and accepting this `GVariantType`.
///
/// The `PadController` type acts as a reference-counted owner of an underlying `GtkPadController` instance.
/// It provides the methods that can operate on this data type through `PadControllerProtocol` conformance.
/// Use `PadController` as a strong reference or owner of a `GtkPadController` instance.
///
open class PadController: EventController, PadControllerProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PadController` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkPadController>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PadController` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkPadController>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PadController` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PadController` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PadController` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkPadController>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PadController` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkPadController>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkPadController`.
    /// i.e., ownership is transferred to the `PadController` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkPadController>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `PadControllerProtocol`
    /// Will retain `GtkPadController`.
    /// - Parameter other: an instance of a related type that implements `PadControllerProtocol`
    @inlinable public init<T: PadControllerProtocol>(padController other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadControllerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadControllerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadControllerProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadControllerProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadControllerProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadControllerProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadControllerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadControllerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkPadController` that will associate events from `pad` to
    /// actions.
    /// 
    /// A `nil` pad may be provided so the controller manages all pad devices
    /// generically, it is discouraged to mix `GtkPadController` objects with
    /// `nil` and non-`nil` `pad` argument on the same toplevel window, as execution
    /// order is not guaranteed.
    /// 
    /// The `GtkPadController` is created with no mapped actions. In order to
    /// map pad events to actions, use [method`Gtk.PadController.set_action_entries`]
    /// or [method`Gtk.PadController.set_action`].
    /// 
    /// Be aware that pad events will only be delivered to `GtkWindow`s, so adding
    /// a pad controller to any other type of widget will not have an effect.
    @inlinable public init<ActionGroupT: GIO.ActionGroupProtocol, DeviceT: Gdk.DeviceProtocol>( group: ActionGroupT, pad: DeviceT?) {
        let rv = gtk_pad_controller_new(group.action_group_ptr, pad?.device_ptr)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum PadControllerPropertyName: String, PropertyNameProtocol {
    case actionGroup = "action-group"
    /// The name for this controller, typically used for debugging purposes.
    case name = "name"
    case pad = "pad"
    /// The limit for which events this controller will handle.
    case propagationLimit = "propagation-limit"
    /// The propagation phase at which this controller will handle events.
    case propagationPhase = "propagation-phase"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case widget = "widget"
}

public extension PadControllerProtocol {
    /// Bind a `PadControllerPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: PadControllerPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a PadController property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: PadControllerPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a PadController property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: PadControllerPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum PadControllerSignalName: String, SignalNameProtocol {
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
    case notifyActionGroup = "notify::action-group"
    /// The name for this controller, typically used for debugging purposes.
    case notifyName = "notify::name"
    case notifyPad = "notify::pad"
    /// The limit for which events this controller will handle.
    case notifyPropagationLimit = "notify::propagation-limit"
    /// The propagation phase at which this controller will handle events.
    case notifyPropagationPhase = "notify::propagation-phase"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case notifyWidget = "notify::widget"
}

// MARK: PadController has no signals
// MARK: PadController Class: PadControllerProtocol extension (methods and fields)
public extension PadControllerProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPadController` instance.
    @inlinable var pad_controller_ptr: UnsafeMutablePointer<GtkPadController>! { return ptr?.assumingMemoryBound(to: GtkPadController.self) }

    /// Adds an individual action to `controller`.
    /// 
    /// This action will only be activated if the given button/ring/strip number
    /// in `index` is interacted while the current mode is `mode`. -1 may be used
    /// for simple cases, so the action is triggered on all modes.
    /// 
    /// The given `label` should be considered user-visible, so internationalization
    /// rules apply. Some windowing systems may be able to use those for user
    /// feedback.
    @inlinable func setAction(type: GtkPadActionType, index: Int, mode: Int, label: UnsafePointer<CChar>!, actionName: UnsafePointer<CChar>!) {
        gtk_pad_controller_set_action(pad_controller_ptr, type, gint(index), gint(mode), label, actionName)
    
    }

    /// A convenience function to add a group of action entries on
    /// `controller`.
    /// 
    /// See [struct`Gtk.PadActionEntry`] and [method`Gtk.PadController.set_action`].
    @inlinable func setAction(entries: UnsafePointer<GtkPadActionEntry>!, nEntries: Int) {
        gtk_pad_controller_set_action_entries(pad_controller_ptr, entries, gint(nEntries))
    
    }


}



