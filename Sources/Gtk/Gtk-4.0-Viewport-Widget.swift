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

// MARK: - Viewport Class

/// The `ViewportProtocol` protocol exposes the methods and properties of an underlying `GtkViewport` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Viewport`.
/// Alternatively, use `ViewportRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkViewport` widget acts as an adaptor class, implementing
/// scrollability for child widgets that lack their own scrolling
/// capabilities. Use GtkViewport to scroll child widgets such as
/// `GtkGrid`, `GtkBox`, and so on.
/// 
/// The GtkViewport will start scrolling content only if allocated less
/// than the child widget’s minimum size in a given orientation.
/// 
/// # CSS nodes
/// 
/// GtkViewport has a single CSS node with name `viewport`.
/// 
/// # Accessibility
/// 
/// GtkViewport uses the `GTK_ACCESSIBLE_ROLE_GROUP` role.
public protocol ViewportProtocol: WidgetProtocol, ScrollableProtocol {
        /// Untyped pointer to the underlying `GtkViewport` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkViewport` instance.
    var viewport_ptr: UnsafeMutablePointer<GtkViewport>! { get }

}

/// The `ViewportRef` type acts as a lightweight Swift reference to an underlying `GtkViewport` instance.
/// It exposes methods that can operate on this data type through `ViewportProtocol` conformance.
/// Use `ViewportRef` only as an `unowned` reference to an existing `GtkViewport` instance.
///
/// The `GtkViewport` widget acts as an adaptor class, implementing
/// scrollability for child widgets that lack their own scrolling
/// capabilities. Use GtkViewport to scroll child widgets such as
/// `GtkGrid`, `GtkBox`, and so on.
/// 
/// The GtkViewport will start scrolling content only if allocated less
/// than the child widget’s minimum size in a given orientation.
/// 
/// # CSS nodes
/// 
/// GtkViewport has a single CSS node with name `viewport`.
/// 
/// # Accessibility
/// 
/// GtkViewport uses the `GTK_ACCESSIBLE_ROLE_GROUP` role.
public struct ViewportRef: ViewportProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkViewport` instance.
    /// For type-safe access, use the generated, typed pointer `viewport_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ViewportRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkViewport>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkViewport>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkViewport>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkViewport>?) {
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

    /// Reference intialiser for a related type that implements `ViewportProtocol`
    @inlinable init<T: ViewportProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ViewportProtocol>(_ other: T) -> ViewportRef { ViewportRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkViewport` with the given adjustments, or with default
    /// adjustments if none are given.
    @inlinable init<AdjustmentT: AdjustmentProtocol>( hadjustment: AdjustmentT?, vadjustment: AdjustmentT?) {
        let rv = gtk_viewport_new(hadjustment?.adjustment_ptr, vadjustment?.adjustment_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `Viewport` type acts as a reference-counted owner of an underlying `GtkViewport` instance.
/// It provides the methods that can operate on this data type through `ViewportProtocol` conformance.
/// Use `Viewport` as a strong reference or owner of a `GtkViewport` instance.
///
/// The `GtkViewport` widget acts as an adaptor class, implementing
/// scrollability for child widgets that lack their own scrolling
/// capabilities. Use GtkViewport to scroll child widgets such as
/// `GtkGrid`, `GtkBox`, and so on.
/// 
/// The GtkViewport will start scrolling content only if allocated less
/// than the child widget’s minimum size in a given orientation.
/// 
/// # CSS nodes
/// 
/// GtkViewport has a single CSS node with name `viewport`.
/// 
/// # Accessibility
/// 
/// GtkViewport uses the `GTK_ACCESSIBLE_ROLE_GROUP` role.
open class Viewport: Widget, ViewportProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Viewport` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkViewport>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Viewport` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkViewport>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Viewport` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Viewport` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Viewport` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkViewport>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Viewport` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkViewport>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkViewport`.
    /// i.e., ownership is transferred to the `Viewport` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkViewport>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ViewportProtocol`
    /// Will retain `GtkViewport`.
    /// - Parameter other: an instance of a related type that implements `ViewportProtocol`
    @inlinable public init<T: ViewportProtocol>(viewport other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkViewport` with the given adjustments, or with default
    /// adjustments if none are given.
    @inlinable public init<AdjustmentT: AdjustmentProtocol>( hadjustment: AdjustmentT?, vadjustment: AdjustmentT?) {
        let rv = gtk_viewport_new(hadjustment?.adjustment_ptr, vadjustment?.adjustment_ptr)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum ViewportPropertyName: String, PropertyNameProtocol {
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
    case scrollToFocus = "scroll-to-focus"
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

public extension ViewportProtocol {
    /// Bind a `ViewportPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ViewportPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Viewport property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ViewportPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Viewport property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ViewportPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Viewport has no signals// MARK: Viewport Class: ViewportProtocol extension (methods and fields)
public extension ViewportProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkViewport` instance.
    @inlinable var viewport_ptr: UnsafeMutablePointer<GtkViewport>! { return ptr?.assumingMemoryBound(to: GtkViewport.self) }

    /// Gets the child widget of `viewport`.
    @inlinable func getChild() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_viewport_get_child(viewport_ptr))) else { return nil }
        return rv
    }

    /// Gets whether the viewport is scrolling to keep the focused
    /// child in view. See `gtk_viewport_set_scroll_to_focus()`.
    @inlinable func getScrollToFocus() -> Bool {
        let rv = ((gtk_viewport_get_scroll_to_focus(viewport_ptr)) != 0)
        return rv
    }

    /// Sets the child widget of `viewport`.
    @inlinable func set(child: WidgetRef? = nil) {
        gtk_viewport_set_child(viewport_ptr, child?.widget_ptr)
    
    }
    /// Sets the child widget of `viewport`.
    @inlinable func set<WidgetT: WidgetProtocol>(child: WidgetT?) {
        gtk_viewport_set_child(viewport_ptr, child?.widget_ptr)
    
    }

    /// Sets whether the viewport should automatically scroll
    /// to keep the focused child in view.
    @inlinable func set(scrollToFocus: Bool) {
        gtk_viewport_set_scroll_to_focus(viewport_ptr, gboolean((scrollToFocus) ? 1 : 0))
    
    }
    @inlinable var child: WidgetRef! {
        /// Gets the child widget of `viewport`.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_viewport_get_child(viewport_ptr))) else { return nil }
            return rv
        }
        /// Sets the child widget of `viewport`.
        nonmutating set {
            gtk_viewport_set_child(viewport_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }

    /// Gets whether the viewport is scrolling to keep the focused
    /// child in view. See `gtk_viewport_set_scroll_to_focus()`.
    @inlinable var scrollToFocus: Bool {
        /// Gets whether the viewport is scrolling to keep the focused
        /// child in view. See `gtk_viewport_set_scroll_to_focus()`.
        get {
            let rv = ((gtk_viewport_get_scroll_to_focus(viewport_ptr)) != 0)
            return rv
        }
        /// Sets whether the viewport should automatically scroll
        /// to keep the focused child in view.
        nonmutating set {
            gtk_viewport_set_scroll_to_focus(viewport_ptr, gboolean((newValue) ? 1 : 0))
        }
    }


}



// MARK: - VolumeButton Class

/// The `VolumeButtonProtocol` protocol exposes the methods and properties of an underlying `GtkVolumeButton` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VolumeButton`.
/// Alternatively, use `VolumeButtonRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkVolumeButton` is a subclass of `GtkScaleButton` that has
/// been tailored for use as a volume control widget with suitable
/// icons, tooltips and accessible labels.
public protocol VolumeButtonProtocol: ScaleButtonProtocol {
        /// Untyped pointer to the underlying `GtkVolumeButton` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkVolumeButton` instance.
    var volume_button_ptr: UnsafeMutablePointer<GtkVolumeButton>! { get }

}

/// The `VolumeButtonRef` type acts as a lightweight Swift reference to an underlying `GtkVolumeButton` instance.
/// It exposes methods that can operate on this data type through `VolumeButtonProtocol` conformance.
/// Use `VolumeButtonRef` only as an `unowned` reference to an existing `GtkVolumeButton` instance.
///
/// `GtkVolumeButton` is a subclass of `GtkScaleButton` that has
/// been tailored for use as a volume control widget with suitable
/// icons, tooltips and accessible labels.
public struct VolumeButtonRef: VolumeButtonProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkVolumeButton` instance.
    /// For type-safe access, use the generated, typed pointer `volume_button_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension VolumeButtonRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkVolumeButton>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkVolumeButton>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkVolumeButton>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkVolumeButton>?) {
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

    /// Reference intialiser for a related type that implements `VolumeButtonProtocol`
    @inlinable init<T: VolumeButtonProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: VolumeButtonProtocol>(_ other: T) -> VolumeButtonRef { VolumeButtonRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeButtonProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeButtonProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeButtonProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeButtonProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeButtonProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a `GtkVolumeButton`, with a range between 0.0 and 1.0, with
    /// a stepping of 0.02. Volume values can be obtained and modified using
    /// the functions from `GtkScaleButton`.
    @inlinable init() {
        let rv = gtk_volume_button_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `VolumeButton` type acts as a reference-counted owner of an underlying `GtkVolumeButton` instance.
/// It provides the methods that can operate on this data type through `VolumeButtonProtocol` conformance.
/// Use `VolumeButton` as a strong reference or owner of a `GtkVolumeButton` instance.
///
/// `GtkVolumeButton` is a subclass of `GtkScaleButton` that has
/// been tailored for use as a volume control widget with suitable
/// icons, tooltips and accessible labels.
open class VolumeButton: ScaleButton, VolumeButtonProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VolumeButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkVolumeButton>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VolumeButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkVolumeButton>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VolumeButton` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VolumeButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VolumeButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkVolumeButton>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VolumeButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkVolumeButton>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkVolumeButton`.
    /// i.e., ownership is transferred to the `VolumeButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkVolumeButton>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `VolumeButtonProtocol`
    /// Will retain `GtkVolumeButton`.
    /// - Parameter other: an instance of a related type that implements `VolumeButtonProtocol`
    @inlinable public init<T: VolumeButtonProtocol>(volumeButton other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeButtonProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeButtonProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeButtonProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeButtonProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeButtonProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeButtonProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeButtonProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeButtonProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a `GtkVolumeButton`, with a range between 0.0 and 1.0, with
    /// a stepping of 0.02. Volume values can be obtained and modified using
    /// the functions from `GtkScaleButton`.
    @inlinable public init() {
        let rv = gtk_volume_button_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum VolumeButtonPropertyName: String, PropertyNameProtocol {
    case adjustment = "adjustment"
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
    /// The names of the icons to be used by the scale button.
    /// The first item in the array will be used in the button
    /// when the current value is the lowest value, the second
    /// item for the highest value. All the subsequent icons will
    /// be used for all the other values, spread evenly over the
    /// range of values.
    /// 
    /// If there's only one icon name in the `icons` array, it will
    /// be used for all the values. If only two icon names are in
    /// the `icons` array, the first one will be used for the bottom
    /// 50% of the scale, and the second one for the top 50%.
    /// 
    /// It is recommended to use at least 3 icons so that the
    /// `GtkScaleButton` reflects the current value of the scale
    /// better for the users.
    case icons = "icons"
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
    /// Whether to use symbolic icons as the icons. Note that
    /// if the symbolic icons are not available in your installed
    /// theme, then the normal (potentially colorful) icons will
    /// be used.
    case useSymbolic = "use-symbolic"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    case value = "value"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
}

public extension VolumeButtonProtocol {
    /// Bind a `VolumeButtonPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: VolumeButtonPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a VolumeButton property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: VolumeButtonPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a VolumeButton property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: VolumeButtonPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: VolumeButton has no signals// MARK: VolumeButton Class: VolumeButtonProtocol extension (methods and fields)
public extension VolumeButtonProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkVolumeButton` instance.
    @inlinable var volume_button_ptr: UnsafeMutablePointer<GtkVolumeButton>! { return ptr?.assumingMemoryBound(to: GtkVolumeButton.self) }


    @inlinable var parent: GtkScaleButton {
        get {
            let rv = volume_button_ptr.pointee.parent
            return rv
        }
    }

}



// MARK: - Widget Class

/// The `WidgetProtocol` protocol exposes the methods and properties of an underlying `GtkWidget` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Widget`.
/// Alternatively, use `WidgetRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkWidget is the base class all widgets in GTK derive from. It manages the
/// widget lifecycle, states and style.
/// 
/// # Height-for-width Geometry Management # <a name="geometry-management"></a>
/// 
/// GTK uses a height-for-width (and width-for-height) geometry management
/// system. Height-for-width means that a widget can change how much
/// vertical space it needs, depending on the amount of horizontal space
/// that it is given (and similar for width-for-height). The most common
/// example is a label that reflows to fill up the available width, wraps
/// to fewer lines, and therefore needs less height.
/// 
/// Height-for-width geometry management is implemented in GTK by way
/// of two virtual methods:
/// 
/// - `GtkWidgetClass.get_request_mode``()`
/// - `GtkWidgetClass.measure``()`
/// 
/// There are some important things to keep in mind when implementing
/// height-for-width and when using it in widget implementations.
/// 
/// If you implement a direct `GtkWidget` subclass that supports
/// height-for-width or width-for-height geometry management for
/// itself or its child widgets, the `GtkWidgetClass.get_request_mode``()`
/// virtual function must be implemented as well and return the widget's
/// preferred request mode. The default implementation of this virtual function
/// returns `GTK_SIZE_REQUEST_CONSTANT_SIZE`, which means that the widget will
/// only ever get -1 passed as the for_size value to its `GtkWidgetClass.measure``()`
/// implementation.
/// 
/// The geometry management system will query a widget hierarchy in
/// only one orientation at a time. When widgets are initially queried
/// for their minimum sizes it is generally done in two initial passes
/// in the `GtkSizeRequestMode` chosen by the toplevel.
/// 
/// For example, when queried in the normal
/// `GTK_SIZE_REQUEST_HEIGHT_FOR_WIDTH` mode:
/// First, the default minimum and natural width for each widget
/// in the interface will be computed using `gtk_widget_measure()` with an
/// orientation of `GTK_ORIENTATION_HORIZONTAL` and a for_size of -1.
/// Because the preferred widths for each widget depend on the preferred
/// widths of their children, this information propagates up the hierarchy,
/// and finally a minimum and natural width is determined for the entire
/// toplevel. Next, the toplevel will use the minimum width to query for the
/// minimum height contextual to that width using `gtk_widget_measure()` with an
/// orientation of `GTK_ORIENTATION_VERTICAL` and a for_size of the just computed
/// width. This will also be a highly recursive operation. The minimum height
/// for the minimum width is normally used to set the minimum size constraint
/// on the toplevel.
/// 
/// After the toplevel window has initially requested its size in both
/// dimensions it can go on to allocate itself a reasonable size (or a size
/// previously specified with `gtk_window_set_default_size()`). During the
/// recursive allocation process it’s important to note that request cycles
/// will be recursively executed while widgets allocate their children.
/// Each widget, once allocated a size, will go on to first share the
/// space in one orientation among its children and then request each child's
/// height for its target allocated width or its width for allocated height,
/// depending. In this way a `GtkWidget` will typically be requested its size
/// a number of times before actually being allocated a size. The size a
/// widget is finally allocated can of course differ from the size it has
/// requested. For this reason, `GtkWidget` caches a  small number of results
/// to avoid re-querying for the same sizes in one allocation cycle.
/// 
/// If a widget does move content around to intelligently use up the
/// allocated size then it must support the request in both
/// `GtkSizeRequestModes` even if the widget in question only
/// trades sizes in a single orientation.
/// 
/// For instance, a `GtkLabel` that does height-for-width word wrapping
/// will not expect to have `GtkWidgetClass.measure``()` with an orientation of
/// `GTK_ORIENTATION_VERTICAL` called because that call is specific to a
/// width-for-height request. In this
/// case the label must return the height required for its own minimum
/// possible width. By following this rule any widget that handles
/// height-for-width or width-for-height requests will always be allocated
/// at least enough space to fit its own content.
/// 
/// Here are some examples of how a `GTK_SIZE_REQUEST_HEIGHT_FOR_WIDTH` widget
/// generally deals with width-for-height requests:
/// 
/// (C Language Example):
/// ```C
/// static void
/// foo_widget_measure (GtkWidget      *widget,
///                     GtkOrientation  orientation,
///                     int             for_size,
///                     int            *minimum_size,
///                     int            *natural_size,
///                     int            *minimum_baseline,
///                     int            *natural_baseline)
/// {
///   if (orientation == GTK_ORIENTATION_HORIZONTAL)
///     {
///       // Calculate minimum and natural width
///     }
///   else // VERTICAL
///     {
///        if (i_am_in_height_for_width_mode)
///          {
///            int min_width, dummy;
/// 
///            // First, get the minimum width of our widget
///            GTK_WIDGET_GET_CLASS (widget)->measure (widget, GTK_ORIENTATION_HORIZONTAL, -1,
///                                                    &min_width, &dummy, &dummy, &dummy);
/// 
///            // Now use the minimum width to retrieve the minimum and natural height to display
///            // that width.
///            GTK_WIDGET_GET_CLASS (widget)->measure (widget, GTK_ORIENTATION_VERTICAL, min_width,
///                                                    minimum_size, natural_size, &dummy, &dummy);
///          }
///        else
///          {
///            // ... some widgets do both.
///          }
///    }
/// }
/// ```
/// 
/// Often a widget needs to get its own request during size request or
/// allocation. For example, when computing height it may need to also
/// compute width. Or when deciding how to use an allocation, the widget
/// may need to know its natural size. In these cases, the widget should
/// be careful to call its virtual methods directly, like in the code
/// example above.
/// 
/// It will not work to use the wrapper function `gtk_widget_measure()`
/// inside your own `GtkWidgetClass.size``-allocate()` implementation.
/// These return a request adjusted by `GtkSizeGroup`, the widget's align and expand flags
/// as well as its CSS style.
/// If a widget used the wrappers inside its virtual method implementations,
/// then the adjustments (such as widget margins) would be applied
/// twice. GTK therefore does not allow this and will warn if you try
/// to do it.
/// 
/// Of course if you are getting the size request for
/// another widget, such as a child widget, you must use `gtk_widget_measure()`.
/// Otherwise, you would not properly consider widget margins,
/// `GtkSizeGroup`, and so forth.
/// 
/// GTK also supports baseline vertical alignment of widgets. This
/// means that widgets are positioned such that the typographical baseline of
/// widgets in the same row are aligned. This happens if a widget supports baselines,
/// has a vertical alignment of `GTK_ALIGN_BASELINE`, and is inside a widget
/// that supports baselines and has a natural “row” that it aligns to the baseline,
/// or a baseline assigned to it by the grandparent.
/// 
/// Baseline alignment support for a widget is also done by the `GtkWidgetClass.measure``()`
/// virtual function. It allows you to report both a minimum and natural size.
/// 
/// If a widget ends up baseline aligned it will be allocated all the space in the parent
/// as if it was `GTK_ALIGN_FILL`, but the selected baseline can be found via `gtk_widget_get_allocated_baseline()`.
/// If this has a value other than -1 you need to align the widget such that the baseline
/// appears at the position.
/// 
/// # GtkWidget as GtkBuildable
/// 
/// The GtkWidget implementation of the `GtkBuildable` interface supports a
/// custom elements to specify various aspects of widgets that are not
/// directly expressed as properties.
/// 
/// If the parent widget uses a `GtkLayoutManager`, `GtkWidget` supports a
/// custom `<layout>` element, used to define layout properties:
/// 
/// ```
/// <object class="MyGrid" id="grid1">
///   <child>
///     <object class="GtkLabel" id="label1">
///       <property name="label">Description</property>
///       <layout>
///         <property name="column">0</property>
///         <property name="row">0</property>
///         <property name="row-span">1</property>
///         <property name="column-span">1</property>
///       </layout>
///     </object>
///   </child>
///   <child>
///     <object class="GtkEntry" id="description_entry">
///       <layout>
///         <property name="column">1</property>
///         <property name="row">0</property>
///         <property name="row-span">1</property>
///         <property name="column-span">1</property>
///       </layout>
///     </object>
///   </child>
/// </object>
/// ```
/// 
/// GtkWidget allows style information such as style classes to
/// be associated with widgets, using the custom `<style>` element:
/// ```
/// <object class="GtkButton" id="button1">
///   <style>
///     <class name="my-special-button-class"/>
///     <class name="dark-button"/>
///   </style>
/// </object>
/// ```
/// 
/// GtkWidget allows defining accessibility information, such as properties,
/// relations, and states, using the custom `<accessibility>` element:
/// ```
/// <object class="GtkButton" id="button1">
///   <accessibility>
///     <property name="label">Download</property>
///     <relation name="labelled-by">label1</relation>
///   </accessibility>
/// </object>
/// ```
/// 
/// # Building composite widgets from template XML ## <a name="composite-templates"></a>
/// 
/// GtkWidget exposes some facilities to automate the procedure
/// of creating composite widgets using `GtkBuilder` interface description
/// language.
/// 
/// To create composite widgets with `GtkBuilder` XML, one must associate
/// the interface description with the widget class at class initialization
/// time using `gtk_widget_class_set_template()`.
/// 
/// The interface description semantics expected in composite template descriptions
/// is slightly different from regular `GtkBuilder` XML.
/// 
/// Unlike regular interface descriptions, `gtk_widget_class_set_template()` will
/// expect a <template> tag as a direct child of the toplevel <interface>
/// tag. The <template> tag must specify the “class” attribute which must be
/// the type name of the widget. Optionally, the “parent” attribute may be
/// specified to specify the direct parent type of the widget type, this is
/// ignored by the GtkBuilder but required for Glade to introspect what kind
/// of properties and internal children exist for a given type when the actual
/// type does not exist.
/// 
/// The XML which is contained inside the <template> tag behaves as if it were
/// added to the <object> tag defining `widget` itself. You may set properties
/// on `widget` by inserting <property> tags into the <template> tag, and also
/// add <child> tags to add children and extend `widget` in the normal way you
/// would with <object> tags.
/// 
/// Additionally, <object> tags can also be added before and after the initial
/// <template> tag in the normal way, allowing one to define auxiliary objects
/// which might be referenced by other widgets declared as children of the
/// <template> tag.
/// 
/// An example of a GtkBuilder Template Definition:
/// ```
/// <interface>
///   <template class="FooWidget" parent="GtkBox">
///     <property name="orientation">horizontal</property>
///     <property name="spacing">4</property>
///     <child>
///       <object class="GtkButton" id="hello_button">
///         <property name="label">Hello World</property>
///         <signal name="clicked" handler="hello_button_clicked" object="FooWidget" swapped="yes"/>
///       </object>
///     </child>
///     <child>
///       <object class="GtkButton" id="goodbye_button">
///         <property name="label">Goodbye World</property>
///       </object>
///     </child>
///   </template>
/// </interface>
/// ```
/// 
/// Typically, you'll place the template fragment into a file that is
/// bundled with your project, using `GResource`. In order to load the
/// template, you need to call `gtk_widget_class_set_template_from_resource()`
/// from the class initialization of your `GtkWidget` type:
/// 
/// (C Language Example):
/// ```C
/// static void
/// foo_widget_class_init (FooWidgetClass *klass)
/// {
///   // ...
/// 
///   gtk_widget_class_set_template_from_resource (GTK_WIDGET_CLASS (klass),
///                                                "/com/example/ui/foowidget.ui");
/// }
/// ```
/// 
/// You will also need to call `gtk_widget_init_template()` from the instance
/// initialization function:
/// 
/// (C Language Example):
/// ```C
/// static void
/// foo_widget_init (FooWidget *self)
/// {
///   // ...
///   gtk_widget_init_template (GTK_WIDGET (self));
/// }
/// ```
/// 
/// You can access widgets defined in the template using the
/// `gtk_widget_get_template_child()` function, but you will typically declare
/// a pointer in the instance private data structure of your type using the same
/// name as the widget in the template definition, and call
/// `gtk_widget_class_bind_template_child_private()` with that name, e.g.
/// 
/// (C Language Example):
/// ```C
/// typedef struct {
///   GtkWidget *hello_button;
///   GtkWidget *goodbye_button;
/// } FooWidgetPrivate;
/// 
/// G_DEFINE_TYPE_WITH_PRIVATE (FooWidget, foo_widget, GTK_TYPE_BOX)
/// 
/// static void
/// foo_widget_class_init (FooWidgetClass *klass)
/// {
///   // ...
///   gtk_widget_class_set_template_from_resource (GTK_WIDGET_CLASS (klass),
///                                                "/com/example/ui/foowidget.ui");
///   gtk_widget_class_bind_template_child_private (GTK_WIDGET_CLASS (klass),
///                                                 FooWidget, hello_button);
///   gtk_widget_class_bind_template_child_private (GTK_WIDGET_CLASS (klass),
///                                                 FooWidget, goodbye_button);
/// }
/// 
/// static void
/// foo_widget_init (FooWidget *widget)
/// {
/// 
/// }
/// ```
/// 
/// You can also use `gtk_widget_class_bind_template_callback()` to connect a signal
/// callback defined in the template with a function visible in the scope of the
/// class, e.g.
/// 
/// (C Language Example):
/// ```C
/// // the signal handler has the instance and user data swapped
/// // because of the swapped="yes" attribute in the template XML
/// static void
/// hello_button_clicked (FooWidget *self,
///                       GtkButton *button)
/// {
///   g_print ("Hello, world!\n");
/// }
/// 
/// static void
/// foo_widget_class_init (FooWidgetClass *klass)
/// {
///   // ...
///   gtk_widget_class_set_template_from_resource (GTK_WIDGET_CLASS (klass),
///                                                "/com/example/ui/foowidget.ui");
///   gtk_widget_class_bind_template_callback (GTK_WIDGET_CLASS (klass), hello_button_clicked);
/// }
/// ```
/// 
public protocol WidgetProtocol: GLibObject.InitiallyUnownedProtocol, AccessibleProtocol, BuildableProtocol, ConstraintTargetProtocol {
        /// Untyped pointer to the underlying `GtkWidget` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkWidget` instance.
    var widget_ptr: UnsafeMutablePointer<GtkWidget>! { get }

}

/// The `WidgetRef` type acts as a lightweight Swift reference to an underlying `GtkWidget` instance.
/// It exposes methods that can operate on this data type through `WidgetProtocol` conformance.
/// Use `WidgetRef` only as an `unowned` reference to an existing `GtkWidget` instance.
///
/// GtkWidget is the base class all widgets in GTK derive from. It manages the
/// widget lifecycle, states and style.
/// 
/// # Height-for-width Geometry Management # <a name="geometry-management"></a>
/// 
/// GTK uses a height-for-width (and width-for-height) geometry management
/// system. Height-for-width means that a widget can change how much
/// vertical space it needs, depending on the amount of horizontal space
/// that it is given (and similar for width-for-height). The most common
/// example is a label that reflows to fill up the available width, wraps
/// to fewer lines, and therefore needs less height.
/// 
/// Height-for-width geometry management is implemented in GTK by way
/// of two virtual methods:
/// 
/// - `GtkWidgetClass.get_request_mode``()`
/// - `GtkWidgetClass.measure``()`
/// 
/// There are some important things to keep in mind when implementing
/// height-for-width and when using it in widget implementations.
/// 
/// If you implement a direct `GtkWidget` subclass that supports
/// height-for-width or width-for-height geometry management for
/// itself or its child widgets, the `GtkWidgetClass.get_request_mode``()`
/// virtual function must be implemented as well and return the widget's
/// preferred request mode. The default implementation of this virtual function
/// returns `GTK_SIZE_REQUEST_CONSTANT_SIZE`, which means that the widget will
/// only ever get -1 passed as the for_size value to its `GtkWidgetClass.measure``()`
/// implementation.
/// 
/// The geometry management system will query a widget hierarchy in
/// only one orientation at a time. When widgets are initially queried
/// for their minimum sizes it is generally done in two initial passes
/// in the `GtkSizeRequestMode` chosen by the toplevel.
/// 
/// For example, when queried in the normal
/// `GTK_SIZE_REQUEST_HEIGHT_FOR_WIDTH` mode:
/// First, the default minimum and natural width for each widget
/// in the interface will be computed using `gtk_widget_measure()` with an
/// orientation of `GTK_ORIENTATION_HORIZONTAL` and a for_size of -1.
/// Because the preferred widths for each widget depend on the preferred
/// widths of their children, this information propagates up the hierarchy,
/// and finally a minimum and natural width is determined for the entire
/// toplevel. Next, the toplevel will use the minimum width to query for the
/// minimum height contextual to that width using `gtk_widget_measure()` with an
/// orientation of `GTK_ORIENTATION_VERTICAL` and a for_size of the just computed
/// width. This will also be a highly recursive operation. The minimum height
/// for the minimum width is normally used to set the minimum size constraint
/// on the toplevel.
/// 
/// After the toplevel window has initially requested its size in both
/// dimensions it can go on to allocate itself a reasonable size (or a size
/// previously specified with `gtk_window_set_default_size()`). During the
/// recursive allocation process it’s important to note that request cycles
/// will be recursively executed while widgets allocate their children.
/// Each widget, once allocated a size, will go on to first share the
/// space in one orientation among its children and then request each child's
/// height for its target allocated width or its width for allocated height,
/// depending. In this way a `GtkWidget` will typically be requested its size
/// a number of times before actually being allocated a size. The size a
/// widget is finally allocated can of course differ from the size it has
/// requested. For this reason, `GtkWidget` caches a  small number of results
/// to avoid re-querying for the same sizes in one allocation cycle.
/// 
/// If a widget does move content around to intelligently use up the
/// allocated size then it must support the request in both
/// `GtkSizeRequestModes` even if the widget in question only
/// trades sizes in a single orientation.
/// 
/// For instance, a `GtkLabel` that does height-for-width word wrapping
/// will not expect to have `GtkWidgetClass.measure``()` with an orientation of
/// `GTK_ORIENTATION_VERTICAL` called because that call is specific to a
/// width-for-height request. In this
/// case the label must return the height required for its own minimum
/// possible width. By following this rule any widget that handles
/// height-for-width or width-for-height requests will always be allocated
/// at least enough space to fit its own content.
/// 
/// Here are some examples of how a `GTK_SIZE_REQUEST_HEIGHT_FOR_WIDTH` widget
/// generally deals with width-for-height requests:
/// 
/// (C Language Example):
/// ```C
/// static void
/// foo_widget_measure (GtkWidget      *widget,
///                     GtkOrientation  orientation,
///                     int             for_size,
///                     int            *minimum_size,
///                     int            *natural_size,
///                     int            *minimum_baseline,
///                     int            *natural_baseline)
/// {
///   if (orientation == GTK_ORIENTATION_HORIZONTAL)
///     {
///       // Calculate minimum and natural width
///     }
///   else // VERTICAL
///     {
///        if (i_am_in_height_for_width_mode)
///          {
///            int min_width, dummy;
/// 
///            // First, get the minimum width of our widget
///            GTK_WIDGET_GET_CLASS (widget)->measure (widget, GTK_ORIENTATION_HORIZONTAL, -1,
///                                                    &min_width, &dummy, &dummy, &dummy);
/// 
///            // Now use the minimum width to retrieve the minimum and natural height to display
///            // that width.
///            GTK_WIDGET_GET_CLASS (widget)->measure (widget, GTK_ORIENTATION_VERTICAL, min_width,
///                                                    minimum_size, natural_size, &dummy, &dummy);
///          }
///        else
///          {
///            // ... some widgets do both.
///          }
///    }
/// }
/// ```
/// 
/// Often a widget needs to get its own request during size request or
/// allocation. For example, when computing height it may need to also
/// compute width. Or when deciding how to use an allocation, the widget
/// may need to know its natural size. In these cases, the widget should
/// be careful to call its virtual methods directly, like in the code
/// example above.
/// 
/// It will not work to use the wrapper function `gtk_widget_measure()`
/// inside your own `GtkWidgetClass.size``-allocate()` implementation.
/// These return a request adjusted by `GtkSizeGroup`, the widget's align and expand flags
/// as well as its CSS style.
/// If a widget used the wrappers inside its virtual method implementations,
/// then the adjustments (such as widget margins) would be applied
/// twice. GTK therefore does not allow this and will warn if you try
/// to do it.
/// 
/// Of course if you are getting the size request for
/// another widget, such as a child widget, you must use `gtk_widget_measure()`.
/// Otherwise, you would not properly consider widget margins,
/// `GtkSizeGroup`, and so forth.
/// 
/// GTK also supports baseline vertical alignment of widgets. This
/// means that widgets are positioned such that the typographical baseline of
/// widgets in the same row are aligned. This happens if a widget supports baselines,
/// has a vertical alignment of `GTK_ALIGN_BASELINE`, and is inside a widget
/// that supports baselines and has a natural “row” that it aligns to the baseline,
/// or a baseline assigned to it by the grandparent.
/// 
/// Baseline alignment support for a widget is also done by the `GtkWidgetClass.measure``()`
/// virtual function. It allows you to report both a minimum and natural size.
/// 
/// If a widget ends up baseline aligned it will be allocated all the space in the parent
/// as if it was `GTK_ALIGN_FILL`, but the selected baseline can be found via `gtk_widget_get_allocated_baseline()`.
/// If this has a value other than -1 you need to align the widget such that the baseline
/// appears at the position.
/// 
/// # GtkWidget as GtkBuildable
/// 
/// The GtkWidget implementation of the `GtkBuildable` interface supports a
/// custom elements to specify various aspects of widgets that are not
/// directly expressed as properties.
/// 
/// If the parent widget uses a `GtkLayoutManager`, `GtkWidget` supports a
/// custom `<layout>` element, used to define layout properties:
/// 
/// ```
/// <object class="MyGrid" id="grid1">
///   <child>
///     <object class="GtkLabel" id="label1">
///       <property name="label">Description</property>
///       <layout>
///         <property name="column">0</property>
///         <property name="row">0</property>
///         <property name="row-span">1</property>
///         <property name="column-span">1</property>
///       </layout>
///     </object>
///   </child>
///   <child>
///     <object class="GtkEntry" id="description_entry">
///       <layout>
///         <property name="column">1</property>
///         <property name="row">0</property>
///         <property name="row-span">1</property>
///         <property name="column-span">1</property>
///       </layout>
///     </object>
///   </child>
/// </object>
/// ```
/// 
/// GtkWidget allows style information such as style classes to
/// be associated with widgets, using the custom `<style>` element:
/// ```
/// <object class="GtkButton" id="button1">
///   <style>
///     <class name="my-special-button-class"/>
///     <class name="dark-button"/>
///   </style>
/// </object>
/// ```
/// 
/// GtkWidget allows defining accessibility information, such as properties,
/// relations, and states, using the custom `<accessibility>` element:
/// ```
/// <object class="GtkButton" id="button1">
///   <accessibility>
///     <property name="label">Download</property>
///     <relation name="labelled-by">label1</relation>
///   </accessibility>
/// </object>
/// ```
/// 
/// # Building composite widgets from template XML ## <a name="composite-templates"></a>
/// 
/// GtkWidget exposes some facilities to automate the procedure
/// of creating composite widgets using `GtkBuilder` interface description
/// language.
/// 
/// To create composite widgets with `GtkBuilder` XML, one must associate
/// the interface description with the widget class at class initialization
/// time using `gtk_widget_class_set_template()`.
/// 
/// The interface description semantics expected in composite template descriptions
/// is slightly different from regular `GtkBuilder` XML.
/// 
/// Unlike regular interface descriptions, `gtk_widget_class_set_template()` will
/// expect a <template> tag as a direct child of the toplevel <interface>
/// tag. The <template> tag must specify the “class” attribute which must be
/// the type name of the widget. Optionally, the “parent” attribute may be
/// specified to specify the direct parent type of the widget type, this is
/// ignored by the GtkBuilder but required for Glade to introspect what kind
/// of properties and internal children exist for a given type when the actual
/// type does not exist.
/// 
/// The XML which is contained inside the <template> tag behaves as if it were
/// added to the <object> tag defining `widget` itself. You may set properties
/// on `widget` by inserting <property> tags into the <template> tag, and also
/// add <child> tags to add children and extend `widget` in the normal way you
/// would with <object> tags.
/// 
/// Additionally, <object> tags can also be added before and after the initial
/// <template> tag in the normal way, allowing one to define auxiliary objects
/// which might be referenced by other widgets declared as children of the
/// <template> tag.
/// 
/// An example of a GtkBuilder Template Definition:
/// ```
/// <interface>
///   <template class="FooWidget" parent="GtkBox">
///     <property name="orientation">horizontal</property>
///     <property name="spacing">4</property>
///     <child>
///       <object class="GtkButton" id="hello_button">
///         <property name="label">Hello World</property>
///         <signal name="clicked" handler="hello_button_clicked" object="FooWidget" swapped="yes"/>
///       </object>
///     </child>
///     <child>
///       <object class="GtkButton" id="goodbye_button">
///         <property name="label">Goodbye World</property>
///       </object>
///     </child>
///   </template>
/// </interface>
/// ```
/// 
/// Typically, you'll place the template fragment into a file that is
/// bundled with your project, using `GResource`. In order to load the
/// template, you need to call `gtk_widget_class_set_template_from_resource()`
/// from the class initialization of your `GtkWidget` type:
/// 
/// (C Language Example):
/// ```C
/// static void
/// foo_widget_class_init (FooWidgetClass *klass)
/// {
///   // ...
/// 
///   gtk_widget_class_set_template_from_resource (GTK_WIDGET_CLASS (klass),
///                                                "/com/example/ui/foowidget.ui");
/// }
/// ```
/// 
/// You will also need to call `gtk_widget_init_template()` from the instance
/// initialization function:
/// 
/// (C Language Example):
/// ```C
/// static void
/// foo_widget_init (FooWidget *self)
/// {
///   // ...
///   gtk_widget_init_template (GTK_WIDGET (self));
/// }
/// ```
/// 
/// You can access widgets defined in the template using the
/// `gtk_widget_get_template_child()` function, but you will typically declare
/// a pointer in the instance private data structure of your type using the same
/// name as the widget in the template definition, and call
/// `gtk_widget_class_bind_template_child_private()` with that name, e.g.
/// 
/// (C Language Example):
/// ```C
/// typedef struct {
///   GtkWidget *hello_button;
///   GtkWidget *goodbye_button;
/// } FooWidgetPrivate;
/// 
/// G_DEFINE_TYPE_WITH_PRIVATE (FooWidget, foo_widget, GTK_TYPE_BOX)
/// 
/// static void
/// foo_widget_class_init (FooWidgetClass *klass)
/// {
///   // ...
///   gtk_widget_class_set_template_from_resource (GTK_WIDGET_CLASS (klass),
///                                                "/com/example/ui/foowidget.ui");
///   gtk_widget_class_bind_template_child_private (GTK_WIDGET_CLASS (klass),
///                                                 FooWidget, hello_button);
///   gtk_widget_class_bind_template_child_private (GTK_WIDGET_CLASS (klass),
///                                                 FooWidget, goodbye_button);
/// }
/// 
/// static void
/// foo_widget_init (FooWidget *widget)
/// {
/// 
/// }
/// ```
/// 
/// You can also use `gtk_widget_class_bind_template_callback()` to connect a signal
/// callback defined in the template with a function visible in the scope of the
/// class, e.g.
/// 
/// (C Language Example):
/// ```C
/// // the signal handler has the instance and user data swapped
/// // because of the swapped="yes" attribute in the template XML
/// static void
/// hello_button_clicked (FooWidget *self,
///                       GtkButton *button)
/// {
///   g_print ("Hello, world!\n");
/// }
/// 
/// static void
/// foo_widget_class_init (FooWidgetClass *klass)
/// {
///   // ...
///   gtk_widget_class_set_template_from_resource (GTK_WIDGET_CLASS (klass),
///                                                "/com/example/ui/foowidget.ui");
///   gtk_widget_class_bind_template_callback (GTK_WIDGET_CLASS (klass), hello_button_clicked);
/// }
/// ```
/// 
public struct WidgetRef: WidgetProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkWidget` instance.
    /// For type-safe access, use the generated, typed pointer `widget_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension WidgetRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkWidget>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkWidget>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkWidget>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkWidget>?) {
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

    /// Reference intialiser for a related type that implements `WidgetProtocol`
    @inlinable init<T: WidgetProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: WidgetProtocol>(_ other: T) -> WidgetRef { WidgetRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Widget` type acts as a reference-counted owner of an underlying `GtkWidget` instance.
/// It provides the methods that can operate on this data type through `WidgetProtocol` conformance.
/// Use `Widget` as a strong reference or owner of a `GtkWidget` instance.
///
/// GtkWidget is the base class all widgets in GTK derive from. It manages the
/// widget lifecycle, states and style.
/// 
/// # Height-for-width Geometry Management # <a name="geometry-management"></a>
/// 
/// GTK uses a height-for-width (and width-for-height) geometry management
/// system. Height-for-width means that a widget can change how much
/// vertical space it needs, depending on the amount of horizontal space
/// that it is given (and similar for width-for-height). The most common
/// example is a label that reflows to fill up the available width, wraps
/// to fewer lines, and therefore needs less height.
/// 
/// Height-for-width geometry management is implemented in GTK by way
/// of two virtual methods:
/// 
/// - `GtkWidgetClass.get_request_mode``()`
/// - `GtkWidgetClass.measure``()`
/// 
/// There are some important things to keep in mind when implementing
/// height-for-width and when using it in widget implementations.
/// 
/// If you implement a direct `GtkWidget` subclass that supports
/// height-for-width or width-for-height geometry management for
/// itself or its child widgets, the `GtkWidgetClass.get_request_mode``()`
/// virtual function must be implemented as well and return the widget's
/// preferred request mode. The default implementation of this virtual function
/// returns `GTK_SIZE_REQUEST_CONSTANT_SIZE`, which means that the widget will
/// only ever get -1 passed as the for_size value to its `GtkWidgetClass.measure``()`
/// implementation.
/// 
/// The geometry management system will query a widget hierarchy in
/// only one orientation at a time. When widgets are initially queried
/// for their minimum sizes it is generally done in two initial passes
/// in the `GtkSizeRequestMode` chosen by the toplevel.
/// 
/// For example, when queried in the normal
/// `GTK_SIZE_REQUEST_HEIGHT_FOR_WIDTH` mode:
/// First, the default minimum and natural width for each widget
/// in the interface will be computed using `gtk_widget_measure()` with an
/// orientation of `GTK_ORIENTATION_HORIZONTAL` and a for_size of -1.
/// Because the preferred widths for each widget depend on the preferred
/// widths of their children, this information propagates up the hierarchy,
/// and finally a minimum and natural width is determined for the entire
/// toplevel. Next, the toplevel will use the minimum width to query for the
/// minimum height contextual to that width using `gtk_widget_measure()` with an
/// orientation of `GTK_ORIENTATION_VERTICAL` and a for_size of the just computed
/// width. This will also be a highly recursive operation. The minimum height
/// for the minimum width is normally used to set the minimum size constraint
/// on the toplevel.
/// 
/// After the toplevel window has initially requested its size in both
/// dimensions it can go on to allocate itself a reasonable size (or a size
/// previously specified with `gtk_window_set_default_size()`). During the
/// recursive allocation process it’s important to note that request cycles
/// will be recursively executed while widgets allocate their children.
/// Each widget, once allocated a size, will go on to first share the
/// space in one orientation among its children and then request each child's
/// height for its target allocated width or its width for allocated height,
/// depending. In this way a `GtkWidget` will typically be requested its size
/// a number of times before actually being allocated a size. The size a
/// widget is finally allocated can of course differ from the size it has
/// requested. For this reason, `GtkWidget` caches a  small number of results
/// to avoid re-querying for the same sizes in one allocation cycle.
/// 
/// If a widget does move content around to intelligently use up the
/// allocated size then it must support the request in both
/// `GtkSizeRequestModes` even if the widget in question only
/// trades sizes in a single orientation.
/// 
/// For instance, a `GtkLabel` that does height-for-width word wrapping
/// will not expect to have `GtkWidgetClass.measure``()` with an orientation of
/// `GTK_ORIENTATION_VERTICAL` called because that call is specific to a
/// width-for-height request. In this
/// case the label must return the height required for its own minimum
/// possible width. By following this rule any widget that handles
/// height-for-width or width-for-height requests will always be allocated
/// at least enough space to fit its own content.
/// 
/// Here are some examples of how a `GTK_SIZE_REQUEST_HEIGHT_FOR_WIDTH` widget
/// generally deals with width-for-height requests:
/// 
/// (C Language Example):
/// ```C
/// static void
/// foo_widget_measure (GtkWidget      *widget,
///                     GtkOrientation  orientation,
///                     int             for_size,
///                     int            *minimum_size,
///                     int            *natural_size,
///                     int            *minimum_baseline,
///                     int            *natural_baseline)
/// {
///   if (orientation == GTK_ORIENTATION_HORIZONTAL)
///     {
///       // Calculate minimum and natural width
///     }
///   else // VERTICAL
///     {
///        if (i_am_in_height_for_width_mode)
///          {
///            int min_width, dummy;
/// 
///            // First, get the minimum width of our widget
///            GTK_WIDGET_GET_CLASS (widget)->measure (widget, GTK_ORIENTATION_HORIZONTAL, -1,
///                                                    &min_width, &dummy, &dummy, &dummy);
/// 
///            // Now use the minimum width to retrieve the minimum and natural height to display
///            // that width.
///            GTK_WIDGET_GET_CLASS (widget)->measure (widget, GTK_ORIENTATION_VERTICAL, min_width,
///                                                    minimum_size, natural_size, &dummy, &dummy);
///          }
///        else
///          {
///            // ... some widgets do both.
///          }
///    }
/// }
/// ```
/// 
/// Often a widget needs to get its own request during size request or
/// allocation. For example, when computing height it may need to also
/// compute width. Or when deciding how to use an allocation, the widget
/// may need to know its natural size. In these cases, the widget should
/// be careful to call its virtual methods directly, like in the code
/// example above.
/// 
/// It will not work to use the wrapper function `gtk_widget_measure()`
/// inside your own `GtkWidgetClass.size``-allocate()` implementation.
/// These return a request adjusted by `GtkSizeGroup`, the widget's align and expand flags
/// as well as its CSS style.
/// If a widget used the wrappers inside its virtual method implementations,
/// then the adjustments (such as widget margins) would be applied
/// twice. GTK therefore does not allow this and will warn if you try
/// to do it.
/// 
/// Of course if you are getting the size request for
/// another widget, such as a child widget, you must use `gtk_widget_measure()`.
/// Otherwise, you would not properly consider widget margins,
/// `GtkSizeGroup`, and so forth.
/// 
/// GTK also supports baseline vertical alignment of widgets. This
/// means that widgets are positioned such that the typographical baseline of
/// widgets in the same row are aligned. This happens if a widget supports baselines,
/// has a vertical alignment of `GTK_ALIGN_BASELINE`, and is inside a widget
/// that supports baselines and has a natural “row” that it aligns to the baseline,
/// or a baseline assigned to it by the grandparent.
/// 
/// Baseline alignment support for a widget is also done by the `GtkWidgetClass.measure``()`
/// virtual function. It allows you to report both a minimum and natural size.
/// 
/// If a widget ends up baseline aligned it will be allocated all the space in the parent
/// as if it was `GTK_ALIGN_FILL`, but the selected baseline can be found via `gtk_widget_get_allocated_baseline()`.
/// If this has a value other than -1 you need to align the widget such that the baseline
/// appears at the position.
/// 
/// # GtkWidget as GtkBuildable
/// 
/// The GtkWidget implementation of the `GtkBuildable` interface supports a
/// custom elements to specify various aspects of widgets that are not
/// directly expressed as properties.
/// 
/// If the parent widget uses a `GtkLayoutManager`, `GtkWidget` supports a
/// custom `<layout>` element, used to define layout properties:
/// 
/// ```
/// <object class="MyGrid" id="grid1">
///   <child>
///     <object class="GtkLabel" id="label1">
///       <property name="label">Description</property>
///       <layout>
///         <property name="column">0</property>
///         <property name="row">0</property>
///         <property name="row-span">1</property>
///         <property name="column-span">1</property>
///       </layout>
///     </object>
///   </child>
///   <child>
///     <object class="GtkEntry" id="description_entry">
///       <layout>
///         <property name="column">1</property>
///         <property name="row">0</property>
///         <property name="row-span">1</property>
///         <property name="column-span">1</property>
///       </layout>
///     </object>
///   </child>
/// </object>
/// ```
/// 
/// GtkWidget allows style information such as style classes to
/// be associated with widgets, using the custom `<style>` element:
/// ```
/// <object class="GtkButton" id="button1">
///   <style>
///     <class name="my-special-button-class"/>
///     <class name="dark-button"/>
///   </style>
/// </object>
/// ```
/// 
/// GtkWidget allows defining accessibility information, such as properties,
/// relations, and states, using the custom `<accessibility>` element:
/// ```
/// <object class="GtkButton" id="button1">
///   <accessibility>
///     <property name="label">Download</property>
///     <relation name="labelled-by">label1</relation>
///   </accessibility>
/// </object>
/// ```
/// 
/// # Building composite widgets from template XML ## <a name="composite-templates"></a>
/// 
/// GtkWidget exposes some facilities to automate the procedure
/// of creating composite widgets using `GtkBuilder` interface description
/// language.
/// 
/// To create composite widgets with `GtkBuilder` XML, one must associate
/// the interface description with the widget class at class initialization
/// time using `gtk_widget_class_set_template()`.
/// 
/// The interface description semantics expected in composite template descriptions
/// is slightly different from regular `GtkBuilder` XML.
/// 
/// Unlike regular interface descriptions, `gtk_widget_class_set_template()` will
/// expect a <template> tag as a direct child of the toplevel <interface>
/// tag. The <template> tag must specify the “class” attribute which must be
/// the type name of the widget. Optionally, the “parent” attribute may be
/// specified to specify the direct parent type of the widget type, this is
/// ignored by the GtkBuilder but required for Glade to introspect what kind
/// of properties and internal children exist for a given type when the actual
/// type does not exist.
/// 
/// The XML which is contained inside the <template> tag behaves as if it were
/// added to the <object> tag defining `widget` itself. You may set properties
/// on `widget` by inserting <property> tags into the <template> tag, and also
/// add <child> tags to add children and extend `widget` in the normal way you
/// would with <object> tags.
/// 
/// Additionally, <object> tags can also be added before and after the initial
/// <template> tag in the normal way, allowing one to define auxiliary objects
/// which might be referenced by other widgets declared as children of the
/// <template> tag.
/// 
/// An example of a GtkBuilder Template Definition:
/// ```
/// <interface>
///   <template class="FooWidget" parent="GtkBox">
///     <property name="orientation">horizontal</property>
///     <property name="spacing">4</property>
///     <child>
///       <object class="GtkButton" id="hello_button">
///         <property name="label">Hello World</property>
///         <signal name="clicked" handler="hello_button_clicked" object="FooWidget" swapped="yes"/>
///       </object>
///     </child>
///     <child>
///       <object class="GtkButton" id="goodbye_button">
///         <property name="label">Goodbye World</property>
///       </object>
///     </child>
///   </template>
/// </interface>
/// ```
/// 
/// Typically, you'll place the template fragment into a file that is
/// bundled with your project, using `GResource`. In order to load the
/// template, you need to call `gtk_widget_class_set_template_from_resource()`
/// from the class initialization of your `GtkWidget` type:
/// 
/// (C Language Example):
/// ```C
/// static void
/// foo_widget_class_init (FooWidgetClass *klass)
/// {
///   // ...
/// 
///   gtk_widget_class_set_template_from_resource (GTK_WIDGET_CLASS (klass),
///                                                "/com/example/ui/foowidget.ui");
/// }
/// ```
/// 
/// You will also need to call `gtk_widget_init_template()` from the instance
/// initialization function:
/// 
/// (C Language Example):
/// ```C
/// static void
/// foo_widget_init (FooWidget *self)
/// {
///   // ...
///   gtk_widget_init_template (GTK_WIDGET (self));
/// }
/// ```
/// 
/// You can access widgets defined in the template using the
/// `gtk_widget_get_template_child()` function, but you will typically declare
/// a pointer in the instance private data structure of your type using the same
/// name as the widget in the template definition, and call
/// `gtk_widget_class_bind_template_child_private()` with that name, e.g.
/// 
/// (C Language Example):
/// ```C
/// typedef struct {
///   GtkWidget *hello_button;
///   GtkWidget *goodbye_button;
/// } FooWidgetPrivate;
/// 
/// G_DEFINE_TYPE_WITH_PRIVATE (FooWidget, foo_widget, GTK_TYPE_BOX)
/// 
/// static void
/// foo_widget_class_init (FooWidgetClass *klass)
/// {
///   // ...
///   gtk_widget_class_set_template_from_resource (GTK_WIDGET_CLASS (klass),
///                                                "/com/example/ui/foowidget.ui");
///   gtk_widget_class_bind_template_child_private (GTK_WIDGET_CLASS (klass),
///                                                 FooWidget, hello_button);
///   gtk_widget_class_bind_template_child_private (GTK_WIDGET_CLASS (klass),
///                                                 FooWidget, goodbye_button);
/// }
/// 
/// static void
/// foo_widget_init (FooWidget *widget)
/// {
/// 
/// }
/// ```
/// 
/// You can also use `gtk_widget_class_bind_template_callback()` to connect a signal
/// callback defined in the template with a function visible in the scope of the
/// class, e.g.
/// 
/// (C Language Example):
/// ```C
/// // the signal handler has the instance and user data swapped
/// // because of the swapped="yes" attribute in the template XML
/// static void
/// hello_button_clicked (FooWidget *self,
///                       GtkButton *button)
/// {
///   g_print ("Hello, world!\n");
/// }
/// 
/// static void
/// foo_widget_class_init (FooWidgetClass *klass)
/// {
///   // ...
///   gtk_widget_class_set_template_from_resource (GTK_WIDGET_CLASS (klass),
///                                                "/com/example/ui/foowidget.ui");
///   gtk_widget_class_bind_template_callback (GTK_WIDGET_CLASS (klass), hello_button_clicked);
/// }
/// ```
/// 
open class Widget: GLibObject.InitiallyUnowned, WidgetProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Widget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkWidget>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Widget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkWidget>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Widget` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Widget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Widget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkWidget>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Widget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkWidget>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkWidget`.
    /// i.e., ownership is transferred to the `Widget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkWidget>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `WidgetProtocol`
    /// Will retain `GtkWidget`.
    /// - Parameter other: an instance of a related type that implements `WidgetProtocol`
    @inlinable public init<T: WidgetProtocol>(widget other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum WidgetPropertyName: String, PropertyNameProtocol {
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

public extension WidgetProtocol {
    /// Bind a `WidgetPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: WidgetPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Widget property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: WidgetPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Widget property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: WidgetPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of Widget
public extension WidgetProtocol {
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    /// - Note: Representation of signal named `destroy`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onDestroy(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<WidgetRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "destroy", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `direction`-changed signal is emitted when the text direction
    /// of a widget changes.
    /// - Note: Representation of signal named `direction-changed`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter previousDirection: the previous text direction of `widget`
    @discardableResult
    func onDirectionChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef, _ previousDirection: TextDirection) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WidgetRef, TextDirection, Void>
        let cCallback: @convention(c) (gpointer, UInt32, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf), TextDirection(arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "direction-changed", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `hide` signal is emitted when `widget` is hidden, for example with
    /// `gtk_widget_hide()`.
    /// - Note: Representation of signal named `hide`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onHide(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<WidgetRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "hide", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// Gets emitted if keyboard navigation fails.
    /// See `gtk_widget_keynav_failed()` for details.
    /// - Note: Representation of signal named `keynav-failed`
    /// - Parameter flags: Flags
    /// - Parameter handler: `true` if stopping keyboard navigation is fine, `false`          if the emitting widget should try to handle the keyboard          navigation attempt in its parent `widget(s)`.
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter direction: the direction of movement
    @discardableResult
    func onKeynavFailed(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef, _ direction: DirectionType) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WidgetRef, DirectionType, Bool>
        let cCallback: @convention(c) (gpointer, UInt32, gpointer) -> gboolean = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(WidgetRef(raw: unownedSelf), DirectionType(arg1))
            return gboolean((output) ? 1 : 0)
        }
        return signalConnectData(
            detailedSignal: "keynav-failed", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `map` signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// `gtk_widget_set_visible()`) and all its parents up to the toplevel widget
    /// are also visible.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget::unmap`.
    /// - Note: Representation of signal named `map`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onMap(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<WidgetRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "map", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    /// - Note: Representation of signal named `mnemonic-activate`
    /// - Parameter flags: Flags
    /// - Parameter handler: `true` to stop other handlers from being invoked for the event. `false` to propagate the event further.
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter groupCycling: `true` if there are other widgets with the same mnemonic
    @discardableResult
    func onMnemonicActivate(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef, _ groupCycling: Bool) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WidgetRef, Bool, Bool>
        let cCallback: @convention(c) (gpointer, gboolean, gpointer) -> gboolean = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(WidgetRef(raw: unownedSelf), ((arg1) != 0))
            return gboolean((output) ? 1 : 0)
        }
        return signalConnectData(
            detailedSignal: "mnemonic-activate", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// Emitted when the focus is moved.
    /// - Note: Representation of signal named `move-focus`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter direction: the direction of the focus move
    @discardableResult
    func onMoveFocus(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef, _ direction: DirectionType) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WidgetRef, DirectionType, Void>
        let cCallback: @convention(c) (gpointer, UInt32, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf), DirectionType(arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "move-focus", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `query-tooltip`
    /// - Parameter flags: Flags
    /// - Parameter handler: `true` if `tooltip` should be shown right now, `false` otherwise.
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter x: the x coordinate of the cursor position where the request has     been emitted, relative to `widget`'s left side
    /// - Parameter y: the y coordinate of the cursor position where the request has     been emitted, relative to `widget`'s top
    /// - Parameter keyboardMode: `true` if the tooltip was triggered using the keyboard
    /// - Parameter tooltip: a `GtkTooltip`
    @discardableResult
    func onQueryTooltip(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef, _ x: Int, _ y: Int, _ keyboardMode: Bool, _ tooltip: TooltipRef) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder5<WidgetRef, Int, Int, Bool, TooltipRef, Bool>
        let cCallback: @convention(c) (gpointer, gint, gint, gboolean, gpointer, gpointer) -> gboolean = { unownedSelf, arg1, arg2, arg3, arg4, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(WidgetRef(raw: unownedSelf), Int(arg1), Int(arg2), ((arg3) != 0), TooltipRef(raw: arg4))
            return gboolean((output) ? 1 : 0)
        }
        return signalConnectData(
            detailedSignal: "query-tooltip", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `realize` signal is emitted when `widget` is associated with a
    /// `GdkSurface`, which means that `gtk_widget_realize()` has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    /// - Note: Representation of signal named `realize`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onRealize(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<WidgetRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "realize", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `show` signal is emitted when `widget` is shown, for example with
    /// `gtk_widget_show()`.
    /// - Note: Representation of signal named `show`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onShow(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<WidgetRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "show", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `state`-flags-changed signal is emitted when the widget state
    /// changes, see `gtk_widget_get_state_flags()`.
    /// - Note: Representation of signal named `state-flags-changed`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter flags: The previous state flags.
    @discardableResult
    func onStateFlagsChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef, _ flags: StateFlags) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WidgetRef, StateFlags, Void>
        let cCallback: @convention(c) (gpointer, UInt32, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf), StateFlags(arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "state-flags-changed", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `unmap` signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    /// - Note: Representation of signal named `unmap`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onUnmap(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<WidgetRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "unmap", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `unrealize` signal is emitted when the `GdkSurface` associated with
    /// `widget` is destroyed, which means that `gtk_widget_unrealize()` has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    /// - Note: Representation of signal named `unrealize`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onUnrealize(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<WidgetRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "unrealize", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::can-focus`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyCanFocus(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::can-focus", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::can-target`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyCanTarget(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::can-target", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::css-classes`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyCssClasses(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::css-classes", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::css-name`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyCssName(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::css-name", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::cursor`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyCursor(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::cursor", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::focus-on-click`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyFocusOnClick(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::focus-on-click", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::focusable`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyFocusable(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::focusable", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::halign`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyHalign(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::halign", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::has-default`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyHasDefault(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::has-default", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::has-focus`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyHasFocus(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::has-focus", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::has-tooltip`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyHasTooltip(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::has-tooltip", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::height-request`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyHeightRequest(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::height-request", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::hexpand`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyHexpand(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::hexpand", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::hexpand-set`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyHexpandSet(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::hexpand-set", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::layout-manager`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyLayoutManager(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::layout-manager", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::margin-bottom`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyMarginBottom(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::margin-bottom", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::margin-end`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyMarginEnd(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::margin-end", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::margin-start`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyMarginStart(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::margin-start", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::margin-top`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyMarginTop(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::margin-top", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::name`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyName(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::name", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::opacity`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyOpacity(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::opacity", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::overflow`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyOverflow(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::overflow", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::parent`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyParent(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::parent", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::receives-default`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyReceivesDefault(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::receives-default", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::root`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyRoot(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::root", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::scale-factor`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyScaleFactor(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::scale-factor", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::sensitive`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifySensitive(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::sensitive", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::tooltip-markup`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyTooltipMarkup(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::tooltip-markup", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::tooltip-text`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyTooltipText(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::tooltip-text", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::valign`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyValign(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::valign", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::vexpand`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyVexpand(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::vexpand", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::vexpand-set`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyVexpandSet(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::vexpand-set", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::visible`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyVisible(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::visible", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::width-request`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyWidthRequest(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::width-request", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: Widget Class: WidgetProtocol extension (methods and fields)
public extension WidgetProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkWidget` instance.
    @inlinable var widget_ptr: UnsafeMutablePointer<GtkWidget>! { return ptr?.assumingMemoryBound(to: GtkWidget.self) }

    /// Enable or disable an action installed with
    /// `gtk_widget_class_install_action()`.
    @inlinable func actionSetEnabled(actionName: UnsafePointer<CChar>!, enabled: Bool) {
        gtk_widget_action_set_enabled(widget_ptr, actionName, gboolean((enabled) ? 1 : 0))
    
    }

    /// For widgets that can be “activated” (buttons, menu items, etc.)
    /// this function activates them. The activation will emit the signal
    /// set using `gtk_widget_class_set_activate_signal()` during class
    /// initialization.
    /// 
    /// Activation is what happens when you press Enter on a widget during
    /// key navigation.
    /// 
    /// If you wish to handle the activation keybinding yourself, it is
    /// recommended to use `gtk_widget_class_add_shortcut()` with an action
    /// created with `gtk_signal_action_new()`.
    /// 
    /// If `widget` isn't activatable, the function returns `false`.
    @inlinable func activate() -> Bool {
        let rv = ((gtk_widget_activate(widget_ptr)) != 0)
        return rv
    }


    // *** activateAction() is not available because it has a varargs (...) parameter!


    /// Looks up the action in the action groups associated
    /// with `widget` and its ancestors, and activates it.
    /// 
    /// If the action is in an action group added with
    /// `gtk_widget_insert_action_group()`, the `name` is
    /// expected to be prefixed with the prefix that was
    /// used when the group was inserted.
    /// 
    /// The arguments must match the actions expected parameter
    /// type, as returned by `g_action_get_parameter_type()`.
    @inlinable func activateActionVariant(name: UnsafePointer<CChar>!, args: GLib.VariantRef? = nil) -> Bool {
        let rv = ((gtk_widget_activate_action_variant(widget_ptr, name, args?.variant_ptr)) != 0)
        return rv
    }
    /// Looks up the action in the action groups associated
    /// with `widget` and its ancestors, and activates it.
    /// 
    /// If the action is in an action group added with
    /// `gtk_widget_insert_action_group()`, the `name` is
    /// expected to be prefixed with the prefix that was
    /// used when the group was inserted.
    /// 
    /// The arguments must match the actions expected parameter
    /// type, as returned by `g_action_get_parameter_type()`.
    @inlinable func activateActionVariant<VariantT: GLib.VariantProtocol>(name: UnsafePointer<CChar>!, args: VariantT?) -> Bool {
        let rv = ((gtk_widget_activate_action_variant(widget_ptr, name, args?.variant_ptr)) != 0)
        return rv
    }

    /// Activate the default.activate action from `widget`.
    @inlinable func activateDefault() {
        gtk_widget_activate_default(widget_ptr)
    
    }

    /// Adds `controller` to `widget` so that it will receive events. You will
    /// usually want to call this function right after creating any kind of
    /// `GtkEventController`.
    @inlinable func add<EventControllerT: EventControllerProtocol>(controller: EventControllerT) {
        gtk_widget_add_controller(widget_ptr, controller.event_controller_ptr)
    
    }

    /// Adds `css_class` to `widget`. After calling this function, `widget`'s
    /// style will match for `css_class`, after the CSS matching rules.
    @inlinable func add(cssClass: UnsafePointer<CChar>!) {
        gtk_widget_add_css_class(widget_ptr, cssClass)
    
    }

    /// Adds a widget to the list of mnemonic labels for
    /// this widget. (See `gtk_widget_list_mnemonic_labels()`). Note the
    /// list of mnemonic labels for the widget is cleared when the
    /// widget is destroyed, so the caller must make sure to update
    /// its internal state at this point as well, by using a connection
    /// to the `GtkWidget::destroy` signal or a weak notifier.
    @inlinable func addMnemonic<WidgetT: WidgetProtocol>(label: WidgetT) {
        gtk_widget_add_mnemonic_label(widget_ptr, label.widget_ptr)
    
    }

    /// Queues an animation frame update and adds a callback to be called
    /// before each frame. Until the tick callback is removed, it will be
    /// called frequently (usually at the frame rate of the output device
    /// or as quickly as the application can be repainted, whichever is
    /// slower). For this reason, is most suitable for handling graphics
    /// that change every frame or every few frames. The tick callback does
    /// not automatically imply a relayout or repaint. If you want a
    /// repaint or relayout, and aren’t changing widget properties that
    /// would trigger that (for example, changing the text of a `GtkLabel`),
    /// then you will have to call `gtk_widget_queue_resize()` or
    /// `gtk_widget_queue_draw()` yourself.
    /// 
    /// `gdk_frame_clock_get_frame_time()` should generally be used for timing
    /// continuous animations and
    /// `gdk_frame_timings_get_predicted_presentation_time()` if you are
    /// trying to display isolated frames at particular times.
    /// 
    /// This is a more convenient alternative to connecting directly to the
    /// `GdkFrameClock::update` signal of `GdkFrameClock`, since you don't
    /// have to worry about when a `GdkFrameClock` is assigned to a widget.
    @inlinable func addTick(callback: GtkTickCallback?, userData: gpointer! = nil, notify: GDestroyNotify?) -> Int {
        let rv = Int(gtk_widget_add_tick_callback(widget_ptr, callback, userData, notify))
        return rv
    }

    /// This function is only used by `GtkWidget` subclasses, to assign a size,
    /// position and (optionally) baseline to their child widgets.
    /// 
    /// In this function, the allocation and baseline may be adjusted. The given
    /// allocation will be forced to be bigger than the widget's minimum size,
    /// as well as at least 0×0 in size.
    /// 
    /// For a version that does not take a transform, see `gtk_widget_size_allocate()`
    @inlinable func allocate(width: Int, height: Int, baseline: Int, transform: UnsafeMutablePointer<GskTransform>? = nil) {
        gtk_widget_allocate(widget_ptr, gint(width), gint(height), gint(baseline), transform)
    
    }

    /// This function is used by custom widget implementations; if you're
    /// writing an app, you’d use `gtk_widget_grab_focus()` to move the focus
    /// to a particular widget.
    /// 
    /// `gtk_widget_child_focus()` is called by widgets as the user moves
    /// around the window using keyboard shortcuts. `direction` indicates
    /// what kind of motion is taking place (up, down, left, right, tab
    /// forward, tab backward). `gtk_widget_child_focus()` calls the
    /// `GtkWidgetClass.focus``()` vfunc; widgets override this vfunc
    /// in order to implement appropriate focus behavior.
    /// 
    /// The default `focus()` vfunc for a widget should return `true` if
    /// moving in `direction` left the focus on a focusable location inside
    /// that widget, and `false` if moving in `direction` moved the focus
    /// outside the widget. If returning `true`, widgets normally
    /// call `gtk_widget_grab_focus()` to place the focus accordingly;
    /// if returning `false`, they don’t modify the current focus location.
    @inlinable func childFocus(direction: GtkDirectionType) -> Bool {
        let rv = ((gtk_widget_child_focus(widget_ptr, direction)) != 0)
        return rv
    }

    /// Computes the bounds for `widget` in the coordinate space of `target`.
    /// FIXME: Explain what "bounds" are.
    /// 
    /// If the operation is successful, `true` is returned. If `widget` has no
    /// bounds or the bounds cannot be expressed in `target`'s coordinate space
    /// (for example if both widgets are in different windows), `false` is
    /// returned and `bounds` is set to the zero rectangle.
    /// 
    /// It is valid for `widget` and `target` to be the same widget.
    @inlinable func computeBounds<WidgetT: WidgetProtocol>(target: WidgetT, outBounds: UnsafeMutablePointer<graphene_rect_t>!) -> Bool {
        let rv = ((gtk_widget_compute_bounds(widget_ptr, target.widget_ptr, outBounds)) != 0)
        return rv
    }

    /// Computes whether a container should give this widget extra space
    /// when possible. Containers should check this, rather than
    /// looking at `gtk_widget_get_hexpand()` or `gtk_widget_get_vexpand()`.
    /// 
    /// This function already checks whether the widget is visible, so
    /// visibility does not need to be checked separately. Non-visible
    /// widgets are not expanded.
    /// 
    /// The computed expand value uses either the expand setting explicitly
    /// set on the widget itself, or, if none has been explicitly set,
    /// the widget may expand if some of its children do.
    @inlinable func computeExpand(orientation: GtkOrientation) -> Bool {
        let rv = ((gtk_widget_compute_expand(widget_ptr, orientation)) != 0)
        return rv
    }

    /// Translates the given `point` in `widget`'s coordinates to coordinates
    /// relative to `target`’s coordinate system. In order to perform this
    /// operation, both widgets must share a common root.
    @inlinable func computePoint<WidgetT: WidgetProtocol>(target: WidgetT, point: UnsafePointer<graphene_point_t>!, outPoint: UnsafeMutablePointer<graphene_point_t>!) -> Bool {
        let rv = ((gtk_widget_compute_point(widget_ptr, target.widget_ptr, point, outPoint)) != 0)
        return rv
    }

    /// Computes a matrix suitable to describe a transformation from
    /// `widget`'s coordinate system into `target`'s coordinate system.
    @inlinable func computeTransform<WidgetT: WidgetProtocol>(target: WidgetT, outTransform: UnsafeMutablePointer<graphene_matrix_t>!) -> Bool {
        let rv = ((gtk_widget_compute_transform(widget_ptr, target.widget_ptr, outTransform)) != 0)
        return rv
    }

    /// Tests if the point at (`x`, `y`) is contained in `widget`.
    /// 
    /// The coordinates for (`x`, `y`) must be in widget coordinates, so
    /// (0, 0) is assumed to be the top left of `widget`'s content area.
    @inlinable func contains(x: CDouble, y: CDouble) -> Bool {
        let rv = ((gtk_widget_contains(widget_ptr, x, y)) != 0)
        return rv
    }

    /// Creates a new `PangoContext` with the appropriate font map,
    /// font options, font description, and base direction for drawing
    /// text for this widget. See also `gtk_widget_get_pango_context()`.
    @inlinable func createPangoContext() -> Pango.ContextRef! {
        let rv = Pango.ContextRef(gtk_widget_create_pango_context(widget_ptr))
        return rv
    }

    /// Creates a new `PangoLayout` with the appropriate font map,
    /// font description, and base direction for drawing text for
    /// this widget.
    /// 
    /// If you keep a `PangoLayout` created in this way around, you need
    /// to re-create it when the widget `PangoContext` is replaced.
    /// This can be tracked by listening to changes of the `GtkWidget:root` property
    /// on the widget.
    @inlinable func createPangoLayout(text: UnsafePointer<CChar>? = nil) -> Pango.LayoutRef! {
        let rv = Pango.LayoutRef(gtk_widget_create_pango_layout(widget_ptr, text))
        return rv
    }

    /// Checks to see if a mouse drag starting at (`start_x`, `start_y`) and ending
    /// at (`current_x`, `current_y`) has passed the GTK drag threshold, and thus
    /// should trigger the beginning of a drag-and-drop operation.
    @inlinable func dragCheckThreshold(startX: Int, startY: Int, currentX: Int, currentY: Int) -> Bool {
        let rv = ((gtk_drag_check_threshold(widget_ptr, gint(startX), gint(startY), gint(currentX), gint(currentY))) != 0)
        return rv
    }

    /// Notifies the user about an input-related error on this widget.
    /// If the `GtkSettings:gtk`-error-bell setting is `true`, it calls
    /// `gdk_surface_beep()`, otherwise it does nothing.
    /// 
    /// Note that the effect of `gdk_surface_beep()` can be configured in many
    /// ways, depending on the windowing backend and the desktop environment
    /// or window manager that is used.
    @inlinable func errorBell() {
        gtk_widget_error_bell(widget_ptr)
    
    }

    /// Returns the baseline that has currently been allocated to `widget`.
    /// This function is intended to be used when implementing handlers
    /// for the `GtkWidgetClass.snapshot``()` function, and when allocating child
    /// widgets in `GtkWidgetClass.size_allocate``()`.
    @inlinable func getAllocatedBaseline() -> Int {
        let rv = Int(gtk_widget_get_allocated_baseline(widget_ptr))
        return rv
    }

    /// Returns the height that has currently been allocated to `widget`.
    @inlinable func getAllocatedHeight() -> Int {
        let rv = Int(gtk_widget_get_allocated_height(widget_ptr))
        return rv
    }

    /// Returns the width that has currently been allocated to `widget`.
    @inlinable func getAllocatedWidth() -> Int {
        let rv = Int(gtk_widget_get_allocated_width(widget_ptr))
        return rv
    }

    /// Retrieves the widget’s allocation.
    /// 
    /// Note, when implementing a layout container: a widget’s allocation
    /// will be its “adjusted” allocation, that is, the widget’s parent
    /// typically calls `gtk_widget_size_allocate()` with an allocation,
    /// and that allocation is then adjusted (to handle margin
    /// and alignment for example) before assignment to the widget.
    /// `gtk_widget_get_allocation()` returns the adjusted allocation that
    /// was actually assigned to the widget. The adjusted allocation is
    /// guaranteed to be completely contained within the
    /// `gtk_widget_size_allocate()` allocation, however.
    /// 
    /// So a layout container is guaranteed that its children stay inside
    /// the assigned bounds, but not that they have exactly the bounds the
    /// container assigned.
    @inlinable func get(allocation: UnsafeMutablePointer<GtkAllocation>!) {
        gtk_widget_get_allocation(widget_ptr, allocation)
    
    }

    /// Gets the first ancestor of `widget` with type `widget_type`. For example,
    /// `gtk_widget_get_ancestor (widget, GTK_TYPE_BOX)` gets
    /// the first `GtkBox` that’s an ancestor of `widget`. No reference will be
    /// added to the returned widget; it should not be unreferenced.
    /// 
    /// Note that unlike `gtk_widget_is_ancestor()`, `gtk_widget_get_ancestor()`
    /// considers `widget` to be an ancestor of itself.
    @inlinable func getAncestor(widgetType: GType) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_widget_get_ancestor(widget_ptr, widgetType))) else { return nil }
        return rv
    }

    /// Determines whether the input focus can enter `widget` or any
    /// of its children.
    /// 
    /// See `gtk_widget_set_focusable()`.
    @inlinable func getCanFocus() -> Bool {
        let rv = ((gtk_widget_get_can_focus(widget_ptr)) != 0)
        return rv
    }

    /// Queries whether `widget` can be the target of pointer events.
    @inlinable func getCanTarget() -> Bool {
        let rv = ((gtk_widget_get_can_target(widget_ptr)) != 0)
        return rv
    }

    /// Gets the value set with `gtk_widget_set_child_visible()`.
    /// If you feel a need to use this function, your code probably
    /// needs reorganization.
    /// 
    /// This function is only useful for container implementations and
    /// never should be called by an application.
    @inlinable func getChildVisible() -> Bool {
        let rv = ((gtk_widget_get_child_visible(widget_ptr)) != 0)
        return rv
    }

    /// This is a utility function to get the clipboard object for the
    /// `GdkDisplay` that `widget` is using.
    /// 
    /// Note that this function always works, even when `widget` is not
    /// realized yet.
    @inlinable func getClipboard() -> Gdk.ClipboardRef! {
        let rv = Gdk.ClipboardRef(gtk_widget_get_clipboard(widget_ptr))
        return rv
    }

    /// Returns the list of css classes applied to `widget`.
    @inlinable func getCssClasses() -> UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>! {
        let rv = gtk_widget_get_css_classes(widget_ptr)
        return rv
    }

    /// Returns the CSS name that is used for `self`.
    @inlinable func getCssName() -> String! {
        let rv = gtk_widget_get_css_name(widget_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Queries the cursor set via `gtk_widget_set_cursor()`. See that function for
    /// details.
    @inlinable func getCursor() -> Gdk.CursorRef! {
        let rv = Gdk.CursorRef(gtk_widget_get_cursor(widget_ptr))
        return rv
    }

    /// Gets the reading direction for a particular widget. See
    /// `gtk_widget_set_direction()`.
    @inlinable func getDirection() -> GtkTextDirection {
        let rv = gtk_widget_get_direction(widget_ptr)
        return rv
    }

    /// Get the `GdkDisplay` for the toplevel window associated with
    /// this widget. This function can only be called after the widget
    /// has been added to a widget hierarchy with a `GtkWindow` at the top.
    /// 
    /// In general, you should only create display specific
    /// resources when a widget has been realized, and you should
    /// free those resources when the widget is unrealized.
    @inlinable func getDisplay() -> Gdk.DisplayRef! {
        let rv = Gdk.DisplayRef(gtk_widget_get_display(widget_ptr))
        return rv
    }

    /// Returns the widgets first child.
    /// 
    /// This API is primarily meant for widget implementations.
    @inlinable func getFirstChild() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_widget_get_first_child(widget_ptr))) else { return nil }
        return rv
    }

    /// Returns the current focus child of `widget`.
    @inlinable func getFocusChild() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_widget_get_focus_child(widget_ptr))) else { return nil }
        return rv
    }

    /// Returns whether the widget should grab focus when it is clicked with the mouse.
    /// See `gtk_widget_set_focus_on_click()`.
    @inlinable func getFocusOnClick() -> Bool {
        let rv = ((gtk_widget_get_focus_on_click(widget_ptr)) != 0)
        return rv
    }

    /// Determines whether `widget` can own the input focus.
    /// See `gtk_widget_set_focusable()`.
    @inlinable func getFocusable() -> Bool {
        let rv = ((gtk_widget_get_focusable(widget_ptr)) != 0)
        return rv
    }

    /// Gets the font map that has been set with `gtk_widget_set_font_map()`.
    @inlinable func getFontMap() -> Pango.FontMapRef! {
        let rv = Pango.FontMapRef(gtk_widget_get_font_map(widget_ptr))
        return rv
    }

    /// Returns the `cairo_font_options_t` used for Pango rendering. When not set,
    /// the defaults font options for the `GdkDisplay` will be used.
    @inlinable func getFontOptions() -> Cairo.FontOptionsRef! {
        let rv = Cairo.FontOptionsRef(gtk_widget_get_font_options(widget_ptr))
        return rv
    }

    /// Obtains the frame clock for a widget. The frame clock is a global
    /// “ticker” that can be used to drive animations and repaints.  The
    /// most common reason to get the frame clock is to call
    /// `gdk_frame_clock_get_frame_time()`, in order to get a time to use for
    /// animating. For example you might record the start of the animation
    /// with an initial value from `gdk_frame_clock_get_frame_time()`, and
    /// then update the animation by calling
    /// `gdk_frame_clock_get_frame_time()` again during each repaint.
    /// 
    /// `gdk_frame_clock_request_phase()` will result in a new frame on the
    /// clock, but won’t necessarily repaint any widgets. To repaint a
    /// widget, you have to use `gtk_widget_queue_draw()` which invalidates
    /// the widget (thus scheduling it to receive a draw on the next
    /// frame). `gtk_widget_queue_draw()` will also end up requesting a frame
    /// on the appropriate frame clock.
    /// 
    /// A widget’s frame clock will not change while the widget is
    /// mapped. Reparenting a widget (which implies a temporary unmap) can
    /// change the widget’s frame clock.
    /// 
    /// Unrealized widgets do not have a frame clock.
    @inlinable func getFrameClock() -> Gdk.FrameClockRef! {
        let rv = Gdk.FrameClockRef(gtk_widget_get_frame_clock(widget_ptr))
        return rv
    }

    /// Gets the value of the `GtkWidget:halign` property.
    /// 
    /// For backwards compatibility reasons this method will never return
    /// `GTK_ALIGN_BASELINE`, but instead it will convert it to
    /// `GTK_ALIGN_FILL`. Baselines are not supported for horizontal
    /// alignment.
    @inlinable func getHalign() -> GtkAlign {
        let rv = gtk_widget_get_halign(widget_ptr)
        return rv
    }

    /// Returns the current value of the has-tooltip property.  See
    /// `GtkWidget:has`-tooltip for more information.
    @inlinable func getHasTooltip() -> Bool {
        let rv = ((gtk_widget_get_has_tooltip(widget_ptr)) != 0)
        return rv
    }

    /// Returns the content height of the widget, as passed to its size-allocate implementation.
    /// This is the size you should be using in `GtkWidgetClass.snapshot()`. For pointer
    /// events, see `gtk_widget_contains()`.
    @inlinable func getHeight() -> Int {
        let rv = Int(gtk_widget_get_height(widget_ptr))
        return rv
    }

    /// Gets whether the widget would like any available extra horizontal
    /// space. When a user resizes a `GtkWindow`, widgets with expand=TRUE
    /// generally receive the extra space. For example, a list or
    /// scrollable area or document in your window would often be set to
    /// expand.
    /// 
    /// Containers should use `gtk_widget_compute_expand()` rather than
    /// this function, to see whether a widget, or any of its children,
    /// has the expand flag set. If any child of a widget wants to
    /// expand, the parent may ask to expand also.
    /// 
    /// This function only looks at the widget’s own hexpand flag, rather
    /// than computing whether the entire widget tree rooted at this widget
    /// wants to expand.
    @inlinable func getHexpand() -> Bool {
        let rv = ((gtk_widget_get_hexpand(widget_ptr)) != 0)
        return rv
    }

    /// Gets whether `gtk_widget_set_hexpand()` has been used to
    /// explicitly set the expand flag on this widget.
    /// 
    /// If hexpand is set, then it overrides any computed
    /// expand value based on child widgets. If hexpand is not
    /// set, then the expand value depends on whether any
    /// children of the widget would like to expand.
    /// 
    /// There are few reasons to use this function, but it’s here
    /// for completeness and consistency.
    @inlinable func getHexpandSet() -> Bool {
        let rv = ((gtk_widget_get_hexpand_set(widget_ptr)) != 0)
        return rv
    }

    /// Returns the widgets last child.
    /// 
    /// This API is primarily meant for widget implementations.
    @inlinable func getLastChild() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_widget_get_last_child(widget_ptr))) else { return nil }
        return rv
    }

    /// Retrieves the layout manager set using `gtk_widget_set_layout_manager()`.
    @inlinable func getLayoutManager() -> LayoutManagerRef! {
        let rv = LayoutManagerRef(gconstpointer: gconstpointer(gtk_widget_get_layout_manager(widget_ptr)))
        return rv
    }

    /// Whether the widget is mapped.
    @inlinable func getMapped() -> Bool {
        let rv = ((gtk_widget_get_mapped(widget_ptr)) != 0)
        return rv
    }

    /// Gets the value of the `GtkWidget:margin`-bottom property.
    @inlinable func getMarginBottom() -> Int {
        let rv = Int(gtk_widget_get_margin_bottom(widget_ptr))
        return rv
    }

    /// Gets the value of the `GtkWidget:margin`-end property.
    @inlinable func getMarginEnd() -> Int {
        let rv = Int(gtk_widget_get_margin_end(widget_ptr))
        return rv
    }

    /// Gets the value of the `GtkWidget:margin`-start property.
    @inlinable func getMarginStart() -> Int {
        let rv = Int(gtk_widget_get_margin_start(widget_ptr))
        return rv
    }

    /// Gets the value of the `GtkWidget:margin`-top property.
    @inlinable func getMarginTop() -> Int {
        let rv = Int(gtk_widget_get_margin_top(widget_ptr))
        return rv
    }

    /// Retrieves the name of a widget. See `gtk_widget_set_name()` for the
    /// significance of widget names.
    @inlinable func getName() -> String! {
        let rv = gtk_widget_get_name(widget_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns the GtkNative widget that contains `widget`,
    /// or `nil` if the widget is not contained inside a
    /// widget tree with a native ancestor.
    /// 
    /// `GtkNative` widgets will return themselves here.
    @inlinable func getNative() -> NativeRef! {
        let rv = NativeRef(gconstpointer: gconstpointer(gtk_widget_get_native(widget_ptr)))
        return rv
    }

    /// Returns the widgets next sibling.
    /// 
    /// This API is primarily meant for widget implementations.
    @inlinable func getNextSibling() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_widget_get_next_sibling(widget_ptr))) else { return nil }
        return rv
    }

    /// Fetches the requested opacity for this widget.
    /// See `gtk_widget_set_opacity()`.
    @inlinable func getOpacity() -> CDouble {
        let rv = gtk_widget_get_opacity(widget_ptr)
        return rv
    }

    /// Returns the value set via `gtk_widget_set_overflow()`.
    @inlinable func getOverflow() -> GtkOverflow {
        let rv = gtk_widget_get_overflow(widget_ptr)
        return rv
    }

    /// Gets a `PangoContext` with the appropriate font map, font description,
    /// and base direction for this widget. Unlike the context returned
    /// by `gtk_widget_create_pango_context()`, this context is owned by
    /// the widget (it can be used until the screen for the widget changes
    /// or the widget is removed from its toplevel), and will be updated to
    /// match any changes to the widget’s attributes. This can be tracked
    /// by listening to changes of the `GtkWidget:root` property on the widget.
    @inlinable func getPangoContext() -> Pango.ContextRef! {
        let rv = Pango.ContextRef(gtk_widget_get_pango_context(widget_ptr))
        return rv
    }

    /// Returns the parent widget of `widget`.
    @inlinable func getParent() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_widget_get_parent(widget_ptr))) else { return nil }
        return rv
    }

    /// Retrieves the minimum and natural size of a widget, taking
    /// into account the widget’s preference for height-for-width management.
    /// 
    /// This is used to retrieve a suitable size by container widgets which do
    /// not impose any restrictions on the child placement. It can be used
    /// to deduce toplevel window and menu sizes as well as child widgets in
    /// free-form containers such as GtkLayout.
    /// 
    /// Handle with care. Note that the natural height of a height-for-width
    /// widget will generally be a smaller size than the minimum height, since the required
    /// height for the natural width is generally smaller than the required height for
    /// the minimum width.
    /// 
    /// Use `gtk_widget_measure()` if you want to support
    /// baseline alignment.
    @inlinable func getPreferredSize(minimumSize: RequisitionRef? = nil, naturalSize: RequisitionRef? = nil) {
        gtk_widget_get_preferred_size(widget_ptr, minimumSize?.requisition_ptr, naturalSize?.requisition_ptr)
    
    }
    /// Retrieves the minimum and natural size of a widget, taking
    /// into account the widget’s preference for height-for-width management.
    /// 
    /// This is used to retrieve a suitable size by container widgets which do
    /// not impose any restrictions on the child placement. It can be used
    /// to deduce toplevel window and menu sizes as well as child widgets in
    /// free-form containers such as GtkLayout.
    /// 
    /// Handle with care. Note that the natural height of a height-for-width
    /// widget will generally be a smaller size than the minimum height, since the required
    /// height for the natural width is generally smaller than the required height for
    /// the minimum width.
    /// 
    /// Use `gtk_widget_measure()` if you want to support
    /// baseline alignment.
    @inlinable func getPreferredSize<RequisitionT: RequisitionProtocol>(minimumSize: RequisitionT?, naturalSize: RequisitionT?) {
        gtk_widget_get_preferred_size(widget_ptr, minimumSize?.requisition_ptr, naturalSize?.requisition_ptr)
    
    }

    /// Returns the widgets previous sibling.
    /// 
    /// This API is primarily meant for widget implementations.
    @inlinable func getPrevSibling() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_widget_get_prev_sibling(widget_ptr))) else { return nil }
        return rv
    }

    /// This is a utility function to get the primary clipboard object
    /// for the `GdkDisplay` that `widget` is using.
    /// 
    /// Note that this function always works, even when `widget` is not
    /// realized yet.
    @inlinable func getPrimaryClipboard() -> Gdk.ClipboardRef! {
        let rv = Gdk.ClipboardRef(gtk_widget_get_primary_clipboard(widget_ptr))
        return rv
    }

    /// Determines whether `widget` is realized.
    @inlinable func getRealized() -> Bool {
        let rv = ((gtk_widget_get_realized(widget_ptr)) != 0)
        return rv
    }

    /// Determines whether `widget` is always treated as the default widget
    /// within its toplevel when it has the focus, even if another widget
    /// is the default.
    /// 
    /// See `gtk_widget_set_receives_default()`.
    @inlinable func getReceivesDefault() -> Bool {
        let rv = ((gtk_widget_get_receives_default(widget_ptr)) != 0)
        return rv
    }

    /// Gets whether the widget prefers a height-for-width layout
    /// or a width-for-height layout.
    /// 
    /// `GtkBin` widgets generally propagate the preference of
    /// their child, container widgets need to request something either in
    /// context of their children or in context of their allocation
    /// capabilities.
    @inlinable func getRequestMode() -> GtkSizeRequestMode {
        let rv = gtk_widget_get_request_mode(widget_ptr)
        return rv
    }

    /// Returns the `GtkRoot` widget of `widget` or `nil` if the widget is not contained
    /// inside a widget tree with a root widget.
    /// 
    /// `GtkRoot` widgets will return themselves here.
    @inlinable func getRoot() -> RootRef! {
        let rv = RootRef(gconstpointer: gconstpointer(gtk_widget_get_root(widget_ptr)))
        return rv
    }

    /// Retrieves the internal scale factor that maps from window coordinates
    /// to the actual device pixels. On traditional systems this is 1, on
    /// high density outputs, it can be a higher value (typically 2).
    /// 
    /// See `gdk_surface_get_scale_factor()`.
    @inlinable func getScaleFactor() -> Int {
        let rv = Int(gtk_widget_get_scale_factor(widget_ptr))
        return rv
    }

    /// Returns the widget’s sensitivity (in the sense of returning
    /// the value that has been set using `gtk_widget_set_sensitive()`).
    /// 
    /// The effective sensitivity of a widget is however determined by both its
    /// own and its parent widget’s sensitivity. See `gtk_widget_is_sensitive()`.
    @inlinable func getSensitive() -> Bool {
        let rv = ((gtk_widget_get_sensitive(widget_ptr)) != 0)
        return rv
    }

    /// Gets the settings object holding the settings used for this widget.
    /// 
    /// Note that this function can only be called when the `GtkWidget`
    /// is attached to a toplevel, since the settings object is specific
    /// to a particular `GdkDisplay`. If you want to monitor the widget for
    /// changes in its settings, connect to notify`display`.
    @inlinable func getSettings() -> SettingsRef! {
        let rv = SettingsRef(gconstpointer: gconstpointer(gtk_widget_get_settings(widget_ptr)))
        return rv
    }

    /// Returns the content width or height of the widget, depending on `orientation`.
    /// This is equivalent to calling `gtk_widget_get_width()` for `GTK_ORIENTATION_HORIZONTAL`
    /// or `gtk_widget_get_height()` for `GTK_ORIENTATION_VERTICAL`, but can be used when
    /// writing orientation-independent code, such as when implementing `GtkOrientable`
    /// widgets.
    @inlinable func getSize(orientation: GtkOrientation) -> Int {
        let rv = Int(gtk_widget_get_size(widget_ptr, orientation))
        return rv
    }

    /// Gets the size request that was explicitly set for the widget using
    /// `gtk_widget_set_size_request()`. A value of -1 stored in `width` or
    /// `height` indicates that that dimension has not been set explicitly
    /// and the natural requisition of the widget will be used instead. See
    /// `gtk_widget_set_size_request()`. To get the size a widget will
    /// actually request, call `gtk_widget_measure()` instead of
    /// this function.
    @inlinable func getSizeRequest(width: UnsafeMutablePointer<gint>! = nil, height: UnsafeMutablePointer<gint>! = nil) {
        gtk_widget_get_size_request(widget_ptr, width, height)
    
    }

    /// Returns the widget state as a flag set. It is worth mentioning
    /// that the effective `GTK_STATE_FLAG_INSENSITIVE` state will be
    /// returned, that is, also based on parent insensitivity, even if
    /// `widget` itself is sensitive.
    /// 
    /// Also note that if you are looking for a way to obtain the
    /// `GtkStateFlags` to pass to a `GtkStyleContext` method, you
    /// should look at `gtk_style_context_get_state()`.
    @inlinable func getStateFlags() -> StateFlags {
        let rv = StateFlags(gtk_widget_get_state_flags(widget_ptr))
        return rv
    }

    /// Returns the style context associated to `widget`. The returned object is
    /// guaranteed to be the same for the lifetime of `widget`.
    @inlinable func getStyleContext() -> StyleContextRef! {
        let rv = StyleContextRef(gconstpointer: gconstpointer(gtk_widget_get_style_context(widget_ptr)))
        return rv
    }

    /// Fetch an object build from the template XML for `widget_type` in this `widget` instance.
    /// 
    /// This will only report children which were previously declared with
    /// `gtk_widget_class_bind_template_child_full()` or one of its
    /// variants.
    /// 
    /// This function is only meant to be called for code which is private to the `widget_type` which
    /// declared the child and is meant for language bindings which cannot easily make use
    /// of the GObject structure offsets.
    @inlinable func getTemplateChild(widgetType: GType, name: UnsafePointer<CChar>!) -> GLibObject.ObjectRef! {
        let rv = GLibObject.ObjectRef(gtk_widget_get_template_child(widget_ptr, widgetType, name))
        return rv
    }

    /// Gets the contents of the tooltip for `widget` set using
    /// `gtk_widget_set_tooltip_markup()`.
    @inlinable func getTooltipMarkup() -> String! {
        let rv = gtk_widget_get_tooltip_markup(widget_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the contents of the tooltip for `widget`.
    /// 
    /// If the `widget`'s tooltip was set using `gtk_widget_set_tooltip_markup()`,
    /// this function will return the escaped text.
    @inlinable func getTooltipText() -> String! {
        let rv = gtk_widget_get_tooltip_text(widget_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the value of the `GtkWidget:valign` property.
    @inlinable func getValign() -> GtkAlign {
        let rv = gtk_widget_get_valign(widget_ptr)
        return rv
    }

    /// Gets whether the widget would like any available extra vertical
    /// space.
    /// 
    /// See `gtk_widget_get_hexpand()` for more detail.
    @inlinable func getVexpand() -> Bool {
        let rv = ((gtk_widget_get_vexpand(widget_ptr)) != 0)
        return rv
    }

    /// Gets whether `gtk_widget_set_vexpand()` has been used to
    /// explicitly set the expand flag on this widget.
    /// 
    /// See `gtk_widget_get_hexpand_set()` for more detail.
    @inlinable func getVexpandSet() -> Bool {
        let rv = ((gtk_widget_get_vexpand_set(widget_ptr)) != 0)
        return rv
    }

    /// Determines whether the widget is visible. If you want to
    /// take into account whether the widget’s parent is also marked as
    /// visible, use `gtk_widget_is_visible()` instead.
    /// 
    /// This function does not check if the widget is obscured in any way.
    /// 
    /// See `gtk_widget_set_visible()`.
    @inlinable func getVisible() -> Bool {
        let rv = ((gtk_widget_get_visible(widget_ptr)) != 0)
        return rv
    }

    /// Returns the content width of the widget, as passed to its size-allocate implementation.
    /// This is the size you should be using in `GtkWidgetClass.snapshot()`. For pointer
    /// events, see `gtk_widget_contains()`.
    @inlinable func getWidth() -> Int {
        let rv = Int(gtk_widget_get_width(widget_ptr))
        return rv
    }

    /// Causes `widget` (or one of its descendents) to have the keyboard focus
    /// for the `GtkWindow` it's inside.
    /// 
    /// If `widget` is not focusable, or its `grab_focus` implementation cannot
    /// transfer the focus to a descendant of `widget` that is focusable, it will
    /// not take focus and `false` will be returned.
    /// 
    /// Calling `gtk_widget_grab_focus()` on an already focused widget is allowed,
    /// should not have an effect, and return `true`.
    @inlinable func grabFocus() -> Bool {
        let rv = ((gtk_widget_grab_focus(widget_ptr)) != 0)
        return rv
    }

    /// Returns whether `css_class` is currently applied to `widget`.
    @inlinable func has(cssClass: UnsafePointer<CChar>!) -> Bool {
        let rv = ((gtk_widget_has_css_class(widget_ptr, cssClass)) != 0)
        return rv
    }

    /// Determines whether `widget` is the current default widget within its
    /// toplevel.
    @inlinable func hasDefault() -> Bool {
        let rv = ((gtk_widget_has_default(widget_ptr)) != 0)
        return rv
    }

    /// Determines if the widget has the global input focus. See
    /// `gtk_widget_is_focus()` for the difference between having the global
    /// input focus, and only having the focus within a toplevel.
    @inlinable func hasFocus() -> Bool {
        let rv = ((gtk_widget_has_focus(widget_ptr)) != 0)
        return rv
    }

    /// Determines if the widget should show a visible indication that
    /// it has the global input focus. This is a convenience function
    /// that takes into account whether focus indication should currently
    /// be shown in the toplevel window of `widget`.
    /// See `gtk_window_get_focus_visible()` for more information
    /// about focus indication.
    /// 
    /// To find out if the widget has the global input focus, use
    /// `gtk_widget_has_focus()`.
    @inlinable func hasVisibleFocus() -> Bool {
        let rv = ((gtk_widget_has_visible_focus(widget_ptr)) != 0)
        return rv
    }

    /// Reverses the effects of `gtk_widget_show()`, causing the widget to be
    /// hidden (invisible to the user).
    @inlinable func hide() {
        gtk_widget_hide(widget_ptr)
    
    }

    /// Returns whether the widget is currently being destroyed.
    /// This information can sometimes be used to avoid doing
    /// unnecessary work.
    @inlinable func inDestruction() -> Bool {
        let rv = ((gtk_widget_in_destruction(widget_ptr)) != 0)
        return rv
    }

    /// Creates and initializes child widgets defined in templates. This
    /// function must be called in the instance initializer for any
    /// class which assigned itself a template using `gtk_widget_class_set_template()`
    /// 
    /// It is important to call this function in the instance initializer
    /// of a `GtkWidget` subclass and not in `GObject.constructed``()` or
    /// `GObject.constructor``()` for two reasons.
    /// 
    /// One reason is that generally derived widgets will assume that parent
    /// class composite widgets have been created in their instance
    /// initializers.
    /// 
    /// Another reason is that when calling `g_object_new()` on a widget with
    /// composite templates, it’s important to build the composite widgets
    /// before the construct properties are set. Properties passed to `g_object_new()`
    /// should take precedence over properties set in the private template XML.
    @inlinable func initTemplate() {
        gtk_widget_init_template(widget_ptr)
    
    }

    /// Inserts `group` into `widget`. Children of `widget` that implement
    /// `GtkActionable` can then be associated with actions in `group` by
    /// setting their “action-name” to `prefix`.`action-name`.
    /// 
    /// Note that inheritance is defined for individual actions. I.e.
    /// even if you insert a group with prefix `prefix`, actions with
    /// the same prefix will still be inherited from the parent, unless
    /// the group contains an action with the same name.
    /// 
    /// If `group` is `nil`, a previously inserted group for `name` is
    /// removed from `widget`.
    @inlinable func insertActionGroup(name: UnsafePointer<CChar>!, group: GIO.ActionGroupRef? = nil) {
        gtk_widget_insert_action_group(widget_ptr, name, group?.action_group_ptr)
    
    }
    /// Inserts `group` into `widget`. Children of `widget` that implement
    /// `GtkActionable` can then be associated with actions in `group` by
    /// setting their “action-name” to `prefix`.`action-name`.
    /// 
    /// Note that inheritance is defined for individual actions. I.e.
    /// even if you insert a group with prefix `prefix`, actions with
    /// the same prefix will still be inherited from the parent, unless
    /// the group contains an action with the same name.
    /// 
    /// If `group` is `nil`, a previously inserted group for `name` is
    /// removed from `widget`.
    @inlinable func insertActionGroup<ActionGroupT: GIO.ActionGroupProtocol>(name: UnsafePointer<CChar>!, group: ActionGroupT?) {
        gtk_widget_insert_action_group(widget_ptr, name, group?.action_group_ptr)
    
    }

    /// Inserts `widget` into the child widget list of `parent`.
    /// 
    /// It will be placed after `previous_sibling`, or at the beginning if
    /// `previous_sibling` is `nil`.
    /// 
    /// After calling this function, `gtk_widget_get_prev_sibling(widget)` will
    /// return `previous_sibling`.
    /// 
    /// If `parent` is already set as the parent widget of `widget`, this function
    /// can also be used to reorder `widget` in the child widget list of `parent`.
    /// 
    /// This API is primarily meant for widget implementations; if you are
    /// just using a widget, you *must* use its own API for adding children.
    @inlinable func insertAfter<WidgetT: WidgetProtocol>(parent: WidgetT, previousSibling: WidgetT?) {
        gtk_widget_insert_after(widget_ptr, parent.widget_ptr, previousSibling?.widget_ptr)
    
    }

    /// Inserts `widget` into the child widget list of `parent`.
    /// 
    /// It will be placed before `next_sibling`, or at the end if
    /// `next_sibling` is `nil`.
    /// 
    /// After calling this function, `gtk_widget_get_next_sibling(widget)`
    /// will return `next_sibling`.
    /// 
    /// If `parent` is already set as the parent widget of `widget`, this function
    /// can also be used to reorder `widget` in the child widget list of `parent`.
    /// 
    /// This API is primarily meant for widget implementations; if you are
    /// just using a widget, you *must* use its own API for adding children.
    @inlinable func insertBefore<WidgetT: WidgetProtocol>(parent: WidgetT, nextSibling: WidgetT?) {
        gtk_widget_insert_before(widget_ptr, parent.widget_ptr, nextSibling?.widget_ptr)
    
    }

    /// Determines whether `widget` is somewhere inside `ancestor`, possibly with
    /// intermediate containers.
    @inlinable func is_<WidgetT: WidgetProtocol>(ancestor: WidgetT) -> Bool {
        let rv = ((gtk_widget_is_ancestor(widget_ptr, ancestor.widget_ptr)) != 0)
        return rv
    }

    /// This function should be called whenever keyboard navigation within
    /// a single widget hits a boundary. The function emits the
    /// `GtkWidget::keynav`-failed signal on the widget and its return
    /// value should be interpreted in a way similar to the return value of
    /// `gtk_widget_child_focus()`:
    /// 
    /// When `true` is returned, stay in the widget, the failed keyboard
    /// navigation is OK and/or there is nowhere we can/should move the
    /// focus to.
    /// 
    /// When `false` is returned, the caller should continue with keyboard
    /// navigation outside the widget, e.g. by calling
    /// `gtk_widget_child_focus()` on the widget’s toplevel.
    /// 
    /// The default `keynav`-failed handler returns `false` for
    /// `GTK_DIR_TAB_FORWARD` and `GTK_DIR_TAB_BACKWARD`. For the other
    /// values of `GtkDirectionType` it returns `true`.
    /// 
    /// Whenever the default handler returns `true`, it also calls
    /// `gtk_widget_error_bell()` to notify the user of the failed keyboard
    /// navigation.
    /// 
    /// A use case for providing an own implementation of `keynav`-failed
    /// (either by connecting to it or by overriding it) would be a row of
    /// `GtkEntry` widgets where the user should be able to navigate the
    /// entire row with the cursor keys, as e.g. known from user interfaces
    /// that require entering license keys.
    @inlinable func keynavFailed(direction: GtkDirectionType) -> Bool {
        let rv = ((gtk_widget_keynav_failed(widget_ptr, direction)) != 0)
        return rv
    }

    /// Returns a newly allocated list of the widgets, normally labels, for
    /// which this widget is the target of a mnemonic (see for example,
    /// `gtk_label_set_mnemonic_widget()`).
    /// 
    /// The widgets in the list are not individually referenced. If you
    /// want to iterate through the list and perform actions involving
    /// callbacks that might destroy the widgets, you
    /// must call `g_list_foreach (result,
    /// (GFunc)g_object_ref, NULL)` first, and then unref all the
    /// widgets afterwards.
    @inlinable func listMnemonicLabels() -> GLib.ListRef! {
        let rv = GLib.ListRef(gtk_widget_list_mnemonic_labels(widget_ptr))
        return rv
    }

    /// This function is only for use in widget implementations. Causes
    /// a widget to be mapped if it isn’t already.
    @inlinable func map() {
        gtk_widget_map(widget_ptr)
    
    }

    /// Measures `widget` in the orientation `orientation` and for the given `for_size`.
    /// As an example, if `orientation` is `GTK_ORIENTATION_HORIZONTAL` and `for_size` is 300,
    /// this functions will compute the minimum and natural width of `widget` if
    /// it is allocated at a height of 300 pixels.
    /// 
    /// See [GtkWidget’s geometry management section](#geometry-management) for
    /// a more details on implementing `GtkWidgetClass.measure``()`.
    @inlinable func measure(orientation: GtkOrientation, `for` size: Int, minimum: UnsafeMutablePointer<gint>! = nil, natural: UnsafeMutablePointer<gint>! = nil, minimumBaseline: UnsafeMutablePointer<gint>! = nil, naturalBaseline: UnsafeMutablePointer<gint>! = nil) {
        gtk_widget_measure(widget_ptr, orientation, gint(size), minimum, natural, minimumBaseline, naturalBaseline)
    
    }

    /// Emits the `GtkWidget::mnemonic`-activate signal.
    @inlinable func mnemonicActivate(groupCycling: Bool) -> Bool {
        let rv = ((gtk_widget_mnemonic_activate(widget_ptr, gboolean((groupCycling) ? 1 : 0))) != 0)
        return rv
    }

    /// Returns a `GListModel` to track the children of `widget`.
    /// 
    /// Calling this function will enable extra internal bookkeeping to track
    /// children and emit signals on the returned listmodel. It may slow down
    /// operations a lot.
    /// 
    /// Applications should try hard to avoid calling this function because of
    /// the slowdowns.
    @inlinable func observeChildren() -> GIO.ListModelRef! {
        let rv = GIO.ListModelRef(gtk_widget_observe_children(widget_ptr))
        return rv
    }

    /// Returns a `GListModel` to track the `GtkEventControllers` of `widget`.
    /// 
    /// Calling this function will enable extra internal bookkeeping to track
    /// controllers and emit signals on the returned listmodel. It may slow down
    /// operations a lot.
    /// 
    /// Applications should try hard to avoid calling this function because of
    /// the slowdowns.
    @inlinable func observeControllers() -> GIO.ListModelRef! {
        let rv = GIO.ListModelRef(gtk_widget_observe_controllers(widget_ptr))
        return rv
    }

    /// Finds the descendant of `widget` (including `widget` itself) closest
    /// to the screen at the point (`x`, `y`). The point must be given in
    /// widget coordinates, so (0, 0) is assumed to be the top left of
    /// `widget`'s content area.
    /// 
    /// Usually widgets will return `nil` if the given coordinate is not
    /// contained in `widget` checked via `gtk_widget_contains()`. Otherwise
    /// they will recursively try to find a child that does not return `nil`.
    /// Widgets are however free to customize their picking algorithm.
    /// 
    /// This function is used on the toplevel to determine the widget below
    /// the mouse cursor for purposes of hover highlighting and delivering events.
    @inlinable func pick(x: CDouble, y: CDouble, flags: PickFlags) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_widget_pick(widget_ptr, x, y, flags.value))) else { return nil }
        return rv
    }

    /// This function is only for use in widget implementations.
    /// 
    /// Flags the widget for a rerun of the GtkWidgetClass`size_allocate`
    /// function. Use this function instead of `gtk_widget_queue_resize()`
    /// when the `widget`'s size request didn't change but it wants to
    /// reposition its contents.
    /// 
    /// An example user of this function is `gtk_widget_set_halign()`.
    @inlinable func queueAllocate() {
        gtk_widget_queue_allocate(widget_ptr)
    
    }

    /// Schedules this widget to be redrawn in paint phase of the
    /// current or the next frame. This means `widget`'s `GtkWidgetClass.snapshot()`
    /// implementation will be called.
    @inlinable func queueDraw() {
        gtk_widget_queue_draw(widget_ptr)
    
    }

    /// This function is only for use in widget implementations.
    /// Flags a widget to have its size renegotiated; should
    /// be called when a widget for some reason has a new size request.
    /// For example, when you change the text in a `GtkLabel`, `GtkLabel`
    /// queues a resize to ensure there’s enough space for the new text.
    /// 
    /// Note that you cannot call `gtk_widget_queue_resize()` on a widget
    /// from inside its implementation of the GtkWidgetClass`size_allocate`
    /// virtual method. Calls to `gtk_widget_queue_resize()` from inside
    /// GtkWidgetClass`size_allocate` will be silently ignored.
    @inlinable func queueResize() {
        gtk_widget_queue_resize(widget_ptr)
    
    }

    /// Creates the GDK (windowing system) resources associated with a
    /// widget. Normally realization happens implicitly; if you show
    /// a widget and all its parent containers, then the widget will be
    /// realized and mapped automatically.
    /// 
    /// Realizing a widget requires all
    /// the widget’s parent widgets to be realized; calling
    /// `gtk_widget_realize()` realizes the widget’s parents in addition to
    /// `widget` itself. If a widget is not yet inside a toplevel window
    /// when you realize it, bad things will happen.
    /// 
    /// This function is primarily used in widget implementations, and
    /// isn’t very useful otherwise. Many times when you think you might
    /// need it, a better approach is to connect to a signal that will be
    /// called after the widget is realized automatically, such as
    /// `GtkWidget::realize`.
    @inlinable func realize() {
        gtk_widget_realize(widget_ptr)
    
    }

    /// Removes `controller` from `widget`, so that it doesn't process
    /// events anymore. It should not be used again.
    /// 
    /// Widgets will remove all event controllers automatically when they
    /// are destroyed, there is normally no need to call this function.
    @inlinable func remove<EventControllerT: EventControllerProtocol>(controller: EventControllerT) {
        gtk_widget_remove_controller(widget_ptr, controller.event_controller_ptr)
    
    }

    /// Removes `css_class` from `widget`. After this, the style of `widget`
    /// will stop matching for `css_class`.
    @inlinable func remove(cssClass: UnsafePointer<CChar>!) {
        gtk_widget_remove_css_class(widget_ptr, cssClass)
    
    }

    /// Removes a widget from the list of mnemonic labels for
    /// this widget. (See `gtk_widget_list_mnemonic_labels()`). The widget
    /// must have previously been added to the list with
    /// `gtk_widget_add_mnemonic_label()`.
    @inlinable func removeMnemonic<WidgetT: WidgetProtocol>(label: WidgetT) {
        gtk_widget_remove_mnemonic_label(widget_ptr, label.widget_ptr)
    
    }

    /// Removes a tick callback previously registered with
    /// `gtk_widget_add_tick_callback()`.
    @inlinable func removeTickCallback(id: Int) {
        gtk_widget_remove_tick_callback(widget_ptr, guint(id))
    
    }

    /// Specifies whether the input focus can enter the widget
    /// or any of its children.
    /// 
    /// Applications should set `can_focus` to `false` to mark a
    /// widget as for pointer/touch use only.
    /// 
    /// Note that having `can_focus` be `true` is only one of the
    /// necessary conditions for being focusable. A widget must
    /// also be sensitive and focusable and not have an ancestor
    /// that is marked as not can-focus in order to receive input
    /// focus.
    /// 
    /// See `gtk_widget_grab_focus()` for actually setting the input
    /// focus on a widget.
    @inlinable func set(canFocus: Bool) {
        gtk_widget_set_can_focus(widget_ptr, gboolean((canFocus) ? 1 : 0))
    
    }

    /// Sets whether `widget` can be the target of pointer events.
    @inlinable func set(canTarget: Bool) {
        gtk_widget_set_can_target(widget_ptr, gboolean((canTarget) ? 1 : 0))
    
    }

    /// Sets whether `widget` should be mapped along with its when its parent
    /// is mapped and `widget` has been shown with `gtk_widget_show()`.
    /// 
    /// The child visibility can be set for widget before it is added to
    /// a container with `gtk_widget_set_parent()`, to avoid mapping
    /// children unnecessary before immediately unmapping them. However
    /// it will be reset to its default state of `true` when the widget
    /// is removed from a container.
    /// 
    /// Note that changing the child visibility of a widget does not
    /// queue a resize on the widget. Most of the time, the size of
    /// a widget is computed from all visible children, whether or
    /// not they are mapped. If this is not the case, the container
    /// can queue a resize itself.
    /// 
    /// This function is only useful for container implementations and
    /// never should be called by an application.
    @inlinable func set(childVisible: Bool) {
        gtk_widget_set_child_visible(widget_ptr, gboolean((childVisible) ? 1 : 0))
    
    }

    /// Will clear all css classes applied to `widget`
    /// and replace them with `classes`.
    @inlinable func setCss(classes: UnsafeMutablePointer<UnsafePointer<CChar>?>!) {
        gtk_widget_set_css_classes(widget_ptr, classes)
    
    }

    /// Sets the cursor to be shown when pointer devices point towards `widget`.
    /// 
    /// If the `cursor` is NULL, `widget` will use the cursor inherited from the
    /// parent widget.
    @inlinable func set(cursor: Gdk.CursorRef? = nil) {
        gtk_widget_set_cursor(widget_ptr, cursor?.cursor_ptr)
    
    }
    /// Sets the cursor to be shown when pointer devices point towards `widget`.
    /// 
    /// If the `cursor` is NULL, `widget` will use the cursor inherited from the
    /// parent widget.
    @inlinable func set<CursorT: Gdk.CursorProtocol>(cursor: CursorT?) {
        gtk_widget_set_cursor(widget_ptr, cursor?.cursor_ptr)
    
    }

    /// Sets a named cursor to be shown when pointer devices point towards `widget`.
    /// 
    /// This is a utility function that creates a cursor via
    /// `gdk_cursor_new_from_name()` and then sets it on `widget` with
    /// `gtk_widget_set_cursor()`. See those 2 functions for details.
    /// 
    /// On top of that, this function allows `name` to be `nil`, which will
    /// do the same as calling `gtk_widget_set_cursor()` with a `nil` cursor.
    @inlinable func setCursorFrom(name: UnsafePointer<CChar>? = nil) {
        gtk_widget_set_cursor_from_name(widget_ptr, name)
    
    }

    /// Sets the reading direction on a particular widget. This direction
    /// controls the primary direction for widgets containing text,
    /// and also the direction in which the children of a container are
    /// packed. The ability to set the direction is present in order
    /// so that correct localization into languages with right-to-left
    /// reading directions can be done. Generally, applications will
    /// let the default reading direction present, except for containers
    /// where the containers are arranged in an order that is explicitly
    /// visual rather than logical (such as buttons for text justification).
    /// 
    /// If the direction is set to `GTK_TEXT_DIR_NONE`, then the value
    /// set by `gtk_widget_set_default_direction()` will be used.
    @inlinable func setDirection(dir: GtkTextDirection) {
        gtk_widget_set_direction(widget_ptr, dir)
    
    }

    /// Set `child` as the current focus child of `widget`. The previous
    /// focus child will be unset.
    /// 
    /// This function is only suitable for widget implementations.
    /// If you want a certain widget to get the input focus, call
    /// `gtk_widget_grab_focus()` on it.
    @inlinable func setFocus(child: WidgetRef? = nil) {
        gtk_widget_set_focus_child(widget_ptr, child?.widget_ptr)
    
    }
    /// Set `child` as the current focus child of `widget`. The previous
    /// focus child will be unset.
    /// 
    /// This function is only suitable for widget implementations.
    /// If you want a certain widget to get the input focus, call
    /// `gtk_widget_grab_focus()` on it.
    @inlinable func setFocus<WidgetT: WidgetProtocol>(child: WidgetT?) {
        gtk_widget_set_focus_child(widget_ptr, child?.widget_ptr)
    
    }

    /// Sets whether the widget should grab focus when it is clicked with the mouse.
    /// Making mouse clicks not grab focus is useful in places like toolbars where
    /// you don’t want the keyboard focus removed from the main area of the
    /// application.
    @inlinable func set(focusOnClick: Bool) {
        gtk_widget_set_focus_on_click(widget_ptr, gboolean((focusOnClick) ? 1 : 0))
    
    }

    /// Specifies whether `widget` can own the input focus.
    /// 
    /// Widget implementations should set `focusable` to `true` in
    /// their `init()` function if they want to receive keyboard input.
    /// 
    /// Note that having `focusable` be `true` is only one of the
    /// necessary conditions for being focusable. A widget must
    /// also be sensitive and can-focus and not have an ancestor
    /// that is marked as not can-focus in order to receive input
    /// focus.
    /// 
    /// See `gtk_widget_grab_focus()` for actually setting the input
    /// focus on a widget.
    @inlinable func set(focusable: Bool) {
        gtk_widget_set_focusable(widget_ptr, gboolean((focusable) ? 1 : 0))
    
    }

    /// Sets the font map to use for Pango rendering. The font map is the
    /// object that is used to look up fonts. Setting a custom font map
    /// can be useful in special situations, e.g. when you need to add
    /// application-specific fonts to the set of available fonts.
    /// 
    /// When not set, the widget will inherit the font map from its parent.
    @inlinable func set(fontMap: Pango.FontMapRef? = nil) {
        gtk_widget_set_font_map(widget_ptr, fontMap?.font_map_ptr)
    
    }
    /// Sets the font map to use for Pango rendering. The font map is the
    /// object that is used to look up fonts. Setting a custom font map
    /// can be useful in special situations, e.g. when you need to add
    /// application-specific fonts to the set of available fonts.
    /// 
    /// When not set, the widget will inherit the font map from its parent.
    @inlinable func set<FontMapT: Pango.FontMapProtocol>(fontMap: FontMapT?) {
        gtk_widget_set_font_map(widget_ptr, fontMap?.font_map_ptr)
    
    }

    /// Sets the `cairo_font_options_t` used for Pango rendering in this widget.
    /// When not set, the default font options for the `GdkDisplay` will be used.
    @inlinable func setFont(options: Cairo.FontOptionsRef? = nil) {
        gtk_widget_set_font_options(widget_ptr, options?._ptr)
    
    }
    /// Sets the `cairo_font_options_t` used for Pango rendering in this widget.
    /// When not set, the default font options for the `GdkDisplay` will be used.
    @inlinable func setFont<FontOptionsT: Cairo.FontOptionsProtocol>(options: FontOptionsT?) {
        gtk_widget_set_font_options(widget_ptr, options?._ptr)
    
    }

    /// Sets the horizontal alignment of `widget`.
    /// See the `GtkWidget:halign` property.
    @inlinable func setHalign(align: GtkAlign) {
        gtk_widget_set_halign(widget_ptr, align)
    
    }

    /// Sets the has-tooltip property on `widget` to `has_tooltip`.  See
    /// `GtkWidget:has`-tooltip for more information.
    @inlinable func set(hasTooltip: Bool) {
        gtk_widget_set_has_tooltip(widget_ptr, gboolean((hasTooltip) ? 1 : 0))
    
    }

    /// Sets whether the widget would like any available extra horizontal
    /// space. When a user resizes a `GtkWindow`, widgets with expand=TRUE
    /// generally receive the extra space. For example, a list or
    /// scrollable area or document in your window would often be set to
    /// expand.
    /// 
    /// Call this function to set the expand flag if you would like your
    /// widget to become larger horizontally when the window has extra
    /// room.
    /// 
    /// By default, widgets automatically expand if any of their children
    /// want to expand. (To see if a widget will automatically expand given
    /// its current children and state, call `gtk_widget_compute_expand()`. A
    /// container can decide how the expandability of children affects the
    /// expansion of the container by overriding the compute_expand virtual
    /// method on `GtkWidget`.).
    /// 
    /// Setting hexpand explicitly with this function will override the
    /// automatic expand behavior.
    /// 
    /// This function forces the widget to expand or not to expand,
    /// regardless of children.  The override occurs because
    /// `gtk_widget_set_hexpand()` sets the hexpand-set property (see
    /// `gtk_widget_set_hexpand_set()`) which causes the widget’s hexpand
    /// value to be used, rather than looking at children and widget state.
    @inlinable func setHexpand(expand: Bool) {
        gtk_widget_set_hexpand(widget_ptr, gboolean((expand) ? 1 : 0))
    
    }

    /// Sets whether the hexpand flag (see `gtk_widget_get_hexpand()`) will
    /// be used.
    /// 
    /// The hexpand-set property will be set automatically when you call
    /// `gtk_widget_set_hexpand()` to set hexpand, so the most likely
    /// reason to use this function would be to unset an explicit expand
    /// flag.
    /// 
    /// If hexpand is set, then it overrides any computed
    /// expand value based on child widgets. If hexpand is not
    /// set, then the expand value depends on whether any
    /// children of the widget would like to expand.
    /// 
    /// There are few reasons to use this function, but it’s here
    /// for completeness and consistency.
    @inlinable func setHexpand(set: Bool) {
        gtk_widget_set_hexpand_set(widget_ptr, gboolean((set) ? 1 : 0))
    
    }

    /// Sets the layout manager delegate instance that provides an implementation
    /// for measuring and allocating the children of `widget`.
    @inlinable func set(layoutManager: LayoutManagerRef? = nil) {
        gtk_widget_set_layout_manager(widget_ptr, layoutManager?.layout_manager_ptr)
    
    }
    /// Sets the layout manager delegate instance that provides an implementation
    /// for measuring and allocating the children of `widget`.
    @inlinable func set<LayoutManagerT: LayoutManagerProtocol>(layoutManager: LayoutManagerT?) {
        gtk_widget_set_layout_manager(widget_ptr, layoutManager?.layout_manager_ptr)
    
    }

    /// Sets the bottom margin of `widget`.
    /// See the `GtkWidget:margin`-bottom property.
    @inlinable func setMarginBottom(margin: Int) {
        gtk_widget_set_margin_bottom(widget_ptr, gint(margin))
    
    }

    /// Sets the end margin of `widget`.
    /// See the `GtkWidget:margin`-end property.
    @inlinable func setMarginEnd(margin: Int) {
        gtk_widget_set_margin_end(widget_ptr, gint(margin))
    
    }

    /// Sets the start margin of `widget`.
    /// See the `GtkWidget:margin`-start property.
    @inlinable func setMarginStart(margin: Int) {
        gtk_widget_set_margin_start(widget_ptr, gint(margin))
    
    }

    /// Sets the top margin of `widget`.
    /// See the `GtkWidget:margin`-top property.
    @inlinable func setMarginTop(margin: Int) {
        gtk_widget_set_margin_top(widget_ptr, gint(margin))
    
    }

    /// Widgets can be named, which allows you to refer to them from a
    /// CSS file. You can apply a style to widgets with a particular name
    /// in the CSS file. See the documentation for the CSS syntax (on the
    /// same page as the docs for `GtkStyleContext`).
    /// 
    /// Note that the CSS syntax has certain special characters to delimit
    /// and represent elements in a selector (period, #, >, *...), so using
    /// these will make your widget impossible to match by name. Any combination
    /// of alphanumeric symbols, dashes and underscores will suffice.
    @inlinable func set(name: UnsafePointer<CChar>!) {
        gtk_widget_set_name(widget_ptr, name)
    
    }

    /// Request the `widget` to be rendered partially transparent, with
    /// opacity 0 being fully transparent and 1 fully opaque. (Opacity
    /// values are clamped to the [0,1] range).
    /// 
    /// Opacity works on both toplevel widgets and child widgets, although
    /// there are some limitations: For toplevel widgets, applying opacity
    /// depends on the capabilities of the windowing system. On X11, this
    /// has any effect only on X displays with a compositing manager,
    /// see `gdk_display_is_composited()`. On Windows and Wayland it should
    /// always work, although setting a window’s opacity after the window
    /// has been shown may cause some flicker.
    /// 
    /// Note that the opacity is inherited through inclusion — if you set
    /// a toplevel to be partially translucent, all of its content will
    /// appear translucent, since it is ultimatively rendered on that
    /// toplevel. The opacity value itself is not inherited by child
    /// widgets (since that would make widgets deeper in the hierarchy
    /// progressively more translucent). As a consequence, `GtkPopovers`
    /// and other `GtkNative` widgets with their own surface will use their
    /// own opacity value, and thus by default appear non-translucent,
    /// even if they are attached to a toplevel that is translucent.
    @inlinable func set(opacity: CDouble) {
        gtk_widget_set_opacity(widget_ptr, opacity)
    
    }

    /// Sets how `widget` treats content that is drawn outside the widget's content area.
    /// See the definition of `GtkOverflow` for details.
    /// 
    /// This setting is provided for widget implementations and should not be used by
    /// application code.
    /// 
    /// The default value is `GTK_OVERFLOW_VISIBLE`.
    @inlinable func set(overflow: GtkOverflow) {
        gtk_widget_set_overflow(widget_ptr, overflow)
    
    }

    /// This function is useful only when implementing subclasses of
    /// `GtkWidget`.
    /// 
    /// Sets `parent` as the parent widget of `widget`, and takes care of
    /// some details such as updating the state and style of the child
    /// to reflect its new location and resizing the parent. The opposite
    /// function is `gtk_widget_unparent()`.
    @inlinable func set<WidgetT: WidgetProtocol>(parent: WidgetT) {
        gtk_widget_set_parent(widget_ptr, parent.widget_ptr)
    
    }

    /// Specifies whether `widget` will be treated as the default
    /// widget within its toplevel when it has the focus, even if
    /// another widget is the default.
    @inlinable func set(receivesDefault: Bool) {
        gtk_widget_set_receives_default(widget_ptr, gboolean((receivesDefault) ? 1 : 0))
    
    }

    /// Sets the sensitivity of a widget. A widget is sensitive if the user
    /// can interact with it. Insensitive widgets are “grayed out” and the
    /// user can’t interact with them. Insensitive widgets are known as
    /// “inactive”, “disabled”, or “ghosted” in some other toolkits.
    @inlinable func set(sensitive: Bool) {
        gtk_widget_set_sensitive(widget_ptr, gboolean((sensitive) ? 1 : 0))
    
    }

    /// Sets the minimum size of a widget; that is, the widget’s size
    /// request will be at least `width` by `height`. You can use this
    /// function to force a widget to be larger than it normally would be.
    /// 
    /// In most cases, `gtk_window_set_default_size()` is a better choice for
    /// toplevel windows than this function; setting the default size will
    /// still allow users to shrink the window. Setting the size request
    /// will force them to leave the window at least as large as the size
    /// request. When dealing with window sizes,
    /// `gtk_window_set_geometry_hints()` can be a useful function as well.
    /// 
    /// Note the inherent danger of setting any fixed size - themes,
    /// translations into other languages, different fonts, and user action
    /// can all change the appropriate size for a given widget. So, it's
    /// basically impossible to hardcode a size that will always be
    /// correct.
    /// 
    /// The size request of a widget is the smallest size a widget can
    /// accept while still functioning well and drawing itself correctly.
    /// However in some strange cases a widget may be allocated less than
    /// its requested size, and in many cases a widget may be allocated more
    /// space than it requested.
    /// 
    /// If the size request in a given direction is -1 (unset), then
    /// the “natural” size request of the widget will be used instead.
    /// 
    /// The size request set here does not include any margin from the
    /// `GtkWidget` properties margin-left, margin-right, margin-top, and
    /// margin-bottom, but it does include pretty much all other padding
    /// or border properties set by any subclass of `GtkWidget`.
    @inlinable func setSizeRequest(width: Int, height: Int) {
        gtk_widget_set_size_request(widget_ptr, gint(width), gint(height))
    
    }

    /// This function is for use in widget implementations. Turns on flag
    /// values in the current widget state (insensitive, prelighted, etc.).
    /// 
    /// This function accepts the values `GTK_STATE_FLAG_DIR_LTR` and
    /// `GTK_STATE_FLAG_DIR_RTL` but ignores them. If you want to set
    /// the widget's direction, use `gtk_widget_set_direction()`.
    @inlinable func setState(flags: StateFlags, clear: Bool) {
        gtk_widget_set_state_flags(widget_ptr, flags.value, gboolean((clear) ? 1 : 0))
    
    }

    /// Sets `markup` as the contents of the tooltip, which is marked up with
    /// the [Pango text markup language](#PangoMarkupFormat).
    /// 
    /// This function will take care of setting the `GtkWidget:has`-tooltip as
    /// a side effect, and of the default handler for the `GtkWidget::query`-tooltip signal.
    /// 
    /// See also the `GtkWidget:tooltip`-markup property and
    /// `gtk_tooltip_set_markup()`.
    @inlinable func setTooltip(markup: UnsafePointer<CChar>? = nil) {
        gtk_widget_set_tooltip_markup(widget_ptr, markup)
    
    }

    /// Sets `text` as the contents of the tooltip.
    /// 
    /// If `text` contains any markup, it will be escaped.
    /// 
    /// This function will take care of setting `GtkWidget:has`-tooltip
    /// as a side effect, and of the default handler for the
    /// `GtkWidget::query`-tooltip signal.
    /// 
    /// See also the `GtkWidget:tooltip`-text property and
    /// `gtk_tooltip_set_text()`.
    @inlinable func setTooltip(text: UnsafePointer<CChar>? = nil) {
        gtk_widget_set_tooltip_text(widget_ptr, text)
    
    }

    /// Sets the vertical alignment of `widget`.
    /// See the `GtkWidget:valign` property.
    @inlinable func setValign(align: GtkAlign) {
        gtk_widget_set_valign(widget_ptr, align)
    
    }

    /// Sets whether the widget would like any available extra vertical
    /// space.
    /// 
    /// See `gtk_widget_set_hexpand()` for more detail.
    @inlinable func setVexpand(expand: Bool) {
        gtk_widget_set_vexpand(widget_ptr, gboolean((expand) ? 1 : 0))
    
    }

    /// Sets whether the vexpand flag (see `gtk_widget_get_vexpand()`) will
    /// be used.
    /// 
    /// See `gtk_widget_set_hexpand_set()` for more detail.
    @inlinable func setVexpand(set: Bool) {
        gtk_widget_set_vexpand_set(widget_ptr, gboolean((set) ? 1 : 0))
    
    }

    /// Sets the visibility state of `widget`. Note that setting this to
    /// `true` doesn’t mean the widget is actually viewable, see
    /// `gtk_widget_get_visible()`.
    /// 
    /// This function simply calls `gtk_widget_show()` or `gtk_widget_hide()`
    /// but is nicer to use when the visibility of the widget depends on
    /// some condition.
    @inlinable func set(visible: Bool) {
        gtk_widget_set_visible(widget_ptr, gboolean((visible) ? 1 : 0))
    
    }

    /// Returns whether `widget` should contribute to
    /// the measuring and allocation of its parent.
    /// This is `false` for invisible children, but also
    /// for children that have their own surface.
    @inlinable func shouldLayout() -> Bool {
        let rv = ((gtk_widget_should_layout(widget_ptr)) != 0)
        return rv
    }

    /// Flags a widget to be displayed. Any widget that isn’t shown will
    /// not appear on the screen.
    /// 
    /// Remember that you have to show the containers containing a widget,
    /// in addition to the widget itself, before it will appear onscreen.
    /// 
    /// When a toplevel container is shown, it is immediately realized and
    /// mapped; other shown widgets are realized and mapped when their
    /// toplevel container is realized and mapped.
    @inlinable func show() {
        gtk_widget_show(widget_ptr)
    
    }

    /// This is a simple form of `gtk_widget_allocate()` that takes the new position
    /// of `widget` as part of `allocation`.
    @inlinable func sizeAllocate(allocation: UnsafePointer<GtkAllocation>!, baseline: Int) {
        gtk_widget_size_allocate(widget_ptr, allocation, gint(baseline))
    
    }

    /// When a widget receives a call to the snapshot function, it must send
    /// synthetic `GtkWidgetClass.snapshot``()` calls to all children. This function
    /// provides a convenient way of doing this. A widget, when it receives
    /// a call to its `GtkWidgetClass.snapshot``()` function, calls
    /// `gtk_widget_snapshot_child()` once for each child, passing in
    /// the `snapshot` the widget received.
    /// 
    /// `gtk_widget_snapshot_child()` takes care of translating the origin of
    /// `snapshot`, and deciding whether the child needs to be snapshot.
    /// 
    /// This function does nothing for children that implement `GtkNative`.
    @inlinable func snapshot<SnapshotT: SnapshotProtocol, WidgetT: WidgetProtocol>(child: WidgetT, snapshot: SnapshotT) {
        gtk_widget_snapshot_child(widget_ptr, child.widget_ptr, snapshot.snapshot_ptr)
    
    }

    /// Translate coordinates relative to `src_widget`’s allocation to coordinates
    /// relative to `dest_widget`’s allocations. In order to perform this
    /// operation, both widget must share a common toplevel.
    @inlinable func translateCoordinates<WidgetT: WidgetProtocol>(destWidget: WidgetT, srcX: CDouble, srcY: CDouble, destX: UnsafeMutablePointer<CDouble>! = nil, destY: UnsafeMutablePointer<CDouble>! = nil) -> Bool {
        let rv = ((gtk_widget_translate_coordinates(widget_ptr, destWidget.widget_ptr, srcX, srcY, destX, destY)) != 0)
        return rv
    }

    /// Triggers a tooltip query on the display where the toplevel
    /// of `widget` is located.
    @inlinable func triggerTooltipQuery() {
        gtk_widget_trigger_tooltip_query(widget_ptr)
    
    }

    /// This function is only for use in widget implementations. Causes
    /// a widget to be unmapped if it’s currently mapped.
    @inlinable func unmap() {
        gtk_widget_unmap(widget_ptr)
    
    }

    /// This function is only for use in widget implementations.
    /// It should be called by parent widgets to dissociate `widget`
    /// from the parent, typically in dispose.
    @inlinable func unparent() {
        gtk_widget_unparent(widget_ptr)
    
    }

    /// This function is only useful in widget implementations.
    /// Causes a widget to be unrealized (frees all GDK resources
    /// associated with the widget).
    @inlinable func unrealize() {
        gtk_widget_unrealize(widget_ptr)
    
    }

    /// This function is for use in widget implementations. Turns off flag
    /// values for the current widget state (insensitive, prelighted, etc.).
    /// See `gtk_widget_set_state_flags()`.
    @inlinable func unsetState(flags: StateFlags) {
        gtk_widget_unset_state_flags(widget_ptr, flags.value)
    
    }

    /// Enters the main loop and waits for `widget` to be “drawn”. In this
    /// context that means it waits for the frame clock of `widget` to have
    /// run a full styling, layout and drawing cycle.
    /// 
    /// This function is intended to be used for syncing with actions that
    /// depend on `widget` relayouting or on interaction with the display
    /// server.
    @inlinable func testWidgetWaitForDraw() {
        gtk_test_widget_wait_for_draw(widget_ptr)
    
    }
    /// Returns the baseline that has currently been allocated to `widget`.
    /// This function is intended to be used when implementing handlers
    /// for the `GtkWidgetClass.snapshot``()` function, and when allocating child
    /// widgets in `GtkWidgetClass.size_allocate``()`.
    @inlinable var allocatedBaseline: Int {
        /// Returns the baseline that has currently been allocated to `widget`.
        /// This function is intended to be used when implementing handlers
        /// for the `GtkWidgetClass.snapshot``()` function, and when allocating child
        /// widgets in `GtkWidgetClass.size_allocate``()`.
        get {
            let rv = Int(gtk_widget_get_allocated_baseline(widget_ptr))
            return rv
        }
    }

    /// Returns the height that has currently been allocated to `widget`.
    @inlinable var allocatedHeight: Int {
        /// Returns the height that has currently been allocated to `widget`.
        get {
            let rv = Int(gtk_widget_get_allocated_height(widget_ptr))
            return rv
        }
    }

    /// Returns the width that has currently been allocated to `widget`.
    @inlinable var allocatedWidth: Int {
        /// Returns the width that has currently been allocated to `widget`.
        get {
            let rv = Int(gtk_widget_get_allocated_width(widget_ptr))
            return rv
        }
    }

    /// Determines whether the input focus can enter `widget` or any
    /// of its children.
    /// 
    /// See `gtk_widget_set_focusable()`.
    @inlinable var canFocus: Bool {
        /// Determines whether the input focus can enter `widget` or any
        /// of its children.
        /// 
        /// See `gtk_widget_set_focusable()`.
        get {
            let rv = ((gtk_widget_get_can_focus(widget_ptr)) != 0)
            return rv
        }
        /// Specifies whether the input focus can enter the widget
        /// or any of its children.
        /// 
        /// Applications should set `can_focus` to `false` to mark a
        /// widget as for pointer/touch use only.
        /// 
        /// Note that having `can_focus` be `true` is only one of the
        /// necessary conditions for being focusable. A widget must
        /// also be sensitive and focusable and not have an ancestor
        /// that is marked as not can-focus in order to receive input
        /// focus.
        /// 
        /// See `gtk_widget_grab_focus()` for actually setting the input
        /// focus on a widget.
        nonmutating set {
            gtk_widget_set_can_focus(widget_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Queries whether `widget` can be the target of pointer events.
    @inlinable var canTarget: Bool {
        /// Queries whether `widget` can be the target of pointer events.
        get {
            let rv = ((gtk_widget_get_can_target(widget_ptr)) != 0)
            return rv
        }
        /// Sets whether `widget` can be the target of pointer events.
        nonmutating set {
            gtk_widget_set_can_target(widget_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the value set with `gtk_widget_set_child_visible()`.
    /// If you feel a need to use this function, your code probably
    /// needs reorganization.
    /// 
    /// This function is only useful for container implementations and
    /// never should be called by an application.
    @inlinable var childVisible: Bool {
        /// Gets the value set with `gtk_widget_set_child_visible()`.
        /// If you feel a need to use this function, your code probably
        /// needs reorganization.
        /// 
        /// This function is only useful for container implementations and
        /// never should be called by an application.
        get {
            let rv = ((gtk_widget_get_child_visible(widget_ptr)) != 0)
            return rv
        }
        /// Sets whether `widget` should be mapped along with its when its parent
        /// is mapped and `widget` has been shown with `gtk_widget_show()`.
        /// 
        /// The child visibility can be set for widget before it is added to
        /// a container with `gtk_widget_set_parent()`, to avoid mapping
        /// children unnecessary before immediately unmapping them. However
        /// it will be reset to its default state of `true` when the widget
        /// is removed from a container.
        /// 
        /// Note that changing the child visibility of a widget does not
        /// queue a resize on the widget. Most of the time, the size of
        /// a widget is computed from all visible children, whether or
        /// not they are mapped. If this is not the case, the container
        /// can queue a resize itself.
        /// 
        /// This function is only useful for container implementations and
        /// never should be called by an application.
        nonmutating set {
            gtk_widget_set_child_visible(widget_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// This is a utility function to get the clipboard object for the
    /// `GdkDisplay` that `widget` is using.
    /// 
    /// Note that this function always works, even when `widget` is not
    /// realized yet.
    @inlinable var clipboard: Gdk.ClipboardRef! {
        /// This is a utility function to get the clipboard object for the
        /// `GdkDisplay` that `widget` is using.
        /// 
        /// Note that this function always works, even when `widget` is not
        /// realized yet.
        get {
            let rv = Gdk.ClipboardRef(gtk_widget_get_clipboard(widget_ptr))
            return rv
        }
    }

    /// Returns the list of css classes applied to `widget`.
    @inlinable var cssClasses: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>! {
        /// Returns the list of css classes applied to `widget`.
        get {
            let rv = gtk_widget_get_css_classes(widget_ptr)
            return rv
        }
        /// Will clear all css classes applied to `widget`
        /// and replace them with `classes`.
        nonmutating set {
            gtk_widget_set_css_classes(widget_ptr, unsafeBitCast(newValue, to: UnsafeMutablePointer<UnsafePointer<CChar>?>.self))
        }
    }

    /// Returns the CSS name that is used for `self`.
    @inlinable var cssName: String! {
        /// Returns the CSS name that is used for `self`.
        get {
            let rv = gtk_widget_get_css_name(widget_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// The cursor used by `widget`. See `gtk_widget_set_cursor()` for details.
    @inlinable var cursor: Gdk.CursorRef! {
        /// Queries the cursor set via `gtk_widget_set_cursor()`. See that function for
        /// details.
        get {
            let rv = Gdk.CursorRef(gtk_widget_get_cursor(widget_ptr))
            return rv
        }
        /// Sets the cursor to be shown when pointer devices point towards `widget`.
        /// 
        /// If the `cursor` is NULL, `widget` will use the cursor inherited from the
        /// parent widget.
        nonmutating set {
            gtk_widget_set_cursor(widget_ptr, UnsafeMutablePointer<GdkCursor>(newValue?.cursor_ptr))
        }
    }

    /// Gets the reading direction for a particular widget. See
    /// `gtk_widget_set_direction()`.
    @inlinable var direction: GtkTextDirection {
        /// Gets the reading direction for a particular widget. See
        /// `gtk_widget_set_direction()`.
        get {
            let rv = gtk_widget_get_direction(widget_ptr)
            return rv
        }
        /// Sets the reading direction on a particular widget. This direction
        /// controls the primary direction for widgets containing text,
        /// and also the direction in which the children of a container are
        /// packed. The ability to set the direction is present in order
        /// so that correct localization into languages with right-to-left
        /// reading directions can be done. Generally, applications will
        /// let the default reading direction present, except for containers
        /// where the containers are arranged in an order that is explicitly
        /// visual rather than logical (such as buttons for text justification).
        /// 
        /// If the direction is set to `GTK_TEXT_DIR_NONE`, then the value
        /// set by `gtk_widget_set_default_direction()` will be used.
        nonmutating set {
            gtk_widget_set_direction(widget_ptr, newValue)
        }
    }

    /// Get the `GdkDisplay` for the toplevel window associated with
    /// this widget. This function can only be called after the widget
    /// has been added to a widget hierarchy with a `GtkWindow` at the top.
    /// 
    /// In general, you should only create display specific
    /// resources when a widget has been realized, and you should
    /// free those resources when the widget is unrealized.
    @inlinable var display: Gdk.DisplayRef! {
        /// Get the `GdkDisplay` for the toplevel window associated with
        /// this widget. This function can only be called after the widget
        /// has been added to a widget hierarchy with a `GtkWindow` at the top.
        /// 
        /// In general, you should only create display specific
        /// resources when a widget has been realized, and you should
        /// free those resources when the widget is unrealized.
        get {
            let rv = Gdk.DisplayRef(gtk_widget_get_display(widget_ptr))
            return rv
        }
    }

    /// Returns the widgets first child.
    /// 
    /// This API is primarily meant for widget implementations.
    @inlinable var firstChild: WidgetRef! {
        /// Returns the widgets first child.
        /// 
        /// This API is primarily meant for widget implementations.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_widget_get_first_child(widget_ptr))) else { return nil }
            return rv
        }
    }

    /// Returns the current focus child of `widget`.
    @inlinable var focusChild: WidgetRef! {
        /// Returns the current focus child of `widget`.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_widget_get_focus_child(widget_ptr))) else { return nil }
            return rv
        }
        /// Set `child` as the current focus child of `widget`. The previous
        /// focus child will be unset.
        /// 
        /// This function is only suitable for widget implementations.
        /// If you want a certain widget to get the input focus, call
        /// `gtk_widget_grab_focus()` on it.
        nonmutating set {
            gtk_widget_set_focus_child(widget_ptr, widget_ptr)
        }
    }

    /// Returns whether the widget should grab focus when it is clicked with the mouse.
    /// See `gtk_widget_set_focus_on_click()`.
    @inlinable var focusOnClick: Bool {
        /// Returns whether the widget should grab focus when it is clicked with the mouse.
        /// See `gtk_widget_set_focus_on_click()`.
        get {
            let rv = ((gtk_widget_get_focus_on_click(widget_ptr)) != 0)
            return rv
        }
        /// Sets whether the widget should grab focus when it is clicked with the mouse.
        /// Making mouse clicks not grab focus is useful in places like toolbars where
        /// you don’t want the keyboard focus removed from the main area of the
        /// application.
        nonmutating set {
            gtk_widget_set_focus_on_click(widget_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Whether this widget itself will accept the input focus.
    @inlinable var focusable: Bool {
        /// Determines whether `widget` can own the input focus.
        /// See `gtk_widget_set_focusable()`.
        get {
            let rv = ((gtk_widget_get_focusable(widget_ptr)) != 0)
            return rv
        }
        /// Specifies whether `widget` can own the input focus.
        /// 
        /// Widget implementations should set `focusable` to `true` in
        /// their `init()` function if they want to receive keyboard input.
        /// 
        /// Note that having `focusable` be `true` is only one of the
        /// necessary conditions for being focusable. A widget must
        /// also be sensitive and can-focus and not have an ancestor
        /// that is marked as not can-focus in order to receive input
        /// focus.
        /// 
        /// See `gtk_widget_grab_focus()` for actually setting the input
        /// focus on a widget.
        nonmutating set {
            gtk_widget_set_focusable(widget_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the font map that has been set with `gtk_widget_set_font_map()`.
    @inlinable var fontMap: Pango.FontMapRef! {
        /// Gets the font map that has been set with `gtk_widget_set_font_map()`.
        get {
            let rv = Pango.FontMapRef(gtk_widget_get_font_map(widget_ptr))
            return rv
        }
        /// Sets the font map to use for Pango rendering. The font map is the
        /// object that is used to look up fonts. Setting a custom font map
        /// can be useful in special situations, e.g. when you need to add
        /// application-specific fonts to the set of available fonts.
        /// 
        /// When not set, the widget will inherit the font map from its parent.
        nonmutating set {
            gtk_widget_set_font_map(widget_ptr, UnsafeMutablePointer<PangoFontMap>(newValue?.font_map_ptr))
        }
    }

    /// Returns the `cairo_font_options_t` used for Pango rendering. When not set,
    /// the defaults font options for the `GdkDisplay` will be used.
    @inlinable var fontOptions: Cairo.FontOptionsRef! {
        /// Returns the `cairo_font_options_t` used for Pango rendering. When not set,
        /// the defaults font options for the `GdkDisplay` will be used.
        get {
            let rv = Cairo.FontOptionsRef(gtk_widget_get_font_options(widget_ptr))
            return rv
        }
        /// Sets the `cairo_font_options_t` used for Pango rendering in this widget.
        /// When not set, the default font options for the `GdkDisplay` will be used.
        nonmutating set {
            gtk_widget_set_font_options(widget_ptr, UnsafePointer<cairo_font_options_t>(newValue?._ptr))
        }
    }

    /// Obtains the frame clock for a widget. The frame clock is a global
    /// “ticker” that can be used to drive animations and repaints.  The
    /// most common reason to get the frame clock is to call
    /// `gdk_frame_clock_get_frame_time()`, in order to get a time to use for
    /// animating. For example you might record the start of the animation
    /// with an initial value from `gdk_frame_clock_get_frame_time()`, and
    /// then update the animation by calling
    /// `gdk_frame_clock_get_frame_time()` again during each repaint.
    /// 
    /// `gdk_frame_clock_request_phase()` will result in a new frame on the
    /// clock, but won’t necessarily repaint any widgets. To repaint a
    /// widget, you have to use `gtk_widget_queue_draw()` which invalidates
    /// the widget (thus scheduling it to receive a draw on the next
    /// frame). `gtk_widget_queue_draw()` will also end up requesting a frame
    /// on the appropriate frame clock.
    /// 
    /// A widget’s frame clock will not change while the widget is
    /// mapped. Reparenting a widget (which implies a temporary unmap) can
    /// change the widget’s frame clock.
    /// 
    /// Unrealized widgets do not have a frame clock.
    @inlinable var frameClock: Gdk.FrameClockRef! {
        /// Obtains the frame clock for a widget. The frame clock is a global
        /// “ticker” that can be used to drive animations and repaints.  The
        /// most common reason to get the frame clock is to call
        /// `gdk_frame_clock_get_frame_time()`, in order to get a time to use for
        /// animating. For example you might record the start of the animation
        /// with an initial value from `gdk_frame_clock_get_frame_time()`, and
        /// then update the animation by calling
        /// `gdk_frame_clock_get_frame_time()` again during each repaint.
        /// 
        /// `gdk_frame_clock_request_phase()` will result in a new frame on the
        /// clock, but won’t necessarily repaint any widgets. To repaint a
        /// widget, you have to use `gtk_widget_queue_draw()` which invalidates
        /// the widget (thus scheduling it to receive a draw on the next
        /// frame). `gtk_widget_queue_draw()` will also end up requesting a frame
        /// on the appropriate frame clock.
        /// 
        /// A widget’s frame clock will not change while the widget is
        /// mapped. Reparenting a widget (which implies a temporary unmap) can
        /// change the widget’s frame clock.
        /// 
        /// Unrealized widgets do not have a frame clock.
        get {
            let rv = Gdk.FrameClockRef(gtk_widget_get_frame_clock(widget_ptr))
            return rv
        }
    }

    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    @inlinable var halign: GtkAlign {
        /// Gets the value of the `GtkWidget:halign` property.
        /// 
        /// For backwards compatibility reasons this method will never return
        /// `GTK_ALIGN_BASELINE`, but instead it will convert it to
        /// `GTK_ALIGN_FILL`. Baselines are not supported for horizontal
        /// alignment.
        get {
            let rv = gtk_widget_get_halign(widget_ptr)
            return rv
        }
        /// Sets the horizontal alignment of `widget`.
        /// See the `GtkWidget:halign` property.
        nonmutating set {
            gtk_widget_set_halign(widget_ptr, newValue)
        }
    }

    /// Returns the current value of the has-tooltip property.  See
    /// `GtkWidget:has`-tooltip for more information.
    @inlinable var hasTooltip: Bool {
        /// Returns the current value of the has-tooltip property.  See
        /// `GtkWidget:has`-tooltip for more information.
        get {
            let rv = ((gtk_widget_get_has_tooltip(widget_ptr)) != 0)
            return rv
        }
        /// Sets the has-tooltip property on `widget` to `has_tooltip`.  See
        /// `GtkWidget:has`-tooltip for more information.
        nonmutating set {
            gtk_widget_set_has_tooltip(widget_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns the content height of the widget, as passed to its size-allocate implementation.
    /// This is the size you should be using in `GtkWidgetClass.snapshot()`. For pointer
    /// events, see `gtk_widget_contains()`.
    @inlinable var height: Int {
        /// Returns the content height of the widget, as passed to its size-allocate implementation.
        /// This is the size you should be using in `GtkWidgetClass.snapshot()`. For pointer
        /// events, see `gtk_widget_contains()`.
        get {
            let rv = Int(gtk_widget_get_height(widget_ptr))
            return rv
        }
    }

    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    @inlinable var hexpand: Bool {
        /// Gets whether the widget would like any available extra horizontal
        /// space. When a user resizes a `GtkWindow`, widgets with expand=TRUE
        /// generally receive the extra space. For example, a list or
        /// scrollable area or document in your window would often be set to
        /// expand.
        /// 
        /// Containers should use `gtk_widget_compute_expand()` rather than
        /// this function, to see whether a widget, or any of its children,
        /// has the expand flag set. If any child of a widget wants to
        /// expand, the parent may ask to expand also.
        /// 
        /// This function only looks at the widget’s own hexpand flag, rather
        /// than computing whether the entire widget tree rooted at this widget
        /// wants to expand.
        get {
            let rv = ((gtk_widget_get_hexpand(widget_ptr)) != 0)
            return rv
        }
        /// Sets whether the widget would like any available extra horizontal
        /// space. When a user resizes a `GtkWindow`, widgets with expand=TRUE
        /// generally receive the extra space. For example, a list or
        /// scrollable area or document in your window would often be set to
        /// expand.
        /// 
        /// Call this function to set the expand flag if you would like your
        /// widget to become larger horizontally when the window has extra
        /// room.
        /// 
        /// By default, widgets automatically expand if any of their children
        /// want to expand. (To see if a widget will automatically expand given
        /// its current children and state, call `gtk_widget_compute_expand()`. A
        /// container can decide how the expandability of children affects the
        /// expansion of the container by overriding the compute_expand virtual
        /// method on `GtkWidget`.).
        /// 
        /// Setting hexpand explicitly with this function will override the
        /// automatic expand behavior.
        /// 
        /// This function forces the widget to expand or not to expand,
        /// regardless of children.  The override occurs because
        /// `gtk_widget_set_hexpand()` sets the hexpand-set property (see
        /// `gtk_widget_set_hexpand_set()`) which causes the widget’s hexpand
        /// value to be used, rather than looking at children and widget state.
        nonmutating set {
            gtk_widget_set_hexpand(widget_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets whether `gtk_widget_set_hexpand()` has been used to
    /// explicitly set the expand flag on this widget.
    /// 
    /// If hexpand is set, then it overrides any computed
    /// expand value based on child widgets. If hexpand is not
    /// set, then the expand value depends on whether any
    /// children of the widget would like to expand.
    /// 
    /// There are few reasons to use this function, but it’s here
    /// for completeness and consistency.
    @inlinable var hexpandSet: Bool {
        /// Gets whether `gtk_widget_set_hexpand()` has been used to
        /// explicitly set the expand flag on this widget.
        /// 
        /// If hexpand is set, then it overrides any computed
        /// expand value based on child widgets. If hexpand is not
        /// set, then the expand value depends on whether any
        /// children of the widget would like to expand.
        /// 
        /// There are few reasons to use this function, but it’s here
        /// for completeness and consistency.
        get {
            let rv = ((gtk_widget_get_hexpand_set(widget_ptr)) != 0)
            return rv
        }
        /// Sets whether the hexpand flag (see `gtk_widget_get_hexpand()`) will
        /// be used.
        /// 
        /// The hexpand-set property will be set automatically when you call
        /// `gtk_widget_set_hexpand()` to set hexpand, so the most likely
        /// reason to use this function would be to unset an explicit expand
        /// flag.
        /// 
        /// If hexpand is set, then it overrides any computed
        /// expand value based on child widgets. If hexpand is not
        /// set, then the expand value depends on whether any
        /// children of the widget would like to expand.
        /// 
        /// There are few reasons to use this function, but it’s here
        /// for completeness and consistency.
        nonmutating set {
            gtk_widget_set_hexpand_set(widget_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Determines whether `widget` can be drawn to. A widget can be drawn
    /// if it is mapped and visible.
    @inlinable var isDrawable: Bool {
        /// Determines whether `widget` can be drawn to. A widget can be drawn
        /// if it is mapped and visible.
        get {
            let rv = ((gtk_widget_is_drawable(widget_ptr)) != 0)
            return rv
        }
    }

    /// Determines if the widget is the focus widget within its
    /// toplevel. (This does not mean that the `GtkWidget:has`-focus property is
    /// necessarily set; `GtkWidget:has`-focus will only be set if the
    /// toplevel widget additionally has the global input focus.)
    @inlinable var isFocus: Bool {
        /// Determines if the widget is the focus widget within its
        /// toplevel. (This does not mean that the `GtkWidget:has`-focus property is
        /// necessarily set; `GtkWidget:has`-focus will only be set if the
        /// toplevel widget additionally has the global input focus.)
        get {
            let rv = ((gtk_widget_is_focus(widget_ptr)) != 0)
            return rv
        }
    }

    /// Returns the widget’s effective sensitivity, which means
    /// it is sensitive itself and also its parent widget is sensitive
    @inlinable var isSensitive: Bool {
        /// Returns the widget’s effective sensitivity, which means
        /// it is sensitive itself and also its parent widget is sensitive
        get {
            let rv = ((gtk_widget_is_sensitive(widget_ptr)) != 0)
            return rv
        }
    }

    /// Determines whether the widget and all its parents are marked as
    /// visible.
    /// 
    /// This function does not check if the widget is obscured in any way.
    /// 
    /// See also `gtk_widget_get_visible()` and `gtk_widget_set_visible()`
    @inlinable var isVisible: Bool {
        /// Determines whether the widget and all its parents are marked as
        /// visible.
        /// 
        /// This function does not check if the widget is obscured in any way.
        /// 
        /// See also `gtk_widget_get_visible()` and `gtk_widget_set_visible()`
        get {
            let rv = ((gtk_widget_is_visible(widget_ptr)) != 0)
            return rv
        }
    }

    /// Returns the widgets last child.
    /// 
    /// This API is primarily meant for widget implementations.
    @inlinable var lastChild: WidgetRef! {
        /// Returns the widgets last child.
        /// 
        /// This API is primarily meant for widget implementations.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_widget_get_last_child(widget_ptr))) else { return nil }
            return rv
        }
    }

    /// Retrieves the layout manager set using `gtk_widget_set_layout_manager()`.
    @inlinable var layoutManager: LayoutManagerRef! {
        /// Retrieves the layout manager set using `gtk_widget_set_layout_manager()`.
        get {
            let rv = LayoutManagerRef(gconstpointer: gconstpointer(gtk_widget_get_layout_manager(widget_ptr)))
            return rv
        }
        /// Sets the layout manager delegate instance that provides an implementation
        /// for measuring and allocating the children of `widget`.
        nonmutating set {
            gtk_widget_set_layout_manager(widget_ptr, UnsafeMutablePointer<GtkLayoutManager>(newValue?.layout_manager_ptr))
        }
    }

    /// Whether the widget is mapped.
    @inlinable var mapped: Bool {
        /// Whether the widget is mapped.
        get {
            let rv = ((gtk_widget_get_mapped(widget_ptr)) != 0)
            return rv
        }
    }

    /// Gets the value of the `GtkWidget:margin`-bottom property.
    @inlinable var marginBottom: Int {
        /// Gets the value of the `GtkWidget:margin`-bottom property.
        get {
            let rv = Int(gtk_widget_get_margin_bottom(widget_ptr))
            return rv
        }
        /// Sets the bottom margin of `widget`.
        /// See the `GtkWidget:margin`-bottom property.
        nonmutating set {
            gtk_widget_set_margin_bottom(widget_ptr, gint(newValue))
        }
    }

    /// Gets the value of the `GtkWidget:margin`-end property.
    @inlinable var marginEnd: Int {
        /// Gets the value of the `GtkWidget:margin`-end property.
        get {
            let rv = Int(gtk_widget_get_margin_end(widget_ptr))
            return rv
        }
        /// Sets the end margin of `widget`.
        /// See the `GtkWidget:margin`-end property.
        nonmutating set {
            gtk_widget_set_margin_end(widget_ptr, gint(newValue))
        }
    }

    /// Gets the value of the `GtkWidget:margin`-start property.
    @inlinable var marginStart: Int {
        /// Gets the value of the `GtkWidget:margin`-start property.
        get {
            let rv = Int(gtk_widget_get_margin_start(widget_ptr))
            return rv
        }
        /// Sets the start margin of `widget`.
        /// See the `GtkWidget:margin`-start property.
        nonmutating set {
            gtk_widget_set_margin_start(widget_ptr, gint(newValue))
        }
    }

    /// Gets the value of the `GtkWidget:margin`-top property.
    @inlinable var marginTop: Int {
        /// Gets the value of the `GtkWidget:margin`-top property.
        get {
            let rv = Int(gtk_widget_get_margin_top(widget_ptr))
            return rv
        }
        /// Sets the top margin of `widget`.
        /// See the `GtkWidget:margin`-top property.
        nonmutating set {
            gtk_widget_set_margin_top(widget_ptr, gint(newValue))
        }
    }

    @inlinable var name: String! {
        /// Retrieves the name of a widget. See `gtk_widget_set_name()` for the
        /// significance of widget names.
        get {
            let rv = gtk_widget_get_name(widget_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Widgets can be named, which allows you to refer to them from a
        /// CSS file. You can apply a style to widgets with a particular name
        /// in the CSS file. See the documentation for the CSS syntax (on the
        /// same page as the docs for `GtkStyleContext`).
        /// 
        /// Note that the CSS syntax has certain special characters to delimit
        /// and represent elements in a selector (period, #, >, *...), so using
        /// these will make your widget impossible to match by name. Any combination
        /// of alphanumeric symbols, dashes and underscores will suffice.
        nonmutating set {
            gtk_widget_set_name(widget_ptr, newValue)
        }
    }

    /// Returns the GtkNative widget that contains `widget`,
    /// or `nil` if the widget is not contained inside a
    /// widget tree with a native ancestor.
    /// 
    /// `GtkNative` widgets will return themselves here.
    @inlinable var native: NativeRef! {
        /// Returns the GtkNative widget that contains `widget`,
        /// or `nil` if the widget is not contained inside a
        /// widget tree with a native ancestor.
        /// 
        /// `GtkNative` widgets will return themselves here.
        get {
            let rv = NativeRef(gconstpointer: gconstpointer(gtk_widget_get_native(widget_ptr)))
            return rv
        }
    }

    /// Returns the widgets next sibling.
    /// 
    /// This API is primarily meant for widget implementations.
    @inlinable var nextSibling: WidgetRef! {
        /// Returns the widgets next sibling.
        /// 
        /// This API is primarily meant for widget implementations.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_widget_get_next_sibling(widget_ptr))) else { return nil }
            return rv
        }
    }

    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    @inlinable var opacity: CDouble {
        /// Fetches the requested opacity for this widget.
        /// See `gtk_widget_set_opacity()`.
        get {
            let rv = gtk_widget_get_opacity(widget_ptr)
            return rv
        }
        /// Request the `widget` to be rendered partially transparent, with
        /// opacity 0 being fully transparent and 1 fully opaque. (Opacity
        /// values are clamped to the [0,1] range).
        /// 
        /// Opacity works on both toplevel widgets and child widgets, although
        /// there are some limitations: For toplevel widgets, applying opacity
        /// depends on the capabilities of the windowing system. On X11, this
        /// has any effect only on X displays with a compositing manager,
        /// see `gdk_display_is_composited()`. On Windows and Wayland it should
        /// always work, although setting a window’s opacity after the window
        /// has been shown may cause some flicker.
        /// 
        /// Note that the opacity is inherited through inclusion — if you set
        /// a toplevel to be partially translucent, all of its content will
        /// appear translucent, since it is ultimatively rendered on that
        /// toplevel. The opacity value itself is not inherited by child
        /// widgets (since that would make widgets deeper in the hierarchy
        /// progressively more translucent). As a consequence, `GtkPopovers`
        /// and other `GtkNative` widgets with their own surface will use their
        /// own opacity value, and thus by default appear non-translucent,
        /// even if they are attached to a toplevel that is translucent.
        nonmutating set {
            gtk_widget_set_opacity(widget_ptr, newValue)
        }
    }

    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    @inlinable var overflow: GtkOverflow {
        /// Returns the value set via `gtk_widget_set_overflow()`.
        get {
            let rv = gtk_widget_get_overflow(widget_ptr)
            return rv
        }
        /// Sets how `widget` treats content that is drawn outside the widget's content area.
        /// See the definition of `GtkOverflow` for details.
        /// 
        /// This setting is provided for widget implementations and should not be used by
        /// application code.
        /// 
        /// The default value is `GTK_OVERFLOW_VISIBLE`.
        nonmutating set {
            gtk_widget_set_overflow(widget_ptr, newValue)
        }
    }

    /// Gets a `PangoContext` with the appropriate font map, font description,
    /// and base direction for this widget. Unlike the context returned
    /// by `gtk_widget_create_pango_context()`, this context is owned by
    /// the widget (it can be used until the screen for the widget changes
    /// or the widget is removed from its toplevel), and will be updated to
    /// match any changes to the widget’s attributes. This can be tracked
    /// by listening to changes of the `GtkWidget:root` property on the widget.
    @inlinable var pangoContext: Pango.ContextRef! {
        /// Gets a `PangoContext` with the appropriate font map, font description,
        /// and base direction for this widget. Unlike the context returned
        /// by `gtk_widget_create_pango_context()`, this context is owned by
        /// the widget (it can be used until the screen for the widget changes
        /// or the widget is removed from its toplevel), and will be updated to
        /// match any changes to the widget’s attributes. This can be tracked
        /// by listening to changes of the `GtkWidget:root` property on the widget.
        get {
            let rv = Pango.ContextRef(gtk_widget_get_pango_context(widget_ptr))
            return rv
        }
    }

    @inlinable var parent: WidgetRef! {
        /// Returns the parent widget of `widget`.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_widget_get_parent(widget_ptr))) else { return nil }
            return rv
        }
        /// This function is useful only when implementing subclasses of
        /// `GtkWidget`.
        /// 
        /// Sets `parent` as the parent widget of `widget`, and takes care of
        /// some details such as updating the state and style of the child
        /// to reflect its new location and resizing the parent. The opposite
        /// function is `gtk_widget_unparent()`.
        nonmutating set {
            gtk_widget_set_parent(widget_ptr, widget_ptr)
        }
    }

    /// Returns the widgets previous sibling.
    /// 
    /// This API is primarily meant for widget implementations.
    @inlinable var prevSibling: WidgetRef! {
        /// Returns the widgets previous sibling.
        /// 
        /// This API is primarily meant for widget implementations.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_widget_get_prev_sibling(widget_ptr))) else { return nil }
            return rv
        }
    }

    /// This is a utility function to get the primary clipboard object
    /// for the `GdkDisplay` that `widget` is using.
    /// 
    /// Note that this function always works, even when `widget` is not
    /// realized yet.
    @inlinable var primaryClipboard: Gdk.ClipboardRef! {
        /// This is a utility function to get the primary clipboard object
        /// for the `GdkDisplay` that `widget` is using.
        /// 
        /// Note that this function always works, even when `widget` is not
        /// realized yet.
        get {
            let rv = Gdk.ClipboardRef(gtk_widget_get_primary_clipboard(widget_ptr))
            return rv
        }
    }

    /// Determines whether `widget` is realized.
    @inlinable var realized: Bool {
        /// Determines whether `widget` is realized.
        get {
            let rv = ((gtk_widget_get_realized(widget_ptr)) != 0)
            return rv
        }
    }

    /// Determines whether `widget` is always treated as the default widget
    /// within its toplevel when it has the focus, even if another widget
    /// is the default.
    /// 
    /// See `gtk_widget_set_receives_default()`.
    @inlinable var receivesDefault: Bool {
        /// Determines whether `widget` is always treated as the default widget
        /// within its toplevel when it has the focus, even if another widget
        /// is the default.
        /// 
        /// See `gtk_widget_set_receives_default()`.
        get {
            let rv = ((gtk_widget_get_receives_default(widget_ptr)) != 0)
            return rv
        }
        /// Specifies whether `widget` will be treated as the default
        /// widget within its toplevel when it has the focus, even if
        /// another widget is the default.
        nonmutating set {
            gtk_widget_set_receives_default(widget_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets whether the widget prefers a height-for-width layout
    /// or a width-for-height layout.
    /// 
    /// `GtkBin` widgets generally propagate the preference of
    /// their child, container widgets need to request something either in
    /// context of their children or in context of their allocation
    /// capabilities.
    @inlinable var requestMode: GtkSizeRequestMode {
        /// Gets whether the widget prefers a height-for-width layout
        /// or a width-for-height layout.
        /// 
        /// `GtkBin` widgets generally propagate the preference of
        /// their child, container widgets need to request something either in
        /// context of their children or in context of their allocation
        /// capabilities.
        get {
            let rv = gtk_widget_get_request_mode(widget_ptr)
            return rv
        }
    }

    /// The `GtkRoot` widget of the widget tree containing this widget or `nil` if
    /// the widget is not contained in a root widget.
    @inlinable var root: RootRef! {
        /// Returns the `GtkRoot` widget of `widget` or `nil` if the widget is not contained
        /// inside a widget tree with a root widget.
        /// 
        /// `GtkRoot` widgets will return themselves here.
        get {
            let rv = RootRef(gconstpointer: gconstpointer(gtk_widget_get_root(widget_ptr)))
            return rv
        }
    }

    /// Retrieves the internal scale factor that maps from window coordinates
    /// to the actual device pixels. On traditional systems this is 1, on
    /// high density outputs, it can be a higher value (typically 2).
    /// 
    /// See `gdk_surface_get_scale_factor()`.
    @inlinable var scaleFactor: Int {
        /// Retrieves the internal scale factor that maps from window coordinates
        /// to the actual device pixels. On traditional systems this is 1, on
        /// high density outputs, it can be a higher value (typically 2).
        /// 
        /// See `gdk_surface_get_scale_factor()`.
        get {
            let rv = Int(gtk_widget_get_scale_factor(widget_ptr))
            return rv
        }
    }

    @inlinable var sensitive: Bool {
        /// Returns the widget’s sensitivity (in the sense of returning
        /// the value that has been set using `gtk_widget_set_sensitive()`).
        /// 
        /// The effective sensitivity of a widget is however determined by both its
        /// own and its parent widget’s sensitivity. See `gtk_widget_is_sensitive()`.
        get {
            let rv = ((gtk_widget_get_sensitive(widget_ptr)) != 0)
            return rv
        }
        /// Sets the sensitivity of a widget. A widget is sensitive if the user
        /// can interact with it. Insensitive widgets are “grayed out” and the
        /// user can’t interact with them. Insensitive widgets are known as
        /// “inactive”, “disabled”, or “ghosted” in some other toolkits.
        nonmutating set {
            gtk_widget_set_sensitive(widget_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the settings object holding the settings used for this widget.
    /// 
    /// Note that this function can only be called when the `GtkWidget`
    /// is attached to a toplevel, since the settings object is specific
    /// to a particular `GdkDisplay`. If you want to monitor the widget for
    /// changes in its settings, connect to notify`display`.
    @inlinable var settings: SettingsRef! {
        /// Gets the settings object holding the settings used for this widget.
        /// 
        /// Note that this function can only be called when the `GtkWidget`
        /// is attached to a toplevel, since the settings object is specific
        /// to a particular `GdkDisplay`. If you want to monitor the widget for
        /// changes in its settings, connect to notify`display`.
        get {
            let rv = SettingsRef(gconstpointer: gconstpointer(gtk_widget_get_settings(widget_ptr)))
            return rv
        }
    }

    /// Returns the widget state as a flag set. It is worth mentioning
    /// that the effective `GTK_STATE_FLAG_INSENSITIVE` state will be
    /// returned, that is, also based on parent insensitivity, even if
    /// `widget` itself is sensitive.
    /// 
    /// Also note that if you are looking for a way to obtain the
    /// `GtkStateFlags` to pass to a `GtkStyleContext` method, you
    /// should look at `gtk_style_context_get_state()`.
    @inlinable var stateFlags: StateFlags {
        /// Returns the widget state as a flag set. It is worth mentioning
        /// that the effective `GTK_STATE_FLAG_INSENSITIVE` state will be
        /// returned, that is, also based on parent insensitivity, even if
        /// `widget` itself is sensitive.
        /// 
        /// Also note that if you are looking for a way to obtain the
        /// `GtkStateFlags` to pass to a `GtkStyleContext` method, you
        /// should look at `gtk_style_context_get_state()`.
        get {
            let rv = StateFlags(gtk_widget_get_state_flags(widget_ptr))
            return rv
        }
    }

    /// Returns the style context associated to `widget`. The returned object is
    /// guaranteed to be the same for the lifetime of `widget`.
    @inlinable var styleContext: StyleContextRef! {
        /// Returns the style context associated to `widget`. The returned object is
        /// guaranteed to be the same for the lifetime of `widget`.
        get {
            let rv = StyleContextRef(gconstpointer: gconstpointer(gtk_widget_get_style_context(widget_ptr)))
            return rv
        }
    }

    /// Gets the contents of the tooltip for `widget` set using
    /// `gtk_widget_set_tooltip_markup()`.
    @inlinable var tooltipMarkup: String! {
        /// Gets the contents of the tooltip for `widget` set using
        /// `gtk_widget_set_tooltip_markup()`.
        get {
            let rv = gtk_widget_get_tooltip_markup(widget_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets `markup` as the contents of the tooltip, which is marked up with
        /// the [Pango text markup language](#PangoMarkupFormat).
        /// 
        /// This function will take care of setting the `GtkWidget:has`-tooltip as
        /// a side effect, and of the default handler for the `GtkWidget::query`-tooltip signal.
        /// 
        /// See also the `GtkWidget:tooltip`-markup property and
        /// `gtk_tooltip_set_markup()`.
        nonmutating set {
            gtk_widget_set_tooltip_markup(widget_ptr, newValue)
        }
    }

    /// Gets the contents of the tooltip for `widget`.
    /// 
    /// If the `widget`'s tooltip was set using `gtk_widget_set_tooltip_markup()`,
    /// this function will return the escaped text.
    @inlinable var tooltipText: String! {
        /// Gets the contents of the tooltip for `widget`.
        /// 
        /// If the `widget`'s tooltip was set using `gtk_widget_set_tooltip_markup()`,
        /// this function will return the escaped text.
        get {
            let rv = gtk_widget_get_tooltip_text(widget_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets `text` as the contents of the tooltip.
        /// 
        /// If `text` contains any markup, it will be escaped.
        /// 
        /// This function will take care of setting `GtkWidget:has`-tooltip
        /// as a side effect, and of the default handler for the
        /// `GtkWidget::query`-tooltip signal.
        /// 
        /// See also the `GtkWidget:tooltip`-text property and
        /// `gtk_tooltip_set_text()`.
        nonmutating set {
            gtk_widget_set_tooltip_text(widget_ptr, newValue)
        }
    }

    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    @inlinable var valign: GtkAlign {
        /// Gets the value of the `GtkWidget:valign` property.
        get {
            let rv = gtk_widget_get_valign(widget_ptr)
            return rv
        }
        /// Sets the vertical alignment of `widget`.
        /// See the `GtkWidget:valign` property.
        nonmutating set {
            gtk_widget_set_valign(widget_ptr, newValue)
        }
    }

    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    @inlinable var vexpand: Bool {
        /// Gets whether the widget would like any available extra vertical
        /// space.
        /// 
        /// See `gtk_widget_get_hexpand()` for more detail.
        get {
            let rv = ((gtk_widget_get_vexpand(widget_ptr)) != 0)
            return rv
        }
        /// Sets whether the widget would like any available extra vertical
        /// space.
        /// 
        /// See `gtk_widget_set_hexpand()` for more detail.
        nonmutating set {
            gtk_widget_set_vexpand(widget_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets whether `gtk_widget_set_vexpand()` has been used to
    /// explicitly set the expand flag on this widget.
    /// 
    /// See `gtk_widget_get_hexpand_set()` for more detail.
    @inlinable var vexpandSet: Bool {
        /// Gets whether `gtk_widget_set_vexpand()` has been used to
        /// explicitly set the expand flag on this widget.
        /// 
        /// See `gtk_widget_get_hexpand_set()` for more detail.
        get {
            let rv = ((gtk_widget_get_vexpand_set(widget_ptr)) != 0)
            return rv
        }
        /// Sets whether the vexpand flag (see `gtk_widget_get_vexpand()`) will
        /// be used.
        /// 
        /// See `gtk_widget_set_hexpand_set()` for more detail.
        nonmutating set {
            gtk_widget_set_vexpand_set(widget_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    @inlinable var visible: Bool {
        /// Determines whether the widget is visible. If you want to
        /// take into account whether the widget’s parent is also marked as
        /// visible, use `gtk_widget_is_visible()` instead.
        /// 
        /// This function does not check if the widget is obscured in any way.
        /// 
        /// See `gtk_widget_set_visible()`.
        get {
            let rv = ((gtk_widget_get_visible(widget_ptr)) != 0)
            return rv
        }
        /// Sets the visibility state of `widget`. Note that setting this to
        /// `true` doesn’t mean the widget is actually viewable, see
        /// `gtk_widget_get_visible()`.
        /// 
        /// This function simply calls `gtk_widget_show()` or `gtk_widget_hide()`
        /// but is nicer to use when the visibility of the widget depends on
        /// some condition.
        nonmutating set {
            gtk_widget_set_visible(widget_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns the content width of the widget, as passed to its size-allocate implementation.
    /// This is the size you should be using in `GtkWidgetClass.snapshot()`. For pointer
    /// events, see `gtk_widget_contains()`.
    @inlinable var width: Int {
        /// Returns the content width of the widget, as passed to its size-allocate implementation.
        /// This is the size you should be using in `GtkWidgetClass.snapshot()`. For pointer
        /// events, see `gtk_widget_contains()`.
        get {
            let rv = Int(gtk_widget_get_width(widget_ptr))
            return rv
        }
    }

    @inlinable var parentInstance: GInitiallyUnowned {
        get {
            let rv = widget_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



