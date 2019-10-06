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

// MARK: - VBox Class

/// The `VBoxProtocol` protocol exposes the methods and properties of an underlying `GtkVBox` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VBox`.
/// Alternatively, use `VBoxRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GtkVBox` is a container that organizes child widgets into a single column.
/// 
/// Use the `GtkBox` packing interface to determine the arrangement,
/// spacing, height, and alignment of `GtkVBox` children.
/// 
/// All children are allocated the same width.
/// 
/// GtkVBox has been deprecated. You can use `GtkBox` instead, which is a
/// very quick and easy change. If you have derived your own classes from
/// GtkVBox, you can simply change the inheritance to derive directly
/// from `GtkBox`, and set the `GtkOrientable:orientation` property to
/// `GTK_ORIENTATION_VERTICAL` in your instance init function, with a
/// call like:
/// (C Language Example):
/// ```C
///   gtk_orientable_set_orientation (GTK_ORIENTABLE (object),
///                                   GTK_ORIENTATION_VERTICAL);
/// ```
/// If you don’t need first-child or last-child styling and want your code
/// to be future-proof, the recommendation is to switch to `GtkGrid` instead
/// of nested boxes. For more information about migrating to `GtkGrid`,
/// see [Migrating from other containers to GtkGrid](#gtk-migrating-GtkGrid).
public protocol VBoxProtocol: BoxProtocol {
    /// Untyped pointer to the underlying `GtkVBox` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkVBox` instance.
    var vbox_ptr: UnsafeMutablePointer<GtkVBox> { get }
}

/// The `VBoxRef` type acts as a lightweight Swift reference to an underlying `GtkVBox` instance.
/// It exposes methods that can operate on this data type through `VBoxProtocol` conformance.
/// Use `VBoxRef` only as an `unowned` reference to an existing `GtkVBox` instance.
///
/// A `GtkVBox` is a container that organizes child widgets into a single column.
/// 
/// Use the `GtkBox` packing interface to determine the arrangement,
/// spacing, height, and alignment of `GtkVBox` children.
/// 
/// All children are allocated the same width.
/// 
/// GtkVBox has been deprecated. You can use `GtkBox` instead, which is a
/// very quick and easy change. If you have derived your own classes from
/// GtkVBox, you can simply change the inheritance to derive directly
/// from `GtkBox`, and set the `GtkOrientable:orientation` property to
/// `GTK_ORIENTATION_VERTICAL` in your instance init function, with a
/// call like:
/// (C Language Example):
/// ```C
///   gtk_orientable_set_orientation (GTK_ORIENTABLE (object),
///                                   GTK_ORIENTATION_VERTICAL);
/// ```
/// If you don’t need first-child or last-child styling and want your code
/// to be future-proof, the recommendation is to switch to `GtkGrid` instead
/// of nested boxes. For more information about migrating to `GtkGrid`,
/// see [Migrating from other containers to GtkGrid](#gtk-migrating-GtkGrid).
public struct VBoxRef: VBoxProtocol {
    /// Untyped pointer to the underlying `GtkVBox` instance.
    /// For type-safe access, use the generated, typed pointer `vbox_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension VBoxRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkVBox>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `VBoxProtocol`
    init<T: VBoxProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VBoxProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VBoxProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VBoxProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VBoxProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VBoxProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkVBox`.
    ///
    /// **new is deprecated:**
    /// You can use gtk_box_new() with %GTK_ORIENTATION_VERTICAL instead,
    ///   which is a quick and easy change. But the recommendation is to switch to
    ///   #GtkGrid, since #GtkBox is going to go away eventually.
    ///   See [Migrating from other containers to GtkGrid][gtk-migrating-GtkGrid].
    @available(*, deprecated) init( homogeneous: Bool, spacing: CInt) {
        let rv = gtk_vbox_new(gboolean(homogeneous ? 1 : 0), gint(spacing))
        self.init(cast(rv))
    }
}

/// The `VBox` type acts as a reference-counted owner of an underlying `GtkVBox` instance.
/// It provides the methods that can operate on this data type through `VBoxProtocol` conformance.
/// Use `VBox` as a strong reference or owner of a `GtkVBox` instance.
///
/// A `GtkVBox` is a container that organizes child widgets into a single column.
/// 
/// Use the `GtkBox` packing interface to determine the arrangement,
/// spacing, height, and alignment of `GtkVBox` children.
/// 
/// All children are allocated the same width.
/// 
/// GtkVBox has been deprecated. You can use `GtkBox` instead, which is a
/// very quick and easy change. If you have derived your own classes from
/// GtkVBox, you can simply change the inheritance to derive directly
/// from `GtkBox`, and set the `GtkOrientable:orientation` property to
/// `GTK_ORIENTATION_VERTICAL` in your instance init function, with a
/// call like:
/// (C Language Example):
/// ```C
///   gtk_orientable_set_orientation (GTK_ORIENTABLE (object),
///                                   GTK_ORIENTATION_VERTICAL);
/// ```
/// If you don’t need first-child or last-child styling and want your code
/// to be future-proof, the recommendation is to switch to `GtkGrid` instead
/// of nested boxes. For more information about migrating to `GtkGrid`,
/// see [Migrating from other containers to GtkGrid](#gtk-migrating-GtkGrid).
open class VBox: Box, VBoxProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `VBox` instance.
    public init(_ op: UnsafeMutablePointer<GtkVBox>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `VBoxProtocol`
    /// Will retain `GtkVBox`.
    public convenience init<T: VBoxProtocol>(_ other: T) {
        self.init(cast(other.vbox_ptr))
        g_object_ref(cast(vbox_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VBoxProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkVBox.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VBoxProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkVBox.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VBoxProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkVBox.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VBoxProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkVBox>(opaquePointer))
    }

    /// Creates a new `GtkVBox`.
    ///
    /// **new is deprecated:**
    /// You can use gtk_box_new() with %GTK_ORIENTATION_VERTICAL instead,
    ///   which is a quick and easy change. But the recommendation is to switch to
    ///   #GtkGrid, since #GtkBox is going to go away eventually.
    ///   See [Migrating from other containers to GtkGrid][gtk-migrating-GtkGrid].
    @available(*, deprecated) public convenience init( homogeneous: Bool, spacing: CInt) {
        let rv = gtk_vbox_new(gboolean(homogeneous ? 1 : 0), gint(spacing))
        self.init(cast(rv))
    }


}

public enum VBoxPropertyName: String, PropertyNameProtocol {
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

public extension VBoxProtocol {
    /// Bind a `VBoxPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: VBoxPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(vbox_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum VBoxSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    case add = "add"
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
    case checkResize = "check-resize"
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
    case remove = "remove"
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
    case setFocusChild = "set-focus-child"
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
    case notifyBaselinePosition = "notify::baseline-position"
    case notifyBorderWidth = "notify::border-width"
    case notifyCanDefault = "notify::can-default"
    case notifyCanFocus = "notify::can-focus"
    case notifyChild = "notify::child"
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
    case notifyHomogeneous = "notify::homogeneous"
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
    case notifyResizeMode = "notify::resize-mode"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
    case notifySpacing = "notify::spacing"
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

public extension VBoxProtocol {
    /// Connect a `VBoxSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: VBoxSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(vbox_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension VBoxProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkVBox` instance.
    var vbox_ptr: UnsafeMutablePointer<GtkVBox> { return ptr.assumingMemoryBound(to: GtkVBox.self) }

}



// MARK: - VButtonBox Class

/// The `VButtonBoxProtocol` protocol exposes the methods and properties of an underlying `GtkVButtonBox` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VButtonBox`.
/// Alternatively, use `VButtonBoxRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol VButtonBoxProtocol: ButtonBoxProtocol {
    /// Untyped pointer to the underlying `GtkVButtonBox` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkVButtonBox` instance.
    var vbutton_box_ptr: UnsafeMutablePointer<GtkVButtonBox> { get }
}

/// The `VButtonBoxRef` type acts as a lightweight Swift reference to an underlying `GtkVButtonBox` instance.
/// It exposes methods that can operate on this data type through `VButtonBoxProtocol` conformance.
/// Use `VButtonBoxRef` only as an `unowned` reference to an existing `GtkVButtonBox` instance.
///

public struct VButtonBoxRef: VButtonBoxProtocol {
    /// Untyped pointer to the underlying `GtkVButtonBox` instance.
    /// For type-safe access, use the generated, typed pointer `vbutton_box_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension VButtonBoxRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkVButtonBox>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `VButtonBoxProtocol`
    init<T: VButtonBoxProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VButtonBoxProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VButtonBoxProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VButtonBoxProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VButtonBoxProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VButtonBoxProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new vertical button box.
    ///
    /// **new is deprecated:**
    /// Use gtk_button_box_new() with %GTK_ORIENTATION_VERTICAL instead
    @available(*, deprecated) init() {
        let rv = gtk_vbutton_box_new()
        self.init(cast(rv))
    }
}

/// The `VButtonBox` type acts as a reference-counted owner of an underlying `GtkVButtonBox` instance.
/// It provides the methods that can operate on this data type through `VButtonBoxProtocol` conformance.
/// Use `VButtonBox` as a strong reference or owner of a `GtkVButtonBox` instance.
///

open class VButtonBox: ButtonBox, VButtonBoxProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `VButtonBox` instance.
    public init(_ op: UnsafeMutablePointer<GtkVButtonBox>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `VButtonBoxProtocol`
    /// Will retain `GtkVButtonBox`.
    public convenience init<T: VButtonBoxProtocol>(_ other: T) {
        self.init(cast(other.vbutton_box_ptr))
        g_object_ref(cast(vbutton_box_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VButtonBoxProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkVButtonBox.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VButtonBoxProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkVButtonBox.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VButtonBoxProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkVButtonBox.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VButtonBoxProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkVButtonBox>(opaquePointer))
    }

    /// Creates a new vertical button box.
    ///
    /// **new is deprecated:**
    /// Use gtk_button_box_new() with %GTK_ORIENTATION_VERTICAL instead
    @available(*, deprecated) public convenience init() {
        let rv = gtk_vbutton_box_new()
        self.init(cast(rv))
    }


}

public enum VButtonBoxPropertyName: String, PropertyNameProtocol {
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

public extension VButtonBoxProtocol {
    /// Bind a `VButtonBoxPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: VButtonBoxPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(vbutton_box_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum VButtonBoxSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    case add = "add"
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
    case checkResize = "check-resize"
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
    case remove = "remove"
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
    case setFocusChild = "set-focus-child"
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
    case notifyBaselinePosition = "notify::baseline-position"
    case notifyBorderWidth = "notify::border-width"
    case notifyCanDefault = "notify::can-default"
    case notifyCanFocus = "notify::can-focus"
    case notifyChild = "notify::child"
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
    case notifyHomogeneous = "notify::homogeneous"
    case notifyIsFocus = "notify::is-focus"
    case notifyLayoutStyle = "notify::layout-style"
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
    case notifyResizeMode = "notify::resize-mode"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
    case notifySpacing = "notify::spacing"
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

public extension VButtonBoxProtocol {
    /// Connect a `VButtonBoxSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: VButtonBoxSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(vbutton_box_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension VButtonBoxProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkVButtonBox` instance.
    var vbutton_box_ptr: UnsafeMutablePointer<GtkVButtonBox> { return ptr.assumingMemoryBound(to: GtkVButtonBox.self) }

}



// MARK: - VPaned Class

/// The `VPanedProtocol` protocol exposes the methods and properties of an underlying `GtkVPaned` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VPaned`.
/// Alternatively, use `VPanedRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The VPaned widget is a container widget with two
/// children arranged vertically. The division between
/// the two panes is adjustable by the user by dragging
/// a handle. See `GtkPaned` for details.
/// 
/// GtkVPaned has been deprecated, use `GtkPaned` instead.
public protocol VPanedProtocol: PanedProtocol {
    /// Untyped pointer to the underlying `GtkVPaned` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkVPaned` instance.
    var vpaned_ptr: UnsafeMutablePointer<GtkVPaned> { get }
}

/// The `VPanedRef` type acts as a lightweight Swift reference to an underlying `GtkVPaned` instance.
/// It exposes methods that can operate on this data type through `VPanedProtocol` conformance.
/// Use `VPanedRef` only as an `unowned` reference to an existing `GtkVPaned` instance.
///
/// The VPaned widget is a container widget with two
/// children arranged vertically. The division between
/// the two panes is adjustable by the user by dragging
/// a handle. See `GtkPaned` for details.
/// 
/// GtkVPaned has been deprecated, use `GtkPaned` instead.
public struct VPanedRef: VPanedProtocol {
    /// Untyped pointer to the underlying `GtkVPaned` instance.
    /// For type-safe access, use the generated, typed pointer `vpaned_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension VPanedRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkVPaned>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `VPanedProtocol`
    init<T: VPanedProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VPanedProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VPanedProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VPanedProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VPanedProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VPanedProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Create a new `GtkVPaned`
    ///
    /// **new is deprecated:**
    /// Use gtk_paned_new() with %GTK_ORIENTATION_VERTICAL instead
    @available(*, deprecated) init() {
        let rv = gtk_vpaned_new()
        self.init(cast(rv))
    }
}

/// The `VPaned` type acts as a reference-counted owner of an underlying `GtkVPaned` instance.
/// It provides the methods that can operate on this data type through `VPanedProtocol` conformance.
/// Use `VPaned` as a strong reference or owner of a `GtkVPaned` instance.
///
/// The VPaned widget is a container widget with two
/// children arranged vertically. The division between
/// the two panes is adjustable by the user by dragging
/// a handle. See `GtkPaned` for details.
/// 
/// GtkVPaned has been deprecated, use `GtkPaned` instead.
open class VPaned: Paned, VPanedProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `VPaned` instance.
    public init(_ op: UnsafeMutablePointer<GtkVPaned>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `VPanedProtocol`
    /// Will retain `GtkVPaned`.
    public convenience init<T: VPanedProtocol>(_ other: T) {
        self.init(cast(other.vpaned_ptr))
        g_object_ref(cast(vpaned_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VPanedProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkVPaned.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VPanedProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkVPaned.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VPanedProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkVPaned.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VPanedProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkVPaned>(opaquePointer))
    }

    /// Create a new `GtkVPaned`
    ///
    /// **new is deprecated:**
    /// Use gtk_paned_new() with %GTK_ORIENTATION_VERTICAL instead
    @available(*, deprecated) public convenience init() {
        let rv = gtk_vpaned_new()
        self.init(cast(rv))
    }


}

public enum VPanedPropertyName: String, PropertyNameProtocol {
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

public extension VPanedProtocol {
    /// Bind a `VPanedPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: VPanedPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(vpaned_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum VPanedSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// The `accept`-position signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted to accept the current position of the handle when
    /// moving it using key bindings.
    /// 
    /// The default binding for this signal is Return or Space.
    case acceptPosition = "accept-position"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    case add = "add"
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
    /// The `cancel`-position signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted to cancel moving the position of the handle using key
    /// bindings. The position of the handle will be reset to the value prior to
    /// moving it.
    /// 
    /// The default binding for this signal is Escape.
    case cancelPosition = "cancel-position"
    case checkResize = "check-resize"
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
    /// The `cycle`-child-focus signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted to cycle the focus between the children of the paned.
    /// 
    /// The default binding is f6.
    case cycleChildFocus = "cycle-child-focus"
    /// The `cycle`-handle-focus signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted to cycle whether the paned should grab focus to allow
    /// the user to change position of the handle by using key bindings.
    /// 
    /// The default binding for this signal is f8.
    case cycleHandleFocus = "cycle-handle-focus"
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
    /// The `move`-handle signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted to move the handle when the user is using key bindings
    /// to move it.
    case moveHandle = "move-handle"
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
    case remove = "remove"
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
    case setFocusChild = "set-focus-child"
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
    /// The `toggle`-handle-focus is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted to accept the current position of the handle and then
    /// move focus to the next widget in the focus chain.
    /// 
    /// The default binding is Tab.
    case toggleHandleFocus = "toggle-handle-focus"
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
    case notifyBorderWidth = "notify::border-width"
    case notifyCanDefault = "notify::can-default"
    case notifyCanFocus = "notify::can-focus"
    case notifyChild = "notify::child"
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
    /// The largest possible value for the position property.
    /// This property is derived from the size and shrinkability
    /// of the widget's children.
    case notifyMaxPosition = "notify::max-position"
    /// The smallest possible value for the position property.
    /// This property is derived from the size and shrinkability
    /// of the widget's children.
    case notifyMinPosition = "notify::min-position"
    case notifyName = "notify::name"
    case notifyNoShowAll = "notify::no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case notifyOpacity = "notify::opacity"
    case notifyParent = "notify::parent"
    case notifyPosition = "notify::position"
    case notifyPositionSet = "notify::position-set"
    case notifyReceivesDefault = "notify::receives-default"
    case notifyResizeMode = "notify::resize-mode"
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
    /// Setting this property to `true` indicates that the paned needs
    /// to provide stronger visual separation (e.g. because it separates
    /// between two notebooks, whose tab rows would otherwise merge visually).
    case notifyWideHandle = "notify::wide-handle"
    case notifyWidthRequest = "notify::width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case notifyWindow = "notify::window"
}

public extension VPanedProtocol {
    /// Connect a `VPanedSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: VPanedSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(vpaned_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension VPanedProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkVPaned` instance.
    var vpaned_ptr: UnsafeMutablePointer<GtkVPaned> { return ptr.assumingMemoryBound(to: GtkVPaned.self) }

}



// MARK: - VScale Class

/// The `VScaleProtocol` protocol exposes the methods and properties of an underlying `GtkVScale` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VScale`.
/// Alternatively, use `VScaleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkVScale` widget is used to allow the user to select a value using
/// a vertical slider. To create one, use `gtk_hscale_new_with_range()`.
/// 
/// The position to show the current value, and the number of decimal places
/// shown can be set using the parent `GtkScale` class’s functions.
/// 
/// GtkVScale has been deprecated, use `GtkScale` instead.
public protocol VScaleProtocol: ScaleProtocol {
    /// Untyped pointer to the underlying `GtkVScale` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkVScale` instance.
    var vscale_ptr: UnsafeMutablePointer<GtkVScale> { get }
}

/// The `VScaleRef` type acts as a lightweight Swift reference to an underlying `GtkVScale` instance.
/// It exposes methods that can operate on this data type through `VScaleProtocol` conformance.
/// Use `VScaleRef` only as an `unowned` reference to an existing `GtkVScale` instance.
///
/// The `GtkVScale` widget is used to allow the user to select a value using
/// a vertical slider. To create one, use `gtk_hscale_new_with_range()`.
/// 
/// The position to show the current value, and the number of decimal places
/// shown can be set using the parent `GtkScale` class’s functions.
/// 
/// GtkVScale has been deprecated, use `GtkScale` instead.
public struct VScaleRef: VScaleProtocol {
    /// Untyped pointer to the underlying `GtkVScale` instance.
    /// For type-safe access, use the generated, typed pointer `vscale_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension VScaleRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkVScale>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `VScaleProtocol`
    init<T: VScaleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScaleProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScaleProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScaleProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScaleProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScaleProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkVScale`.
    ///
    /// **new is deprecated:**
    /// Use gtk_scale_new() with %GTK_ORIENTATION_VERTICAL instead
    @available(*, deprecated) init( adjustment: AdjustmentProtocol) {
        let rv = gtk_vscale_new(cast(adjustment.ptr))
        self.init(cast(rv))
    }

    /// Creates a new vertical scale widget that lets the user input a
    /// number between `min` and `max` (including `min` and `max`) with the
    /// increment `step`.  `step` must be nonzero; it’s the distance the
    /// slider moves when using the arrow keys to adjust the scale value.
    /// 
    /// Note that the way in which the precision is derived works best if `step`
    /// is a power of ten. If the resulting precision is not suitable for your
    /// needs, use `gtk_scale_set_digits()` to correct it.
    ///
    /// **new_with_range is deprecated:**
    /// Use gtk_scale_new_with_range() with %GTK_ORIENTATION_VERTICAL instead
    @available(*, deprecated) init(range min: gdouble, max: gdouble, step: gdouble) {
        let rv = gtk_vscale_new_with_range(min, max, step)
        self.init(cast(rv))
    }
    /// Creates a new vertical scale widget that lets the user input a
    /// number between `min` and `max` (including `min` and `max`) with the
    /// increment `step`.  `step` must be nonzero; it’s the distance the
    /// slider moves when using the arrow keys to adjust the scale value.
    /// 
    /// Note that the way in which the precision is derived works best if `step`
    /// is a power of ten. If the resulting precision is not suitable for your
    /// needs, use `gtk_scale_set_digits()` to correct it.
    ///
    /// **new_with_range is deprecated:**
    /// Use gtk_scale_new_with_range() with %GTK_ORIENTATION_VERTICAL instead
    @available(*, deprecated) static func vscaleNewWith(range min: gdouble, max: gdouble, step: gdouble) -> VScaleRef! {
        let rv = gtk_vscale_new_with_range(min, max, step)
        return rv.map { VScaleRef(cast($0)) }
    }
}

/// The `VScale` type acts as a reference-counted owner of an underlying `GtkVScale` instance.
/// It provides the methods that can operate on this data type through `VScaleProtocol` conformance.
/// Use `VScale` as a strong reference or owner of a `GtkVScale` instance.
///
/// The `GtkVScale` widget is used to allow the user to select a value using
/// a vertical slider. To create one, use `gtk_hscale_new_with_range()`.
/// 
/// The position to show the current value, and the number of decimal places
/// shown can be set using the parent `GtkScale` class’s functions.
/// 
/// GtkVScale has been deprecated, use `GtkScale` instead.
open class VScale: Scale, VScaleProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `VScale` instance.
    public init(_ op: UnsafeMutablePointer<GtkVScale>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `VScaleProtocol`
    /// Will retain `GtkVScale`.
    public convenience init<T: VScaleProtocol>(_ other: T) {
        self.init(cast(other.vscale_ptr))
        g_object_ref(cast(vscale_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScaleProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkVScale.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScaleProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkVScale.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScaleProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkVScale.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScaleProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkVScale>(opaquePointer))
    }

    /// Creates a new `GtkVScale`.
    ///
    /// **new is deprecated:**
    /// Use gtk_scale_new() with %GTK_ORIENTATION_VERTICAL instead
    @available(*, deprecated) public convenience init( adjustment: AdjustmentProtocol) {
        let rv = gtk_vscale_new(cast(adjustment.ptr))
        self.init(cast(rv))
    }

    /// Creates a new vertical scale widget that lets the user input a
    /// number between `min` and `max` (including `min` and `max`) with the
    /// increment `step`.  `step` must be nonzero; it’s the distance the
    /// slider moves when using the arrow keys to adjust the scale value.
    /// 
    /// Note that the way in which the precision is derived works best if `step`
    /// is a power of ten. If the resulting precision is not suitable for your
    /// needs, use `gtk_scale_set_digits()` to correct it.
    ///
    /// **new_with_range is deprecated:**
    /// Use gtk_scale_new_with_range() with %GTK_ORIENTATION_VERTICAL instead
    @available(*, deprecated) public convenience init(range min: gdouble, max: gdouble, step: gdouble) {
        let rv = gtk_vscale_new_with_range(min, max, step)
        self.init(cast(rv))
    }

    /// Creates a new vertical scale widget that lets the user input a
    /// number between `min` and `max` (including `min` and `max`) with the
    /// increment `step`.  `step` must be nonzero; it’s the distance the
    /// slider moves when using the arrow keys to adjust the scale value.
    /// 
    /// Note that the way in which the precision is derived works best if `step`
    /// is a power of ten. If the resulting precision is not suitable for your
    /// needs, use `gtk_scale_set_digits()` to correct it.
    ///
    /// **new_with_range is deprecated:**
    /// Use gtk_scale_new_with_range() with %GTK_ORIENTATION_VERTICAL instead
    @available(*, deprecated) public static func vscaleNewWith(range min: gdouble, max: gdouble, step: gdouble) -> VScale! {
        let rv = gtk_vscale_new_with_range(min, max, step)
        return rv.map { VScale(cast($0)) }
    }

}

public enum VScalePropertyName: String, PropertyNameProtocol {
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

public extension VScaleProtocol {
    /// Bind a `VScalePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: VScalePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(vscale_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum VScaleSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    /// Emitted before clamping a value, to give the application a
    /// chance to adjust the bounds.
    case adjustBounds = "adjust-bounds"
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
    /// The `GtkRange::change`-value signal is emitted when a scroll action is
    /// performed on a range.  It allows an application to determine the
    /// type of scroll event that occurred and the resultant new value.
    /// The application can handle the event itself and return `true` to
    /// prevent further processing.  Or, by returning `false`, it can pass
    /// the event to other handlers until the default GTK+ handler is
    /// reached.
    /// 
    /// The value parameter is unrounded.  An application that overrides
    /// the GtkRange`change`-value signal is responsible for clamping the
    /// value to the desired number of decimal digits; the default GTK+
    /// handler clamps the value based on `GtkRange:round`-digits.
    case changeValue = "change-value"
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
    /// Signal which allows you to change how the scale value is displayed.
    /// Connect a signal handler which returns an allocated string representing
    /// `value`. That string will then be used to display the scale's value.
    /// 
    /// If no user-provided handlers are installed, the value will be displayed on
    /// its own, rounded according to the value of the `GtkScale:digits` property.
    /// 
    /// Here's an example signal handler which displays a value 1.0 as
    /// with "-->1.0<--".
    /// (C Language Example):
    /// ```C
    /// static gchar*
    /// format_value_callback (GtkScale *scale,
    ///                        gdouble   value)
    /// {
    ///   return g_strdup_printf ("-->\%0.*g<--",
    ///                           gtk_scale_get_digits (scale), value);
    ///  }
    /// ```
    /// 
    case formatValue = "format-value"
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
    /// Virtual function that moves the slider. Used for keybindings.
    case moveSlider = "move-slider"
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
    /// Emitted when the range value changes.
    case valueChanged = "value-changed"
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
    case notifyAdjustment = "notify::adjustment"
    case notifyAppPaintable = "notify::app-paintable"
    case notifyCanDefault = "notify::can-default"
    case notifyCanFocus = "notify::can-focus"
    case notifyCompositeChild = "notify::composite-child"
    case notifyDigits = "notify::digits"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case notifyDoubleBuffered = "notify::double-buffered"
    case notifyDrawValue = "notify::draw-value"
    case notifyEvents = "notify::events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case notifyExpand = "notify::expand"
    /// The fill level (e.g. prebuffering of a network stream).
    /// See `gtk_range_set_fill_level()`.
    case notifyFillLevel = "notify::fill-level"
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
    case notifyHasOrigin = "notify::has-origin"
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
    case notifyInverted = "notify::inverted"
    case notifyIsFocus = "notify::is-focus"
    case notifyLowerStepperSensitivity = "notify::lower-stepper-sensitivity"
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
    /// The restrict-to-fill-level property controls whether slider
    /// movement is restricted to an upper boundary set by the
    /// fill level. See `gtk_range_set_restrict_to_fill_level()`.
    case notifyRestrictToFillLevel = "notify::restrict-to-fill-level"
    /// The number of digits to round the value to when
    /// it changes, or -1. See `GtkRange::change`-value.
    case notifyRoundDigits = "notify::round-digits"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
    /// The show-fill-level property controls whether fill level indicator
    /// graphics are displayed on the trough. See
    /// `gtk_range_set_show_fill_level()`.
    case notifyShowFillLevel = "notify::show-fill-level"
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
    case notifyUpperStepperSensitivity = "notify::upper-stepper-sensitivity"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    case notifyValuePos = "notify::value-pos"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    case notifyWidthRequest = "notify::width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case notifyWindow = "notify::window"
}

public extension VScaleProtocol {
    /// Connect a `VScaleSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: VScaleSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(vscale_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension VScaleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkVScale` instance.
    var vscale_ptr: UnsafeMutablePointer<GtkVScale> { return ptr.assumingMemoryBound(to: GtkVScale.self) }

}



// MARK: - VScrollbar Class

/// The `VScrollbarProtocol` protocol exposes the methods and properties of an underlying `GtkVScrollbar` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VScrollbar`.
/// Alternatively, use `VScrollbarRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkVScrollbar` widget is a widget arranged vertically creating a
/// scrollbar. See `GtkScrollbar` for details on
/// scrollbars. `GtkAdjustment` pointers may be added to handle the
/// adjustment of the scrollbar or it may be left `nil` in which case one
/// will be created for you. See `GtkScrollbar` for a description of what the
/// fields in an adjustment represent for a scrollbar.
/// 
/// GtkVScrollbar has been deprecated, use `GtkScrollbar` instead.
public protocol VScrollbarProtocol: ScrollbarProtocol {
    /// Untyped pointer to the underlying `GtkVScrollbar` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkVScrollbar` instance.
    var vscrollbar_ptr: UnsafeMutablePointer<GtkVScrollbar> { get }
}

/// The `VScrollbarRef` type acts as a lightweight Swift reference to an underlying `GtkVScrollbar` instance.
/// It exposes methods that can operate on this data type through `VScrollbarProtocol` conformance.
/// Use `VScrollbarRef` only as an `unowned` reference to an existing `GtkVScrollbar` instance.
///
/// The `GtkVScrollbar` widget is a widget arranged vertically creating a
/// scrollbar. See `GtkScrollbar` for details on
/// scrollbars. `GtkAdjustment` pointers may be added to handle the
/// adjustment of the scrollbar or it may be left `nil` in which case one
/// will be created for you. See `GtkScrollbar` for a description of what the
/// fields in an adjustment represent for a scrollbar.
/// 
/// GtkVScrollbar has been deprecated, use `GtkScrollbar` instead.
public struct VScrollbarRef: VScrollbarProtocol {
    /// Untyped pointer to the underlying `GtkVScrollbar` instance.
    /// For type-safe access, use the generated, typed pointer `vscrollbar_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension VScrollbarRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkVScrollbar>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `VScrollbarProtocol`
    init<T: VScrollbarProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScrollbarProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScrollbarProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScrollbarProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScrollbarProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScrollbarProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new vertical scrollbar.
    ///
    /// **new is deprecated:**
    /// Use gtk_scrollbar_new() with %GTK_ORIENTATION_VERTICAL instead
    @available(*, deprecated) init( adjustment: AdjustmentProtocol) {
        let rv = gtk_vscrollbar_new(cast(adjustment.ptr))
        self.init(cast(rv))
    }
}

/// The `VScrollbar` type acts as a reference-counted owner of an underlying `GtkVScrollbar` instance.
/// It provides the methods that can operate on this data type through `VScrollbarProtocol` conformance.
/// Use `VScrollbar` as a strong reference or owner of a `GtkVScrollbar` instance.
///
/// The `GtkVScrollbar` widget is a widget arranged vertically creating a
/// scrollbar. See `GtkScrollbar` for details on
/// scrollbars. `GtkAdjustment` pointers may be added to handle the
/// adjustment of the scrollbar or it may be left `nil` in which case one
/// will be created for you. See `GtkScrollbar` for a description of what the
/// fields in an adjustment represent for a scrollbar.
/// 
/// GtkVScrollbar has been deprecated, use `GtkScrollbar` instead.
open class VScrollbar: Scrollbar, VScrollbarProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `VScrollbar` instance.
    public init(_ op: UnsafeMutablePointer<GtkVScrollbar>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `VScrollbarProtocol`
    /// Will retain `GtkVScrollbar`.
    public convenience init<T: VScrollbarProtocol>(_ other: T) {
        self.init(cast(other.vscrollbar_ptr))
        g_object_ref(cast(vscrollbar_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScrollbarProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkVScrollbar.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScrollbarProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkVScrollbar.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScrollbarProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkVScrollbar.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VScrollbarProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkVScrollbar>(opaquePointer))
    }

    /// Creates a new vertical scrollbar.
    ///
    /// **new is deprecated:**
    /// Use gtk_scrollbar_new() with %GTK_ORIENTATION_VERTICAL instead
    @available(*, deprecated) public convenience init( adjustment: AdjustmentProtocol) {
        let rv = gtk_vscrollbar_new(cast(adjustment.ptr))
        self.init(cast(rv))
    }


}

public enum VScrollbarPropertyName: String, PropertyNameProtocol {
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

public extension VScrollbarProtocol {
    /// Bind a `VScrollbarPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: VScrollbarPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(vscrollbar_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum VScrollbarSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    /// Emitted before clamping a value, to give the application a
    /// chance to adjust the bounds.
    case adjustBounds = "adjust-bounds"
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
    /// The `GtkRange::change`-value signal is emitted when a scroll action is
    /// performed on a range.  It allows an application to determine the
    /// type of scroll event that occurred and the resultant new value.
    /// The application can handle the event itself and return `true` to
    /// prevent further processing.  Or, by returning `false`, it can pass
    /// the event to other handlers until the default GTK+ handler is
    /// reached.
    /// 
    /// The value parameter is unrounded.  An application that overrides
    /// the GtkRange`change`-value signal is responsible for clamping the
    /// value to the desired number of decimal digits; the default GTK+
    /// handler clamps the value based on `GtkRange:round`-digits.
    case changeValue = "change-value"
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
    /// Virtual function that moves the slider. Used for keybindings.
    case moveSlider = "move-slider"
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
    /// Emitted when the range value changes.
    case valueChanged = "value-changed"
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
    case notifyAdjustment = "notify::adjustment"
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
    /// The fill level (e.g. prebuffering of a network stream).
    /// See `gtk_range_set_fill_level()`.
    case notifyFillLevel = "notify::fill-level"
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
    case notifyInverted = "notify::inverted"
    case notifyIsFocus = "notify::is-focus"
    case notifyLowerStepperSensitivity = "notify::lower-stepper-sensitivity"
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
    /// The restrict-to-fill-level property controls whether slider
    /// movement is restricted to an upper boundary set by the
    /// fill level. See `gtk_range_set_restrict_to_fill_level()`.
    case notifyRestrictToFillLevel = "notify::restrict-to-fill-level"
    /// The number of digits to round the value to when
    /// it changes, or -1. See `GtkRange::change`-value.
    case notifyRoundDigits = "notify::round-digits"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
    /// The show-fill-level property controls whether fill level indicator
    /// graphics are displayed on the trough. See
    /// `gtk_range_set_show_fill_level()`.
    case notifyShowFillLevel = "notify::show-fill-level"
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
    case notifyUpperStepperSensitivity = "notify::upper-stepper-sensitivity"
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

public extension VScrollbarProtocol {
    /// Connect a `VScrollbarSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: VScrollbarSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(vscrollbar_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension VScrollbarProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkVScrollbar` instance.
    var vscrollbar_ptr: UnsafeMutablePointer<GtkVScrollbar> { return ptr.assumingMemoryBound(to: GtkVScrollbar.self) }

}



// MARK: - VSeparator Class

/// The `VSeparatorProtocol` protocol exposes the methods and properties of an underlying `GtkVSeparator` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VSeparator`.
/// Alternatively, use `VSeparatorRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkVSeparator` widget is a vertical separator, used to group the
/// widgets within a window. It displays a vertical line with a shadow to
/// make it appear sunken into the interface.
/// 
/// GtkVSeparator has been deprecated, use `GtkSeparator` instead.
public protocol VSeparatorProtocol: SeparatorProtocol {
    /// Untyped pointer to the underlying `GtkVSeparator` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkVSeparator` instance.
    var vseparator_ptr: UnsafeMutablePointer<GtkVSeparator> { get }
}

/// The `VSeparatorRef` type acts as a lightweight Swift reference to an underlying `GtkVSeparator` instance.
/// It exposes methods that can operate on this data type through `VSeparatorProtocol` conformance.
/// Use `VSeparatorRef` only as an `unowned` reference to an existing `GtkVSeparator` instance.
///
/// The `GtkVSeparator` widget is a vertical separator, used to group the
/// widgets within a window. It displays a vertical line with a shadow to
/// make it appear sunken into the interface.
/// 
/// GtkVSeparator has been deprecated, use `GtkSeparator` instead.
public struct VSeparatorRef: VSeparatorProtocol {
    /// Untyped pointer to the underlying `GtkVSeparator` instance.
    /// For type-safe access, use the generated, typed pointer `vseparator_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension VSeparatorRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkVSeparator>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `VSeparatorProtocol`
    init<T: VSeparatorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VSeparatorProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VSeparatorProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VSeparatorProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VSeparatorProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VSeparatorProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkVSeparator`.
    ///
    /// **new is deprecated:**
    /// Use gtk_separator_new() with %GTK_ORIENTATION_VERTICAL instead
    @available(*, deprecated) init() {
        let rv = gtk_vseparator_new()
        self.init(cast(rv))
    }
}

/// The `VSeparator` type acts as a reference-counted owner of an underlying `GtkVSeparator` instance.
/// It provides the methods that can operate on this data type through `VSeparatorProtocol` conformance.
/// Use `VSeparator` as a strong reference or owner of a `GtkVSeparator` instance.
///
/// The `GtkVSeparator` widget is a vertical separator, used to group the
/// widgets within a window. It displays a vertical line with a shadow to
/// make it appear sunken into the interface.
/// 
/// GtkVSeparator has been deprecated, use `GtkSeparator` instead.
open class VSeparator: Separator, VSeparatorProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `VSeparator` instance.
    public init(_ op: UnsafeMutablePointer<GtkVSeparator>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `VSeparatorProtocol`
    /// Will retain `GtkVSeparator`.
    public convenience init<T: VSeparatorProtocol>(_ other: T) {
        self.init(cast(other.vseparator_ptr))
        g_object_ref(cast(vseparator_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VSeparatorProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkVSeparator.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VSeparatorProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkVSeparator.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VSeparatorProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkVSeparator.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VSeparatorProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkVSeparator>(opaquePointer))
    }

    /// Creates a new `GtkVSeparator`.
    ///
    /// **new is deprecated:**
    /// Use gtk_separator_new() with %GTK_ORIENTATION_VERTICAL instead
    @available(*, deprecated) public convenience init() {
        let rv = gtk_vseparator_new()
        self.init(cast(rv))
    }


}

public enum VSeparatorPropertyName: String, PropertyNameProtocol {
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

public extension VSeparatorProtocol {
    /// Bind a `VSeparatorPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: VSeparatorPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(vseparator_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum VSeparatorSignalName: String, SignalNameProtocol {
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

public extension VSeparatorProtocol {
    /// Connect a `VSeparatorSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: VSeparatorSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(vseparator_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension VSeparatorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkVSeparator` instance.
    var vseparator_ptr: UnsafeMutablePointer<GtkVSeparator> { return ptr.assumingMemoryBound(to: GtkVSeparator.self) }

}



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
/// If a widget has native scrolling abilities, such as `GtkTextView`,
/// `GtkTreeView` or `GtkIconView`, it can be added to a `GtkScrolledWindow`
/// with `gtk_container_add()`. If a widget does not, you must first add the
/// widget to a `GtkViewport`, then add the viewport to the scrolled window.
/// `gtk_container_add()` does this automatically if a child that does not
/// implement `GtkScrollable` is added to a `GtkScrolledWindow`, so you can
/// ignore the presence of the viewport.
/// 
/// The GtkViewport will start scrolling content only if allocated less
/// than the child widget’s minimum size in a given orientation.
/// 
/// # CSS nodes
/// 
/// GtkViewport has a single CSS node with name viewport.
public protocol ViewportProtocol: BinProtocol, ScrollableProtocol {
    /// Untyped pointer to the underlying `GtkViewport` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkViewport` instance.
    var viewport_ptr: UnsafeMutablePointer<GtkViewport> { get }
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
/// If a widget has native scrolling abilities, such as `GtkTextView`,
/// `GtkTreeView` or `GtkIconView`, it can be added to a `GtkScrolledWindow`
/// with `gtk_container_add()`. If a widget does not, you must first add the
/// widget to a `GtkViewport`, then add the viewport to the scrolled window.
/// `gtk_container_add()` does this automatically if a child that does not
/// implement `GtkScrollable` is added to a `GtkScrolledWindow`, so you can
/// ignore the presence of the viewport.
/// 
/// The GtkViewport will start scrolling content only if allocated less
/// than the child widget’s minimum size in a given orientation.
/// 
/// # CSS nodes
/// 
/// GtkViewport has a single CSS node with name viewport.
public struct ViewportRef: ViewportProtocol {
    /// Untyped pointer to the underlying `GtkViewport` instance.
    /// For type-safe access, use the generated, typed pointer `viewport_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ViewportRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkViewport>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ViewportProtocol`
    init<T: ViewportProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkViewport` with the given adjustments, or with default
    /// adjustments if none are given.
    init( hadjustment: AdjustmentProtocol, vadjustment: AdjustmentProtocol) {
        let rv = gtk_viewport_new(cast(hadjustment.ptr), cast(vadjustment.ptr))
        self.init(cast(rv))
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
/// If a widget has native scrolling abilities, such as `GtkTextView`,
/// `GtkTreeView` or `GtkIconView`, it can be added to a `GtkScrolledWindow`
/// with `gtk_container_add()`. If a widget does not, you must first add the
/// widget to a `GtkViewport`, then add the viewport to the scrolled window.
/// `gtk_container_add()` does this automatically if a child that does not
/// implement `GtkScrollable` is added to a `GtkScrolledWindow`, so you can
/// ignore the presence of the viewport.
/// 
/// The GtkViewport will start scrolling content only if allocated less
/// than the child widget’s minimum size in a given orientation.
/// 
/// # CSS nodes
/// 
/// GtkViewport has a single CSS node with name viewport.
open class Viewport: Bin, ViewportProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Viewport` instance.
    public init(_ op: UnsafeMutablePointer<GtkViewport>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `ViewportProtocol`
    /// Will retain `GtkViewport`.
    public convenience init<T: ViewportProtocol>(_ other: T) {
        self.init(cast(other.viewport_ptr))
        g_object_ref(cast(viewport_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkViewport.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkViewport.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkViewport.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ViewportProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkViewport>(opaquePointer))
    }

    /// Creates a new `GtkViewport` with the given adjustments, or with default
    /// adjustments if none are given.
    public convenience init( hadjustment: AdjustmentProtocol, vadjustment: AdjustmentProtocol) {
        let rv = gtk_viewport_new(cast(hadjustment.ptr), cast(vadjustment.ptr))
        self.init(cast(rv))
    }


}

public enum ViewportPropertyName: String, PropertyNameProtocol {
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
    case shadowType = "shadow-type"
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

public extension ViewportProtocol {
    /// Bind a `ViewportPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ViewportPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(viewport_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum ViewportSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    case add = "add"
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
    case checkResize = "check-resize"
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
    case remove = "remove"
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
    case setFocusChild = "set-focus-child"
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
    case notifyBorderWidth = "notify::border-width"
    case notifyCanDefault = "notify::can-default"
    case notifyCanFocus = "notify::can-focus"
    case notifyChild = "notify::child"
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
    case notifyResizeMode = "notify::resize-mode"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
    case notifyShadowType = "notify::shadow-type"
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

public extension ViewportProtocol {
    /// Connect a `ViewportSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: ViewportSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(viewport_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension ViewportProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkViewport` instance.
    var viewport_ptr: UnsafeMutablePointer<GtkViewport> { return ptr.assumingMemoryBound(to: GtkViewport.self) }

    /// Gets the bin window of the `GtkViewport`.
    func getBinWindow() -> UnsafeMutablePointer<GdkWindow>! {
        let rv = gtk_viewport_get_bin_window(cast(viewport_ptr))
        return cast(rv)
    }

    /// Returns the horizontal adjustment of the viewport.
    ///
    /// **get_hadjustment is deprecated:**
    /// Use gtk_scrollable_get_hadjustment()
    @available(*, deprecated) func getHadjustment() -> UnsafeMutablePointer<GtkAdjustment>! {
        let rv = gtk_viewport_get_hadjustment(cast(viewport_ptr))
        return cast(rv)
    }

    /// Gets the shadow type of the `GtkViewport`. See
    /// `gtk_viewport_set_shadow_type()`.
    func getShadowType() -> GtkShadowType {
        let rv = gtk_viewport_get_shadow_type(cast(viewport_ptr))
        return rv
    }

    /// Returns the vertical adjustment of the viewport.
    ///
    /// **get_vadjustment is deprecated:**
    /// Use gtk_scrollable_get_vadjustment()
    @available(*, deprecated) func getVadjustment() -> UnsafeMutablePointer<GtkAdjustment>! {
        let rv = gtk_viewport_get_vadjustment(cast(viewport_ptr))
        return cast(rv)
    }

    /// Gets the view window of the `GtkViewport`.
    func getViewWindow() -> UnsafeMutablePointer<GdkWindow>! {
        let rv = gtk_viewport_get_view_window(cast(viewport_ptr))
        return cast(rv)
    }

    /// Sets the horizontal adjustment of the viewport.
    ///
    /// **set_hadjustment is deprecated:**
    /// Use gtk_scrollable_set_hadjustment()
    @available(*, deprecated) func setHadjustment(adjustment: AdjustmentProtocol) {
        gtk_viewport_set_hadjustment(cast(viewport_ptr), cast(adjustment.ptr))
    
    }

    /// Sets the shadow type of the viewport.
    func setShadow(type: ShadowType) {
        gtk_viewport_set_shadow_type(cast(viewport_ptr), type)
    
    }

    /// Sets the vertical adjustment of the viewport.
    ///
    /// **set_vadjustment is deprecated:**
    /// Use gtk_scrollable_set_vadjustment()
    @available(*, deprecated) func setVadjustment(adjustment: AdjustmentProtocol) {
        gtk_viewport_set_vadjustment(cast(viewport_ptr), cast(adjustment.ptr))
    
    }
    /// Gets the bin window of the `GtkViewport`.
    var binWindow: UnsafeMutablePointer<GdkWindow>! {
        /// Gets the bin window of the `GtkViewport`.
        get {
            let rv = gtk_viewport_get_bin_window(cast(viewport_ptr))
            return cast(rv)
        }
    }

    /// Returns the horizontal adjustment of the viewport.
    ///
    /// **get_hadjustment is deprecated:**
    /// Use gtk_scrollable_get_hadjustment()
    var hadjustment: UnsafeMutablePointer<GtkAdjustment>! {
        /// Returns the horizontal adjustment of the viewport.
        ///
        /// **get_hadjustment is deprecated:**
        /// Use gtk_scrollable_get_hadjustment()
        @available(*, deprecated) get {
            let rv = gtk_viewport_get_hadjustment(cast(viewport_ptr))
            return cast(rv)
        }
        /// Sets the horizontal adjustment of the viewport.
        ///
        /// **set_hadjustment is deprecated:**
        /// Use gtk_scrollable_set_hadjustment()
        @available(*, deprecated) nonmutating set {
            gtk_viewport_set_hadjustment(cast(viewport_ptr), cast(newValue))
        }
    }

    /// Gets the shadow type of the `GtkViewport`. See
    /// `gtk_viewport_set_shadow_type()`.
    var shadowType: GtkShadowType {
        /// Gets the shadow type of the `GtkViewport`. See
        /// `gtk_viewport_set_shadow_type()`.
        get {
            let rv = gtk_viewport_get_shadow_type(cast(viewport_ptr))
            return rv
        }
        /// Sets the shadow type of the viewport.
        nonmutating set {
            gtk_viewport_set_shadow_type(cast(viewport_ptr), newValue)
        }
    }

    /// Returns the vertical adjustment of the viewport.
    ///
    /// **get_vadjustment is deprecated:**
    /// Use gtk_scrollable_get_vadjustment()
    var vadjustment: UnsafeMutablePointer<GtkAdjustment>! {
        /// Returns the vertical adjustment of the viewport.
        ///
        /// **get_vadjustment is deprecated:**
        /// Use gtk_scrollable_get_vadjustment()
        @available(*, deprecated) get {
            let rv = gtk_viewport_get_vadjustment(cast(viewport_ptr))
            return cast(rv)
        }
        /// Sets the vertical adjustment of the viewport.
        ///
        /// **set_vadjustment is deprecated:**
        /// Use gtk_scrollable_set_vadjustment()
        @available(*, deprecated) nonmutating set {
            gtk_viewport_set_vadjustment(cast(viewport_ptr), cast(newValue))
        }
    }

    /// Gets the view window of the `GtkViewport`.
    var viewWindow: UnsafeMutablePointer<GdkWindow>! {
        /// Gets the view window of the `GtkViewport`.
        get {
            let rv = gtk_viewport_get_view_window(cast(viewport_ptr))
            return cast(rv)
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkVolumeButton` instance.
    var volume_button_ptr: UnsafeMutablePointer<GtkVolumeButton> { get }
}

/// The `VolumeButtonRef` type acts as a lightweight Swift reference to an underlying `GtkVolumeButton` instance.
/// It exposes methods that can operate on this data type through `VolumeButtonProtocol` conformance.
/// Use `VolumeButtonRef` only as an `unowned` reference to an existing `GtkVolumeButton` instance.
///
/// `GtkVolumeButton` is a subclass of `GtkScaleButton` that has
/// been tailored for use as a volume control widget with suitable
/// icons, tooltips and accessible labels.
public struct VolumeButtonRef: VolumeButtonProtocol {
    /// Untyped pointer to the underlying `GtkVolumeButton` instance.
    /// For type-safe access, use the generated, typed pointer `volume_button_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension VolumeButtonRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkVolumeButton>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `VolumeButtonProtocol`
    init<T: VolumeButtonProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeButtonProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeButtonProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeButtonProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeButtonProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeButtonProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a `GtkVolumeButton`, with a range between 0.0 and 1.0, with
    /// a stepping of 0.02. Volume values can be obtained and modified using
    /// the functions from `GtkScaleButton`.
    init() {
        let rv = gtk_volume_button_new()
        self.init(cast(rv))
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
    /// Ownership is transferred to the `VolumeButton` instance.
    public init(_ op: UnsafeMutablePointer<GtkVolumeButton>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `VolumeButtonProtocol`
    /// Will retain `GtkVolumeButton`.
    public convenience init<T: VolumeButtonProtocol>(_ other: T) {
        self.init(cast(other.volume_button_ptr))
        g_object_ref(cast(volume_button_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeButtonProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkVolumeButton.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeButtonProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkVolumeButton.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeButtonProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkVolumeButton.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeButtonProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkVolumeButton>(opaquePointer))
    }

    /// Creates a `GtkVolumeButton`, with a range between 0.0 and 1.0, with
    /// a stepping of 0.02. Volume values can be obtained and modified using
    /// the functions from `GtkScaleButton`.
    public convenience init() {
        let rv = gtk_volume_button_new()
        self.init(cast(rv))
    }


}

public enum VolumeButtonPropertyName: String, PropertyNameProtocol {
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
    case adjustment = "adjustment"
    /// If `true`, the button will ignore the `GtkSettings:gtk`-button-images
    /// setting and always show the image, if available.
    /// 
    /// Use this property if the button would be useless or hard to use
    /// without the image.
    case alwaysShowImage = "always-show-image"
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
    /// The child widget to appear next to the button text.
    case image = "image"
    /// The position of the image relative to the text inside the button.
    case imagePosition = "image-position"
    case isFocus = "is-focus"
    case label = "label"
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
    case relief = "relief"
    case resizeMode = "resize-mode"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    case size = "size"
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

    ///
    /// **use-stock is deprecated:**
    /// This method is deprecated.
    case useStock = "use-stock"
    /// Whether to use symbolic icons as the icons. Note that
    /// if the symbolic icons are not available in your installed
    /// theme, then the normal (potentially colorful) icons will
    /// be used.
    case useSymbolic = "use-symbolic"
    case useUnderline = "use-underline"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    case value = "value"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
    /// If the child of the button is a `GtkMisc` or `GtkAlignment`, this property
    /// can be used to control its horizontal alignment. 0.0 is left aligned,
    /// 1.0 is right aligned.
    ///
    /// **xalign is deprecated:**
    /// Access the child widget directly if you need to control
    /// its alignment.
    case xalign = "xalign"
    /// If the child of the button is a `GtkMisc` or `GtkAlignment`, this property
    /// can be used to control its vertical alignment. 0.0 is top aligned,
    /// 1.0 is bottom aligned.
    ///
    /// **yalign is deprecated:**
    /// Access the child widget directly if you need to control
    /// its alignment.
    case yalign = "yalign"
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: VolumeButtonPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(volume_button_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum VolumeButtonSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// The `activate` signal on GtkButton is an action signal and
    /// emitting it causes the button to animate press then release.
    /// Applications should never connect to this signal, but use the
    /// `GtkButton::clicked` signal.
    case activate = "activate"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    case add = "add"
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
    case checkResize = "check-resize"
    /// The `child`-notify signal is emitted for each
    /// [child property](#child-properties)  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// Emitted when the button has been activated (pressed and released).
    case clicked = "clicked"
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
    /// Emitted when the pointer enters the button.
    ///
    /// **enter is deprecated:**
    /// Use the #GtkWidget::enter-notify-event signal.
    case enter = "enter"
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
    /// Emitted when the pointer leaves the button.
    ///
    /// **leave is deprecated:**
    /// Use the #GtkWidget::leave-notify-event signal.
    case leave = "leave"
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
    /// The `popdown` signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted to popdown the scale widget.
    /// 
    /// The default binding for this signal is Escape.
    case popdown = "popdown"
    /// The `popup` signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted to popup the scale widget.
    /// 
    /// The default bindings for this signal are Space, Enter and Return.
    case popup = "popup"
    /// This signal gets emitted whenever a widget should pop up a context
    /// menu. This usually happens through the standard key binding mechanism;
    /// by pressing a certain key while a widget is focused, the user can cause
    /// the widget to pop up a menu.  For example, the `GtkEntry` widget creates
    /// a menu with clipboard commands. See the
    /// [Popup Menu Migration Checklist](#checklist-popup-menu)
    /// for an example of how to use this signal.
    case popupMenu = "popup-menu"
    /// Emitted when the button is pressed.
    ///
    /// **pressed is deprecated:**
    /// Use the #GtkWidget::button-press-event signal.
    case pressed = "pressed"
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
    /// Emitted when the button is released.
    ///
    /// **released is deprecated:**
    /// Use the #GtkWidget::button-release-event signal.
    case released = "released"
    case remove = "remove"
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
    case setFocusChild = "set-focus-child"
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
    /// The `value`-changed signal is emitted when the value field has
    /// changed.
    case valueChanged = "value-changed"
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
    case notifyAdjustment = "notify::adjustment"
    /// If `true`, the button will ignore the `GtkSettings:gtk`-button-images
    /// setting and always show the image, if available.
    /// 
    /// Use this property if the button would be useless or hard to use
    /// without the image.
    case notifyAlwaysShowImage = "notify::always-show-image"
    case notifyAppPaintable = "notify::app-paintable"
    case notifyBorderWidth = "notify::border-width"
    case notifyCanDefault = "notify::can-default"
    case notifyCanFocus = "notify::can-focus"
    case notifyChild = "notify::child"
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
    case notifyIcons = "notify::icons"
    /// The child widget to appear next to the button text.
    case notifyImage = "notify::image"
    /// The position of the image relative to the text inside the button.
    case notifyImagePosition = "notify::image-position"
    case notifyIsFocus = "notify::is-focus"
    case notifyLabel = "notify::label"
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
    case notifyRelief = "notify::relief"
    case notifyResizeMode = "notify::resize-mode"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
    case notifySize = "notify::size"
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

    ///
    /// **use-stock is deprecated:**
    /// This method is deprecated.
    case notifyUseStock = "notify::use-stock"
    /// Whether to use symbolic icons as the icons. Note that
    /// if the symbolic icons are not available in your installed
    /// theme, then the normal (potentially colorful) icons will
    /// be used.
    case notifyUseSymbolic = "notify::use-symbolic"
    case notifyUseUnderline = "notify::use-underline"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    case notifyValue = "notify::value"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    case notifyWidthRequest = "notify::width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case notifyWindow = "notify::window"
    /// If the child of the button is a `GtkMisc` or `GtkAlignment`, this property
    /// can be used to control its horizontal alignment. 0.0 is left aligned,
    /// 1.0 is right aligned.
    ///
    /// **xalign is deprecated:**
    /// Access the child widget directly if you need to control
    /// its alignment.
    case notifyXalign = "notify::xalign"
    /// If the child of the button is a `GtkMisc` or `GtkAlignment`, this property
    /// can be used to control its vertical alignment. 0.0 is top aligned,
    /// 1.0 is bottom aligned.
    ///
    /// **yalign is deprecated:**
    /// Access the child widget directly if you need to control
    /// its alignment.
    case notifyYalign = "notify::yalign"
}

public extension VolumeButtonProtocol {
    /// Connect a `VolumeButtonSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: VolumeButtonSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(volume_button_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension VolumeButtonProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkVolumeButton` instance.
    var volume_button_ptr: UnsafeMutablePointer<GtkVolumeButton> { return ptr.assumingMemoryBound(to: GtkVolumeButton.self) }

}



// MARK: - Widget Class

/// The `WidgetProtocol` protocol exposes the methods and properties of an underlying `GtkWidget` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Widget`.
/// Alternatively, use `WidgetRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkWidget is the base class all widgets in GTK+ derive from. It manages the
/// widget lifecycle, states and style.
/// 
/// # Height-for-width Geometry Management # <a name="geometry-management"></a>
/// 
/// GTK+ uses a height-for-width (and width-for-height) geometry management
/// system. Height-for-width means that a widget can change how much
/// vertical space it needs, depending on the amount of horizontal space
/// that it is given (and similar for width-for-height). The most common
/// example is a label that reflows to fill up the available width, wraps
/// to fewer lines, and therefore needs less height.
/// 
/// Height-for-width geometry management is implemented in GTK+ by way
/// of five virtual methods:
/// 
/// - `GtkWidgetClass.get_request_mode``()`
/// - `GtkWidgetClass.get_preferred_width``()`
/// - `GtkWidgetClass.get_preferred_height``()`
/// - `GtkWidgetClass.get_preferred_height_for_width``()`
/// - `GtkWidgetClass.get_preferred_width_for_height``()`
/// - `GtkWidgetClass.get_preferred_height_and_baseline_for_width``()`
/// 
/// There are some important things to keep in mind when implementing
/// height-for-width and when using it in container implementations.
/// 
/// The geometry management system will query a widget hierarchy in
/// only one orientation at a time. When widgets are initially queried
/// for their minimum sizes it is generally done in two initial passes
/// in the `GtkSizeRequestMode` chosen by the toplevel.
/// 
/// For example, when queried in the normal
/// `GTK_SIZE_REQUEST_HEIGHT_FOR_WIDTH` mode:
/// First, the default minimum and natural width for each widget
/// in the interface will be computed using `gtk_widget_get_preferred_width()`.
/// Because the preferred widths for each container depend on the preferred
/// widths of their children, this information propagates up the hierarchy,
/// and finally a minimum and natural width is determined for the entire
/// toplevel. Next, the toplevel will use the minimum width to query for the
/// minimum height contextual to that width using
/// `gtk_widget_get_preferred_height_for_width()`, which will also be a highly
/// recursive operation. The minimum height for the minimum width is normally
/// used to set the minimum size constraint on the toplevel
/// (unless `gtk_window_set_geometry_hints()` is explicitly used instead).
/// 
/// After the toplevel window has initially requested its size in both
/// dimensions it can go on to allocate itself a reasonable size (or a size
/// previously specified with `gtk_window_set_default_size()`). During the
/// recursive allocation process it’s important to note that request cycles
/// will be recursively executed while container widgets allocate their children.
/// Each container widget, once allocated a size, will go on to first share the
/// space in one orientation among its children and then request each child's
/// height for its target allocated width or its width for allocated height,
/// depending. In this way a `GtkWidget` will typically be requested its size
/// a number of times before actually being allocated a size. The size a
/// widget is finally allocated can of course differ from the size it has
/// requested. For this reason, `GtkWidget` caches a  small number of results
/// to avoid re-querying for the same sizes in one allocation cycle.
/// 
/// See
/// [GtkContainer’s geometry management section](#container-geometry-management)
/// to learn more about how height-for-width allocations are performed
/// by container widgets.
/// 
/// If a widget does move content around to intelligently use up the
/// allocated size then it must support the request in both
/// `GtkSizeRequestModes` even if the widget in question only
/// trades sizes in a single orientation.
/// 
/// For instance, a `GtkLabel` that does height-for-width word wrapping
/// will not expect to have `GtkWidgetClass.get_preferred_height``()` called
/// because that call is specific to a width-for-height request. In this
/// case the label must return the height required for its own minimum
/// possible width. By following this rule any widget that handles
/// height-for-width or width-for-height requests will always be allocated
/// at least enough space to fit its own content.
/// 
/// Here are some examples of how a `GTK_SIZE_REQUEST_HEIGHT_FOR_WIDTH` widget
/// generally deals with width-for-height requests, for `GtkWidgetClass.get_preferred_height``()`
/// it will do:
/// 
/// (C Language Example):
/// ```C
/// static void
/// foo_widget_get_preferred_height (GtkWidget *widget,
///                                  gint *min_height,
///                                  gint *nat_height)
/// {
///    if (i_am_in_height_for_width_mode)
///      {
///        gint min_width, nat_width;
/// 
///        GTK_WIDGET_GET_CLASS (widget)->get_preferred_width (widget,
///                                                            &min_width,
///                                                            &nat_width);
///        GTK_WIDGET_GET_CLASS (widget)->get_preferred_height_for_width
///                                                           (widget,
///                                                            min_width,
///                                                            min_height,
///                                                            nat_height);
///      }
///    else
///      {
///         ... some widgets do both. For instance, if a GtkLabel is
///         rotated to 90 degrees it will return the minimum and
///         natural height for the rotated label here.
///      }
/// }
/// ```
/// 
/// And in `GtkWidgetClass.get_preferred_width_for_height``()` it will simply return
/// the minimum and natural width:
/// (C Language Example):
/// ```C
/// static void
/// foo_widget_get_preferred_width_for_height (GtkWidget *widget,
///                                            gint for_height,
///                                            gint *min_width,
///                                            gint *nat_width)
/// {
///    if (i_am_in_height_for_width_mode)
///      {
///        GTK_WIDGET_GET_CLASS (widget)->get_preferred_width (widget,
///                                                            min_width,
///                                                            nat_width);
///      }
///    else
///      {
///         ... again if a widget is sometimes operating in
///         width-for-height mode (like a rotated GtkLabel) it can go
///         ahead and do its real width for height calculation here.
///      }
/// }
/// ```
/// 
/// Often a widget needs to get its own request during size request or
/// allocation. For example, when computing height it may need to also
/// compute width. Or when deciding how to use an allocation, the widget
/// may need to know its natural size. In these cases, the widget should
/// be careful to call its virtual methods directly, like this:
/// 
/// (C Language Example):
/// ```C
/// GTK_WIDGET_GET_CLASS(widget)->get_preferred_width (widget,
///                                                    &min,
///                                                    &natural);
/// ```
/// 
/// It will not work to use the wrapper functions, such as
/// `gtk_widget_get_preferred_width()` inside your own size request
/// implementation. These return a request adjusted by `GtkSizeGroup`
/// and by the `GtkWidgetClass.adjust_size_request``()` virtual method. If a
/// widget used the wrappers inside its virtual method implementations,
/// then the adjustments (such as widget margins) would be applied
/// twice. GTK+ therefore does not allow this and will warn if you try
/// to do it.
/// 
/// Of course if you are getting the size request for
/// another widget, such as a child of a
/// container, you must use the wrapper APIs.
/// Otherwise, you would not properly consider widget margins,
/// `GtkSizeGroup`, and so forth.
/// 
/// Since 3.10 GTK+ also supports baseline vertical alignment of widgets. This
/// means that widgets are positioned such that the typographical baseline of
/// widgets in the same row are aligned. This happens if a widget supports baselines,
/// has a vertical alignment of `GTK_ALIGN_BASELINE`, and is inside a container
/// that supports baselines and has a natural “row” that it aligns to the baseline,
/// or a baseline assigned to it by the grandparent.
/// 
/// Baseline alignment support for a widget is done by the `GtkWidgetClass.get_preferred_height_and_baseline_for_width``()`
/// virtual function. It allows you to report a baseline in combination with the
/// minimum and natural height. If there is no baseline you can return -1 to indicate
/// this. The default implementation of this virtual function calls into the
/// `GtkWidgetClass.get_preferred_height``()` and `GtkWidgetClass.get_preferred_height_for_width``()`,
/// so if baselines are not supported it doesn’t need to be implemented.
/// 
/// If a widget ends up baseline aligned it will be allocated all the space in the parent
/// as if it was `GTK_ALIGN_FILL`, but the selected baseline can be found via `gtk_widget_get_allocated_baseline()`.
/// If this has a value other than -1 you need to align the widget such that the baseline
/// appears at the position.
/// 
/// # Style Properties
/// 
/// `GtkWidget` introduces “style
/// properties” - these are basically object properties that are stored
/// not on the object, but in the style object associated to the widget. Style
/// properties are set in [resource files](#gtk3-Resource-Files).
/// This mechanism is used for configuring such things as the location of the
/// scrollbar arrows through the theme, giving theme authors more control over the
/// look of applications without the need to write a theme engine in C.
/// 
/// Use `gtk_widget_class_install_style_property()` to install style properties for
/// a widget class, `gtk_widget_class_find_style_property()` or
/// `gtk_widget_class_list_style_properties()` to get information about existing
/// style properties and `gtk_widget_style_get_property()`, `gtk_widget_style_get()` or
/// `gtk_widget_style_get_valist()` to obtain the value of a style property.
/// 
/// # GtkWidget as GtkBuildable
/// 
/// The GtkWidget implementation of the GtkBuildable interface supports a
/// custom <accelerator> element, which has attributes named ”key”, ”modifiers”
/// and ”signal” and allows to specify accelerators.
/// 
/// An example of a UI definition fragment specifying an accelerator:
/// ```
/// <object class="GtkButton">
///   <accelerator key="q" modifiers="GDK_CONTROL_MASK" signal="clicked"/>
/// </object>
/// ```
/// 
/// In addition to accelerators, GtkWidget also support a custom <accessible>
/// element, which supports actions and relations. Properties on the accessible
/// implementation of an object can be set by accessing the internal child
/// “accessible” of a `GtkWidget`.
/// 
/// An example of a UI definition fragment specifying an accessible:
/// ```
/// <object class="GtkLabel" id="label1"/>
///   <property name="label">I am a Label for a Button</property>
/// </object>
/// <object class="GtkButton" id="button1">
///   <accessibility>
///     <action action_name="click" translatable="yes">Click the button.</action>
///     <relation target="label1" type="labelled-by"/>
///   </accessibility>
///   <child internal-child="accessible">
///     <object class="AtkObject" id="a11y-button1">
///       <property name="accessible-name">Clickable Button</property>
///     </object>
///   </child>
/// </object>
/// ```
/// 
/// Finally, GtkWidget allows style information such as style classes to
/// be associated with widgets, using the custom <style> element:
/// ```
/// <object class="GtkButton" id="button1">
///   <style>
///     <class name="my-special-button-class"/>
///     <class name="dark-button"/>
///   </style>
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
///     <property name="orientation">GTK_ORIENTATION_HORIZONTAL</property>
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
public protocol WidgetProtocol: InitiallyUnownedProtocol, Atk.ImplementorIfaceProtocol, BuildableProtocol {
    /// Untyped pointer to the underlying `GtkWidget` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkWidget` instance.
    var widget_ptr: UnsafeMutablePointer<GtkWidget> { get }
}

/// The `WidgetRef` type acts as a lightweight Swift reference to an underlying `GtkWidget` instance.
/// It exposes methods that can operate on this data type through `WidgetProtocol` conformance.
/// Use `WidgetRef` only as an `unowned` reference to an existing `GtkWidget` instance.
///
/// GtkWidget is the base class all widgets in GTK+ derive from. It manages the
/// widget lifecycle, states and style.
/// 
/// # Height-for-width Geometry Management # <a name="geometry-management"></a>
/// 
/// GTK+ uses a height-for-width (and width-for-height) geometry management
/// system. Height-for-width means that a widget can change how much
/// vertical space it needs, depending on the amount of horizontal space
/// that it is given (and similar for width-for-height). The most common
/// example is a label that reflows to fill up the available width, wraps
/// to fewer lines, and therefore needs less height.
/// 
/// Height-for-width geometry management is implemented in GTK+ by way
/// of five virtual methods:
/// 
/// - `GtkWidgetClass.get_request_mode``()`
/// - `GtkWidgetClass.get_preferred_width``()`
/// - `GtkWidgetClass.get_preferred_height``()`
/// - `GtkWidgetClass.get_preferred_height_for_width``()`
/// - `GtkWidgetClass.get_preferred_width_for_height``()`
/// - `GtkWidgetClass.get_preferred_height_and_baseline_for_width``()`
/// 
/// There are some important things to keep in mind when implementing
/// height-for-width and when using it in container implementations.
/// 
/// The geometry management system will query a widget hierarchy in
/// only one orientation at a time. When widgets are initially queried
/// for their minimum sizes it is generally done in two initial passes
/// in the `GtkSizeRequestMode` chosen by the toplevel.
/// 
/// For example, when queried in the normal
/// `GTK_SIZE_REQUEST_HEIGHT_FOR_WIDTH` mode:
/// First, the default minimum and natural width for each widget
/// in the interface will be computed using `gtk_widget_get_preferred_width()`.
/// Because the preferred widths for each container depend on the preferred
/// widths of their children, this information propagates up the hierarchy,
/// and finally a minimum and natural width is determined for the entire
/// toplevel. Next, the toplevel will use the minimum width to query for the
/// minimum height contextual to that width using
/// `gtk_widget_get_preferred_height_for_width()`, which will also be a highly
/// recursive operation. The minimum height for the minimum width is normally
/// used to set the minimum size constraint on the toplevel
/// (unless `gtk_window_set_geometry_hints()` is explicitly used instead).
/// 
/// After the toplevel window has initially requested its size in both
/// dimensions it can go on to allocate itself a reasonable size (or a size
/// previously specified with `gtk_window_set_default_size()`). During the
/// recursive allocation process it’s important to note that request cycles
/// will be recursively executed while container widgets allocate their children.
/// Each container widget, once allocated a size, will go on to first share the
/// space in one orientation among its children and then request each child's
/// height for its target allocated width or its width for allocated height,
/// depending. In this way a `GtkWidget` will typically be requested its size
/// a number of times before actually being allocated a size. The size a
/// widget is finally allocated can of course differ from the size it has
/// requested. For this reason, `GtkWidget` caches a  small number of results
/// to avoid re-querying for the same sizes in one allocation cycle.
/// 
/// See
/// [GtkContainer’s geometry management section](#container-geometry-management)
/// to learn more about how height-for-width allocations are performed
/// by container widgets.
/// 
/// If a widget does move content around to intelligently use up the
/// allocated size then it must support the request in both
/// `GtkSizeRequestModes` even if the widget in question only
/// trades sizes in a single orientation.
/// 
/// For instance, a `GtkLabel` that does height-for-width word wrapping
/// will not expect to have `GtkWidgetClass.get_preferred_height``()` called
/// because that call is specific to a width-for-height request. In this
/// case the label must return the height required for its own minimum
/// possible width. By following this rule any widget that handles
/// height-for-width or width-for-height requests will always be allocated
/// at least enough space to fit its own content.
/// 
/// Here are some examples of how a `GTK_SIZE_REQUEST_HEIGHT_FOR_WIDTH` widget
/// generally deals with width-for-height requests, for `GtkWidgetClass.get_preferred_height``()`
/// it will do:
/// 
/// (C Language Example):
/// ```C
/// static void
/// foo_widget_get_preferred_height (GtkWidget *widget,
///                                  gint *min_height,
///                                  gint *nat_height)
/// {
///    if (i_am_in_height_for_width_mode)
///      {
///        gint min_width, nat_width;
/// 
///        GTK_WIDGET_GET_CLASS (widget)->get_preferred_width (widget,
///                                                            &min_width,
///                                                            &nat_width);
///        GTK_WIDGET_GET_CLASS (widget)->get_preferred_height_for_width
///                                                           (widget,
///                                                            min_width,
///                                                            min_height,
///                                                            nat_height);
///      }
///    else
///      {
///         ... some widgets do both. For instance, if a GtkLabel is
///         rotated to 90 degrees it will return the minimum and
///         natural height for the rotated label here.
///      }
/// }
/// ```
/// 
/// And in `GtkWidgetClass.get_preferred_width_for_height``()` it will simply return
/// the minimum and natural width:
/// (C Language Example):
/// ```C
/// static void
/// foo_widget_get_preferred_width_for_height (GtkWidget *widget,
///                                            gint for_height,
///                                            gint *min_width,
///                                            gint *nat_width)
/// {
///    if (i_am_in_height_for_width_mode)
///      {
///        GTK_WIDGET_GET_CLASS (widget)->get_preferred_width (widget,
///                                                            min_width,
///                                                            nat_width);
///      }
///    else
///      {
///         ... again if a widget is sometimes operating in
///         width-for-height mode (like a rotated GtkLabel) it can go
///         ahead and do its real width for height calculation here.
///      }
/// }
/// ```
/// 
/// Often a widget needs to get its own request during size request or
/// allocation. For example, when computing height it may need to also
/// compute width. Or when deciding how to use an allocation, the widget
/// may need to know its natural size. In these cases, the widget should
/// be careful to call its virtual methods directly, like this:
/// 
/// (C Language Example):
/// ```C
/// GTK_WIDGET_GET_CLASS(widget)->get_preferred_width (widget,
///                                                    &min,
///                                                    &natural);
/// ```
/// 
/// It will not work to use the wrapper functions, such as
/// `gtk_widget_get_preferred_width()` inside your own size request
/// implementation. These return a request adjusted by `GtkSizeGroup`
/// and by the `GtkWidgetClass.adjust_size_request``()` virtual method. If a
/// widget used the wrappers inside its virtual method implementations,
/// then the adjustments (such as widget margins) would be applied
/// twice. GTK+ therefore does not allow this and will warn if you try
/// to do it.
/// 
/// Of course if you are getting the size request for
/// another widget, such as a child of a
/// container, you must use the wrapper APIs.
/// Otherwise, you would not properly consider widget margins,
/// `GtkSizeGroup`, and so forth.
/// 
/// Since 3.10 GTK+ also supports baseline vertical alignment of widgets. This
/// means that widgets are positioned such that the typographical baseline of
/// widgets in the same row are aligned. This happens if a widget supports baselines,
/// has a vertical alignment of `GTK_ALIGN_BASELINE`, and is inside a container
/// that supports baselines and has a natural “row” that it aligns to the baseline,
/// or a baseline assigned to it by the grandparent.
/// 
/// Baseline alignment support for a widget is done by the `GtkWidgetClass.get_preferred_height_and_baseline_for_width``()`
/// virtual function. It allows you to report a baseline in combination with the
/// minimum and natural height. If there is no baseline you can return -1 to indicate
/// this. The default implementation of this virtual function calls into the
/// `GtkWidgetClass.get_preferred_height``()` and `GtkWidgetClass.get_preferred_height_for_width``()`,
/// so if baselines are not supported it doesn’t need to be implemented.
/// 
/// If a widget ends up baseline aligned it will be allocated all the space in the parent
/// as if it was `GTK_ALIGN_FILL`, but the selected baseline can be found via `gtk_widget_get_allocated_baseline()`.
/// If this has a value other than -1 you need to align the widget such that the baseline
/// appears at the position.
/// 
/// # Style Properties
/// 
/// `GtkWidget` introduces “style
/// properties” - these are basically object properties that are stored
/// not on the object, but in the style object associated to the widget. Style
/// properties are set in [resource files](#gtk3-Resource-Files).
/// This mechanism is used for configuring such things as the location of the
/// scrollbar arrows through the theme, giving theme authors more control over the
/// look of applications without the need to write a theme engine in C.
/// 
/// Use `gtk_widget_class_install_style_property()` to install style properties for
/// a widget class, `gtk_widget_class_find_style_property()` or
/// `gtk_widget_class_list_style_properties()` to get information about existing
/// style properties and `gtk_widget_style_get_property()`, `gtk_widget_style_get()` or
/// `gtk_widget_style_get_valist()` to obtain the value of a style property.
/// 
/// # GtkWidget as GtkBuildable
/// 
/// The GtkWidget implementation of the GtkBuildable interface supports a
/// custom <accelerator> element, which has attributes named ”key”, ”modifiers”
/// and ”signal” and allows to specify accelerators.
/// 
/// An example of a UI definition fragment specifying an accelerator:
/// ```
/// <object class="GtkButton">
///   <accelerator key="q" modifiers="GDK_CONTROL_MASK" signal="clicked"/>
/// </object>
/// ```
/// 
/// In addition to accelerators, GtkWidget also support a custom <accessible>
/// element, which supports actions and relations. Properties on the accessible
/// implementation of an object can be set by accessing the internal child
/// “accessible” of a `GtkWidget`.
/// 
/// An example of a UI definition fragment specifying an accessible:
/// ```
/// <object class="GtkLabel" id="label1"/>
///   <property name="label">I am a Label for a Button</property>
/// </object>
/// <object class="GtkButton" id="button1">
///   <accessibility>
///     <action action_name="click" translatable="yes">Click the button.</action>
///     <relation target="label1" type="labelled-by"/>
///   </accessibility>
///   <child internal-child="accessible">
///     <object class="AtkObject" id="a11y-button1">
///       <property name="accessible-name">Clickable Button</property>
///     </object>
///   </child>
/// </object>
/// ```
/// 
/// Finally, GtkWidget allows style information such as style classes to
/// be associated with widgets, using the custom <style> element:
/// ```
/// <object class="GtkButton" id="button1">
///   <style>
///     <class name="my-special-button-class"/>
///     <class name="dark-button"/>
///   </style>
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
///     <property name="orientation">GTK_ORIENTATION_HORIZONTAL</property>
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
public struct WidgetRef: WidgetProtocol {
    /// Untyped pointer to the underlying `GtkWidget` instance.
    /// For type-safe access, use the generated, typed pointer `widget_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension WidgetRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkWidget>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `WidgetProtocol`
    init<T: WidgetProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    
    // *** new() is not available because it has a varargs (...) parameter!

}

/// The `Widget` type acts as a reference-counted owner of an underlying `GtkWidget` instance.
/// It provides the methods that can operate on this data type through `WidgetProtocol` conformance.
/// Use `Widget` as a strong reference or owner of a `GtkWidget` instance.
///
/// GtkWidget is the base class all widgets in GTK+ derive from. It manages the
/// widget lifecycle, states and style.
/// 
/// # Height-for-width Geometry Management # <a name="geometry-management"></a>
/// 
/// GTK+ uses a height-for-width (and width-for-height) geometry management
/// system. Height-for-width means that a widget can change how much
/// vertical space it needs, depending on the amount of horizontal space
/// that it is given (and similar for width-for-height). The most common
/// example is a label that reflows to fill up the available width, wraps
/// to fewer lines, and therefore needs less height.
/// 
/// Height-for-width geometry management is implemented in GTK+ by way
/// of five virtual methods:
/// 
/// - `GtkWidgetClass.get_request_mode``()`
/// - `GtkWidgetClass.get_preferred_width``()`
/// - `GtkWidgetClass.get_preferred_height``()`
/// - `GtkWidgetClass.get_preferred_height_for_width``()`
/// - `GtkWidgetClass.get_preferred_width_for_height``()`
/// - `GtkWidgetClass.get_preferred_height_and_baseline_for_width``()`
/// 
/// There are some important things to keep in mind when implementing
/// height-for-width and when using it in container implementations.
/// 
/// The geometry management system will query a widget hierarchy in
/// only one orientation at a time. When widgets are initially queried
/// for their minimum sizes it is generally done in two initial passes
/// in the `GtkSizeRequestMode` chosen by the toplevel.
/// 
/// For example, when queried in the normal
/// `GTK_SIZE_REQUEST_HEIGHT_FOR_WIDTH` mode:
/// First, the default minimum and natural width for each widget
/// in the interface will be computed using `gtk_widget_get_preferred_width()`.
/// Because the preferred widths for each container depend on the preferred
/// widths of their children, this information propagates up the hierarchy,
/// and finally a minimum and natural width is determined for the entire
/// toplevel. Next, the toplevel will use the minimum width to query for the
/// minimum height contextual to that width using
/// `gtk_widget_get_preferred_height_for_width()`, which will also be a highly
/// recursive operation. The minimum height for the minimum width is normally
/// used to set the minimum size constraint on the toplevel
/// (unless `gtk_window_set_geometry_hints()` is explicitly used instead).
/// 
/// After the toplevel window has initially requested its size in both
/// dimensions it can go on to allocate itself a reasonable size (or a size
/// previously specified with `gtk_window_set_default_size()`). During the
/// recursive allocation process it’s important to note that request cycles
/// will be recursively executed while container widgets allocate their children.
/// Each container widget, once allocated a size, will go on to first share the
/// space in one orientation among its children and then request each child's
/// height for its target allocated width or its width for allocated height,
/// depending. In this way a `GtkWidget` will typically be requested its size
/// a number of times before actually being allocated a size. The size a
/// widget is finally allocated can of course differ from the size it has
/// requested. For this reason, `GtkWidget` caches a  small number of results
/// to avoid re-querying for the same sizes in one allocation cycle.
/// 
/// See
/// [GtkContainer’s geometry management section](#container-geometry-management)
/// to learn more about how height-for-width allocations are performed
/// by container widgets.
/// 
/// If a widget does move content around to intelligently use up the
/// allocated size then it must support the request in both
/// `GtkSizeRequestModes` even if the widget in question only
/// trades sizes in a single orientation.
/// 
/// For instance, a `GtkLabel` that does height-for-width word wrapping
/// will not expect to have `GtkWidgetClass.get_preferred_height``()` called
/// because that call is specific to a width-for-height request. In this
/// case the label must return the height required for its own minimum
/// possible width. By following this rule any widget that handles
/// height-for-width or width-for-height requests will always be allocated
/// at least enough space to fit its own content.
/// 
/// Here are some examples of how a `GTK_SIZE_REQUEST_HEIGHT_FOR_WIDTH` widget
/// generally deals with width-for-height requests, for `GtkWidgetClass.get_preferred_height``()`
/// it will do:
/// 
/// (C Language Example):
/// ```C
/// static void
/// foo_widget_get_preferred_height (GtkWidget *widget,
///                                  gint *min_height,
///                                  gint *nat_height)
/// {
///    if (i_am_in_height_for_width_mode)
///      {
///        gint min_width, nat_width;
/// 
///        GTK_WIDGET_GET_CLASS (widget)->get_preferred_width (widget,
///                                                            &min_width,
///                                                            &nat_width);
///        GTK_WIDGET_GET_CLASS (widget)->get_preferred_height_for_width
///                                                           (widget,
///                                                            min_width,
///                                                            min_height,
///                                                            nat_height);
///      }
///    else
///      {
///         ... some widgets do both. For instance, if a GtkLabel is
///         rotated to 90 degrees it will return the minimum and
///         natural height for the rotated label here.
///      }
/// }
/// ```
/// 
/// And in `GtkWidgetClass.get_preferred_width_for_height``()` it will simply return
/// the minimum and natural width:
/// (C Language Example):
/// ```C
/// static void
/// foo_widget_get_preferred_width_for_height (GtkWidget *widget,
///                                            gint for_height,
///                                            gint *min_width,
///                                            gint *nat_width)
/// {
///    if (i_am_in_height_for_width_mode)
///      {
///        GTK_WIDGET_GET_CLASS (widget)->get_preferred_width (widget,
///                                                            min_width,
///                                                            nat_width);
///      }
///    else
///      {
///         ... again if a widget is sometimes operating in
///         width-for-height mode (like a rotated GtkLabel) it can go
///         ahead and do its real width for height calculation here.
///      }
/// }
/// ```
/// 
/// Often a widget needs to get its own request during size request or
/// allocation. For example, when computing height it may need to also
/// compute width. Or when deciding how to use an allocation, the widget
/// may need to know its natural size. In these cases, the widget should
/// be careful to call its virtual methods directly, like this:
/// 
/// (C Language Example):
/// ```C
/// GTK_WIDGET_GET_CLASS(widget)->get_preferred_width (widget,
///                                                    &min,
///                                                    &natural);
/// ```
/// 
/// It will not work to use the wrapper functions, such as
/// `gtk_widget_get_preferred_width()` inside your own size request
/// implementation. These return a request adjusted by `GtkSizeGroup`
/// and by the `GtkWidgetClass.adjust_size_request``()` virtual method. If a
/// widget used the wrappers inside its virtual method implementations,
/// then the adjustments (such as widget margins) would be applied
/// twice. GTK+ therefore does not allow this and will warn if you try
/// to do it.
/// 
/// Of course if you are getting the size request for
/// another widget, such as a child of a
/// container, you must use the wrapper APIs.
/// Otherwise, you would not properly consider widget margins,
/// `GtkSizeGroup`, and so forth.
/// 
/// Since 3.10 GTK+ also supports baseline vertical alignment of widgets. This
/// means that widgets are positioned such that the typographical baseline of
/// widgets in the same row are aligned. This happens if a widget supports baselines,
/// has a vertical alignment of `GTK_ALIGN_BASELINE`, and is inside a container
/// that supports baselines and has a natural “row” that it aligns to the baseline,
/// or a baseline assigned to it by the grandparent.
/// 
/// Baseline alignment support for a widget is done by the `GtkWidgetClass.get_preferred_height_and_baseline_for_width``()`
/// virtual function. It allows you to report a baseline in combination with the
/// minimum and natural height. If there is no baseline you can return -1 to indicate
/// this. The default implementation of this virtual function calls into the
/// `GtkWidgetClass.get_preferred_height``()` and `GtkWidgetClass.get_preferred_height_for_width``()`,
/// so if baselines are not supported it doesn’t need to be implemented.
/// 
/// If a widget ends up baseline aligned it will be allocated all the space in the parent
/// as if it was `GTK_ALIGN_FILL`, but the selected baseline can be found via `gtk_widget_get_allocated_baseline()`.
/// If this has a value other than -1 you need to align the widget such that the baseline
/// appears at the position.
/// 
/// # Style Properties
/// 
/// `GtkWidget` introduces “style
/// properties” - these are basically object properties that are stored
/// not on the object, but in the style object associated to the widget. Style
/// properties are set in [resource files](#gtk3-Resource-Files).
/// This mechanism is used for configuring such things as the location of the
/// scrollbar arrows through the theme, giving theme authors more control over the
/// look of applications without the need to write a theme engine in C.
/// 
/// Use `gtk_widget_class_install_style_property()` to install style properties for
/// a widget class, `gtk_widget_class_find_style_property()` or
/// `gtk_widget_class_list_style_properties()` to get information about existing
/// style properties and `gtk_widget_style_get_property()`, `gtk_widget_style_get()` or
/// `gtk_widget_style_get_valist()` to obtain the value of a style property.
/// 
/// # GtkWidget as GtkBuildable
/// 
/// The GtkWidget implementation of the GtkBuildable interface supports a
/// custom <accelerator> element, which has attributes named ”key”, ”modifiers”
/// and ”signal” and allows to specify accelerators.
/// 
/// An example of a UI definition fragment specifying an accelerator:
/// ```
/// <object class="GtkButton">
///   <accelerator key="q" modifiers="GDK_CONTROL_MASK" signal="clicked"/>
/// </object>
/// ```
/// 
/// In addition to accelerators, GtkWidget also support a custom <accessible>
/// element, which supports actions and relations. Properties on the accessible
/// implementation of an object can be set by accessing the internal child
/// “accessible” of a `GtkWidget`.
/// 
/// An example of a UI definition fragment specifying an accessible:
/// ```
/// <object class="GtkLabel" id="label1"/>
///   <property name="label">I am a Label for a Button</property>
/// </object>
/// <object class="GtkButton" id="button1">
///   <accessibility>
///     <action action_name="click" translatable="yes">Click the button.</action>
///     <relation target="label1" type="labelled-by"/>
///   </accessibility>
///   <child internal-child="accessible">
///     <object class="AtkObject" id="a11y-button1">
///       <property name="accessible-name">Clickable Button</property>
///     </object>
///   </child>
/// </object>
/// ```
/// 
/// Finally, GtkWidget allows style information such as style classes to
/// be associated with widgets, using the custom <style> element:
/// ```
/// <object class="GtkButton" id="button1">
///   <style>
///     <class name="my-special-button-class"/>
///     <class name="dark-button"/>
///   </style>
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
///     <property name="orientation">GTK_ORIENTATION_HORIZONTAL</property>
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
open class Widget: InitiallyUnowned, WidgetProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Widget` instance.
    public init(_ op: UnsafeMutablePointer<GtkWidget>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `WidgetProtocol`
    /// Will retain `GtkWidget`.
    public convenience init<T: WidgetProtocol>(_ other: T) {
        self.init(cast(other.widget_ptr))
        g_object_ref(cast(widget_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkWidget.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkWidget.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkWidget.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkWidget>(opaquePointer))
    }


    // *** new() is not available because it has a varargs (...) parameter!



}

public enum WidgetPropertyName: String, PropertyNameProtocol {
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

public extension WidgetProtocol {
    /// Bind a `WidgetPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: WidgetPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(widget_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum WidgetSignalName: String, SignalNameProtocol {
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

public extension WidgetProtocol {
    /// Connect a `WidgetSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: WidgetSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(widget_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension WidgetProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkWidget` instance.
    var widget_ptr: UnsafeMutablePointer<GtkWidget> { return ptr.assumingMemoryBound(to: GtkWidget.self) }

    /// For widgets that can be “activated” (buttons, menu items, etc.)
    /// this function activates them. Activation is what happens when you
    /// press Enter on a widget during key navigation. If `widget` isn't
    /// activatable, the function returns `false`.
    func activate() -> Bool {
        let rv = gtk_widget_activate(cast(widget_ptr))
        return Bool(rv != 0)
    }

    /// Installs an accelerator for this `widget` in `accel_group` that causes
    /// `accel_signal` to be emitted if the accelerator is activated.
    /// The `accel_group` needs to be added to the widget’s toplevel via
    /// `gtk_window_add_accel_group()`, and the signal must be of type `G_SIGNAL_ACTION`.
    /// Accelerators added through this function are not user changeable during
    /// runtime. If you want to support accelerators that can be changed by the
    /// user, use `gtk_accel_map_add_entry()` and `gtk_widget_set_accel_path()` or
    /// `gtk_menu_item_set_accel_path()` instead.
    func addAccelerator(accelSignal accel_signal: UnsafePointer<gchar>, accelGroup accel_group: AccelGroupProtocol, accelKey accel_key: CUnsignedInt, accelMods accel_mods: Gdk.ModifierType, accelFlags accel_flags: AccelFlags) {
        gtk_widget_add_accelerator(cast(widget_ptr), accel_signal, cast(accel_group.ptr), guint(accel_key), accel_mods, accel_flags)
    
    }

    /// Adds the device events in the bitfield `events` to the event mask for
    /// `widget`. See `gtk_widget_set_device_events()` for details.
    func addDeviceEvents(device: Gdk.DeviceProtocol, events: Gdk.EventMask) {
        gtk_widget_add_device_events(cast(widget_ptr), cast(device.ptr), events)
    
    }

    /// Adds the events in the bitfield `events` to the event mask for
    /// `widget`. See `gtk_widget_set_events()` and the
    /// [input handling overview](#event-masks) for details.
    func add(events: CInt) {
        gtk_widget_add_events(cast(widget_ptr), gint(events))
    
    }

    /// Adds a widget to the list of mnemonic labels for
    /// this widget. (See `gtk_widget_list_mnemonic_labels()`). Note the
    /// list of mnemonic labels for the widget is cleared when the
    /// widget is destroyed, so the caller must make sure to update
    /// its internal state at this point as well, by using a connection
    /// to the `GtkWidget::destroy` signal or a weak notifier.
    func addMnemonic(label: WidgetProtocol) {
        gtk_widget_add_mnemonic_label(cast(widget_ptr), cast(label.ptr))
    
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
    /// `gtk_widget_queue_draw_area()` yourself.
    /// 
    /// `gdk_frame_clock_get_frame_time()` should generally be used for timing
    /// continuous animations and
    /// `gdk_frame_timings_get_predicted_presentation_time()` if you are
    /// trying to display isolated frames at particular times.
    /// 
    /// This is a more convenient alternative to connecting directly to the
    /// `GdkFrameClock::update` signal of `GdkFrameClock`, since you don't
    /// have to worry about when a `GdkFrameClock` is assigned to a widget.
    func addTick(callback: @escaping TickCallback, userData user_data: UnsafeMutableRawPointer, notify: @escaping GLib.DestroyNotify) -> CUnsignedInt {
        let rv = gtk_widget_add_tick_callback(cast(widget_ptr), callback, cast(user_data), notify)
        return CUnsignedInt(rv)
    }

    /// Determines whether an accelerator that activates the signal
    /// identified by `signal_id` can currently be activated.
    /// This is done by emitting the `GtkWidget::can`-activate-accel
    /// signal on `widget`; if the signal isn’t overridden by a
    /// handler or in a derived widget, then the default check is
    /// that the widget must be sensitive, and the widget and all
    /// its ancestors mapped.
    func canActivateAccel(signalID signal_id: CUnsignedInt) -> Bool {
        let rv = gtk_widget_can_activate_accel(cast(widget_ptr), guint(signal_id))
        return Bool(rv != 0)
    }

    /// This function is used by custom widget implementations; if you're
    /// writing an app, you’d use `gtk_widget_grab_focus()` to move the focus
    /// to a particular widget, and `gtk_container_set_focus_chain()` to
    /// change the focus tab order. So you may want to investigate those
    /// functions instead.
    /// 
    /// `gtk_widget_child_focus()` is called by containers as the user moves
    /// around the window using keyboard shortcuts. `direction` indicates
    /// what kind of motion is taking place (up, down, left, right, tab
    /// forward, tab backward). `gtk_widget_child_focus()` emits the
    /// `GtkWidget::focus` signal; widgets override the default handler
    /// for this signal in order to implement appropriate focus behavior.
    /// 
    /// The default `focus` handler for a widget should return `true` if
    /// moving in `direction` left the focus on a focusable location inside
    /// that widget, and `false` if moving in `direction` moved the focus
    /// outside the widget. If returning `true`, widgets normally
    /// call `gtk_widget_grab_focus()` to place the focus accordingly;
    /// if returning `false`, they don’t modify the current focus location.
    func childFocus(direction: DirectionType) -> Bool {
        let rv = gtk_widget_child_focus(cast(widget_ptr), direction)
        return Bool(rv != 0)
    }

    /// Emits a `GtkWidget::child`-notify signal for the
    /// [child property](#child-properties) `child_property`
    /// on `widget`.
    /// 
    /// This is the analogue of `g_object_notify()` for child properties.
    /// 
    /// Also see `gtk_container_child_notify()`.
    func childNotify(childProperty child_property: UnsafePointer<gchar>) {
        gtk_widget_child_notify(cast(widget_ptr), child_property)
    
    }

    /// Same as `gtk_widget_path()`, but always uses the name of a widget’s type,
    /// never uses a custom name set with `gtk_widget_set_name()`.
    ///
    /// **class_path is deprecated:**
    /// Use gtk_widget_get_path() instead
    @available(*, deprecated) func classPath(pathLength path_length: UnsafeMutablePointer<CUnsignedInt>, path: UnsafeMutablePointer<UnsafeMutablePointer<gchar>>, pathReversed path_reversed: UnsafeMutablePointer<UnsafeMutablePointer<gchar>>) {
        gtk_widget_class_path(cast(widget_ptr), cast(path_length), cast(path), cast(path_reversed))
    
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
    func computeExpand(orientation: Orientation) -> Bool {
        let rv = gtk_widget_compute_expand(cast(widget_ptr), orientation)
        return Bool(rv != 0)
    }

    /// Creates a new `PangoContext` with the appropriate font map,
    /// font options, font description, and base direction for drawing
    /// text for this widget. See also `gtk_widget_get_pango_context()`.
    func createPangoContext() -> UnsafeMutablePointer<PangoContext>! {
        let rv = gtk_widget_create_pango_context(cast(widget_ptr))
        return cast(rv)
    }

    /// Creates a new `PangoLayout` with the appropriate font map,
    /// font description, and base direction for drawing text for
    /// this widget.
    /// 
    /// If you keep a `PangoLayout` created in this way around, you need
    /// to re-create it when the widget `PangoContext` is replaced.
    /// This can be tracked by using the `GtkWidget::screen`-changed signal
    /// on the widget.
    func createPangoLayout(text: UnsafePointer<gchar>) -> UnsafeMutablePointer<PangoLayout>! {
        let rv = gtk_widget_create_pango_layout(cast(widget_ptr), text)
        return cast(rv)
    }

    /// Destroys a widget.
    /// 
    /// When a widget is destroyed all references it holds on other objects
    /// will be released:
    /// 
    ///  - if the widget is inside a container, it will be removed from its
    ///  parent
    ///  - if the widget is a container, all its children will be destroyed,
    ///  recursively
    ///  - if the widget is a top level, it will be removed from the list
    ///  of top level widgets that GTK+ maintains internally
    /// 
    /// It's expected that all references held on the widget will also
    /// be released; you should connect to the `GtkWidget::destroy` signal
    /// if you hold a reference to `widget` and you wish to remove it when
    /// this function is called. It is not necessary to do so if you are
    /// implementing a `GtkContainer`, as you'll be able to use the
    /// `GtkContainerClass.remove``()` virtual function for that.
    /// 
    /// It's important to notice that `gtk_widget_destroy()` will only cause
    /// the `widget` to be finalized if no additional references, acquired
    /// using `g_object_ref()`, are held on it. In case additional references
    /// are in place, the `widget` will be in an "inert" state after calling
    /// this function; `widget` will still point to valid memory, allowing you
    /// to release the references you hold, but you may not query the widget's
    /// own state.
    /// 
    /// You should typically call this function on top level widgets, and
    /// rarely on child widgets.
    /// 
    /// See also: `gtk_container_remove()`
    func destroy() {
        gtk_widget_destroy(cast(widget_ptr))
    
    }

    /// This function sets *`widget_pointer` to `nil` if `widget_pointer` !=
    /// `nil`.  It’s intended to be used as a callback connected to the
    /// “destroy” signal of a widget. You connect `gtk_widget_destroyed()`
    /// as a signal handler, and pass the address of your widget variable
    /// as user data. Then when the widget is destroyed, the variable will
    /// be set to `nil`. Useful for example to avoid multiple copies
    /// of the same dialog.
    func destroyed(widgetPointer widget_pointer: WidgetProtocol) {
        gtk_widget_destroyed(cast(widget_ptr), cast(widget_pointer.ptr))
    
    }

    /// Returns `true` if `device` has been shadowed by a GTK+
    /// device grab on another widget, so it would stop sending
    /// events to `widget`. This may be used in the
    /// `GtkWidget::grab`-notify signal to check for specific
    /// devices. See `gtk_device_grab_add()`.
    func deviceIsShadowed(device: Gdk.DeviceProtocol) -> Bool {
        let rv = gtk_widget_device_is_shadowed(cast(widget_ptr), cast(device.ptr))
        return Bool(rv != 0)
    }

    @available(*, deprecated) func dragBegin(targets: TargetListProtocol, actions: Gdk.DragAction, button: CInt, event: UnsafeMutablePointer<GdkEvent>) -> UnsafeMutablePointer<GdkDragContext>! {
        let rv = gtk_drag_begin(cast(widget_ptr), cast(targets.ptr), actions, gint(button), cast(event))
        return cast(rv)
    }

    func dragBeginWithCoordinates(targets: TargetListProtocol, actions: Gdk.DragAction, button: CInt, event: UnsafeMutablePointer<GdkEvent>, x: CInt, y: CInt) -> UnsafeMutablePointer<GdkDragContext>! {
        let rv = gtk_drag_begin_with_coordinates(cast(widget_ptr), cast(targets.ptr), actions, gint(button), cast(event), gint(x), gint(y))
        return cast(rv)
    }

    func dragCheckThreshold(startX start_x: CInt, startY start_y: CInt, currentX current_x: CInt, currentY current_y: CInt) -> Bool {
        let rv = gtk_drag_check_threshold(cast(widget_ptr), gint(start_x), gint(start_y), gint(current_x), gint(current_y))
        return Bool(rv != 0)
    }

    func dragDestAddImageTargets() {
        gtk_drag_dest_add_image_targets(cast(widget_ptr))
    
    }

    func dragDestAddTextTargets() {
        gtk_drag_dest_add_text_targets(cast(widget_ptr))
    
    }

    func dragDestAddURITargets() {
        gtk_drag_dest_add_uri_targets(cast(widget_ptr))
    
    }

    func dragDestFindTarget(context: DragContextProtocol, targetList target_list: TargetListProtocol) -> GdkAtom! {
        let rv = gtk_drag_dest_find_target(cast(widget_ptr), cast(context.ptr), cast(target_list.ptr))
        return rv
    }

    func dragDestGetTargetList() -> UnsafeMutablePointer<GtkTargetList>! {
        let rv = gtk_drag_dest_get_target_list(cast(widget_ptr))
        return cast(rv)
    }

    func dragDestGetTrackMotion() -> Bool {
        let rv = gtk_drag_dest_get_track_motion(cast(widget_ptr))
        return Bool(rv != 0)
    }

    func dragDestSet(flags: DestDefaults, targets: UnsafePointer<GtkTargetEntry>, nTargets n_targets: CInt, actions: Gdk.DragAction) {
        gtk_drag_dest_set(cast(widget_ptr), flags, cast(targets), gint(n_targets), actions)
    
    }

    @available(*, deprecated) func dragDestSetProxy(proxyWindow proxy_window: WindowProtocol, protocol_: Gdk.Drag_Protocol, useCoordinates use_coordinates: Bool) {
        gtk_drag_dest_set_proxy(cast(widget_ptr), cast(proxy_window.ptr), protocol_, gboolean(use_coordinates ? 1 : 0))
    
    }

    func dragDestSet(targetList target_list: TargetListProtocol) {
        gtk_drag_dest_set_target_list(cast(widget_ptr), cast(target_list.ptr))
    
    }

    func dragDestSet(trackMotion track_motion: Bool) {
        gtk_drag_dest_set_track_motion(cast(widget_ptr), gboolean(track_motion ? 1 : 0))
    
    }

    func dragDestUnset() {
        gtk_drag_dest_unset(cast(widget_ptr))
    
    }

    func dragGetData(context: DragContextProtocol, target: Gdk.Atom, time_: UInt32) {
        gtk_drag_get_data(cast(widget_ptr), cast(context.ptr), cast(target.ptr), guint32(time_))
    
    }

    func dragHighlight() {
        gtk_drag_highlight(cast(widget_ptr))
    
    }

    /// Add the writable image targets supported by `GtkSelectionData` to
    /// the target list of the drag source. The targets
    /// are added with `info` = 0. If you need another value,
    /// use `gtk_target_list_add_image_targets()` and
    /// `gtk_drag_source_set_target_list()`.
    func dragSourceAddImageTargets() {
        gtk_drag_source_add_image_targets(cast(widget_ptr))
    
    }

    /// Add the text targets supported by `GtkSelectionData` to
    /// the target list of the drag source.  The targets
    /// are added with `info` = 0. If you need another value,
    /// use `gtk_target_list_add_text_targets()` and
    /// `gtk_drag_source_set_target_list()`.
    func dragSourceAddTextTargets() {
        gtk_drag_source_add_text_targets(cast(widget_ptr))
    
    }

    /// Add the URI targets supported by `GtkSelectionData` to
    /// the target list of the drag source.  The targets
    /// are added with `info` = 0. If you need another value,
    /// use `gtk_target_list_add_uri_targets()` and
    /// `gtk_drag_source_set_target_list()`.
    func dragSourceAddURITargets() {
        gtk_drag_source_add_uri_targets(cast(widget_ptr))
    
    }

    /// Gets the list of targets this widget can provide for
    /// drag-and-drop.
    func dragSourceGetTargetList() -> UnsafeMutablePointer<GtkTargetList>! {
        let rv = gtk_drag_source_get_target_list(cast(widget_ptr))
        return cast(rv)
    }

    /// Sets up a widget so that GTK+ will start a drag operation when the user
    /// clicks and drags on the widget. The widget must have a window.
    func dragSourceSet(startButtonMask start_button_mask: Gdk.ModifierType, targets: UnsafePointer<GtkTargetEntry>, nTargets n_targets: CInt, actions: Gdk.DragAction) {
        gtk_drag_source_set(cast(widget_ptr), start_button_mask, cast(targets), gint(n_targets), actions)
    
    }

    /// Sets the icon that will be used for drags from a particular source
    /// to `icon`. See the docs for `GtkIconTheme` for more details.
    func dragSourceSetIconIcon(icon: IconProtocol) {
        // gtk_drag_source_set_icon_gicon(cast(widget_ptr), cast(icon.ptr))
    
    }

    /// Sets the icon that will be used for drags from a particular source
    /// to a themed icon. See the docs for `GtkIconTheme` for more details.
    func dragSourceSet(iconName icon_name: UnsafePointer<gchar>) {
        gtk_drag_source_set_icon_name(cast(widget_ptr), icon_name)
    
    }

    /// Sets the icon that will be used for drags from a particular widget
    /// from a `GdkPixbuf`. GTK+ retains a reference for `pixbuf` and will
    /// release it when it is no longer needed.
    func dragSourceSetIcon(pixbuf: PixbufProtocol) {
        gtk_drag_source_set_icon_pixbuf(cast(widget_ptr), cast(pixbuf.ptr))
    
    }

    /// Sets the icon that will be used for drags from a particular source
    /// to a stock icon.
    ///
    /// **drag_source_set_icon_stock is deprecated:**
    /// Use gtk_drag_source_set_icon_name() instead.
    @available(*, deprecated) func dragSourceSetIconStock(stockID stock_id: UnsafePointer<gchar>) {
        gtk_drag_source_set_icon_stock(cast(widget_ptr), stock_id)
    
    }

    /// Changes the target types that this widget offers for drag-and-drop.
    /// The widget must first be made into a drag source with
    /// `gtk_drag_source_set()`.
    func dragSourceSet(targetList target_list: TargetListProtocol) {
        gtk_drag_source_set_target_list(cast(widget_ptr), cast(target_list.ptr))
    
    }

    /// Undoes the effects of `gtk_drag_source_set()`.
    func dragSourceUnset() {
        gtk_drag_source_unset(cast(widget_ptr))
    
    }

    func dragUnhighlight() {
        gtk_drag_unhighlight(cast(widget_ptr))
    
    }

    /// Draws `widget` to `cr`. The top left corner of the widget will be
    /// drawn to the currently set origin point of `cr`.
    /// 
    /// You should pass a cairo context as `cr` argument that is in an
    /// original state. Otherwise the resulting drawing is undefined. For
    /// example changing the operator using `cairo_set_operator()` or the
    /// line width using `cairo_set_line_width()` might have unwanted side
    /// effects.
    /// You may however change the context’s transform matrix - like with
    /// `cairo_scale()`, `cairo_translate()` or `cairo_set_matrix()` and clip
    /// region with `cairo_clip()` prior to calling this function. Also, it
    /// is fine to modify the context with `cairo_save()` and
    /// `cairo_push_group()` prior to calling this function.
    /// 
    /// Note that special-purpose widgets may contain special code for
    /// rendering to the screen and might appear differently on screen
    /// and when rendered using `gtk_widget_draw()`.
    func draw(cr: cairo.ContextProtocol) {
        gtk_widget_draw(cast(widget_ptr), cast(cr.ptr))
    
    }

    /// Ensures that `widget` has a style (`widget`->style).
    /// 
    /// Not a very useful function; most of the time, if you
    /// want the style, the widget is realized, and realized
    /// widgets are guaranteed to have a style already.
    ///
    /// **ensure_style is deprecated:**
    /// Use #GtkStyleContext instead
    @available(*, deprecated) func ensureStyle() {
        gtk_widget_ensure_style(cast(widget_ptr))
    
    }

    /// Notifies the user about an input-related error on this widget.
    /// If the `GtkSettings:gtk`-error-bell setting is `true`, it calls
    /// `gdk_window_beep()`, otherwise it does nothing.
    /// 
    /// Note that the effect of `gdk_window_beep()` can be configured in many
    /// ways, depending on the windowing backend and the desktop environment
    /// or window manager that is used.
    func errorBell() {
        gtk_widget_error_bell(cast(widget_ptr))
    
    }

    /// Rarely-used function. This function is used to emit
    /// the event signals on a widget (those signals should never
    /// be emitted without using this function to do so).
    /// If you want to synthesize an event though, don’t use this function;
    /// instead, use `gtk_main_do_event()` so the event will behave as if
    /// it were in the event queue. Don’t synthesize expose events; instead,
    /// use `gdk_window_invalidate_rect()` to invalidate a region of the
    /// window.
    func event(event: UnsafeMutablePointer<GdkEvent>) -> Bool {
        let rv = gtk_widget_event(cast(widget_ptr), cast(event))
        return Bool(rv != 0)
    }

    /// Stops emission of `GtkWidget::child`-notify signals on `widget`. The
    /// signals are queued until `gtk_widget_thaw_child_notify()` is called
    /// on `widget`.
    /// 
    /// This is the analogue of `g_object_freeze_notify()` for child properties.
    func freezeChildNotify() {
        gtk_widget_freeze_child_notify(cast(widget_ptr))
    
    }

    /// Returns the accessible object that describes the widget to an
    /// assistive technology.
    /// 
    /// If accessibility support is not available, this `AtkObject`
    /// instance may be a no-op. Likewise, if no class-specific `AtkObject`
    /// implementation is available for the widget instance in question,
    /// it will inherit an `AtkObject` implementation from the first ancestor
    /// class for which such an implementation is defined.
    /// 
    /// The documentation of the
    /// [ATK](http://developer.gnome.org/atk/stable/)
    /// library contains more information about accessible objects and their uses.
    func getAccessible() -> UnsafeMutablePointer<AtkObject>! {
        let rv = gtk_widget_get_accessible(cast(widget_ptr))
        return cast(rv)
    }

    /// Retrieves the `GActionGroup` that was registered using `prefix`. The resulting
    /// `GActionGroup` may have been registered to `widget` or any `GtkWidget` in its
    /// ancestry.
    /// 
    /// If no action group was found matching `prefix`, then `nil` is returned.
    func getActionGroup(prefix_: UnsafePointer<gchar>) -> UnsafeMutablePointer<GActionGroup>! {
        let rv = gtk_widget_get_action_group(cast(widget_ptr), prefix_)
        return cast(rv)
    }

    /// Returns the baseline that has currently been allocated to `widget`.
    /// This function is intended to be used when implementing handlers
    /// for the `GtkWidget::draw` function, and when allocating child
    /// widgets in `GtkWidget::size_allocate`.
    func getAllocatedBaseline() -> CInt {
        let rv = gtk_widget_get_allocated_baseline(cast(widget_ptr))
        return rv
    }

    /// Returns the height that has currently been allocated to `widget`.
    /// This function is intended to be used when implementing handlers
    /// for the `GtkWidget::draw` function.
    func getAllocatedHeight() -> CInt {
        let rv = gtk_widget_get_allocated_height(cast(widget_ptr))
        return rv
    }

    /// Retrieves the widget’s allocated size.
    /// 
    /// This function returns the last values passed to
    /// `gtk_widget_size_allocate_with_baseline()`. The value differs from
    /// the size returned in `gtk_widget_get_allocation()` in that functions
    /// like `gtk_widget_set_halign()` can adjust the allocation, but not
    /// the value returned by this function.
    /// 
    /// If a widget is not visible, its allocated size is 0.
    func getAllocatedSize(allocation: UnsafeMutablePointer<GtkAllocation>, baseline: UnsafeMutablePointer<CInt>) {
        gtk_widget_get_allocated_size(cast(widget_ptr), cast(allocation), cast(baseline))
    
    }

    /// Returns the width that has currently been allocated to `widget`.
    /// This function is intended to be used when implementing handlers
    /// for the `GtkWidget::draw` function.
    func getAllocatedWidth() -> CInt {
        let rv = gtk_widget_get_allocated_width(cast(widget_ptr))
        return rv
    }

    /// Retrieves the widget’s allocation.
    /// 
    /// Note, when implementing a `GtkContainer:` a widget’s allocation will
    /// be its “adjusted” allocation, that is, the widget’s parent
    /// container typically calls `gtk_widget_size_allocate()` with an
    /// allocation, and that allocation is then adjusted (to handle margin
    /// and alignment for example) before assignment to the widget.
    /// `gtk_widget_get_allocation()` returns the adjusted allocation that
    /// was actually assigned to the widget. The adjusted allocation is
    /// guaranteed to be completely contained within the
    /// `gtk_widget_size_allocate()` allocation, however. So a `GtkContainer`
    /// is guaranteed that its children stay inside the assigned bounds,
    /// but not that they have exactly the bounds the container assigned.
    /// There is no way to get the original allocation assigned by
    /// `gtk_widget_size_allocate()`, since it isn’t stored; if a container
    /// implementation needs that information it will have to track it itself.
    func get(allocation: UnsafeMutablePointer<GtkAllocation>) {
        gtk_widget_get_allocation(cast(widget_ptr), cast(allocation))
    
    }

    /// Gets the first ancestor of `widget` with type `widget_type`. For example,
    /// `gtk_widget_get_ancestor (widget, GTK_TYPE_BOX)` gets
    /// the first `GtkBox` that’s an ancestor of `widget`. No reference will be
    /// added to the returned widget; it should not be unreferenced. See note
    /// about checking for a toplevel `GtkWindow` in the docs for
    /// `gtk_widget_get_toplevel()`.
    /// 
    /// Note that unlike `gtk_widget_is_ancestor()`, `gtk_widget_get_ancestor()`
    /// considers `widget` to be an ancestor of itself.
    func getAncestor(widgetType widget_type: GType) -> UnsafeMutablePointer<GtkWidget>! {
        let rv = gtk_widget_get_ancestor(cast(widget_ptr), widget_type)
        return cast(rv)
    }

    /// Determines whether the application intends to draw on the widget in
    /// an `GtkWidget::draw` handler.
    /// 
    /// See `gtk_widget_set_app_paintable()`
    func getAppPaintable() -> Bool {
        let rv = gtk_widget_get_app_paintable(cast(widget_ptr))
        return Bool(rv != 0)
    }

    /// Determines whether `widget` can be a default widget. See
    /// `gtk_widget_set_can_default()`.
    func getCanDefault() -> Bool {
        let rv = gtk_widget_get_can_default(cast(widget_ptr))
        return Bool(rv != 0)
    }

    /// Determines whether `widget` can own the input focus. See
    /// `gtk_widget_set_can_focus()`.
    func getCanFocus() -> Bool {
        let rv = gtk_widget_get_can_focus(cast(widget_ptr))
        return Bool(rv != 0)
    }

    /// This function is only for use in widget implementations. Obtains
    /// `widget`->requisition, unless someone has forced a particular
    /// geometry on the widget (e.g. with `gtk_widget_set_size_request()`),
    /// in which case it returns that geometry instead of the widget's
    /// requisition.
    /// 
    /// This function differs from `gtk_widget_size_request()` in that
    /// it retrieves the last size request value from `widget`->requisition,
    /// while `gtk_widget_size_request()` actually calls the "size_request" method
    /// on `widget` to compute the size request and fill in `widget`->requisition,
    /// and only then returns `widget`->requisition.
    /// 
    /// Because this function does not call the “size_request” method, it
    /// can only be used when you know that `widget`->requisition is
    /// up-to-date, that is, `gtk_widget_size_request()` has been called
    /// since the last time a resize was queued. In general, only container
    /// implementations have this information; applications should use
    /// `gtk_widget_size_request()`.
    ///
    /// **get_child_requisition is deprecated:**
    /// Use gtk_widget_get_preferred_size() instead.
    @available(*, deprecated) func getChild(requisition: RequisitionProtocol) {
        gtk_widget_get_child_requisition(cast(widget_ptr), cast(requisition.ptr))
    
    }

    /// Gets the value set with `gtk_widget_set_child_visible()`.
    /// If you feel a need to use this function, your code probably
    /// needs reorganization.
    /// 
    /// This function is only useful for container implementations and
    /// never should be called by an application.
    func getChildVisible() -> Bool {
        let rv = gtk_widget_get_child_visible(cast(widget_ptr))
        return Bool(rv != 0)
    }

    /// Retrieves the widget’s clip area.
    /// 
    /// The clip area is the area in which all of `widget`'s drawing will
    /// happen. Other toolkits call it the bounding box.
    /// 
    /// Historically, in GTK+ the clip area has been equal to the allocation
    /// retrieved via `gtk_widget_get_allocation()`.
    func get(clip: UnsafeMutablePointer<GtkAllocation>) {
        gtk_widget_get_clip(cast(widget_ptr), cast(clip))
    
    }

    /// Returns the clipboard object for the given selection to
    /// be used with `widget`. `widget` must have a `GdkDisplay`
    /// associated with it, so must be attached to a toplevel
    /// window.
    func getClipboard(selection: Gdk.Atom) -> UnsafeMutablePointer<GtkClipboard>! {
        let rv = gtk_widget_get_clipboard(cast(widget_ptr), cast(selection.ptr))
        return cast(rv)
    }

    /// Obtains the composite name of a widget.
    ///
    /// **get_composite_name is deprecated:**
    /// Use gtk_widget_class_set_template(), or don’t use this API at all.
    @available(*, deprecated) func getCompositeName() -> String! {
        let rv = gtk_widget_get_composite_name(cast(widget_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Returns whether `device` can interact with `widget` and its
    /// children. See `gtk_widget_set_device_enabled()`.
    func getDeviceEnabled(device: Gdk.DeviceProtocol) -> Bool {
        let rv = gtk_widget_get_device_enabled(cast(widget_ptr), cast(device.ptr))
        return Bool(rv != 0)
    }

    /// Returns the events mask for the widget corresponding to an specific device. These
    /// are the events that the widget will receive when `device` operates on it.
    func getDeviceEvents(device: Gdk.DeviceProtocol) -> GdkEventMask {
        let rv = gtk_widget_get_device_events(cast(widget_ptr), cast(device.ptr))
        return rv
    }

    /// Gets the reading direction for a particular widget. See
    /// `gtk_widget_set_direction()`.
    func getDirection() -> GtkTextDirection {
        let rv = gtk_widget_get_direction(cast(widget_ptr))
        return rv
    }

    /// Get the `GdkDisplay` for the toplevel window associated with
    /// this widget. This function can only be called after the widget
    /// has been added to a widget hierarchy with a `GtkWindow` at the top.
    /// 
    /// In general, you should only create display specific
    /// resources when a widget has been realized, and you should
    /// free those resources when the widget is unrealized.
    func getDisplay() -> UnsafeMutablePointer<GdkDisplay>! {
        let rv = gtk_widget_get_display(cast(widget_ptr))
        return cast(rv)
    }

    /// Determines whether the widget is double buffered.
    /// 
    /// See `gtk_widget_set_double_buffered()`
    @available(*, deprecated) func getDoubleBuffered() -> Bool {
        let rv = gtk_widget_get_double_buffered(cast(widget_ptr))
        return Bool(rv != 0)
    }

    /// Returns the event mask (see `GdkEventMask`) for the widget. These are the
    /// events that the widget will receive.
    /// 
    /// Note: Internally, the widget event mask will be the logical OR of the event
    /// mask set through `gtk_widget_set_events()` or `gtk_widget_add_events()`, and the
    /// event mask necessary to cater for every `GtkEventController` created for the
    /// widget.
    func getEvents() -> CInt {
        let rv = gtk_widget_get_events(cast(widget_ptr))
        return CInt(rv)
    }

    /// Returns whether the widget should grab focus when it is clicked with the mouse.
    /// See `gtk_widget_set_focus_on_click()`.
    @available(*, deprecated) func getFocusOnClick() -> Bool {
        let rv = gtk_widget_get_focus_on_click(cast(widget_ptr))
        return Bool(rv != 0)
    }

    /// Gets the font map that has been set with `gtk_widget_set_font_map()`.
    func getFontMap() -> UnsafeMutablePointer<PangoFontMap>! {
        let rv = gtk_widget_get_font_map(cast(widget_ptr))
        return cast(rv)
    }

    /// Returns the `cairo_font_options_t` used for Pango rendering. When not set,
    /// the defaults font options for the `GdkScreen` will be used.
    func getFontOptions() -> UnsafePointer<cairo_font_options_t>! {
        let rv = gtk_widget_get_font_options(cast(widget_ptr))
        return cast(rv)
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
    func getFrameClock() -> UnsafeMutablePointer<GdkFrameClock>! {
        let rv = gtk_widget_get_frame_clock(cast(widget_ptr))
        return cast(rv)
    }

    /// Gets the value of the `GtkWidget:halign` property.
    /// 
    /// For backwards compatibility reasons this method will never return
    /// `GTK_ALIGN_BASELINE`, but instead it will convert it to
    /// `GTK_ALIGN_FILL`. Baselines are not supported for horizontal
    /// alignment.
    func getHalign() -> GtkAlign {
        let rv = gtk_widget_get_halign(cast(widget_ptr))
        return rv
    }

    /// Returns the current value of the has-tooltip property.  See
    /// `GtkWidget:has`-tooltip for more information.
    func getHasTooltip() -> Bool {
        let rv = gtk_widget_get_has_tooltip(cast(widget_ptr))
        return Bool(rv != 0)
    }

    /// Determines whether `widget` has a `GdkWindow` of its own. See
    /// `gtk_widget_set_has_window()`.
    func getHasWindow() -> Bool {
        let rv = gtk_widget_get_has_window(cast(widget_ptr))
        return Bool(rv != 0)
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
    func getHexpand() -> Bool {
        let rv = gtk_widget_get_hexpand(cast(widget_ptr))
        return Bool(rv != 0)
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
    func getHexpandSet() -> Bool {
        let rv = gtk_widget_get_hexpand_set(cast(widget_ptr))
        return Bool(rv != 0)
    }

    /// Whether the widget is mapped.
    func getMapped() -> Bool {
        let rv = gtk_widget_get_mapped(cast(widget_ptr))
        return Bool(rv != 0)
    }

    /// Gets the value of the `GtkWidget:margin`-bottom property.
    func getMarginBottom() -> CInt {
        let rv = gtk_widget_get_margin_bottom(cast(widget_ptr))
        return CInt(rv)
    }

    /// Gets the value of the `GtkWidget:margin`-end property.
    func getMarginEnd() -> CInt {
        let rv = gtk_widget_get_margin_end(cast(widget_ptr))
        return CInt(rv)
    }

    /// Gets the value of the `GtkWidget:margin`-left property.
    ///
    /// **get_margin_left is deprecated:**
    /// Use gtk_widget_get_margin_start() instead.
    @available(*, deprecated) func getMarginLeft() -> CInt {
        let rv = gtk_widget_get_margin_left(cast(widget_ptr))
        return CInt(rv)
    }

    /// Gets the value of the `GtkWidget:margin`-right property.
    ///
    /// **get_margin_right is deprecated:**
    /// Use gtk_widget_get_margin_end() instead.
    @available(*, deprecated) func getMarginRight() -> CInt {
        let rv = gtk_widget_get_margin_right(cast(widget_ptr))
        return CInt(rv)
    }

    /// Gets the value of the `GtkWidget:margin`-start property.
    func getMarginStart() -> CInt {
        let rv = gtk_widget_get_margin_start(cast(widget_ptr))
        return CInt(rv)
    }

    /// Gets the value of the `GtkWidget:margin`-top property.
    func getMarginTop() -> CInt {
        let rv = gtk_widget_get_margin_top(cast(widget_ptr))
        return CInt(rv)
    }

    /// Returns the modifier mask the `widget`’s windowing system backend
    /// uses for a particular purpose.
    /// 
    /// See `gdk_keymap_get_modifier_mask()`.
    func getModifierMask(intent: Gdk.ModifierIntent) -> GdkModifierType {
        let rv = gtk_widget_get_modifier_mask(cast(widget_ptr), intent)
        return rv
    }

    /// Returns the current modifier style for the widget. (As set by
    /// `gtk_widget_modify_style()`.) If no style has previously set, a new
    /// `GtkRcStyle` will be created with all values unset, and set as the
    /// modifier style for the widget. If you make changes to this rc
    /// style, you must call `gtk_widget_modify_style()`, passing in the
    /// returned rc style, to make sure that your changes take effect.
    /// 
    /// Caution: passing the style back to `gtk_widget_modify_style()` will
    /// normally end up destroying it, because `gtk_widget_modify_style()` copies
    /// the passed-in style and sets the copy as the new modifier style,
    /// thus dropping any reference to the old modifier style. Add a reference
    /// to the modifier style if you want to keep it alive.
    ///
    /// **get_modifier_style is deprecated:**
    /// Use #GtkStyleContext with a custom #GtkStyleProvider instead
    @available(*, deprecated) func getModifierStyle() -> UnsafeMutablePointer<GtkRcStyle>! {
        let rv = gtk_widget_get_modifier_style(cast(widget_ptr))
        return cast(rv)
    }

    /// Retrieves the name of a widget. See `gtk_widget_set_name()` for the
    /// significance of widget names.
    func getName() -> String! {
        let rv = gtk_widget_get_name(cast(widget_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Returns the current value of the `GtkWidget:no`-show-all property,
    /// which determines whether calls to `gtk_widget_show_all()`
    /// will affect this widget.
    func getNoShowAll() -> Bool {
        let rv = gtk_widget_get_no_show_all(cast(widget_ptr))
        return Bool(rv != 0)
    }

    /// Fetches the requested opacity for this widget.
    /// See `gtk_widget_set_opacity()`.
    func getOpacity() -> CDouble {
        let rv = gtk_widget_get_opacity(cast(widget_ptr))
        return rv
    }

    /// Gets a `PangoContext` with the appropriate font map, font description,
    /// and base direction for this widget. Unlike the context returned
    /// by `gtk_widget_create_pango_context()`, this context is owned by
    /// the widget (it can be used until the screen for the widget changes
    /// or the widget is removed from its toplevel), and will be updated to
    /// match any changes to the widget’s attributes. This can be tracked
    /// by using the `GtkWidget::screen`-changed signal on the widget.
    func getPangoContext() -> UnsafeMutablePointer<PangoContext>! {
        let rv = gtk_widget_get_pango_context(cast(widget_ptr))
        return cast(rv)
    }

    /// Returns the parent container of `widget`.
    func getParent() -> UnsafeMutablePointer<GtkWidget>! {
        let rv = gtk_widget_get_parent(cast(widget_ptr))
        return cast(rv)
    }

    /// Gets `widget`’s parent window, or `nil` if it does not have one.
    func getParentWindow() -> UnsafeMutablePointer<GdkWindow>! {
        let rv = gtk_widget_get_parent_window(cast(widget_ptr))
        return cast(rv)
    }

    /// Returns the `GtkWidgetPath` representing `widget`, if the widget
    /// is not connected to a toplevel widget, a partial path will be
    /// created.
    func getPath() -> UnsafeMutablePointer<GtkWidgetPath>! {
        let rv = gtk_widget_get_path(cast(widget_ptr))
        return cast(rv)
    }

    /// Obtains the location of the mouse pointer in widget coordinates.
    /// Widget coordinates are a bit odd; for historical reasons, they are
    /// defined as `widget`->window coordinates for widgets that return `true` for
    /// `gtk_widget_get_has_window()`; and are relative to `widget`->allocation.x,
    /// `widget`->allocation.y otherwise.
    ///
    /// **get_pointer is deprecated:**
    /// Use gdk_window_get_device_position() instead.
    @available(*, deprecated) func getPointer(x: UnsafeMutablePointer<CInt>, y: UnsafeMutablePointer<CInt>) {
        gtk_widget_get_pointer(cast(widget_ptr), cast(x), cast(y))
    
    }

    /// Retrieves a widget’s initial minimum and natural height.
    /// 
    /// This call is specific to width-for-height requests.
    /// 
    /// The returned request will be modified by the
    /// GtkWidgetClass`adjust_size_request` virtual method and by any
    /// `GtkSizeGroups` that have been applied. That is, the returned request
    /// is the one that should be used for layout, not necessarily the one
    /// returned by the widget itself.
    func getPreferredHeight(minimumHeight minimum_height: UnsafeMutablePointer<CInt>, naturalHeight natural_height: UnsafeMutablePointer<CInt>) {
        gtk_widget_get_preferred_height(cast(widget_ptr), cast(minimum_height), cast(natural_height))
    
    }

    /// Retrieves a widget’s minimum and natural height and the corresponding baselines if it would be given
    /// the specified `width`, or the default height if `width` is -1. The baselines may be -1 which means
    /// that no baseline is requested for this widget.
    /// 
    /// The returned request will be modified by the
    /// GtkWidgetClass`adjust_size_request` and GtkWidgetClass`adjust_baseline_request` virtual methods
    /// and by any `GtkSizeGroups` that have been applied. That is, the returned request
    /// is the one that should be used for layout, not necessarily the one
    /// returned by the widget itself.
    func getPreferredHeightAndBaselineFor(width: CInt, minimumHeight minimum_height: UnsafeMutablePointer<CInt>, naturalHeight natural_height: UnsafeMutablePointer<CInt>, minimumBaseline minimum_baseline: UnsafeMutablePointer<CInt>, naturalBaseline natural_baseline: UnsafeMutablePointer<CInt>) {
        gtk_widget_get_preferred_height_and_baseline_for_width(cast(widget_ptr), gint(width), cast(minimum_height), cast(natural_height), cast(minimum_baseline), cast(natural_baseline))
    
    }

    /// Retrieves a widget’s minimum and natural height if it would be given
    /// the specified `width`.
    /// 
    /// The returned request will be modified by the
    /// GtkWidgetClass`adjust_size_request` virtual method and by any
    /// `GtkSizeGroups` that have been applied. That is, the returned request
    /// is the one that should be used for layout, not necessarily the one
    /// returned by the widget itself.
    func getPreferredHeightFor(width: CInt, minimumHeight minimum_height: UnsafeMutablePointer<CInt>, naturalHeight natural_height: UnsafeMutablePointer<CInt>) {
        gtk_widget_get_preferred_height_for_width(cast(widget_ptr), gint(width), cast(minimum_height), cast(natural_height))
    
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
    /// Use `gtk_widget_get_preferred_height_and_baseline_for_width()` if you want to support
    /// baseline alignment.
    func getPreferredSize(minimumSize minimum_size: RequisitionProtocol, naturalSize natural_size: RequisitionProtocol) {
        gtk_widget_get_preferred_size(cast(widget_ptr), cast(minimum_size.ptr), cast(natural_size.ptr))
    
    }

    /// Retrieves a widget’s initial minimum and natural width.
    /// 
    /// This call is specific to height-for-width requests.
    /// 
    /// The returned request will be modified by the
    /// GtkWidgetClass`adjust_size_request` virtual method and by any
    /// `GtkSizeGroups` that have been applied. That is, the returned request
    /// is the one that should be used for layout, not necessarily the one
    /// returned by the widget itself.
    func getPreferredWidth(minimumWidth minimum_width: UnsafeMutablePointer<CInt>, naturalWidth natural_width: UnsafeMutablePointer<CInt>) {
        gtk_widget_get_preferred_width(cast(widget_ptr), cast(minimum_width), cast(natural_width))
    
    }

    /// Retrieves a widget’s minimum and natural width if it would be given
    /// the specified `height`.
    /// 
    /// The returned request will be modified by the
    /// GtkWidgetClass`adjust_size_request` virtual method and by any
    /// `GtkSizeGroups` that have been applied. That is, the returned request
    /// is the one that should be used for layout, not necessarily the one
    /// returned by the widget itself.
    func getPreferredWidthFor(height: CInt, minimumWidth minimum_width: UnsafeMutablePointer<CInt>, naturalWidth natural_width: UnsafeMutablePointer<CInt>) {
        gtk_widget_get_preferred_width_for_height(cast(widget_ptr), gint(height), cast(minimum_width), cast(natural_width))
    
    }

    /// Determines whether `widget` is realized.
    func getRealized() -> Bool {
        let rv = gtk_widget_get_realized(cast(widget_ptr))
        return Bool(rv != 0)
    }

    /// Determines whether `widget` is always treated as the default widget
    /// within its toplevel when it has the focus, even if another widget
    /// is the default.
    /// 
    /// See `gtk_widget_set_receives_default()`.
    func getReceivesDefault() -> Bool {
        let rv = gtk_widget_get_receives_default(cast(widget_ptr))
        return Bool(rv != 0)
    }

    /// Gets whether the widget prefers a height-for-width layout
    /// or a width-for-height layout.
    /// 
    /// `GtkBin` widgets generally propagate the preference of
    /// their child, container widgets need to request something either in
    /// context of their children or in context of their allocation
    /// capabilities.
    func getRequestMode() -> GtkSizeRequestMode {
        let rv = gtk_widget_get_request_mode(cast(widget_ptr))
        return rv
    }

    /// Retrieves the widget’s requisition.
    /// 
    /// This function should only be used by widget implementations in
    /// order to figure whether the widget’s requisition has actually
    /// changed after some internal state change (so that they can call
    /// `gtk_widget_queue_resize()` instead of `gtk_widget_queue_draw()`).
    /// 
    /// Normally, `gtk_widget_size_request()` should be used.
    ///
    /// **get_requisition is deprecated:**
    /// The #GtkRequisition cache on the widget was
    /// removed, If you need to cache sizes across requests and allocations,
    /// add an explicit cache to the widget in question instead.
    @available(*, deprecated) func get(requisition: RequisitionProtocol) {
        gtk_widget_get_requisition(cast(widget_ptr), cast(requisition.ptr))
    
    }

    /// Get the root window where this widget is located. This function can
    /// only be called after the widget has been added to a widget
    /// hierarchy with `GtkWindow` at the top.
    /// 
    /// The root window is useful for such purposes as creating a popup
    /// `GdkWindow` associated with the window. In general, you should only
    /// create display specific resources when a widget has been realized,
    /// and you should free those resources when the widget is unrealized.
    ///
    /// **get_root_window is deprecated:**
    /// Use gdk_screen_get_root_window() instead
    @available(*, deprecated) func getRootWindow() -> UnsafeMutablePointer<GdkWindow>! {
        let rv = gtk_widget_get_root_window(cast(widget_ptr))
        return cast(rv)
    }

    /// Retrieves the internal scale factor that maps from window coordinates
    /// to the actual device pixels. On traditional systems this is 1, on
    /// high density outputs, it can be a higher value (typically 2).
    /// 
    /// See `gdk_window_get_scale_factor()`.
    func getScaleFactor() -> CInt {
        let rv = gtk_widget_get_scale_factor(cast(widget_ptr))
        return CInt(rv)
    }

    /// Get the `GdkScreen` from the toplevel window associated with
    /// this widget. This function can only be called after the widget
    /// has been added to a widget hierarchy with a `GtkWindow`
    /// at the top.
    /// 
    /// In general, you should only create screen specific
    /// resources when a widget has been realized, and you should
    /// free those resources when the widget is unrealized.
    func getScreen() -> UnsafeMutablePointer<GdkScreen>! {
        let rv = gtk_widget_get_screen(cast(widget_ptr))
        return cast(rv)
    }

    /// Returns the widget’s sensitivity (in the sense of returning
    /// the value that has been set using `gtk_widget_set_sensitive()`).
    /// 
    /// The effective sensitivity of a widget is however determined by both its
    /// own and its parent widget’s sensitivity. See `gtk_widget_is_sensitive()`.
    func getSensitive() -> Bool {
        let rv = gtk_widget_get_sensitive(cast(widget_ptr))
        return Bool(rv != 0)
    }

    /// Gets the settings object holding the settings used for this widget.
    /// 
    /// Note that this function can only be called when the `GtkWidget`
    /// is attached to a toplevel, since the settings object is specific
    /// to a particular `GdkScreen`.
    func getSettings() -> UnsafeMutablePointer<GtkSettings>! {
        let rv = gtk_widget_get_settings(cast(widget_ptr))
        return cast(rv)
    }

    /// Gets the size request that was explicitly set for the widget using
    /// `gtk_widget_set_size_request()`. A value of -1 stored in `width` or
    /// `height` indicates that that dimension has not been set explicitly
    /// and the natural requisition of the widget will be used instead. See
    /// `gtk_widget_set_size_request()`. To get the size a widget will
    /// actually request, call `gtk_widget_get_preferred_size()` instead of
    /// this function.
    func getSizeRequest(width: UnsafeMutablePointer<CInt>, height: UnsafeMutablePointer<CInt>) {
        gtk_widget_get_size_request(cast(widget_ptr), cast(width), cast(height))
    
    }

    /// Returns the widget’s state. See `gtk_widget_set_state()`.
    ///
    /// **get_state is deprecated:**
    /// Use gtk_widget_get_state_flags() instead.
    @available(*, deprecated) func getState() -> GtkStateType {
        let rv = gtk_widget_get_state(cast(widget_ptr))
        return rv
    }

    /// Returns the widget state as a flag set. It is worth mentioning
    /// that the effective `GTK_STATE_FLAG_INSENSITIVE` state will be
    /// returned, that is, also based on parent insensitivity, even if
    /// `widget` itself is sensitive.
    /// 
    /// Also note that if you are looking for a way to obtain the
    /// `GtkStateFlags` to pass to a `GtkStyleContext` method, you
    /// should look at `gtk_style_context_get_state()`.
    func getStateFlags() -> GtkStateFlags {
        let rv = gtk_widget_get_state_flags(cast(widget_ptr))
        return rv
    }

    /// Simply an accessor function that returns `widget`->style.
    ///
    /// **get_style is deprecated:**
    /// Use #GtkStyleContext instead
    @available(*, deprecated) func getStyle() -> UnsafeMutablePointer<GtkStyle>! {
        let rv = gtk_widget_get_style(cast(widget_ptr))
        return cast(rv)
    }

    /// Returns the style context associated to `widget`. The returned object is
    /// guaranteed to be the same for the lifetime of `widget`.
    func getStyleContext() -> UnsafeMutablePointer<GtkStyleContext>! {
        let rv = gtk_widget_get_style_context(cast(widget_ptr))
        return cast(rv)
    }

    /// Returns `true` if `widget` is multiple pointer aware. See
    /// `gtk_widget_set_support_multidevice()` for more information.
    func getSupportMultidevice() -> Bool {
        let rv = gtk_widget_get_support_multidevice(cast(widget_ptr))
        return Bool(rv != 0)
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
    func getTemplateChild(widgetType widget_type: GType, name: UnsafePointer<gchar>) -> UnsafeMutablePointer<GObject>! {
        let rv = gtk_widget_get_template_child(cast(widget_ptr), widget_type, name)
        return cast(rv)
    }

    /// Gets the contents of the tooltip for `widget`.
    func getTooltipMarkup() -> String! {
        let rv = gtk_widget_get_tooltip_markup(cast(widget_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the contents of the tooltip for `widget`.
    func getTooltipText() -> String! {
        let rv = gtk_widget_get_tooltip_text(cast(widget_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Returns the `GtkWindow` of the current tooltip. This can be the
    /// GtkWindow created by default, or the custom tooltip window set
    /// using `gtk_widget_set_tooltip_window()`.
    func getTooltipWindow() -> UnsafeMutablePointer<GtkWindow>! {
        let rv = gtk_widget_get_tooltip_window(cast(widget_ptr))
        return cast(rv)
    }

    /// This function returns the topmost widget in the container hierarchy
    /// `widget` is a part of. If `widget` has no parent widgets, it will be
    /// returned as the topmost widget. No reference will be added to the
    /// returned widget; it should not be unreferenced.
    /// 
    /// Note the difference in behavior vs. `gtk_widget_get_ancestor()`;
    /// `gtk_widget_get_ancestor (widget, GTK_TYPE_WINDOW)`
    /// would return
    /// `nil` if `widget` wasn’t inside a toplevel window, and if the
    /// window was inside a `GtkWindow`-derived widget which was in turn
    /// inside the toplevel `GtkWindow`. While the second case may
    /// seem unlikely, it actually happens when a `GtkPlug` is embedded
    /// inside a `GtkSocket` within the same application.
    /// 
    /// To reliably find the toplevel `GtkWindow`, use
    /// `gtk_widget_get_toplevel()` and call `GTK_IS_WINDOW()`
    /// on the result. For instance, to get the title of a widget's toplevel
    /// window, one might use:
    /// (C Language Example):
    /// ```C
    /// static const char *
    /// get_widget_toplevel_title (GtkWidget *widget)
    /// {
    ///   GtkWidget *toplevel = gtk_widget_get_toplevel (widget);
    ///   if (GTK_IS_WINDOW (toplevel))
    ///     {
    ///       return gtk_window_get_title (GTK_WINDOW (toplevel));
    ///     }
    /// 
    ///   return NULL;
    /// }
    /// ```
    /// 
    func getToplevel() -> UnsafeMutablePointer<GtkWidget>! {
        let rv = gtk_widget_get_toplevel(cast(widget_ptr))
        return cast(rv)
    }

    /// Gets the value of the `GtkWidget:valign` property.
    /// 
    /// For backwards compatibility reasons this method will never return
    /// `GTK_ALIGN_BASELINE`, but instead it will convert it to
    /// `GTK_ALIGN_FILL`. If your widget want to support baseline aligned
    /// children it must use `gtk_widget_get_valign_with_baseline()`, or
    /// `g_object_get (widget, "valign", &value, NULL)`, which will
    /// also report the true value.
    func getValign() -> GtkAlign {
        let rv = gtk_widget_get_valign(cast(widget_ptr))
        return rv
    }

    /// Gets the value of the `GtkWidget:valign` property, including
    /// `GTK_ALIGN_BASELINE`.
    func getValignWithBaseline() -> GtkAlign {
        let rv = gtk_widget_get_valign_with_baseline(cast(widget_ptr))
        return rv
    }

    /// Gets whether the widget would like any available extra vertical
    /// space.
    /// 
    /// See `gtk_widget_get_hexpand()` for more detail.
    func getVexpand() -> Bool {
        let rv = gtk_widget_get_vexpand(cast(widget_ptr))
        return Bool(rv != 0)
    }

    /// Gets whether `gtk_widget_set_vexpand()` has been used to
    /// explicitly set the expand flag on this widget.
    /// 
    /// See `gtk_widget_get_hexpand_set()` for more detail.
    func getVexpandSet() -> Bool {
        let rv = gtk_widget_get_vexpand_set(cast(widget_ptr))
        return Bool(rv != 0)
    }

    /// Determines whether the widget is visible. If you want to
    /// take into account whether the widget’s parent is also marked as
    /// visible, use `gtk_widget_is_visible()` instead.
    /// 
    /// This function does not check if the widget is obscured in any way.
    /// 
    /// See `gtk_widget_set_visible()`.
    func getVisible() -> Bool {
        let rv = gtk_widget_get_visible(cast(widget_ptr))
        return Bool(rv != 0)
    }

    /// Gets the visual that will be used to render `widget`.
    func getVisual() -> UnsafeMutablePointer<GdkVisual>! {
        let rv = gtk_widget_get_visual(cast(widget_ptr))
        return cast(rv)
    }

    /// Returns the widget’s window if it is realized, `nil` otherwise
    func getWindow() -> UnsafeMutablePointer<GdkWindow>! {
        let rv = gtk_widget_get_window(cast(widget_ptr))
        return cast(rv)
    }

    /// Makes `widget` the current grabbed widget.
    /// 
    /// This means that interaction with other widgets in the same
    /// application is blocked and mouse as well as keyboard events
    /// are delivered to this widget.
    /// 
    /// If `widget` is not sensitive, it is not set as the current
    /// grabbed widget and this function does nothing.
    func grabAdd() {
        gtk_grab_add(cast(widget_ptr))
    
    }

    /// Causes `widget` to become the default widget. `widget` must be able to be
    /// a default widget; typically you would ensure this yourself
    /// by calling `gtk_widget_set_can_default()` with a `true` value.
    /// The default widget is activated when
    /// the user presses Enter in a window. Default widgets must be
    /// activatable, that is, `gtk_widget_activate()` should affect them. Note
    /// that `GtkEntry` widgets require the “activates-default” property
    /// set to `true` before they activate the default widget when Enter
    /// is pressed and the `GtkEntry` is focused.
    func grabDefault() {
        gtk_widget_grab_default(cast(widget_ptr))
    
    }

    /// Causes `widget` to have the keyboard focus for the `GtkWindow` it's
    /// inside. `widget` must be a focusable widget, such as a `GtkEntry`;
    /// something like `GtkFrame` won’t work.
    /// 
    /// More precisely, it must have the `GTK_CAN_FOCUS` flag set. Use
    /// `gtk_widget_set_can_focus()` to modify that flag.
    /// 
    /// The widget also needs to be realized and mapped. This is indicated by the
    /// related signals. Grabbing the focus immediately after creating the widget
    /// will likely fail and cause critical warnings.
    func grabFocus() {
        gtk_widget_grab_focus(cast(widget_ptr))
    
    }

    /// Removes the grab from the given widget.
    /// 
    /// You have to pair calls to `gtk_grab_add()` and `gtk_grab_remove()`.
    /// 
    /// If `widget` does not have the grab, this function does nothing.
    func grabRemove() {
        gtk_grab_remove(cast(widget_ptr))
    
    }

    /// Determines whether `widget` is the current default widget within its
    /// toplevel. See `gtk_widget_set_can_default()`.
    func hasDefault() -> Bool {
        let rv = gtk_widget_has_default(cast(widget_ptr))
        return Bool(rv != 0)
    }

    /// Determines if the widget has the global input focus. See
    /// `gtk_widget_is_focus()` for the difference between having the global
    /// input focus, and only having the focus within a toplevel.
    func hasFocus() -> Bool {
        let rv = gtk_widget_has_focus(cast(widget_ptr))
        return Bool(rv != 0)
    }

    /// Determines whether the widget is currently grabbing events, so it
    /// is the only widget receiving input events (keyboard and mouse).
    /// 
    /// See also `gtk_grab_add()`.
    func hasGrab() -> Bool {
        let rv = gtk_widget_has_grab(cast(widget_ptr))
        return Bool(rv != 0)
    }

    /// Determines if the widget style has been looked up through the rc mechanism.
    ///
    /// **has_rc_style is deprecated:**
    /// Use #GtkStyleContext instead
    @available(*, deprecated) func hasRcStyle() -> Bool {
        let rv = gtk_widget_has_rc_style(cast(widget_ptr))
        return Bool(rv != 0)
    }

    /// Checks whether there is a `GdkScreen` is associated with
    /// this widget. All toplevel widgets have an associated
    /// screen, and all widgets added into a hierarchy with a toplevel
    /// window at the top.
    func hasScreen() -> Bool {
        let rv = gtk_widget_has_screen(cast(widget_ptr))
        return Bool(rv != 0)
    }

    /// Determines if the widget should show a visible indication that
    /// it has the global input focus. This is a convenience function for
    /// use in `draw` handlers that takes into account whether focus
    /// indication should currently be shown in the toplevel window of
    /// `widget`. See `gtk_window_get_focus_visible()` for more information
    /// about focus indication.
    /// 
    /// To find out if the widget has the global input focus, use
    /// `gtk_widget_has_focus()`.
    func hasVisibleFocus() -> Bool {
        let rv = gtk_widget_has_visible_focus(cast(widget_ptr))
        return Bool(rv != 0)
    }

    /// Reverses the effects of `gtk_widget_show()`, causing the widget to be
    /// hidden (invisible to the user).
    func hide() {
        gtk_widget_hide(cast(widget_ptr))
    
    }

    /// Utility function; intended to be connected to the `GtkWidget::delete`-event
    /// signal on a `GtkWindow`. The function calls `gtk_widget_hide()` on its
    /// argument, then returns `true`. If connected to `delete`-event, the
    /// result is that clicking the close button for a window (on the
    /// window frame, top right corner usually) will hide but not destroy
    /// the window. By default, GTK+ destroys windows when `delete`-event
    /// is received.
    func hideOnDelete() -> Bool {
        let rv = gtk_widget_hide_on_delete(cast(widget_ptr))
        return Bool(rv != 0)
    }

    /// Returns whether the widget is currently being destroyed.
    /// This information can sometimes be used to avoid doing
    /// unnecessary work.
    func inDestruction() -> Bool {
        let rv = gtk_widget_in_destruction(cast(widget_ptr))
        return Bool(rv != 0)
    }

    /// Creates and initializes child widgets defined in templates. This
    /// function must be called in the instance initializer for any
    /// class which assigned itself a template using `gtk_widget_class_set_template()`
    /// 
    /// It is important to call this function in the instance initializer
    /// of a `GtkWidget` subclass and not in `GLibObject.constructed``()` or
    /// `GLibObject.constructor``()` for two reasons.
    /// 
    /// One reason is that generally derived widgets will assume that parent
    /// class composite widgets have been created in their instance
    /// initializers.
    /// 
    /// Another reason is that when calling `g_object_new()` on a widget with
    /// composite templates, it’s important to build the composite widgets
    /// before the construct properties are set. Properties passed to `g_object_new()`
    /// should take precedence over properties set in the private template XML.
    func initTemplate() {
        gtk_widget_init_template(cast(widget_ptr))
    
    }

    /// Sets an input shape for this widget’s GDK window. This allows for
    /// windows which react to mouse click in a nonrectangular region, see
    /// `gdk_window_input_shape_combine_region()` for more information.
    func inputShapeCombine(region: RegionProtocol) {
        gtk_widget_input_shape_combine_region(cast(widget_ptr), cast(region.ptr))
    
    }

    /// Inserts `group` into `widget`. Children of `widget` that implement
    /// `GtkActionable` can then be associated with actions in `group` by
    /// setting their “action-name” to
    /// `prefix`.`action-name`.
    /// 
    /// If `group` is `nil`, a previously inserted group for `name` is removed
    /// from `widget`.
    func insertActionGroup(name: UnsafePointer<gchar>, group: ActionGroupProtocol) {
        gtk_widget_insert_action_group(cast(widget_ptr), name, cast(group.ptr))
    
    }

    /// Computes the intersection of a `widget`’s area and `area`, storing
    /// the intersection in `intersection`, and returns `true` if there was
    /// an intersection.  `intersection` may be `nil` if you’re only
    /// interested in whether there was an intersection.
    func intersect(area: Gdk.RectangleProtocol, intersection: Gdk.RectangleProtocol) -> Bool {
        let rv = gtk_widget_intersect(cast(widget_ptr), cast(area.ptr), cast(intersection.ptr))
        return Bool(rv != 0)
    }

    /// Determines whether `widget` is somewhere inside `ancestor`, possibly with
    /// intermediate containers.
    func is_(ancestor: WidgetProtocol) -> Bool {
        let rv = gtk_widget_is_ancestor(cast(widget_ptr), cast(ancestor.ptr))
        return Bool(rv != 0)
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
    func keynavFailed(direction: DirectionType) -> Bool {
        let rv = gtk_widget_keynav_failed(cast(widget_ptr), direction)
        return Bool(rv != 0)
    }

    /// Lists the closures used by `widget` for accelerator group connections
    /// with `gtk_accel_group_connect_by_path()` or `gtk_accel_group_connect()`.
    /// The closures can be used to monitor accelerator changes on `widget`,
    /// by connecting to the `GtkAccelGroup::accel`-changed signal of the
    /// `GtkAccelGroup` of a closure which can be found out with
    /// `gtk_accel_group_from_accel_closure()`.
    func listAccelClosures() -> UnsafeMutablePointer<GList>! {
        let rv = gtk_widget_list_accel_closures(cast(widget_ptr))
        return cast(rv)
    }

    /// Retrieves a `nil`-terminated array of strings containing the prefixes of
    /// `GActionGroup`'s available to `widget`.
    func listActionPrefixes() -> UnsafePointer<UnsafePointer<gchar>>! {
        let rv = gtk_widget_list_action_prefixes(cast(widget_ptr))
        return cast(rv)
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
    func listMnemonicLabels() -> UnsafeMutablePointer<GList>! {
        let rv = gtk_widget_list_mnemonic_labels(cast(widget_ptr))
        return cast(rv)
    }

    /// This function is only for use in widget implementations. Causes
    /// a widget to be mapped if it isn’t already.
    func map() {
        gtk_widget_map(cast(widget_ptr))
    
    }

    /// Emits the `GtkWidget::mnemonic`-activate signal.
    func mnemonicActivate(groupCycling group_cycling: Bool) -> Bool {
        let rv = gtk_widget_mnemonic_activate(cast(widget_ptr), gboolean(group_cycling ? 1 : 0))
        return Bool(rv != 0)
    }

    /// Sets the base color for a widget in a particular state.
    /// All other style values are left untouched. The base color
    /// is the background color used along with the text color
    /// (see `gtk_widget_modify_text()`) for widgets such as `GtkEntry`
    /// and `GtkTextView`. See also `gtk_widget_modify_style()`.
    /// 
    /// > Note that “no window” widgets (which have the `GTK_NO_WINDOW`
    /// > flag set) draw on their parent container’s window and thus may
    /// > not draw any background themselves. This is the case for e.g.
    /// > `GtkLabel`.
    /// >
    /// > To modify the background of such widgets, you have to set the
    /// > base color on their parent; if you want to set the background
    /// > of a rectangular area around a label, try placing the label in
    /// > a `GtkEventBox` widget and setting the base color on that.
    ///
    /// **modify_base is deprecated:**
    /// Use gtk_widget_override_background_color() instead
    @available(*, deprecated) func modifyBase(state: StateType, color: Gdk.ColorProtocol) {
        gtk_widget_modify_base(cast(widget_ptr), state, cast(color.ptr))
    
    }

    /// Sets the background color for a widget in a particular state.
    /// 
    /// All other style values are left untouched.
    /// See also `gtk_widget_modify_style()`.
    /// 
    /// > Note that “no window” widgets (which have the `GTK_NO_WINDOW`
    /// > flag set) draw on their parent container’s window and thus may
    /// > not draw any background themselves. This is the case for e.g.
    /// > `GtkLabel`.
    /// >
    /// > To modify the background of such widgets, you have to set the
    /// > background color on their parent; if you want to set the background
    /// > of a rectangular area around a label, try placing the label in
    /// > a `GtkEventBox` widget and setting the background color on that.
    ///
    /// **modify_bg is deprecated:**
    /// Use gtk_widget_override_background_color() instead
    @available(*, deprecated) func modifyBg(state: StateType, color: Gdk.ColorProtocol) {
        gtk_widget_modify_bg(cast(widget_ptr), state, cast(color.ptr))
    
    }

    /// Sets the cursor color to use in a widget, overriding the `GtkWidget`
    /// cursor-color and secondary-cursor-color
    /// style properties.
    /// 
    /// All other style values are left untouched.
    /// See also `gtk_widget_modify_style()`.
    ///
    /// **modify_cursor is deprecated:**
    /// Use gtk_widget_override_cursor() instead.
    @available(*, deprecated) func modifyCursor(primary: Gdk.ColorProtocol, secondary: Gdk.ColorProtocol) {
        gtk_widget_modify_cursor(cast(widget_ptr), cast(primary.ptr), cast(secondary.ptr))
    
    }

    /// Sets the foreground color for a widget in a particular state.
    /// 
    /// All other style values are left untouched.
    /// See also `gtk_widget_modify_style()`.
    ///
    /// **modify_fg is deprecated:**
    /// Use gtk_widget_override_color() instead
    @available(*, deprecated) func modifyFg(state: StateType, color: Gdk.ColorProtocol) {
        gtk_widget_modify_fg(cast(widget_ptr), state, cast(color.ptr))
    
    }

    /// Sets the font to use for a widget.
    /// 
    /// All other style values are left untouched.
    /// See also `gtk_widget_modify_style()`.
    ///
    /// **modify_font is deprecated:**
    /// Use gtk_widget_override_font() instead
    @available(*, deprecated) func modifyFont(fontDesc font_desc: FontDescriptionProtocol) {
        gtk_widget_modify_font(cast(widget_ptr), cast(font_desc.ptr))
    
    }

    /// Modifies style values on the widget.
    /// 
    /// Modifications made using this technique take precedence over
    /// style values set via an RC file, however, they will be overridden
    /// if a style is explicitly set on the widget using `gtk_widget_set_style()`.
    /// The `GtkRcStyle`-struct is designed so each field can either be
    /// set or unset, so it is possible, using this function, to modify some
    /// style values and leave the others unchanged.
    /// 
    /// Note that modifications made with this function are not cumulative
    /// with previous calls to `gtk_widget_modify_style()` or with such
    /// functions as `gtk_widget_modify_fg()`. If you wish to retain
    /// previous values, you must first call `gtk_widget_get_modifier_style()`,
    /// make your modifications to the returned style, then call
    /// `gtk_widget_modify_style()` with that style. On the other hand,
    /// if you first call `gtk_widget_modify_style()`, subsequent calls
    /// to such functions `gtk_widget_modify_fg()` will have a cumulative
    /// effect with the initial modifications.
    ///
    /// **modify_style is deprecated:**
    /// Use #GtkStyleContext with a custom #GtkStyleProvider instead
    @available(*, deprecated) func modify(style: RcStyleProtocol) {
        gtk_widget_modify_style(cast(widget_ptr), cast(style.ptr))
    
    }

    /// Sets the text color for a widget in a particular state.
    /// 
    /// All other style values are left untouched.
    /// The text color is the foreground color used along with the
    /// base color (see `gtk_widget_modify_base()`) for widgets such
    /// as `GtkEntry` and `GtkTextView`.
    /// See also `gtk_widget_modify_style()`.
    ///
    /// **modify_text is deprecated:**
    /// Use gtk_widget_override_color() instead
    @available(*, deprecated) func modifyText(state: StateType, color: Gdk.ColorProtocol) {
        gtk_widget_modify_text(cast(widget_ptr), state, cast(color.ptr))
    
    }

    /// Sets the background color to use for a widget.
    /// 
    /// All other style values are left untouched.
    /// See `gtk_widget_override_color()`.
    ///
    /// **override_background_color is deprecated:**
    /// This function is not useful in the context of CSS-based
    ///   rendering. If you wish to change the way a widget renders its background
    ///   you should use a custom CSS style, through an application-specific
    ///   #GtkStyleProvider and a CSS style class. You can also override the default
    ///   drawing of a widget through the #GtkWidget::draw signal, and use Cairo to
    ///   draw a specific color, regardless of the CSS style.
    @available(*, deprecated) func overrideBackgroundColor(state: StateFlags, color: RGBAProtocol) {
        gtk_widget_override_background_color(cast(widget_ptr), state, cast(color.ptr))
    
    }

    /// Sets the color to use for a widget.
    /// 
    /// All other style values are left untouched.
    /// 
    /// This function does not act recursively. Setting the color of a
    /// container does not affect its children. Note that some widgets that
    /// you may not think of as containers, for instance `GtkButtons`,
    /// are actually containers.
    /// 
    /// This API is mostly meant as a quick way for applications to
    /// change a widget appearance. If you are developing a widgets
    /// library and intend this change to be themeable, it is better
    /// done by setting meaningful CSS classes in your
    /// widget/container implementation through `gtk_style_context_add_class()`.
    /// 
    /// This way, your widget library can install a `GtkCssProvider`
    /// with the `GTK_STYLE_PROVIDER_PRIORITY_FALLBACK` priority in order
    /// to provide a default styling for those widgets that need so, and
    /// this theming may fully overridden by the user’s theme.
    /// 
    /// Note that for complex widgets this may bring in undesired
    /// results (such as uniform background color everywhere), in
    /// these cases it is better to fully style such widgets through a
    /// `GtkCssProvider` with the `GTK_STYLE_PROVIDER_PRIORITY_APPLICATION`
    /// priority.
    ///
    /// **override_color is deprecated:**
    /// Use a custom style provider and style classes instead
    @available(*, deprecated) func overrideColor(state: StateFlags, color: RGBAProtocol) {
        gtk_widget_override_color(cast(widget_ptr), state, cast(color.ptr))
    
    }

    /// Sets the cursor color to use in a widget, overriding the
    /// cursor-color and secondary-cursor-color
    /// style properties. All other style values are left untouched.
    /// See also `gtk_widget_modify_style()`.
    /// 
    /// Note that the underlying properties have the `GdkColor` type,
    /// so the alpha value in `primary` and `secondary` will be ignored.
    ///
    /// **override_cursor is deprecated:**
    /// This function is not useful in the context of CSS-based
    ///   rendering. If you wish to change the color used to render the primary
    ///   and secondary cursors you should use a custom CSS style, through an
    ///   application-specific #GtkStyleProvider and a CSS style class.
    @available(*, deprecated) func override_(cursor: RGBAProtocol, secondaryCursor secondary_cursor: RGBAProtocol) {
        gtk_widget_override_cursor(cast(widget_ptr), cast(cursor.ptr), cast(secondary_cursor.ptr))
    
    }

    /// Sets the font to use for a widget. All other style values are
    /// left untouched. See `gtk_widget_override_color()`.
    ///
    /// **override_font is deprecated:**
    /// This function is not useful in the context of CSS-based
    ///   rendering. If you wish to change the font a widget uses to render its text
    ///   you should use a custom CSS style, through an application-specific
    ///   #GtkStyleProvider and a CSS style class.
    @available(*, deprecated) func overrideFont(fontDesc font_desc: FontDescriptionProtocol) {
        gtk_widget_override_font(cast(widget_ptr), cast(font_desc.ptr))
    
    }

    /// Sets a symbolic color for a widget.
    /// 
    /// All other style values are left untouched.
    /// See `gtk_widget_override_color()` for overriding the foreground
    /// or background color.
    ///
    /// **override_symbolic_color is deprecated:**
    /// This function is not useful in the context of CSS-based
    ///   rendering. If you wish to change the color used to render symbolic icons
    ///   you should use a custom CSS style, through an application-specific
    ///   #GtkStyleProvider and a CSS style class.
    @available(*, deprecated) func overrideSymbolicColor(name: UnsafePointer<gchar>, color: RGBAProtocol) {
        gtk_widget_override_symbolic_color(cast(widget_ptr), name, cast(color.ptr))
    
    }

    /// Obtains the full path to `widget`. The path is simply the name of a
    /// widget and all its parents in the container hierarchy, separated by
    /// periods. The name of a widget comes from
    /// `gtk_widget_get_name()`. Paths are used to apply styles to a widget
    /// in gtkrc configuration files. Widget names are the type of the
    /// widget by default (e.g. “GtkButton”) or can be set to an
    /// application-specific value with `gtk_widget_set_name()`. By setting
    /// the name of a widget, you allow users or theme authors to apply
    /// styles to that specific widget in their gtkrc
    /// file. `path_reversed_p` fills in the path in reverse order,
    /// i.e. starting with `widget`’s name instead of starting with the name
    /// of `widget`’s outermost ancestor.
    ///
    /// **path is deprecated:**
    /// Use gtk_widget_get_path() instead
    @available(*, deprecated) func path(pathLength path_length: UnsafeMutablePointer<CUnsignedInt>, path: UnsafeMutablePointer<UnsafeMutablePointer<gchar>>, pathReversed path_reversed: UnsafeMutablePointer<UnsafeMutablePointer<gchar>>) {
        gtk_widget_path(cast(widget_ptr), cast(path_length), cast(path), cast(path_reversed))
    
    }

    /// This function is only for use in widget implementations.
    /// 
    /// Flags the widget for a rerun of the GtkWidgetClass`size_allocate`
    /// function. Use this function instead of `gtk_widget_queue_resize()`
    /// when the `widget`'s size request didn't change but it wants to
    /// reposition its contents.
    /// 
    /// An example user of this function is `gtk_widget_set_halign()`.
    func queueAllocate() {
        gtk_widget_queue_allocate(cast(widget_ptr))
    
    }

    /// Mark `widget` as needing to recompute its expand flags. Call
    /// this function when setting legacy expand child properties
    /// on the child of a container.
    /// 
    /// See `gtk_widget_compute_expand()`.
    func queueComputeExpand() {
        gtk_widget_queue_compute_expand(cast(widget_ptr))
    
    }

    /// Equivalent to calling `gtk_widget_queue_draw_area()` for the
    /// entire area of a widget.
    func queueDraw() {
        gtk_widget_queue_draw(cast(widget_ptr))
    
    }

    /// Convenience function that calls `gtk_widget_queue_draw_region()` on
    /// the region created from the given coordinates.
    /// 
    /// The region here is specified in widget coordinates.
    /// Widget coordinates are a bit odd; for historical reasons, they are
    /// defined as `widget`->window coordinates for widgets that return `true` for
    /// `gtk_widget_get_has_window()`, and are relative to `widget`->allocation.x,
    /// `widget`->allocation.y otherwise.
    /// 
    /// `width` or `height` may be 0, in this case this function does
    /// nothing. Negative values for `width` and `height` are not allowed.
    func queueDrawArea(x: CInt, y: CInt, width: CInt, height: CInt) {
        gtk_widget_queue_draw_area(cast(widget_ptr), gint(x), gint(y), gint(width), gint(height))
    
    }

    /// Invalidates the area of `widget` defined by `region` by calling
    /// `gdk_window_invalidate_region()` on the widget’s window and all its
    /// child windows. Once the main loop becomes idle (after the current
    /// batch of events has been processed, roughly), the window will
    /// receive expose events for the union of all regions that have been
    /// invalidated.
    /// 
    /// Normally you would only use this function in widget
    /// implementations. You might also use it to schedule a redraw of a
    /// `GtkDrawingArea` or some portion thereof.
    func queueDraw(region: RegionProtocol) {
        gtk_widget_queue_draw_region(cast(widget_ptr), cast(region.ptr))
    
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
    func queueResize() {
        gtk_widget_queue_resize(cast(widget_ptr))
    
    }

    /// This function works like `gtk_widget_queue_resize()`,
    /// except that the widget is not invalidated.
    func queueResizeNoRedraw() {
        gtk_widget_queue_resize_no_redraw(cast(widget_ptr))
    
    }

    /// Creates the GDK (windowing system) resources associated with a
    /// widget.  For example, `widget`->window will be created when a widget
    /// is realized.  Normally realization happens implicitly; if you show
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
    /// `GtkWidget::draw`. Or simply g_signal_connect () to the
    /// `GtkWidget::realize` signal.
    func realize() {
        gtk_widget_realize(cast(widget_ptr))
    
    }

    /// Computes the intersection of a `widget`’s area and `region`, returning
    /// the intersection. The result may be empty, use `cairo_region_is_empty()` to
    /// check.
    ///
    /// **region_intersect is deprecated:**
    /// Use gtk_widget_get_allocation() and
    ///     cairo_region_intersect_rectangle() to get the same behavior.
    @available(*, deprecated) func regionIntersect(region: RegionProtocol) -> UnsafeMutablePointer<cairo_region_t>! {
        let rv = gtk_widget_region_intersect(cast(widget_ptr), cast(region.ptr))
        return cast(rv)
    }

    /// Registers a `GdkWindow` with the widget and sets it up so that
    /// the widget receives events for it. Call `gtk_widget_unregister_window()`
    /// when destroying the window.
    /// 
    /// Before 3.8 you needed to call `gdk_window_set_user_data()` directly to set
    /// this up. This is now deprecated and you should use `gtk_widget_register_window()`
    /// instead. Old code will keep working as is, although some new features like
    /// transparency might not work perfectly.
    func register(window: WindowProtocol) {
        gtk_widget_register_window(cast(widget_ptr), cast(window.ptr))
    
    }

    /// Removes an accelerator from `widget`, previously installed with
    /// `gtk_widget_add_accelerator()`.
    func removeAccelerator(accelGroup accel_group: AccelGroupProtocol, accelKey accel_key: CUnsignedInt, accelMods accel_mods: Gdk.ModifierType) -> Bool {
        let rv = gtk_widget_remove_accelerator(cast(widget_ptr), cast(accel_group.ptr), guint(accel_key), accel_mods)
        return Bool(rv != 0)
    }

    /// Removes a widget from the list of mnemonic labels for
    /// this widget. (See `gtk_widget_list_mnemonic_labels()`). The widget
    /// must have previously been added to the list with
    /// `gtk_widget_add_mnemonic_label()`.
    func removeMnemonic(label: WidgetProtocol) {
        gtk_widget_remove_mnemonic_label(cast(widget_ptr), cast(label.ptr))
    
    }

    /// Removes a tick callback previously registered with
    /// `gtk_widget_add_tick_callback()`.
    func removeTickCallback(id: CUnsignedInt) {
        gtk_widget_remove_tick_callback(cast(widget_ptr), guint(id))
    
    }

    /// A convenience function that uses the theme settings for `widget`
    /// to look up `stock_id` and render it to a pixbuf. `stock_id` should
    /// be a stock icon ID such as `GTK_STOCK_OPEN` or `GTK_STOCK_OK`. `size`
    /// should be a size such as `GTK_ICON_SIZE_MENU`. `detail` should be a
    /// string that identifies the widget or code doing the rendering, so
    /// that theme engines can special-case rendering for that widget or
    /// code.
    /// 
    /// The pixels in the returned `GdkPixbuf` are shared with the rest of
    /// the application and should not be modified. The pixbuf should be
    /// freed after use with `g_object_unref()`.
    ///
    /// **render_icon is deprecated:**
    /// Use gtk_widget_render_icon_pixbuf() instead.
    @available(*, deprecated) func renderIcon(stockID stock_id: UnsafePointer<gchar>, size: GtkIconSize, detail: UnsafePointer<gchar>) -> UnsafeMutablePointer<GdkPixbuf>! {
        let rv = gtk_widget_render_icon(cast(widget_ptr), stock_id, size, detail)
        return cast(rv)
    }

    /// A convenience function that uses the theme engine and style
    /// settings for `widget` to look up `stock_id` and render it to
    /// a pixbuf. `stock_id` should be a stock icon ID such as
    /// `GTK_STOCK_OPEN` or `GTK_STOCK_OK`. `size` should be a size
    /// such as `GTK_ICON_SIZE_MENU`.
    /// 
    /// The pixels in the returned `GdkPixbuf` are shared with the rest of
    /// the application and should not be modified. The pixbuf should be freed
    /// after use with `g_object_unref()`.
    ///
    /// **render_icon_pixbuf is deprecated:**
    /// Use gtk_icon_theme_load_icon() instead.
    @available(*, deprecated) func renderIconPixbuf(stockID stock_id: UnsafePointer<gchar>, size: GtkIconSize) -> UnsafeMutablePointer<GdkPixbuf>! {
        let rv = gtk_widget_render_icon_pixbuf(cast(widget_ptr), stock_id, size)
        return cast(rv)
    }

    /// Moves a widget from one `GtkContainer` to another, handling reference
    /// count issues to avoid destroying the widget.
    ///
    /// **reparent is deprecated:**
    /// Use gtk_container_remove() and gtk_container_add().
    @available(*, deprecated) func reparent(newParent new_parent: WidgetProtocol) {
        gtk_widget_reparent(cast(widget_ptr), cast(new_parent.ptr))
    
    }

    /// Reset the styles of `widget` and all descendents, so when
    /// they are looked up again, they get the correct values
    /// for the currently loaded RC file settings.
    /// 
    /// This function is not useful for applications.
    ///
    /// **reset_rc_styles is deprecated:**
    /// Use #GtkStyleContext instead, and gtk_widget_reset_style()
    @available(*, deprecated) func resetRcStyles() {
        gtk_widget_reset_rc_styles(cast(widget_ptr))
    
    }

    /// Updates the style context of `widget` and all descendants
    /// by updating its widget path. `GtkContainers` may want
    /// to use this on a child when reordering it in a way that a different
    /// style might apply to it. See also `gtk_container_get_path_for_child()`.
    func resetStyle() {
        gtk_widget_reset_style(cast(widget_ptr))
    
    }

    /// Very rarely-used function. This function is used to emit
    /// an expose event on a widget. This function is not normally used
    /// directly. The only time it is used is when propagating an expose
    /// event to a windowless child widget (`gtk_widget_get_has_window()` is `false`),
    /// and that is normally done using `gtk_container_propagate_draw()`.
    /// 
    /// If you want to force an area of a window to be redrawn,
    /// use `gdk_window_invalidate_rect()` or `gdk_window_invalidate_region()`.
    /// To cause the redraw to be done immediately, follow that call
    /// with a call to `gdk_window_process_updates()`.
    ///
    /// **send_expose is deprecated:**
    /// Application and widget code should not handle
    ///   expose events directly; invalidation should use the #GtkWidget
    ///   API, and drawing should only happen inside #GtkWidget::draw
    ///   implementations
    @available(*, deprecated) func sendExpose(event: UnsafeMutablePointer<GdkEvent>) -> CInt {
        let rv = gtk_widget_send_expose(cast(widget_ptr), cast(event))
        return CInt(rv)
    }

    /// Sends the focus change `event` to `widget`
    /// 
    /// This function is not meant to be used by applications. The only time it
    /// should be used is when it is necessary for a `GtkWidget` to assign focus
    /// to a widget that is semantically owned by the first widget even though
    /// it’s not a direct child - for instance, a search entry in a floating
    /// window similar to the quick search in `GtkTreeView`.
    /// 
    /// An example of its usage is:
    /// 
    /// (C Language Example):
    /// ```C
    ///   GdkEvent *fevent = gdk_event_new (GDK_FOCUS_CHANGE);
    /// 
    ///   fevent->focus_change.type = GDK_FOCUS_CHANGE;
    ///   fevent->focus_change.in = TRUE;
    ///   fevent->focus_change.window = _gtk_widget_get_window (widget);
    ///   if (fevent->focus_change.window != NULL)
    ///     g_object_ref (fevent->focus_change.window);
    /// 
    ///   gtk_widget_send_focus_change (widget, fevent);
    /// 
    ///   gdk_event_free (event);
    /// ```
    /// 
    func sendFocusChange(event: UnsafeMutablePointer<GdkEvent>) -> Bool {
        let rv = gtk_widget_send_focus_change(cast(widget_ptr), cast(event))
        return Bool(rv != 0)
    }

    /// Given an accelerator group, `accel_group`, and an accelerator path,
    /// `accel_path`, sets up an accelerator in `accel_group` so whenever the
    /// key binding that is defined for `accel_path` is pressed, `widget`
    /// will be activated.  This removes any accelerators (for any
    /// accelerator group) installed by previous calls to
    /// `gtk_widget_set_accel_path()`. Associating accelerators with
    /// paths allows them to be modified by the user and the modifications
    /// to be saved for future use. (See `gtk_accel_map_save()`.)
    /// 
    /// This function is a low level function that would most likely
    /// be used by a menu creation system like `GtkUIManager`. If you
    /// use `GtkUIManager`, setting up accelerator paths will be done
    /// automatically.
    /// 
    /// Even when you you aren’t using `GtkUIManager`, if you only want to
    /// set up accelerators on menu items `gtk_menu_item_set_accel_path()`
    /// provides a somewhat more convenient interface.
    /// 
    /// Note that `accel_path` string will be stored in a `GQuark`. Therefore, if you
    /// pass a static string, you can save some memory by interning it first with
    /// `g_intern_static_string()`.
    func set(accelPath accel_path: UnsafePointer<gchar>, accelGroup accel_group: AccelGroupProtocol) {
        gtk_widget_set_accel_path(cast(widget_ptr), accel_path, cast(accel_group.ptr))
    
    }

    /// Sets the widget’s allocation.  This should not be used
    /// directly, but from within a widget’s size_allocate method.
    /// 
    /// The allocation set should be the “adjusted” or actual
    /// allocation. If you’re implementing a `GtkContainer`, you want to use
    /// `gtk_widget_size_allocate()` instead of `gtk_widget_set_allocation()`.
    /// The GtkWidgetClass`adjust_size_allocation` virtual method adjusts the
    /// allocation inside `gtk_widget_size_allocate()` to create an adjusted
    /// allocation.
    func set(allocation: UnsafePointer<GtkAllocation>) {
        gtk_widget_set_allocation(cast(widget_ptr), cast(allocation))
    
    }

    /// Sets whether the application intends to draw on the widget in
    /// an `GtkWidget::draw` handler.
    /// 
    /// This is a hint to the widget and does not affect the behavior of
    /// the GTK+ core; many widgets ignore this flag entirely. For widgets
    /// that do pay attention to the flag, such as `GtkEventBox` and `GtkWindow`,
    /// the effect is to suppress default themed drawing of the widget's
    /// background. (Children of the widget will still be drawn.) The application
    /// is then entirely responsible for drawing the widget background.
    /// 
    /// Note that the background is still drawn when the widget is mapped.
    func set(appPaintable app_paintable: Bool) {
        gtk_widget_set_app_paintable(cast(widget_ptr), gboolean(app_paintable ? 1 : 0))
    
    }

    /// Specifies whether `widget` can be a default widget. See
    /// `gtk_widget_grab_default()` for details about the meaning of
    /// “default”.
    func set(canDefault can_default: Bool) {
        gtk_widget_set_can_default(cast(widget_ptr), gboolean(can_default ? 1 : 0))
    
    }

    /// Specifies whether `widget` can own the input focus. See
    /// `gtk_widget_grab_focus()` for actually setting the input focus on a
    /// widget.
    func set(canFocus can_focus: Bool) {
        gtk_widget_set_can_focus(cast(widget_ptr), gboolean(can_focus ? 1 : 0))
    
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
    func setChildVisible(isVisible is_visible: Bool) {
        gtk_widget_set_child_visible(cast(widget_ptr), gboolean(is_visible ? 1 : 0))
    
    }

    /// Sets the widget’s clip.  This must not be used directly,
    /// but from within a widget’s size_allocate method.
    /// It must be called after `gtk_widget_set_allocation()` (or after chaining up
    /// to the parent class), because that function resets the clip.
    /// 
    /// The clip set should be the area that `widget` draws on. If `widget` is a
    /// `GtkContainer`, the area must contain all children's clips.
    /// 
    /// If this function is not called by `widget` during a `size`-allocate handler,
    /// the clip will be set to `widget`'s allocation.
    func set(clip: UnsafePointer<GtkAllocation>) {
        gtk_widget_set_clip(cast(widget_ptr), cast(clip))
    
    }

    /// Sets a widgets composite name. The widget must be
    /// a composite child of its parent; see `gtk_widget_push_composite_child()`.
    ///
    /// **set_composite_name is deprecated:**
    /// Use gtk_widget_class_set_template(), or don’t use this API at all.
    @available(*, deprecated) func setComposite(name: UnsafePointer<gchar>) {
        gtk_widget_set_composite_name(cast(widget_ptr), name)
    
    }

    /// Enables or disables a `GdkDevice` to interact with `widget`
    /// and all its children.
    /// 
    /// It does so by descending through the `GdkWindow` hierarchy
    /// and enabling the same mask that is has for core events
    /// (i.e. the one that `gdk_window_get_events()` returns).
    func setDeviceEnabled(device: Gdk.DeviceProtocol, enabled: Bool) {
        gtk_widget_set_device_enabled(cast(widget_ptr), cast(device.ptr), gboolean(enabled ? 1 : 0))
    
    }

    /// Sets the device event mask (see `GdkEventMask`) for a widget. The event
    /// mask determines which events a widget will receive from `device`. Keep
    /// in mind that different widgets have different default event masks, and by
    /// changing the event mask you may disrupt a widget’s functionality,
    /// so be careful. This function must be called while a widget is
    /// unrealized. Consider `gtk_widget_add_device_events()` for widgets that are
    /// already realized, or if you want to preserve the existing event
    /// mask. This function can’t be used with windowless widgets (which return
    /// `false` from `gtk_widget_get_has_window()`);
    /// to get events on those widgets, place them inside a `GtkEventBox`
    /// and receive events on the event box.
    func setDeviceEvents(device: Gdk.DeviceProtocol, events: Gdk.EventMask) {
        gtk_widget_set_device_events(cast(widget_ptr), cast(device.ptr), events)
    
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
    func setDirection(dir: TextDirection) {
        gtk_widget_set_direction(cast(widget_ptr), dir)
    
    }

    /// Widgets are double buffered by default; you can use this function
    /// to turn off the buffering. “Double buffered” simply means that
    /// `gdk_window_begin_draw_frame()` and `gdk_window_end_draw_frame()` are called
    /// automatically around expose events sent to the
    /// widget. `gdk_window_begin_draw_frame()` diverts all drawing to a widget's
    /// window to an offscreen buffer, and `gdk_window_end_draw_frame()` draws the
    /// buffer to the screen. The result is that users see the window
    /// update in one smooth step, and don’t see individual graphics
    /// primitives being rendered.
    /// 
    /// In very simple terms, double buffered widgets don’t flicker,
    /// so you would only use this function to turn off double buffering
    /// if you had special needs and really knew what you were doing.
    /// 
    /// Note: if you turn off double-buffering, you have to handle
    /// expose events, since even the clearing to the background color or
    /// pixmap will not happen automatically (as it is done in
    /// `gdk_window_begin_draw_frame()`).
    /// 
    /// In 3.10 GTK and GDK have been restructured for translucent drawing. Since
    /// then expose events for double-buffered widgets are culled into a single
    /// event to the toplevel GDK window. If you now unset double buffering, you
    /// will cause a separate rendering pass for every widget. This will likely
    /// cause rendering problems - in particular related to stacking - and usually
    /// increases rendering times significantly.
    ///
    /// **set_double_buffered is deprecated:**
    /// This function does not work under non-X11 backends or with
    /// non-native windows.
    /// It should not be used in newly written code.
    @available(*, deprecated) func set(doubleBuffered double_buffered: Bool) {
        gtk_widget_set_double_buffered(cast(widget_ptr), gboolean(double_buffered ? 1 : 0))
    
    }

    /// Sets the event mask (see `GdkEventMask`) for a widget. The event
    /// mask determines which events a widget will receive. Keep in mind
    /// that different widgets have different default event masks, and by
    /// changing the event mask you may disrupt a widget’s functionality,
    /// so be careful. This function must be called while a widget is
    /// unrealized. Consider `gtk_widget_add_events()` for widgets that are
    /// already realized, or if you want to preserve the existing event
    /// mask. This function can’t be used with widgets that have no window.
    /// (See `gtk_widget_get_has_window()`).  To get events on those widgets,
    /// place them inside a `GtkEventBox` and receive events on the event
    /// box.
    func set(events: CInt) {
        gtk_widget_set_events(cast(widget_ptr), gint(events))
    
    }

    /// Sets whether the widget should grab focus when it is clicked with the mouse.
    /// Making mouse clicks not grab focus is useful in places like toolbars where
    /// you don’t want the keyboard focus removed from the main area of the
    /// application.
    @available(*, deprecated) func set(focusOnClick focus_on_click: Bool) {
        gtk_widget_set_focus_on_click(cast(widget_ptr), gboolean(focus_on_click ? 1 : 0))
    
    }

    /// Sets the font map to use for Pango rendering. When not set, the widget
    /// will inherit the font map from its parent.
    func set(fontMap font_map: Pango.FontMapProtocol) {
        gtk_widget_set_font_map(cast(widget_ptr), cast(font_map.ptr))
    
    }

    /// Sets the `cairo_font_options_t` used for Pango rendering in this widget.
    /// When not set, the default font options for the `GdkScreen` will be used.
    func setFont(options: FontOptionsProtocol) {
        gtk_widget_set_font_options(cast(widget_ptr), cast(options.ptr))
    
    }

    /// Sets the horizontal alignment of `widget`.
    /// See the `GtkWidget:halign` property.
    func setHalign(align: Align) {
        gtk_widget_set_halign(cast(widget_ptr), align)
    
    }

    /// Sets the has-tooltip property on `widget` to `has_tooltip`.  See
    /// `GtkWidget:has`-tooltip for more information.
    func set(hasTooltip has_tooltip: Bool) {
        gtk_widget_set_has_tooltip(cast(widget_ptr), gboolean(has_tooltip ? 1 : 0))
    
    }

    /// Specifies whether `widget` has a `GdkWindow` of its own. Note that
    /// all realized widgets have a non-`nil` “window” pointer
    /// (`gtk_widget_get_window()` never returns a `nil` window when a widget
    /// is realized), but for many of them it’s actually the `GdkWindow` of
    /// one of its parent widgets. Widgets that do not create a `window` for
    /// themselves in `GtkWidget::realize` must announce this by
    /// calling this function with `has_window` = `false`.
    /// 
    /// This function should only be called by widget implementations,
    /// and they should call it in their `init()` function.
    func set(hasWindow has_window: Bool) {
        gtk_widget_set_has_window(cast(widget_ptr), gboolean(has_window ? 1 : 0))
    
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
    func setHexpand(expand: Bool) {
        gtk_widget_set_hexpand(cast(widget_ptr), gboolean(expand ? 1 : 0))
    
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
    func setHexpand(set: Bool) {
        gtk_widget_set_hexpand_set(cast(widget_ptr), gboolean(set ? 1 : 0))
    
    }

    /// Marks the widget as being mapped.
    /// 
    /// This function should only ever be called in a derived widget's
    /// “map” or “unmap” implementation.
    func set(mapped: Bool) {
        gtk_widget_set_mapped(cast(widget_ptr), gboolean(mapped ? 1 : 0))
    
    }

    /// Sets the bottom margin of `widget`.
    /// See the `GtkWidget:margin`-bottom property.
    func setMarginBottom(margin: CInt) {
        gtk_widget_set_margin_bottom(cast(widget_ptr), gint(margin))
    
    }

    /// Sets the end margin of `widget`.
    /// See the `GtkWidget:margin`-end property.
    func setMarginEnd(margin: CInt) {
        gtk_widget_set_margin_end(cast(widget_ptr), gint(margin))
    
    }

    /// Sets the left margin of `widget`.
    /// See the `GtkWidget:margin`-left property.
    ///
    /// **set_margin_left is deprecated:**
    /// Use gtk_widget_set_margin_start() instead.
    @available(*, deprecated) func setMarginLeft(margin: CInt) {
        gtk_widget_set_margin_left(cast(widget_ptr), gint(margin))
    
    }

    /// Sets the right margin of `widget`.
    /// See the `GtkWidget:margin`-right property.
    ///
    /// **set_margin_right is deprecated:**
    /// Use gtk_widget_set_margin_end() instead.
    @available(*, deprecated) func setMarginRight(margin: CInt) {
        gtk_widget_set_margin_right(cast(widget_ptr), gint(margin))
    
    }

    /// Sets the start margin of `widget`.
    /// See the `GtkWidget:margin`-start property.
    func setMarginStart(margin: CInt) {
        gtk_widget_set_margin_start(cast(widget_ptr), gint(margin))
    
    }

    /// Sets the top margin of `widget`.
    /// See the `GtkWidget:margin`-top property.
    func setMarginTop(margin: CInt) {
        gtk_widget_set_margin_top(cast(widget_ptr), gint(margin))
    
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
    func set(name: UnsafePointer<gchar>) {
        gtk_widget_set_name(cast(widget_ptr), name)
    
    }

    /// Sets the `GtkWidget:no`-show-all property, which determines whether
    /// calls to `gtk_widget_show_all()` will affect this widget.
    /// 
    /// This is mostly for use in constructing widget hierarchies with externally
    /// controlled visibility, see `GtkUIManager`.
    func set(noShowAll no_show_all: Bool) {
        gtk_widget_set_no_show_all(cast(widget_ptr), gboolean(no_show_all ? 1 : 0))
    
    }

    /// Request the `widget` to be rendered partially transparent,
    /// with opacity 0 being fully transparent and 1 fully opaque. (Opacity values
    /// are clamped to the [0,1] range.).
    /// This works on both toplevel widget, and child widgets, although there
    /// are some limitations:
    /// 
    /// For toplevel widgets this depends on the capabilities of the windowing
    /// system. On X11 this has any effect only on X screens with a compositing manager
    /// running. See `gtk_widget_is_composited()`. On Windows it should work
    /// always, although setting a window’s opacity after the window has been
    /// shown causes it to flicker once on Windows.
    /// 
    /// For child widgets it doesn’t work if any affected widget has a native window, or
    /// disables double buffering.
    func set(opacity: gdouble) {
        gtk_widget_set_opacity(cast(widget_ptr), opacity)
    
    }

    /// This function is useful only when implementing subclasses of
    /// `GtkContainer`.
    /// Sets the container as the parent of `widget`, and takes care of
    /// some details such as updating the state and style of the child
    /// to reflect its new location. The opposite function is
    /// `gtk_widget_unparent()`.
    func set(parent: WidgetProtocol) {
        gtk_widget_set_parent(cast(widget_ptr), cast(parent.ptr))
    
    }

    /// Sets a non default parent window for `widget`.
    /// 
    /// For `GtkWindow` classes, setting a `parent_window` effects whether
    /// the window is a toplevel window or can be embedded into other
    /// widgets.
    /// 
    /// For `GtkWindow` classes, this needs to be called before the
    /// window is realized.
    func set(parentWindow parent_window: WindowProtocol) {
        gtk_widget_set_parent_window(cast(widget_ptr), cast(parent_window.ptr))
    
    }

    /// Marks the widget as being realized. This function must only be
    /// called after all `GdkWindows` for the `widget` have been created
    /// and registered.
    /// 
    /// This function should only ever be called in a derived widget's
    /// “realize” or “unrealize” implementation.
    func set(realized: Bool) {
        gtk_widget_set_realized(cast(widget_ptr), gboolean(realized ? 1 : 0))
    
    }

    /// Specifies whether `widget` will be treated as the default widget
    /// within its toplevel when it has the focus, even if another widget
    /// is the default.
    /// 
    /// See `gtk_widget_grab_default()` for details about the meaning of
    /// “default”.
    func set(receivesDefault receives_default: Bool) {
        gtk_widget_set_receives_default(cast(widget_ptr), gboolean(receives_default ? 1 : 0))
    
    }

    /// Sets whether the entire widget is queued for drawing when its size
    /// allocation changes. By default, this setting is `true` and
    /// the entire widget is redrawn on every size change. If your widget
    /// leaves the upper left unchanged when made bigger, turning this
    /// setting off will improve performance.
    /// 
    /// Note that for widgets where `gtk_widget_get_has_window()` is `false`
    /// setting this flag to `false` turns off all allocation on resizing:
    /// the widget will not even redraw if its position changes; this is to
    /// allow containers that don’t draw anything to avoid excess
    /// invalidations. If you set this flag on a widget with no window that
    /// does draw on `widget`->window, you are
    /// responsible for invalidating both the old and new allocation of the
    /// widget when the widget is moved and responsible for invalidating
    /// regions newly when the widget increases size.
    func set(redrawOnAllocate redraw_on_allocate: Bool) {
        gtk_widget_set_redraw_on_allocate(cast(widget_ptr), gboolean(redraw_on_allocate ? 1 : 0))
    
    }

    /// Sets the sensitivity of a widget. A widget is sensitive if the user
    /// can interact with it. Insensitive widgets are “grayed out” and the
    /// user can’t interact with them. Insensitive widgets are known as
    /// “inactive”, “disabled”, or “ghosted” in some other toolkits.
    func set(sensitive: Bool) {
        gtk_widget_set_sensitive(cast(widget_ptr), gboolean(sensitive ? 1 : 0))
    
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
    func setSizeRequest(width: CInt, height: CInt) {
        gtk_widget_set_size_request(cast(widget_ptr), gint(width), gint(height))
    
    }

    /// This function is for use in widget implementations. Sets the state
    /// of a widget (insensitive, prelighted, etc.) Usually you should set
    /// the state using wrapper functions such as `gtk_widget_set_sensitive()`.
    ///
    /// **set_state is deprecated:**
    /// Use gtk_widget_set_state_flags() instead.
    @available(*, deprecated) func set(state: StateType) {
        gtk_widget_set_state(cast(widget_ptr), state)
    
    }

    /// This function is for use in widget implementations. Turns on flag
    /// values in the current widget state (insensitive, prelighted, etc.).
    /// 
    /// This function accepts the values `GTK_STATE_FLAG_DIR_LTR` and
    /// `GTK_STATE_FLAG_DIR_RTL` but ignores them. If you want to set the widget's
    /// direction, use `gtk_widget_set_direction()`.
    /// 
    /// It is worth mentioning that any other state than `GTK_STATE_FLAG_INSENSITIVE`,
    /// will be propagated down to all non-internal children if `widget` is a
    /// `GtkContainer`, while `GTK_STATE_FLAG_INSENSITIVE` itself will be propagated
    /// down to all `GtkContainer` children by different means than turning on the
    /// state flag down the hierarchy, both `gtk_widget_get_state_flags()` and
    /// `gtk_widget_is_sensitive()` will make use of these.
    func setState(flags: StateFlags, clear: Bool) {
        gtk_widget_set_state_flags(cast(widget_ptr), flags, gboolean(clear ? 1 : 0))
    
    }

    /// Used to set the `GtkStyle` for a widget (`widget`->style). Since
    /// GTK 3, this function does nothing, the passed in style is ignored.
    ///
    /// **set_style is deprecated:**
    /// Use #GtkStyleContext instead
    @available(*, deprecated) func set(style: StyleProtocol) {
        gtk_widget_set_style(cast(widget_ptr), cast(style.ptr))
    
    }

    /// Enables or disables multiple pointer awareness. If this setting is `true`,
    /// `widget` will start receiving multiple, per device enter/leave events. Note
    /// that if custom `GdkWindows` are created in `GtkWidget::realize`,
    /// `gdk_window_set_support_multidevice()` will have to be called manually on them.
    func set(supportMultidevice support_multidevice: Bool) {
        gtk_widget_set_support_multidevice(cast(widget_ptr), gboolean(support_multidevice ? 1 : 0))
    
    }

    /// Sets `markup` as the contents of the tooltip, which is marked up with
    ///  the [Pango text markup language](#PangoMarkupFormat).
    /// 
    /// This function will take care of setting `GtkWidget:has`-tooltip to `true`
    /// and of the default handler for the `GtkWidget::query`-tooltip signal.
    /// 
    /// See also the `GtkWidget:tooltip`-markup property and
    /// `gtk_tooltip_set_markup()`.
    func setTooltip(markup: UnsafePointer<gchar>) {
        gtk_widget_set_tooltip_markup(cast(widget_ptr), markup)
    
    }

    /// Sets `text` as the contents of the tooltip. This function will take
    /// care of setting `GtkWidget:has`-tooltip to `true` and of the default
    /// handler for the `GtkWidget::query`-tooltip signal.
    /// 
    /// See also the `GtkWidget:tooltip`-text property and `gtk_tooltip_set_text()`.
    func setTooltip(text: UnsafePointer<gchar>) {
        gtk_widget_set_tooltip_text(cast(widget_ptr), text)
    
    }

    /// Replaces the default window used for displaying
    /// tooltips with `custom_window`. GTK+ will take care of showing and
    /// hiding `custom_window` at the right moment, to behave likewise as
    /// the default tooltip window. If `custom_window` is `nil`, the default
    /// tooltip window will be used.
    func setTooltipWindow(customWindow custom_window: WindowProtocol) {
        gtk_widget_set_tooltip_window(cast(widget_ptr), cast(custom_window.ptr))
    
    }

    /// Sets the vertical alignment of `widget`.
    /// See the `GtkWidget:valign` property.
    func setValign(align: Align) {
        gtk_widget_set_valign(cast(widget_ptr), align)
    
    }

    /// Sets whether the widget would like any available extra vertical
    /// space.
    /// 
    /// See `gtk_widget_set_hexpand()` for more detail.
    func setVexpand(expand: Bool) {
        gtk_widget_set_vexpand(cast(widget_ptr), gboolean(expand ? 1 : 0))
    
    }

    /// Sets whether the vexpand flag (see `gtk_widget_get_vexpand()`) will
    /// be used.
    /// 
    /// See `gtk_widget_set_hexpand_set()` for more detail.
    func setVexpand(set: Bool) {
        gtk_widget_set_vexpand_set(cast(widget_ptr), gboolean(set ? 1 : 0))
    
    }

    /// Sets the visibility state of `widget`. Note that setting this to
    /// `true` doesn’t mean the widget is actually viewable, see
    /// `gtk_widget_get_visible()`.
    /// 
    /// This function simply calls `gtk_widget_show()` or `gtk_widget_hide()`
    /// but is nicer to use when the visibility of the widget depends on
    /// some condition.
    func set(visible: Bool) {
        gtk_widget_set_visible(cast(widget_ptr), gboolean(visible ? 1 : 0))
    
    }

    /// Sets the visual that should be used for by widget and its children for
    /// creating `GdkWindows`. The visual must be on the same `GdkScreen` as
    /// returned by `gtk_widget_get_screen()`, so handling the
    /// `GtkWidget::screen`-changed signal is necessary.
    /// 
    /// Setting a new `visual` will not cause `widget` to recreate its windows,
    /// so you should call this function before `widget` is realized.
    func set(visual: VisualProtocol) {
        gtk_widget_set_visual(cast(widget_ptr), cast(visual.ptr))
    
    }

    /// Sets a widget’s window. This function should only be used in a
    /// widget’s `GtkWidget::realize` implementation. The `window` passed is
    /// usually either new window created with `gdk_window_new()`, or the
    /// window of its parent widget as returned by
    /// `gtk_widget_get_parent_window()`.
    /// 
    /// Widgets must indicate whether they will create their own `GdkWindow`
    /// by calling `gtk_widget_set_has_window()`. This is usually done in the
    /// widget’s `init()` function.
    /// 
    /// Note that this function does not add any reference to `window`.
    func set(window: WindowProtocol) {
        gtk_widget_set_window(cast(widget_ptr), cast(window.ptr))
    
    }

    /// Sets a shape for this widget’s GDK window. This allows for
    /// transparent windows etc., see `gdk_window_shape_combine_region()`
    /// for more information.
    func shapeCombine(region: RegionProtocol) {
        gtk_widget_shape_combine_region(cast(widget_ptr), cast(region.ptr))
    
    }

    /// Flags a widget to be displayed. Any widget that isn’t shown will
    /// not appear on the screen. If you want to show all the widgets in a
    /// container, it’s easier to call `gtk_widget_show_all()` on the
    /// container, instead of individually showing the widgets.
    /// 
    /// Remember that you have to show the containers containing a widget,
    /// in addition to the widget itself, before it will appear onscreen.
    /// 
    /// When a toplevel container is shown, it is immediately realized and
    /// mapped; other shown widgets are realized and mapped when their
    /// toplevel container is realized and mapped.
    func show() {
        gtk_widget_show(cast(widget_ptr))
    
    }

    /// Recursively shows a widget, and any child widgets (if the widget is
    /// a container).
    func showAll() {
        gtk_widget_show_all(cast(widget_ptr))
    
    }

    /// Shows a widget. If the widget is an unmapped toplevel widget
    /// (i.e. a `GtkWindow` that has not yet been shown), enter the main
    /// loop and wait for the window to actually be mapped. Be careful;
    /// because the main loop is running, anything can happen during
    /// this function.
    func showNow() {
        gtk_widget_show_now(cast(widget_ptr))
    
    }

    /// This function is only used by `GtkContainer` subclasses, to assign a size
    /// and position to their child widgets.
    /// 
    /// In this function, the allocation may be adjusted. It will be forced
    /// to a 1x1 minimum size, and the adjust_size_allocation virtual
    /// method on the child will be used to adjust the allocation. Standard
    /// adjustments include removing the widget’s margins, and applying the
    /// widget’s `GtkWidget:halign` and `GtkWidget:valign` properties.
    /// 
    /// For baseline support in containers you need to use `gtk_widget_size_allocate_with_baseline()`
    /// instead.
    func sizeAllocate(allocation: UnsafeMutablePointer<GtkAllocation>) {
        gtk_widget_size_allocate(cast(widget_ptr), cast(allocation))
    
    }

    /// This function is only used by `GtkContainer` subclasses, to assign a size,
    /// position and (optionally) baseline to their child widgets.
    /// 
    /// In this function, the allocation and baseline may be adjusted. It
    /// will be forced to a 1x1 minimum size, and the
    /// adjust_size_allocation virtual and adjust_baseline_allocation
    /// methods on the child will be used to adjust the allocation and
    /// baseline. Standard adjustments include removing the widget's
    /// margins, and applying the widget’s `GtkWidget:halign` and
    /// `GtkWidget:valign` properties.
    /// 
    /// If the child widget does not have a valign of `GTK_ALIGN_BASELINE` the
    /// baseline argument is ignored and -1 is used instead.
    func sizeAllocateWithBaseline(allocation: UnsafeMutablePointer<GtkAllocation>, baseline: CInt) {
        gtk_widget_size_allocate_with_baseline(cast(widget_ptr), cast(allocation), gint(baseline))
    
    }

    /// This function is typically used when implementing a `GtkContainer`
    /// subclass.  Obtains the preferred size of a widget. The container
    /// uses this information to arrange its child widgets and decide what
    /// size allocations to give them with `gtk_widget_size_allocate()`.
    /// 
    /// You can also call this function from an application, with some
    /// caveats. Most notably, getting a size request requires the widget
    /// to be associated with a screen, because font information may be
    /// needed. Multihead-aware applications should keep this in mind.
    /// 
    /// Also remember that the size request is not necessarily the size
    /// a widget will actually be allocated.
    ///
    /// **size_request is deprecated:**
    /// Use gtk_widget_get_preferred_size() instead.
    @available(*, deprecated) func sizeRequest(requisition: RequisitionProtocol) {
        gtk_widget_size_request(cast(widget_ptr), cast(requisition.ptr))
    
    }

    /// This function attaches the widget’s `GtkStyle` to the widget's
    /// `GdkWindow`. It is a replacement for
    /// 
    /// ```
    /// widget->style = gtk_style_attach (widget->style, widget->window);
    /// ```
    /// 
    /// and should only ever be called in a derived widget’s “realize”
    /// implementation which does not chain up to its parent class'
    /// “realize” implementation, because one of the parent classes
    /// (finally `GtkWidget`) would attach the style itself.
    ///
    /// **style_attach is deprecated:**
    /// This step is unnecessary with #GtkStyleContext.
    @available(*, deprecated) func styleAttach() {
        gtk_widget_style_attach(cast(widget_ptr))
    
    }


    // *** styleGet() is not available because it has a varargs (...) parameter!


    /// Gets the value of a style property of `widget`.
    func styleGetProperty(propertyName property_name: UnsafePointer<gchar>, value: GLibObject.ValueProtocol) {
        gtk_widget_style_get_property(cast(widget_ptr), property_name, cast(value.ptr))
    
    }

    /// Non-vararg variant of `gtk_widget_style_get()`. Used primarily by language
    /// bindings.
    func styleGetValist(firstPropertyName first_property_name: UnsafePointer<gchar>, varArgs var_args: CVaListPointer) {
        gtk_widget_style_get_valist(cast(widget_ptr), first_property_name, var_args)
    
    }

    /// Reverts the effect of a previous call to `gtk_widget_freeze_child_notify()`.
    /// This causes all queued `GtkWidget::child`-notify signals on `widget` to be
    /// emitted.
    func thawChildNotify() {
        gtk_widget_thaw_child_notify(cast(widget_ptr))
    
    }

    /// Translate coordinates relative to `src_widget`’s allocation to coordinates
    /// relative to `dest_widget`’s allocations. In order to perform this
    /// operation, both widgets must be realized, and must share a common
    /// toplevel.
    func translateCoordinates(destWidget dest_widget: WidgetProtocol, srcX src_x: CInt, srcY src_y: CInt, destX dest_x: UnsafeMutablePointer<CInt>, destY dest_y: UnsafeMutablePointer<CInt>) -> Bool {
        let rv = gtk_widget_translate_coordinates(cast(widget_ptr), cast(dest_widget.ptr), gint(src_x), gint(src_y), cast(dest_x), cast(dest_y))
        return Bool(rv != 0)
    }

    /// Triggers a tooltip query on the display where the toplevel of `widget`
    /// is located. See `gtk_tooltip_trigger_tooltip_query()` for more
    /// information.
    func triggerTooltipQuery() {
        gtk_widget_trigger_tooltip_query(cast(widget_ptr))
    
    }

    /// This function is only for use in widget implementations. Causes
    /// a widget to be unmapped if it’s currently mapped.
    func unmap() {
        gtk_widget_unmap(cast(widget_ptr))
    
    }

    /// This function is only for use in widget implementations.
    /// Should be called by implementations of the remove method
    /// on `GtkContainer`, to dissociate a child from the container.
    func unparent() {
        gtk_widget_unparent(cast(widget_ptr))
    
    }

    /// This function is only useful in widget implementations.
    /// Causes a widget to be unrealized (frees all GDK resources
    /// associated with the widget, such as `widget`->window).
    func unrealize() {
        gtk_widget_unrealize(cast(widget_ptr))
    
    }

    /// Unregisters a `GdkWindow` from the widget that was previously set up with
    /// `gtk_widget_register_window()`. You need to call this when the window is
    /// no longer used by the widget, such as when you destroy it.
    func unregister(window: WindowProtocol) {
        gtk_widget_unregister_window(cast(widget_ptr), cast(window.ptr))
    
    }

    /// This function is for use in widget implementations. Turns off flag
    /// values for the current widget state (insensitive, prelighted, etc.).
    /// See `gtk_widget_set_state_flags()`.
    func unsetState(flags: StateFlags) {
        gtk_widget_unset_state_flags(cast(widget_ptr), flags)
    
    }

    /// Transforms the given cairo context `cr` that from `widget`-relative
    /// coordinates to `window`-relative coordinates.
    /// If the `widget`’s window is not an ancestor of `window`, no
    /// modification will be applied.
    /// 
    /// This is the inverse to the transformation GTK applies when
    /// preparing an expose event to be emitted with the `GtkWidget::draw`
    /// signal. It is intended to help porting multiwindow widgets from
    /// GTK+ 2 to the rendering architecture of GTK+ 3.
    func cairoTransformToWindow(cr: cairo.ContextProtocol, window: WindowProtocol) {
        gtk_cairo_transform_to_window(cast(cr.ptr), cast(widget_ptr), cast(window.ptr))
    
    }

    /// Adds a GTK+ grab on `device`, so all the events on `device` and its
    /// associated pointer or keyboard (if any) are delivered to `widget`.
    /// If the `block_others` parameter is `true`, any other devices will be
    /// unable to interact with `widget` during the grab.
    func deviceGrabAdd(device: Gdk.DeviceProtocol, blockOthers block_others: Bool) {
        gtk_device_grab_add(cast(widget_ptr), cast(device.ptr), gboolean(block_others ? 1 : 0))
    
    }

    /// Removes a device grab from the given widget.
    /// 
    /// You have to pair calls to `gtk_device_grab_add()` and
    /// `gtk_device_grab_remove()`.
    func deviceGrabRemove(device: Gdk.DeviceProtocol) {
        gtk_device_grab_remove(cast(widget_ptr), cast(device.ptr))
    
    }

    /// Changes the icon for a widget to a given widget. GTK+
    /// will not destroy the icon, so if you don’t want
    /// it to persist, you should connect to the “drag-end”
    /// signal and destroy it yourself.
    func dragSetIconWidget(context: DragContextProtocol, hotX hot_x: CInt, hotY hot_y: CInt) {
        gtk_drag_set_icon_widget(cast(context.ptr), cast(widget_ptr), gint(hot_x), gint(hot_y))
    
    }

    /// Draws a text caret on `cr` at `location`. This is not a style function
    /// but merely a convenience function for drawing the standard cursor shape.
    ///
    /// **draw_insertion_cursor is deprecated:**
    /// Use gtk_render_insertion_cursor() instead.
    @available(*, deprecated) func drawInsertionCursor(cr: cairo.ContextProtocol, location: Gdk.RectangleProtocol, isPrimary is_primary: Bool, direction: TextDirection, drawArrow draw_arrow: Bool) {
        gtk_draw_insertion_cursor(cast(widget_ptr), cast(cr.ptr), cast(location.ptr), gboolean(is_primary ? 1 : 0), direction, gboolean(draw_arrow ? 1 : 0))
    
    }

    /// Draws an arrow in the given rectangle on `cr` using the given
    /// parameters. `arrow_type` determines the direction of the arrow.
    ///
    /// **paint_arrow is deprecated:**
    /// Use gtk_render_arrow() instead
    @available(*, deprecated) func paintArrow(style: StyleProtocol, cr: cairo.ContextProtocol, stateType state_type: StateType, shadowType shadow_type: ShadowType, detail: UnsafePointer<gchar>, arrowType arrow_type: ArrowType, fill: Bool, x: CInt, y: CInt, width: CInt, height: CInt) {
        gtk_paint_arrow(cast(style.ptr), cast(cr.ptr), state_type, shadow_type, cast(widget_ptr), detail, arrow_type, gboolean(fill ? 1 : 0), gint(x), gint(y), gint(width), gint(height))
    
    }

    /// Draws a box on `cr` with the given parameters.
    ///
    /// **paint_box is deprecated:**
    /// Use gtk_render_frame() and gtk_render_background() instead
    @available(*, deprecated) func paintBox(style: StyleProtocol, cr: cairo.ContextProtocol, stateType state_type: StateType, shadowType shadow_type: ShadowType, detail: UnsafePointer<gchar>, x: CInt, y: CInt, width: CInt, height: CInt) {
        gtk_paint_box(cast(style.ptr), cast(cr.ptr), state_type, shadow_type, cast(widget_ptr), detail, gint(x), gint(y), gint(width), gint(height))
    
    }

    /// Draws a box in `cr` using the given style and state and shadow type,
    /// leaving a gap in one side.
    ///
    /// **paint_box_gap is deprecated:**
    /// Use gtk_render_frame_gap() instead
    @available(*, deprecated) func paintBoxGap(style: StyleProtocol, cr: cairo.ContextProtocol, stateType state_type: StateType, shadowType shadow_type: ShadowType, detail: UnsafePointer<gchar>, x: CInt, y: CInt, width: CInt, height: CInt, gapSide gap_side: PositionType, gapX gap_x: CInt, gapWidth gap_width: CInt) {
        gtk_paint_box_gap(cast(style.ptr), cast(cr.ptr), state_type, shadow_type, cast(widget_ptr), detail, gint(x), gint(y), gint(width), gint(height), gap_side, gint(gap_x), gint(gap_width))
    
    }

    /// Draws a check button indicator in the given rectangle on `cr` with
    /// the given parameters.
    ///
    /// **paint_check is deprecated:**
    /// Use gtk_render_check() instead
    @available(*, deprecated) func paintCheck(style: StyleProtocol, cr: cairo.ContextProtocol, stateType state_type: StateType, shadowType shadow_type: ShadowType, detail: UnsafePointer<gchar>, x: CInt, y: CInt, width: CInt, height: CInt) {
        gtk_paint_check(cast(style.ptr), cast(cr.ptr), state_type, shadow_type, cast(widget_ptr), detail, gint(x), gint(y), gint(width), gint(height))
    
    }

    /// Draws a diamond in the given rectangle on `window` using the given
    /// parameters.
    ///
    /// **paint_diamond is deprecated:**
    /// Use cairo instead
    @available(*, deprecated) func paintDiamond(style: StyleProtocol, cr: cairo.ContextProtocol, stateType state_type: StateType, shadowType shadow_type: ShadowType, detail: UnsafePointer<gchar>, x: CInt, y: CInt, width: CInt, height: CInt) {
        gtk_paint_diamond(cast(style.ptr), cast(cr.ptr), state_type, shadow_type, cast(widget_ptr), detail, gint(x), gint(y), gint(width), gint(height))
    
    }

    /// Draws an expander as used in `GtkTreeView`. `x` and `y` specify the
    /// center the expander. The size of the expander is determined by the
    /// “expander-size” style property of `widget`.  (If widget is not
    /// specified or doesn’t have an “expander-size” property, an
    /// unspecified default size will be used, since the caller doesn't
    /// have sufficient information to position the expander, this is
    /// likely not useful.) The expander is expander_size pixels tall
    /// in the collapsed position and expander_size pixels wide in the
    /// expanded position.
    ///
    /// **paint_expander is deprecated:**
    /// Use gtk_render_expander() instead
    @available(*, deprecated) func paintExpander(style: StyleProtocol, cr: cairo.ContextProtocol, stateType state_type: StateType, detail: UnsafePointer<gchar>, x: CInt, y: CInt, expanderStyle expander_style: ExpanderStyle) {
        gtk_paint_expander(cast(style.ptr), cast(cr.ptr), state_type, cast(widget_ptr), detail, gint(x), gint(y), expander_style)
    
    }

    /// Draws an extension, i.e. a notebook tab.
    ///
    /// **paint_extension is deprecated:**
    /// Use gtk_render_extension() instead
    @available(*, deprecated) func paintExtension(style: StyleProtocol, cr: cairo.ContextProtocol, stateType state_type: StateType, shadowType shadow_type: ShadowType, detail: UnsafePointer<gchar>, x: CInt, y: CInt, width: CInt, height: CInt, gapSide gap_side: PositionType) {
        gtk_paint_extension(cast(style.ptr), cast(cr.ptr), state_type, shadow_type, cast(widget_ptr), detail, gint(x), gint(y), gint(width), gint(height), gap_side)
    
    }

    /// Draws a flat box on `cr` with the given parameters.
    ///
    /// **paint_flat_box is deprecated:**
    /// Use gtk_render_frame() and gtk_render_background() instead
    @available(*, deprecated) func paintFlatBox(style: StyleProtocol, cr: cairo.ContextProtocol, stateType state_type: StateType, shadowType shadow_type: ShadowType, detail: UnsafePointer<gchar>, x: CInt, y: CInt, width: CInt, height: CInt) {
        gtk_paint_flat_box(cast(style.ptr), cast(cr.ptr), state_type, shadow_type, cast(widget_ptr), detail, gint(x), gint(y), gint(width), gint(height))
    
    }

    /// Draws a focus indicator around the given rectangle on `cr` using the
    /// given style.
    ///
    /// **paint_focus is deprecated:**
    /// Use gtk_render_focus() instead
    @available(*, deprecated) func paintFocus(style: StyleProtocol, cr: cairo.ContextProtocol, stateType state_type: StateType, detail: UnsafePointer<gchar>, x: CInt, y: CInt, width: CInt, height: CInt) {
        gtk_paint_focus(cast(style.ptr), cast(cr.ptr), state_type, cast(widget_ptr), detail, gint(x), gint(y), gint(width), gint(height))
    
    }

    /// Draws a handle as used in `GtkHandleBox` and `GtkPaned`.
    ///
    /// **paint_handle is deprecated:**
    /// Use gtk_render_handle() instead
    @available(*, deprecated) func paintHandle(style: StyleProtocol, cr: cairo.ContextProtocol, stateType state_type: StateType, shadowType shadow_type: ShadowType, detail: UnsafePointer<gchar>, x: CInt, y: CInt, width: CInt, height: CInt, orientation: Orientation) {
        gtk_paint_handle(cast(style.ptr), cast(cr.ptr), state_type, shadow_type, cast(widget_ptr), detail, gint(x), gint(y), gint(width), gint(height), orientation)
    
    }

    /// Draws a horizontal line from (`x1`, `y`) to (`x2`, `y`) in `cr`
    /// using the given style and state.
    ///
    /// **paint_hline is deprecated:**
    /// Use gtk_render_line() instead
    @available(*, deprecated) func paintHline(style: StyleProtocol, cr: cairo.ContextProtocol, stateType state_type: StateType, detail: UnsafePointer<gchar>, x1: CInt, x2: CInt, y: CInt) {
        gtk_paint_hline(cast(style.ptr), cast(cr.ptr), state_type, cast(widget_ptr), detail, gint(x1), gint(x2), gint(y))
    
    }

    /// Draws a layout on `cr` using the given parameters.
    ///
    /// **paint_layout is deprecated:**
    /// Use gtk_render_layout() instead
    @available(*, deprecated) func paintLayout(style: StyleProtocol, cr: cairo.ContextProtocol, stateType state_type: StateType, useText use_text: Bool, detail: UnsafePointer<gchar>, x: CInt, y: CInt, layout: LayoutProtocol) {
        gtk_paint_layout(cast(style.ptr), cast(cr.ptr), state_type, gboolean(use_text ? 1 : 0), cast(widget_ptr), detail, gint(x), gint(y), cast(layout.ptr))
    
    }

    /// Draws a radio button indicator in the given rectangle on `cr` with
    /// the given parameters.
    ///
    /// **paint_option is deprecated:**
    /// Use gtk_render_option() instead
    @available(*, deprecated) func paintOption(style: StyleProtocol, cr: cairo.ContextProtocol, stateType state_type: StateType, shadowType shadow_type: ShadowType, detail: UnsafePointer<gchar>, x: CInt, y: CInt, width: CInt, height: CInt) {
        gtk_paint_option(cast(style.ptr), cast(cr.ptr), state_type, shadow_type, cast(widget_ptr), detail, gint(x), gint(y), gint(width), gint(height))
    
    }

    /// Draws a resize grip in the given rectangle on `cr` using the given
    /// parameters.
    ///
    /// **paint_resize_grip is deprecated:**
    /// Use gtk_render_handle() instead
    @available(*, deprecated) func paintResizeGrip(style: StyleProtocol, cr: cairo.ContextProtocol, stateType state_type: StateType, detail: UnsafePointer<gchar>, edge: Gdk.WindowEdge, x: CInt, y: CInt, width: CInt, height: CInt) {
        gtk_paint_resize_grip(cast(style.ptr), cast(cr.ptr), state_type, cast(widget_ptr), detail, edge, gint(x), gint(y), gint(width), gint(height))
    
    }

    /// Draws a shadow around the given rectangle in `cr`
    /// using the given style and state and shadow type.
    ///
    /// **paint_shadow is deprecated:**
    /// Use gtk_render_frame() instead
    @available(*, deprecated) func paintShadow(style: StyleProtocol, cr: cairo.ContextProtocol, stateType state_type: StateType, shadowType shadow_type: ShadowType, detail: UnsafePointer<gchar>, x: CInt, y: CInt, width: CInt, height: CInt) {
        gtk_paint_shadow(cast(style.ptr), cast(cr.ptr), state_type, shadow_type, cast(widget_ptr), detail, gint(x), gint(y), gint(width), gint(height))
    
    }

    /// Draws a shadow around the given rectangle in `cr`
    /// using the given style and state and shadow type, leaving a
    /// gap in one side.
    ///
    /// **paint_shadow_gap is deprecated:**
    /// Use gtk_render_frame_gap() instead
    @available(*, deprecated) func paintShadowGap(style: StyleProtocol, cr: cairo.ContextProtocol, stateType state_type: StateType, shadowType shadow_type: ShadowType, detail: UnsafePointer<gchar>, x: CInt, y: CInt, width: CInt, height: CInt, gapSide gap_side: PositionType, gapX gap_x: CInt, gapWidth gap_width: CInt) {
        gtk_paint_shadow_gap(cast(style.ptr), cast(cr.ptr), state_type, shadow_type, cast(widget_ptr), detail, gint(x), gint(y), gint(width), gint(height), gap_side, gint(gap_x), gint(gap_width))
    
    }

    /// Draws a slider in the given rectangle on `cr` using the
    /// given style and orientation.
    ///
    /// **paint_slider is deprecated:**
    /// Use gtk_render_slider() instead
    @available(*, deprecated) func paintSlider(style: StyleProtocol, cr: cairo.ContextProtocol, stateType state_type: StateType, shadowType shadow_type: ShadowType, detail: UnsafePointer<gchar>, x: CInt, y: CInt, width: CInt, height: CInt, orientation: Orientation) {
        gtk_paint_slider(cast(style.ptr), cast(cr.ptr), state_type, shadow_type, cast(widget_ptr), detail, gint(x), gint(y), gint(width), gint(height), orientation)
    
    }

    /// Draws a spinner on `window` using the given parameters.
    ///
    /// **paint_spinner is deprecated:**
    /// Use gtk_render_icon() and the #GtkStyleContext
    ///   you are drawing instead
    @available(*, deprecated) func paintSpinner(style: StyleProtocol, cr: cairo.ContextProtocol, stateType state_type: StateType, detail: UnsafePointer<gchar>, step: CUnsignedInt, x: CInt, y: CInt, width: CInt, height: CInt) {
        gtk_paint_spinner(cast(style.ptr), cast(cr.ptr), state_type, cast(widget_ptr), detail, guint(step), gint(x), gint(y), gint(width), gint(height))
    
    }

    /// Draws an option menu tab (i.e. the up and down pointing arrows)
    /// in the given rectangle on `cr` using the given parameters.
    ///
    /// **paint_tab is deprecated:**
    /// Use cairo instead
    @available(*, deprecated) func paintTab(style: StyleProtocol, cr: cairo.ContextProtocol, stateType state_type: StateType, shadowType shadow_type: ShadowType, detail: UnsafePointer<gchar>, x: CInt, y: CInt, width: CInt, height: CInt) {
        gtk_paint_tab(cast(style.ptr), cast(cr.ptr), state_type, shadow_type, cast(widget_ptr), detail, gint(x), gint(y), gint(width), gint(height))
    
    }

    /// Draws a vertical line from (`x`, `y1_`) to (`x`, `y2_`) in `cr`
    /// using the given style and state.
    ///
    /// **paint_vline is deprecated:**
    /// Use gtk_render_line() instead
    @available(*, deprecated) func paintVline(style: StyleProtocol, cr: cairo.ContextProtocol, stateType state_type: StateType, detail: UnsafePointer<gchar>, y1_: CInt, y2_: CInt, x: CInt) {
        gtk_paint_vline(cast(style.ptr), cast(cr.ptr), state_type, cast(widget_ptr), detail, gint(y1_), gint(y2_), gint(x))
    
    }

    /// Sends an event to a widget, propagating the event to parent widgets
    /// if the event remains unhandled.
    /// 
    /// Events received by GTK+ from GDK normally begin in `gtk_main_do_event()`.
    /// Depending on the type of event, existence of modal dialogs, grabs, etc.,
    /// the event may be propagated; if so, this function is used.
    /// 
    /// `gtk_propagate_event()` calls `gtk_widget_event()` on each widget it
    /// decides to send the event to. So `gtk_widget_event()` is the lowest-level
    /// function; it simply emits the `GtkWidget::event` and possibly an
    /// event-specific signal on a widget. `gtk_propagate_event()` is a bit
    /// higher-level, and `gtk_main_do_event()` is the highest level.
    /// 
    /// All that said, you most likely don’t want to use any of these
    /// functions; synthesizing events is rarely needed. There are almost
    /// certainly better ways to achieve your goals. For example, use
    /// `gdk_window_invalidate_rect()` or `gtk_widget_queue_draw()` instead
    /// of making up expose events.
    func propagate(event: UnsafeMutablePointer<GdkEvent>) {
        gtk_propagate_event(cast(widget_ptr), cast(event))
    
    }

    /// Finds all matching RC styles for a given widget,
    /// composites them together, and then creates a
    /// `GtkStyle` representing the composite appearance.
    /// (GTK+ actually keeps a cache of previously
    /// created styles, so a new style may not be
    /// created.)
    ///
    /// **rc_get_style is deprecated:**
    /// Use #GtkStyleContext instead
    @available(*, deprecated) func rcGetStyle() -> UnsafeMutablePointer<GtkStyle>! {
        let rv = gtk_rc_get_style(cast(widget_ptr))
        return cast(rv)
    }

    /// Appends a specified target to the list of supported targets for a
    /// given widget and selection.
    func selectionAddTarget(selection: Gdk.Atom, target: Gdk.Atom, info: CUnsignedInt) {
        gtk_selection_add_target(cast(widget_ptr), cast(selection.ptr), cast(target.ptr), guint(info))
    
    }

    /// Prepends a table of targets to the list of supported targets
    /// for a given widget and selection.
    func selectionAddTargets(selection: Gdk.Atom, targets: UnsafePointer<GtkTargetEntry>, ntargets: CUnsignedInt) {
        gtk_selection_add_targets(cast(widget_ptr), cast(selection.ptr), cast(targets), guint(ntargets))
    
    }

    /// Remove all targets registered for the given selection for the
    /// widget.
    func selectionClearTargets(selection: Gdk.Atom) {
        gtk_selection_clear_targets(cast(widget_ptr), cast(selection.ptr))
    
    }

    /// Requests the contents of a selection. When received,
    /// a “selection-received” signal will be generated.
    func selectionConvert(selection: Gdk.Atom, target: Gdk.Atom, time_: UInt32) -> Bool {
        let rv = gtk_selection_convert(cast(widget_ptr), cast(selection.ptr), cast(target.ptr), guint32(time_))
        return Bool(rv != 0)
    }

    /// Claims ownership of a given selection for a particular widget,
    /// or, if `widget` is `nil`, release ownership of the selection.
    func selectionOwnerSet(selection: Gdk.Atom, time_: UInt32) -> Bool {
        let rv = gtk_selection_owner_set(cast(widget_ptr), cast(selection.ptr), guint32(time_))
        return Bool(rv != 0)
    }

    /// Claim ownership of a given selection for a particular widget, or,
    /// if `widget` is `nil`, release ownership of the selection.
    func selectionOwnerSetFor(display: DisplayProtocol, selection: Gdk.Atom, time_: UInt32) -> Bool {
        let rv = gtk_selection_owner_set_for_display(cast(display.ptr), cast(widget_ptr), cast(selection.ptr), guint32(time_))
        return Bool(rv != 0)
    }

    /// Removes all handlers and unsets ownership of all
    /// selections for a widget. Called when widget is being
    /// destroyed. This function will not generally be
    /// called by applications.
    func selectionRemoveAll() {
        gtk_selection_remove_all(cast(widget_ptr))
    
    }

    /// This function will search `widget` and all its descendants for a GtkLabel
    /// widget with a text string matching `label_pattern`.
    /// The `label_pattern` may contain asterisks “*” and question marks “?” as
    /// placeholders, `g_pattern_match()` is used for the matching.
    /// Note that locales other than "C“ tend to alter (translate” label strings,
    /// so this function is genrally only useful in test programs with
    /// predetermined locales, see `gtk_test_init()` for more details.
    func testFindLabel(labelPattern label_pattern: UnsafePointer<gchar>) -> UnsafeMutablePointer<GtkWidget>! {
        let rv = gtk_test_find_label(cast(widget_ptr), label_pattern)
        return cast(rv)
    }

    /// This function will search siblings of `base_widget` and siblings of its
    /// ancestors for all widgets matching `widget_type`.
    /// Of the matching widgets, the one that is geometrically closest to
    /// `base_widget` will be returned.
    /// The general purpose of this function is to find the most likely “action”
    /// widget, relative to another labeling widget. Such as finding a
    /// button or text entry widget, given its corresponding label widget.
    func testFindSibling(widgetType widget_type: GType) -> UnsafeMutablePointer<GtkWidget>! {
        let rv = gtk_test_find_sibling(cast(widget_ptr), widget_type)
        return cast(rv)
    }

    /// This function will search the descendants of `widget` for a widget
    /// of type `widget_type` that has a label matching `label_pattern` next
    /// to it. This is most useful for automated GUI testing, e.g. to find
    /// the “OK” button in a dialog and synthesize clicks on it.
    /// However see `gtk_test_find_label()`, `gtk_test_find_sibling()` and
    /// `gtk_test_widget_click()` for possible caveats involving the search of
    /// such widgets and synthesizing widget events.
    func testFindWidget(labelPattern label_pattern: UnsafePointer<gchar>, widgetType widget_type: GType) -> UnsafeMutablePointer<GtkWidget>! {
        let rv = gtk_test_find_widget(cast(widget_ptr), label_pattern, widget_type)
        return cast(rv)
    }

    /// Retrive the literal adjustment value for GtkRange based
    /// widgets and spin buttons. Note that the value returned by
    /// this function is anything between the lower and upper bounds
    /// of the adjustment belonging to `widget`, and is not a percentage
    /// as passed in to `gtk_test_slider_set_perc()`.
    ///
    /// **test_slider_get_value is deprecated:**
    /// This testing infrastructure is phased out in favor of reftests.
    @available(*, deprecated) func testSliderGetValue() -> CDouble {
        let rv = gtk_test_slider_get_value(cast(widget_ptr))
        return rv
    }

    /// This function will adjust the slider position of all GtkRange
    /// based widgets, such as scrollbars or scales, it’ll also adjust
    /// spin buttons. The adjustment value of these widgets is set to
    /// a value between the lower and upper limits, according to the
    /// `percentage` argument.
    ///
    /// **test_slider_set_perc is deprecated:**
    /// This testing infrastructure is phased out in favor of reftests.
    @available(*, deprecated) func testSliderSetPerc(percentage: gdouble) {
        gtk_test_slider_set_perc(cast(widget_ptr), percentage)
    
    }

    /// Retrive the text string of `widget` if it is a GtkLabel,
    /// GtkEditable (entry and text widgets) or GtkTextView.
    ///
    /// **test_text_get is deprecated:**
    /// This testing infrastructure is phased out in favor of reftests.
    @available(*, deprecated) func testTextGet() -> String! {
        let rv = gtk_test_text_get(cast(widget_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Set the text string of `widget` to `string` if it is a GtkLabel,
    /// GtkEditable (entry and text widgets) or GtkTextView.
    ///
    /// **test_text_set is deprecated:**
    /// This testing infrastructure is phased out in favor of reftests.
    @available(*, deprecated) func testTextSet(string: UnsafePointer<gchar>) {
        gtk_test_text_set(cast(widget_ptr), string)
    
    }

    /// This function will generate a `button` click (button press and button
    /// release event) in the middle of the first GdkWindow found that belongs
    /// to `widget`.
    /// For windowless widgets like `GtkButton` (which returns `false` from
    /// `gtk_widget_get_has_window()`), this will often be an
    /// input-only event window. For other widgets, this is usually widget->window.
    /// Certain caveats should be considered when using this function, in
    /// particular because the mouse pointer is warped to the button click
    /// location, see `gdk_test_simulate_button()` for details.
    ///
    /// **test_widget_click is deprecated:**
    /// This testing infrastructure is phased out in favor of reftests.
    @available(*, deprecated) func testWidgetClick(button: CUnsignedInt, modifiers: Gdk.ModifierType) -> Bool {
        let rv = gtk_test_widget_click(cast(widget_ptr), guint(button), modifiers)
        return Bool(rv != 0)
    }

    /// This function will generate keyboard press and release events in
    /// the middle of the first GdkWindow found that belongs to `widget`.
    /// For windowless widgets like `GtkButton` (which returns `false` from
    /// `gtk_widget_get_has_window()`), this will often be an
    /// input-only event window. For other widgets, this is usually widget->window.
    /// Certain caveats should be considered when using this function, in
    /// particular because the mouse pointer is warped to the key press
    /// location, see `gdk_test_simulate_key()` for details.
    func testWidgetSendKey(keyval: CUnsignedInt, modifiers: Gdk.ModifierType) -> Bool {
        let rv = gtk_test_widget_send_key(cast(widget_ptr), guint(keyval), modifiers)
        return Bool(rv != 0)
    }

    /// Enters the main loop and waits for `widget` to be “drawn”. In this
    /// context that means it waits for the frame clock of `widget` to have
    /// run a full styling, layout and drawing cycle.
    /// 
    /// This function is intended to be used for syncing with actions that
    /// depend on `widget` relayouting or on interaction with the display
    /// server.
    func testWidgetWaitForDraw() {
        gtk_test_widget_wait_for_draw(cast(widget_ptr))
    
    }
    /// Returns the accessible object that describes the widget to an
    /// assistive technology.
    /// 
    /// If accessibility support is not available, this `AtkObject`
    /// instance may be a no-op. Likewise, if no class-specific `AtkObject`
    /// implementation is available for the widget instance in question,
    /// it will inherit an `AtkObject` implementation from the first ancestor
    /// class for which such an implementation is defined.
    /// 
    /// The documentation of the
    /// [ATK](http://developer.gnome.org/atk/stable/)
    /// library contains more information about accessible objects and their uses.
    var accessible: UnsafeMutablePointer<AtkObject>! {
        /// Returns the accessible object that describes the widget to an
        /// assistive technology.
        /// 
        /// If accessibility support is not available, this `AtkObject`
        /// instance may be a no-op. Likewise, if no class-specific `AtkObject`
        /// implementation is available for the widget instance in question,
        /// it will inherit an `AtkObject` implementation from the first ancestor
        /// class for which such an implementation is defined.
        /// 
        /// The documentation of the
        /// [ATK](http://developer.gnome.org/atk/stable/)
        /// library contains more information about accessible objects and their uses.
        get {
            let rv = gtk_widget_get_accessible(cast(widget_ptr))
            return cast(rv)
        }
    }

    /// Returns the baseline that has currently been allocated to `widget`.
    /// This function is intended to be used when implementing handlers
    /// for the `GtkWidget::draw` function, and when allocating child
    /// widgets in `GtkWidget::size_allocate`.
    var allocatedBaseline: CInt {
        /// Returns the baseline that has currently been allocated to `widget`.
        /// This function is intended to be used when implementing handlers
        /// for the `GtkWidget::draw` function, and when allocating child
        /// widgets in `GtkWidget::size_allocate`.
        get {
            let rv = gtk_widget_get_allocated_baseline(cast(widget_ptr))
            return rv
        }
    }

    /// Returns the height that has currently been allocated to `widget`.
    /// This function is intended to be used when implementing handlers
    /// for the `GtkWidget::draw` function.
    var allocatedHeight: CInt {
        /// Returns the height that has currently been allocated to `widget`.
        /// This function is intended to be used when implementing handlers
        /// for the `GtkWidget::draw` function.
        get {
            let rv = gtk_widget_get_allocated_height(cast(widget_ptr))
            return rv
        }
    }

    /// Returns the width that has currently been allocated to `widget`.
    /// This function is intended to be used when implementing handlers
    /// for the `GtkWidget::draw` function.
    var allocatedWidth: CInt {
        /// Returns the width that has currently been allocated to `widget`.
        /// This function is intended to be used when implementing handlers
        /// for the `GtkWidget::draw` function.
        get {
            let rv = gtk_widget_get_allocated_width(cast(widget_ptr))
            return rv
        }
    }

    /// Determines whether the application intends to draw on the widget in
    /// an `GtkWidget::draw` handler.
    /// 
    /// See `gtk_widget_set_app_paintable()`
    var appPaintable: Bool {
        /// Determines whether the application intends to draw on the widget in
        /// an `GtkWidget::draw` handler.
        /// 
        /// See `gtk_widget_set_app_paintable()`
        get {
            let rv = gtk_widget_get_app_paintable(cast(widget_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether the application intends to draw on the widget in
        /// an `GtkWidget::draw` handler.
        /// 
        /// This is a hint to the widget and does not affect the behavior of
        /// the GTK+ core; many widgets ignore this flag entirely. For widgets
        /// that do pay attention to the flag, such as `GtkEventBox` and `GtkWindow`,
        /// the effect is to suppress default themed drawing of the widget's
        /// background. (Children of the widget will still be drawn.) The application
        /// is then entirely responsible for drawing the widget background.
        /// 
        /// Note that the background is still drawn when the widget is mapped.
        nonmutating set {
            gtk_widget_set_app_paintable(cast(widget_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Determines whether `widget` can be a default widget. See
    /// `gtk_widget_set_can_default()`.
    var canDefault: Bool {
        /// Determines whether `widget` can be a default widget. See
        /// `gtk_widget_set_can_default()`.
        get {
            let rv = gtk_widget_get_can_default(cast(widget_ptr))
            return Bool(rv != 0)
        }
        /// Specifies whether `widget` can be a default widget. See
        /// `gtk_widget_grab_default()` for details about the meaning of
        /// “default”.
        nonmutating set {
            gtk_widget_set_can_default(cast(widget_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Determines whether `widget` can own the input focus. See
    /// `gtk_widget_set_can_focus()`.
    var canFocus: Bool {
        /// Determines whether `widget` can own the input focus. See
        /// `gtk_widget_set_can_focus()`.
        get {
            let rv = gtk_widget_get_can_focus(cast(widget_ptr))
            return Bool(rv != 0)
        }
        /// Specifies whether `widget` can own the input focus. See
        /// `gtk_widget_grab_focus()` for actually setting the input focus on a
        /// widget.
        nonmutating set {
            gtk_widget_set_can_focus(cast(widget_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Gets the value set with `gtk_widget_set_child_visible()`.
    /// If you feel a need to use this function, your code probably
    /// needs reorganization.
    /// 
    /// This function is only useful for container implementations and
    /// never should be called by an application.
    var childVisible: Bool {
        /// Gets the value set with `gtk_widget_set_child_visible()`.
        /// If you feel a need to use this function, your code probably
        /// needs reorganization.
        /// 
        /// This function is only useful for container implementations and
        /// never should be called by an application.
        get {
            let rv = gtk_widget_get_child_visible(cast(widget_ptr))
            return Bool(rv != 0)
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
            gtk_widget_set_child_visible(cast(widget_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Obtains the composite name of a widget.
    ///
    /// **get_composite_name is deprecated:**
    /// Use gtk_widget_class_set_template(), or don’t use this API at all.
    var compositeName: String! {
        /// Obtains the composite name of a widget.
        ///
        /// **get_composite_name is deprecated:**
        /// Use gtk_widget_class_set_template(), or don’t use this API at all.
        @available(*, deprecated) get {
            let rv = gtk_widget_get_composite_name(cast(widget_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Sets a widgets composite name. The widget must be
        /// a composite child of its parent; see `gtk_widget_push_composite_child()`.
        ///
        /// **set_composite_name is deprecated:**
        /// Use gtk_widget_class_set_template(), or don’t use this API at all.
        @available(*, deprecated) nonmutating set {
            gtk_widget_set_composite_name(cast(widget_ptr), newValue)
        }
    }

    /// Gets the reading direction for a particular widget. See
    /// `gtk_widget_set_direction()`.
    var direction: GtkTextDirection {
        /// Gets the reading direction for a particular widget. See
        /// `gtk_widget_set_direction()`.
        get {
            let rv = gtk_widget_get_direction(cast(widget_ptr))
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
            gtk_widget_set_direction(cast(widget_ptr), newValue)
        }
    }

    /// Get the `GdkDisplay` for the toplevel window associated with
    /// this widget. This function can only be called after the widget
    /// has been added to a widget hierarchy with a `GtkWindow` at the top.
    /// 
    /// In general, you should only create display specific
    /// resources when a widget has been realized, and you should
    /// free those resources when the widget is unrealized.
    var display: UnsafeMutablePointer<GdkDisplay>! {
        /// Get the `GdkDisplay` for the toplevel window associated with
        /// this widget. This function can only be called after the widget
        /// has been added to a widget hierarchy with a `GtkWindow` at the top.
        /// 
        /// In general, you should only create display specific
        /// resources when a widget has been realized, and you should
        /// free those resources when the widget is unrealized.
        get {
            let rv = gtk_widget_get_display(cast(widget_ptr))
            return cast(rv)
        }
    }

    /// Determines whether the widget is double buffered.
    /// 
    /// See `gtk_widget_set_double_buffered()`
    @available(*, deprecated) var doubleBuffered: Bool {
        /// Determines whether the widget is double buffered.
        /// 
        /// See `gtk_widget_set_double_buffered()`
        get {
            let rv = gtk_widget_get_double_buffered(cast(widget_ptr))
            return Bool(rv != 0)
        }
        /// Widgets are double buffered by default; you can use this function
        /// to turn off the buffering. “Double buffered” simply means that
        /// `gdk_window_begin_draw_frame()` and `gdk_window_end_draw_frame()` are called
        /// automatically around expose events sent to the
        /// widget. `gdk_window_begin_draw_frame()` diverts all drawing to a widget's
        /// window to an offscreen buffer, and `gdk_window_end_draw_frame()` draws the
        /// buffer to the screen. The result is that users see the window
        /// update in one smooth step, and don’t see individual graphics
        /// primitives being rendered.
        /// 
        /// In very simple terms, double buffered widgets don’t flicker,
        /// so you would only use this function to turn off double buffering
        /// if you had special needs and really knew what you were doing.
        /// 
        /// Note: if you turn off double-buffering, you have to handle
        /// expose events, since even the clearing to the background color or
        /// pixmap will not happen automatically (as it is done in
        /// `gdk_window_begin_draw_frame()`).
        /// 
        /// In 3.10 GTK and GDK have been restructured for translucent drawing. Since
        /// then expose events for double-buffered widgets are culled into a single
        /// event to the toplevel GDK window. If you now unset double buffering, you
        /// will cause a separate rendering pass for every widget. This will likely
        /// cause rendering problems - in particular related to stacking - and usually
        /// increases rendering times significantly.
        ///
        /// **set_double_buffered is deprecated:**
        /// This function does not work under non-X11 backends or with
        /// non-native windows.
        /// It should not be used in newly written code.
        @available(*, deprecated) nonmutating set {
            gtk_widget_set_double_buffered(cast(widget_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    var events: CInt {
        /// Returns the event mask (see `GdkEventMask`) for the widget. These are the
        /// events that the widget will receive.
        /// 
        /// Note: Internally, the widget event mask will be the logical OR of the event
        /// mask set through `gtk_widget_set_events()` or `gtk_widget_add_events()`, and the
        /// event mask necessary to cater for every `GtkEventController` created for the
        /// widget.
        get {
            let rv = gtk_widget_get_events(cast(widget_ptr))
            return CInt(rv)
        }
        /// Sets the event mask (see `GdkEventMask`) for a widget. The event
        /// mask determines which events a widget will receive. Keep in mind
        /// that different widgets have different default event masks, and by
        /// changing the event mask you may disrupt a widget’s functionality,
        /// so be careful. This function must be called while a widget is
        /// unrealized. Consider `gtk_widget_add_events()` for widgets that are
        /// already realized, or if you want to preserve the existing event
        /// mask. This function can’t be used with widgets that have no window.
        /// (See `gtk_widget_get_has_window()`).  To get events on those widgets,
        /// place them inside a `GtkEventBox` and receive events on the event
        /// box.
        nonmutating set {
            gtk_widget_set_events(cast(widget_ptr), gint(newValue))
        }
    }

    /// Returns whether the widget should grab focus when it is clicked with the mouse.
    /// See `gtk_widget_set_focus_on_click()`.
    @available(*, deprecated) var focusOnClick: Bool {
        /// Returns whether the widget should grab focus when it is clicked with the mouse.
        /// See `gtk_widget_set_focus_on_click()`.
        get {
            let rv = gtk_widget_get_focus_on_click(cast(widget_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether the widget should grab focus when it is clicked with the mouse.
        /// Making mouse clicks not grab focus is useful in places like toolbars where
        /// you don’t want the keyboard focus removed from the main area of the
        /// application.
        nonmutating set {
            gtk_widget_set_focus_on_click(cast(widget_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Gets the font map that has been set with `gtk_widget_set_font_map()`.
    var fontMap: UnsafeMutablePointer<PangoFontMap>! {
        /// Gets the font map that has been set with `gtk_widget_set_font_map()`.
        get {
            let rv = gtk_widget_get_font_map(cast(widget_ptr))
            return cast(rv)
        }
        /// Sets the font map to use for Pango rendering. When not set, the widget
        /// will inherit the font map from its parent.
        nonmutating set {
            gtk_widget_set_font_map(cast(widget_ptr), cast(newValue))
        }
    }

    /// Returns the `cairo_font_options_t` used for Pango rendering. When not set,
    /// the defaults font options for the `GdkScreen` will be used.
    var fontOptions: UnsafePointer<cairo_font_options_t>! {
        /// Returns the `cairo_font_options_t` used for Pango rendering. When not set,
        /// the defaults font options for the `GdkScreen` will be used.
        get {
            let rv = gtk_widget_get_font_options(cast(widget_ptr))
            return cast(rv)
        }
        /// Sets the `cairo_font_options_t` used for Pango rendering in this widget.
        /// When not set, the default font options for the `GdkScreen` will be used.
        nonmutating set {
            gtk_widget_set_font_options(cast(widget_ptr), cast(newValue))
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
    var frameClock: UnsafeMutablePointer<GdkFrameClock>! {
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
            let rv = gtk_widget_get_frame_clock(cast(widget_ptr))
            return cast(rv)
        }
    }

    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    var halign: GtkAlign {
        /// Gets the value of the `GtkWidget:halign` property.
        /// 
        /// For backwards compatibility reasons this method will never return
        /// `GTK_ALIGN_BASELINE`, but instead it will convert it to
        /// `GTK_ALIGN_FILL`. Baselines are not supported for horizontal
        /// alignment.
        get {
            let rv = gtk_widget_get_halign(cast(widget_ptr))
            return rv
        }
        /// Sets the horizontal alignment of `widget`.
        /// See the `GtkWidget:halign` property.
        nonmutating set {
            gtk_widget_set_halign(cast(widget_ptr), newValue)
        }
    }

    /// Returns the current value of the has-tooltip property.  See
    /// `GtkWidget:has`-tooltip for more information.
    var hasTooltip: Bool {
        /// Returns the current value of the has-tooltip property.  See
        /// `GtkWidget:has`-tooltip for more information.
        get {
            let rv = gtk_widget_get_has_tooltip(cast(widget_ptr))
            return Bool(rv != 0)
        }
        /// Sets the has-tooltip property on `widget` to `has_tooltip`.  See
        /// `GtkWidget:has`-tooltip for more information.
        nonmutating set {
            gtk_widget_set_has_tooltip(cast(widget_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Determines whether `widget` has a `GdkWindow` of its own. See
    /// `gtk_widget_set_has_window()`.
    var hasWindow: Bool {
        /// Determines whether `widget` has a `GdkWindow` of its own. See
        /// `gtk_widget_set_has_window()`.
        get {
            let rv = gtk_widget_get_has_window(cast(widget_ptr))
            return Bool(rv != 0)
        }
        /// Specifies whether `widget` has a `GdkWindow` of its own. Note that
        /// all realized widgets have a non-`nil` “window” pointer
        /// (`gtk_widget_get_window()` never returns a `nil` window when a widget
        /// is realized), but for many of them it’s actually the `GdkWindow` of
        /// one of its parent widgets. Widgets that do not create a `window` for
        /// themselves in `GtkWidget::realize` must announce this by
        /// calling this function with `has_window` = `false`.
        /// 
        /// This function should only be called by widget implementations,
        /// and they should call it in their `init()` function.
        nonmutating set {
            gtk_widget_set_has_window(cast(widget_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    var hexpand: Bool {
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
            let rv = gtk_widget_get_hexpand(cast(widget_ptr))
            return Bool(rv != 0)
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
            gtk_widget_set_hexpand(cast(widget_ptr), gboolean(newValue ? 1 : 0))
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
    var hexpandSet: Bool {
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
            let rv = gtk_widget_get_hexpand_set(cast(widget_ptr))
            return Bool(rv != 0)
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
            gtk_widget_set_hexpand_set(cast(widget_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Whether `widget` can rely on having its alpha channel
    /// drawn correctly. On X11 this function returns whether a
    /// compositing manager is running for `widget`’s screen.
    /// 
    /// Please note that the semantics of this call will change
    /// in the future if used on a widget that has a composited
    /// window in its hierarchy (as set by `gdk_window_set_composited()`).
    ///
    /// **is_composited is deprecated:**
    /// Use gdk_screen_is_composited() instead.
    var isComposited: Bool {
        /// Whether `widget` can rely on having its alpha channel
        /// drawn correctly. On X11 this function returns whether a
        /// compositing manager is running for `widget`’s screen.
        /// 
        /// Please note that the semantics of this call will change
        /// in the future if used on a widget that has a composited
        /// window in its hierarchy (as set by `gdk_window_set_composited()`).
        ///
        /// **is_composited is deprecated:**
        /// Use gdk_screen_is_composited() instead.
        @available(*, deprecated) get {
            let rv = gtk_widget_is_composited(cast(widget_ptr))
            return Bool(rv != 0)
        }
    }

    /// Determines whether `widget` can be drawn to. A widget can be drawn
    /// to if it is mapped and visible.
    var isDrawable: Bool {
        /// Determines whether `widget` can be drawn to. A widget can be drawn
        /// to if it is mapped and visible.
        get {
            let rv = gtk_widget_is_drawable(cast(widget_ptr))
            return Bool(rv != 0)
        }
    }

    /// Determines if the widget is the focus widget within its
    /// toplevel. (This does not mean that the `GtkWidget:has`-focus property is
    /// necessarily set; `GtkWidget:has`-focus will only be set if the
    /// toplevel widget additionally has the global input focus.)
    var isFocus: Bool {
        /// Determines if the widget is the focus widget within its
        /// toplevel. (This does not mean that the `GtkWidget:has`-focus property is
        /// necessarily set; `GtkWidget:has`-focus will only be set if the
        /// toplevel widget additionally has the global input focus.)
        get {
            let rv = gtk_widget_is_focus(cast(widget_ptr))
            return Bool(rv != 0)
        }
    }

    /// Returns the widget’s effective sensitivity, which means
    /// it is sensitive itself and also its parent widget is sensitive
    var isSensitive: Bool {
        /// Returns the widget’s effective sensitivity, which means
        /// it is sensitive itself and also its parent widget is sensitive
        get {
            let rv = gtk_widget_is_sensitive(cast(widget_ptr))
            return Bool(rv != 0)
        }
    }

    /// Determines whether `widget` is a toplevel widget.
    /// 
    /// Currently only `GtkWindow` and `GtkInvisible` (and out-of-process
    /// `GtkPlugs`) are toplevel widgets. Toplevel widgets have no parent
    /// widget.
    var isToplevel: Bool {
        /// Determines whether `widget` is a toplevel widget.
        /// 
        /// Currently only `GtkWindow` and `GtkInvisible` (and out-of-process
        /// `GtkPlugs`) are toplevel widgets. Toplevel widgets have no parent
        /// widget.
        get {
            let rv = gtk_widget_is_toplevel(cast(widget_ptr))
            return Bool(rv != 0)
        }
    }

    /// Determines whether the widget and all its parents are marked as
    /// visible.
    /// 
    /// This function does not check if the widget is obscured in any way.
    /// 
    /// See also `gtk_widget_get_visible()` and `gtk_widget_set_visible()`
    var isVisible: Bool {
        /// Determines whether the widget and all its parents are marked as
        /// visible.
        /// 
        /// This function does not check if the widget is obscured in any way.
        /// 
        /// See also `gtk_widget_get_visible()` and `gtk_widget_set_visible()`
        get {
            let rv = gtk_widget_is_visible(cast(widget_ptr))
            return Bool(rv != 0)
        }
    }

    /// Whether the widget is mapped.
    var mapped: Bool {
        /// Whether the widget is mapped.
        get {
            let rv = gtk_widget_get_mapped(cast(widget_ptr))
            return Bool(rv != 0)
        }
        /// Marks the widget as being mapped.
        /// 
        /// This function should only ever be called in a derived widget's
        /// “map” or “unmap” implementation.
        nonmutating set {
            gtk_widget_set_mapped(cast(widget_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Gets the value of the `GtkWidget:margin`-bottom property.
    var marginBottom: CInt {
        /// Gets the value of the `GtkWidget:margin`-bottom property.
        get {
            let rv = gtk_widget_get_margin_bottom(cast(widget_ptr))
            return CInt(rv)
        }
        /// Sets the bottom margin of `widget`.
        /// See the `GtkWidget:margin`-bottom property.
        nonmutating set {
            gtk_widget_set_margin_bottom(cast(widget_ptr), gint(newValue))
        }
    }

    /// Gets the value of the `GtkWidget:margin`-end property.
    var marginEnd: CInt {
        /// Gets the value of the `GtkWidget:margin`-end property.
        get {
            let rv = gtk_widget_get_margin_end(cast(widget_ptr))
            return CInt(rv)
        }
        /// Sets the end margin of `widget`.
        /// See the `GtkWidget:margin`-end property.
        nonmutating set {
            gtk_widget_set_margin_end(cast(widget_ptr), gint(newValue))
        }
    }

    /// Gets the value of the `GtkWidget:margin`-left property.
    ///
    /// **get_margin_left is deprecated:**
    /// Use gtk_widget_get_margin_start() instead.
    var marginLeft: CInt {
        /// Gets the value of the `GtkWidget:margin`-left property.
        ///
        /// **get_margin_left is deprecated:**
        /// Use gtk_widget_get_margin_start() instead.
        @available(*, deprecated) get {
            let rv = gtk_widget_get_margin_left(cast(widget_ptr))
            return CInt(rv)
        }
        /// Sets the left margin of `widget`.
        /// See the `GtkWidget:margin`-left property.
        ///
        /// **set_margin_left is deprecated:**
        /// Use gtk_widget_set_margin_start() instead.
        @available(*, deprecated) nonmutating set {
            gtk_widget_set_margin_left(cast(widget_ptr), gint(newValue))
        }
    }

    /// Gets the value of the `GtkWidget:margin`-right property.
    ///
    /// **get_margin_right is deprecated:**
    /// Use gtk_widget_get_margin_end() instead.
    var marginRight: CInt {
        /// Gets the value of the `GtkWidget:margin`-right property.
        ///
        /// **get_margin_right is deprecated:**
        /// Use gtk_widget_get_margin_end() instead.
        @available(*, deprecated) get {
            let rv = gtk_widget_get_margin_right(cast(widget_ptr))
            return CInt(rv)
        }
        /// Sets the right margin of `widget`.
        /// See the `GtkWidget:margin`-right property.
        ///
        /// **set_margin_right is deprecated:**
        /// Use gtk_widget_set_margin_end() instead.
        @available(*, deprecated) nonmutating set {
            gtk_widget_set_margin_right(cast(widget_ptr), gint(newValue))
        }
    }

    /// Gets the value of the `GtkWidget:margin`-start property.
    var marginStart: CInt {
        /// Gets the value of the `GtkWidget:margin`-start property.
        get {
            let rv = gtk_widget_get_margin_start(cast(widget_ptr))
            return CInt(rv)
        }
        /// Sets the start margin of `widget`.
        /// See the `GtkWidget:margin`-start property.
        nonmutating set {
            gtk_widget_set_margin_start(cast(widget_ptr), gint(newValue))
        }
    }

    /// Gets the value of the `GtkWidget:margin`-top property.
    var marginTop: CInt {
        /// Gets the value of the `GtkWidget:margin`-top property.
        get {
            let rv = gtk_widget_get_margin_top(cast(widget_ptr))
            return CInt(rv)
        }
        /// Sets the top margin of `widget`.
        /// See the `GtkWidget:margin`-top property.
        nonmutating set {
            gtk_widget_set_margin_top(cast(widget_ptr), gint(newValue))
        }
    }

    /// Returns the current modifier style for the widget. (As set by
    /// `gtk_widget_modify_style()`.) If no style has previously set, a new
    /// `GtkRcStyle` will be created with all values unset, and set as the
    /// modifier style for the widget. If you make changes to this rc
    /// style, you must call `gtk_widget_modify_style()`, passing in the
    /// returned rc style, to make sure that your changes take effect.
    /// 
    /// Caution: passing the style back to `gtk_widget_modify_style()` will
    /// normally end up destroying it, because `gtk_widget_modify_style()` copies
    /// the passed-in style and sets the copy as the new modifier style,
    /// thus dropping any reference to the old modifier style. Add a reference
    /// to the modifier style if you want to keep it alive.
    ///
    /// **get_modifier_style is deprecated:**
    /// Use #GtkStyleContext with a custom #GtkStyleProvider instead
    var modifierStyle: UnsafeMutablePointer<GtkRcStyle>! {
        /// Returns the current modifier style for the widget. (As set by
        /// `gtk_widget_modify_style()`.) If no style has previously set, a new
        /// `GtkRcStyle` will be created with all values unset, and set as the
        /// modifier style for the widget. If you make changes to this rc
        /// style, you must call `gtk_widget_modify_style()`, passing in the
        /// returned rc style, to make sure that your changes take effect.
        /// 
        /// Caution: passing the style back to `gtk_widget_modify_style()` will
        /// normally end up destroying it, because `gtk_widget_modify_style()` copies
        /// the passed-in style and sets the copy as the new modifier style,
        /// thus dropping any reference to the old modifier style. Add a reference
        /// to the modifier style if you want to keep it alive.
        ///
        /// **get_modifier_style is deprecated:**
        /// Use #GtkStyleContext with a custom #GtkStyleProvider instead
        @available(*, deprecated) get {
            let rv = gtk_widget_get_modifier_style(cast(widget_ptr))
            return cast(rv)
        }
    }

    var name: String! {
        /// Retrieves the name of a widget. See `gtk_widget_set_name()` for the
        /// significance of widget names.
        get {
            let rv = gtk_widget_get_name(cast(widget_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
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
            gtk_widget_set_name(cast(widget_ptr), newValue)
        }
    }

    /// Returns the current value of the `GtkWidget:no`-show-all property,
    /// which determines whether calls to `gtk_widget_show_all()`
    /// will affect this widget.
    var noShowAll: Bool {
        /// Returns the current value of the `GtkWidget:no`-show-all property,
        /// which determines whether calls to `gtk_widget_show_all()`
        /// will affect this widget.
        get {
            let rv = gtk_widget_get_no_show_all(cast(widget_ptr))
            return Bool(rv != 0)
        }
        /// Sets the `GtkWidget:no`-show-all property, which determines whether
        /// calls to `gtk_widget_show_all()` will affect this widget.
        /// 
        /// This is mostly for use in constructing widget hierarchies with externally
        /// controlled visibility, see `GtkUIManager`.
        nonmutating set {
            gtk_widget_set_no_show_all(cast(widget_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    var opacity: CDouble {
        /// Fetches the requested opacity for this widget.
        /// See `gtk_widget_set_opacity()`.
        get {
            let rv = gtk_widget_get_opacity(cast(widget_ptr))
            return rv
        }
        /// Request the `widget` to be rendered partially transparent,
        /// with opacity 0 being fully transparent and 1 fully opaque. (Opacity values
        /// are clamped to the [0,1] range.).
        /// This works on both toplevel widget, and child widgets, although there
        /// are some limitations:
        /// 
        /// For toplevel widgets this depends on the capabilities of the windowing
        /// system. On X11 this has any effect only on X screens with a compositing manager
        /// running. See `gtk_widget_is_composited()`. On Windows it should work
        /// always, although setting a window’s opacity after the window has been
        /// shown causes it to flicker once on Windows.
        /// 
        /// For child widgets it doesn’t work if any affected widget has a native window, or
        /// disables double buffering.
        nonmutating set {
            gtk_widget_set_opacity(cast(widget_ptr), newValue)
        }
    }

    /// Gets a `PangoContext` with the appropriate font map, font description,
    /// and base direction for this widget. Unlike the context returned
    /// by `gtk_widget_create_pango_context()`, this context is owned by
    /// the widget (it can be used until the screen for the widget changes
    /// or the widget is removed from its toplevel), and will be updated to
    /// match any changes to the widget’s attributes. This can be tracked
    /// by using the `GtkWidget::screen`-changed signal on the widget.
    var pangoContext: UnsafeMutablePointer<PangoContext>! {
        /// Gets a `PangoContext` with the appropriate font map, font description,
        /// and base direction for this widget. Unlike the context returned
        /// by `gtk_widget_create_pango_context()`, this context is owned by
        /// the widget (it can be used until the screen for the widget changes
        /// or the widget is removed from its toplevel), and will be updated to
        /// match any changes to the widget’s attributes. This can be tracked
        /// by using the `GtkWidget::screen`-changed signal on the widget.
        get {
            let rv = gtk_widget_get_pango_context(cast(widget_ptr))
            return cast(rv)
        }
    }

    var parent: UnsafeMutablePointer<GtkWidget>! {
        /// Returns the parent container of `widget`.
        get {
            let rv = gtk_widget_get_parent(cast(widget_ptr))
            return cast(rv)
        }
        /// This function is useful only when implementing subclasses of
        /// `GtkContainer`.
        /// Sets the container as the parent of `widget`, and takes care of
        /// some details such as updating the state and style of the child
        /// to reflect its new location. The opposite function is
        /// `gtk_widget_unparent()`.
        nonmutating set {
            gtk_widget_set_parent(cast(widget_ptr), cast(widget_ptr))
        }
    }

    /// Gets `widget`’s parent window, or `nil` if it does not have one.
    var parentWindow: UnsafeMutablePointer<GdkWindow>! {
        /// Gets `widget`’s parent window, or `nil` if it does not have one.
        get {
            let rv = gtk_widget_get_parent_window(cast(widget_ptr))
            return cast(rv)
        }
        /// Sets a non default parent window for `widget`.
        /// 
        /// For `GtkWindow` classes, setting a `parent_window` effects whether
        /// the window is a toplevel window or can be embedded into other
        /// widgets.
        /// 
        /// For `GtkWindow` classes, this needs to be called before the
        /// window is realized.
        nonmutating set {
            gtk_widget_set_parent_window(cast(widget_ptr), cast(newValue))
        }
    }

    /// Returns the `GtkWidgetPath` representing `widget`, if the widget
    /// is not connected to a toplevel widget, a partial path will be
    /// created.
    var path: UnsafeMutablePointer<GtkWidgetPath>! {
        /// Returns the `GtkWidgetPath` representing `widget`, if the widget
        /// is not connected to a toplevel widget, a partial path will be
        /// created.
        get {
            let rv = gtk_widget_get_path(cast(widget_ptr))
            return cast(rv)
        }
    }

    /// Determines whether `widget` is realized.
    var realized: Bool {
        /// Determines whether `widget` is realized.
        get {
            let rv = gtk_widget_get_realized(cast(widget_ptr))
            return Bool(rv != 0)
        }
        /// Marks the widget as being realized. This function must only be
        /// called after all `GdkWindows` for the `widget` have been created
        /// and registered.
        /// 
        /// This function should only ever be called in a derived widget's
        /// “realize” or “unrealize” implementation.
        nonmutating set {
            gtk_widget_set_realized(cast(widget_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Determines whether `widget` is always treated as the default widget
    /// within its toplevel when it has the focus, even if another widget
    /// is the default.
    /// 
    /// See `gtk_widget_set_receives_default()`.
    var receivesDefault: Bool {
        /// Determines whether `widget` is always treated as the default widget
        /// within its toplevel when it has the focus, even if another widget
        /// is the default.
        /// 
        /// See `gtk_widget_set_receives_default()`.
        get {
            let rv = gtk_widget_get_receives_default(cast(widget_ptr))
            return Bool(rv != 0)
        }
        /// Specifies whether `widget` will be treated as the default widget
        /// within its toplevel when it has the focus, even if another widget
        /// is the default.
        /// 
        /// See `gtk_widget_grab_default()` for details about the meaning of
        /// “default”.
        nonmutating set {
            gtk_widget_set_receives_default(cast(widget_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Gets whether the widget prefers a height-for-width layout
    /// or a width-for-height layout.
    /// 
    /// `GtkBin` widgets generally propagate the preference of
    /// their child, container widgets need to request something either in
    /// context of their children or in context of their allocation
    /// capabilities.
    var requestMode: GtkSizeRequestMode {
        /// Gets whether the widget prefers a height-for-width layout
        /// or a width-for-height layout.
        /// 
        /// `GtkBin` widgets generally propagate the preference of
        /// their child, container widgets need to request something either in
        /// context of their children or in context of their allocation
        /// capabilities.
        get {
            let rv = gtk_widget_get_request_mode(cast(widget_ptr))
            return rv
        }
    }

    /// Get the root window where this widget is located. This function can
    /// only be called after the widget has been added to a widget
    /// hierarchy with `GtkWindow` at the top.
    /// 
    /// The root window is useful for such purposes as creating a popup
    /// `GdkWindow` associated with the window. In general, you should only
    /// create display specific resources when a widget has been realized,
    /// and you should free those resources when the widget is unrealized.
    ///
    /// **get_root_window is deprecated:**
    /// Use gdk_screen_get_root_window() instead
    var rootWindow: UnsafeMutablePointer<GdkWindow>! {
        /// Get the root window where this widget is located. This function can
        /// only be called after the widget has been added to a widget
        /// hierarchy with `GtkWindow` at the top.
        /// 
        /// The root window is useful for such purposes as creating a popup
        /// `GdkWindow` associated with the window. In general, you should only
        /// create display specific resources when a widget has been realized,
        /// and you should free those resources when the widget is unrealized.
        ///
        /// **get_root_window is deprecated:**
        /// Use gdk_screen_get_root_window() instead
        @available(*, deprecated) get {
            let rv = gtk_widget_get_root_window(cast(widget_ptr))
            return cast(rv)
        }
    }

    /// Retrieves the internal scale factor that maps from window coordinates
    /// to the actual device pixels. On traditional systems this is 1, on
    /// high density outputs, it can be a higher value (typically 2).
    /// 
    /// See `gdk_window_get_scale_factor()`.
    var scaleFactor: CInt {
        /// Retrieves the internal scale factor that maps from window coordinates
        /// to the actual device pixels. On traditional systems this is 1, on
        /// high density outputs, it can be a higher value (typically 2).
        /// 
        /// See `gdk_window_get_scale_factor()`.
        get {
            let rv = gtk_widget_get_scale_factor(cast(widget_ptr))
            return CInt(rv)
        }
    }

    /// Get the `GdkScreen` from the toplevel window associated with
    /// this widget. This function can only be called after the widget
    /// has been added to a widget hierarchy with a `GtkWindow`
    /// at the top.
    /// 
    /// In general, you should only create screen specific
    /// resources when a widget has been realized, and you should
    /// free those resources when the widget is unrealized.
    var screen: UnsafeMutablePointer<GdkScreen>! {
        /// Get the `GdkScreen` from the toplevel window associated with
        /// this widget. This function can only be called after the widget
        /// has been added to a widget hierarchy with a `GtkWindow`
        /// at the top.
        /// 
        /// In general, you should only create screen specific
        /// resources when a widget has been realized, and you should
        /// free those resources when the widget is unrealized.
        get {
            let rv = gtk_widget_get_screen(cast(widget_ptr))
            return cast(rv)
        }
    }

    var sensitive: Bool {
        /// Returns the widget’s sensitivity (in the sense of returning
        /// the value that has been set using `gtk_widget_set_sensitive()`).
        /// 
        /// The effective sensitivity of a widget is however determined by both its
        /// own and its parent widget’s sensitivity. See `gtk_widget_is_sensitive()`.
        get {
            let rv = gtk_widget_get_sensitive(cast(widget_ptr))
            return Bool(rv != 0)
        }
        /// Sets the sensitivity of a widget. A widget is sensitive if the user
        /// can interact with it. Insensitive widgets are “grayed out” and the
        /// user can’t interact with them. Insensitive widgets are known as
        /// “inactive”, “disabled”, or “ghosted” in some other toolkits.
        nonmutating set {
            gtk_widget_set_sensitive(cast(widget_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Gets the settings object holding the settings used for this widget.
    /// 
    /// Note that this function can only be called when the `GtkWidget`
    /// is attached to a toplevel, since the settings object is specific
    /// to a particular `GdkScreen`.
    var settings: UnsafeMutablePointer<GtkSettings>! {
        /// Gets the settings object holding the settings used for this widget.
        /// 
        /// Note that this function can only be called when the `GtkWidget`
        /// is attached to a toplevel, since the settings object is specific
        /// to a particular `GdkScreen`.
        get {
            let rv = gtk_widget_get_settings(cast(widget_ptr))
            return cast(rv)
        }
    }

    /// Returns the widget’s state. See `gtk_widget_set_state()`.
    ///
    /// **get_state is deprecated:**
    /// Use gtk_widget_get_state_flags() instead.
    var state: GtkStateType {
        /// Returns the widget’s state. See `gtk_widget_set_state()`.
        ///
        /// **get_state is deprecated:**
        /// Use gtk_widget_get_state_flags() instead.
        @available(*, deprecated) get {
            let rv = gtk_widget_get_state(cast(widget_ptr))
            return rv
        }
        /// This function is for use in widget implementations. Sets the state
        /// of a widget (insensitive, prelighted, etc.) Usually you should set
        /// the state using wrapper functions such as `gtk_widget_set_sensitive()`.
        ///
        /// **set_state is deprecated:**
        /// Use gtk_widget_set_state_flags() instead.
        @available(*, deprecated) nonmutating set {
            gtk_widget_set_state(cast(widget_ptr), newValue)
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
    var stateFlags: GtkStateFlags {
        /// Returns the widget state as a flag set. It is worth mentioning
        /// that the effective `GTK_STATE_FLAG_INSENSITIVE` state will be
        /// returned, that is, also based on parent insensitivity, even if
        /// `widget` itself is sensitive.
        /// 
        /// Also note that if you are looking for a way to obtain the
        /// `GtkStateFlags` to pass to a `GtkStyleContext` method, you
        /// should look at `gtk_style_context_get_state()`.
        get {
            let rv = gtk_widget_get_state_flags(cast(widget_ptr))
            return rv
        }
    }

    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    var style: UnsafeMutablePointer<GtkStyle>! {
        /// Simply an accessor function that returns `widget`->style.
        ///
        /// **get_style is deprecated:**
        /// Use #GtkStyleContext instead
        @available(*, deprecated) get {
            let rv = gtk_widget_get_style(cast(widget_ptr))
            return cast(rv)
        }
        /// Used to set the `GtkStyle` for a widget (`widget`->style). Since
        /// GTK 3, this function does nothing, the passed in style is ignored.
        ///
        /// **set_style is deprecated:**
        /// Use #GtkStyleContext instead
        @available(*, deprecated) nonmutating set {
            gtk_widget_set_style(cast(widget_ptr), cast(newValue))
        }
    }

    /// Returns the style context associated to `widget`. The returned object is
    /// guaranteed to be the same for the lifetime of `widget`.
    var styleContext: UnsafeMutablePointer<GtkStyleContext>! {
        /// Returns the style context associated to `widget`. The returned object is
        /// guaranteed to be the same for the lifetime of `widget`.
        get {
            let rv = gtk_widget_get_style_context(cast(widget_ptr))
            return cast(rv)
        }
    }

    /// Returns `true` if `widget` is multiple pointer aware. See
    /// `gtk_widget_set_support_multidevice()` for more information.
    var supportMultidevice: Bool {
        /// Returns `true` if `widget` is multiple pointer aware. See
        /// `gtk_widget_set_support_multidevice()` for more information.
        get {
            let rv = gtk_widget_get_support_multidevice(cast(widget_ptr))
            return Bool(rv != 0)
        }
        /// Enables or disables multiple pointer awareness. If this setting is `true`,
        /// `widget` will start receiving multiple, per device enter/leave events. Note
        /// that if custom `GdkWindows` are created in `GtkWidget::realize`,
        /// `gdk_window_set_support_multidevice()` will have to be called manually on them.
        nonmutating set {
            gtk_widget_set_support_multidevice(cast(widget_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Gets the contents of the tooltip for `widget`.
    var tooltipMarkup: String! {
        /// Gets the contents of the tooltip for `widget`.
        get {
            let rv = gtk_widget_get_tooltip_markup(cast(widget_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Sets `markup` as the contents of the tooltip, which is marked up with
        ///  the [Pango text markup language](#PangoMarkupFormat).
        /// 
        /// This function will take care of setting `GtkWidget:has`-tooltip to `true`
        /// and of the default handler for the `GtkWidget::query`-tooltip signal.
        /// 
        /// See also the `GtkWidget:tooltip`-markup property and
        /// `gtk_tooltip_set_markup()`.
        nonmutating set {
            gtk_widget_set_tooltip_markup(cast(widget_ptr), newValue)
        }
    }

    /// Gets the contents of the tooltip for `widget`.
    var tooltipText: String! {
        /// Gets the contents of the tooltip for `widget`.
        get {
            let rv = gtk_widget_get_tooltip_text(cast(widget_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Sets `text` as the contents of the tooltip. This function will take
        /// care of setting `GtkWidget:has`-tooltip to `true` and of the default
        /// handler for the `GtkWidget::query`-tooltip signal.
        /// 
        /// See also the `GtkWidget:tooltip`-text property and `gtk_tooltip_set_text()`.
        nonmutating set {
            gtk_widget_set_tooltip_text(cast(widget_ptr), newValue)
        }
    }

    /// Returns the `GtkWindow` of the current tooltip. This can be the
    /// GtkWindow created by default, or the custom tooltip window set
    /// using `gtk_widget_set_tooltip_window()`.
    var tooltipWindow: UnsafeMutablePointer<GtkWindow>! {
        /// Returns the `GtkWindow` of the current tooltip. This can be the
        /// GtkWindow created by default, or the custom tooltip window set
        /// using `gtk_widget_set_tooltip_window()`.
        get {
            let rv = gtk_widget_get_tooltip_window(cast(widget_ptr))
            return cast(rv)
        }
        /// Replaces the default window used for displaying
        /// tooltips with `custom_window`. GTK+ will take care of showing and
        /// hiding `custom_window` at the right moment, to behave likewise as
        /// the default tooltip window. If `custom_window` is `nil`, the default
        /// tooltip window will be used.
        nonmutating set {
            gtk_widget_set_tooltip_window(cast(widget_ptr), cast(newValue))
        }
    }

    /// This function returns the topmost widget in the container hierarchy
    /// `widget` is a part of. If `widget` has no parent widgets, it will be
    /// returned as the topmost widget. No reference will be added to the
    /// returned widget; it should not be unreferenced.
    /// 
    /// Note the difference in behavior vs. `gtk_widget_get_ancestor()`;
    /// `gtk_widget_get_ancestor (widget, GTK_TYPE_WINDOW)`
    /// would return
    /// `nil` if `widget` wasn’t inside a toplevel window, and if the
    /// window was inside a `GtkWindow`-derived widget which was in turn
    /// inside the toplevel `GtkWindow`. While the second case may
    /// seem unlikely, it actually happens when a `GtkPlug` is embedded
    /// inside a `GtkSocket` within the same application.
    /// 
    /// To reliably find the toplevel `GtkWindow`, use
    /// `gtk_widget_get_toplevel()` and call `GTK_IS_WINDOW()`
    /// on the result. For instance, to get the title of a widget's toplevel
    /// window, one might use:
    /// (C Language Example):
    /// ```C
    /// static const char *
    /// get_widget_toplevel_title (GtkWidget *widget)
    /// {
    ///   GtkWidget *toplevel = gtk_widget_get_toplevel (widget);
    ///   if (GTK_IS_WINDOW (toplevel))
    ///     {
    ///       return gtk_window_get_title (GTK_WINDOW (toplevel));
    ///     }
    /// 
    ///   return NULL;
    /// }
    /// ```
    /// 
    var toplevel: UnsafeMutablePointer<GtkWidget>! {
        /// This function returns the topmost widget in the container hierarchy
        /// `widget` is a part of. If `widget` has no parent widgets, it will be
        /// returned as the topmost widget. No reference will be added to the
        /// returned widget; it should not be unreferenced.
        /// 
        /// Note the difference in behavior vs. `gtk_widget_get_ancestor()`;
        /// `gtk_widget_get_ancestor (widget, GTK_TYPE_WINDOW)`
        /// would return
        /// `nil` if `widget` wasn’t inside a toplevel window, and if the
        /// window was inside a `GtkWindow`-derived widget which was in turn
        /// inside the toplevel `GtkWindow`. While the second case may
        /// seem unlikely, it actually happens when a `GtkPlug` is embedded
        /// inside a `GtkSocket` within the same application.
        /// 
        /// To reliably find the toplevel `GtkWindow`, use
        /// `gtk_widget_get_toplevel()` and call `GTK_IS_WINDOW()`
        /// on the result. For instance, to get the title of a widget's toplevel
        /// window, one might use:
        /// (C Language Example):
        /// ```C
        /// static const char *
        /// get_widget_toplevel_title (GtkWidget *widget)
        /// {
        ///   GtkWidget *toplevel = gtk_widget_get_toplevel (widget);
        ///   if (GTK_IS_WINDOW (toplevel))
        ///     {
        ///       return gtk_window_get_title (GTK_WINDOW (toplevel));
        ///     }
        /// 
        ///   return NULL;
        /// }
        /// ```
        /// 
        get {
            let rv = gtk_widget_get_toplevel(cast(widget_ptr))
            return cast(rv)
        }
    }

    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    var valign: GtkAlign {
        /// Gets the value of the `GtkWidget:valign` property.
        /// 
        /// For backwards compatibility reasons this method will never return
        /// `GTK_ALIGN_BASELINE`, but instead it will convert it to
        /// `GTK_ALIGN_FILL`. If your widget want to support baseline aligned
        /// children it must use `gtk_widget_get_valign_with_baseline()`, or
        /// `g_object_get (widget, "valign", &value, NULL)`, which will
        /// also report the true value.
        get {
            let rv = gtk_widget_get_valign(cast(widget_ptr))
            return rv
        }
        /// Sets the vertical alignment of `widget`.
        /// See the `GtkWidget:valign` property.
        nonmutating set {
            gtk_widget_set_valign(cast(widget_ptr), newValue)
        }
    }

    /// Gets the value of the `GtkWidget:valign` property, including
    /// `GTK_ALIGN_BASELINE`.
    var valignWithBaseline: GtkAlign {
        /// Gets the value of the `GtkWidget:valign` property, including
        /// `GTK_ALIGN_BASELINE`.
        get {
            let rv = gtk_widget_get_valign_with_baseline(cast(widget_ptr))
            return rv
        }
    }

    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    var vexpand: Bool {
        /// Gets whether the widget would like any available extra vertical
        /// space.
        /// 
        /// See `gtk_widget_get_hexpand()` for more detail.
        get {
            let rv = gtk_widget_get_vexpand(cast(widget_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether the widget would like any available extra vertical
        /// space.
        /// 
        /// See `gtk_widget_set_hexpand()` for more detail.
        nonmutating set {
            gtk_widget_set_vexpand(cast(widget_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Gets whether `gtk_widget_set_vexpand()` has been used to
    /// explicitly set the expand flag on this widget.
    /// 
    /// See `gtk_widget_get_hexpand_set()` for more detail.
    var vexpandSet: Bool {
        /// Gets whether `gtk_widget_set_vexpand()` has been used to
        /// explicitly set the expand flag on this widget.
        /// 
        /// See `gtk_widget_get_hexpand_set()` for more detail.
        get {
            let rv = gtk_widget_get_vexpand_set(cast(widget_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether the vexpand flag (see `gtk_widget_get_vexpand()`) will
        /// be used.
        /// 
        /// See `gtk_widget_set_hexpand_set()` for more detail.
        nonmutating set {
            gtk_widget_set_vexpand_set(cast(widget_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    var visible: Bool {
        /// Determines whether the widget is visible. If you want to
        /// take into account whether the widget’s parent is also marked as
        /// visible, use `gtk_widget_is_visible()` instead.
        /// 
        /// This function does not check if the widget is obscured in any way.
        /// 
        /// See `gtk_widget_set_visible()`.
        get {
            let rv = gtk_widget_get_visible(cast(widget_ptr))
            return Bool(rv != 0)
        }
        /// Sets the visibility state of `widget`. Note that setting this to
        /// `true` doesn’t mean the widget is actually viewable, see
        /// `gtk_widget_get_visible()`.
        /// 
        /// This function simply calls `gtk_widget_show()` or `gtk_widget_hide()`
        /// but is nicer to use when the visibility of the widget depends on
        /// some condition.
        nonmutating set {
            gtk_widget_set_visible(cast(widget_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Gets the visual that will be used to render `widget`.
    var visual: UnsafeMutablePointer<GdkVisual>! {
        /// Gets the visual that will be used to render `widget`.
        get {
            let rv = gtk_widget_get_visual(cast(widget_ptr))
            return cast(rv)
        }
        /// Sets the visual that should be used for by widget and its children for
        /// creating `GdkWindows`. The visual must be on the same `GdkScreen` as
        /// returned by `gtk_widget_get_screen()`, so handling the
        /// `GtkWidget::screen`-changed signal is necessary.
        /// 
        /// Setting a new `visual` will not cause `widget` to recreate its windows,
        /// so you should call this function before `widget` is realized.
        nonmutating set {
            gtk_widget_set_visual(cast(widget_ptr), cast(newValue))
        }
    }

    /// The widget's window if it is realized, `nil` otherwise.
    var window: UnsafeMutablePointer<GdkWindow>! {
        /// Returns the widget’s window if it is realized, `nil` otherwise
        get {
            let rv = gtk_widget_get_window(cast(widget_ptr))
            return cast(rv)
        }
        /// Sets a widget’s window. This function should only be used in a
        /// widget’s `GtkWidget::realize` implementation. The `window` passed is
        /// usually either new window created with `gdk_window_new()`, or the
        /// window of its parent widget as returned by
        /// `gtk_widget_get_parent_window()`.
        /// 
        /// Widgets must indicate whether they will create their own `GdkWindow`
        /// by calling `gtk_widget_set_has_window()`. This is usually done in the
        /// widget’s `init()` function.
        /// 
        /// Note that this function does not add any reference to `window`.
        nonmutating set {
            gtk_widget_set_window(cast(widget_ptr), cast(newValue))
        }
    }
}



