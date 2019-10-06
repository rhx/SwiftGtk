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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkDrawingArea` instance.
    var drawing_area_ptr: UnsafeMutablePointer<GtkDrawingArea> { get }
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
public struct DrawingAreaRef: DrawingAreaProtocol {
    /// Untyped pointer to the underlying `GtkDrawingArea` instance.
    /// For type-safe access, use the generated, typed pointer `drawing_area_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DrawingAreaRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkDrawingArea>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DrawingAreaProtocol`
    init<T: DrawingAreaProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new drawing area.
    init() {
        let rv = gtk_drawing_area_new()
        self.init(cast(rv))
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
    /// Ownership is transferred to the `DrawingArea` instance.
    public init(_ op: UnsafeMutablePointer<GtkDrawingArea>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `DrawingAreaProtocol`
    /// Will retain `GtkDrawingArea`.
    public convenience init<T: DrawingAreaProtocol>(_ other: T) {
        self.init(cast(other.drawing_area_ptr))
        g_object_ref(cast(drawing_area_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkDrawingArea.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkDrawingArea.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkDrawingArea.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DrawingAreaProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkDrawingArea>(opaquePointer))
    }

    /// Creates a new drawing area.
    public convenience init() {
        let rv = gtk_drawing_area_new()
        self.init(cast(rv))
    }


}

public enum DrawingAreaPropertyName: String, PropertyNameProtocol {
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: DrawingAreaPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(drawing_area_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
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
}

public enum DrawingAreaSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    /// The `button`-press-event signal will be emitted when a button
    /// (typically from a mouse) is pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonPressEvent = "button-press-event"
    /// The `button`-release-event signal will be emitted when a button
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
    /// The `child`-notify signal is emitted for each
    /// [child property](#child-properties)  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// The `composited`-changed signal is emitted when the composited
    /// status of `widgets` screen changes.
    /// See `gdk_screen_is_composited()`.
    ///
    /// **composited-changed is deprecated:**
    /// Use GdkScreen::composited-changed instead.
    case compositedChanged = "composited-changed"
    /// The `configure`-event signal will be emitted when the size, position or
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
    /// The `delete`-event signal is emitted if a user requests that
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
    /// The `destroy`-event signal is emitted when a `GdkWindow` is destroyed.
    /// You rarely get this signal, because most widgets disconnect themselves
    /// from their window before they destroy it, so no widget owns the
    /// window at destroy time.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case destroyEvent = "destroy-event"
    /// The `direction`-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The `drag`-begin signal is emitted on the drag source when a drag is
    /// started. A typical reason to connect to this signal is to set up a
    /// custom drag icon with e.g. `gtk_drag_source_set_icon_pixbuf()`.
    /// 
    /// Note that some widgets set up a drag icon in the default handler of
    /// this signal, so you may have to use `g_signal_connect_after()` to
    /// override what the default handler did.
    case dragBegin = "drag-begin"
    /// The `drag`-data-delete signal is emitted on the drag source when a drag
    /// with the action `GDK_ACTION_MOVE` is successfully completed. The signal
    /// handler is responsible for deleting the data that has been dropped. What
    /// "delete" means depends on the context of the drag operation.
    case dragDataDelete = "drag-data-delete"
    /// The `drag`-data-get signal is emitted on the drag source when the drop
    /// site requests the data which is dragged. It is the responsibility of
    /// the signal handler to fill `data` with the data in the format which
    /// is indicated by `info`. See `gtk_selection_data_set()` and
    /// `gtk_selection_data_set_text()`.
    case dragDataGet = "drag-data-get"
    /// The `drag`-data-received signal is emitted on the drop site when the
    /// dragged data has been received. If the data was received in order to
    /// determine whether the drop will be accepted, the handler is expected
    /// to call `gdk_drag_status()` and not finish the drag.
    /// If the data was received in response to a `GtkWidget::drag`-drop signal
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
    /// The `drag`-drop signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the cursor position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// Otherwise, the handler returns `true`. In this case, the handler must
    /// ensure that `gtk_drag_finish()` is called to let the source know that
    /// the drop is done. The call to `gtk_drag_finish()` can be done either
    /// directly or in a `GtkWidget::drag`-data-received handler which gets
    /// triggered by calling `gtk_drag_get_data()` to receive the data for one
    /// or more of the supported targets.
    case dragDrop = "drag-drop"
    /// The `drag`-end signal is emitted on the drag source when a drag is
    /// finished.  A typical reason to connect to this signal is to undo
    /// things done in `GtkWidget::drag`-begin.
    case dragEnd = "drag-end"
    /// The `drag`-failed signal is emitted on the drag source when a drag has
    /// failed. The signal handler may hook custom code to handle a failed DnD
    /// operation based on the type of error, it returns `true` is the failure has
    /// been already handled (not showing the default "drag operation failed"
    /// animation), otherwise it returns `false`.
    case dragFailed = "drag-failed"
    /// The `drag`-leave signal is emitted on the drop site when the cursor
    /// leaves the widget. A typical reason to connect to this signal is to
    /// undo things done in `GtkWidget::drag`-motion, e.g. undo highlighting
    /// with `gtk_drag_unhighlight()`.
    /// 
    /// 
    /// Likewise, the `GtkWidget::drag`-leave signal is also emitted before the
    /// `drag`-drop signal, for instance to allow cleaning up of a preview item
    /// created in the `GtkWidget::drag`-motion signal handler.
    case dragLeave = "drag-leave"
    /// The `drag`-motion signal is emitted on the drop site when the user
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
    /// defer the `gdk_drag_status()` call to the `GtkWidget::drag`-data-received
    /// handler. Note that you must pass `GTK_DEST_DEFAULT_DROP`,
    /// `GTK_DEST_DEFAULT_MOTION` or `GTK_DEST_DEFAULT_ALL` to `gtk_drag_dest_set()`
    /// when using the drag-motion signal that way.
    /// 
    /// Also note that there is no drag-enter signal. The drag receiver has to
    /// keep track of whether he has received any drag-motion signals since the
    /// last `GtkWidget::drag`-leave and if not, treat the drag-motion signal as
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
    /// The `enter`-notify-event will be emitted when the pointer enters
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
    /// `GtkWidget::key`-press-event) and finally a generic
    /// `GtkWidget::event`-after signal.
    case event = "event"
    /// After the emission of the `GtkWidget::event` signal and (optionally)
    /// the second more specific signal, `event`-after will be emitted
    /// regardless of the previous two signals handlers return values.
    case eventAfter = "event-after"
    case focus = "focus"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The `focus`-in-event signal will be emitted when the keyboard focus
    /// enters the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusInEvent = "focus-in-event"
    /// The `focus`-out-event signal will be emitted when the keyboard focus
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
    /// The `grab`-notify signal is emitted when a widget becomes
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
    /// The `hierarchy`-changed signal is emitted when the
    /// anchored state of a widget changes. A widget is
    /// “anchored” when its toplevel
    /// ancestor is a `GtkWindow`. This signal is emitted when
    /// a widget changes from un-anchored to anchored or vice-versa.
    case hierarchyChanged = "hierarchy-changed"
    /// The `key`-press-event signal is emitted when a key is pressed. The signal
    /// emission will reoccur at the key-repeat rate when the key is kept pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyPressEvent = "key-press-event"
    /// The `key`-release-event signal is emitted when a key is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyReleaseEvent = "key-release-event"
    /// Gets emitted if keyboard navigation fails.
    /// See `gtk_widget_keynav_failed()` for details.
    case keynavFailed = "keynav-failed"
    /// The `leave`-notify-event will be emitted when the pointer leaves
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
    /// are also visible. Once the map has occurred, `GtkWidget::map`-event will
    /// be emitted.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget::unmap`.
    case map = "map"
    /// The `map`-event signal will be emitted when the `widget`'s window is
    /// mapped. A window is mapped when it becomes visible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case mapEvent = "map-event"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// The `motion`-notify-event signal is emitted when the pointer moves
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
    /// The `parent`-set signal is emitted when a new parent
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
    /// The `property`-notify-event signal will be emitted when a property on
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
    /// `GdkWindow`, which means that `gtk_widget_realize()` has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// The `screen`-changed signal gets emitted when the
    /// screen of a widget has changed.
    case screenChanged = "screen-changed"
    /// The `scroll`-event signal is emitted when a button in the 4 to 7
    /// range is pressed. Wheel mice are usually configured to generate
    /// button press events for buttons 4 and 5 when the wheel is turned.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_SCROLL_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case scrollEvent = "scroll-event"
    /// The `selection`-clear-event signal will be emitted when the
    /// the `widget`'s window has lost ownership of a selection.
    case selectionClearEvent = "selection-clear-event"
    case selectionGet = "selection-get"
    case selectionNotifyEvent = "selection-notify-event"
    case selectionReceived = "selection-received"
    /// The `selection`-request-event signal will be emitted when
    /// another client requests ownership of the selection owned by
    /// the `widget`'s window.
    case selectionRequestEvent = "selection-request-event"
    /// The `show` signal is emitted when `widget` is shown, for example with
    /// `gtk_widget_show()`.
    case show = "show"
    case showHelp = "show-help"
    case sizeAllocate = "size-allocate"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The `state`-changed signal is emitted when the widget state changes.
    /// See `gtk_widget_get_state()`.
    ///
    /// **state-changed is deprecated:**
    /// Use #GtkWidget::state-flags-changed instead.
    case stateChanged = "state-changed"
    /// The `state`-flags-changed signal is emitted when the widget state
    /// changes, see `gtk_widget_get_state_flags()`.
    case stateFlagsChanged = "state-flags-changed"
    /// The `style`-set signal is emitted when a new style has been set
    /// on a widget. Note that style-modifying functions like
    /// `gtk_widget_modify_base()` also cause this signal to be emitted.
    /// 
    /// Note that this signal is emitted for changes to the deprecated
    /// `GtkStyle`. To track changes to the `GtkStyleContext` associated
    /// with a widget, use the `GtkWidget::style`-updated signal.
    ///
    /// **style-set is deprecated:**
    /// Use the #GtkWidget::style-updated signal
    case styleSet = "style-set"
    /// The `style`-updated signal is a convenience signal that is emitted when the
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
    /// The `unmap`-event signal will be emitted when the `widget`'s window is
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
    /// The `visibility`-notify-event will be emitted when the `widget`'s
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
    /// The "visible-data-changed" signal is emitted when the visual
    /// appearance of the object changed.
    case visibleDataChanged = "visible-data-changed"
    /// The `window`-state-event will be emitted when the state of the
    /// toplevel window associated to the `widget` changes.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable
    /// this mask automatically for all new windows.
    case windowStateEvent = "window-state-event"
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
    case notifyAppPaintable = "notify::app-paintable"
    case notifyCanDefault = "notify::can-default"
    case notifyCanFocus = "notify::can-focus"
    case notifyCompositeChild = "notify::composite-child"
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
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case notifyHalign = "notify::halign"
    case notifyHasDefault = "notify::has-default"
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case notifyHexpandSet = "notify::hexpand-set"
    case notifyIsFocus = "notify::is-focus"
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
    case notifyName = "notify::name"
    case notifyNoShowAll = "notify::no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case notifyOpacity = "notify::opacity"
    case notifyParent = "notify::parent"
    case notifyReceivesDefault = "notify::receives-default"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case notifyStyle = "notify::style"
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
    /// The widget's window if it is realized, `nil` otherwise.
    case notifyWindow = "notify::window"
}

public extension DrawingAreaProtocol {
    /// Connect a `DrawingAreaSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: DrawingAreaSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(drawing_area_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension DrawingAreaProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkDrawingArea` instance.
    var drawing_area_ptr: UnsafeMutablePointer<GtkDrawingArea> { return ptr.assumingMemoryBound(to: GtkDrawingArea.self) }

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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkEntry` instance.
    var entry_ptr: UnsafeMutablePointer<GtkEntry> { get }
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
public struct EntryRef: EntryProtocol {
    /// Untyped pointer to the underlying `GtkEntry` instance.
    /// For type-safe access, use the generated, typed pointer `entry_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EntryRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkEntry>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EntryProtocol`
    init<T: EntryProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new entry.
    init() {
        let rv = gtk_entry_new()
        self.init(cast(rv))
    }

    /// Creates a new entry with the specified text buffer.
    init(buffer: EntryBufferProtocol) {
        let rv = gtk_entry_new_with_buffer(cast(buffer.ptr))
        self.init(cast(rv))
    }
    /// Creates a new entry with the specified text buffer.
    static func newWith(buffer: EntryBufferProtocol) -> EntryRef! {
        let rv = gtk_entry_new_with_buffer(cast(buffer.ptr))
        return rv.map { EntryRef(cast($0)) }
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
    /// Ownership is transferred to the `Entry` instance.
    public init(_ op: UnsafeMutablePointer<GtkEntry>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `EntryProtocol`
    /// Will retain `GtkEntry`.
    public convenience init<T: EntryProtocol>(_ other: T) {
        self.init(cast(other.entry_ptr))
        g_object_ref(cast(entry_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkEntry.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkEntry.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkEntry.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EntryProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkEntry>(opaquePointer))
    }

    /// Creates a new entry.
    public convenience init() {
        let rv = gtk_entry_new()
        self.init(cast(rv))
    }

    /// Creates a new entry with the specified text buffer.
    public convenience init(buffer: EntryBufferProtocol) {
        let rv = gtk_entry_new_with_buffer(cast(buffer.ptr))
        self.init(cast(rv))
    }

    /// Creates a new entry with the specified text buffer.
    public static func newWith(buffer: EntryBufferProtocol) -> Entry! {
        let rv = gtk_entry_new_with_buffer(cast(buffer.ptr))
        return rv.map { Entry(cast($0)) }
    }

}

public enum EntryPropertyName: String, PropertyNameProtocol {
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: EntryPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(entry_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
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
}

public enum EntrySignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// The `activate` signal is emitted when the user hits
    /// the Enter key.
    /// 
    /// While this signal is used as a
    /// [keybinding signal](#GtkBindingSignal),
    /// it is also commonly used by applications to intercept
    /// activation of entries.
    /// 
    /// The default bindings for this signal are all forms of the Enter key.
    case activate = "activate"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    /// The `backspace` signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user asks for it.
    /// 
    /// The default bindings for this signal are
    /// Backspace and Shift-Backspace.
    case backspace = "backspace"
    /// The `button`-press-event signal will be emitted when a button
    /// (typically from a mouse) is pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonPressEvent = "button-press-event"
    /// The `button`-release-event signal will be emitted when a button
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
    /// The `child`-notify signal is emitted for each
    /// [child property](#child-properties)  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// The `composited`-changed signal is emitted when the composited
    /// status of `widgets` screen changes.
    /// See `gdk_screen_is_composited()`.
    ///
    /// **composited-changed is deprecated:**
    /// Use GdkScreen::composited-changed instead.
    case compositedChanged = "composited-changed"
    /// The `configure`-event signal will be emitted when the size, position or
    /// stacking of the `widget`'s window has changed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case configureEvent = "configure-event"
    /// The `copy`-clipboard signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted to copy the selection to the clipboard.
    /// 
    /// The default bindings for this signal are
    /// Ctrl-c and Ctrl-Insert.
    case copyClipboard = "copy-clipboard"
    /// The `cut`-clipboard signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted to cut the selection to the clipboard.
    /// 
    /// The default bindings for this signal are
    /// Ctrl-x and Shift-Delete.
    case cutClipboard = "cut-clipboard"
    /// Emitted when a redirected window belonging to `widget` gets drawn into.
    /// The region/area members of the event shows what area of the redirected
    /// drawable was drawn into.
    case damageEvent = "damage-event"
    /// The `delete`-event signal is emitted if a user requests that
    /// a toplevel window is closed. The default handler for this signal
    /// destroys the window. Connecting `gtk_widget_hide_on_delete()` to
    /// this signal will cause the window to be hidden instead, so that
    /// it can later be shown again without reconstructing it.
    case deleteEvent = "delete-event"
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
    case deleteFromCursor = "delete-from-cursor"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The `destroy`-event signal is emitted when a `GdkWindow` is destroyed.
    /// You rarely get this signal, because most widgets disconnect themselves
    /// from their window before they destroy it, so no widget owns the
    /// window at destroy time.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case destroyEvent = "destroy-event"
    /// The `direction`-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The `drag`-begin signal is emitted on the drag source when a drag is
    /// started. A typical reason to connect to this signal is to set up a
    /// custom drag icon with e.g. `gtk_drag_source_set_icon_pixbuf()`.
    /// 
    /// Note that some widgets set up a drag icon in the default handler of
    /// this signal, so you may have to use `g_signal_connect_after()` to
    /// override what the default handler did.
    case dragBegin = "drag-begin"
    /// The `drag`-data-delete signal is emitted on the drag source when a drag
    /// with the action `GDK_ACTION_MOVE` is successfully completed. The signal
    /// handler is responsible for deleting the data that has been dropped. What
    /// "delete" means depends on the context of the drag operation.
    case dragDataDelete = "drag-data-delete"
    /// The `drag`-data-get signal is emitted on the drag source when the drop
    /// site requests the data which is dragged. It is the responsibility of
    /// the signal handler to fill `data` with the data in the format which
    /// is indicated by `info`. See `gtk_selection_data_set()` and
    /// `gtk_selection_data_set_text()`.
    case dragDataGet = "drag-data-get"
    /// The `drag`-data-received signal is emitted on the drop site when the
    /// dragged data has been received. If the data was received in order to
    /// determine whether the drop will be accepted, the handler is expected
    /// to call `gdk_drag_status()` and not finish the drag.
    /// If the data was received in response to a `GtkWidget::drag`-drop signal
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
    /// The `drag`-drop signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the cursor position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// Otherwise, the handler returns `true`. In this case, the handler must
    /// ensure that `gtk_drag_finish()` is called to let the source know that
    /// the drop is done. The call to `gtk_drag_finish()` can be done either
    /// directly or in a `GtkWidget::drag`-data-received handler which gets
    /// triggered by calling `gtk_drag_get_data()` to receive the data for one
    /// or more of the supported targets.
    case dragDrop = "drag-drop"
    /// The `drag`-end signal is emitted on the drag source when a drag is
    /// finished.  A typical reason to connect to this signal is to undo
    /// things done in `GtkWidget::drag`-begin.
    case dragEnd = "drag-end"
    /// The `drag`-failed signal is emitted on the drag source when a drag has
    /// failed. The signal handler may hook custom code to handle a failed DnD
    /// operation based on the type of error, it returns `true` is the failure has
    /// been already handled (not showing the default "drag operation failed"
    /// animation), otherwise it returns `false`.
    case dragFailed = "drag-failed"
    /// The `drag`-leave signal is emitted on the drop site when the cursor
    /// leaves the widget. A typical reason to connect to this signal is to
    /// undo things done in `GtkWidget::drag`-motion, e.g. undo highlighting
    /// with `gtk_drag_unhighlight()`.
    /// 
    /// 
    /// Likewise, the `GtkWidget::drag`-leave signal is also emitted before the
    /// `drag`-drop signal, for instance to allow cleaning up of a preview item
    /// created in the `GtkWidget::drag`-motion signal handler.
    case dragLeave = "drag-leave"
    /// The `drag`-motion signal is emitted on the drop site when the user
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
    /// defer the `gdk_drag_status()` call to the `GtkWidget::drag`-data-received
    /// handler. Note that you must pass `GTK_DEST_DEFAULT_DROP`,
    /// `GTK_DEST_DEFAULT_MOTION` or `GTK_DEST_DEFAULT_ALL` to `gtk_drag_dest_set()`
    /// when using the drag-motion signal that way.
    /// 
    /// Also note that there is no drag-enter signal. The drag receiver has to
    /// keep track of whether he has received any drag-motion signals since the
    /// last `GtkWidget::drag`-leave and if not, treat the drag-motion signal as
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
    /// The `enter`-notify-event will be emitted when the pointer enters
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
    /// `GtkWidget::key`-press-event) and finally a generic
    /// `GtkWidget::event`-after signal.
    case event = "event"
    /// After the emission of the `GtkWidget::event` signal and (optionally)
    /// the second more specific signal, `event`-after will be emitted
    /// regardless of the previous two signals handlers return values.
    case eventAfter = "event-after"
    case focus = "focus"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The `focus`-in-event signal will be emitted when the keyboard focus
    /// enters the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusInEvent = "focus-in-event"
    /// The `focus`-out-event signal will be emitted when the keyboard focus
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
    /// The `grab`-notify signal is emitted when a widget becomes
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
    /// The `hierarchy`-changed signal is emitted when the
    /// anchored state of a widget changes. A widget is
    /// “anchored” when its toplevel
    /// ancestor is a `GtkWindow`. This signal is emitted when
    /// a widget changes from un-anchored to anchored or vice-versa.
    case hierarchyChanged = "hierarchy-changed"
    /// The `icon`-press signal is emitted when an activatable icon
    /// is clicked.
    case iconPress = "icon-press"
    /// The `icon`-release signal is emitted on the button release from a
    /// mouse click over an activatable icon.
    case iconRelease = "icon-release"
    /// The `insert`-at-cursor signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user initiates the insertion of a
    /// fixed string at the cursor.
    /// 
    /// This signal has no default bindings.
    case insertAtCursor = "insert-at-cursor"
    /// The `insert`-emoji signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted to present the Emoji chooser for the `entry`.
    /// 
    /// The default bindings for this signal are Ctrl-. and Ctrl-;
    case insertEmoji = "insert-emoji"
    /// The `key`-press-event signal is emitted when a key is pressed. The signal
    /// emission will reoccur at the key-repeat rate when the key is kept pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyPressEvent = "key-press-event"
    /// The `key`-release-event signal is emitted when a key is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyReleaseEvent = "key-release-event"
    /// Gets emitted if keyboard navigation fails.
    /// See `gtk_widget_keynav_failed()` for details.
    case keynavFailed = "keynav-failed"
    /// The `leave`-notify-event will be emitted when the pointer leaves
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
    /// are also visible. Once the map has occurred, `GtkWidget::map`-event will
    /// be emitted.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget::unmap`.
    case map = "map"
    /// The `map`-event signal will be emitted when the `widget`'s window is
    /// mapped. A window is mapped when it becomes visible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case mapEvent = "map-event"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// The `motion`-notify-event signal is emitted when the pointer moves
    /// over the widget's `GdkWindow`.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_POINTER_MOTION_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case motionNotifyEvent = "motion-notify-event"
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
    case moveCursor = "move-cursor"
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
    /// The `parent`-set signal is emitted when a new parent
    /// has been set on a widget.
    case parentSet = "parent-set"
    /// The `paste`-clipboard signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted to paste the contents of the clipboard
    /// into the text view.
    /// 
    /// The default bindings for this signal are
    /// Ctrl-v and Shift-Insert.
    case pasteClipboard = "paste-clipboard"
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
    case populatePopup = "populate-popup"
    /// This signal gets emitted whenever a widget should pop up a context
    /// menu. This usually happens through the standard key binding mechanism;
    /// by pressing a certain key while a widget is focused, the user can cause
    /// the widget to pop up a menu.  For example, the `GtkEntry` widget creates
    /// a menu with clipboard commands. See the
    /// [Popup Menu Migration Checklist](#checklist-popup-menu)
    /// for an example of how to use this signal.
    case popupMenu = "popup-menu"
    /// If an input method is used, the typed text will not immediately
    /// be committed to the buffer. So if you are interested in the text,
    /// connect to this signal.
    case preeditChanged = "preedit-changed"
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
    /// The `property`-notify-event signal will be emitted when a property on
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
    /// `GdkWindow`, which means that `gtk_widget_realize()` has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// The `screen`-changed signal gets emitted when the
    /// screen of a widget has changed.
    case screenChanged = "screen-changed"
    /// The `scroll`-event signal is emitted when a button in the 4 to 7
    /// range is pressed. Wheel mice are usually configured to generate
    /// button press events for buttons 4 and 5 when the wheel is turned.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_SCROLL_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case scrollEvent = "scroll-event"
    /// The `selection`-clear-event signal will be emitted when the
    /// the `widget`'s window has lost ownership of a selection.
    case selectionClearEvent = "selection-clear-event"
    case selectionGet = "selection-get"
    case selectionNotifyEvent = "selection-notify-event"
    case selectionReceived = "selection-received"
    /// The `selection`-request-event signal will be emitted when
    /// another client requests ownership of the selection owned by
    /// the `widget`'s window.
    case selectionRequestEvent = "selection-request-event"
    /// The `show` signal is emitted when `widget` is shown, for example with
    /// `gtk_widget_show()`.
    case show = "show"
    case showHelp = "show-help"
    case sizeAllocate = "size-allocate"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The `state`-changed signal is emitted when the widget state changes.
    /// See `gtk_widget_get_state()`.
    ///
    /// **state-changed is deprecated:**
    /// Use #GtkWidget::state-flags-changed instead.
    case stateChanged = "state-changed"
    /// The `state`-flags-changed signal is emitted when the widget state
    /// changes, see `gtk_widget_get_state_flags()`.
    case stateFlagsChanged = "state-flags-changed"
    /// The `style`-set signal is emitted when a new style has been set
    /// on a widget. Note that style-modifying functions like
    /// `gtk_widget_modify_base()` also cause this signal to be emitted.
    /// 
    /// Note that this signal is emitted for changes to the deprecated
    /// `GtkStyle`. To track changes to the `GtkStyleContext` associated
    /// with a widget, use the `GtkWidget::style`-updated signal.
    ///
    /// **style-set is deprecated:**
    /// Use the #GtkWidget::style-updated signal
    case styleSet = "style-set"
    /// The `style`-updated signal is a convenience signal that is emitted when the
    /// `GtkStyleContext::changed` signal is emitted on the `widget`'s associated
    /// `GtkStyleContext` as returned by `gtk_widget_get_style_context()`.
    /// 
    /// Note that style-modifying functions like `gtk_widget_override_color()` also
    /// cause this signal to be emitted.
    case styleUpdated = "style-updated"
    /// The `toggle`-overwrite signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted to toggle the overwrite mode of the entry.
    /// 
    /// The default bindings for this signal is Insert.
    case toggleOverwrite = "toggle-overwrite"
    case touchEvent = "touch-event"
    /// The `unmap` signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The `unmap`-event signal will be emitted when the `widget`'s window is
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
    /// The `visibility`-notify-event will be emitted when the `widget`'s
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
    /// The "visible-data-changed" signal is emitted when the visual
    /// appearance of the object changed.
    case visibleDataChanged = "visible-data-changed"
    /// The `window`-state-event will be emitted when the state of the
    /// toplevel window associated to the `widget` changes.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable
    /// this mask automatically for all new windows.
    case windowStateEvent = "window-state-event"
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
    case notifyActivatesDefault = "notify::activates-default"
    case notifyAppPaintable = "notify::app-paintable"
    /// A list of Pango attributes to apply to the text of the entry.
    /// 
    /// This is mainly useful to change the size or weight of the text.
    /// 
    /// The `PangoAttribute`'s `start_index` and `end_index` must refer to the
    /// `GtkEntryBuffer` text, i.e. without the preedit string.
    case notifyAttributes = "notify::attributes"
    case notifyBuffer = "notify::buffer"
    case notifyCanDefault = "notify::can-default"
    case notifyCanFocus = "notify::can-focus"
    /// Whether password entries will show a warning when Caps Lock is on.
    /// 
    /// Note that the warning is shown using a secondary icon, and thus
    /// does not work if you are using the secondary icon position for some
    /// other purpose.
    case notifyCapsLockWarning = "notify::caps-lock-warning"
    /// The auxiliary completion object to use with the entry.
    case notifyCompletion = "notify::completion"
    case notifyCompositeChild = "notify::composite-child"
    case notifyCursorPosition = "notify::cursor-position"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case notifyDoubleBuffered = "notify::double-buffered"
    case notifyEditable = "notify::editable"
    case notifyEnableEmojiCompletion = "notify::enable-emoji-completion"
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
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case notifyHalign = "notify::halign"
    case notifyHasDefault = "notify::has-default"
    case notifyHasFocus = "notify::has-focus"
    case notifyHasFrame = "notify::has-frame"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case notifyHexpandSet = "notify::hexpand-set"
    /// Which IM (input method) module should be used for this entry.
    /// See `GtkIMContext`.
    /// 
    /// Setting this to a non-`nil` value overrides the
    /// system-wide IM module setting. See the GtkSettings
    /// `GtkSettings:gtk`-im-module property.
    case notifyImModule = "notify::im-module"
    /// Sets the text area's border between the text and the frame.
    ///
    /// **inner-border is deprecated:**
    /// Use the standard border and padding CSS properties
    ///   (through objects like #GtkStyleContext and #GtkCssProvider); the value
    ///   of this style property is ignored.
    case notifyInnerBorder = "notify::inner-border"
    /// Additional hints (beyond `GtkEntry:input`-purpose) that
    /// allow input methods to fine-tune their behaviour.
    case notifyInputHints = "notify::input-hints"
    /// The purpose of this text field.
    /// 
    /// This property can be used by on-screen keyboards and other input
    /// methods to adjust their behaviour.
    /// 
    /// Note that setting the purpose to `GTK_INPUT_PURPOSE_PASSWORD` or
    /// `GTK_INPUT_PURPOSE_PIN` is independent from setting
    /// `GtkEntry:visibility`.
    case notifyInputPurpose = "notify::input-purpose"
    /// The invisible character is used when masking entry contents (in
    /// \"password mode\")"). When it is not explicitly set with the
    /// `GtkEntry:invisible`-char property, GTK+ determines the character
    /// to use from a list of possible candidates, depending on availability
    /// in the current font.
    /// 
    /// This style property allows the theme to prepend a character
    /// to the list of candidates.
    case notifyInvisibleChar = "notify::invisible-char"
    /// Whether the invisible char has been set for the `GtkEntry`.
    case notifyInvisibleCharSet = "notify::invisible-char-set"
    case notifyIsFocus = "notify::is-focus"
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
    case notifyMaxLength = "notify::max-length"
    /// The desired maximum width of the entry, in characters.
    /// If this property is set to -1, the width will be calculated
    /// automatically.
    case notifyMaxWidthChars = "notify::max-width-chars"
    case notifyName = "notify::name"
    case notifyNoShowAll = "notify::no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case notifyOpacity = "notify::opacity"
    /// If text is overwritten when typing in the `GtkEntry`.
    case notifyOverwriteMode = "notify::overwrite-mode"
    case notifyParent = "notify::parent"
    /// The text that will be displayed in the `GtkEntry` when it is empty
    /// and unfocused.
    case notifyPlaceholderText = "notify::placeholder-text"
    /// If :populate-all is `true`, the `GtkEntry::populate`-popup
    /// signal is also emitted for touch popups.
    case notifyPopulateAll = "notify::populate-all"
    /// Whether the primary icon is activatable.
    /// 
    /// GTK+ emits the `GtkEntry::icon`-press and `GtkEntry::icon`-release
    /// signals only on sensitive, activatable icons.
    /// 
    /// Sensitive, but non-activatable icons can be used for purely
    /// informational purposes.
    case notifyPrimaryIconActivatable = "notify::primary-icon-activatable"
    /// The `GIcon` to use for the primary icon for the entry.
    case notifyPrimaryIconIcon = "notify::primary-icon-gicon"
    /// The icon name to use for the primary icon for the entry.
    case notifyPrimaryIconName = "notify::primary-icon-name"
    /// A pixbuf to use as the primary icon for the entry.
    case notifyPrimaryIconPixbuf = "notify::primary-icon-pixbuf"
    /// Whether the primary icon is sensitive.
    /// 
    /// An insensitive icon appears grayed out. GTK+ does not emit the
    /// `GtkEntry::icon`-press and `GtkEntry::icon`-release signals and
    /// does not allow DND from insensitive icons.
    /// 
    /// An icon should be set insensitive if the action that would trigger
    /// when clicked is currently not available.
    case notifyPrimaryIconSensitive = "notify::primary-icon-sensitive"
    /// The stock id to use for the primary icon for the entry.
    ///
    /// **primary-icon-stock is deprecated:**
    /// Use #GtkEntry:primary-icon-name instead.
    case notifyPrimaryIconStock = "notify::primary-icon-stock"
    /// The representation which is used for the primary icon of the entry.
    case notifyPrimaryIconStorageType = "notify::primary-icon-storage-type"
    /// The contents of the tooltip on the primary icon, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// 
    /// Also see `gtk_entry_set_icon_tooltip_markup()`.
    case notifyPrimaryIconTooltipMarkup = "notify::primary-icon-tooltip-markup"
    /// The contents of the tooltip on the primary icon.
    /// 
    /// Also see `gtk_entry_set_icon_tooltip_text()`.
    case notifyPrimaryIconTooltipText = "notify::primary-icon-tooltip-text"
    /// The current fraction of the task that's been completed.
    case notifyProgressFraction = "notify::progress-fraction"
    /// The fraction of total entry width to move the progress
    /// bouncing block for each call to `gtk_entry_progress_pulse()`.
    case notifyProgressPulseStep = "notify::progress-pulse-step"
    case notifyReceivesDefault = "notify::receives-default"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifyScrollOffset = "notify::scroll-offset"
    /// Whether the secondary icon is activatable.
    /// 
    /// GTK+ emits the `GtkEntry::icon`-press and `GtkEntry::icon`-release
    /// signals only on sensitive, activatable icons.
    /// 
    /// Sensitive, but non-activatable icons can be used for purely
    /// informational purposes.
    case notifySecondaryIconActivatable = "notify::secondary-icon-activatable"
    /// The `GIcon` to use for the secondary icon for the entry.
    case notifySecondaryIconIcon = "notify::secondary-icon-gicon"
    /// The icon name to use for the secondary icon for the entry.
    case notifySecondaryIconName = "notify::secondary-icon-name"
    /// An pixbuf to use as the secondary icon for the entry.
    case notifySecondaryIconPixbuf = "notify::secondary-icon-pixbuf"
    /// Whether the secondary icon is sensitive.
    /// 
    /// An insensitive icon appears grayed out. GTK+ does not emit the
    /// `GtkEntry::icon`-press and `GtkEntry::icon`-release signals and
    /// does not allow DND from insensitive icons.
    /// 
    /// An icon should be set insensitive if the action that would trigger
    /// when clicked is currently not available.
    case notifySecondaryIconSensitive = "notify::secondary-icon-sensitive"
    /// The stock id to use for the secondary icon for the entry.
    ///
    /// **secondary-icon-stock is deprecated:**
    /// Use #GtkEntry:secondary-icon-name instead.
    case notifySecondaryIconStock = "notify::secondary-icon-stock"
    /// The representation which is used for the secondary icon of the entry.
    case notifySecondaryIconStorageType = "notify::secondary-icon-storage-type"
    /// The contents of the tooltip on the secondary icon, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// 
    /// Also see `gtk_entry_set_icon_tooltip_markup()`.
    case notifySecondaryIconTooltipMarkup = "notify::secondary-icon-tooltip-markup"
    /// The contents of the tooltip on the secondary icon.
    /// 
    /// Also see `gtk_entry_set_icon_tooltip_text()`.
    case notifySecondaryIconTooltipText = "notify::secondary-icon-tooltip-text"
    case notifySelectionBound = "notify::selection-bound"
    case notifySensitive = "notify::sensitive"
    /// Which kind of shadow to draw around the entry when
    /// `GtkEntry:has`-frame is set to `true`.
    ///
    /// **shadow-type is deprecated:**
    /// Use CSS to determine the style of the border;
    ///     the value of this style property is ignored.
    case notifyShadowType = "notify::shadow-type"
    case notifyShowEmojiIcon = "notify::show-emoji-icon"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case notifyStyle = "notify::style"
    case notifyTabs = "notify::tabs"
    case notifyText = "notify::text"
    /// The length of the text in the `GtkEntry`.
    case notifyTextLength = "notify::text-length"
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
    /// When `true`, pasted multi-line text is truncated to the first line.
    case notifyTruncateMultiline = "notify::truncate-multiline"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisibility = "notify::visibility"
    case notifyVisible = "notify::visible"
    case notifyWidthChars = "notify::width-chars"
    case notifyWidthRequest = "notify::width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case notifyWindow = "notify::window"
    /// The horizontal alignment, from 0 (left) to 1 (right).
    /// Reversed for RTL layouts.
    case notifyXalign = "notify::xalign"
}

public extension EntryProtocol {
    /// Connect a `EntrySignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: EntrySignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(entry_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension EntryProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkEntry` instance.
    var entry_ptr: UnsafeMutablePointer<GtkEntry> { return ptr.assumingMemoryBound(to: GtkEntry.self) }

    /// Retrieves the value set by `gtk_entry_set_activates_default()`.
    func getActivatesDefault() -> Bool {
        let rv = gtk_entry_get_activates_default(cast(entry_ptr))
        return Bool(rv != 0)
    }

    /// Gets the value set by `gtk_entry_set_alignment()`.
    func getAlignment() -> gfloat {
        let rv = gtk_entry_get_alignment(cast(entry_ptr))
        return rv
    }

    /// Gets the attribute list that was set on the entry using
    /// `gtk_entry_set_attributes()`, if any.
    func getAttributes() -> UnsafeMutablePointer<PangoAttrList>! {
        let rv = gtk_entry_get_attributes(cast(entry_ptr))
        return cast(rv)
    }

    /// Get the `GtkEntryBuffer` object which holds the text for
    /// this widget.
    func getBuffer() -> UnsafeMutablePointer<GtkEntryBuffer>! {
        let rv = gtk_entry_get_buffer(cast(entry_ptr))
        return cast(rv)
    }

    /// Returns the auxiliary completion object currently in use by `entry`.
    func getCompletion() -> UnsafeMutablePointer<GtkEntryCompletion>! {
        let rv = gtk_entry_get_completion(cast(entry_ptr))
        return cast(rv)
    }

    /// Returns the index of the icon which is the source of the current
    /// DND operation, or -1.
    /// 
    /// This function is meant to be used in a `GtkWidget::drag`-data-get
    /// callback.
    func getCurrentIconDragSource() -> CInt {
        let rv = gtk_entry_get_current_icon_drag_source(cast(entry_ptr))
        return CInt(rv)
    }

    /// Retrieves the horizontal cursor adjustment for the entry.
    /// See `gtk_entry_set_cursor_hadjustment()`.
    func getCursorHadjustment() -> UnsafeMutablePointer<GtkAdjustment>! {
        let rv = gtk_entry_get_cursor_hadjustment(cast(entry_ptr))
        return cast(rv)
    }

    /// Gets the value set by `gtk_entry_set_has_frame()`.
    func getHasFrame() -> Bool {
        let rv = gtk_entry_get_has_frame(cast(entry_ptr))
        return Bool(rv != 0)
    }

    /// Returns whether the icon is activatable.
    func getIconActivatable(iconPos icon_pos: EntryIconPosition) -> Bool {
        let rv = gtk_entry_get_icon_activatable(cast(entry_ptr), icon_pos)
        return Bool(rv != 0)
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
    func getIconArea(iconPos icon_pos: EntryIconPosition, iconArea icon_area: Gdk.RectangleProtocol) {
        gtk_entry_get_icon_area(cast(entry_ptr), icon_pos, cast(icon_area.ptr))
    
    }

    /// Finds the icon at the given position and return its index. The
    /// position’s coordinates are relative to the `entry`’s top left corner.
    /// If `x`, `y` doesn’t lie inside an icon, -1 is returned.
    /// This function is intended for use in a `GtkWidget::query`-tooltip
    /// signal handler.
    func getIconAtPos(x: CInt, y: CInt) -> CInt {
        let rv = gtk_entry_get_icon_at_pos(cast(entry_ptr), gint(x), gint(y))
        return CInt(rv)
    }

    /// Retrieves the `GIcon` used for the icon, or `nil` if there is
    /// no icon or if the icon was set by some other method (e.g., by
    /// stock, pixbuf, or icon name).
    func getIconIcon(iconPos icon_pos: EntryIconPosition) -> UnsafeMutablePointer<GIcon>! {
        let rv = gtk_entry_get_icon_gicon(cast(entry_ptr), icon_pos)
        return cast(rv)
    }

    /// Retrieves the icon name used for the icon, or `nil` if there is
    /// no icon or if the icon was set by some other method (e.g., by
    /// pixbuf, stock or gicon).
    func getIconName(iconPos icon_pos: EntryIconPosition) -> String! {
        let rv = gtk_entry_get_icon_name(cast(entry_ptr), icon_pos)
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Retrieves the image used for the icon.
    /// 
    /// Unlike the other methods of setting and getting icon data, this
    /// method will work regardless of whether the icon was set using a
    /// `GdkPixbuf`, a `GIcon`, a stock item, or an icon name.
    func getIconPixbuf(iconPos icon_pos: EntryIconPosition) -> UnsafeMutablePointer<GdkPixbuf>! {
        let rv = gtk_entry_get_icon_pixbuf(cast(entry_ptr), icon_pos)
        return cast(rv)
    }

    /// Returns whether the icon appears sensitive or insensitive.
    func getIconSensitive(iconPos icon_pos: EntryIconPosition) -> Bool {
        let rv = gtk_entry_get_icon_sensitive(cast(entry_ptr), icon_pos)
        return Bool(rv != 0)
    }

    /// Retrieves the stock id used for the icon, or `nil` if there is
    /// no icon or if the icon was set by some other method (e.g., by
    /// pixbuf, icon name or gicon).
    ///
    /// **get_icon_stock is deprecated:**
    /// Use gtk_entry_get_icon_name() instead.
    @available(*, deprecated) func getIconStock(iconPos icon_pos: EntryIconPosition) -> String! {
        let rv = gtk_entry_get_icon_stock(cast(entry_ptr), icon_pos)
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the type of representation being used by the icon
    /// to store image data. If the icon has no image data,
    /// the return value will be `GTK_IMAGE_EMPTY`.
    func getIconStorageType(iconPos icon_pos: EntryIconPosition) -> GtkImageType {
        let rv = gtk_entry_get_icon_storage_type(cast(entry_ptr), icon_pos)
        return rv
    }

    /// Gets the contents of the tooltip on the icon at the specified
    /// position in `entry`.
    func getIconTooltipMarkup(iconPos icon_pos: EntryIconPosition) -> String! {
        let rv = gtk_entry_get_icon_tooltip_markup(cast(entry_ptr), icon_pos)
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the contents of the tooltip on the icon at the specified
    /// position in `entry`.
    func getIconTooltipText(iconPos icon_pos: EntryIconPosition) -> String! {
        let rv = gtk_entry_get_icon_tooltip_text(cast(entry_ptr), icon_pos)
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// This function returns the entry’s `GtkEntry:inner`-border property. See
    /// `gtk_entry_set_inner_border()` for more information.
    ///
    /// **get_inner_border is deprecated:**
    /// Use the standard border and padding CSS properties (through
    ///   objects like #GtkStyleContext and #GtkCssProvider); the value returned by
    ///   this function is ignored by #GtkEntry.
    @available(*, deprecated) func getInnerBorder() -> UnsafePointer<GtkBorder>! {
        let rv = gtk_entry_get_inner_border(cast(entry_ptr))
        return cast(rv)
    }

    /// Gets the value of the `GtkEntry:input`-hints property.
    func getInputHints() -> GtkInputHints {
        let rv = gtk_entry_get_input_hints(cast(entry_ptr))
        return rv
    }

    /// Gets the value of the `GtkEntry:input`-purpose property.
    func getInputPurpose() -> GtkInputPurpose {
        let rv = gtk_entry_get_input_purpose(cast(entry_ptr))
        return rv
    }

    /// Retrieves the character displayed in place of the real characters
    /// for entries with visibility set to false. See `gtk_entry_set_invisible_char()`.
    func getInvisibleChar() -> gunichar {
        let rv = gtk_entry_get_invisible_char(cast(entry_ptr))
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
    func getLayout() -> UnsafeMutablePointer<PangoLayout>! {
        let rv = gtk_entry_get_layout(cast(entry_ptr))
        return cast(rv)
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
    func getLayoutOffsets(x: UnsafeMutablePointer<CInt>, y: UnsafeMutablePointer<CInt>) {
        gtk_entry_get_layout_offsets(cast(entry_ptr), cast(x), cast(y))
    
    }

    /// Retrieves the maximum allowed length of the text in
    /// `entry`. See `gtk_entry_set_max_length()`.
    /// 
    /// This is equivalent to getting `entry`'s `GtkEntryBuffer` and
    /// calling `gtk_entry_buffer_get_max_length()` on it.
    func getMaxLength() -> CInt {
        let rv = gtk_entry_get_max_length(cast(entry_ptr))
        return CInt(rv)
    }

    /// Retrieves the desired maximum width of `entry`, in characters.
    /// See `gtk_entry_set_max_width_chars()`.
    func getMaxWidthChars() -> CInt {
        let rv = gtk_entry_get_max_width_chars(cast(entry_ptr))
        return CInt(rv)
    }

    /// Gets the value set by `gtk_entry_set_overwrite_mode()`.
    func getOverwriteMode() -> Bool {
        let rv = gtk_entry_get_overwrite_mode(cast(entry_ptr))
        return Bool(rv != 0)
    }

    /// Retrieves the text that will be displayed when `entry` is empty and unfocused
    func getPlaceholderText() -> String! {
        let rv = gtk_entry_get_placeholder_text(cast(entry_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Returns the current fraction of the task that’s been completed.
    /// See `gtk_entry_set_progress_fraction()`.
    func getProgressFraction() -> gdouble {
        let rv = gtk_entry_get_progress_fraction(cast(entry_ptr))
        return rv
    }

    /// Retrieves the pulse step set with `gtk_entry_set_progress_pulse_step()`.
    func getProgressPulseStep() -> gdouble {
        let rv = gtk_entry_get_progress_pulse_step(cast(entry_ptr))
        return rv
    }

    /// Gets the tabstops that were set on the entry using `gtk_entry_set_tabs()`, if
    /// any.
    func getTabs() -> UnsafeMutablePointer<PangoTabArray>! {
        let rv = gtk_entry_get_tabs(cast(entry_ptr))
        return cast(rv)
    }

    /// Retrieves the contents of the entry widget.
    /// See also `gtk_editable_get_chars()`.
    /// 
    /// This is equivalent to getting `entry`'s `GtkEntryBuffer` and calling
    /// `gtk_entry_buffer_get_text()` on it.
    func getText() -> String! {
        let rv = gtk_entry_get_text(cast(entry_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the area where the entry’s text is drawn. This function is
    /// useful when drawing something to the entry in a draw callback.
    /// 
    /// If the entry is not realized, `text_area` is filled with zeros.
    /// 
    /// See also `gtk_entry_get_icon_area()`.
    func get(textArea text_area: Gdk.RectangleProtocol) {
        gtk_entry_get_text_area(cast(entry_ptr), cast(text_area.ptr))
    
    }

    /// Retrieves the current length of the text in
    /// `entry`.
    /// 
    /// This is equivalent to getting `entry`'s `GtkEntryBuffer` and
    /// calling `gtk_entry_buffer_get_length()` on it.
    func getTextLength() -> UInt16 {
        let rv = gtk_entry_get_text_length(cast(entry_ptr))
        return UInt16(rv)
    }

    /// Retrieves whether the text in `entry` is visible. See
    /// `gtk_entry_set_visibility()`.
    func getVisibility() -> Bool {
        let rv = gtk_entry_get_visibility(cast(entry_ptr))
        return Bool(rv != 0)
    }

    /// Gets the value set by `gtk_entry_set_width_chars()`.
    func getWidthChars() -> CInt {
        let rv = gtk_entry_get_width_chars(cast(entry_ptr))
        return CInt(rv)
    }

    /// Causes `entry` to have keyboard focus.
    /// 
    /// It behaves like `gtk_widget_grab_focus()`,
    /// except that it doesn't select the contents of the entry.
    /// You only want to call this on some special entries
    /// which the user usually doesn't want to replace all text in,
    /// such as search-as-you-type entries.
    func grabFocusWithoutSelecting() {
        gtk_entry_grab_focus_without_selecting(cast(entry_ptr))
    
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
    func imContextFilterKeypress(event: EventKeyProtocol) -> Bool {
        let rv = gtk_entry_im_context_filter_keypress(cast(entry_ptr), cast(event.ptr))
        return Bool(rv != 0)
    }

    /// Converts from a position in the entry’s `PangoLayout` (returned by
    /// `gtk_entry_get_layout()`) to a position in the entry contents
    /// (returned by `gtk_entry_get_text()`).
    func layoutIndexToTextIndex(layoutIndex layout_index: CInt) -> CInt {
        let rv = gtk_entry_layout_index_to_text_index(cast(entry_ptr), gint(layout_index))
        return CInt(rv)
    }

    /// Indicates that some progress is made, but you don’t know how much.
    /// Causes the entry’s progress indicator to enter “activity mode,”
    /// where a block bounces back and forth. Each call to
    /// `gtk_entry_progress_pulse()` causes the block to move by a little bit
    /// (the amount of movement per pulse is determined by
    /// `gtk_entry_set_progress_pulse_step()`).
    func progressPulse() {
        gtk_entry_progress_pulse(cast(entry_ptr))
    
    }

    /// Reset the input method context of the entry if needed.
    /// 
    /// This can be necessary in the case where modifying the buffer
    /// would confuse on-going input method behavior.
    func resetImContext() {
        gtk_entry_reset_im_context(cast(entry_ptr))
    
    }

    /// If `setting` is `true`, pressing Enter in the `entry` will activate the default
    /// widget for the window containing the entry. This usually means that
    /// the dialog box containing the entry will be closed, since the default
    /// widget is usually one of the dialog buttons.
    /// 
    /// (For experts: if `setting` is `true`, the entry calls
    /// `gtk_window_activate_default()` on the window containing the entry, in
    /// the default handler for the `GtkEntry::activate` signal.)
    func setActivatesDefault(setting: Bool) {
        gtk_entry_set_activates_default(cast(entry_ptr), gboolean(setting ? 1 : 0))
    
    }

    /// Sets the alignment for the contents of the entry. This controls
    /// the horizontal positioning of the contents when the displayed
    /// text is shorter than the width of the entry.
    func setAlignment(xalign: gfloat) {
        gtk_entry_set_alignment(cast(entry_ptr), xalign)
    
    }

    /// Sets a `PangoAttrList`; the attributes in the list are applied to the
    /// entry text.
    func setAttributes(attrs: AttrListProtocol) {
        gtk_entry_set_attributes(cast(entry_ptr), cast(attrs.ptr))
    
    }

    /// Set the `GtkEntryBuffer` object which holds the text for
    /// this widget.
    func set(buffer: EntryBufferProtocol) {
        gtk_entry_set_buffer(cast(entry_ptr), cast(buffer.ptr))
    
    }

    /// Sets `completion` to be the auxiliary completion object to use with `entry`.
    /// All further configuration of the completion mechanism is done on
    /// `completion` using the `GtkEntryCompletion` API. Completion is disabled if
    /// `completion` is set to `nil`.
    func set(completion: EntryCompletionProtocol) {
        gtk_entry_set_completion(cast(entry_ptr), cast(completion.ptr))
    
    }

    /// Hooks up an adjustment to the cursor position in an entry, so that when
    /// the cursor is moved, the adjustment is scrolled to show that position.
    /// See `gtk_scrolled_window_get_hadjustment()` for a typical way of obtaining
    /// the adjustment.
    /// 
    /// The adjustment has to be in pixel units and in the same coordinate system
    /// as the entry.
    func setCursorHadjustment(adjustment: AdjustmentProtocol) {
        gtk_entry_set_cursor_hadjustment(cast(entry_ptr), cast(adjustment.ptr))
    
    }

    /// Sets whether the entry has a beveled frame around it.
    func setHasFrame(setting: Bool) {
        gtk_entry_set_has_frame(cast(entry_ptr), gboolean(setting ? 1 : 0))
    
    }

    /// Sets whether the icon is activatable.
    func setIconActivatable(iconPos icon_pos: EntryIconPosition, activatable: Bool) {
        gtk_entry_set_icon_activatable(cast(entry_ptr), icon_pos, gboolean(activatable ? 1 : 0))
    
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
    func setIconDragSource(iconPos icon_pos: EntryIconPosition, targetList target_list: TargetListProtocol, actions: Gdk.DragAction) {
        gtk_entry_set_icon_drag_source(cast(entry_ptr), icon_pos, cast(target_list.ptr), actions)
    
    }

    /// Sets the icon shown in the entry at the specified position
    /// from the current icon theme.
    /// If the icon isn’t known, a “broken image” icon will be displayed
    /// instead.
    /// 
    /// If `icon` is `nil`, no icon will be shown in the specified position.
    func setIconFromIcon(iconPos icon_pos: EntryIconPosition, icon: IconProtocol) {
        gtk_entry_set_icon_from_gicon(cast(entry_ptr), icon_pos, cast(icon.ptr))
    
    }

    /// Sets the icon shown in the entry at the specified position
    /// from the current icon theme.
    /// 
    /// If the icon name isn’t known, a “broken image” icon will be displayed
    /// instead.
    /// 
    /// If `icon_name` is `nil`, no icon will be shown in the specified position.
    func setIconFromIconName(iconPos icon_pos: EntryIconPosition, iconName icon_name: UnsafePointer<gchar>) {
        gtk_entry_set_icon_from_icon_name(cast(entry_ptr), icon_pos, icon_name)
    
    }

    /// Sets the icon shown in the specified position using a pixbuf.
    /// 
    /// If `pixbuf` is `nil`, no icon will be shown in the specified position.
    func setIconFromPixbuf(iconPos icon_pos: EntryIconPosition, pixbuf: PixbufProtocol) {
        gtk_entry_set_icon_from_pixbuf(cast(entry_ptr), icon_pos, cast(pixbuf.ptr))
    
    }

    /// Sets the icon shown in the entry at the specified position from
    /// a stock image.
    /// 
    /// If `stock_id` is `nil`, no icon will be shown in the specified position.
    ///
    /// **set_icon_from_stock is deprecated:**
    /// Use gtk_entry_set_icon_from_icon_name() instead.
    @available(*, deprecated) func setIconFromStock(iconPos icon_pos: EntryIconPosition, stockID stock_id: UnsafePointer<gchar>) {
        gtk_entry_set_icon_from_stock(cast(entry_ptr), icon_pos, stock_id)
    
    }

    /// Sets the sensitivity for the specified icon.
    func setIconSensitive(iconPos icon_pos: EntryIconPosition, sensitive: Bool) {
        gtk_entry_set_icon_sensitive(cast(entry_ptr), icon_pos, gboolean(sensitive ? 1 : 0))
    
    }

    /// Sets `tooltip` as the contents of the tooltip for the icon at
    /// the specified position. `tooltip` is assumed to be marked up with
    /// the [Pango text markup language](#PangoMarkupFormat).
    /// 
    /// Use `nil` for `tooltip` to remove an existing tooltip.
    /// 
    /// See also `gtk_widget_set_tooltip_markup()` and
    /// `gtk_entry_set_icon_tooltip_text()`.
    func setIconTooltipMarkup(iconPos icon_pos: EntryIconPosition, tooltip: UnsafePointer<gchar>) {
        gtk_entry_set_icon_tooltip_markup(cast(entry_ptr), icon_pos, tooltip)
    
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
    func setIconTooltipText(iconPos icon_pos: EntryIconPosition, tooltip: UnsafePointer<gchar>) {
        gtk_entry_set_icon_tooltip_text(cast(entry_ptr), icon_pos, tooltip)
    
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
    @available(*, deprecated) func setInner(border: BorderProtocol) {
        gtk_entry_set_inner_border(cast(entry_ptr), cast(border.ptr))
    
    }

    /// Sets the `GtkEntry:input`-hints property, which
    /// allows input methods to fine-tune their behaviour.
    func setInput(hints: InputHints) {
        gtk_entry_set_input_hints(cast(entry_ptr), hints)
    
    }

    /// Sets the `GtkEntry:input`-purpose property which
    /// can be used by on-screen keyboards and other input
    /// methods to adjust their behaviour.
    func setInput(purpose: InputPurpose) {
        gtk_entry_set_input_purpose(cast(entry_ptr), purpose)
    
    }

    /// Sets the character to use in place of the actual text when
    /// `gtk_entry_set_visibility()` has been called to set text visibility
    /// to `false`. i.e. this is the character used in “password mode” to
    /// show the user how many characters have been typed. By default, GTK+
    /// picks the best invisible char available in the current font. If you
    /// set the invisible char to 0, then the user will get no feedback
    /// at all; there will be no text on the screen as they type.
    func setInvisibleChar(ch: gunichar) {
        gtk_entry_set_invisible_char(cast(entry_ptr), ch)
    
    }

    /// Sets the maximum allowed length of the contents of the widget. If
    /// the current contents are longer than the given length, then they
    /// will be truncated to fit.
    /// 
    /// This is equivalent to getting `entry`'s `GtkEntryBuffer` and
    /// calling `gtk_entry_buffer_set_max_length()` on it.
    /// ]|
    func setMaxLength(max: CInt) {
        gtk_entry_set_max_length(cast(entry_ptr), gint(max))
    
    }

    /// Sets the desired maximum width in characters of `entry`.
    func setMaxWidth(nChars n_chars: CInt) {
        gtk_entry_set_max_width_chars(cast(entry_ptr), gint(n_chars))
    
    }

    /// Sets whether the text is overwritten when typing in the `GtkEntry`.
    func setOverwriteMode(overwrite: Bool) {
        gtk_entry_set_overwrite_mode(cast(entry_ptr), gboolean(overwrite ? 1 : 0))
    
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
    func setPlaceholder(text: UnsafePointer<gchar>) {
        gtk_entry_set_placeholder_text(cast(entry_ptr), text)
    
    }

    /// Causes the entry’s progress indicator to “fill in” the given
    /// fraction of the bar. The fraction should be between 0.0 and 1.0,
    /// inclusive.
    func setProgress(fraction: gdouble) {
        gtk_entry_set_progress_fraction(cast(entry_ptr), fraction)
    
    }

    /// Sets the fraction of total entry width to move the progress
    /// bouncing block for each call to `gtk_entry_progress_pulse()`.
    func setProgressPulseStep(fraction: gdouble) {
        gtk_entry_set_progress_pulse_step(cast(entry_ptr), fraction)
    
    }

    /// Sets a `PangoTabArray`; the tabstops in the array are applied to the entry
    /// text.
    func set(tabs: TabArrayProtocol) {
        gtk_entry_set_tabs(cast(entry_ptr), cast(tabs.ptr))
    
    }

    /// Sets the text in the widget to the given
    /// value, replacing the current contents.
    /// 
    /// See `gtk_entry_buffer_set_text()`.
    func set(text: UnsafePointer<gchar>) {
        gtk_entry_set_text(cast(entry_ptr), text)
    
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
    func setVisibility(visible: Bool) {
        gtk_entry_set_visibility(cast(entry_ptr), gboolean(visible ? 1 : 0))
    
    }

    /// Changes the size request of the entry to be about the right size
    /// for `n_chars` characters. Note that it changes the size
    /// request, the size can still be affected by
    /// how you pack the widget into containers. If `n_chars` is -1, the
    /// size reverts to the default entry size.
    func setWidth(nChars n_chars: CInt) {
        gtk_entry_set_width_chars(cast(entry_ptr), gint(n_chars))
    
    }

    /// Converts from a position in the entry contents (returned
    /// by `gtk_entry_get_text()`) to a position in the
    /// entry’s `PangoLayout` (returned by `gtk_entry_get_layout()`,
    /// with text retrieved via `pango_layout_get_text()`).
    func textIndexToLayoutIndex(textIndex text_index: CInt) -> CInt {
        let rv = gtk_entry_text_index_to_layout_index(cast(entry_ptr), gint(text_index))
        return CInt(rv)
    }

    /// Unsets the invisible char previously set with
    /// `gtk_entry_set_invisible_char()`. So that the
    /// default invisible char is used again.
    func unsetInvisibleChar() {
        gtk_entry_unset_invisible_char(cast(entry_ptr))
    
    }
    /// Retrieves the value set by `gtk_entry_set_activates_default()`.
    var activatesDefault: Bool {
        /// Retrieves the value set by `gtk_entry_set_activates_default()`.
        get {
            let rv = gtk_entry_get_activates_default(cast(entry_ptr))
            return Bool(rv != 0)
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
            gtk_entry_set_activates_default(cast(entry_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Gets the value set by `gtk_entry_set_alignment()`.
    var alignment: gfloat {
        /// Gets the value set by `gtk_entry_set_alignment()`.
        get {
            let rv = gtk_entry_get_alignment(cast(entry_ptr))
            return rv
        }
        /// Sets the alignment for the contents of the entry. This controls
        /// the horizontal positioning of the contents when the displayed
        /// text is shorter than the width of the entry.
        nonmutating set {
            gtk_entry_set_alignment(cast(entry_ptr), newValue)
        }
    }

    /// A list of Pango attributes to apply to the text of the entry.
    /// 
    /// This is mainly useful to change the size or weight of the text.
    /// 
    /// The `PangoAttribute`'s `start_index` and `end_index` must refer to the
    /// `GtkEntryBuffer` text, i.e. without the preedit string.
    var attributes: UnsafeMutablePointer<PangoAttrList>! {
        /// Gets the attribute list that was set on the entry using
        /// `gtk_entry_set_attributes()`, if any.
        get {
            let rv = gtk_entry_get_attributes(cast(entry_ptr))
            return cast(rv)
        }
        /// Sets a `PangoAttrList`; the attributes in the list are applied to the
        /// entry text.
        nonmutating set {
            gtk_entry_set_attributes(cast(entry_ptr), cast(newValue))
        }
    }

    var buffer: UnsafeMutablePointer<GtkEntryBuffer>! {
        /// Get the `GtkEntryBuffer` object which holds the text for
        /// this widget.
        get {
            let rv = gtk_entry_get_buffer(cast(entry_ptr))
            return cast(rv)
        }
        /// Set the `GtkEntryBuffer` object which holds the text for
        /// this widget.
        nonmutating set {
            gtk_entry_set_buffer(cast(entry_ptr), cast(newValue))
        }
    }

    /// The auxiliary completion object to use with the entry.
    var completion: UnsafeMutablePointer<GtkEntryCompletion>! {
        /// Returns the auxiliary completion object currently in use by `entry`.
        get {
            let rv = gtk_entry_get_completion(cast(entry_ptr))
            return cast(rv)
        }
        /// Sets `completion` to be the auxiliary completion object to use with `entry`.
        /// All further configuration of the completion mechanism is done on
        /// `completion` using the `GtkEntryCompletion` API. Completion is disabled if
        /// `completion` is set to `nil`.
        nonmutating set {
            gtk_entry_set_completion(cast(entry_ptr), cast(newValue))
        }
    }

    /// Returns the index of the icon which is the source of the current
    /// DND operation, or -1.
    /// 
    /// This function is meant to be used in a `GtkWidget::drag`-data-get
    /// callback.
    var currentIconDragSource: CInt {
        /// Returns the index of the icon which is the source of the current
        /// DND operation, or -1.
        /// 
        /// This function is meant to be used in a `GtkWidget::drag`-data-get
        /// callback.
        get {
            let rv = gtk_entry_get_current_icon_drag_source(cast(entry_ptr))
            return CInt(rv)
        }
    }

    /// Retrieves the horizontal cursor adjustment for the entry.
    /// See `gtk_entry_set_cursor_hadjustment()`.
    var cursorHadjustment: UnsafeMutablePointer<GtkAdjustment>! {
        /// Retrieves the horizontal cursor adjustment for the entry.
        /// See `gtk_entry_set_cursor_hadjustment()`.
        get {
            let rv = gtk_entry_get_cursor_hadjustment(cast(entry_ptr))
            return cast(rv)
        }
        /// Hooks up an adjustment to the cursor position in an entry, so that when
        /// the cursor is moved, the adjustment is scrolled to show that position.
        /// See `gtk_scrolled_window_get_hadjustment()` for a typical way of obtaining
        /// the adjustment.
        /// 
        /// The adjustment has to be in pixel units and in the same coordinate system
        /// as the entry.
        nonmutating set {
            gtk_entry_set_cursor_hadjustment(cast(entry_ptr), cast(newValue))
        }
    }

    /// Gets the value set by `gtk_entry_set_has_frame()`.
    var hasFrame: Bool {
        /// Gets the value set by `gtk_entry_set_has_frame()`.
        get {
            let rv = gtk_entry_get_has_frame(cast(entry_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether the entry has a beveled frame around it.
        nonmutating set {
            gtk_entry_set_has_frame(cast(entry_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// This function returns the entry’s `GtkEntry:inner`-border property. See
    /// `gtk_entry_set_inner_border()` for more information.
    ///
    /// **get_inner_border is deprecated:**
    /// Use the standard border and padding CSS properties (through
    ///   objects like #GtkStyleContext and #GtkCssProvider); the value returned by
    ///   this function is ignored by #GtkEntry.
    var innerBorder: UnsafePointer<GtkBorder>! {
        /// This function returns the entry’s `GtkEntry:inner`-border property. See
        /// `gtk_entry_set_inner_border()` for more information.
        ///
        /// **get_inner_border is deprecated:**
        /// Use the standard border and padding CSS properties (through
        ///   objects like #GtkStyleContext and #GtkCssProvider); the value returned by
        ///   this function is ignored by #GtkEntry.
        @available(*, deprecated) get {
            let rv = gtk_entry_get_inner_border(cast(entry_ptr))
            return cast(rv)
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
        @available(*, deprecated) nonmutating set {
            gtk_entry_set_inner_border(cast(entry_ptr), cast(newValue))
        }
    }

    /// Gets the value of the `GtkEntry:input`-hints property.
    var inputHints: GtkInputHints {
        /// Gets the value of the `GtkEntry:input`-hints property.
        get {
            let rv = gtk_entry_get_input_hints(cast(entry_ptr))
            return rv
        }
        /// Sets the `GtkEntry:input`-hints property, which
        /// allows input methods to fine-tune their behaviour.
        nonmutating set {
            gtk_entry_set_input_hints(cast(entry_ptr), newValue)
        }
    }

    /// Gets the value of the `GtkEntry:input`-purpose property.
    var inputPurpose: GtkInputPurpose {
        /// Gets the value of the `GtkEntry:input`-purpose property.
        get {
            let rv = gtk_entry_get_input_purpose(cast(entry_ptr))
            return rv
        }
        /// Sets the `GtkEntry:input`-purpose property which
        /// can be used by on-screen keyboards and other input
        /// methods to adjust their behaviour.
        nonmutating set {
            gtk_entry_set_input_purpose(cast(entry_ptr), newValue)
        }
    }

    /// Retrieves the character displayed in place of the real characters
    /// for entries with visibility set to false. See `gtk_entry_set_invisible_char()`.
    var invisibleChar: gunichar {
        /// Retrieves the character displayed in place of the real characters
        /// for entries with visibility set to false. See `gtk_entry_set_invisible_char()`.
        get {
            let rv = gtk_entry_get_invisible_char(cast(entry_ptr))
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
            gtk_entry_set_invisible_char(cast(entry_ptr), newValue)
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
    var layout: UnsafeMutablePointer<PangoLayout>! {
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
            let rv = gtk_entry_get_layout(cast(entry_ptr))
            return cast(rv)
        }
    }

    /// Retrieves the maximum allowed length of the text in
    /// `entry`. See `gtk_entry_set_max_length()`.
    /// 
    /// This is equivalent to getting `entry`'s `GtkEntryBuffer` and
    /// calling `gtk_entry_buffer_get_max_length()` on it.
    var maxLength: CInt {
        /// Retrieves the maximum allowed length of the text in
        /// `entry`. See `gtk_entry_set_max_length()`.
        /// 
        /// This is equivalent to getting `entry`'s `GtkEntryBuffer` and
        /// calling `gtk_entry_buffer_get_max_length()` on it.
        get {
            let rv = gtk_entry_get_max_length(cast(entry_ptr))
            return CInt(rv)
        }
        /// Sets the maximum allowed length of the contents of the widget. If
        /// the current contents are longer than the given length, then they
        /// will be truncated to fit.
        /// 
        /// This is equivalent to getting `entry`'s `GtkEntryBuffer` and
        /// calling `gtk_entry_buffer_set_max_length()` on it.
        /// ]|
        nonmutating set {
            gtk_entry_set_max_length(cast(entry_ptr), gint(newValue))
        }
    }

    /// Retrieves the desired maximum width of `entry`, in characters.
    /// See `gtk_entry_set_max_width_chars()`.
    var maxWidthChars: CInt {
        /// Retrieves the desired maximum width of `entry`, in characters.
        /// See `gtk_entry_set_max_width_chars()`.
        get {
            let rv = gtk_entry_get_max_width_chars(cast(entry_ptr))
            return CInt(rv)
        }
        /// Sets the desired maximum width in characters of `entry`.
        nonmutating set {
            gtk_entry_set_max_width_chars(cast(entry_ptr), gint(newValue))
        }
    }

    /// Gets the value set by `gtk_entry_set_overwrite_mode()`.
    var overwriteMode: Bool {
        /// Gets the value set by `gtk_entry_set_overwrite_mode()`.
        get {
            let rv = gtk_entry_get_overwrite_mode(cast(entry_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether the text is overwritten when typing in the `GtkEntry`.
        nonmutating set {
            gtk_entry_set_overwrite_mode(cast(entry_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Retrieves the text that will be displayed when `entry` is empty and unfocused
    var placeholderText: String! {
        /// Retrieves the text that will be displayed when `entry` is empty and unfocused
        get {
            let rv = gtk_entry_get_placeholder_text(cast(entry_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
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
            gtk_entry_set_placeholder_text(cast(entry_ptr), newValue)
        }
    }

    /// Returns the current fraction of the task that’s been completed.
    /// See `gtk_entry_set_progress_fraction()`.
    var progressFraction: gdouble {
        /// Returns the current fraction of the task that’s been completed.
        /// See `gtk_entry_set_progress_fraction()`.
        get {
            let rv = gtk_entry_get_progress_fraction(cast(entry_ptr))
            return rv
        }
        /// Causes the entry’s progress indicator to “fill in” the given
        /// fraction of the bar. The fraction should be between 0.0 and 1.0,
        /// inclusive.
        nonmutating set {
            gtk_entry_set_progress_fraction(cast(entry_ptr), newValue)
        }
    }

    /// Retrieves the pulse step set with `gtk_entry_set_progress_pulse_step()`.
    var progressPulseStep: gdouble {
        /// Retrieves the pulse step set with `gtk_entry_set_progress_pulse_step()`.
        get {
            let rv = gtk_entry_get_progress_pulse_step(cast(entry_ptr))
            return rv
        }
        /// Sets the fraction of total entry width to move the progress
        /// bouncing block for each call to `gtk_entry_progress_pulse()`.
        nonmutating set {
            gtk_entry_set_progress_pulse_step(cast(entry_ptr), newValue)
        }
    }

    var tabs: UnsafeMutablePointer<PangoTabArray>! {
        /// Gets the tabstops that were set on the entry using `gtk_entry_set_tabs()`, if
        /// any.
        get {
            let rv = gtk_entry_get_tabs(cast(entry_ptr))
            return cast(rv)
        }
        /// Sets a `PangoTabArray`; the tabstops in the array are applied to the entry
        /// text.
        nonmutating set {
            gtk_entry_set_tabs(cast(entry_ptr), cast(newValue))
        }
    }

    var text: String! {
        /// Retrieves the contents of the entry widget.
        /// See also `gtk_editable_get_chars()`.
        /// 
        /// This is equivalent to getting `entry`'s `GtkEntryBuffer` and calling
        /// `gtk_entry_buffer_get_text()` on it.
        get {
            let rv = gtk_entry_get_text(cast(entry_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Sets the text in the widget to the given
        /// value, replacing the current contents.
        /// 
        /// See `gtk_entry_buffer_set_text()`.
        nonmutating set {
            gtk_entry_set_text(cast(entry_ptr), newValue)
        }
    }

    /// Retrieves the current length of the text in
    /// `entry`.
    /// 
    /// This is equivalent to getting `entry`'s `GtkEntryBuffer` and
    /// calling `gtk_entry_buffer_get_length()` on it.
    var textLength: UInt16 {
        /// Retrieves the current length of the text in
        /// `entry`.
        /// 
        /// This is equivalent to getting `entry`'s `GtkEntryBuffer` and
        /// calling `gtk_entry_buffer_get_length()` on it.
        get {
            let rv = gtk_entry_get_text_length(cast(entry_ptr))
            return UInt16(rv)
        }
    }

    var visibility: Bool {
        /// Retrieves whether the text in `entry` is visible. See
        /// `gtk_entry_set_visibility()`.
        get {
            let rv = gtk_entry_get_visibility(cast(entry_ptr))
            return Bool(rv != 0)
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
            gtk_entry_set_visibility(cast(entry_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Gets the value set by `gtk_entry_set_width_chars()`.
    var widthChars: CInt {
        /// Gets the value set by `gtk_entry_set_width_chars()`.
        get {
            let rv = gtk_entry_get_width_chars(cast(entry_ptr))
            return CInt(rv)
        }
        /// Changes the size request of the entry to be about the right size
        /// for `n_chars` characters. Note that it changes the size
        /// request, the size can still be affected by
        /// how you pack the widget into containers. If `n_chars` is -1, the
        /// size reverts to the default entry size.
        nonmutating set {
            gtk_entry_set_width_chars(cast(entry_ptr), gint(newValue))
        }
    }
}



