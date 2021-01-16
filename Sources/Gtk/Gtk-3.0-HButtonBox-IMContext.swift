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

// MARK: - HButtonBox Class

/// The `HButtonBoxProtocol` protocol exposes the methods and properties of an underlying `GtkHButtonBox` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `HButtonBox`.
/// Alternatively, use `HButtonBoxRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol HButtonBoxProtocol: ButtonBoxProtocol {
        /// Untyped pointer to the underlying `GtkHButtonBox` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkHButtonBox` instance.
    var hbutton_box_ptr: UnsafeMutablePointer<GtkHButtonBox>! { get }

}

/// The `HButtonBoxRef` type acts as a lightweight Swift reference to an underlying `GtkHButtonBox` instance.
/// It exposes methods that can operate on this data type through `HButtonBoxProtocol` conformance.
/// Use `HButtonBoxRef` only as an `unowned` reference to an existing `GtkHButtonBox` instance.
///

public struct HButtonBoxRef: HButtonBoxProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkHButtonBox` instance.
    /// For type-safe access, use the generated, typed pointer `hbutton_box_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension HButtonBoxRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkHButtonBox>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkHButtonBox>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkHButtonBox>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkHButtonBox>?) {
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

    /// Reference intialiser for a related type that implements `HButtonBoxProtocol`
    @inlinable init<T: HButtonBoxProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: HButtonBoxProtocol>(_ other: T) -> HButtonBoxRef { HButtonBoxRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HButtonBoxProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HButtonBoxProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HButtonBoxProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HButtonBoxProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HButtonBoxProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new horizontal button box.
    ///
    /// **new is deprecated:**
    /// Use gtk_button_box_new() with %GTK_ORIENTATION_HORIZONTAL instead
    @available(*, deprecated)
    @inlinable init() {
        let rv = gtk_hbutton_box_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `HButtonBox` type acts as a reference-counted owner of an underlying `GtkHButtonBox` instance.
/// It provides the methods that can operate on this data type through `HButtonBoxProtocol` conformance.
/// Use `HButtonBox` as a strong reference or owner of a `GtkHButtonBox` instance.
///

open class HButtonBox: ButtonBox, HButtonBoxProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HButtonBox` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkHButtonBox>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HButtonBox` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkHButtonBox>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HButtonBox` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HButtonBox` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HButtonBox` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkHButtonBox>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HButtonBox` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkHButtonBox>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkHButtonBox`.
    /// i.e., ownership is transferred to the `HButtonBox` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkHButtonBox>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `HButtonBoxProtocol`
    /// Will retain `GtkHButtonBox`.
    /// - Parameter other: an instance of a related type that implements `HButtonBoxProtocol`
    @inlinable public init<T: HButtonBoxProtocol>(hButtonBox other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HButtonBoxProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HButtonBoxProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HButtonBoxProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HButtonBoxProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HButtonBoxProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HButtonBoxProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HButtonBoxProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HButtonBoxProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new horizontal button box.
    ///
    /// **new is deprecated:**
    /// Use gtk_button_box_new() with %GTK_ORIENTATION_HORIZONTAL instead
    @available(*, deprecated)
    @inlinable public init() {
        let rv = gtk_hbutton_box_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum HButtonBoxPropertyName: String, PropertyNameProtocol {
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

public extension HButtonBoxProtocol {
    /// Bind a `HButtonBoxPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: HButtonBoxPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a HButtonBox property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: HButtonBoxPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a HButtonBox property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: HButtonBoxPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: HButtonBox has no signals// MARK: HButtonBox Class: HButtonBoxProtocol extension (methods and fields)
public extension HButtonBoxProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkHButtonBox` instance.
    @inlinable var hbutton_box_ptr: UnsafeMutablePointer<GtkHButtonBox>! { return ptr?.assumingMemoryBound(to: GtkHButtonBox.self) }


    @inlinable var buttonBox: GtkButtonBox {
        get {
            let rv = hbutton_box_ptr.pointee.button_box
            return rv
        }
    }

}



// MARK: - HPaned Class

/// The `HPanedProtocol` protocol exposes the methods and properties of an underlying `GtkHPaned` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `HPaned`.
/// Alternatively, use `HPanedRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The HPaned widget is a container widget with two
/// children arranged horizontally. The division between
/// the two panes is adjustable by the user by dragging
/// a handle. See `GtkPaned` for details.
/// 
/// GtkHPaned has been deprecated, use `GtkPaned` instead.
public protocol HPanedProtocol: PanedProtocol {
        /// Untyped pointer to the underlying `GtkHPaned` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkHPaned` instance.
    var hpaned_ptr: UnsafeMutablePointer<GtkHPaned>! { get }

}

/// The `HPanedRef` type acts as a lightweight Swift reference to an underlying `GtkHPaned` instance.
/// It exposes methods that can operate on this data type through `HPanedProtocol` conformance.
/// Use `HPanedRef` only as an `unowned` reference to an existing `GtkHPaned` instance.
///
/// The HPaned widget is a container widget with two
/// children arranged horizontally. The division between
/// the two panes is adjustable by the user by dragging
/// a handle. See `GtkPaned` for details.
/// 
/// GtkHPaned has been deprecated, use `GtkPaned` instead.
public struct HPanedRef: HPanedProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkHPaned` instance.
    /// For type-safe access, use the generated, typed pointer `hpaned_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension HPanedRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkHPaned>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkHPaned>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkHPaned>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkHPaned>?) {
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

    /// Reference intialiser for a related type that implements `HPanedProtocol`
    @inlinable init<T: HPanedProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: HPanedProtocol>(_ other: T) -> HPanedRef { HPanedRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HPanedProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HPanedProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HPanedProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HPanedProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HPanedProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Create a new `GtkHPaned`
    ///
    /// **new is deprecated:**
    /// Use gtk_paned_new() with %GTK_ORIENTATION_HORIZONTAL instead
    @available(*, deprecated)
    @inlinable init() {
        let rv = gtk_hpaned_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `HPaned` type acts as a reference-counted owner of an underlying `GtkHPaned` instance.
/// It provides the methods that can operate on this data type through `HPanedProtocol` conformance.
/// Use `HPaned` as a strong reference or owner of a `GtkHPaned` instance.
///
/// The HPaned widget is a container widget with two
/// children arranged horizontally. The division between
/// the two panes is adjustable by the user by dragging
/// a handle. See `GtkPaned` for details.
/// 
/// GtkHPaned has been deprecated, use `GtkPaned` instead.
open class HPaned: Paned, HPanedProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HPaned` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkHPaned>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HPaned` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkHPaned>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HPaned` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HPaned` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HPaned` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkHPaned>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HPaned` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkHPaned>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkHPaned`.
    /// i.e., ownership is transferred to the `HPaned` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkHPaned>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `HPanedProtocol`
    /// Will retain `GtkHPaned`.
    /// - Parameter other: an instance of a related type that implements `HPanedProtocol`
    @inlinable public init<T: HPanedProtocol>(hPaned other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HPanedProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HPanedProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HPanedProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HPanedProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HPanedProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HPanedProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HPanedProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HPanedProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Create a new `GtkHPaned`
    ///
    /// **new is deprecated:**
    /// Use gtk_paned_new() with %GTK_ORIENTATION_HORIZONTAL instead
    @available(*, deprecated)
    @inlinable public init() {
        let rv = gtk_hpaned_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum HPanedPropertyName: String, PropertyNameProtocol {
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
    /// The largest possible value for the position property.
    /// This property is derived from the size and shrinkability
    /// of the widget's children.
    case maxPosition = "max-position"
    /// The smallest possible value for the position property.
    /// This property is derived from the size and shrinkability
    /// of the widget's children.
    case minPosition = "min-position"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case position = "position"
    case positionSet = "position-set"
    case receivesDefault = "receives-default"
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
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    /// Setting this property to `true` indicates that the paned needs
    /// to provide stronger visual separation (e.g. because it separates
    /// between two notebooks, whose tab rows would otherwise merge visually).
    case wideHandle = "wide-handle"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
}

public extension HPanedProtocol {
    /// Bind a `HPanedPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: HPanedPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a HPaned property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: HPanedPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a HPaned property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: HPanedPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: HPaned has no signals// MARK: HPaned Class: HPanedProtocol extension (methods and fields)
public extension HPanedProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkHPaned` instance.
    @inlinable var hpaned_ptr: UnsafeMutablePointer<GtkHPaned>! { return ptr?.assumingMemoryBound(to: GtkHPaned.self) }


    @inlinable var paned: GtkPaned {
        get {
            let rv = hpaned_ptr.pointee.paned
            return rv
        }
    }

}



// MARK: - HSV Class

/// The `HSVProtocol` protocol exposes the methods and properties of an underlying `GtkHSV` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `HSV`.
/// Alternatively, use `HSVRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkHSV` is the “color wheel” part of a complete color selector widget.
/// It allows to select a color by determining its HSV components in an
/// intuitive way. Moving the selection around the outer ring changes the hue,
/// and moving the selection point inside the inner triangle changes value and
/// saturation.
/// 
/// `GtkHSV` has been deprecated together with `GtkColorSelection`, where
/// it was used.
public protocol HSVProtocol: WidgetProtocol {
        /// Untyped pointer to the underlying `GtkHSV` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkHSV` instance.
    var hsv_ptr: UnsafeMutablePointer<GtkHSV>! { get }

}

/// The `HSVRef` type acts as a lightweight Swift reference to an underlying `GtkHSV` instance.
/// It exposes methods that can operate on this data type through `HSVProtocol` conformance.
/// Use `HSVRef` only as an `unowned` reference to an existing `GtkHSV` instance.
///
/// `GtkHSV` is the “color wheel” part of a complete color selector widget.
/// It allows to select a color by determining its HSV components in an
/// intuitive way. Moving the selection around the outer ring changes the hue,
/// and moving the selection point inside the inner triangle changes value and
/// saturation.
/// 
/// `GtkHSV` has been deprecated together with `GtkColorSelection`, where
/// it was used.
public struct HSVRef: HSVProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkHSV` instance.
    /// For type-safe access, use the generated, typed pointer `hsv_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension HSVRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkHSV>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkHSV>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkHSV>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkHSV>?) {
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

    /// Reference intialiser for a related type that implements `HSVProtocol`
    @inlinable init<T: HSVProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: HSVProtocol>(_ other: T) -> HSVRef { HSVRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSVProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSVProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSVProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSVProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSVProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new HSV color selector.
    @available(*, deprecated)
    @inlinable init() {
        let rv = gtk_hsv_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `HSV` type acts as a reference-counted owner of an underlying `GtkHSV` instance.
/// It provides the methods that can operate on this data type through `HSVProtocol` conformance.
/// Use `HSV` as a strong reference or owner of a `GtkHSV` instance.
///
/// `GtkHSV` is the “color wheel” part of a complete color selector widget.
/// It allows to select a color by determining its HSV components in an
/// intuitive way. Moving the selection around the outer ring changes the hue,
/// and moving the selection point inside the inner triangle changes value and
/// saturation.
/// 
/// `GtkHSV` has been deprecated together with `GtkColorSelection`, where
/// it was used.
open class HSV: Widget, HSVProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HSV` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkHSV>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HSV` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkHSV>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HSV` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HSV` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HSV` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkHSV>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HSV` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkHSV>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkHSV`.
    /// i.e., ownership is transferred to the `HSV` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkHSV>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `HSVProtocol`
    /// Will retain `GtkHSV`.
    /// - Parameter other: an instance of a related type that implements `HSVProtocol`
    @inlinable public init<T: HSVProtocol>(hSV other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSVProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSVProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSVProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSVProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSVProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSVProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSVProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSVProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new HSV color selector.
    @available(*, deprecated)
    @inlinable public init() {
        let rv = gtk_hsv_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum HSVPropertyName: String, PropertyNameProtocol {
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

public extension HSVProtocol {
    /// Bind a `HSVPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: HSVPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a HSV property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: HSVPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a HSV property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: HSVPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of HSV
public extension HSVProtocol {
    /// - Note: Representation of signal named `changed`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: HSVRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<HSVRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(HSVRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "changed", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// - Note: Representation of signal named `move`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter object: none
    @discardableResult
    func onMove(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: HSVRef, _ object: DirectionType) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<HSVRef, DirectionType, Void>
        let cCallback: @convention(c) (gpointer, UInt32, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(HSVRef(raw: unownedSelf), DirectionType(arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "move", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    
}

// MARK: HSV Class: HSVProtocol extension (methods and fields)
public extension HSVProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkHSV` instance.
    @inlinable var hsv_ptr: UnsafeMutablePointer<GtkHSV>! { return ptr?.assumingMemoryBound(to: GtkHSV.self) }

    /// Queries the current color in an HSV color selector.
    /// Returned values will be in the [0.0, 1.0] range.
    @inlinable @available(*, deprecated)
    func getColor(h: UnsafeMutablePointer<gdouble>!, s: UnsafeMutablePointer<gdouble>!, v: UnsafeMutablePointer<gdouble>!) {
        gtk_hsv_get_color(hsv_ptr, h, s, v)
    
    }

    /// Queries the size and ring width of an HSV color selector.
    @inlinable @available(*, deprecated)
    func getMetrics(size: UnsafeMutablePointer<gint>!, ringWidth: UnsafeMutablePointer<gint>!) {
        gtk_hsv_get_metrics(hsv_ptr, size, ringWidth)
    
    }

    /// Sets the current color in an HSV color selector.
    /// Color component values must be in the [0.0, 1.0] range.
    @inlinable @available(*, deprecated)
    func setColor(h: CDouble, s: CDouble, v: CDouble) {
        gtk_hsv_set_color(hsv_ptr, h, s, v)
    
    }

    /// Sets the size and ring width of an HSV color selector.
    @inlinable @available(*, deprecated)
    func setMetrics(size: Int, ringWidth: Int) {
        gtk_hsv_set_metrics(hsv_ptr, gint(size), gint(ringWidth))
    
    }
    /// An HSV color selector can be said to be adjusting if multiple rapid
    /// changes are being made to its value, for example, when the user is
    /// adjusting the value with the mouse. This function queries whether
    /// the HSV color selector is being adjusted or not.
    @inlinable @available(*, deprecated)
    var isAdjusting: Bool {
        /// An HSV color selector can be said to be adjusting if multiple rapid
        /// changes are being made to its value, for example, when the user is
        /// adjusting the value with the mouse. This function queries whether
        /// the HSV color selector is being adjusted or not.
        get {
            let rv = ((gtk_hsv_is_adjusting(hsv_ptr)) != 0)
            return rv
        }
    }

    @inlinable var parentInstance: GtkWidget {
        get {
            let rv = hsv_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - HScale Class

/// The `HScaleProtocol` protocol exposes the methods and properties of an underlying `GtkHScale` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `HScale`.
/// Alternatively, use `HScaleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkHScale` widget is used to allow the user to select a value using
/// a horizontal slider. To create one, use `gtk_hscale_new_with_range()`.
/// 
/// The position to show the current value, and the number of decimal places
/// shown can be set using the parent `GtkScale` class’s functions.
/// 
/// GtkHScale has been deprecated, use `GtkScale` instead.
public protocol HScaleProtocol: ScaleProtocol {
        /// Untyped pointer to the underlying `GtkHScale` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkHScale` instance.
    var hscale_ptr: UnsafeMutablePointer<GtkHScale>! { get }

}

/// The `HScaleRef` type acts as a lightweight Swift reference to an underlying `GtkHScale` instance.
/// It exposes methods that can operate on this data type through `HScaleProtocol` conformance.
/// Use `HScaleRef` only as an `unowned` reference to an existing `GtkHScale` instance.
///
/// The `GtkHScale` widget is used to allow the user to select a value using
/// a horizontal slider. To create one, use `gtk_hscale_new_with_range()`.
/// 
/// The position to show the current value, and the number of decimal places
/// shown can be set using the parent `GtkScale` class’s functions.
/// 
/// GtkHScale has been deprecated, use `GtkScale` instead.
public struct HScaleRef: HScaleProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkHScale` instance.
    /// For type-safe access, use the generated, typed pointer `hscale_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension HScaleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkHScale>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkHScale>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkHScale>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkHScale>?) {
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

    /// Reference intialiser for a related type that implements `HScaleProtocol`
    @inlinable init<T: HScaleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: HScaleProtocol>(_ other: T) -> HScaleRef { HScaleRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScaleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScaleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScaleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScaleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScaleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkHScale`.
    ///
    /// **new is deprecated:**
    /// Use gtk_scale_new() with %GTK_ORIENTATION_HORIZONTAL instead
    @available(*, deprecated)
    @inlinable init<AdjustmentT: AdjustmentProtocol>( adjustment: AdjustmentT?) {
        let rv = gtk_hscale_new(adjustment?.adjustment_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new horizontal scale widget that lets the user input a
    /// number between `min` and `max` (including `min` and `max`) with the
    /// increment `step`.  `step` must be nonzero; it’s the distance the
    /// slider moves when using the arrow keys to adjust the scale value.
    /// 
    /// Note that the way in which the precision is derived works best if `step`
    /// is a power of ten. If the resulting precision is not suitable for your
    /// needs, use `gtk_scale_set_digits()` to correct it.
    ///
    /// **new_with_range is deprecated:**
    /// Use gtk_scale_new_with_range() with %GTK_ORIENTATION_HORIZONTAL instead
    @available(*, deprecated)
    @inlinable init(range min: Double, max: Double, step: Double) {
        let rv = gtk_hscale_new_with_range(gdouble(min), gdouble(max), gdouble(step))
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new horizontal scale widget that lets the user input a
    /// number between `min` and `max` (including `min` and `max`) with the
    /// increment `step`.  `step` must be nonzero; it’s the distance the
    /// slider moves when using the arrow keys to adjust the scale value.
    /// 
    /// Note that the way in which the precision is derived works best if `step`
    /// is a power of ten. If the resulting precision is not suitable for your
    /// needs, use `gtk_scale_set_digits()` to correct it.
    ///
    /// **new_with_range is deprecated:**
    /// Use gtk_scale_new_with_range() with %GTK_ORIENTATION_HORIZONTAL instead
    @available(*, deprecated)
    @inlinable static func hscaleNewWith(range min: Double, max: Double, step: Double) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_hscale_new_with_range(gdouble(min), gdouble(max), gdouble(step)))) else { return nil }
        return rv
    }
}

/// The `HScale` type acts as a reference-counted owner of an underlying `GtkHScale` instance.
/// It provides the methods that can operate on this data type through `HScaleProtocol` conformance.
/// Use `HScale` as a strong reference or owner of a `GtkHScale` instance.
///
/// The `GtkHScale` widget is used to allow the user to select a value using
/// a horizontal slider. To create one, use `gtk_hscale_new_with_range()`.
/// 
/// The position to show the current value, and the number of decimal places
/// shown can be set using the parent `GtkScale` class’s functions.
/// 
/// GtkHScale has been deprecated, use `GtkScale` instead.
open class HScale: Scale, HScaleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HScale` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkHScale>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HScale` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkHScale>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HScale` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HScale` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HScale` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkHScale>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HScale` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkHScale>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkHScale`.
    /// i.e., ownership is transferred to the `HScale` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkHScale>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `HScaleProtocol`
    /// Will retain `GtkHScale`.
    /// - Parameter other: an instance of a related type that implements `HScaleProtocol`
    @inlinable public init<T: HScaleProtocol>(hScale other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScaleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScaleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScaleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScaleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScaleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScaleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScaleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScaleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkHScale`.
    ///
    /// **new is deprecated:**
    /// Use gtk_scale_new() with %GTK_ORIENTATION_HORIZONTAL instead
    @available(*, deprecated)
    @inlinable public init<AdjustmentT: AdjustmentProtocol>( adjustment: AdjustmentT?) {
        let rv = gtk_hscale_new(adjustment?.adjustment_ptr)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new horizontal scale widget that lets the user input a
    /// number between `min` and `max` (including `min` and `max`) with the
    /// increment `step`.  `step` must be nonzero; it’s the distance the
    /// slider moves when using the arrow keys to adjust the scale value.
    /// 
    /// Note that the way in which the precision is derived works best if `step`
    /// is a power of ten. If the resulting precision is not suitable for your
    /// needs, use `gtk_scale_set_digits()` to correct it.
    ///
    /// **new_with_range is deprecated:**
    /// Use gtk_scale_new_with_range() with %GTK_ORIENTATION_HORIZONTAL instead
    @available(*, deprecated)
    @inlinable public init(range min: Double, max: Double, step: Double) {
        let rv = gtk_hscale_new_with_range(gdouble(min), gdouble(max), gdouble(step))
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new horizontal scale widget that lets the user input a
    /// number between `min` and `max` (including `min` and `max`) with the
    /// increment `step`.  `step` must be nonzero; it’s the distance the
    /// slider moves when using the arrow keys to adjust the scale value.
    /// 
    /// Note that the way in which the precision is derived works best if `step`
    /// is a power of ten. If the resulting precision is not suitable for your
    /// needs, use `gtk_scale_set_digits()` to correct it.
    ///
    /// **new_with_range is deprecated:**
    /// Use gtk_scale_new_with_range() with %GTK_ORIENTATION_HORIZONTAL instead
    @available(*, deprecated)
    @inlinable public static func hscaleNewWith(range min: Double, max: Double, step: Double) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_hscale_new_with_range(gdouble(min), gdouble(max), gdouble(step)))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum HScalePropertyName: String, PropertyNameProtocol {
    case adjustment = "adjustment"
    case appPaintable = "app-paintable"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case compositeChild = "composite-child"
    case digits = "digits"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
    case drawValue = "draw-value"
    case events = "events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case expand = "expand"
    /// The fill level (e.g. prebuffering of a network stream).
    /// See `gtk_range_set_fill_level()`.
    case fillLevel = "fill-level"
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
    case hasOrigin = "has-origin"
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
    case inverted = "inverted"
    case isFocus = "is-focus"
    case lowerStepperSensitivity = "lower-stepper-sensitivity"
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
    /// The restrict-to-fill-level property controls whether slider
    /// movement is restricted to an upper boundary set by the
    /// fill level. See `gtk_range_set_restrict_to_fill_level()`.
    case restrictToFillLevel = "restrict-to-fill-level"
    /// The number of digits to round the value to when
    /// it changes, or -1. See `GtkRange::change`-value.
    case roundDigits = "round-digits"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// The show-fill-level property controls whether fill level indicator
    /// graphics are displayed on the trough. See
    /// `gtk_range_set_show_fill_level()`.
    case showFillLevel = "show-fill-level"
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
    case upperStepperSensitivity = "upper-stepper-sensitivity"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    case valuePos = "value-pos"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
}

public extension HScaleProtocol {
    /// Bind a `HScalePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: HScalePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a HScale property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: HScalePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a HScale property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: HScalePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: HScale has no signals// MARK: HScale Class: HScaleProtocol extension (methods and fields)
public extension HScaleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkHScale` instance.
    @inlinable var hscale_ptr: UnsafeMutablePointer<GtkHScale>! { return ptr?.assumingMemoryBound(to: GtkHScale.self) }


    @inlinable var scale: GtkScale {
        get {
            let rv = hscale_ptr.pointee.scale
            return rv
        }
    }

}



// MARK: - HScrollbar Class

/// The `HScrollbarProtocol` protocol exposes the methods and properties of an underlying `GtkHScrollbar` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `HScrollbar`.
/// Alternatively, use `HScrollbarRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkHScrollbar` widget is a widget arranged horizontally creating a
/// scrollbar. See `GtkScrollbar` for details on
/// scrollbars. `GtkAdjustment` pointers may be added to handle the
/// adjustment of the scrollbar or it may be left `nil` in which case one
/// will be created for you. See `GtkScrollbar` for a description of what the
/// fields in an adjustment represent for a scrollbar.
/// 
/// GtkHScrollbar has been deprecated, use `GtkScrollbar` instead.
public protocol HScrollbarProtocol: ScrollbarProtocol {
        /// Untyped pointer to the underlying `GtkHScrollbar` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkHScrollbar` instance.
    var hscrollbar_ptr: UnsafeMutablePointer<GtkHScrollbar>! { get }

}

/// The `HScrollbarRef` type acts as a lightweight Swift reference to an underlying `GtkHScrollbar` instance.
/// It exposes methods that can operate on this data type through `HScrollbarProtocol` conformance.
/// Use `HScrollbarRef` only as an `unowned` reference to an existing `GtkHScrollbar` instance.
///
/// The `GtkHScrollbar` widget is a widget arranged horizontally creating a
/// scrollbar. See `GtkScrollbar` for details on
/// scrollbars. `GtkAdjustment` pointers may be added to handle the
/// adjustment of the scrollbar or it may be left `nil` in which case one
/// will be created for you. See `GtkScrollbar` for a description of what the
/// fields in an adjustment represent for a scrollbar.
/// 
/// GtkHScrollbar has been deprecated, use `GtkScrollbar` instead.
public struct HScrollbarRef: HScrollbarProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkHScrollbar` instance.
    /// For type-safe access, use the generated, typed pointer `hscrollbar_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension HScrollbarRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkHScrollbar>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkHScrollbar>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkHScrollbar>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkHScrollbar>?) {
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

    /// Reference intialiser for a related type that implements `HScrollbarProtocol`
    @inlinable init<T: HScrollbarProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: HScrollbarProtocol>(_ other: T) -> HScrollbarRef { HScrollbarRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScrollbarProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScrollbarProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScrollbarProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScrollbarProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScrollbarProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new horizontal scrollbar.
    ///
    /// **new is deprecated:**
    /// Use gtk_scrollbar_new() with %GTK_ORIENTATION_HORIZONTAL instead
    @available(*, deprecated)
    @inlinable init<AdjustmentT: AdjustmentProtocol>( adjustment: AdjustmentT?) {
        let rv = gtk_hscrollbar_new(adjustment?.adjustment_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `HScrollbar` type acts as a reference-counted owner of an underlying `GtkHScrollbar` instance.
/// It provides the methods that can operate on this data type through `HScrollbarProtocol` conformance.
/// Use `HScrollbar` as a strong reference or owner of a `GtkHScrollbar` instance.
///
/// The `GtkHScrollbar` widget is a widget arranged horizontally creating a
/// scrollbar. See `GtkScrollbar` for details on
/// scrollbars. `GtkAdjustment` pointers may be added to handle the
/// adjustment of the scrollbar or it may be left `nil` in which case one
/// will be created for you. See `GtkScrollbar` for a description of what the
/// fields in an adjustment represent for a scrollbar.
/// 
/// GtkHScrollbar has been deprecated, use `GtkScrollbar` instead.
open class HScrollbar: Scrollbar, HScrollbarProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HScrollbar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkHScrollbar>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HScrollbar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkHScrollbar>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HScrollbar` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HScrollbar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HScrollbar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkHScrollbar>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HScrollbar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkHScrollbar>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkHScrollbar`.
    /// i.e., ownership is transferred to the `HScrollbar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkHScrollbar>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `HScrollbarProtocol`
    /// Will retain `GtkHScrollbar`.
    /// - Parameter other: an instance of a related type that implements `HScrollbarProtocol`
    @inlinable public init<T: HScrollbarProtocol>(hScrollbar other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScrollbarProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScrollbarProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScrollbarProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScrollbarProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScrollbarProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScrollbarProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScrollbarProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HScrollbarProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new horizontal scrollbar.
    ///
    /// **new is deprecated:**
    /// Use gtk_scrollbar_new() with %GTK_ORIENTATION_HORIZONTAL instead
    @available(*, deprecated)
    @inlinable public init<AdjustmentT: AdjustmentProtocol>( adjustment: AdjustmentT?) {
        let rv = gtk_hscrollbar_new(adjustment?.adjustment_ptr)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum HScrollbarPropertyName: String, PropertyNameProtocol {
    case adjustment = "adjustment"
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
    /// The fill level (e.g. prebuffering of a network stream).
    /// See `gtk_range_set_fill_level()`.
    case fillLevel = "fill-level"
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
    case inverted = "inverted"
    case isFocus = "is-focus"
    case lowerStepperSensitivity = "lower-stepper-sensitivity"
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
    /// The restrict-to-fill-level property controls whether slider
    /// movement is restricted to an upper boundary set by the
    /// fill level. See `gtk_range_set_restrict_to_fill_level()`.
    case restrictToFillLevel = "restrict-to-fill-level"
    /// The number of digits to round the value to when
    /// it changes, or -1. See `GtkRange::change`-value.
    case roundDigits = "round-digits"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// The show-fill-level property controls whether fill level indicator
    /// graphics are displayed on the trough. See
    /// `gtk_range_set_show_fill_level()`.
    case showFillLevel = "show-fill-level"
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
    case upperStepperSensitivity = "upper-stepper-sensitivity"
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

public extension HScrollbarProtocol {
    /// Bind a `HScrollbarPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: HScrollbarPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a HScrollbar property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: HScrollbarPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a HScrollbar property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: HScrollbarPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: HScrollbar has no signals// MARK: HScrollbar Class: HScrollbarProtocol extension (methods and fields)
public extension HScrollbarProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkHScrollbar` instance.
    @inlinable var hscrollbar_ptr: UnsafeMutablePointer<GtkHScrollbar>! { return ptr?.assumingMemoryBound(to: GtkHScrollbar.self) }


    @inlinable var scrollbar: GtkScrollbar {
        get {
            let rv = hscrollbar_ptr.pointee.scrollbar
            return rv
        }
    }

}



// MARK: - HSeparator Class

/// The `HSeparatorProtocol` protocol exposes the methods and properties of an underlying `GtkHSeparator` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `HSeparator`.
/// Alternatively, use `HSeparatorRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkHSeparator` widget is a horizontal separator, used to group the
/// widgets within a window. It displays a horizontal line with a shadow to
/// make it appear sunken into the interface.
/// 
/// > The `GtkHSeparator` widget is not used as a separator within menus.
/// > To create a separator in a menu create an empty `GtkSeparatorMenuItem`
/// > widget using `gtk_separator_menu_item_new()` and add it to the menu with
/// > `gtk_menu_shell_append()`.
/// 
/// GtkHSeparator has been deprecated, use `GtkSeparator` instead.
public protocol HSeparatorProtocol: SeparatorProtocol {
        /// Untyped pointer to the underlying `GtkHSeparator` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkHSeparator` instance.
    var hseparator_ptr: UnsafeMutablePointer<GtkHSeparator>! { get }

}

/// The `HSeparatorRef` type acts as a lightweight Swift reference to an underlying `GtkHSeparator` instance.
/// It exposes methods that can operate on this data type through `HSeparatorProtocol` conformance.
/// Use `HSeparatorRef` only as an `unowned` reference to an existing `GtkHSeparator` instance.
///
/// The `GtkHSeparator` widget is a horizontal separator, used to group the
/// widgets within a window. It displays a horizontal line with a shadow to
/// make it appear sunken into the interface.
/// 
/// > The `GtkHSeparator` widget is not used as a separator within menus.
/// > To create a separator in a menu create an empty `GtkSeparatorMenuItem`
/// > widget using `gtk_separator_menu_item_new()` and add it to the menu with
/// > `gtk_menu_shell_append()`.
/// 
/// GtkHSeparator has been deprecated, use `GtkSeparator` instead.
public struct HSeparatorRef: HSeparatorProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkHSeparator` instance.
    /// For type-safe access, use the generated, typed pointer `hseparator_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension HSeparatorRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkHSeparator>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkHSeparator>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkHSeparator>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkHSeparator>?) {
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

    /// Reference intialiser for a related type that implements `HSeparatorProtocol`
    @inlinable init<T: HSeparatorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: HSeparatorProtocol>(_ other: T) -> HSeparatorRef { HSeparatorRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSeparatorProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSeparatorProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSeparatorProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSeparatorProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSeparatorProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkHSeparator`.
    ///
    /// **new is deprecated:**
    /// Use gtk_separator_new() with %GTK_ORIENTATION_HORIZONTAL instead
    @available(*, deprecated)
    @available(*, deprecated)
    @inlinable init() {
        let rv = gtk_hseparator_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `HSeparator` type acts as a reference-counted owner of an underlying `GtkHSeparator` instance.
/// It provides the methods that can operate on this data type through `HSeparatorProtocol` conformance.
/// Use `HSeparator` as a strong reference or owner of a `GtkHSeparator` instance.
///
/// The `GtkHSeparator` widget is a horizontal separator, used to group the
/// widgets within a window. It displays a horizontal line with a shadow to
/// make it appear sunken into the interface.
/// 
/// > The `GtkHSeparator` widget is not used as a separator within menus.
/// > To create a separator in a menu create an empty `GtkSeparatorMenuItem`
/// > widget using `gtk_separator_menu_item_new()` and add it to the menu with
/// > `gtk_menu_shell_append()`.
/// 
/// GtkHSeparator has been deprecated, use `GtkSeparator` instead.
open class HSeparator: Separator, HSeparatorProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HSeparator` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkHSeparator>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HSeparator` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkHSeparator>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HSeparator` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HSeparator` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HSeparator` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkHSeparator>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HSeparator` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkHSeparator>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkHSeparator`.
    /// i.e., ownership is transferred to the `HSeparator` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkHSeparator>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `HSeparatorProtocol`
    /// Will retain `GtkHSeparator`.
    /// - Parameter other: an instance of a related type that implements `HSeparatorProtocol`
    @inlinable public init<T: HSeparatorProtocol>(hSeparator other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSeparatorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSeparatorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSeparatorProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSeparatorProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSeparatorProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSeparatorProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSeparatorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HSeparatorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkHSeparator`.
    ///
    /// **new is deprecated:**
    /// Use gtk_separator_new() with %GTK_ORIENTATION_HORIZONTAL instead
    @available(*, deprecated)
    @inlinable public init() {
        let rv = gtk_hseparator_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum HSeparatorPropertyName: String, PropertyNameProtocol {
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

public extension HSeparatorProtocol {
    /// Bind a `HSeparatorPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: HSeparatorPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a HSeparator property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: HSeparatorPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a HSeparator property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: HSeparatorPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: HSeparator has no signals// MARK: HSeparator Class: HSeparatorProtocol extension (methods and fields)
public extension HSeparatorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkHSeparator` instance.
    @inlinable var hseparator_ptr: UnsafeMutablePointer<GtkHSeparator>! { return ptr?.assumingMemoryBound(to: GtkHSeparator.self) }


    @inlinable var separator: GtkSeparator {
        get {
            let rv = hseparator_ptr.pointee.separator
            return rv
        }
    }

}



// MARK: - HandleBox Class

/// The `HandleBoxProtocol` protocol exposes the methods and properties of an underlying `GtkHandleBox` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `HandleBox`.
/// Alternatively, use `HandleBoxRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkHandleBox` widget allows a portion of a window to be "torn
/// off". It is a bin widget which displays its child and a handle that
/// the user can drag to tear off a separate window (the “float
/// window”) containing the child widget. A thin
/// “ghost” is drawn in the original location of the
/// handlebox. By dragging the separate window back to its original
/// location, it can be reattached.
/// 
/// When reattaching, the ghost and float window, must be aligned
/// along one of the edges, the “snap edge”.
/// This either can be specified by the application programmer
/// explicitly, or GTK+ will pick a reasonable default based
/// on the handle position.
/// 
/// To make detaching and reattaching the handlebox as minimally confusing
/// as possible to the user, it is important to set the snap edge so that
/// the snap edge does not move when the handlebox is deattached. For
/// instance, if the handlebox is packed at the bottom of a VBox, then
/// when the handlebox is detached, the bottom edge of the handlebox's
/// allocation will remain fixed as the height of the handlebox shrinks,
/// so the snap edge should be set to `GTK_POS_BOTTOM`.
/// 
/// > `GtkHandleBox` has been deprecated. It is very specialized, lacks features
/// > to make it useful and most importantly does not fit well into modern
/// > application design. Do not use it. There is no replacement.
public protocol HandleBoxProtocol: BinProtocol {
        /// Untyped pointer to the underlying `GtkHandleBox` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkHandleBox` instance.
    var handle_box_ptr: UnsafeMutablePointer<GtkHandleBox>! { get }

}

/// The `HandleBoxRef` type acts as a lightweight Swift reference to an underlying `GtkHandleBox` instance.
/// It exposes methods that can operate on this data type through `HandleBoxProtocol` conformance.
/// Use `HandleBoxRef` only as an `unowned` reference to an existing `GtkHandleBox` instance.
///
/// The `GtkHandleBox` widget allows a portion of a window to be "torn
/// off". It is a bin widget which displays its child and a handle that
/// the user can drag to tear off a separate window (the “float
/// window”) containing the child widget. A thin
/// “ghost” is drawn in the original location of the
/// handlebox. By dragging the separate window back to its original
/// location, it can be reattached.
/// 
/// When reattaching, the ghost and float window, must be aligned
/// along one of the edges, the “snap edge”.
/// This either can be specified by the application programmer
/// explicitly, or GTK+ will pick a reasonable default based
/// on the handle position.
/// 
/// To make detaching and reattaching the handlebox as minimally confusing
/// as possible to the user, it is important to set the snap edge so that
/// the snap edge does not move when the handlebox is deattached. For
/// instance, if the handlebox is packed at the bottom of a VBox, then
/// when the handlebox is detached, the bottom edge of the handlebox's
/// allocation will remain fixed as the height of the handlebox shrinks,
/// so the snap edge should be set to `GTK_POS_BOTTOM`.
/// 
/// > `GtkHandleBox` has been deprecated. It is very specialized, lacks features
/// > to make it useful and most importantly does not fit well into modern
/// > application design. Do not use it. There is no replacement.
public struct HandleBoxRef: HandleBoxProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkHandleBox` instance.
    /// For type-safe access, use the generated, typed pointer `handle_box_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension HandleBoxRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkHandleBox>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkHandleBox>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkHandleBox>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkHandleBox>?) {
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

    /// Reference intialiser for a related type that implements `HandleBoxProtocol`
    @inlinable init<T: HandleBoxProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: HandleBoxProtocol>(_ other: T) -> HandleBoxRef { HandleBoxRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HandleBoxProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HandleBoxProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HandleBoxProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HandleBoxProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HandleBoxProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Create a new handle box.
    ///
    /// **new is deprecated:**
    /// #GtkHandleBox has been deprecated.
    @available(*, deprecated)
    @inlinable init() {
        let rv = gtk_handle_box_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `HandleBox` type acts as a reference-counted owner of an underlying `GtkHandleBox` instance.
/// It provides the methods that can operate on this data type through `HandleBoxProtocol` conformance.
/// Use `HandleBox` as a strong reference or owner of a `GtkHandleBox` instance.
///
/// The `GtkHandleBox` widget allows a portion of a window to be "torn
/// off". It is a bin widget which displays its child and a handle that
/// the user can drag to tear off a separate window (the “float
/// window”) containing the child widget. A thin
/// “ghost” is drawn in the original location of the
/// handlebox. By dragging the separate window back to its original
/// location, it can be reattached.
/// 
/// When reattaching, the ghost and float window, must be aligned
/// along one of the edges, the “snap edge”.
/// This either can be specified by the application programmer
/// explicitly, or GTK+ will pick a reasonable default based
/// on the handle position.
/// 
/// To make detaching and reattaching the handlebox as minimally confusing
/// as possible to the user, it is important to set the snap edge so that
/// the snap edge does not move when the handlebox is deattached. For
/// instance, if the handlebox is packed at the bottom of a VBox, then
/// when the handlebox is detached, the bottom edge of the handlebox's
/// allocation will remain fixed as the height of the handlebox shrinks,
/// so the snap edge should be set to `GTK_POS_BOTTOM`.
/// 
/// > `GtkHandleBox` has been deprecated. It is very specialized, lacks features
/// > to make it useful and most importantly does not fit well into modern
/// > application design. Do not use it. There is no replacement.
open class HandleBox: Bin, HandleBoxProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HandleBox` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkHandleBox>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HandleBox` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkHandleBox>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HandleBox` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HandleBox` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HandleBox` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkHandleBox>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HandleBox` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkHandleBox>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkHandleBox`.
    /// i.e., ownership is transferred to the `HandleBox` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkHandleBox>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `HandleBoxProtocol`
    /// Will retain `GtkHandleBox`.
    /// - Parameter other: an instance of a related type that implements `HandleBoxProtocol`
    @inlinable public init<T: HandleBoxProtocol>(handleBox other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HandleBoxProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HandleBoxProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HandleBoxProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HandleBoxProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HandleBoxProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HandleBoxProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HandleBoxProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HandleBoxProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Create a new handle box.
    ///
    /// **new is deprecated:**
    /// #GtkHandleBox has been deprecated.
    @available(*, deprecated)
    @inlinable public init() {
        let rv = gtk_handle_box_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum HandleBoxPropertyName: String, PropertyNameProtocol {
    case appPaintable = "app-paintable"
    case borderWidth = "border-width"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case child = "child"
    case childDetached = "child-detached"
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
    case handlePosition = "handle-position"
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
    case resizeMode = "resize-mode"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    case shadowType = "shadow-type"
    case snapEdge = "snap-edge"
    case snapEdgeSet = "snap-edge-set"
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

public extension HandleBoxProtocol {
    /// Bind a `HandleBoxPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: HandleBoxPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a HandleBox property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: HandleBoxPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a HandleBox property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: HandleBoxPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of HandleBox
public extension HandleBoxProtocol {
    /// This signal is emitted when the contents of the
    /// handlebox are reattached to the main window.
    /// - Note: Representation of signal named `child-attached`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter widget: the child widget of the handlebox.   (this argument provides no extra information   and is here only for backwards-compatibility)
    @discardableResult
    func onChildAttached(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: HandleBoxRef, _ widget: WidgetRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<HandleBoxRef, WidgetRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(HandleBoxRef(raw: unownedSelf), WidgetRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "child-attached", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// This signal is emitted when the contents of the
    /// handlebox are detached from the main window.
    /// - Note: Representation of signal named `child-detached`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter widget: the child widget of the handlebox.   (this argument provides no extra information   and is here only for backwards-compatibility)
    @discardableResult
    func onChildDetached(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: HandleBoxRef, _ widget: WidgetRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<HandleBoxRef, WidgetRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(HandleBoxRef(raw: unownedSelf), WidgetRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "child-detached", 
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
    /// - Note: Representation of signal named `notify::child-detached`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyChildDetached(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: HandleBoxRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<HandleBoxRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(HandleBoxRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::child-detached", 
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
    /// - Note: Representation of signal named `notify::handle-position`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyHandlePosition(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: HandleBoxRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<HandleBoxRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(HandleBoxRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::handle-position", 
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
    /// - Note: Representation of signal named `notify::shadow-type`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyShadowType(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: HandleBoxRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<HandleBoxRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(HandleBoxRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::shadow-type", 
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
    /// - Note: Representation of signal named `notify::snap-edge`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifySnapEdge(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: HandleBoxRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<HandleBoxRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(HandleBoxRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::snap-edge", 
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
    /// - Note: Representation of signal named `notify::snap-edge-set`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifySnapEdgeSet(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: HandleBoxRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<HandleBoxRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(HandleBoxRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::snap-edge-set", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: HandleBox Class: HandleBoxProtocol extension (methods and fields)
public extension HandleBoxProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkHandleBox` instance.
    @inlinable var handle_box_ptr: UnsafeMutablePointer<GtkHandleBox>! { return ptr?.assumingMemoryBound(to: GtkHandleBox.self) }

    /// Whether the handlebox’s child is currently detached.
    ///
    /// **get_child_detached is deprecated:**
    /// #GtkHandleBox has been deprecated.
    @available(*, deprecated)
    @inlinable func getChildDetached() -> Bool {
        let rv = ((gtk_handle_box_get_child_detached(handle_box_ptr)) != 0)
        return rv
    }

    /// Gets the handle position of the handle box. See
    /// `gtk_handle_box_set_handle_position()`.
    ///
    /// **get_handle_position is deprecated:**
    /// #GtkHandleBox has been deprecated.
    @available(*, deprecated)
    @inlinable func getHandlePosition() -> GtkPositionType {
        let rv = gtk_handle_box_get_handle_position(handle_box_ptr)
        return rv
    }

    /// Gets the type of shadow drawn around the handle box. See
    /// `gtk_handle_box_set_shadow_type()`.
    ///
    /// **get_shadow_type is deprecated:**
    /// #GtkHandleBox has been deprecated.
    @available(*, deprecated)
    @inlinable func getShadowType() -> GtkShadowType {
        let rv = gtk_handle_box_get_shadow_type(handle_box_ptr)
        return rv
    }

    /// Gets the edge used for determining reattachment of the handle box.
    /// See `gtk_handle_box_set_snap_edge()`.
    ///
    /// **get_snap_edge is deprecated:**
    /// #GtkHandleBox has been deprecated.
    @available(*, deprecated)
    @inlinable func getSnapEdge() -> GtkPositionType {
        let rv = gtk_handle_box_get_snap_edge(handle_box_ptr)
        return rv
    }

    /// Sets the side of the handlebox where the handle is drawn.
    ///
    /// **set_handle_position is deprecated:**
    /// #GtkHandleBox has been deprecated.
    @available(*, deprecated)
    @inlinable func setHandle(position: GtkPositionType) {
        gtk_handle_box_set_handle_position(handle_box_ptr, position)
    
    }

    /// Sets the type of shadow to be drawn around the border
    /// of the handle box.
    ///
    /// **set_shadow_type is deprecated:**
    /// #GtkHandleBox has been deprecated.
    @available(*, deprecated)
    @inlinable func setShadow(type: GtkShadowType) {
        gtk_handle_box_set_shadow_type(handle_box_ptr, type)
    
    }

    /// Sets the snap edge of a handlebox. The snap edge is
    /// the edge of the detached child that must be aligned
    /// with the corresponding edge of the “ghost” left
    /// behind when the child was detached to reattach
    /// the torn-off window. Usually, the snap edge should
    /// be chosen so that it stays in the same place on
    /// the screen when the handlebox is torn off.
    /// 
    /// If the snap edge is not set, then an appropriate value
    /// will be guessed from the handle position. If the
    /// handle position is `GTK_POS_RIGHT` or `GTK_POS_LEFT`,
    /// then the snap edge will be `GTK_POS_TOP`, otherwise
    /// it will be `GTK_POS_LEFT`.
    ///
    /// **set_snap_edge is deprecated:**
    /// #GtkHandleBox has been deprecated.
    @available(*, deprecated)
    @inlinable func setSnap(edge: GtkPositionType) {
        gtk_handle_box_set_snap_edge(handle_box_ptr, edge)
    
    }
    /// Whether the handlebox’s child is currently detached.
    ///
    /// **get_child_detached is deprecated:**
    /// #GtkHandleBox has been deprecated.
    @inlinable var childDetached: Bool {
        /// Whether the handlebox’s child is currently detached.
        ///
        /// **get_child_detached is deprecated:**
        /// #GtkHandleBox has been deprecated.
        @available(*, deprecated)
    get {
            let rv = ((gtk_handle_box_get_child_detached(handle_box_ptr)) != 0)
            return rv
        }
    }

    /// Gets the handle position of the handle box. See
    /// `gtk_handle_box_set_handle_position()`.
    ///
    /// **get_handle_position is deprecated:**
    /// #GtkHandleBox has been deprecated.
    @inlinable var handlePosition: GtkPositionType {
        /// Gets the handle position of the handle box. See
        /// `gtk_handle_box_set_handle_position()`.
        ///
        /// **get_handle_position is deprecated:**
        /// #GtkHandleBox has been deprecated.
        @available(*, deprecated)
    get {
            let rv = gtk_handle_box_get_handle_position(handle_box_ptr)
            return rv
        }
        /// Sets the side of the handlebox where the handle is drawn.
        ///
        /// **set_handle_position is deprecated:**
        /// #GtkHandleBox has been deprecated.
        @available(*, deprecated)
    nonmutating set {
            gtk_handle_box_set_handle_position(handle_box_ptr, newValue)
        }
    }

    /// Gets the type of shadow drawn around the handle box. See
    /// `gtk_handle_box_set_shadow_type()`.
    ///
    /// **get_shadow_type is deprecated:**
    /// #GtkHandleBox has been deprecated.
    @inlinable var shadowType: GtkShadowType {
        /// Gets the type of shadow drawn around the handle box. See
        /// `gtk_handle_box_set_shadow_type()`.
        ///
        /// **get_shadow_type is deprecated:**
        /// #GtkHandleBox has been deprecated.
        @available(*, deprecated)
    get {
            let rv = gtk_handle_box_get_shadow_type(handle_box_ptr)
            return rv
        }
        /// Sets the type of shadow to be drawn around the border
        /// of the handle box.
        ///
        /// **set_shadow_type is deprecated:**
        /// #GtkHandleBox has been deprecated.
        @available(*, deprecated)
    nonmutating set {
            gtk_handle_box_set_shadow_type(handle_box_ptr, newValue)
        }
    }

    /// Gets the edge used for determining reattachment of the handle box.
    /// See `gtk_handle_box_set_snap_edge()`.
    ///
    /// **get_snap_edge is deprecated:**
    /// #GtkHandleBox has been deprecated.
    @inlinable var snapEdge: GtkPositionType {
        /// Gets the edge used for determining reattachment of the handle box.
        /// See `gtk_handle_box_set_snap_edge()`.
        ///
        /// **get_snap_edge is deprecated:**
        /// #GtkHandleBox has been deprecated.
        @available(*, deprecated)
    get {
            let rv = gtk_handle_box_get_snap_edge(handle_box_ptr)
            return rv
        }
        /// Sets the snap edge of a handlebox. The snap edge is
        /// the edge of the detached child that must be aligned
        /// with the corresponding edge of the “ghost” left
        /// behind when the child was detached to reattach
        /// the torn-off window. Usually, the snap edge should
        /// be chosen so that it stays in the same place on
        /// the screen when the handlebox is torn off.
        /// 
        /// If the snap edge is not set, then an appropriate value
        /// will be guessed from the handle position. If the
        /// handle position is `GTK_POS_RIGHT` or `GTK_POS_LEFT`,
        /// then the snap edge will be `GTK_POS_TOP`, otherwise
        /// it will be `GTK_POS_LEFT`.
        ///
        /// **set_snap_edge is deprecated:**
        /// #GtkHandleBox has been deprecated.
        @available(*, deprecated)
    nonmutating set {
            gtk_handle_box_set_snap_edge(handle_box_ptr, newValue)
        }
    }

    @inlinable var bin: GtkBin {
        get {
            let rv = handle_box_ptr.pointee.bin
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - HeaderBar Class

/// The `HeaderBarProtocol` protocol exposes the methods and properties of an underlying `GtkHeaderBar` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `HeaderBar`.
/// Alternatively, use `HeaderBarRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkHeaderBar is similar to a horizontal `GtkBox`. It allows children to
/// be placed at the start or the end. In addition, it allows a title and
/// subtitle to be displayed. The title will be centered with respect to
/// the width of the box, even if the children at either side take up
/// different amounts of space. The height of the titlebar will be
/// set to provide sufficient space for the subtitle, even if none is
/// currently set. If a subtitle is not needed, the space reservation
/// can be turned off with `gtk_header_bar_set_has_subtitle()`.
/// 
/// GtkHeaderBar can add typical window frame controls, such as minimize,
/// maximize and close buttons, or the window icon.
/// 
/// For these reasons, GtkHeaderBar is the natural choice for use as the custom
/// titlebar widget of a `GtkWindow` (see `gtk_window_set_titlebar()`), as it gives
/// features typical of titlebars while allowing the addition of child widgets.
public protocol HeaderBarProtocol: ContainerProtocol {
        /// Untyped pointer to the underlying `GtkHeaderBar` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkHeaderBar` instance.
    var header_bar_ptr: UnsafeMutablePointer<GtkHeaderBar>! { get }

}

/// The `HeaderBarRef` type acts as a lightweight Swift reference to an underlying `GtkHeaderBar` instance.
/// It exposes methods that can operate on this data type through `HeaderBarProtocol` conformance.
/// Use `HeaderBarRef` only as an `unowned` reference to an existing `GtkHeaderBar` instance.
///
/// GtkHeaderBar is similar to a horizontal `GtkBox`. It allows children to
/// be placed at the start or the end. In addition, it allows a title and
/// subtitle to be displayed. The title will be centered with respect to
/// the width of the box, even if the children at either side take up
/// different amounts of space. The height of the titlebar will be
/// set to provide sufficient space for the subtitle, even if none is
/// currently set. If a subtitle is not needed, the space reservation
/// can be turned off with `gtk_header_bar_set_has_subtitle()`.
/// 
/// GtkHeaderBar can add typical window frame controls, such as minimize,
/// maximize and close buttons, or the window icon.
/// 
/// For these reasons, GtkHeaderBar is the natural choice for use as the custom
/// titlebar widget of a `GtkWindow` (see `gtk_window_set_titlebar()`), as it gives
/// features typical of titlebars while allowing the addition of child widgets.
public struct HeaderBarRef: HeaderBarProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkHeaderBar` instance.
    /// For type-safe access, use the generated, typed pointer `header_bar_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension HeaderBarRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkHeaderBar>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkHeaderBar>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkHeaderBar>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkHeaderBar>?) {
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

    /// Reference intialiser for a related type that implements `HeaderBarProtocol`
    @inlinable init<T: HeaderBarProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: HeaderBarProtocol>(_ other: T) -> HeaderBarRef { HeaderBarRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkHeaderBar` widget.
    @inlinable init() {
        let rv = gtk_header_bar_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `HeaderBar` type acts as a reference-counted owner of an underlying `GtkHeaderBar` instance.
/// It provides the methods that can operate on this data type through `HeaderBarProtocol` conformance.
/// Use `HeaderBar` as a strong reference or owner of a `GtkHeaderBar` instance.
///
/// GtkHeaderBar is similar to a horizontal `GtkBox`. It allows children to
/// be placed at the start or the end. In addition, it allows a title and
/// subtitle to be displayed. The title will be centered with respect to
/// the width of the box, even if the children at either side take up
/// different amounts of space. The height of the titlebar will be
/// set to provide sufficient space for the subtitle, even if none is
/// currently set. If a subtitle is not needed, the space reservation
/// can be turned off with `gtk_header_bar_set_has_subtitle()`.
/// 
/// GtkHeaderBar can add typical window frame controls, such as minimize,
/// maximize and close buttons, or the window icon.
/// 
/// For these reasons, GtkHeaderBar is the natural choice for use as the custom
/// titlebar widget of a `GtkWindow` (see `gtk_window_set_titlebar()`), as it gives
/// features typical of titlebars while allowing the addition of child widgets.
open class HeaderBar: Container, HeaderBarProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HeaderBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkHeaderBar>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HeaderBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkHeaderBar>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HeaderBar` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HeaderBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HeaderBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkHeaderBar>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HeaderBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkHeaderBar>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkHeaderBar`.
    /// i.e., ownership is transferred to the `HeaderBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkHeaderBar>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `HeaderBarProtocol`
    /// Will retain `GtkHeaderBar`.
    /// - Parameter other: an instance of a related type that implements `HeaderBarProtocol`
    @inlinable public init<T: HeaderBarProtocol>(headerBar other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkHeaderBar` widget.
    @inlinable public init() {
        let rv = gtk_header_bar_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum HeaderBarPropertyName: String, PropertyNameProtocol {
    case appPaintable = "app-paintable"
    case borderWidth = "border-width"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case child = "child"
    case compositeChild = "composite-child"
    case customTitle = "custom-title"
    /// The decoration layout for buttons. If this property is
    /// not set, the `GtkSettings:gtk`-decoration-layout setting
    /// is used.
    /// 
    /// See `gtk_header_bar_set_decoration_layout()` for information
    /// about the format of this string.
    case decorationLayout = "decoration-layout"
    /// Set to `true` if `GtkHeaderBar:decoration`-layout is set.
    case decorationLayoutSet = "decoration-layout-set"
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
    /// If `true`, reserve space for a subtitle, even if none
    /// is currently set.
    case hasSubtitle = "has-subtitle"
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
    case resizeMode = "resize-mode"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// Whether to show window decorations.
    /// 
    /// Which buttons are actually shown and where is determined
    /// by the `GtkHeaderBar:decoration`-layout property, and by
    /// the state of the window (e.g. a close button will not be
    /// shown if the window can't be closed).
    case showCloseButton = "show-close-button"
    case spacing = "spacing"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    case subtitle = "subtitle"
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

public extension HeaderBarProtocol {
    /// Bind a `HeaderBarPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: HeaderBarPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a HeaderBar property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: HeaderBarPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a HeaderBar property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: HeaderBarPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: HeaderBar has no signals// MARK: HeaderBar Class: HeaderBarProtocol extension (methods and fields)
public extension HeaderBarProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkHeaderBar` instance.
    @inlinable var header_bar_ptr: UnsafeMutablePointer<GtkHeaderBar>! { return ptr?.assumingMemoryBound(to: GtkHeaderBar.self) }

    /// Retrieves the custom title widget of the header. See
    /// `gtk_header_bar_set_custom_title()`.
    @inlinable func getCustomTitle() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_header_bar_get_custom_title(header_bar_ptr))) else { return nil }
        return rv
    }

    /// Gets the decoration layout set with
    /// `gtk_header_bar_set_decoration_layout()`.
    @inlinable func getDecorationLayout() -> String! {
        let rv = gtk_header_bar_get_decoration_layout(header_bar_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Retrieves whether the header bar reserves space for
    /// a subtitle, regardless if one is currently set or not.
    @inlinable func getHasSubtitle() -> Bool {
        let rv = ((gtk_header_bar_get_has_subtitle(header_bar_ptr)) != 0)
        return rv
    }

    /// Returns whether this header bar shows the standard window
    /// decorations.
    @inlinable func getShowCloseButton() -> Bool {
        let rv = ((gtk_header_bar_get_show_close_button(header_bar_ptr)) != 0)
        return rv
    }

    /// Retrieves the subtitle of the header. See `gtk_header_bar_set_subtitle()`.
    @inlinable func getSubtitle() -> String! {
        let rv = gtk_header_bar_get_subtitle(header_bar_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Retrieves the title of the header. See `gtk_header_bar_set_title()`.
    @inlinable func getTitle() -> String! {
        let rv = gtk_header_bar_get_title(header_bar_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Adds `child` to `bar`, packed with reference to the
    /// end of the `bar`.
    @inlinable func packEnd<WidgetT: WidgetProtocol>(child: WidgetT) {
        gtk_header_bar_pack_end(header_bar_ptr, child.widget_ptr)
    
    }

    /// Adds `child` to `bar`, packed with reference to the
    /// start of the `bar`.
    @inlinable func packStart<WidgetT: WidgetProtocol>(child: WidgetT) {
        gtk_header_bar_pack_start(header_bar_ptr, child.widget_ptr)
    
    }

    /// Sets a custom title for the `GtkHeaderBar`.
    /// 
    /// The title should help a user identify the current view. This
    /// supersedes any title set by `gtk_header_bar_set_title()` or
    /// `gtk_header_bar_set_subtitle()`. To achieve the same style as
    /// the builtin title and subtitle, use the “title” and “subtitle”
    /// style classes.
    /// 
    /// You should set the custom title to `nil`, for the header title
    /// label to be visible again.
    @inlinable func setCustomTitle(titleWidget: WidgetRef? = nil) {
        gtk_header_bar_set_custom_title(header_bar_ptr, titleWidget?.widget_ptr)
    
    }
    /// Sets a custom title for the `GtkHeaderBar`.
    /// 
    /// The title should help a user identify the current view. This
    /// supersedes any title set by `gtk_header_bar_set_title()` or
    /// `gtk_header_bar_set_subtitle()`. To achieve the same style as
    /// the builtin title and subtitle, use the “title” and “subtitle”
    /// style classes.
    /// 
    /// You should set the custom title to `nil`, for the header title
    /// label to be visible again.
    @inlinable func setCustomTitle<WidgetT: WidgetProtocol>(titleWidget: WidgetT?) {
        gtk_header_bar_set_custom_title(header_bar_ptr, titleWidget?.widget_ptr)
    
    }

    /// Sets the decoration layout for this header bar, overriding
    /// the `GtkSettings:gtk`-decoration-layout setting.
    /// 
    /// There can be valid reasons for overriding the setting, such
    /// as a header bar design that does not allow for buttons to take
    /// room on the right, or only offers room for a single close button.
    /// Split header bars are another example for overriding the
    /// setting.
    /// 
    /// The format of the string is button names, separated by commas.
    /// A colon separates the buttons that should appear on the left
    /// from those on the right. Recognized button names are minimize,
    /// maximize, close, icon (the window icon) and menu (a menu button
    /// for the fallback app menu).
    /// 
    /// For example, “menu:minimize,maximize,close” specifies a menu
    /// on the left, and minimize, maximize and close buttons on the right.
    @inlinable func setDecoration(layout: UnsafePointer<gchar>? = nil) {
        gtk_header_bar_set_decoration_layout(header_bar_ptr, layout)
    
    }

    /// Sets whether the header bar should reserve space
    /// for a subtitle, even if none is currently set.
    @inlinable func setHasSubtitle(setting: Bool) {
        gtk_header_bar_set_has_subtitle(header_bar_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Sets whether this header bar shows the standard window decorations,
    /// including close, maximize, and minimize.
    @inlinable func setShowCloseButton(setting: Bool) {
        gtk_header_bar_set_show_close_button(header_bar_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Sets the subtitle of the `GtkHeaderBar`. The title should give a user
    /// an additional detail to help him identify the current view.
    /// 
    /// Note that GtkHeaderBar by default reserves room for the subtitle,
    /// even if none is currently set. If this is not desired, set the
    /// `GtkHeaderBar:has`-subtitle property to `false`.
    @inlinable func set(subtitle: UnsafePointer<gchar>? = nil) {
        gtk_header_bar_set_subtitle(header_bar_ptr, subtitle)
    
    }

    /// Sets the title of the `GtkHeaderBar`. The title should help a user
    /// identify the current view. A good title should not include the
    /// application name.
    @inlinable func set(title: UnsafePointer<gchar>? = nil) {
        gtk_header_bar_set_title(header_bar_ptr, title)
    
    }
    /// Retrieves the custom title widget of the header. See
    /// `gtk_header_bar_set_custom_title()`.
    @inlinable var customTitle: WidgetRef! {
        /// Retrieves the custom title widget of the header. See
        /// `gtk_header_bar_set_custom_title()`.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_header_bar_get_custom_title(header_bar_ptr))) else { return nil }
            return rv
        }
        /// Sets a custom title for the `GtkHeaderBar`.
        /// 
        /// The title should help a user identify the current view. This
        /// supersedes any title set by `gtk_header_bar_set_title()` or
        /// `gtk_header_bar_set_subtitle()`. To achieve the same style as
        /// the builtin title and subtitle, use the “title” and “subtitle”
        /// style classes.
        /// 
        /// You should set the custom title to `nil`, for the header title
        /// label to be visible again.
        nonmutating set {
            gtk_header_bar_set_custom_title(header_bar_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }

    /// Gets the decoration layout set with
    /// `gtk_header_bar_set_decoration_layout()`.
    @inlinable var decorationLayout: String! {
        /// Gets the decoration layout set with
        /// `gtk_header_bar_set_decoration_layout()`.
        get {
            let rv = gtk_header_bar_get_decoration_layout(header_bar_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the decoration layout for this header bar, overriding
        /// the `GtkSettings:gtk`-decoration-layout setting.
        /// 
        /// There can be valid reasons for overriding the setting, such
        /// as a header bar design that does not allow for buttons to take
        /// room on the right, or only offers room for a single close button.
        /// Split header bars are another example for overriding the
        /// setting.
        /// 
        /// The format of the string is button names, separated by commas.
        /// A colon separates the buttons that should appear on the left
        /// from those on the right. Recognized button names are minimize,
        /// maximize, close, icon (the window icon) and menu (a menu button
        /// for the fallback app menu).
        /// 
        /// For example, “menu:minimize,maximize,close” specifies a menu
        /// on the left, and minimize, maximize and close buttons on the right.
        nonmutating set {
            gtk_header_bar_set_decoration_layout(header_bar_ptr, newValue)
        }
    }

    /// Retrieves whether the header bar reserves space for
    /// a subtitle, regardless if one is currently set or not.
    @inlinable var hasSubtitle: Bool {
        /// Retrieves whether the header bar reserves space for
        /// a subtitle, regardless if one is currently set or not.
        get {
            let rv = ((gtk_header_bar_get_has_subtitle(header_bar_ptr)) != 0)
            return rv
        }
        /// Sets whether the header bar should reserve space
        /// for a subtitle, even if none is currently set.
        nonmutating set {
            gtk_header_bar_set_has_subtitle(header_bar_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns whether this header bar shows the standard window
    /// decorations.
    @inlinable var showCloseButton: Bool {
        /// Returns whether this header bar shows the standard window
        /// decorations.
        get {
            let rv = ((gtk_header_bar_get_show_close_button(header_bar_ptr)) != 0)
            return rv
        }
        /// Sets whether this header bar shows the standard window decorations,
        /// including close, maximize, and minimize.
        nonmutating set {
            gtk_header_bar_set_show_close_button(header_bar_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    @inlinable var subtitle: String! {
        /// Retrieves the subtitle of the header. See `gtk_header_bar_set_subtitle()`.
        get {
            let rv = gtk_header_bar_get_subtitle(header_bar_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the subtitle of the `GtkHeaderBar`. The title should give a user
        /// an additional detail to help him identify the current view.
        /// 
        /// Note that GtkHeaderBar by default reserves room for the subtitle,
        /// even if none is currently set. If this is not desired, set the
        /// `GtkHeaderBar:has`-subtitle property to `false`.
        nonmutating set {
            gtk_header_bar_set_subtitle(header_bar_ptr, newValue)
        }
    }

    @inlinable var title: String! {
        /// Retrieves the title of the header. See `gtk_header_bar_set_title()`.
        get {
            let rv = gtk_header_bar_get_title(header_bar_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the title of the `GtkHeaderBar`. The title should help a user
        /// identify the current view. A good title should not include the
        /// application name.
        nonmutating set {
            gtk_header_bar_set_title(header_bar_ptr, newValue)
        }
    }

    @inlinable var container: GtkContainer {
        get {
            let rv = header_bar_ptr.pointee.container
            return rv
        }
    }

}



// MARK: - HeaderBarAccessible Class

/// The `HeaderBarAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkHeaderBarAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `HeaderBarAccessible`.
/// Alternatively, use `HeaderBarAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol HeaderBarAccessibleProtocol: ContainerAccessibleProtocol {
        /// Untyped pointer to the underlying `GtkHeaderBarAccessible` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkHeaderBarAccessible` instance.
    var header_bar_accessible_ptr: UnsafeMutablePointer<GtkHeaderBarAccessible>! { get }

}

/// The `HeaderBarAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkHeaderBarAccessible` instance.
/// It exposes methods that can operate on this data type through `HeaderBarAccessibleProtocol` conformance.
/// Use `HeaderBarAccessibleRef` only as an `unowned` reference to an existing `GtkHeaderBarAccessible` instance.
///

public struct HeaderBarAccessibleRef: HeaderBarAccessibleProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkHeaderBarAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `header_bar_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension HeaderBarAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkHeaderBarAccessible>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkHeaderBarAccessible>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkHeaderBarAccessible>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkHeaderBarAccessible>?) {
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

    /// Reference intialiser for a related type that implements `HeaderBarAccessibleProtocol`
    @inlinable init<T: HeaderBarAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: HeaderBarAccessibleProtocol>(_ other: T) -> HeaderBarAccessibleRef { HeaderBarAccessibleRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarAccessibleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarAccessibleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarAccessibleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarAccessibleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarAccessibleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `HeaderBarAccessible` type acts as a reference-counted owner of an underlying `GtkHeaderBarAccessible` instance.
/// It provides the methods that can operate on this data type through `HeaderBarAccessibleProtocol` conformance.
/// Use `HeaderBarAccessible` as a strong reference or owner of a `GtkHeaderBarAccessible` instance.
///

open class HeaderBarAccessible: ContainerAccessible, HeaderBarAccessibleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HeaderBarAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkHeaderBarAccessible>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HeaderBarAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkHeaderBarAccessible>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HeaderBarAccessible` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HeaderBarAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HeaderBarAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkHeaderBarAccessible>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HeaderBarAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkHeaderBarAccessible>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkHeaderBarAccessible`.
    /// i.e., ownership is transferred to the `HeaderBarAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkHeaderBarAccessible>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `HeaderBarAccessibleProtocol`
    /// Will retain `GtkHeaderBarAccessible`.
    /// - Parameter other: an instance of a related type that implements `HeaderBarAccessibleProtocol`
    @inlinable public init<T: HeaderBarAccessibleProtocol>(headerBarAccessible other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarAccessibleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarAccessibleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarAccessibleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarAccessibleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum HeaderBarAccessiblePropertyName: String, PropertyNameProtocol {
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

public extension HeaderBarAccessibleProtocol {
    /// Bind a `HeaderBarAccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: HeaderBarAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a HeaderBarAccessible property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: HeaderBarAccessiblePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a HeaderBarAccessible property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: HeaderBarAccessiblePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: HeaderBarAccessible has no signals// MARK: HeaderBarAccessible Class: HeaderBarAccessibleProtocol extension (methods and fields)
public extension HeaderBarAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkHeaderBarAccessible` instance.
    @inlinable var header_bar_accessible_ptr: UnsafeMutablePointer<GtkHeaderBarAccessible>! { return ptr?.assumingMemoryBound(to: GtkHeaderBarAccessible.self) }


    @inlinable var parent: GtkContainerAccessible {
        get {
            let rv = header_bar_accessible_ptr.pointee.parent
            return rv
        }
    }

}



// MARK: - IMContext Class

/// The `IMContextProtocol` protocol exposes the methods and properties of an underlying `GtkIMContext` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IMContext`.
/// Alternatively, use `IMContextRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkIMContext` defines the interface for GTK+ input methods. An input method
/// is used by GTK+ text input widgets like `GtkEntry` to map from key events to
/// Unicode character strings.
/// 
/// The default input method can be set programmatically via the
/// `GtkSettings:gtk`-im-module GtkSettings property. Alternatively, you may set
/// the GTK_IM_MODULE environment variable as documented in
/// [Running GTK+ Applications](#gtk-running).
/// 
/// The `GtkEntry` `GtkEntry:im`-module and `GtkTextView` `GtkTextView:im`-module
/// properties may also be used to set input methods for specific widget
/// instances. For instance, a certain entry widget might be expected to contain
/// certain characters which would be easier to input with a certain input
/// method.
/// 
/// An input method may consume multiple key events in sequence and finally
/// output the composed result. This is called preediting, and an input method
/// may provide feedback about this process by displaying the intermediate
/// composition states as preedit text. For instance, the default GTK+ input
/// method implements the input of arbitrary Unicode code points by holding down
/// the Control and Shift keys and then typing “U” followed by the hexadecimal
/// digits of the code point.  When releasing the Control and Shift keys,
/// preediting ends and the character is inserted as text. Ctrl+Shift+u20AC for
/// example results in the € sign.
/// 
/// Additional input methods can be made available for use by GTK+ widgets as
/// loadable modules. An input method module is a small shared library which
/// implements a subclass of `GtkIMContext` or `GtkIMContextSimple` and exports
/// these four functions:
/// 
/// (C Language Example):
/// ```C
/// void im_module_init(GTypeModule *module);
/// ```
/// This function should register the `GType` of the `GtkIMContext` subclass which
/// implements the input method by means of `g_type_module_register_type()`. Note
/// that `g_type_register_static()` cannot be used as the type needs to be
/// registered dynamically.
/// 
/// (C Language Example):
/// ```C
/// void im_module_exit(void);
/// ```
/// Here goes any cleanup code your input method might require on module unload.
/// 
/// (C Language Example):
/// ```C
/// void im_module_list(const GtkIMContextInfo ***contexts, int *n_contexts)
/// {
///   *contexts = info_list;
///   *n_contexts = G_N_ELEMENTS (info_list);
/// }
/// ```
/// This function returns the list of input methods provided by the module. The
/// example implementation above shows a common solution and simply returns a
/// pointer to statically defined array of `GtkIMContextInfo` items for each
/// provided input method.
/// 
/// (C Language Example):
/// ```C
/// GtkIMContext * im_module_create(const gchar *context_id);
/// ```
/// This function should return a pointer to a newly created instance of the
/// `GtkIMContext` subclass identified by `context_id`. The context ID is the same
/// as specified in the `GtkIMContextInfo` array returned by `im_module_list()`.
/// 
/// After a new loadable input method module has been installed on the system,
/// the configuration file `gtk.immodules` needs to be
/// regenerated by [gtk-query-immodules-3.0](#gtk-query-immodules-3.0),
/// in order for the new input method to become available to GTK+ applications.
public protocol IMContextProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GtkIMContext` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkIMContext` instance.
    var im_context_ptr: UnsafeMutablePointer<GtkIMContext>! { get }

}

/// The `IMContextRef` type acts as a lightweight Swift reference to an underlying `GtkIMContext` instance.
/// It exposes methods that can operate on this data type through `IMContextProtocol` conformance.
/// Use `IMContextRef` only as an `unowned` reference to an existing `GtkIMContext` instance.
///
/// `GtkIMContext` defines the interface for GTK+ input methods. An input method
/// is used by GTK+ text input widgets like `GtkEntry` to map from key events to
/// Unicode character strings.
/// 
/// The default input method can be set programmatically via the
/// `GtkSettings:gtk`-im-module GtkSettings property. Alternatively, you may set
/// the GTK_IM_MODULE environment variable as documented in
/// [Running GTK+ Applications](#gtk-running).
/// 
/// The `GtkEntry` `GtkEntry:im`-module and `GtkTextView` `GtkTextView:im`-module
/// properties may also be used to set input methods for specific widget
/// instances. For instance, a certain entry widget might be expected to contain
/// certain characters which would be easier to input with a certain input
/// method.
/// 
/// An input method may consume multiple key events in sequence and finally
/// output the composed result. This is called preediting, and an input method
/// may provide feedback about this process by displaying the intermediate
/// composition states as preedit text. For instance, the default GTK+ input
/// method implements the input of arbitrary Unicode code points by holding down
/// the Control and Shift keys and then typing “U” followed by the hexadecimal
/// digits of the code point.  When releasing the Control and Shift keys,
/// preediting ends and the character is inserted as text. Ctrl+Shift+u20AC for
/// example results in the € sign.
/// 
/// Additional input methods can be made available for use by GTK+ widgets as
/// loadable modules. An input method module is a small shared library which
/// implements a subclass of `GtkIMContext` or `GtkIMContextSimple` and exports
/// these four functions:
/// 
/// (C Language Example):
/// ```C
/// void im_module_init(GTypeModule *module);
/// ```
/// This function should register the `GType` of the `GtkIMContext` subclass which
/// implements the input method by means of `g_type_module_register_type()`. Note
/// that `g_type_register_static()` cannot be used as the type needs to be
/// registered dynamically.
/// 
/// (C Language Example):
/// ```C
/// void im_module_exit(void);
/// ```
/// Here goes any cleanup code your input method might require on module unload.
/// 
/// (C Language Example):
/// ```C
/// void im_module_list(const GtkIMContextInfo ***contexts, int *n_contexts)
/// {
///   *contexts = info_list;
///   *n_contexts = G_N_ELEMENTS (info_list);
/// }
/// ```
/// This function returns the list of input methods provided by the module. The
/// example implementation above shows a common solution and simply returns a
/// pointer to statically defined array of `GtkIMContextInfo` items for each
/// provided input method.
/// 
/// (C Language Example):
/// ```C
/// GtkIMContext * im_module_create(const gchar *context_id);
/// ```
/// This function should return a pointer to a newly created instance of the
/// `GtkIMContext` subclass identified by `context_id`. The context ID is the same
/// as specified in the `GtkIMContextInfo` array returned by `im_module_list()`.
/// 
/// After a new loadable input method module has been installed on the system,
/// the configuration file `gtk.immodules` needs to be
/// regenerated by [gtk-query-immodules-3.0](#gtk-query-immodules-3.0),
/// in order for the new input method to become available to GTK+ applications.
public struct IMContextRef: IMContextProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkIMContext` instance.
    /// For type-safe access, use the generated, typed pointer `im_context_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension IMContextRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkIMContext>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkIMContext>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkIMContext>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkIMContext>?) {
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

    /// Reference intialiser for a related type that implements `IMContextProtocol`
    @inlinable init<T: IMContextProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: IMContextProtocol>(_ other: T) -> IMContextRef { IMContextRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `IMContext` type acts as a reference-counted owner of an underlying `GtkIMContext` instance.
/// It provides the methods that can operate on this data type through `IMContextProtocol` conformance.
/// Use `IMContext` as a strong reference or owner of a `GtkIMContext` instance.
///
/// `GtkIMContext` defines the interface for GTK+ input methods. An input method
/// is used by GTK+ text input widgets like `GtkEntry` to map from key events to
/// Unicode character strings.
/// 
/// The default input method can be set programmatically via the
/// `GtkSettings:gtk`-im-module GtkSettings property. Alternatively, you may set
/// the GTK_IM_MODULE environment variable as documented in
/// [Running GTK+ Applications](#gtk-running).
/// 
/// The `GtkEntry` `GtkEntry:im`-module and `GtkTextView` `GtkTextView:im`-module
/// properties may also be used to set input methods for specific widget
/// instances. For instance, a certain entry widget might be expected to contain
/// certain characters which would be easier to input with a certain input
/// method.
/// 
/// An input method may consume multiple key events in sequence and finally
/// output the composed result. This is called preediting, and an input method
/// may provide feedback about this process by displaying the intermediate
/// composition states as preedit text. For instance, the default GTK+ input
/// method implements the input of arbitrary Unicode code points by holding down
/// the Control and Shift keys and then typing “U” followed by the hexadecimal
/// digits of the code point.  When releasing the Control and Shift keys,
/// preediting ends and the character is inserted as text. Ctrl+Shift+u20AC for
/// example results in the € sign.
/// 
/// Additional input methods can be made available for use by GTK+ widgets as
/// loadable modules. An input method module is a small shared library which
/// implements a subclass of `GtkIMContext` or `GtkIMContextSimple` and exports
/// these four functions:
/// 
/// (C Language Example):
/// ```C
/// void im_module_init(GTypeModule *module);
/// ```
/// This function should register the `GType` of the `GtkIMContext` subclass which
/// implements the input method by means of `g_type_module_register_type()`. Note
/// that `g_type_register_static()` cannot be used as the type needs to be
/// registered dynamically.
/// 
/// (C Language Example):
/// ```C
/// void im_module_exit(void);
/// ```
/// Here goes any cleanup code your input method might require on module unload.
/// 
/// (C Language Example):
/// ```C
/// void im_module_list(const GtkIMContextInfo ***contexts, int *n_contexts)
/// {
///   *contexts = info_list;
///   *n_contexts = G_N_ELEMENTS (info_list);
/// }
/// ```
/// This function returns the list of input methods provided by the module. The
/// example implementation above shows a common solution and simply returns a
/// pointer to statically defined array of `GtkIMContextInfo` items for each
/// provided input method.
/// 
/// (C Language Example):
/// ```C
/// GtkIMContext * im_module_create(const gchar *context_id);
/// ```
/// This function should return a pointer to a newly created instance of the
/// `GtkIMContext` subclass identified by `context_id`. The context ID is the same
/// as specified in the `GtkIMContextInfo` array returned by `im_module_list()`.
/// 
/// After a new loadable input method module has been installed on the system,
/// the configuration file `gtk.immodules` needs to be
/// regenerated by [gtk-query-immodules-3.0](#gtk-query-immodules-3.0),
/// in order for the new input method to become available to GTK+ applications.
open class IMContext: GLibObject.Object, IMContextProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkIMContext>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkIMContext>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMContext` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkIMContext>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IMContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkIMContext>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkIMContext`.
    /// i.e., ownership is transferred to the `IMContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkIMContext>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `IMContextProtocol`
    /// Will retain `GtkIMContext`.
    /// - Parameter other: an instance of a related type that implements `IMContextProtocol`
    @inlinable public init<T: IMContextProtocol>(iMContext other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IMContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum IMContextPropertyName: String, PropertyNameProtocol {
    case inputHints = "input-hints"
    case inputPurpose = "input-purpose"
}

public extension IMContextProtocol {
    /// Bind a `IMContextPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: IMContextPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a IMContext property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: IMContextPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a IMContext property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: IMContextPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of IMContext
public extension IMContextProtocol {
    /// The `commit` signal is emitted when a complete input sequence
    /// has been entered by the user. This can be a single character
    /// immediately after a key press or the final result of preediting.
    /// - Note: Representation of signal named `commit`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter str: the completed `character(s)` entered by the user
    @discardableResult
    func onCommit(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IMContextRef, _ str: String) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IMContextRef, String, Void>
        let cCallback: @convention(c) (gpointer, UnsafeMutablePointer<gchar>?, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IMContextRef(raw: unownedSelf), arg1.map({ String(cString: $0) })!)
            return output
        }
        return signalConnectData(
            detailedSignal: "commit", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `delete`-surrounding signal is emitted when the input method
    /// needs to delete all or part of the context surrounding the cursor.
    /// - Note: Representation of signal named `delete-surrounding`
    /// - Parameter flags: Flags
    /// - Parameter handler: `true` if the signal was handled.
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter offset: the character offset from the cursor position of the text           to be deleted. A negative value indicates a position before           the cursor.
    /// - Parameter nChars: the number of characters to be deleted
    @discardableResult
    func onDeleteSurrounding(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IMContextRef, _ offset: Int, _ nChars: Int) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<IMContextRef, Int, Int, Bool>
        let cCallback: @convention(c) (gpointer, gint, gint, gpointer) -> gboolean = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(IMContextRef(raw: unownedSelf), Int(arg1), Int(arg2))
            return gboolean((output) ? 1 : 0)
        }
        return signalConnectData(
            detailedSignal: "delete-surrounding", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `preedit`-changed signal is emitted whenever the preedit sequence
    /// currently being entered has changed.  It is also emitted at the end of
    /// a preedit sequence, in which case
    /// `gtk_im_context_get_preedit_string()` returns the empty string.
    /// - Note: Representation of signal named `preedit-changed`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onPreeditChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IMContextRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<IMContextRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IMContextRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "preedit-changed", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `preedit`-end signal is emitted when a preediting sequence
    /// has been completed or canceled.
    /// - Note: Representation of signal named `preedit-end`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onPreeditEnd(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IMContextRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<IMContextRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IMContextRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "preedit-end", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `preedit`-start signal is emitted when a new preediting sequence
    /// starts.
    /// - Note: Representation of signal named `preedit-start`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onPreeditStart(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IMContextRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<IMContextRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IMContextRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "preedit-start", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `retrieve`-surrounding signal is emitted when the input method
    /// requires the context surrounding the cursor.  The callback should set
    /// the input method surrounding context by calling the
    /// `gtk_im_context_set_surrounding()` method.
    /// - Note: Representation of signal named `retrieve-surrounding`
    /// - Parameter flags: Flags
    /// - Parameter handler: `true` if the signal was handled.
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onRetrieveSurrounding(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IMContextRef) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<IMContextRef, Bool>
        let cCallback: @convention(c) (gpointer, gpointer) -> gboolean = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(IMContextRef(raw: unownedSelf))
            return gboolean((output) ? 1 : 0)
        }
        return signalConnectData(
            detailedSignal: "retrieve-surrounding", 
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
    /// - Note: Representation of signal named `notify::input-hints`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyInputHints(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IMContextRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IMContextRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IMContextRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::input-hints", 
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
    /// - Note: Representation of signal named `notify::input-purpose`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyInputPurpose(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: IMContextRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<IMContextRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(IMContextRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::input-purpose", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: IMContext Class: IMContextProtocol extension (methods and fields)
public extension IMContextProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkIMContext` instance.
    @inlinable var im_context_ptr: UnsafeMutablePointer<GtkIMContext>! { return ptr?.assumingMemoryBound(to: GtkIMContext.self) }

    /// Asks the widget that the input context is attached to to delete
    /// characters around the cursor position by emitting the
    /// GtkIMContext`delete_surrounding` signal. Note that `offset` and `n_chars`
    /// are in characters not in bytes which differs from the usage other
    /// places in `GtkIMContext`.
    /// 
    /// In order to use this function, you should first call
    /// `gtk_im_context_get_surrounding()` to get the current context, and
    /// call this function immediately afterwards to make sure that you
    /// know what you are deleting. You should also account for the fact
    /// that even if the signal was handled, the input context might not
    /// have deleted all the characters that were requested to be deleted.
    /// 
    /// This function is used by an input method that wants to make
    /// subsitutions in the existing text in response to new input. It is
    /// not useful for applications.
    @inlinable func deleteSurrounding(offset: Int, nChars: Int) -> Bool {
        let rv = ((gtk_im_context_delete_surrounding(im_context_ptr, gint(offset), gint(nChars))) != 0)
        return rv
    }

    /// Allow an input method to internally handle key press and release
    /// events. If this function returns `true`, then no further processing
    /// should be done for this key event.
    @inlinable func filterKeypress<EventKeyT: Gdk.EventKeyProtocol>(event: EventKeyT) -> Bool {
        let rv = ((gtk_im_context_filter_keypress(im_context_ptr, event._ptr)) != 0)
        return rv
    }

    /// Notify the input method that the widget to which this
    /// input context corresponds has gained focus. The input method
    /// may, for example, change the displayed feedback to reflect
    /// this change.
    @inlinable func focusIn() {
        gtk_im_context_focus_in(im_context_ptr)
    
    }

    /// Notify the input method that the widget to which this
    /// input context corresponds has lost focus. The input method
    /// may, for example, change the displayed feedback or reset the contexts
    /// state to reflect this change.
    @inlinable func focusOut() {
        gtk_im_context_focus_out(im_context_ptr)
    
    }

    /// Retrieve the current preedit string for the input context,
    /// and a list of attributes to apply to the string.
    /// This string should be displayed inserted at the insertion
    /// point.
    @inlinable func getPreedit(string str: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>!, attrs: UnsafeMutablePointer<UnsafeMutablePointer<PangoAttrList>?>!, cursorPos: UnsafeMutablePointer<gint>!) {
        gtk_im_context_get_preedit_string(im_context_ptr, str, attrs, cursorPos)
    
    }

    /// Retrieves context around the insertion point. Input methods
    /// typically want context in order to constrain input text based on
    /// existing text; this is important for languages such as Thai where
    /// only some sequences of characters are allowed.
    /// 
    /// This function is implemented by emitting the
    /// GtkIMContext`retrieve_surrounding` signal on the input method; in
    /// response to this signal, a widget should provide as much context as
    /// is available, up to an entire paragraph, by calling
    /// `gtk_im_context_set_surrounding()`. Note that there is no obligation
    /// for a widget to respond to the `retrieve_surrounding` signal, so input
    /// methods must be prepared to function without context.
    @inlinable func getSurrounding(text: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>!, cursorIndex: UnsafeMutablePointer<gint>!) -> Bool {
        let rv = ((gtk_im_context_get_surrounding(im_context_ptr, text, cursorIndex)) != 0)
        return rv
    }

    /// Notify the input method that a change such as a change in cursor
    /// position has been made. This will typically cause the input
    /// method to clear the preedit state.
    @inlinable func reset() {
        gtk_im_context_reset(im_context_ptr)
    
    }

    /// Set the client window for the input context; this is the
    /// `GdkWindow` in which the input appears. This window is
    /// used in order to correctly position status windows, and may
    /// also be used for purposes internal to the input method.
    @inlinable func setClient(window: Gdk.WindowRef? = nil) {
        gtk_im_context_set_client_window(im_context_ptr, window?.window_ptr)
    
    }
    /// Set the client window for the input context; this is the
    /// `GdkWindow` in which the input appears. This window is
    /// used in order to correctly position status windows, and may
    /// also be used for purposes internal to the input method.
    @inlinable func setClient<WindowT: Gdk.WindowProtocol>(window: WindowT?) {
        gtk_im_context_set_client_window(im_context_ptr, window?.window_ptr)
    
    }

    /// Notify the input method that a change in cursor
    /// position has been made. The location is relative to the client
    /// window.
    @inlinable func setCursorLocation<RectangleT: Gdk.RectangleProtocol>(area: RectangleT) {
        gtk_im_context_set_cursor_location(im_context_ptr, area.rectangle_ptr)
    
    }

    /// Sets surrounding context around the insertion point and preedit
    /// string. This function is expected to be called in response to the
    /// GtkIMContext`retrieve_surrounding` signal, and will likely have no
    /// effect if called at other times.
    @inlinable func setSurrounding(text: UnsafePointer<gchar>!, len: Int, cursorIndex: Int) {
        gtk_im_context_set_surrounding(im_context_ptr, text, gint(len), gint(cursorIndex))
    
    }

    /// Sets whether the IM context should use the preedit string
    /// to display feedback. If `use_preedit` is FALSE (default
    /// is TRUE), then the IM context may use some other method to display
    /// feedback, such as displaying it in a child of the root window.
    @inlinable func set(usePreedit: Bool) {
        gtk_im_context_set_use_preedit(im_context_ptr, gboolean((usePreedit) ? 1 : 0))
    
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = im_context_ptr.pointee.parent_instance
            return rv
        }
    }

}



