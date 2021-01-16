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

// MARK: - Overlay Class

/// The `OverlayProtocol` protocol exposes the methods and properties of an underlying `GtkOverlay` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Overlay`.
/// Alternatively, use `OverlayRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkOverlay is a container which contains a single main child, on top
/// of which it can place “overlay” widgets. The position of each overlay
/// widget is determined by its `GtkWidget:halign` and `GtkWidget:valign`
/// properties. E.g. a widget with both alignments set to `GTK_ALIGN_START`
/// will be placed at the top left corner of the GtkOverlay container,
/// whereas an overlay with halign set to `GTK_ALIGN_CENTER` and valign set
/// to `GTK_ALIGN_END` will be placed a the bottom edge of the GtkOverlay,
/// horizontally centered. The position can be adjusted by setting the margin
/// properties of the child to non-zero values.
/// 
/// More complicated placement of overlays is possible by connecting
/// to the `GtkOverlay::get`-child-position signal.
/// 
/// An overlay’s minimum and natural sizes are those of its main child. The sizes
/// of overlay children are not considered when measuring these preferred sizes.
/// 
/// # GtkOverlay as GtkBuildable
/// 
/// The GtkOverlay implementation of the GtkBuildable interface
/// supports placing a child as an overlay by specifying “overlay” as
/// the “type” attribute of a `<child>` element.
/// 
/// # CSS nodes
/// 
/// GtkOverlay has a single CSS node with the name “overlay”. Overlay children
/// whose alignments cause them to be positioned at an edge get the style classes
/// “.left”, “.right”, “.top”, and/or “.bottom” according to their position.
public protocol OverlayProtocol: BinProtocol {
        /// Untyped pointer to the underlying `GtkOverlay` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkOverlay` instance.
    var overlay_ptr: UnsafeMutablePointer<GtkOverlay>! { get }

}

/// The `OverlayRef` type acts as a lightweight Swift reference to an underlying `GtkOverlay` instance.
/// It exposes methods that can operate on this data type through `OverlayProtocol` conformance.
/// Use `OverlayRef` only as an `unowned` reference to an existing `GtkOverlay` instance.
///
/// GtkOverlay is a container which contains a single main child, on top
/// of which it can place “overlay” widgets. The position of each overlay
/// widget is determined by its `GtkWidget:halign` and `GtkWidget:valign`
/// properties. E.g. a widget with both alignments set to `GTK_ALIGN_START`
/// will be placed at the top left corner of the GtkOverlay container,
/// whereas an overlay with halign set to `GTK_ALIGN_CENTER` and valign set
/// to `GTK_ALIGN_END` will be placed a the bottom edge of the GtkOverlay,
/// horizontally centered. The position can be adjusted by setting the margin
/// properties of the child to non-zero values.
/// 
/// More complicated placement of overlays is possible by connecting
/// to the `GtkOverlay::get`-child-position signal.
/// 
/// An overlay’s minimum and natural sizes are those of its main child. The sizes
/// of overlay children are not considered when measuring these preferred sizes.
/// 
/// # GtkOverlay as GtkBuildable
/// 
/// The GtkOverlay implementation of the GtkBuildable interface
/// supports placing a child as an overlay by specifying “overlay” as
/// the “type” attribute of a `<child>` element.
/// 
/// # CSS nodes
/// 
/// GtkOverlay has a single CSS node with the name “overlay”. Overlay children
/// whose alignments cause them to be positioned at an edge get the style classes
/// “.left”, “.right”, “.top”, and/or “.bottom” according to their position.
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

/// The `Overlay` type acts as a reference-counted owner of an underlying `GtkOverlay` instance.
/// It provides the methods that can operate on this data type through `OverlayProtocol` conformance.
/// Use `Overlay` as a strong reference or owner of a `GtkOverlay` instance.
///
/// GtkOverlay is a container which contains a single main child, on top
/// of which it can place “overlay” widgets. The position of each overlay
/// widget is determined by its `GtkWidget:halign` and `GtkWidget:valign`
/// properties. E.g. a widget with both alignments set to `GTK_ALIGN_START`
/// will be placed at the top left corner of the GtkOverlay container,
/// whereas an overlay with halign set to `GTK_ALIGN_CENTER` and valign set
/// to `GTK_ALIGN_END` will be placed a the bottom edge of the GtkOverlay,
/// horizontally centered. The position can be adjusted by setting the margin
/// properties of the child to non-zero values.
/// 
/// More complicated placement of overlays is possible by connecting
/// to the `GtkOverlay::get`-child-position signal.
/// 
/// An overlay’s minimum and natural sizes are those of its main child. The sizes
/// of overlay children are not considered when measuring these preferred sizes.
/// 
/// # GtkOverlay as GtkBuildable
/// 
/// The GtkOverlay implementation of the GtkBuildable interface
/// supports placing a child as an overlay by specifying “overlay” as
/// the “type” attribute of a `<child>` element.
/// 
/// # CSS nodes
/// 
/// GtkOverlay has a single CSS node with the name “overlay”. Overlay children
/// whose alignments cause them to be positioned at an edge get the style classes
/// “.left”, “.right”, “.top”, and/or “.bottom” according to their position.
open class Overlay: Bin, OverlayProtocol {
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
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OverlayProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
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
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum OverlayPropertyName: String, PropertyNameProtocol {
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

// MARK: Signals of Overlay
public extension OverlayProtocol {
    /// The `get`-child-position signal is emitted to determine
    /// the position and size of any overlay child widgets. A
    /// handler for this signal should fill `allocation` with
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
    /// - Note: Representation of signal named `get-child-position`
    /// - Parameter flags: Flags
    /// - Parameter handler: `true` if the `allocation` has been filled
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter widget: the child widget to position
    /// - Parameter allocation: return   location for the allocation
    /// - Warning: Wrapper of this signal could not be generated because it contains unimplemented features: { (2)  argument out or inout direction is not allowed }
    /// - Note: Use this string for `signalConnectData` method
    static var onGetChildPosition: String { "get-child-position" }
    
}

// MARK: Overlay Class: OverlayProtocol extension (methods and fields)
public extension OverlayProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkOverlay` instance.
    @inlinable var overlay_ptr: UnsafeMutablePointer<GtkOverlay>! { return ptr?.assumingMemoryBound(to: GtkOverlay.self) }

    /// Adds `widget` to `overlay`.
    /// 
    /// The widget will be stacked on top of the main widget
    /// added with `gtk_container_add()`.
    /// 
    /// The position at which `widget` is placed is determined
    /// from its `GtkWidget:halign` and `GtkWidget:valign` properties.
    @inlinable func addOverlay<WidgetT: WidgetProtocol>(widget: WidgetT) {
        gtk_overlay_add_overlay(overlay_ptr, widget.widget_ptr)
    
    }

    /// Convenience function to get the value of the `GtkOverlay:pass`-through
    /// child property for `widget`.
    @inlinable func getOverlayPassThrough<WidgetT: WidgetProtocol>(widget: WidgetT) -> Bool {
        let rv = ((gtk_overlay_get_overlay_pass_through(overlay_ptr, widget.widget_ptr)) != 0)
        return rv
    }

    /// Moves `child` to a new `index` in the list of `overlay` children.
    /// The list contains overlays in the order that these were
    /// added to `overlay` by default. See also `GtkOverlay:index`.
    /// 
    /// A widget’s index in the `overlay` children list determines which order
    /// the children are drawn if they overlap. The first child is drawn at
    /// the bottom. It also affects the default focus chain order.
    @inlinable func reorderOverlay<WidgetT: WidgetProtocol>(child: WidgetT, index_: Int) {
        gtk_overlay_reorder_overlay(overlay_ptr, child.widget_ptr, gint(index_))
    
    }

    /// Convenience function to set the value of the `GtkOverlay:pass`-through
    /// child property for `widget`.
    @inlinable func setOverlayPassThrough<WidgetT: WidgetProtocol>(widget: WidgetT, passThrough: Bool) {
        gtk_overlay_set_overlay_pass_through(overlay_ptr, widget.widget_ptr, gboolean((passThrough) ? 1 : 0))
    
    }

    @inlinable var parent: GtkBin {
        get {
            let rv = overlay_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - PadController Class

/// The `PadControllerProtocol` protocol exposes the methods and properties of an underlying `GtkPadController` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PadController`.
/// Alternatively, use `PadControllerRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkPadController` is an event controller for the pads found in drawing
/// tablets (The collection of buttons and tactile sensors often found around
/// the stylus-sensitive area).
/// 
/// These buttons and sensors have no implicit meaning, and by default they
/// perform no action, this event controller is provided to map those to
/// `GAction` objects, thus letting the application give those a more semantic
/// meaning.
/// 
/// Buttons and sensors are not constrained to triggering a single action, some
/// `GDK_SOURCE_TABLET_PAD` devices feature multiple "modes", all these input
/// elements have one current mode, which may determine the final action
/// being triggered. Pad devices often divide buttons and sensors into groups,
/// all elements in a group share the same current mode, but different groups
/// may have different modes. See `gdk_device_pad_get_n_groups()` and
/// `gdk_device_pad_get_group_n_modes()`.
/// 
/// Each of the actions that a given button/strip/ring performs for a given
/// mode is defined by `GtkPadActionEntry`, it contains an action name that
/// will be looked up in the given `GActionGroup` and activated whenever the
/// specified input element and mode are triggered.
/// 
/// A simple example of `GtkPadController` usage, assigning button 1 in all
/// modes and pad devices to an "invert-selection" action:
/// ```
///   GtkPadActionEntry *pad_actions[] = {
///     { GTK_PAD_ACTION_BUTTON, 1, -1, "Invert selection", "pad-actions.invert-selection" },
///     …
///   };
/// 
///   …
///   action_group = g_simple_action_group_new ();
///   action = g_simple_action_new ("pad-actions.invert-selection", NULL);
///   g_signal_connect (action, "activate", on_invert_selection_activated, NULL);
///   g_action_map_add_action (G_ACTION_MAP (action_group), action);
///   …
///   pad_controller = gtk_pad_controller_new (window, action_group, NULL);
/// ```
/// 
/// The actions belonging to rings/strips will be activated with a parameter
/// of type `G_VARIANT_TYPE_DOUBLE` bearing the value of the given axis, it
/// is required that those are made stateful and accepting this `GVariantType`.
public protocol PadControllerProtocol: EventControllerProtocol {
        /// Untyped pointer to the underlying `GtkPadController` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkPadController` instance.
    var pad_controller_ptr: UnsafeMutablePointer<GtkPadController>! { get }

}

/// The `PadControllerRef` type acts as a lightweight Swift reference to an underlying `GtkPadController` instance.
/// It exposes methods that can operate on this data type through `PadControllerProtocol` conformance.
/// Use `PadControllerRef` only as an `unowned` reference to an existing `GtkPadController` instance.
///
/// `GtkPadController` is an event controller for the pads found in drawing
/// tablets (The collection of buttons and tactile sensors often found around
/// the stylus-sensitive area).
/// 
/// These buttons and sensors have no implicit meaning, and by default they
/// perform no action, this event controller is provided to map those to
/// `GAction` objects, thus letting the application give those a more semantic
/// meaning.
/// 
/// Buttons and sensors are not constrained to triggering a single action, some
/// `GDK_SOURCE_TABLET_PAD` devices feature multiple "modes", all these input
/// elements have one current mode, which may determine the final action
/// being triggered. Pad devices often divide buttons and sensors into groups,
/// all elements in a group share the same current mode, but different groups
/// may have different modes. See `gdk_device_pad_get_n_groups()` and
/// `gdk_device_pad_get_group_n_modes()`.
/// 
/// Each of the actions that a given button/strip/ring performs for a given
/// mode is defined by `GtkPadActionEntry`, it contains an action name that
/// will be looked up in the given `GActionGroup` and activated whenever the
/// specified input element and mode are triggered.
/// 
/// A simple example of `GtkPadController` usage, assigning button 1 in all
/// modes and pad devices to an "invert-selection" action:
/// ```
///   GtkPadActionEntry *pad_actions[] = {
///     { GTK_PAD_ACTION_BUTTON, 1, -1, "Invert selection", "pad-actions.invert-selection" },
///     …
///   };
/// 
///   …
///   action_group = g_simple_action_group_new ();
///   action = g_simple_action_new ("pad-actions.invert-selection", NULL);
///   g_signal_connect (action, "activate", on_invert_selection_activated, NULL);
///   g_action_map_add_action (G_ACTION_MAP (action_group), action);
///   …
///   pad_controller = gtk_pad_controller_new (window, action_group, NULL);
/// ```
/// 
/// The actions belonging to rings/strips will be activated with a parameter
/// of type `G_VARIANT_TYPE_DOUBLE` bearing the value of the given axis, it
/// is required that those are made stateful and accepting this `GVariantType`.
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
    /// actions. A `nil` pad may be provided so the controller manages all pad devices
    /// generically, it is discouraged to mix `GtkPadController` objects with `nil`
    /// and non-`nil` `pad` argument on the same `window`, as execution order is not
    /// guaranteed.
    /// 
    /// The `GtkPadController` is created with no mapped actions. In order to map pad
    /// events to actions, use `gtk_pad_controller_set_action_entries()` or
    /// `gtk_pad_controller_set_action()`.
    @inlinable init<ActionGroupT: GIO.ActionGroupProtocol, DeviceT: Gdk.DeviceProtocol, WindowT: WindowProtocol>( window: WindowT, group: ActionGroupT, pad: DeviceT?) {
        let rv = gtk_pad_controller_new(window.window_ptr, group.action_group_ptr, pad?.device_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `PadController` type acts as a reference-counted owner of an underlying `GtkPadController` instance.
/// It provides the methods that can operate on this data type through `PadControllerProtocol` conformance.
/// Use `PadController` as a strong reference or owner of a `GtkPadController` instance.
///
/// `GtkPadController` is an event controller for the pads found in drawing
/// tablets (The collection of buttons and tactile sensors often found around
/// the stylus-sensitive area).
/// 
/// These buttons and sensors have no implicit meaning, and by default they
/// perform no action, this event controller is provided to map those to
/// `GAction` objects, thus letting the application give those a more semantic
/// meaning.
/// 
/// Buttons and sensors are not constrained to triggering a single action, some
/// `GDK_SOURCE_TABLET_PAD` devices feature multiple "modes", all these input
/// elements have one current mode, which may determine the final action
/// being triggered. Pad devices often divide buttons and sensors into groups,
/// all elements in a group share the same current mode, but different groups
/// may have different modes. See `gdk_device_pad_get_n_groups()` and
/// `gdk_device_pad_get_group_n_modes()`.
/// 
/// Each of the actions that a given button/strip/ring performs for a given
/// mode is defined by `GtkPadActionEntry`, it contains an action name that
/// will be looked up in the given `GActionGroup` and activated whenever the
/// specified input element and mode are triggered.
/// 
/// A simple example of `GtkPadController` usage, assigning button 1 in all
/// modes and pad devices to an "invert-selection" action:
/// ```
///   GtkPadActionEntry *pad_actions[] = {
///     { GTK_PAD_ACTION_BUTTON, 1, -1, "Invert selection", "pad-actions.invert-selection" },
///     …
///   };
/// 
///   …
///   action_group = g_simple_action_group_new ();
///   action = g_simple_action_new ("pad-actions.invert-selection", NULL);
///   g_signal_connect (action, "activate", on_invert_selection_activated, NULL);
///   g_action_map_add_action (G_ACTION_MAP (action_group), action);
///   …
///   pad_controller = gtk_pad_controller_new (window, action_group, NULL);
/// ```
/// 
/// The actions belonging to rings/strips will be activated with a parameter
/// of type `G_VARIANT_TYPE_DOUBLE` bearing the value of the given axis, it
/// is required that those are made stateful and accepting this `GVariantType`.
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
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PadControllerProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
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
    /// actions. A `nil` pad may be provided so the controller manages all pad devices
    /// generically, it is discouraged to mix `GtkPadController` objects with `nil`
    /// and non-`nil` `pad` argument on the same `window`, as execution order is not
    /// guaranteed.
    /// 
    /// The `GtkPadController` is created with no mapped actions. In order to map pad
    /// events to actions, use `gtk_pad_controller_set_action_entries()` or
    /// `gtk_pad_controller_set_action()`.
    @inlinable public init<ActionGroupT: GIO.ActionGroupProtocol, DeviceT: Gdk.DeviceProtocol, WindowT: WindowProtocol>( window: WindowT, group: ActionGroupT, pad: DeviceT?) {
        let rv = gtk_pad_controller_new(window.window_ptr, group.action_group_ptr, pad?.device_ptr)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum PadControllerPropertyName: String, PropertyNameProtocol {
    case actionGroup = "action-group"
    case pad = "pad"
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

// MARK: PadController has no signals// MARK: PadController Class: PadControllerProtocol extension (methods and fields)
public extension PadControllerProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkPadController` instance.
    @inlinable var pad_controller_ptr: UnsafeMutablePointer<GtkPadController>! { return ptr?.assumingMemoryBound(to: GtkPadController.self) }

    /// Adds an individual action to `controller`. This action will only be activated
    /// if the given button/ring/strip number in `index` is interacted while
    /// the current mode is `mode`. -1 may be used for simple cases, so the action
    /// is triggered on all modes.
    /// 
    /// The given `label` should be considered user-visible, so internationalization
    /// rules apply. Some windowing systems may be able to use those for user
    /// feedback.
    @inlinable func setAction(type: GtkPadActionType, index: Int, mode: Int, label: UnsafePointer<gchar>!, actionName: UnsafePointer<gchar>!) {
        gtk_pad_controller_set_action(pad_controller_ptr, type, gint(index), gint(mode), label, actionName)
    
    }

    /// This is a convenience function to add a group of action entries on
    /// `controller`. See `GtkPadActionEntry` and `gtk_pad_controller_set_action()`.
    @inlinable func setAction(entries: UnsafePointer<GtkPadActionEntry>!, nEntries: Int) {
        gtk_pad_controller_set_action_entries(pad_controller_ptr, entries, gint(nEntries))
    
    }


}



