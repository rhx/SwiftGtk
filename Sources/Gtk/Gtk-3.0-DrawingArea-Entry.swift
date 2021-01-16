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

// MARK: - DrawingArea Class

/// The `DrawingAreaProtocol` protocol exposes the methods and properties of an underlying `GtkDrawingArea` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DrawingArea`.
/// Alternatively, use `DrawingAreaRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkDrawingArea` widget is used for creating custom user interface
/// elements. It’s essentially a blank widget; you can draw on it. After
/// creating a drawing area, the application may want to connect to:
/// 
/// - Mouse and button press signals to respond to input from
///   the user. (Use `gtk_widget_add_events()` to enable events
///   you wish to receive.)
/// 
/// - The `GtkWidget::realize` signal to take any necessary actions
///   when the widget is instantiated on a particular display.
///   (Create GDK resources in response to this signal.)
/// 
/// - The `GtkWidget::size`-allocate signal to take any necessary
///   actions when the widget changes size.
/// 
/// - The `GtkWidget::draw` signal to handle redrawing the
///   contents of the widget.
/// 
/// The following code portion demonstrates using a drawing
/// area to display a circle in the normal widget foreground
/// color.
/// 
/// Note that GDK automatically clears the exposed area before sending
/// the expose event, and that drawing is implicitly clipped to the exposed
/// area. If you want to have a theme-provided background, you need
/// to call `gtk_render_background()` in your `draw` method.
/// 
/// ## Simple GtkDrawingArea usage
/// 
/// (C Language Example):
/// ```C
/// gboolean
/// draw_callback (GtkWidget *widget, cairo_t *cr, gpointer data)
/// {
///   guint width, height;
///   GdkRGBA color;
///   GtkStyleContext *context;
/// 
///   context = gtk_widget_get_style_context (widget);
/// 
///   width = gtk_widget_get_allocated_width (widget);
///   height = gtk_widget_get_allocated_height (widget);
/// 
///   gtk_render_background (context, cr, 0, 0, width, height);
/// 
///   cairo_arc (cr,
///              width / 2.0, height / 2.0,
///              MIN (width, height) / 2.0,
///              0, 2 * G_PI);
/// 
///   gtk_style_context_get_color (context,
///                                gtk_style_context_get_state (context),
///                                &color);
///   gdk_cairo_set_source_rgba (cr, &color);
/// 
///   cairo_fill (cr);
/// 
///  return FALSE;
/// }
/// [...]
///   GtkWidget *drawing_area = gtk_drawing_area_new ();
///   gtk_widget_set_size_request (drawing_area, 100, 100);
///   g_signal_connect (G_OBJECT (drawing_area), "draw",
///                     G_CALLBACK (draw_callback), NULL);
/// ```
/// 
/// Draw signals are normally delivered when a drawing area first comes
/// onscreen, or when it’s covered by another window and then uncovered.
/// You can also force an expose event by adding to the “damage region”
/// of the drawing area’s window; `gtk_widget_queue_draw_area()` and
/// `gdk_window_invalidate_rect()` are equally good ways to do this.
/// You’ll then get a draw signal for the invalid region.
/// 
/// The available routines for drawing are documented on the
/// [GDK Drawing Primitives](#gdk3-Cairo-Interaction) page
/// and the cairo documentation.
/// 
/// To receive mouse events on a drawing area, you will need to enable
/// them with `gtk_widget_add_events()`. To receive keyboard events, you
/// will need to set the “can-focus” property on the drawing area, and you
/// should probably draw some user-visible indication that the drawing
/// area is focused. Use `gtk_widget_has_focus()` in your expose event
/// handler to decide whether to draw the focus indicator. See
/// `gtk_render_focus()` for one way to draw focus.
public protocol DrawingAreaProtocol: WidgetProtocol {
        /// Untyped pointer to the underlying `GtkDrawingArea` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkDrawingArea` instance.
    var drawing_area_ptr: UnsafeMutablePointer<GtkDrawingArea>! { get }

}

/// The `DrawingAreaRef` type acts as a lightweight Swift reference to an underlying `GtkDrawingArea` instance.
/// It exposes methods that can operate on this data type through `DrawingAreaProtocol` conformance.
/// Use `DrawingAreaRef` only as an `unowned` reference to an existing `GtkDrawingArea` instance.
///
/// The `GtkDrawingArea` widget is used for creating custom user interface
/// elements. It’s essentially a blank widget; you can draw on it. After
/// creating a drawing area, the application may want to connect to:
/// 
/// - Mouse and button press signals to respond to input from
///   the user. (Use `gtk_widget_add_events()` to enable events
///   you wish to receive.)
/// 
/// - The `GtkWidget::realize` signal to take any necessary actions
///   when the widget is instantiated on a particular display.
///   (Create GDK resources in response to this signal.)
/// 
/// - The `GtkWidget::size`-allocate signal to take any necessary
///   actions when the widget changes size.
/// 
/// - The `GtkWidget::draw` signal to handle redrawing the
///   contents of the widget.
/// 
/// The following code portion demonstrates using a drawing
/// area to display a circle in the normal widget foreground
/// color.
/// 
/// Note that GDK automatically clears the exposed area before sending
/// the expose event, and that drawing is implicitly clipped to the exposed
/// area. If you want to have a theme-provided background, you need
/// to call `gtk_render_background()` in your `draw` method.
/// 
/// ## Simple GtkDrawingArea usage
/// 
/// (C Language Example):
/// ```C
/// gboolean
/// draw_callback (GtkWidget *widget, cairo_t *cr, gpointer data)
/// {
///   guint width, height;
///   GdkRGBA color;
///   GtkStyleContext *context;
/// 
///   context = gtk_widget_get_style_context (widget);
/// 
///   width = gtk_widget_get_allocated_width (widget);
///   height = gtk_widget_get_allocated_height (widget);
/// 
///   gtk_render_background (context, cr, 0, 0, width, height);
/// 
///   cairo_arc (cr,
///              width / 2.0, height / 2.0,
///              MIN (width, height) / 2.0,
///              0, 2 * G_PI);
/// 
///   gtk_style_context_get_color (context,
///                                gtk_style_context_get_state (context),
///                                &color);
///   gdk_cairo_set_source_rgba (cr, &color);
/// 
///   cairo_fill (cr);
/// 
///  return FALSE;
/// }
/// [...]
///   GtkWidget *drawing_area = gtk_drawing_area_new ();
///   gtk_widget_set_size_request (drawing_area, 100, 100);
///   g_signal_connect (G_OBJECT (drawing_area), "draw",
///                     G_CALLBACK (draw_callback), NULL);
/// ```
/// 
/// Draw signals are normally delivered when a drawing area first comes
/// onscreen, or when it’s covered by another window and then uncovered.
/// You can also force an expose event by adding to the “damage region”
/// of the drawing area’s window; `gtk_widget_queue_draw_area()` and
/// `gdk_window_invalidate_rect()` are equally good ways to do this.
/// You’ll then get a draw signal for the invalid region.
/// 
/// The available routines for drawing are documented on the
/// [GDK Drawing Primitives](#gdk3-Cairo-Interaction) page
/// and the cairo documentation.
/// 
/// To receive mouse events on a drawing area, you will need to enable
/// them with `gtk_widget_add_events()`. To receive keyboard events, you
/// will need to set the “can-focus” property on the drawing area, and you
/// should probably draw some user-visible indication that the drawing
/// area is focused. Use `gtk_widget_has_focus()` in your expose event
/// handler to decide whether to draw the focus indicator. See
/// `gtk_render_focus()` for one way to draw focus.
public struct DrawingAreaRef: DrawingAreaProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkDrawingArea` instance.
    /// For type-safe access, use the generated, typed pointer `drawing_area_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DrawingAreaRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkDrawingArea>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkDrawingArea>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkDrawingArea>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkDrawingArea>?) {
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

    /// Reference intialiser for a related type that implements `DrawingAreaProtocol`
    @inlinable init<T: DrawingAreaProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: DrawingAreaProtocol>(_ other: T) -> DrawingAreaRef { DrawingAreaRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new drawing area.
    @inlinable init() {
        let rv = gtk_drawing_area_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `DrawingArea` type acts as a reference-counted owner of an underlying `GtkDrawingArea` instance.
/// It provides the methods that can operate on this data type through `DrawingAreaProtocol` conformance.
/// Use `DrawingArea` as a strong reference or owner of a `GtkDrawingArea` instance.
///
/// The `GtkDrawingArea` widget is used for creating custom user interface
/// elements. It’s essentially a blank widget; you can draw on it. After
/// creating a drawing area, the application may want to connect to:
/// 
/// - Mouse and button press signals to respond to input from
///   the user. (Use `gtk_widget_add_events()` to enable events
///   you wish to receive.)
/// 
/// - The `GtkWidget::realize` signal to take any necessary actions
///   when the widget is instantiated on a particular display.
///   (Create GDK resources in response to this signal.)
/// 
/// - The `GtkWidget::size`-allocate signal to take any necessary
///   actions when the widget changes size.
/// 
/// - The `GtkWidget::draw` signal to handle redrawing the
///   contents of the widget.
/// 
/// The following code portion demonstrates using a drawing
/// area to display a circle in the normal widget foreground
/// color.
/// 
/// Note that GDK automatically clears the exposed area before sending
/// the expose event, and that drawing is implicitly clipped to the exposed
/// area. If you want to have a theme-provided background, you need
/// to call `gtk_render_background()` in your `draw` method.
/// 
/// ## Simple GtkDrawingArea usage
/// 
/// (C Language Example):
/// ```C
/// gboolean
/// draw_callback (GtkWidget *widget, cairo_t *cr, gpointer data)
/// {
///   guint width, height;
///   GdkRGBA color;
///   GtkStyleContext *context;
/// 
///   context = gtk_widget_get_style_context (widget);
/// 
///   width = gtk_widget_get_allocated_width (widget);
///   height = gtk_widget_get_allocated_height (widget);
/// 
///   gtk_render_background (context, cr, 0, 0, width, height);
/// 
///   cairo_arc (cr,
///              width / 2.0, height / 2.0,
///              MIN (width, height) / 2.0,
///              0, 2 * G_PI);
/// 
///   gtk_style_context_get_color (context,
///                                gtk_style_context_get_state (context),
///                                &color);
///   gdk_cairo_set_source_rgba (cr, &color);
/// 
///   cairo_fill (cr);
/// 
///  return FALSE;
/// }
/// [...]
///   GtkWidget *drawing_area = gtk_drawing_area_new ();
///   gtk_widget_set_size_request (drawing_area, 100, 100);
///   g_signal_connect (G_OBJECT (drawing_area), "draw",
///                     G_CALLBACK (draw_callback), NULL);
/// ```
/// 
/// Draw signals are normally delivered when a drawing area first comes
/// onscreen, or when it’s covered by another window and then uncovered.
/// You can also force an expose event by adding to the “damage region”
/// of the drawing area’s window; `gtk_widget_queue_draw_area()` and
/// `gdk_window_invalidate_rect()` are equally good ways to do this.
/// You’ll then get a draw signal for the invalid region.
/// 
/// The available routines for drawing are documented on the
/// [GDK Drawing Primitives](#gdk3-Cairo-Interaction) page
/// and the cairo documentation.
/// 
/// To receive mouse events on a drawing area, you will need to enable
/// them with `gtk_widget_add_events()`. To receive keyboard events, you
/// will need to set the “can-focus” property on the drawing area, and you
/// should probably draw some user-visible indication that the drawing
/// area is focused. Use `gtk_widget_has_focus()` in your expose event
/// handler to decide whether to draw the focus indicator. See
/// `gtk_render_focus()` for one way to draw focus.
open class DrawingArea: Widget, DrawingAreaProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DrawingArea` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkDrawingArea>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DrawingArea` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkDrawingArea>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DrawingArea` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DrawingArea` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DrawingArea` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkDrawingArea>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DrawingArea` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkDrawingArea>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkDrawingArea`.
    /// i.e., ownership is transferred to the `DrawingArea` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkDrawingArea>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DrawingAreaProtocol`
    /// Will retain `GtkDrawingArea`.
    /// - Parameter other: an instance of a related type that implements `DrawingAreaProtocol`
    @inlinable public init<T: DrawingAreaProtocol>(drawingArea other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new drawing area.
    @inlinable public init() {
        let rv = gtk_drawing_area_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum DrawingAreaPropertyName: String, PropertyNameProtocol {
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

public extension DrawingAreaProtocol {
    /// Bind a `DrawingAreaPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: DrawingAreaPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a DrawingArea property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: DrawingAreaPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a DrawingArea property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: DrawingAreaPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: DrawingArea has no signals// MARK: DrawingArea Class: DrawingAreaProtocol extension (methods and fields)
public extension DrawingAreaProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkDrawingArea` instance.
    @inlinable var drawing_area_ptr: UnsafeMutablePointer<GtkDrawingArea>! { return ptr?.assumingMemoryBound(to: GtkDrawingArea.self) }


    @inlinable var widget: GtkWidget {
        get {
            let rv = drawing_area_ptr.pointee.widget
            return rv
        }
    }

    // var dummy is unavailable because dummy is private

}



// MARK: - Entry Class

/// The `EntryProtocol` protocol exposes the methods and properties of an underlying `GtkEntry` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Entry`.
/// Alternatively, use `EntryRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkEntry` widget is a single line text entry
/// widget. A fairly large set of key bindings are supported
/// by default. If the entered text is longer than the allocation
/// of the widget, the widget will scroll so that the cursor
/// position is visible.
/// 
/// When using an entry for passwords and other sensitive information,
/// it can be put into “password mode” using `gtk_entry_set_visibility()`.
/// In this mode, entered text is displayed using a “invisible” character.
/// By default, GTK+ picks the best invisible character that is available
/// in the current font, but it can be changed with
/// `gtk_entry_set_invisible_char()`. Since 2.16, GTK+ displays a warning
/// when Caps Lock or input methods might interfere with entering text in
/// a password entry. The warning can be turned off with the
/// `GtkEntry:caps`-lock-warning property.
/// 
/// Since 2.16, GtkEntry has the ability to display progress or activity
/// information behind the text. To make an entry display such information,
/// use `gtk_entry_set_progress_fraction()` or `gtk_entry_set_progress_pulse_step()`.
/// 
/// Additionally, GtkEntry can show icons at either side of the entry. These
/// icons can be activatable by clicking, can be set up as drag source and
/// can have tooltips. To add an icon, use `gtk_entry_set_icon_from_gicon()` or
/// one of the various other functions that set an icon from a stock id, an
/// icon name or a pixbuf. To trigger an action when the user clicks an icon,
/// connect to the `GtkEntry::icon`-press signal. To allow DND operations
/// from an icon, use `gtk_entry_set_icon_drag_source()`. To set a tooltip on
/// an icon, use `gtk_entry_set_icon_tooltip_text()` or the corresponding function
/// for markup.
/// 
/// Note that functionality or information that is only available by clicking
/// on an icon in an entry may not be accessible at all to users which are not
/// able to use a mouse or other pointing device. It is therefore recommended
/// that any such functionality should also be available by other means, e.g.
/// via the context menu of the entry.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// entry[.read-only][.flat][.warning][.error]
/// ├── image.left
/// ├── image.right
/// ├── undershoot.left
/// ├── undershoot.right
/// ├── [selection]
/// ├── [progress[.pulse]]
/// ╰── [window.popup]
/// ```
/// 
/// GtkEntry has a main node with the name entry. Depending on the properties
/// of the entry, the style classes .read-only and .flat may appear. The style
/// classes .warning and .error may also be used with entries.
/// 
/// When the entry shows icons, it adds subnodes with the name image and the
/// style class .left or .right, depending on where the icon appears.
/// 
/// When the entry has a selection, it adds a subnode with the name selection.
/// 
/// When the entry shows progress, it adds a subnode with the name progress.
/// The node has the style class .pulse when the shown progress is pulsing.
/// 
/// The CSS node for a context menu is added as a subnode below entry as well.
/// 
/// The undershoot nodes are used to draw the underflow indication when content
/// is scrolled out of view. These nodes get the .left and .right style classes
/// added depending on where the indication is drawn.
/// 
/// When touch is used and touch selection handles are shown, they are using
/// CSS nodes with name cursor-handle. They get the .top or .bottom style class
/// depending on where they are shown in relation to the selection. If there is
/// just a single handle for the text cursor, it gets the style class
/// .insertion-cursor.
public protocol EntryProtocol: WidgetProtocol, CellEditableProtocol, EditableProtocol {
        /// Untyped pointer to the underlying `GtkEntry` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkEntry` instance.
    var entry_ptr: UnsafeMutablePointer<GtkEntry>! { get }

}

/// The `EntryRef` type acts as a lightweight Swift reference to an underlying `GtkEntry` instance.
/// It exposes methods that can operate on this data type through `EntryProtocol` conformance.
/// Use `EntryRef` only as an `unowned` reference to an existing `GtkEntry` instance.
///
/// The `GtkEntry` widget is a single line text entry
/// widget. A fairly large set of key bindings are supported
/// by default. If the entered text is longer than the allocation
/// of the widget, the widget will scroll so that the cursor
/// position is visible.
/// 
/// When using an entry for passwords and other sensitive information,
/// it can be put into “password mode” using `gtk_entry_set_visibility()`.
/// In this mode, entered text is displayed using a “invisible” character.
/// By default, GTK+ picks the best invisible character that is available
/// in the current font, but it can be changed with
/// `gtk_entry_set_invisible_char()`. Since 2.16, GTK+ displays a warning
/// when Caps Lock or input methods might interfere with entering text in
/// a password entry. The warning can be turned off with the
/// `GtkEntry:caps`-lock-warning property.
/// 
/// Since 2.16, GtkEntry has the ability to display progress or activity
/// information behind the text. To make an entry display such information,
/// use `gtk_entry_set_progress_fraction()` or `gtk_entry_set_progress_pulse_step()`.
/// 
/// Additionally, GtkEntry can show icons at either side of the entry. These
/// icons can be activatable by clicking, can be set up as drag source and
/// can have tooltips. To add an icon, use `gtk_entry_set_icon_from_gicon()` or
/// one of the various other functions that set an icon from a stock id, an
/// icon name or a pixbuf. To trigger an action when the user clicks an icon,
/// connect to the `GtkEntry::icon`-press signal. To allow DND operations
/// from an icon, use `gtk_entry_set_icon_drag_source()`. To set a tooltip on
/// an icon, use `gtk_entry_set_icon_tooltip_text()` or the corresponding function
/// for markup.
/// 
/// Note that functionality or information that is only available by clicking
/// on an icon in an entry may not be accessible at all to users which are not
/// able to use a mouse or other pointing device. It is therefore recommended
/// that any such functionality should also be available by other means, e.g.
/// via the context menu of the entry.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// entry[.read-only][.flat][.warning][.error]
/// ├── image.left
/// ├── image.right
/// ├── undershoot.left
/// ├── undershoot.right
/// ├── [selection]
/// ├── [progress[.pulse]]
/// ╰── [window.popup]
/// ```
/// 
/// GtkEntry has a main node with the name entry. Depending on the properties
/// of the entry, the style classes .read-only and .flat may appear. The style
/// classes .warning and .error may also be used with entries.
/// 
/// When the entry shows icons, it adds subnodes with the name image and the
/// style class .left or .right, depending on where the icon appears.
/// 
/// When the entry has a selection, it adds a subnode with the name selection.
/// 
/// When the entry shows progress, it adds a subnode with the name progress.
/// The node has the style class .pulse when the shown progress is pulsing.
/// 
/// The CSS node for a context menu is added as a subnode below entry as well.
/// 
/// The undershoot nodes are used to draw the underflow indication when content
/// is scrolled out of view. These nodes get the .left and .right style classes
/// added depending on where the indication is drawn.
/// 
/// When touch is used and touch selection handles are shown, they are using
/// CSS nodes with name cursor-handle. They get the .top or .bottom style class
/// depending on where they are shown in relation to the selection. If there is
/// just a single handle for the text cursor, it gets the style class
/// .insertion-cursor.
public struct EntryRef: EntryProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkEntry` instance.
    /// For type-safe access, use the generated, typed pointer `entry_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension EntryRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkEntry>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkEntry>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkEntry>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkEntry>?) {
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

    /// Reference intialiser for a related type that implements `EntryProtocol`
    @inlinable init<T: EntryProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: EntryProtocol>(_ other: T) -> EntryRef { EntryRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new entry.
    @inlinable init() {
        let rv = gtk_entry_new()
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new entry with the specified text buffer.
    @inlinable init<EntryBufferT: EntryBufferProtocol>(buffer: EntryBufferT) {
        let rv = gtk_entry_new_with_buffer(buffer.entry_buffer_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new entry with the specified text buffer.
    @inlinable static func newWith<EntryBufferT: EntryBufferProtocol>(buffer: EntryBufferT) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_entry_new_with_buffer(buffer.entry_buffer_ptr))) else { return nil }
        return rv
    }
}

/// The `Entry` type acts as a reference-counted owner of an underlying `GtkEntry` instance.
/// It provides the methods that can operate on this data type through `EntryProtocol` conformance.
/// Use `Entry` as a strong reference or owner of a `GtkEntry` instance.
///
/// The `GtkEntry` widget is a single line text entry
/// widget. A fairly large set of key bindings are supported
/// by default. If the entered text is longer than the allocation
/// of the widget, the widget will scroll so that the cursor
/// position is visible.
/// 
/// When using an entry for passwords and other sensitive information,
/// it can be put into “password mode” using `gtk_entry_set_visibility()`.
/// In this mode, entered text is displayed using a “invisible” character.
/// By default, GTK+ picks the best invisible character that is available
/// in the current font, but it can be changed with
/// `gtk_entry_set_invisible_char()`. Since 2.16, GTK+ displays a warning
/// when Caps Lock or input methods might interfere with entering text in
/// a password entry. The warning can be turned off with the
/// `GtkEntry:caps`-lock-warning property.
/// 
/// Since 2.16, GtkEntry has the ability to display progress or activity
/// information behind the text. To make an entry display such information,
/// use `gtk_entry_set_progress_fraction()` or `gtk_entry_set_progress_pulse_step()`.
/// 
/// Additionally, GtkEntry can show icons at either side of the entry. These
/// icons can be activatable by clicking, can be set up as drag source and
/// can have tooltips. To add an icon, use `gtk_entry_set_icon_from_gicon()` or
/// one of the various other functions that set an icon from a stock id, an
/// icon name or a pixbuf. To trigger an action when the user clicks an icon,
/// connect to the `GtkEntry::icon`-press signal. To allow DND operations
/// from an icon, use `gtk_entry_set_icon_drag_source()`. To set a tooltip on
/// an icon, use `gtk_entry_set_icon_tooltip_text()` or the corresponding function
/// for markup.
/// 
/// Note that functionality or information that is only available by clicking
/// on an icon in an entry may not be accessible at all to users which are not
/// able to use a mouse or other pointing device. It is therefore recommended
/// that any such functionality should also be available by other means, e.g.
/// via the context menu of the entry.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// entry[.read-only][.flat][.warning][.error]
/// ├── image.left
/// ├── image.right
/// ├── undershoot.left
/// ├── undershoot.right
/// ├── [selection]
/// ├── [progress[.pulse]]
/// ╰── [window.popup]
/// ```
/// 
/// GtkEntry has a main node with the name entry. Depending on the properties
/// of the entry, the style classes .read-only and .flat may appear. The style
/// classes .warning and .error may also be used with entries.
/// 
/// When the entry shows icons, it adds subnodes with the name image and the
/// style class .left or .right, depending on where the icon appears.
/// 
/// When the entry has a selection, it adds a subnode with the name selection.
/// 
/// When the entry shows progress, it adds a subnode with the name progress.
/// The node has the style class .pulse when the shown progress is pulsing.
/// 
/// The CSS node for a context menu is added as a subnode below entry as well.
/// 
/// The undershoot nodes are used to draw the underflow indication when content
/// is scrolled out of view. These nodes get the .left and .right style classes
/// added depending on where the indication is drawn.
/// 
/// When touch is used and touch selection handles are shown, they are using
/// CSS nodes with name cursor-handle. They get the .top or .bottom style class
/// depending on where they are shown in relation to the selection. If there is
/// just a single handle for the text cursor, it gets the style class
/// .insertion-cursor.
open class Entry: Widget, EntryProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Entry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkEntry>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Entry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkEntry>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Entry` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Entry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Entry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkEntry>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Entry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkEntry>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkEntry`.
    /// i.e., ownership is transferred to the `Entry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkEntry>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `EntryProtocol`
    /// Will retain `GtkEntry`.
    /// - Parameter other: an instance of a related type that implements `EntryProtocol`
    @inlinable public init<T: EntryProtocol>(entry other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new entry.
    @inlinable public init() {
        let rv = gtk_entry_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new entry with the specified text buffer.
    @inlinable public init<EntryBufferT: EntryBufferProtocol>(buffer: EntryBufferT) {
        let rv = gtk_entry_new_with_buffer(buffer.entry_buffer_ptr)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new entry with the specified text buffer.
    @inlinable public static func newWith<EntryBufferT: EntryBufferProtocol>(buffer: EntryBufferT) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_entry_new_with_buffer(buffer.entry_buffer_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum EntryPropertyName: String, PropertyNameProtocol {
    case activatesDefault = "activates-default"
    case appPaintable = "app-paintable"
    /// A list of Pango attributes to apply to the text of the entry.
    /// 
    /// This is mainly useful to change the size or weight of the text.
    /// 
    /// The `PangoAttribute`'s `start_index` and `end_index` must refer to the
    /// `GtkEntryBuffer` text, i.e. without the preedit string.
    case attributes = "attributes"
    case buffer = "buffer"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    /// Whether password entries will show a warning when Caps Lock is on.
    /// 
    /// Note that the warning is shown using a secondary icon, and thus
    /// does not work if you are using the secondary icon position for some
    /// other purpose.
    case capsLockWarning = "caps-lock-warning"
    /// The auxiliary completion object to use with the entry.
    case completion = "completion"
    case compositeChild = "composite-child"
    case cursorPosition = "cursor-position"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
    case editable = "editable"
    case enableEmojiCompletion = "enable-emoji-completion"
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
    case hasFrame = "has-frame"
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
    /// Which IM (input method) module should be used for this entry.
    /// See `GtkIMContext`.
    /// 
    /// Setting this to a non-`nil` value overrides the
    /// system-wide IM module setting. See the GtkSettings
    /// `GtkSettings:gtk`-im-module property.
    case imModule = "im-module"
    /// Sets the text area's border between the text and the frame.
    ///
    /// **inner-border is deprecated:**
    /// Use the standard border and padding CSS properties
    ///   (through objects like #GtkStyleContext and #GtkCssProvider); the value
    ///   of this style property is ignored.
    case innerBorder = "inner-border"
    /// Additional hints (beyond `GtkEntry:input`-purpose) that
    /// allow input methods to fine-tune their behaviour.
    case inputHints = "input-hints"
    /// The purpose of this text field.
    /// 
    /// This property can be used by on-screen keyboards and other input
    /// methods to adjust their behaviour.
    /// 
    /// Note that setting the purpose to `GTK_INPUT_PURPOSE_PASSWORD` or
    /// `GTK_INPUT_PURPOSE_PIN` is independent from setting
    /// `GtkEntry:visibility`.
    case inputPurpose = "input-purpose"
    /// The invisible character is used when masking entry contents (in
    /// \"password mode\")"). When it is not explicitly set with the
    /// `GtkEntry:invisible`-char property, GTK+ determines the character
    /// to use from a list of possible candidates, depending on availability
    /// in the current font.
    /// 
    /// This style property allows the theme to prepend a character
    /// to the list of candidates.
    case invisibleChar = "invisible-char"
    /// Whether the invisible char has been set for the `GtkEntry`.
    case invisibleCharSet = "invisible-char-set"
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
    case maxLength = "max-length"
    /// The desired maximum width of the entry, in characters.
    /// If this property is set to -1, the width will be calculated
    /// automatically.
    case maxWidthChars = "max-width-chars"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    /// If text is overwritten when typing in the `GtkEntry`.
    case overwriteMode = "overwrite-mode"
    case parent = "parent"
    /// The text that will be displayed in the `GtkEntry` when it is empty
    /// and unfocused.
    case placeholderText = "placeholder-text"
    /// If :populate-all is `true`, the `GtkEntry::populate`-popup
    /// signal is also emitted for touch popups.
    case populateAll = "populate-all"
    /// Whether the primary icon is activatable.
    /// 
    /// GTK+ emits the `GtkEntry::icon`-press and `GtkEntry::icon`-release
    /// signals only on sensitive, activatable icons.
    /// 
    /// Sensitive, but non-activatable icons can be used for purely
    /// informational purposes.
    case primaryIconActivatable = "primary-icon-activatable"
    /// The `GIcon` to use for the primary icon for the entry.
    case primaryIconIcon = "primary-icon-gicon"
    /// The icon name to use for the primary icon for the entry.
    case primaryIconName = "primary-icon-name"
    /// A pixbuf to use as the primary icon for the entry.
    case primaryIconPixbuf = "primary-icon-pixbuf"
    /// Whether the primary icon is sensitive.
    /// 
    /// An insensitive icon appears grayed out. GTK+ does not emit the
    /// `GtkEntry::icon`-press and `GtkEntry::icon`-release signals and
    /// does not allow DND from insensitive icons.
    /// 
    /// An icon should be set insensitive if the action that would trigger
    /// when clicked is currently not available.
    case primaryIconSensitive = "primary-icon-sensitive"
    /// The stock id to use for the primary icon for the entry.
    ///
    /// **primary-icon-stock is deprecated:**
    /// Use #GtkEntry:primary-icon-name instead.
    case primaryIconStock = "primary-icon-stock"
    /// The representation which is used for the primary icon of the entry.
    case primaryIconStorageType = "primary-icon-storage-type"
    /// The contents of the tooltip on the primary icon, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// 
    /// Also see `gtk_entry_set_icon_tooltip_markup()`.
    case primaryIconTooltipMarkup = "primary-icon-tooltip-markup"
    /// The contents of the tooltip on the primary icon.
    /// 
    /// Also see `gtk_entry_set_icon_tooltip_text()`.
    case primaryIconTooltipText = "primary-icon-tooltip-text"
    /// The current fraction of the task that's been completed.
    case progressFraction = "progress-fraction"
    /// The fraction of total entry width to move the progress
    /// bouncing block for each call to `gtk_entry_progress_pulse()`.
    case progressPulseStep = "progress-pulse-step"
    case receivesDefault = "receives-default"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case scrollOffset = "scroll-offset"
    /// Whether the secondary icon is activatable.
    /// 
    /// GTK+ emits the `GtkEntry::icon`-press and `GtkEntry::icon`-release
    /// signals only on sensitive, activatable icons.
    /// 
    /// Sensitive, but non-activatable icons can be used for purely
    /// informational purposes.
    case secondaryIconActivatable = "secondary-icon-activatable"
    /// The `GIcon` to use for the secondary icon for the entry.
    case secondaryIconIcon = "secondary-icon-gicon"
    /// The icon name to use for the secondary icon for the entry.
    case secondaryIconName = "secondary-icon-name"
    /// An pixbuf to use as the secondary icon for the entry.
    case secondaryIconPixbuf = "secondary-icon-pixbuf"
    /// Whether the secondary icon is sensitive.
    /// 
    /// An insensitive icon appears grayed out. GTK+ does not emit the
    /// `GtkEntry::icon`-press and `GtkEntry::icon`-release signals and
    /// does not allow DND from insensitive icons.
    /// 
    /// An icon should be set insensitive if the action that would trigger
    /// when clicked is currently not available.
    case secondaryIconSensitive = "secondary-icon-sensitive"
    /// The stock id to use for the secondary icon for the entry.
    ///
    /// **secondary-icon-stock is deprecated:**
    /// Use #GtkEntry:secondary-icon-name instead.
    case secondaryIconStock = "secondary-icon-stock"
    /// The representation which is used for the secondary icon of the entry.
    case secondaryIconStorageType = "secondary-icon-storage-type"
    /// The contents of the tooltip on the secondary icon, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// 
    /// Also see `gtk_entry_set_icon_tooltip_markup()`.
    case secondaryIconTooltipMarkup = "secondary-icon-tooltip-markup"
    /// The contents of the tooltip on the secondary icon.
    /// 
    /// Also see `gtk_entry_set_icon_tooltip_text()`.
    case secondaryIconTooltipText = "secondary-icon-tooltip-text"
    case selectionBound = "selection-bound"
    case sensitive = "sensitive"
    /// Which kind of shadow to draw around the entry when
    /// `GtkEntry:has`-frame is set to `true`.
    ///
    /// **shadow-type is deprecated:**
    /// Use CSS to determine the style of the border;
    ///     the value of this style property is ignored.
    case shadowType = "shadow-type"
    case showEmojiIcon = "show-emoji-icon"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    case tabs = "tabs"
    case text = "text"
    /// The length of the text in the `GtkEntry`.
    case textLength = "text-length"
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
    /// When `true`, pasted multi-line text is truncated to the first line.
    case truncateMultiline = "truncate-multiline"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visibility = "visibility"
    case visible = "visible"
    case widthChars = "width-chars"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
    /// The horizontal alignment, from 0 (left) to 1 (right).
    /// Reversed for RTL layouts.
    case xalign = "xalign"
}

public extension EntryProtocol {
    /// Bind a `EntryPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: EntryPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Entry property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: EntryPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Entry property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: EntryPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of Entry
public extension EntryProtocol {
    /// The `activate` signal is emitted when the user hits
    /// the Enter key.
    /// 
    /// While this signal is used as a
    /// [keybinding signal](#GtkBindingSignal),
    /// it is also commonly used by applications to intercept
    /// activation of entries.
    /// 
    /// The default bindings for this signal are all forms of the Enter key.
    /// - Note: Representation of signal named `activate`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onActivate(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<EntryRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "activate", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `backspace` signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user asks for it.
    /// 
    /// The default bindings for this signal are
    /// Backspace and Shift-Backspace.
    /// - Note: Representation of signal named `backspace`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onBackspace(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<EntryRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "backspace", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `copy`-clipboard signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted to copy the selection to the clipboard.
    /// 
    /// The default bindings for this signal are
    /// Ctrl-c and Ctrl-Insert.
    /// - Note: Representation of signal named `copy-clipboard`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onCopyClipboard(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<EntryRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "copy-clipboard", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `cut`-clipboard signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted to cut the selection to the clipboard.
    /// 
    /// The default bindings for this signal are
    /// Ctrl-x and Shift-Delete.
    /// - Note: Representation of signal named `cut-clipboard`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onCutClipboard(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<EntryRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "cut-clipboard", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `delete`-from-cursor signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user initiates a text deletion.
    /// 
    /// If the `type` is `GTK_DELETE_CHARS`, GTK+ deletes the selection
    /// if there is one, otherwise it deletes the requested number
    /// of characters.
    /// 
    /// The default bindings for this signal are
    /// Delete for deleting a character and Ctrl-Delete for
    /// deleting a word.
    /// - Note: Representation of signal named `delete-from-cursor`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter type: the granularity of the deletion, as a `GtkDeleteType`
    /// - Parameter count: the number of `type` units to delete
    @discardableResult
    func onDeleteFromCursor(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ type: DeleteType, _ count: Int) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<EntryRef, DeleteType, Int, Void>
        let cCallback: @convention(c) (gpointer, UInt32, gint, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), DeleteType(arg1), Int(arg2))
            return output
        }
        return signalConnectData(
            detailedSignal: "delete-from-cursor", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `icon`-press signal is emitted when an activatable icon
    /// is clicked.
    /// - Note: Representation of signal named `icon-press`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter iconPos: The position of the clicked icon
    /// - Parameter event: the button press event
    @discardableResult
    func onIconPress(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ iconPos: EntryIconPosition, _ event: Gdk.EventRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<EntryRef, EntryIconPosition, Gdk.EventRef, Void>
        let cCallback: @convention(c) (gpointer, UInt32, gpointer, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), EntryIconPosition(arg1), Gdk.EventRef(raw: arg2))
            return output
        }
        return signalConnectData(
            detailedSignal: "icon-press", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `icon`-release signal is emitted on the button release from a
    /// mouse click over an activatable icon.
    /// - Note: Representation of signal named `icon-release`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter iconPos: The position of the clicked icon
    /// - Parameter event: the button release event
    @discardableResult
    func onIconRelease(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ iconPos: EntryIconPosition, _ event: Gdk.EventRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<EntryRef, EntryIconPosition, Gdk.EventRef, Void>
        let cCallback: @convention(c) (gpointer, UInt32, gpointer, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), EntryIconPosition(arg1), Gdk.EventRef(raw: arg2))
            return output
        }
        return signalConnectData(
            detailedSignal: "icon-release", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `insert`-at-cursor signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user initiates the insertion of a
    /// fixed string at the cursor.
    /// 
    /// This signal has no default bindings.
    /// - Note: Representation of signal named `insert-at-cursor`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter string: the string to insert
    @discardableResult
    func onInsertAtCursor(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ string: String) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, String, Void>
        let cCallback: @convention(c) (gpointer, UnsafeMutablePointer<gchar>?, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), arg1.map({ String(cString: $0) })!)
            return output
        }
        return signalConnectData(
            detailedSignal: "insert-at-cursor", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `insert`-emoji signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted to present the Emoji chooser for the `entry`.
    /// 
    /// The default bindings for this signal are Ctrl-. and Ctrl-;
    /// - Note: Representation of signal named `insert-emoji`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onInsertEmoji(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<EntryRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "insert-emoji", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `move`-cursor signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user initiates a cursor movement.
    /// If the cursor is not visible in `entry`, this signal causes
    /// the viewport to be moved instead.
    /// 
    /// Applications should not connect to it, but may emit it with
    /// `g_signal_emit_by_name()` if they need to control the cursor
    /// programmatically.
    /// 
    /// The default bindings for this signal come in two variants,
    /// the variant with the Shift modifier extends the selection,
    /// the variant without the Shift modifer does not.
    /// There are too many key combinations to list them all here.
    /// - Arrow keys move by individual characters/lines
    /// - Ctrl-arrow key combinations move by words/paragraphs
    /// - Home/End keys move to the ends of the buffer
    /// - Note: Representation of signal named `move-cursor`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter step: the granularity of the move, as a `GtkMovementStep`
    /// - Parameter count: the number of `step` units to move
    /// - Parameter extendSelection: `true` if the move should extend the selection
    @discardableResult
    func onMoveCursor(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ step: MovementStep, _ count: Int, _ extendSelection: Bool) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder4<EntryRef, MovementStep, Int, Bool, Void>
        let cCallback: @convention(c) (gpointer, UInt32, gint, gboolean, gpointer) -> Void = { unownedSelf, arg1, arg2, arg3, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), MovementStep(arg1), Int(arg2), ((arg3) != 0))
            return output
        }
        return signalConnectData(
            detailedSignal: "move-cursor", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `paste`-clipboard signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted to paste the contents of the clipboard
    /// into the text view.
    /// 
    /// The default bindings for this signal are
    /// Ctrl-v and Shift-Insert.
    /// - Note: Representation of signal named `paste-clipboard`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onPasteClipboard(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<EntryRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "paste-clipboard", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `populate`-popup signal gets emitted before showing the
    /// context menu of the entry.
    /// 
    /// If you need to add items to the context menu, connect
    /// to this signal and append your items to the `widget`, which
    /// will be a `GtkMenu` in this case.
    /// 
    /// If `GtkEntry:populate`-all is `true`, this signal will
    /// also be emitted to populate touch popups. In this case,
    /// `widget` will be a different container, e.g. a `GtkToolbar`.
    /// The signal handler should not make assumptions about the
    /// type of `widget`.
    /// - Note: Representation of signal named `populate-popup`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter widget: the container that is being populated
    @discardableResult
    func onPopulatePopup(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ widget: WidgetRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, WidgetRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), WidgetRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "populate-popup", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// If an input method is used, the typed text will not immediately
    /// be committed to the buffer. So if you are interested in the text,
    /// connect to this signal.
    /// - Note: Representation of signal named `preedit-changed`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter preedit: the current preedit string
    @discardableResult
    func onPreeditChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ preedit: String) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, String, Void>
        let cCallback: @convention(c) (gpointer, UnsafeMutablePointer<gchar>?, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), arg1.map({ String(cString: $0) })!)
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
    
    /// The `toggle`-overwrite signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted to toggle the overwrite mode of the entry.
    /// 
    /// The default bindings for this signal is Insert.
    /// - Note: Representation of signal named `toggle-overwrite`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onToggleOverwrite(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<EntryRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "toggle-overwrite", 
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
    /// - Note: Representation of signal named `notify::activates-default`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyActivatesDefault(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::activates-default", 
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
    /// - Note: Representation of signal named `notify::attributes`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyAttributes(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::attributes", 
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
    /// - Note: Representation of signal named `notify::buffer`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyBuffer(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::buffer", 
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
    /// - Note: Representation of signal named `notify::caps-lock-warning`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyCapsLockWarning(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::caps-lock-warning", 
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
    /// - Note: Representation of signal named `notify::completion`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyCompletion(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::completion", 
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
    /// - Note: Representation of signal named `notify::cursor-position`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyCursorPosition(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::cursor-position", 
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
    /// - Note: Representation of signal named `notify::editable`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyEditable(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::editable", 
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
    /// - Note: Representation of signal named `notify::enable-emoji-completion`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyEnableEmojiCompletion(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::enable-emoji-completion", 
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
    /// - Note: Representation of signal named `notify::has-frame`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyHasFrame(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::has-frame", 
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
    /// - Note: Representation of signal named `notify::im-module`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyImModule(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::im-module", 
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
    /// - Note: Representation of signal named `notify::inner-border`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyInnerBorder(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::inner-border", 
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
    func onNotifyInputHints(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
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
    func onNotifyInputPurpose(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
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
    /// - Note: Representation of signal named `notify::invisible-char`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyInvisibleChar(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::invisible-char", 
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
    /// - Note: Representation of signal named `notify::invisible-char-set`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyInvisibleCharSet(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::invisible-char-set", 
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
    /// - Note: Representation of signal named `notify::max-length`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyMaxLength(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::max-length", 
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
    /// - Note: Representation of signal named `notify::max-width-chars`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyMaxWidthChars(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::max-width-chars", 
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
    /// - Note: Representation of signal named `notify::overwrite-mode`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyOverwriteMode(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::overwrite-mode", 
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
    /// - Note: Representation of signal named `notify::placeholder-text`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyPlaceholderText(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::placeholder-text", 
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
    /// - Note: Representation of signal named `notify::populate-all`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyPopulateAll(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::populate-all", 
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
    /// - Note: Representation of signal named `notify::primary-icon-activatable`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyPrimaryIconActivatable(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::primary-icon-activatable", 
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
    /// - Note: Representation of signal named `notify::primary-icon-gicon`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyPrimaryIconIcon(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::primary-icon-gicon", 
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
    /// - Note: Representation of signal named `notify::primary-icon-name`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyPrimaryIconName(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::primary-icon-name", 
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
    /// - Note: Representation of signal named `notify::primary-icon-pixbuf`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyPrimaryIconPixbuf(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::primary-icon-pixbuf", 
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
    /// - Note: Representation of signal named `notify::primary-icon-sensitive`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyPrimaryIconSensitive(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::primary-icon-sensitive", 
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
    /// - Note: Representation of signal named `notify::primary-icon-stock`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyPrimaryIconStock(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::primary-icon-stock", 
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
    /// - Note: Representation of signal named `notify::primary-icon-storage-type`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyPrimaryIconStorageType(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::primary-icon-storage-type", 
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
    /// - Note: Representation of signal named `notify::primary-icon-tooltip-markup`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyPrimaryIconTooltipMarkup(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::primary-icon-tooltip-markup", 
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
    /// - Note: Representation of signal named `notify::primary-icon-tooltip-text`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyPrimaryIconTooltipText(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::primary-icon-tooltip-text", 
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
    /// - Note: Representation of signal named `notify::progress-fraction`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyProgressFraction(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::progress-fraction", 
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
    /// - Note: Representation of signal named `notify::progress-pulse-step`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyProgressPulseStep(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::progress-pulse-step", 
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
    /// - Note: Representation of signal named `notify::scroll-offset`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyScrollOffset(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::scroll-offset", 
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
    /// - Note: Representation of signal named `notify::secondary-icon-activatable`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifySecondaryIconActivatable(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::secondary-icon-activatable", 
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
    /// - Note: Representation of signal named `notify::secondary-icon-gicon`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifySecondaryIconIcon(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::secondary-icon-gicon", 
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
    /// - Note: Representation of signal named `notify::secondary-icon-name`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifySecondaryIconName(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::secondary-icon-name", 
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
    /// - Note: Representation of signal named `notify::secondary-icon-pixbuf`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifySecondaryIconPixbuf(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::secondary-icon-pixbuf", 
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
    /// - Note: Representation of signal named `notify::secondary-icon-sensitive`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifySecondaryIconSensitive(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::secondary-icon-sensitive", 
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
    /// - Note: Representation of signal named `notify::secondary-icon-stock`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifySecondaryIconStock(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::secondary-icon-stock", 
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
    /// - Note: Representation of signal named `notify::secondary-icon-storage-type`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifySecondaryIconStorageType(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::secondary-icon-storage-type", 
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
    /// - Note: Representation of signal named `notify::secondary-icon-tooltip-markup`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifySecondaryIconTooltipMarkup(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::secondary-icon-tooltip-markup", 
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
    /// - Note: Representation of signal named `notify::secondary-icon-tooltip-text`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifySecondaryIconTooltipText(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::secondary-icon-tooltip-text", 
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
    /// - Note: Representation of signal named `notify::selection-bound`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifySelectionBound(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::selection-bound", 
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
    func onNotifyShadowType(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
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
    /// - Note: Representation of signal named `notify::show-emoji-icon`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyShowEmojiIcon(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::show-emoji-icon", 
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
    /// - Note: Representation of signal named `notify::tabs`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyTabs(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::tabs", 
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
    /// - Note: Representation of signal named `notify::text`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyText(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::text", 
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
    /// - Note: Representation of signal named `notify::text-length`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyTextLength(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::text-length", 
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
    /// - Note: Representation of signal named `notify::truncate-multiline`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyTruncateMultiline(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::truncate-multiline", 
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
    /// - Note: Representation of signal named `notify::visibility`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyVisibility(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::visibility", 
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
    /// - Note: Representation of signal named `notify::width-chars`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyWidthChars(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::width-chars", 
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
    /// - Note: Representation of signal named `notify::xalign`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyXalign(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: EntryRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<EntryRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(EntryRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::xalign", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: Entry Class: EntryProtocol extension (methods and fields)
public extension EntryProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEntry` instance.
    @inlinable var entry_ptr: UnsafeMutablePointer<GtkEntry>! { return ptr?.assumingMemoryBound(to: GtkEntry.self) }

    /// Retrieves the value set by `gtk_entry_set_activates_default()`.
    @inlinable func getActivatesDefault() -> Bool {
        let rv = ((gtk_entry_get_activates_default(entry_ptr)) != 0)
        return rv
    }

    /// Gets the value set by `gtk_entry_set_alignment()`.
    @inlinable func getAlignment() -> Double {
        let rv = Double(gtk_entry_get_alignment(entry_ptr))
        return rv
    }

    /// Gets the attribute list that was set on the entry using
    /// `gtk_entry_set_attributes()`, if any.
    @inlinable func getAttributes() -> Pango.AttrListRef! {
        let rv = Pango.AttrListRef(gtk_entry_get_attributes(entry_ptr))
        return rv
    }

    /// Get the `GtkEntryBuffer` object which holds the text for
    /// this widget.
    @inlinable func getBuffer() -> EntryBufferRef! {
        let rv = EntryBufferRef(gconstpointer: gconstpointer(gtk_entry_get_buffer(entry_ptr)))
        return rv
    }

    /// Returns the auxiliary completion object currently in use by `entry`.
    @inlinable func getCompletion() -> EntryCompletionRef! {
        let rv = EntryCompletionRef(gconstpointer: gconstpointer(gtk_entry_get_completion(entry_ptr)))
        return rv
    }

    /// Returns the index of the icon which is the source of the current
    /// DND operation, or -1.
    /// 
    /// This function is meant to be used in a `GtkWidget::drag`-data-get
    /// callback.
    @inlinable func getCurrentIconDragSource() -> Int {
        let rv = Int(gtk_entry_get_current_icon_drag_source(entry_ptr))
        return rv
    }

    /// Retrieves the horizontal cursor adjustment for the entry.
    /// See `gtk_entry_set_cursor_hadjustment()`.
    @inlinable func getCursorHadjustment() -> AdjustmentRef! {
        let rv = AdjustmentRef(gconstpointer: gconstpointer(gtk_entry_get_cursor_hadjustment(entry_ptr)))
        return rv
    }

    /// Gets the value set by `gtk_entry_set_has_frame()`.
    @inlinable func getHasFrame() -> Bool {
        let rv = ((gtk_entry_get_has_frame(entry_ptr)) != 0)
        return rv
    }

    /// Returns whether the icon is activatable.
    @inlinable func getIconActivatable(iconPos: GtkEntryIconPosition) -> Bool {
        let rv = ((gtk_entry_get_icon_activatable(entry_ptr, iconPos)) != 0)
        return rv
    }

    /// Gets the area where entry’s icon at `icon_pos` is drawn.
    /// This function is useful when drawing something to the
    /// entry in a draw callback.
    /// 
    /// If the entry is not realized or has no icon at the given position,
    /// `icon_area` is filled with zeros. Otherwise, `icon_area` will be filled
    /// with the icon’s allocation, relative to `entry`’s allocation.
    /// 
    /// See also `gtk_entry_get_text_area()`
    @inlinable func getIconArea<RectangleT: Gdk.RectangleProtocol>(iconPos: GtkEntryIconPosition, iconArea: RectangleT) {
        gtk_entry_get_icon_area(entry_ptr, iconPos, iconArea.rectangle_ptr)
    
    }

    /// Finds the icon at the given position and return its index. The
    /// position’s coordinates are relative to the `entry`’s top left corner.
    /// If `x`, `y` doesn’t lie inside an icon, -1 is returned.
    /// This function is intended for use in a `GtkWidget::query`-tooltip
    /// signal handler.
    @inlinable func getIconAtPos(x: Int, y: Int) -> Int {
        let rv = Int(gtk_entry_get_icon_at_pos(entry_ptr, gint(x), gint(y)))
        return rv
    }

    /// Retrieves the `GIcon` used for the icon, or `nil` if there is
    /// no icon or if the icon was set by some other method (e.g., by
    /// stock, pixbuf, or icon name).
    @inlinable func getIconIcon(iconPos: GtkEntryIconPosition) -> GIO.IconRef! {
        let rv = GIO.IconRef(gtk_entry_get_icon_gicon(entry_ptr, iconPos))
        return rv
    }

    /// Retrieves the icon name used for the icon, or `nil` if there is
    /// no icon or if the icon was set by some other method (e.g., by
    /// pixbuf, stock or gicon).
    @inlinable func getIconName(iconPos: GtkEntryIconPosition) -> String! {
        let rv = gtk_entry_get_icon_name(entry_ptr, iconPos).map({ String(cString: $0) })
        return rv
    }

    /// Retrieves the image used for the icon.
    /// 
    /// Unlike the other methods of setting and getting icon data, this
    /// method will work regardless of whether the icon was set using a
    /// `GdkPixbuf`, a `GIcon`, a stock item, or an icon name.
    @inlinable func getIconPixbuf(iconPos: GtkEntryIconPosition) -> PixbufRef! {
        let rv = PixbufRef(gconstpointer: gconstpointer(gtk_entry_get_icon_pixbuf(entry_ptr, iconPos)))
        return rv
    }

    /// Returns whether the icon appears sensitive or insensitive.
    @inlinable func getIconSensitive(iconPos: GtkEntryIconPosition) -> Bool {
        let rv = ((gtk_entry_get_icon_sensitive(entry_ptr, iconPos)) != 0)
        return rv
    }

    /// Retrieves the stock id used for the icon, or `nil` if there is
    /// no icon or if the icon was set by some other method (e.g., by
    /// pixbuf, icon name or gicon).
    ///
    /// **get_icon_stock is deprecated:**
    /// Use gtk_entry_get_icon_name() instead.
    @available(*, deprecated)
    @inlinable func getIconStock(iconPos: GtkEntryIconPosition) -> String! {
        let rv = gtk_entry_get_icon_stock(entry_ptr, iconPos).map({ String(cString: $0) })
        return rv
    }

    /// Gets the type of representation being used by the icon
    /// to store image data. If the icon has no image data,
    /// the return value will be `GTK_IMAGE_EMPTY`.
    @inlinable func getIconStorageType(iconPos: GtkEntryIconPosition) -> GtkImageType {
        let rv = gtk_entry_get_icon_storage_type(entry_ptr, iconPos)
        return rv
    }

    /// Gets the contents of the tooltip on the icon at the specified
    /// position in `entry`.
    @inlinable func getIconTooltipMarkup(iconPos: GtkEntryIconPosition) -> String! {
        let rv = gtk_entry_get_icon_tooltip_markup(entry_ptr, iconPos).map({ String(cString: $0) })
        return rv
    }

    /// Gets the contents of the tooltip on the icon at the specified
    /// position in `entry`.
    @inlinable func getIconTooltipText(iconPos: GtkEntryIconPosition) -> String! {
        let rv = gtk_entry_get_icon_tooltip_text(entry_ptr, iconPos).map({ String(cString: $0) })
        return rv
    }

    /// This function returns the entry’s `GtkEntry:inner`-border property. See
    /// `gtk_entry_set_inner_border()` for more information.
    ///
    /// **get_inner_border is deprecated:**
    /// Use the standard border and padding CSS properties (through
    ///   objects like #GtkStyleContext and #GtkCssProvider); the value returned by
    ///   this function is ignored by #GtkEntry.
    @available(*, deprecated)
    @inlinable func getInnerBorder() -> BorderRef! {
        let rv = BorderRef(gconstpointer: gconstpointer(gtk_entry_get_inner_border(entry_ptr)))
        return rv
    }

    /// Gets the value of the `GtkEntry:input`-hints property.
    @inlinable func getInputHints() -> InputHints {
        let rv = InputHints(gtk_entry_get_input_hints(entry_ptr))
        return rv
    }

    /// Gets the value of the `GtkEntry:input`-purpose property.
    @inlinable func getInputPurpose() -> GtkInputPurpose {
        let rv = gtk_entry_get_input_purpose(entry_ptr)
        return rv
    }

    /// Retrieves the character displayed in place of the real characters
    /// for entries with visibility set to false. See `gtk_entry_set_invisible_char()`.
    @inlinable func getInvisibleChar() -> gunichar {
        let rv = gtk_entry_get_invisible_char(entry_ptr)
        return rv
    }

    /// Gets the `PangoLayout` used to display the entry.
    /// The layout is useful to e.g. convert text positions to
    /// pixel positions, in combination with `gtk_entry_get_layout_offsets()`.
    /// The returned layout is owned by the entry and must not be
    /// modified or freed by the caller.
    /// 
    /// Keep in mind that the layout text may contain a preedit string, so
    /// `gtk_entry_layout_index_to_text_index()` and
    /// `gtk_entry_text_index_to_layout_index()` are needed to convert byte
    /// indices in the layout to byte indices in the entry contents.
    @inlinable func getLayout() -> Pango.LayoutRef! {
        let rv = Pango.LayoutRef(gtk_entry_get_layout(entry_ptr))
        return rv
    }

    /// Obtains the position of the `PangoLayout` used to render text
    /// in the entry, in widget coordinates. Useful if you want to line
    /// up the text in an entry with some other text, e.g. when using the
    /// entry to implement editable cells in a sheet widget.
    /// 
    /// Also useful to convert mouse events into coordinates inside the
    /// `PangoLayout`, e.g. to take some action if some part of the entry text
    /// is clicked.
    /// 
    /// Note that as the user scrolls around in the entry the offsets will
    /// change; you’ll need to connect to the “notify`scroll`-offset”
    /// signal to track this. Remember when using the `PangoLayout`
    /// functions you need to convert to and from pixels using
    /// `PANGO_PIXELS()` or `PANGO_SCALE`.
    /// 
    /// Keep in mind that the layout text may contain a preedit string, so
    /// `gtk_entry_layout_index_to_text_index()` and
    /// `gtk_entry_text_index_to_layout_index()` are needed to convert byte
    /// indices in the layout to byte indices in the entry contents.
    @inlinable func getLayoutOffsets(x: UnsafeMutablePointer<gint>! = nil, y: UnsafeMutablePointer<gint>! = nil) {
        gtk_entry_get_layout_offsets(entry_ptr, x, y)
    
    }

    /// Retrieves the maximum allowed length of the text in
    /// `entry`. See `gtk_entry_set_max_length()`.
    /// 
    /// This is equivalent to getting `entry`'s `GtkEntryBuffer` and
    /// calling `gtk_entry_buffer_get_max_length()` on it.
    @inlinable func getMaxLength() -> Int {
        let rv = Int(gtk_entry_get_max_length(entry_ptr))
        return rv
    }

    /// Retrieves the desired maximum width of `entry`, in characters.
    /// See `gtk_entry_set_max_width_chars()`.
    @inlinable func getMaxWidthChars() -> Int {
        let rv = Int(gtk_entry_get_max_width_chars(entry_ptr))
        return rv
    }

    /// Gets the value set by `gtk_entry_set_overwrite_mode()`.
    @inlinable func getOverwriteMode() -> Bool {
        let rv = ((gtk_entry_get_overwrite_mode(entry_ptr)) != 0)
        return rv
    }

    /// Retrieves the text that will be displayed when `entry` is empty and unfocused
    @inlinable func getPlaceholderText() -> String! {
        let rv = gtk_entry_get_placeholder_text(entry_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns the current fraction of the task that’s been completed.
    /// See `gtk_entry_set_progress_fraction()`.
    @inlinable func getProgressFraction() -> Double {
        let rv = Double(gtk_entry_get_progress_fraction(entry_ptr))
        return rv
    }

    /// Retrieves the pulse step set with `gtk_entry_set_progress_pulse_step()`.
    @inlinable func getProgressPulseStep() -> Double {
        let rv = Double(gtk_entry_get_progress_pulse_step(entry_ptr))
        return rv
    }

    /// Gets the tabstops that were set on the entry using `gtk_entry_set_tabs()`, if
    /// any.
    @inlinable func getTabs() -> Pango.TabArrayRef! {
        let rv = Pango.TabArrayRef(gtk_entry_get_tabs(entry_ptr))
        return rv
    }

    /// Retrieves the contents of the entry widget.
    /// See also `gtk_editable_get_chars()`.
    /// 
    /// This is equivalent to getting `entry`'s `GtkEntryBuffer` and calling
    /// `gtk_entry_buffer_get_text()` on it.
    @inlinable func getText() -> String! {
        let rv = gtk_entry_get_text(entry_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the area where the entry’s text is drawn. This function is
    /// useful when drawing something to the entry in a draw callback.
    /// 
    /// If the entry is not realized, `text_area` is filled with zeros.
    /// 
    /// See also `gtk_entry_get_icon_area()`.
    @inlinable func get<RectangleT: Gdk.RectangleProtocol>(textArea: RectangleT) {
        gtk_entry_get_text_area(entry_ptr, textArea.rectangle_ptr)
    
    }

    /// Retrieves the current length of the text in
    /// `entry`.
    /// 
    /// This is equivalent to getting `entry`'s `GtkEntryBuffer` and
    /// calling `gtk_entry_buffer_get_length()` on it.
    @inlinable func getTextLength() -> guint16 {
        let rv = gtk_entry_get_text_length(entry_ptr)
        return rv
    }

    /// Retrieves whether the text in `entry` is visible. See
    /// `gtk_entry_set_visibility()`.
    @inlinable func getVisibility() -> Bool {
        let rv = ((gtk_entry_get_visibility(entry_ptr)) != 0)
        return rv
    }

    /// Gets the value set by `gtk_entry_set_width_chars()`.
    @inlinable func getWidthChars() -> Int {
        let rv = Int(gtk_entry_get_width_chars(entry_ptr))
        return rv
    }

    /// Causes `entry` to have keyboard focus.
    /// 
    /// It behaves like `gtk_widget_grab_focus()`,
    /// except that it doesn't select the contents of the entry.
    /// You only want to call this on some special entries
    /// which the user usually doesn't want to replace all text in,
    /// such as search-as-you-type entries.
    @inlinable func grabFocusWithoutSelecting() {
        gtk_entry_grab_focus_without_selecting(entry_ptr)
    
    }

    /// Allow the `GtkEntry` input method to internally handle key press
    /// and release events. If this function returns `true`, then no further
    /// processing should be done for this key event. See
    /// `gtk_im_context_filter_keypress()`.
    /// 
    /// Note that you are expected to call this function from your handler
    /// when overriding key event handling. This is needed in the case when
    /// you need to insert your own key handling between the input method
    /// and the default key event handling of the `GtkEntry`.
    /// See `gtk_text_view_reset_im_context()` for an example of use.
    @inlinable func imContextFilterKeypress<EventKeyT: Gdk.EventKeyProtocol>(event: EventKeyT) -> Bool {
        let rv = ((gtk_entry_im_context_filter_keypress(entry_ptr, event._ptr)) != 0)
        return rv
    }

    /// Converts from a position in the entry’s `PangoLayout` (returned by
    /// `gtk_entry_get_layout()`) to a position in the entry contents
    /// (returned by `gtk_entry_get_text()`).
    @inlinable func layoutIndexToTextIndex(layoutIndex: Int) -> Int {
        let rv = Int(gtk_entry_layout_index_to_text_index(entry_ptr, gint(layoutIndex)))
        return rv
    }

    /// Indicates that some progress is made, but you don’t know how much.
    /// Causes the entry’s progress indicator to enter “activity mode,”
    /// where a block bounces back and forth. Each call to
    /// `gtk_entry_progress_pulse()` causes the block to move by a little bit
    /// (the amount of movement per pulse is determined by
    /// `gtk_entry_set_progress_pulse_step()`).
    @inlinable func progressPulse() {
        gtk_entry_progress_pulse(entry_ptr)
    
    }

    /// Reset the input method context of the entry if needed.
    /// 
    /// This can be necessary in the case where modifying the buffer
    /// would confuse on-going input method behavior.
    @inlinable func resetImContext() {
        gtk_entry_reset_im_context(entry_ptr)
    
    }

    /// If `setting` is `true`, pressing Enter in the `entry` will activate the default
    /// widget for the window containing the entry. This usually means that
    /// the dialog box containing the entry will be closed, since the default
    /// widget is usually one of the dialog buttons.
    /// 
    /// (For experts: if `setting` is `true`, the entry calls
    /// `gtk_window_activate_default()` on the window containing the entry, in
    /// the default handler for the `GtkEntry::activate` signal.)
    @inlinable func setActivatesDefault(setting: Bool) {
        gtk_entry_set_activates_default(entry_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Sets the alignment for the contents of the entry. This controls
    /// the horizontal positioning of the contents when the displayed
    /// text is shorter than the width of the entry.
    @inlinable func setAlignment(xalign: Double) {
        gtk_entry_set_alignment(entry_ptr, gfloat(xalign))
    
    }

    /// Sets a `PangoAttrList`; the attributes in the list are applied to the
    /// entry text.
    @inlinable func setAttributes<AttrListT: Pango.AttrListProtocol>(attrs: AttrListT) {
        gtk_entry_set_attributes(entry_ptr, attrs.attr_list_ptr)
    
    }

    /// Set the `GtkEntryBuffer` object which holds the text for
    /// this widget.
    @inlinable func set<EntryBufferT: EntryBufferProtocol>(buffer: EntryBufferT) {
        gtk_entry_set_buffer(entry_ptr, buffer.entry_buffer_ptr)
    
    }

    /// Sets `completion` to be the auxiliary completion object to use with `entry`.
    /// All further configuration of the completion mechanism is done on
    /// `completion` using the `GtkEntryCompletion` API. Completion is disabled if
    /// `completion` is set to `nil`.
    @inlinable func set(completion: EntryCompletionRef? = nil) {
        gtk_entry_set_completion(entry_ptr, completion?.entry_completion_ptr)
    
    }
    /// Sets `completion` to be the auxiliary completion object to use with `entry`.
    /// All further configuration of the completion mechanism is done on
    /// `completion` using the `GtkEntryCompletion` API. Completion is disabled if
    /// `completion` is set to `nil`.
    @inlinable func set<EntryCompletionT: EntryCompletionProtocol>(completion: EntryCompletionT?) {
        gtk_entry_set_completion(entry_ptr, completion?.entry_completion_ptr)
    
    }

    /// Hooks up an adjustment to the cursor position in an entry, so that when
    /// the cursor is moved, the adjustment is scrolled to show that position.
    /// See `gtk_scrolled_window_get_hadjustment()` for a typical way of obtaining
    /// the adjustment.
    /// 
    /// The adjustment has to be in pixel units and in the same coordinate system
    /// as the entry.
    @inlinable func setCursorHadjustment(adjustment: AdjustmentRef? = nil) {
        gtk_entry_set_cursor_hadjustment(entry_ptr, adjustment?.adjustment_ptr)
    
    }
    /// Hooks up an adjustment to the cursor position in an entry, so that when
    /// the cursor is moved, the adjustment is scrolled to show that position.
    /// See `gtk_scrolled_window_get_hadjustment()` for a typical way of obtaining
    /// the adjustment.
    /// 
    /// The adjustment has to be in pixel units and in the same coordinate system
    /// as the entry.
    @inlinable func setCursorHadjustment<AdjustmentT: AdjustmentProtocol>(adjustment: AdjustmentT?) {
        gtk_entry_set_cursor_hadjustment(entry_ptr, adjustment?.adjustment_ptr)
    
    }

    /// Sets whether the entry has a beveled frame around it.
    @inlinable func setHasFrame(setting: Bool) {
        gtk_entry_set_has_frame(entry_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Sets whether the icon is activatable.
    @inlinable func setIconActivatable(iconPos: GtkEntryIconPosition, activatable: Bool) {
        gtk_entry_set_icon_activatable(entry_ptr, iconPos, gboolean((activatable) ? 1 : 0))
    
    }

    /// Sets up the icon at the given position so that GTK+ will start a drag
    /// operation when the user clicks and drags the icon.
    /// 
    /// To handle the drag operation, you need to connect to the usual
    /// `GtkWidget::drag`-data-get (or possibly `GtkWidget::drag`-data-delete)
    /// signal, and use `gtk_entry_get_current_icon_drag_source()` in
    /// your signal handler to find out if the drag was started from
    /// an icon.
    /// 
    /// By default, GTK+ uses the icon as the drag icon. You can use the
    /// `GtkWidget::drag`-begin signal to set a different icon. Note that you
    /// have to use `g_signal_connect_after()` to ensure that your signal handler
    /// gets executed after the default handler.
    @inlinable func setIconDragSource<TargetListT: TargetListProtocol>(iconPos: GtkEntryIconPosition, targetList: TargetListT, actions: Gdk.DragAction) {
        gtk_entry_set_icon_drag_source(entry_ptr, iconPos, targetList.target_list_ptr, actions.value)
    
    }

    /// Sets the icon shown in the entry at the specified position
    /// from the current icon theme.
    /// If the icon isn’t known, a “broken image” icon will be displayed
    /// instead.
    /// 
    /// If `icon` is `nil`, no icon will be shown in the specified position.
    @inlinable func setIconFromIcon(iconPos: GtkEntryIconPosition, icon: GIO.IconRef? = nil) {
        gtk_entry_set_icon_from_gicon(entry_ptr, iconPos, icon?.icon_ptr)
    
    }
    /// Sets the icon shown in the entry at the specified position
    /// from the current icon theme.
    /// If the icon isn’t known, a “broken image” icon will be displayed
    /// instead.
    /// 
    /// If `icon` is `nil`, no icon will be shown in the specified position.
    @inlinable func setIconFromIcon<IconT: GIO.IconProtocol>(iconPos: GtkEntryIconPosition, icon: IconT?) {
        gtk_entry_set_icon_from_gicon(entry_ptr, iconPos, icon?.icon_ptr)
    
    }

    /// Sets the icon shown in the entry at the specified position
    /// from the current icon theme.
    /// 
    /// If the icon name isn’t known, a “broken image” icon will be displayed
    /// instead.
    /// 
    /// If `icon_name` is `nil`, no icon will be shown in the specified position.
    @inlinable func setIconFromIconName(iconPos: GtkEntryIconPosition, iconName: UnsafePointer<gchar>? = nil) {
        gtk_entry_set_icon_from_icon_name(entry_ptr, iconPos, iconName)
    
    }

    /// Sets the icon shown in the specified position using a pixbuf.
    /// 
    /// If `pixbuf` is `nil`, no icon will be shown in the specified position.
    @inlinable func setIconFromPixbuf(iconPos: GtkEntryIconPosition, pixbuf: PixbufRef? = nil) {
        gtk_entry_set_icon_from_pixbuf(entry_ptr, iconPos, pixbuf?.pixbuf_ptr)
    
    }
    /// Sets the icon shown in the specified position using a pixbuf.
    /// 
    /// If `pixbuf` is `nil`, no icon will be shown in the specified position.
    @inlinable func setIconFromPixbuf<PixbufT: PixbufProtocol>(iconPos: GtkEntryIconPosition, pixbuf: PixbufT?) {
        gtk_entry_set_icon_from_pixbuf(entry_ptr, iconPos, pixbuf?.pixbuf_ptr)
    
    }

    /// Sets the icon shown in the entry at the specified position from
    /// a stock image.
    /// 
    /// If `stock_id` is `nil`, no icon will be shown in the specified position.
    ///
    /// **set_icon_from_stock is deprecated:**
    /// Use gtk_entry_set_icon_from_icon_name() instead.
    @available(*, deprecated)
    @inlinable func setIconFromStock(iconPos: GtkEntryIconPosition, stockID: UnsafePointer<gchar>? = nil) {
        gtk_entry_set_icon_from_stock(entry_ptr, iconPos, stockID)
    
    }

    /// Sets the sensitivity for the specified icon.
    @inlinable func setIconSensitive(iconPos: GtkEntryIconPosition, sensitive: Bool) {
        gtk_entry_set_icon_sensitive(entry_ptr, iconPos, gboolean((sensitive) ? 1 : 0))
    
    }

    /// Sets `tooltip` as the contents of the tooltip for the icon at
    /// the specified position. `tooltip` is assumed to be marked up with
    /// the [Pango text markup language](#PangoMarkupFormat).
    /// 
    /// Use `nil` for `tooltip` to remove an existing tooltip.
    /// 
    /// See also `gtk_widget_set_tooltip_markup()` and
    /// `gtk_entry_set_icon_tooltip_text()`.
    @inlinable func setIconTooltipMarkup(iconPos: GtkEntryIconPosition, tooltip: UnsafePointer<gchar>? = nil) {
        gtk_entry_set_icon_tooltip_markup(entry_ptr, iconPos, tooltip)
    
    }

    /// Sets `tooltip` as the contents of the tooltip for the icon
    /// at the specified position.
    /// 
    /// Use `nil` for `tooltip` to remove an existing tooltip.
    /// 
    /// See also `gtk_widget_set_tooltip_text()` and
    /// `gtk_entry_set_icon_tooltip_markup()`.
    /// 
    /// If you unset the widget tooltip via `gtk_widget_set_tooltip_text()` or
    /// `gtk_widget_set_tooltip_markup()`, this sets GtkWidget:has-tooltip to `false`,
    /// which suppresses icon tooltips too. You can resolve this by then calling
    /// `gtk_widget_set_has_tooltip()` to set GtkWidget:has-tooltip back to `true`, or
    /// setting at least one non-empty tooltip on any icon achieves the same result.
    @inlinable func setIconTooltipText(iconPos: GtkEntryIconPosition, tooltip: UnsafePointer<gchar>? = nil) {
        gtk_entry_set_icon_tooltip_text(entry_ptr, iconPos, tooltip)
    
    }

    /// Sets `entry`’s inner-border property to `border`, or clears it if `nil`
    /// is passed. The inner-border is the area around the entry’s text, but
    /// inside its frame.
    /// 
    /// If set, this property overrides the inner-border style property.
    /// Overriding the style-provided border is useful when you want to do
    /// in-place editing of some text in a canvas or list widget, where
    /// pixel-exact positioning of the entry is important.
    ///
    /// **set_inner_border is deprecated:**
    /// Use the standard border and padding CSS properties (through
    ///   objects like #GtkStyleContext and #GtkCssProvider); the value set with
    ///   this function is ignored by #GtkEntry.
    @available(*, deprecated)
    @inlinable func setInner(border: BorderRef? = nil) {
        gtk_entry_set_inner_border(entry_ptr, border?.border_ptr)
    
    }
    /// Sets `entry`’s inner-border property to `border`, or clears it if `nil`
    /// is passed. The inner-border is the area around the entry’s text, but
    /// inside its frame.
    /// 
    /// If set, this property overrides the inner-border style property.
    /// Overriding the style-provided border is useful when you want to do
    /// in-place editing of some text in a canvas or list widget, where
    /// pixel-exact positioning of the entry is important.
    ///
    /// **set_inner_border is deprecated:**
    /// Use the standard border and padding CSS properties (through
    ///   objects like #GtkStyleContext and #GtkCssProvider); the value set with
    ///   this function is ignored by #GtkEntry.
    @available(*, deprecated)
    @inlinable func setInner<BorderT: BorderProtocol>(border: BorderT?) {
        gtk_entry_set_inner_border(entry_ptr, border?.border_ptr)
    
    }

    /// Sets the `GtkEntry:input`-hints property, which
    /// allows input methods to fine-tune their behaviour.
    @inlinable func setInput(hints: InputHints) {
        gtk_entry_set_input_hints(entry_ptr, hints.value)
    
    }

    /// Sets the `GtkEntry:input`-purpose property which
    /// can be used by on-screen keyboards and other input
    /// methods to adjust their behaviour.
    @inlinable func setInput(purpose: GtkInputPurpose) {
        gtk_entry_set_input_purpose(entry_ptr, purpose)
    
    }

    /// Sets the character to use in place of the actual text when
    /// `gtk_entry_set_visibility()` has been called to set text visibility
    /// to `false`. i.e. this is the character used in “password mode” to
    /// show the user how many characters have been typed. By default, GTK+
    /// picks the best invisible char available in the current font. If you
    /// set the invisible char to 0, then the user will get no feedback
    /// at all; there will be no text on the screen as they type.
    @inlinable func setInvisibleChar(ch: gunichar) {
        gtk_entry_set_invisible_char(entry_ptr, ch)
    
    }

    /// Sets the maximum allowed length of the contents of the widget. If
    /// the current contents are longer than the given length, then they
    /// will be truncated to fit.
    /// 
    /// This is equivalent to getting `entry`'s `GtkEntryBuffer` and
    /// calling `gtk_entry_buffer_set_max_length()` on it.
    /// ]|
    @inlinable func setMaxLength(max: Int) {
        gtk_entry_set_max_length(entry_ptr, gint(max))
    
    }

    /// Sets the desired maximum width in characters of `entry`.
    @inlinable func setMaxWidthChars(nChars: Int) {
        gtk_entry_set_max_width_chars(entry_ptr, gint(nChars))
    
    }

    /// Sets whether the text is overwritten when typing in the `GtkEntry`.
    @inlinable func setOverwriteMode(overwrite: Bool) {
        gtk_entry_set_overwrite_mode(entry_ptr, gboolean((overwrite) ? 1 : 0))
    
    }

    /// Sets text to be displayed in `entry` when it is empty and unfocused.
    /// This can be used to give a visual hint of the expected contents of
    /// the `GtkEntry`.
    /// 
    /// Note that since the placeholder text gets removed when the entry
    /// received focus, using this feature is a bit problematic if the entry
    /// is given the initial focus in a window. Sometimes this can be
    /// worked around by delaying the initial focus setting until the
    /// first key event arrives.
    @inlinable func setPlaceholder(text: UnsafePointer<gchar>? = nil) {
        gtk_entry_set_placeholder_text(entry_ptr, text)
    
    }

    /// Causes the entry’s progress indicator to “fill in” the given
    /// fraction of the bar. The fraction should be between 0.0 and 1.0,
    /// inclusive.
    @inlinable func setProgress(fraction: Double) {
        gtk_entry_set_progress_fraction(entry_ptr, gdouble(fraction))
    
    }

    /// Sets the fraction of total entry width to move the progress
    /// bouncing block for each call to `gtk_entry_progress_pulse()`.
    @inlinable func setProgressPulseStep(fraction: Double) {
        gtk_entry_set_progress_pulse_step(entry_ptr, gdouble(fraction))
    
    }

    /// Sets a `PangoTabArray`; the tabstops in the array are applied to the entry
    /// text.
    @inlinable func set<TabArrayT: Pango.TabArrayProtocol>(tabs: TabArrayT) {
        gtk_entry_set_tabs(entry_ptr, tabs.tab_array_ptr)
    
    }

    /// Sets the text in the widget to the given
    /// value, replacing the current contents.
    /// 
    /// See `gtk_entry_buffer_set_text()`.
    @inlinable func set(text: UnsafePointer<gchar>!) {
        gtk_entry_set_text(entry_ptr, text)
    
    }

    /// Sets whether the contents of the entry are visible or not.
    /// When visibility is set to `false`, characters are displayed
    /// as the invisible char, and will also appear that way when
    /// the text in the entry widget is copied elsewhere.
    /// 
    /// By default, GTK+ picks the best invisible character available
    /// in the current font, but it can be changed with
    /// `gtk_entry_set_invisible_char()`.
    /// 
    /// Note that you probably want to set `GtkEntry:input`-purpose
    /// to `GTK_INPUT_PURPOSE_PASSWORD` or `GTK_INPUT_PURPOSE_PIN` to
    /// inform input methods about the purpose of this entry,
    /// in addition to setting visibility to `false`.
    @inlinable func setVisibility(visible: Bool) {
        gtk_entry_set_visibility(entry_ptr, gboolean((visible) ? 1 : 0))
    
    }

    /// Changes the size request of the entry to be about the right size
    /// for `n_chars` characters. Note that it changes the size
    /// request, the size can still be affected by
    /// how you pack the widget into containers. If `n_chars` is -1, the
    /// size reverts to the default entry size.
    @inlinable func setWidthChars(nChars: Int) {
        gtk_entry_set_width_chars(entry_ptr, gint(nChars))
    
    }

    /// Converts from a position in the entry contents (returned
    /// by `gtk_entry_get_text()`) to a position in the
    /// entry’s `PangoLayout` (returned by `gtk_entry_get_layout()`,
    /// with text retrieved via `pango_layout_get_text()`).
    @inlinable func textIndexToLayoutIndex(textIndex: Int) -> Int {
        let rv = Int(gtk_entry_text_index_to_layout_index(entry_ptr, gint(textIndex)))
        return rv
    }

    /// Unsets the invisible char previously set with
    /// `gtk_entry_set_invisible_char()`. So that the
    /// default invisible char is used again.
    @inlinable func unsetInvisibleChar() {
        gtk_entry_unset_invisible_char(entry_ptr)
    
    }
    /// Retrieves the value set by `gtk_entry_set_activates_default()`.
    @inlinable var activatesDefault: Bool {
        /// Retrieves the value set by `gtk_entry_set_activates_default()`.
        get {
            let rv = ((gtk_entry_get_activates_default(entry_ptr)) != 0)
            return rv
        }
        /// If `setting` is `true`, pressing Enter in the `entry` will activate the default
        /// widget for the window containing the entry. This usually means that
        /// the dialog box containing the entry will be closed, since the default
        /// widget is usually one of the dialog buttons.
        /// 
        /// (For experts: if `setting` is `true`, the entry calls
        /// `gtk_window_activate_default()` on the window containing the entry, in
        /// the default handler for the `GtkEntry::activate` signal.)
        nonmutating set {
            gtk_entry_set_activates_default(entry_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the value set by `gtk_entry_set_alignment()`.
    @inlinable var alignment: Double {
        /// Gets the value set by `gtk_entry_set_alignment()`.
        get {
            let rv = Double(gtk_entry_get_alignment(entry_ptr))
            return rv
        }
        /// Sets the alignment for the contents of the entry. This controls
        /// the horizontal positioning of the contents when the displayed
        /// text is shorter than the width of the entry.
        nonmutating set {
            gtk_entry_set_alignment(entry_ptr, gfloat(newValue))
        }
    }

    /// A list of Pango attributes to apply to the text of the entry.
    /// 
    /// This is mainly useful to change the size or weight of the text.
    /// 
    /// The `PangoAttribute`'s `start_index` and `end_index` must refer to the
    /// `GtkEntryBuffer` text, i.e. without the preedit string.
    @inlinable var attributes: Pango.AttrListRef! {
        /// Gets the attribute list that was set on the entry using
        /// `gtk_entry_set_attributes()`, if any.
        get {
            let rv = Pango.AttrListRef(gtk_entry_get_attributes(entry_ptr))
            return rv
        }
        /// Sets a `PangoAttrList`; the attributes in the list are applied to the
        /// entry text.
        nonmutating set {
            gtk_entry_set_attributes(entry_ptr, UnsafeMutablePointer<PangoAttrList>(newValue?.attr_list_ptr))
        }
    }

    @inlinable var buffer: EntryBufferRef! {
        /// Get the `GtkEntryBuffer` object which holds the text for
        /// this widget.
        get {
            let rv = EntryBufferRef(gconstpointer: gconstpointer(gtk_entry_get_buffer(entry_ptr)))
            return rv
        }
        /// Set the `GtkEntryBuffer` object which holds the text for
        /// this widget.
        nonmutating set {
            gtk_entry_set_buffer(entry_ptr, UnsafeMutablePointer<GtkEntryBuffer>(newValue?.entry_buffer_ptr))
        }
    }

    /// The auxiliary completion object to use with the entry.
    @inlinable var completion: EntryCompletionRef! {
        /// Returns the auxiliary completion object currently in use by `entry`.
        get {
            let rv = EntryCompletionRef(gconstpointer: gconstpointer(gtk_entry_get_completion(entry_ptr)))
            return rv
        }
        /// Sets `completion` to be the auxiliary completion object to use with `entry`.
        /// All further configuration of the completion mechanism is done on
        /// `completion` using the `GtkEntryCompletion` API. Completion is disabled if
        /// `completion` is set to `nil`.
        nonmutating set {
            gtk_entry_set_completion(entry_ptr, UnsafeMutablePointer<GtkEntryCompletion>(newValue?.entry_completion_ptr))
        }
    }

    /// Returns the index of the icon which is the source of the current
    /// DND operation, or -1.
    /// 
    /// This function is meant to be used in a `GtkWidget::drag`-data-get
    /// callback.
    @inlinable var currentIconDragSource: Int {
        /// Returns the index of the icon which is the source of the current
        /// DND operation, or -1.
        /// 
        /// This function is meant to be used in a `GtkWidget::drag`-data-get
        /// callback.
        get {
            let rv = Int(gtk_entry_get_current_icon_drag_source(entry_ptr))
            return rv
        }
    }

    /// Retrieves the horizontal cursor adjustment for the entry.
    /// See `gtk_entry_set_cursor_hadjustment()`.
    @inlinable var cursorHadjustment: AdjustmentRef! {
        /// Retrieves the horizontal cursor adjustment for the entry.
        /// See `gtk_entry_set_cursor_hadjustment()`.
        get {
            let rv = AdjustmentRef(gconstpointer: gconstpointer(gtk_entry_get_cursor_hadjustment(entry_ptr)))
            return rv
        }
        /// Hooks up an adjustment to the cursor position in an entry, so that when
        /// the cursor is moved, the adjustment is scrolled to show that position.
        /// See `gtk_scrolled_window_get_hadjustment()` for a typical way of obtaining
        /// the adjustment.
        /// 
        /// The adjustment has to be in pixel units and in the same coordinate system
        /// as the entry.
        nonmutating set {
            gtk_entry_set_cursor_hadjustment(entry_ptr, UnsafeMutablePointer<GtkAdjustment>(newValue?.adjustment_ptr))
        }
    }

    /// Gets the value set by `gtk_entry_set_has_frame()`.
    @inlinable var hasFrame: Bool {
        /// Gets the value set by `gtk_entry_set_has_frame()`.
        get {
            let rv = ((gtk_entry_get_has_frame(entry_ptr)) != 0)
            return rv
        }
        /// Sets whether the entry has a beveled frame around it.
        nonmutating set {
            gtk_entry_set_has_frame(entry_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// This function returns the entry’s `GtkEntry:inner`-border property. See
    /// `gtk_entry_set_inner_border()` for more information.
    ///
    /// **get_inner_border is deprecated:**
    /// Use the standard border and padding CSS properties (through
    ///   objects like #GtkStyleContext and #GtkCssProvider); the value returned by
    ///   this function is ignored by #GtkEntry.
    @inlinable var innerBorder: BorderRef! {
        /// This function returns the entry’s `GtkEntry:inner`-border property. See
        /// `gtk_entry_set_inner_border()` for more information.
        ///
        /// **get_inner_border is deprecated:**
        /// Use the standard border and padding CSS properties (through
        ///   objects like #GtkStyleContext and #GtkCssProvider); the value returned by
        ///   this function is ignored by #GtkEntry.
        @available(*, deprecated)
    get {
            let rv = BorderRef(gconstpointer: gconstpointer(gtk_entry_get_inner_border(entry_ptr)))
            return rv
        }
        /// Sets `entry`’s inner-border property to `border`, or clears it if `nil`
        /// is passed. The inner-border is the area around the entry’s text, but
        /// inside its frame.
        /// 
        /// If set, this property overrides the inner-border style property.
        /// Overriding the style-provided border is useful when you want to do
        /// in-place editing of some text in a canvas or list widget, where
        /// pixel-exact positioning of the entry is important.
        ///
        /// **set_inner_border is deprecated:**
        /// Use the standard border and padding CSS properties (through
        ///   objects like #GtkStyleContext and #GtkCssProvider); the value set with
        ///   this function is ignored by #GtkEntry.
        @available(*, deprecated)
    nonmutating set {
            gtk_entry_set_inner_border(entry_ptr, UnsafePointer<GtkBorder>(newValue?.border_ptr))
        }
    }

    /// Gets the value of the `GtkEntry:input`-hints property.
    @inlinable var inputHints: InputHints {
        /// Gets the value of the `GtkEntry:input`-hints property.
        get {
            let rv = InputHints(gtk_entry_get_input_hints(entry_ptr))
            return rv
        }
        /// Sets the `GtkEntry:input`-hints property, which
        /// allows input methods to fine-tune their behaviour.
        nonmutating set {
            gtk_entry_set_input_hints(entry_ptr, newValue.value)
        }
    }

    /// Gets the value of the `GtkEntry:input`-purpose property.
    @inlinable var inputPurpose: GtkInputPurpose {
        /// Gets the value of the `GtkEntry:input`-purpose property.
        get {
            let rv = gtk_entry_get_input_purpose(entry_ptr)
            return rv
        }
        /// Sets the `GtkEntry:input`-purpose property which
        /// can be used by on-screen keyboards and other input
        /// methods to adjust their behaviour.
        nonmutating set {
            gtk_entry_set_input_purpose(entry_ptr, newValue)
        }
    }

    /// Retrieves the character displayed in place of the real characters
    /// for entries with visibility set to false. See `gtk_entry_set_invisible_char()`.
    @inlinable var invisibleChar: gunichar {
        /// Retrieves the character displayed in place of the real characters
        /// for entries with visibility set to false. See `gtk_entry_set_invisible_char()`.
        get {
            let rv = gtk_entry_get_invisible_char(entry_ptr)
            return rv
        }
        /// Sets the character to use in place of the actual text when
        /// `gtk_entry_set_visibility()` has been called to set text visibility
        /// to `false`. i.e. this is the character used in “password mode” to
        /// show the user how many characters have been typed. By default, GTK+
        /// picks the best invisible char available in the current font. If you
        /// set the invisible char to 0, then the user will get no feedback
        /// at all; there will be no text on the screen as they type.
        nonmutating set {
            gtk_entry_set_invisible_char(entry_ptr, newValue)
        }
    }

    /// Gets the `PangoLayout` used to display the entry.
    /// The layout is useful to e.g. convert text positions to
    /// pixel positions, in combination with `gtk_entry_get_layout_offsets()`.
    /// The returned layout is owned by the entry and must not be
    /// modified or freed by the caller.
    /// 
    /// Keep in mind that the layout text may contain a preedit string, so
    /// `gtk_entry_layout_index_to_text_index()` and
    /// `gtk_entry_text_index_to_layout_index()` are needed to convert byte
    /// indices in the layout to byte indices in the entry contents.
    @inlinable var layout: Pango.LayoutRef! {
        /// Gets the `PangoLayout` used to display the entry.
        /// The layout is useful to e.g. convert text positions to
        /// pixel positions, in combination with `gtk_entry_get_layout_offsets()`.
        /// The returned layout is owned by the entry and must not be
        /// modified or freed by the caller.
        /// 
        /// Keep in mind that the layout text may contain a preedit string, so
        /// `gtk_entry_layout_index_to_text_index()` and
        /// `gtk_entry_text_index_to_layout_index()` are needed to convert byte
        /// indices in the layout to byte indices in the entry contents.
        get {
            let rv = Pango.LayoutRef(gtk_entry_get_layout(entry_ptr))
            return rv
        }
    }

    /// Retrieves the maximum allowed length of the text in
    /// `entry`. See `gtk_entry_set_max_length()`.
    /// 
    /// This is equivalent to getting `entry`'s `GtkEntryBuffer` and
    /// calling `gtk_entry_buffer_get_max_length()` on it.
    @inlinable var maxLength: Int {
        /// Retrieves the maximum allowed length of the text in
        /// `entry`. See `gtk_entry_set_max_length()`.
        /// 
        /// This is equivalent to getting `entry`'s `GtkEntryBuffer` and
        /// calling `gtk_entry_buffer_get_max_length()` on it.
        get {
            let rv = Int(gtk_entry_get_max_length(entry_ptr))
            return rv
        }
        /// Sets the maximum allowed length of the contents of the widget. If
        /// the current contents are longer than the given length, then they
        /// will be truncated to fit.
        /// 
        /// This is equivalent to getting `entry`'s `GtkEntryBuffer` and
        /// calling `gtk_entry_buffer_set_max_length()` on it.
        /// ]|
        nonmutating set {
            gtk_entry_set_max_length(entry_ptr, gint(newValue))
        }
    }

    /// Retrieves the desired maximum width of `entry`, in characters.
    /// See `gtk_entry_set_max_width_chars()`.
    @inlinable var maxWidthChars: Int {
        /// Retrieves the desired maximum width of `entry`, in characters.
        /// See `gtk_entry_set_max_width_chars()`.
        get {
            let rv = Int(gtk_entry_get_max_width_chars(entry_ptr))
            return rv
        }
        /// Sets the desired maximum width in characters of `entry`.
        nonmutating set {
            gtk_entry_set_max_width_chars(entry_ptr, gint(newValue))
        }
    }

    /// Gets the value set by `gtk_entry_set_overwrite_mode()`.
    @inlinable var overwriteMode: Bool {
        /// Gets the value set by `gtk_entry_set_overwrite_mode()`.
        get {
            let rv = ((gtk_entry_get_overwrite_mode(entry_ptr)) != 0)
            return rv
        }
        /// Sets whether the text is overwritten when typing in the `GtkEntry`.
        nonmutating set {
            gtk_entry_set_overwrite_mode(entry_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Retrieves the text that will be displayed when `entry` is empty and unfocused
    @inlinable var placeholderText: String! {
        /// Retrieves the text that will be displayed when `entry` is empty and unfocused
        get {
            let rv = gtk_entry_get_placeholder_text(entry_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets text to be displayed in `entry` when it is empty and unfocused.
        /// This can be used to give a visual hint of the expected contents of
        /// the `GtkEntry`.
        /// 
        /// Note that since the placeholder text gets removed when the entry
        /// received focus, using this feature is a bit problematic if the entry
        /// is given the initial focus in a window. Sometimes this can be
        /// worked around by delaying the initial focus setting until the
        /// first key event arrives.
        nonmutating set {
            gtk_entry_set_placeholder_text(entry_ptr, newValue)
        }
    }

    /// Returns the current fraction of the task that’s been completed.
    /// See `gtk_entry_set_progress_fraction()`.
    @inlinable var progressFraction: Double {
        /// Returns the current fraction of the task that’s been completed.
        /// See `gtk_entry_set_progress_fraction()`.
        get {
            let rv = Double(gtk_entry_get_progress_fraction(entry_ptr))
            return rv
        }
        /// Causes the entry’s progress indicator to “fill in” the given
        /// fraction of the bar. The fraction should be between 0.0 and 1.0,
        /// inclusive.
        nonmutating set {
            gtk_entry_set_progress_fraction(entry_ptr, gdouble(newValue))
        }
    }

    /// Retrieves the pulse step set with `gtk_entry_set_progress_pulse_step()`.
    @inlinable var progressPulseStep: Double {
        /// Retrieves the pulse step set with `gtk_entry_set_progress_pulse_step()`.
        get {
            let rv = Double(gtk_entry_get_progress_pulse_step(entry_ptr))
            return rv
        }
        /// Sets the fraction of total entry width to move the progress
        /// bouncing block for each call to `gtk_entry_progress_pulse()`.
        nonmutating set {
            gtk_entry_set_progress_pulse_step(entry_ptr, gdouble(newValue))
        }
    }

    @inlinable var tabs: Pango.TabArrayRef! {
        /// Gets the tabstops that were set on the entry using `gtk_entry_set_tabs()`, if
        /// any.
        get {
            let rv = Pango.TabArrayRef(gtk_entry_get_tabs(entry_ptr))
            return rv
        }
        /// Sets a `PangoTabArray`; the tabstops in the array are applied to the entry
        /// text.
        nonmutating set {
            gtk_entry_set_tabs(entry_ptr, UnsafeMutablePointer<PangoTabArray>(newValue?.tab_array_ptr))
        }
    }

    @inlinable var text: String! {
        /// Retrieves the contents of the entry widget.
        /// See also `gtk_editable_get_chars()`.
        /// 
        /// This is equivalent to getting `entry`'s `GtkEntryBuffer` and calling
        /// `gtk_entry_buffer_get_text()` on it.
        get {
            let rv = gtk_entry_get_text(entry_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the text in the widget to the given
        /// value, replacing the current contents.
        /// 
        /// See `gtk_entry_buffer_set_text()`.
        nonmutating set {
            gtk_entry_set_text(entry_ptr, newValue)
        }
    }

    /// Retrieves the current length of the text in
    /// `entry`.
    /// 
    /// This is equivalent to getting `entry`'s `GtkEntryBuffer` and
    /// calling `gtk_entry_buffer_get_length()` on it.
    @inlinable var textLength: guint16 {
        /// Retrieves the current length of the text in
        /// `entry`.
        /// 
        /// This is equivalent to getting `entry`'s `GtkEntryBuffer` and
        /// calling `gtk_entry_buffer_get_length()` on it.
        get {
            let rv = gtk_entry_get_text_length(entry_ptr)
            return rv
        }
    }

    @inlinable var visibility: Bool {
        /// Retrieves whether the text in `entry` is visible. See
        /// `gtk_entry_set_visibility()`.
        get {
            let rv = ((gtk_entry_get_visibility(entry_ptr)) != 0)
            return rv
        }
        /// Sets whether the contents of the entry are visible or not.
        /// When visibility is set to `false`, characters are displayed
        /// as the invisible char, and will also appear that way when
        /// the text in the entry widget is copied elsewhere.
        /// 
        /// By default, GTK+ picks the best invisible character available
        /// in the current font, but it can be changed with
        /// `gtk_entry_set_invisible_char()`.
        /// 
        /// Note that you probably want to set `GtkEntry:input`-purpose
        /// to `GTK_INPUT_PURPOSE_PASSWORD` or `GTK_INPUT_PURPOSE_PIN` to
        /// inform input methods about the purpose of this entry,
        /// in addition to setting visibility to `false`.
        nonmutating set {
            gtk_entry_set_visibility(entry_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the value set by `gtk_entry_set_width_chars()`.
    @inlinable var widthChars: Int {
        /// Gets the value set by `gtk_entry_set_width_chars()`.
        get {
            let rv = Int(gtk_entry_get_width_chars(entry_ptr))
            return rv
        }
        /// Changes the size request of the entry to be about the right size
        /// for `n_chars` characters. Note that it changes the size
        /// request, the size can still be affected by
        /// how you pack the widget into containers. If `n_chars` is -1, the
        /// size reverts to the default entry size.
        nonmutating set {
            gtk_entry_set_width_chars(entry_ptr, gint(newValue))
        }
    }

    // var parentInstance is unavailable because parent_instance is private

    // var priv is unavailable because priv is private

}



