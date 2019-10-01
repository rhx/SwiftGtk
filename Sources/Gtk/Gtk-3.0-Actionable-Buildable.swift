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

// MARK: - Actionable Interface

/// The `ActionableProtocol` protocol exposes the methods and properties of an underlying `GtkActionable` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Actionable`.
/// Alternatively, use `ActionableRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// This interface provides a convenient way of associating widgets with
/// actions on a `GtkApplicationWindow` or `GtkApplication`.
/// 
/// It primarily consists of two properties: `GtkActionable`:action-name
/// and `GtkActionable`:action-target. There are also some convenience APIs
/// for setting these properties.
/// 
/// The action will be looked up in action groups that are found among
/// the widgets ancestors. Most commonly, these will be the actions with
/// the “win.” or “app.” prefix that are associated with the `GtkApplicationWindow`
/// or `GtkApplication`, but other action groups that are added with
/// gtk_widget_insert_action_group() will be consulted as well.
public protocol ActionableProtocol: WidgetProtocol {
    /// Untyped pointer to the underlying `GtkActionable` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkActionable` instance.
    var actionable_ptr: UnsafeMutablePointer<GtkActionable> { get }
}

/// The `ActionableRef` type acts as a lightweight Swift reference to an underlying `GtkActionable` instance.
/// It exposes methods that can operate on this data type through `ActionableProtocol` conformance.
/// Use `ActionableRef` only as an `unowned` reference to an existing `GtkActionable` instance.
///
/// This interface provides a convenient way of associating widgets with
/// actions on a `GtkApplicationWindow` or `GtkApplication`.
/// 
/// It primarily consists of two properties: `GtkActionable`:action-name
/// and `GtkActionable`:action-target. There are also some convenience APIs
/// for setting these properties.
/// 
/// The action will be looked up in action groups that are found among
/// the widgets ancestors. Most commonly, these will be the actions with
/// the “win.” or “app.” prefix that are associated with the `GtkApplicationWindow`
/// or `GtkApplication`, but other action groups that are added with
/// gtk_widget_insert_action_group() will be consulted as well.
public struct ActionableRef: ActionableProtocol {
    /// Untyped pointer to the underlying `GtkActionable` instance.
    /// For type-safe access, use the generated, typed pointer `actionable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ActionableRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkActionable>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ActionableProtocol`
    init<T: ActionableProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Actionable` type acts as a reference-counted owner of an underlying `GtkActionable` instance.
/// It provides the methods that can operate on this data type through `ActionableProtocol` conformance.
/// Use `Actionable` as a strong reference or owner of a `GtkActionable` instance.
///
/// This interface provides a convenient way of associating widgets with
/// actions on a `GtkApplicationWindow` or `GtkApplication`.
/// 
/// It primarily consists of two properties: `GtkActionable`:action-name
/// and `GtkActionable`:action-target. There are also some convenience APIs
/// for setting these properties.
/// 
/// The action will be looked up in action groups that are found among
/// the widgets ancestors. Most commonly, these will be the actions with
/// the “win.” or “app.” prefix that are associated with the `GtkApplicationWindow`
/// or `GtkApplication`, but other action groups that are added with
/// gtk_widget_insert_action_group() will be consulted as well.
open class Actionable: Widget, ActionableProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Actionable` instance.
    public init(_ op: UnsafeMutablePointer<GtkActionable>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `ActionableProtocol`
    /// Will retain `GtkActionable`.
    public convenience init<T: ActionableProtocol>(_ other: T) {
        self.init(cast(other.actionable_ptr))
        g_object_ref(cast(actionable_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkActionable.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkActionable.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkActionable.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkActionable>(opaquePointer))
    }



}

public enum ActionablePropertyName: String, PropertyNameProtocol {
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
    case actionName = "action-name"
    case actionTarget = "action-target"
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
    /// Whether to expand in both directions. Setting this sets both `GtkWidget`:hexpand and `GtkWidget`:vexpand
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
    /// Enables or disables the emission of `GtkWidget`::query-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget`::query-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See gtk_widget_set_hexpand().
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget`:hexpand property. See gtk_widget_get_hexpand_set().
    case hexpandSet = "hexpand-set"
    case isFocus = "is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginTop = "margin-top"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See gtk_widget_set_opacity() for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case receivesDefault = "receives-default"
    /// The scale factor of the widget. See gtk_widget_get_scale_factor() for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language][PangoMarkupFormat].
    /// Also see gtk_tooltip_set_markup().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see gtk_tooltip_set_text().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See gtk_widget_set_vexpand().
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget`:vexpand property. See gtk_widget_get_vexpand_set().
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
}

public extension ActionableProtocol {
    /// Bind a `ActionablePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ActionablePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(actionable_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum ActionableSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    /// The ::button-press-event signal will be emitted when a button
    /// (typically from a mouse) is pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonPressEvent = "button-press-event"
    /// The ::button-release-event signal will be emitted when a button
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
    /// The ::child-notify signal is emitted for each
    /// [child property][child-properties]  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// The ::composited-changed signal is emitted when the composited
    /// status of `widgets` screen changes.
    /// See gdk_screen_is_composited().
    ///
    /// **composited-changed is deprecated:**
    /// Use GdkScreen::composited-changed instead.
    case compositedChanged = "composited-changed"
    /// The ::configure-event signal will be emitted when the size, position or
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
    /// The ::delete-event signal is emitted if a user requests that
    /// a toplevel window is closed. The default handler for this signal
    /// destroys the window. Connecting gtk_widget_hide_on_delete() to
    /// this signal will cause the window to be hidden instead, so that
    /// it can later be shown again without reconstructing it.
    case deleteEvent = "delete-event"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The ::destroy-event signal is emitted when a `GdkWindow` is destroyed.
    /// You rarely get this signal, because most widgets disconnect themselves
    /// from their window before they destroy it, so no widget owns the
    /// window at destroy time.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case destroyEvent = "destroy-event"
    /// The ::direction-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The ::drag-begin signal is emitted on the drag source when a drag is
    /// started. A typical reason to connect to this signal is to set up a
    /// custom drag icon with e.g. gtk_drag_source_set_icon_pixbuf().
    /// 
    /// Note that some widgets set up a drag icon in the default handler of
    /// this signal, so you may have to use g_signal_connect_after() to
    /// override what the default handler did.
    case dragBegin = "drag-begin"
    /// The ::drag-data-delete signal is emitted on the drag source when a drag
    /// with the action `GDK_ACTION_MOVE` is successfully completed. The signal
    /// handler is responsible for deleting the data that has been dropped. What
    /// "delete" means depends on the context of the drag operation.
    case dragDataDelete = "drag-data-delete"
    /// The ::drag-data-get signal is emitted on the drag source when the drop
    /// site requests the data which is dragged. It is the responsibility of
    /// the signal handler to fill `data` with the data in the format which
    /// is indicated by `info`. See gtk_selection_data_set() and
    /// gtk_selection_data_set_text().
    case dragDataGet = "drag-data-get"
    /// The ::drag-data-received signal is emitted on the drop site when the
    /// dragged data has been received. If the data was received in order to
    /// determine whether the drop will be accepted, the handler is expected
    /// to call gdk_drag_status() and not finish the drag.
    /// If the data was received in response to a `GtkWidget`::drag-drop signal
    /// (and this is the last target to be received), the handler for this
    /// signal is expected to process the received data and then call
    /// gtk_drag_finish(), setting the `success` parameter depending on
    /// whether the data was processed successfully.
    /// 
    /// Applications must create some means to determine why the signal was emitted
    /// and therefore whether to call gdk_drag_status() or gtk_drag_finish().
    /// 
    /// The handler may inspect the selected action with
    /// gdk_drag_context_get_selected_action() before calling
    /// gtk_drag_finish(), e.g. to implement `GDK_ACTION_ASK` as
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
    /// The ::drag-drop signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the cursor position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// Otherwise, the handler returns `true`. In this case, the handler must
    /// ensure that gtk_drag_finish() is called to let the source know that
    /// the drop is done. The call to gtk_drag_finish() can be done either
    /// directly or in a `GtkWidget`::drag-data-received handler which gets
    /// triggered by calling gtk_drag_get_data() to receive the data for one
    /// or more of the supported targets.
    case dragDrop = "drag-drop"
    /// The ::drag-end signal is emitted on the drag source when a drag is
    /// finished.  A typical reason to connect to this signal is to undo
    /// things done in `GtkWidget`::drag-begin.
    case dragEnd = "drag-end"
    /// The ::drag-failed signal is emitted on the drag source when a drag has
    /// failed. The signal handler may hook custom code to handle a failed DnD
    /// operation based on the type of error, it returns `true` is the failure has
    /// been already handled (not showing the default "drag operation failed"
    /// animation), otherwise it returns `false`.
    case dragFailed = "drag-failed"
    /// The ::drag-leave signal is emitted on the drop site when the cursor
    /// leaves the widget. A typical reason to connect to this signal is to
    /// undo things done in `GtkWidget`::drag-motion, e.g. undo highlighting
    /// with gtk_drag_unhighlight().
    /// 
    /// 
    /// Likewise, the `GtkWidget`::drag-leave signal is also emitted before the
    /// ::drag-drop signal, for instance to allow cleaning up of a preview item
    /// created in the `GtkWidget`::drag-motion signal handler.
    case dragLeave = "drag-leave"
    /// The ::drag-motion signal is emitted on the drop site when the user
    /// moves the cursor over the widget during a drag. The signal handler
    /// must determine whether the cursor position is in a drop zone or not.
    /// If it is not in a drop zone, it returns `false` and no further processing
    /// is necessary. Otherwise, the handler returns `true`. In this case, the
    /// handler is responsible for providing the necessary information for
    /// displaying feedback to the user, by calling gdk_drag_status().
    /// 
    /// If the decision whether the drop will be accepted or rejected can't be
    /// made based solely on the cursor position and the type of the data, the
    /// handler may inspect the dragged data by calling gtk_drag_get_data() and
    /// defer the gdk_drag_status() call to the `GtkWidget`::drag-data-received
    /// handler. Note that you must pass `GTK_DEST_DEFAULT_DROP`,
    /// `GTK_DEST_DEFAULT_MOTION` or `GTK_DEST_DEFAULT_ALL` to gtk_drag_dest_set()
    /// when using the drag-motion signal that way.
    /// 
    /// Also note that there is no drag-enter signal. The drag receiver has to
    /// keep track of whether he has received any drag-motion signals since the
    /// last `GtkWidget`::drag-leave and if not, treat the drag-motion signal as
    /// an "enter" signal. Upon an "enter", the handler will typically highlight
    /// the drop site with gtk_drag_highlight().
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
    /// gtk_widget_get_allocated_width() and
    /// gtk_widget_get_allocated_height().
    /// 
    /// Signal handlers connected to this signal can modify the cairo
    /// context passed as `cr` in any way they like and don't need to
    /// restore it. The signal emission takes care of calling cairo_save()
    /// before and cairo_restore() after invoking the handler.
    /// 
    /// The signal handler will get a `cr` with a clip region already set to the
    /// widget's dirty region, i.e. to the area that needs repainting.  Complicated
    /// widgets that want to avoid redrawing themselves completely can get the full
    /// extents of the clip region with gdk_cairo_get_clip_rectangle(), or they can
    /// get a finer-grained representation of the dirty region with
    /// cairo_copy_clip_rectangle_list().
    case draw = "draw"
    /// The ::enter-notify-event will be emitted when the pointer enters
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_ENTER_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case enterNotifyEvent = "enter-notify-event"
    /// The GTK+ main loop will emit three signals for each GDK event delivered
    /// to a widget: one generic ::event signal, another, more specific,
    /// signal that matches the type of event delivered (e.g.
    /// `GtkWidget`::key-press-event) and finally a generic
    /// `GtkWidget`::event-after signal.
    case event = "event"
    /// After the emission of the `GtkWidget`::event signal and (optionally)
    /// the second more specific signal, ::event-after will be emitted
    /// regardless of the previous two signals handlers return values.
    case eventAfter = "event-after"
    case focus = "focus"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The ::focus-in-event signal will be emitted when the keyboard focus
    /// enters the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusInEvent = "focus-in-event"
    /// The ::focus-out-event signal will be emitted when the keyboard focus
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
    /// The ::grab-notify signal is emitted when a widget becomes
    /// shadowed by a GTK+ grab (not a pointer or keyboard grab) on
    /// another widget, or when it becomes unshadowed due to a grab
    /// being removed.
    /// 
    /// A widget is shadowed by a gtk_grab_add() when the topmost
    /// grab widget in the grab stack of its window group is not
    /// its ancestor.
    case grabNotify = "grab-notify"
    /// The ::hide signal is emitted when `widget` is hidden, for example with
    /// gtk_widget_hide().
    case hide = "hide"
    /// The ::hierarchy-changed signal is emitted when the
    /// anchored state of a widget changes. A widget is
    /// “anchored” when its toplevel
    /// ancestor is a `GtkWindow`. This signal is emitted when
    /// a widget changes from un-anchored to anchored or vice-versa.
    case hierarchyChanged = "hierarchy-changed"
    /// The ::key-press-event signal is emitted when a key is pressed. The signal
    /// emission will reoccur at the key-repeat rate when the key is kept pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyPressEvent = "key-press-event"
    /// The ::key-release-event signal is emitted when a key is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyReleaseEvent = "key-release-event"
    /// Gets emitted if keyboard navigation fails.
    /// See gtk_widget_keynav_failed() for details.
    case keynavFailed = "keynav-failed"
    /// The ::leave-notify-event will be emitted when the pointer leaves
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_LEAVE_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case leaveNotifyEvent = "leave-notify-event"
    /// The ::map signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// gtk_widget_set_visible()) and all its parents up to the toplevel widget
    /// are also visible. Once the map has occurred, `GtkWidget`::map-event will
    /// be emitted.
    /// 
    /// The ::map signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget`::unmap.
    case map = "map"
    /// The ::map-event signal will be emitted when the `widget`'s window is
    /// mapped. A window is mapped when it becomes visible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case mapEvent = "map-event"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// The ::motion-notify-event signal is emitted when the pointer moves
    /// over the widget's `GdkWindow`.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_POINTER_MOTION_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case motionNotifyEvent = "motion-notify-event"
    case moveFocus = "move-focus"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through g_object_set_property(), g_object_set(), et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to g_object_set_property() results
    /// in ::notify being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call g_object_notify() or g_object_notify_by_pspec(),
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// g_signal_connect() call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The ::parent-set signal is emitted when a new parent
    /// has been set on a widget.
    case parentSet = "parent-set"
    /// This signal gets emitted whenever a widget should pop up a context
    /// menu. This usually happens through the standard key binding mechanism;
    /// by pressing a certain key while a widget is focused, the user can cause
    /// the widget to pop up a menu.  For example, the `GtkEntry` widget creates
    /// a menu with clipboard commands. See the
    /// [Popup Menu Migration Checklist][checklist-popup-menu]
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
    /// g_object_notify() to emit property-changed
    /// notifications. `AtkObject`::property-changed is needed by the
    /// implementation of atk_add_global_event_listener() because GObject
    /// notify doesn't support emission hooks.
    case propertyChange = "property-change"
    /// The ::property-notify-event signal will be emitted when a property on
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
    /// Emitted when `GtkWidget`:has-tooltip is `true` and the hover timeout
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
    /// The ::realize signal is emitted when `widget` is associated with a
    /// `GdkWindow`, which means that gtk_widget_realize() has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// The ::screen-changed signal gets emitted when the
    /// screen of a widget has changed.
    case screenChanged = "screen-changed"
    /// The ::scroll-event signal is emitted when a button in the 4 to 7
    /// range is pressed. Wheel mice are usually configured to generate
    /// button press events for buttons 4 and 5 when the wheel is turned.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_SCROLL_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case scrollEvent = "scroll-event"
    /// The ::selection-clear-event signal will be emitted when the
    /// the `widget`'s window has lost ownership of a selection.
    case selectionClearEvent = "selection-clear-event"
    case selectionGet = "selection-get"
    case selectionNotifyEvent = "selection-notify-event"
    case selectionReceived = "selection-received"
    /// The ::selection-request-event signal will be emitted when
    /// another client requests ownership of the selection owned by
    /// the `widget`'s window.
    case selectionRequestEvent = "selection-request-event"
    /// The ::show signal is emitted when `widget` is shown, for example with
    /// gtk_widget_show().
    case show = "show"
    case showHelp = "show-help"
    case sizeAllocate = "size-allocate"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The ::state-changed signal is emitted when the widget state changes.
    /// See gtk_widget_get_state().
    ///
    /// **state-changed is deprecated:**
    /// Use #GtkWidget::state-flags-changed instead.
    case stateChanged = "state-changed"
    /// The ::state-flags-changed signal is emitted when the widget state
    /// changes, see gtk_widget_get_state_flags().
    case stateFlagsChanged = "state-flags-changed"
    /// The ::style-set signal is emitted when a new style has been set
    /// on a widget. Note that style-modifying functions like
    /// gtk_widget_modify_base() also cause this signal to be emitted.
    /// 
    /// Note that this signal is emitted for changes to the deprecated
    /// `GtkStyle`. To track changes to the `GtkStyleContext` associated
    /// with a widget, use the `GtkWidget`::style-updated signal.
    ///
    /// **style-set is deprecated:**
    /// Use the #GtkWidget::style-updated signal
    case styleSet = "style-set"
    /// The ::style-updated signal is a convenience signal that is emitted when the
    /// `GtkStyleContext`::changed signal is emitted on the `widget`'s associated
    /// `GtkStyleContext` as returned by gtk_widget_get_style_context().
    /// 
    /// Note that style-modifying functions like gtk_widget_override_color() also
    /// cause this signal to be emitted.
    case styleUpdated = "style-updated"
    case touchEvent = "touch-event"
    /// The ::unmap signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As ::unmap indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The ::unmap-event signal will be emitted when the `widget`'s window is
    /// unmapped. A window is unmapped when it becomes invisible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case unmapEvent = "unmap-event"
    /// The ::unrealize signal is emitted when the `GdkWindow` associated with
    /// `widget` is destroyed, which means that gtk_widget_unrealize() has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
    /// The ::visibility-notify-event will be emitted when the `widget`'s
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
    /// The ::window-state-event will be emitted when the state of the
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
    case notifyActionName = "notify::action-name"
    case notifyActionTarget = "notify::action-target"
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
    /// Whether to expand in both directions. Setting this sets both `GtkWidget`:hexpand and `GtkWidget`:vexpand
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
    /// Enables or disables the emission of `GtkWidget`::query-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget`::query-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See gtk_widget_set_hexpand().
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget`:hexpand property. See gtk_widget_get_hexpand_set().
    case notifyHexpandSet = "notify::hexpand-set"
    case notifyIsFocus = "notify::is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case notifyMargin = "notify::margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case notifyMarginLeft = "notify::margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case notifyMarginRight = "notify::margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginTop = "notify::margin-top"
    case notifyName = "notify::name"
    case notifyNoShowAll = "notify::no-show-all"
    /// The requested opacity of the widget. See gtk_widget_set_opacity() for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case notifyOpacity = "notify::opacity"
    case notifyParent = "notify::parent"
    case notifyReceivesDefault = "notify::receives-default"
    /// The scale factor of the widget. See gtk_widget_get_scale_factor() for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case notifyStyle = "notify::style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language][PangoMarkupFormat].
    /// Also see gtk_tooltip_set_markup().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see gtk_tooltip_set_text().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    /// Whether to expand vertically. See gtk_widget_set_vexpand().
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget`:vexpand property. See gtk_widget_get_vexpand_set().
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    case notifyWidthRequest = "notify::width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case notifyWindow = "notify::window"
}

public extension ActionableProtocol {
    /// Connect a `ActionableSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: ActionableSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(actionable_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension ActionableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkActionable` instance.
    var actionable_ptr: UnsafeMutablePointer<GtkActionable> { return ptr.assumingMemoryBound(to: GtkActionable.self) }

    /// Gets the action name for `actionable`.
    /// 
    /// See gtk_actionable_set_action_name() for more information.
    func getActionName() -> String! {
        let rv = gtk_actionable_get_action_name(cast(actionable_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the current target value of `actionable`.
    /// 
    /// See gtk_actionable_set_action_target_value() for more information.
    func getActionTargetValue() -> UnsafeMutablePointer<GVariant>! {
        let rv = gtk_actionable_get_action_target_value(cast(actionable_ptr))
        return cast(rv)
    }

    /// Specifies the name of the action with which this widget should be
    /// associated.  If `action_name` is `nil` then the widget will be
    /// unassociated from any previous action.
    /// 
    /// Usually this function is used when the widget is located (or will be
    /// located) within the hierarchy of a `GtkApplicationWindow`.
    /// 
    /// Names are of the form “win.save” or “app.quit” for actions on the
    /// containing `GtkApplicationWindow` or its associated `GtkApplication`,
    /// respectively.  This is the same form used for actions in the `GMenu`
    /// associated with the window.
    func set(actionName action_name: UnsafePointer<gchar>) {
        gtk_actionable_set_action_name(cast(actionable_ptr), action_name)
    
    }


    // *** setActionTarget() is not available because it has a varargs (...) parameter!


    /// Sets the target value of an actionable widget.
    /// 
    /// If `target_value` is `nil` then the target value is unset.
    /// 
    /// The target value has two purposes.  First, it is used as the
    /// parameter to activation of the action associated with the
    /// `GtkActionable` widget. Second, it is used to determine if the widget
    /// should be rendered as “active” — the widget is active if the state
    /// is equal to the given target.
    /// 
    /// Consider the example of associating a set of buttons with a `GAction`
    /// with string state in a typical “radio button” situation.  Each button
    /// will be associated with the same action, but with a different target
    /// value for that action.  Clicking on a particular button will activate
    /// the action with the target of that button, which will typically cause
    /// the action’s state to change to that value.  Since the action’s state
    /// is now equal to the target value of the button, the button will now
    /// be rendered as active (and the other buttons, with different targets,
    /// rendered inactive).
    func setAction(targetValue target_value: VariantProtocol) {
        gtk_actionable_set_action_target_value(cast(actionable_ptr), cast(target_value.ptr))
    
    }

    /// Sets the action-name and associated string target value of an
    /// actionable widget.
    /// 
    /// `detailed_action_name` is a string in the format accepted by
    /// g_action_parse_detailed_name().
    /// 
    /// (Note that prior to version 3.22.25,
    /// this function is only usable for actions with a simple "s" target, and
    /// `detailed_action_name` must be of the form `"action::target"` where
    /// `action` is the action name and `target` is the string to use
    /// as the target.)
    func set(detailedActionName detailed_action_name: UnsafePointer<gchar>) {
        gtk_actionable_set_detailed_action_name(cast(actionable_ptr), detailed_action_name)
    
    }
    /// Gets the action name for `actionable`.
    /// 
    /// See gtk_actionable_set_action_name() for more information.
    var actionName: String! {
        /// Gets the action name for `actionable`.
        /// 
        /// See gtk_actionable_set_action_name() for more information.
        get {
            let rv = gtk_actionable_get_action_name(cast(actionable_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Specifies the name of the action with which this widget should be
        /// associated.  If `action_name` is `nil` then the widget will be
        /// unassociated from any previous action.
        /// 
        /// Usually this function is used when the widget is located (or will be
        /// located) within the hierarchy of a `GtkApplicationWindow`.
        /// 
        /// Names are of the form “win.save” or “app.quit” for actions on the
        /// containing `GtkApplicationWindow` or its associated `GtkApplication`,
        /// respectively.  This is the same form used for actions in the `GMenu`
        /// associated with the window.
        nonmutating set {
            gtk_actionable_set_action_name(cast(actionable_ptr), newValue)
        }
    }

    /// Gets the current target value of `actionable`.
    /// 
    /// See gtk_actionable_set_action_target_value() for more information.
    var actionTargetValue: UnsafeMutablePointer<GVariant>! {
        /// Gets the current target value of `actionable`.
        /// 
        /// See gtk_actionable_set_action_target_value() for more information.
        get {
            let rv = gtk_actionable_get_action_target_value(cast(actionable_ptr))
            return cast(rv)
        }
        /// Sets the target value of an actionable widget.
        /// 
        /// If `target_value` is `nil` then the target value is unset.
        /// 
        /// The target value has two purposes.  First, it is used as the
        /// parameter to activation of the action associated with the
        /// `GtkActionable` widget. Second, it is used to determine if the widget
        /// should be rendered as “active” — the widget is active if the state
        /// is equal to the given target.
        /// 
        /// Consider the example of associating a set of buttons with a `GAction`
        /// with string state in a typical “radio button” situation.  Each button
        /// will be associated with the same action, but with a different target
        /// value for that action.  Clicking on a particular button will activate
        /// the action with the target of that button, which will typically cause
        /// the action’s state to change to that value.  Since the action’s state
        /// is now equal to the target value of the button, the button will now
        /// be rendered as active (and the other buttons, with different targets,
        /// rendered inactive).
        nonmutating set {
            gtk_actionable_set_action_target_value(cast(actionable_ptr), cast(newValue))
        }
    }
}



// MARK: - Activatable Interface

/// The `ActivatableProtocol` protocol exposes the methods and properties of an underlying `GtkActivatable` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Activatable`.
/// Alternatively, use `ActivatableRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Activatable widgets can be connected to a `GtkAction` and reflects
/// the state of its action. A `GtkActivatable` can also provide feedback
/// through its action, as they are responsible for activating their
/// related actions.
/// 
/// `` Implementing GtkActivatable
/// 
/// When extending a class that is already `GtkActivatable`; it is only
/// necessary to implement the `GtkActivatable`->sync_action_properties()
/// and `GtkActivatable`->update() methods and chain up to the parent
/// implementation, however when introducing
/// a new `GtkActivatable` class; the `GtkActivatable`:related-action and
/// `GtkActivatable`:use-action-appearance properties need to be handled by
/// the implementor. Handling these properties is mostly a matter of installing
/// the action pointer and boolean flag on your instance, and calling
/// gtk_activatable_do_set_related_action() and
/// gtk_activatable_sync_action_properties() at the appropriate times.
/// 
/// ``` A class fragment implementing `GtkActivatable`
/// 
/// (C Language Example):
/// ```C
/// 
/// enum {
/// ...
/// 
/// PROP_ACTIVATABLE_RELATED_ACTION,
/// PROP_ACTIVATABLE_USE_ACTION_APPEARANCE
/// }
/// 
/// struct _FooBarPrivate
/// {
/// 
///   ...
/// 
///   GtkAction      *action;
///   gboolean        use_action_appearance;
/// };
/// 
/// ...
/// 
/// static void foo_bar_activatable_interface_init         (GtkActivatableIface  *iface);
/// static void foo_bar_activatable_update                 (GtkActivatable       *activatable,
/// 						           GtkAction            *action,
/// 						           const gchar          *property_name);
/// static void foo_bar_activatable_sync_action_properties (GtkActivatable       *activatable,
/// 						           GtkAction            *action);
/// ...
/// 
/// 
/// static void
/// foo_bar_class_init (FooBarClass *klass)
/// {
/// 
///   ...
/// 
///   g_object_class_override_property (gobject_class, PROP_ACTIVATABLE_RELATED_ACTION, "related-action");
///   g_object_class_override_property (gobject_class, PROP_ACTIVATABLE_USE_ACTION_APPEARANCE, "use-action-appearance");
/// 
///   ...
/// }
/// 
/// 
/// static void
/// foo_bar_activatable_interface_init (GtkActivatableIface  *iface)
/// {
///   iface->update = foo_bar_activatable_update;
///   iface->sync_action_properties = foo_bar_activatable_sync_action_properties;
/// }
/// 
/// ... Break the reference using gtk_activatable_do_set_related_action()...
/// 
/// static void
/// foo_bar_dispose (GObject *object)
/// {
///   FooBar *bar = FOO_BAR (object);
///   FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (bar);
/// 
///   ...
/// 
///   if (priv->action)
///     {
///       gtk_activatable_do_set_related_action (GTK_ACTIVATABLE (bar), NULL);
///       priv->action = NULL;
///     }
///   G_OBJECT_CLASS (foo_bar_parent_class)->dispose (object);
/// }
/// 
/// ... Handle the “related-action” and “use-action-appearance” properties ...
/// 
/// static void
/// foo_bar_set_property (GObject         *object,
///                       guint            prop_id,
///                       const GValue    *value,
///                       GParamSpec      *pspec)
/// {
///   FooBar *bar = FOO_BAR (object);
///   FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (bar);
/// 
///   switch (prop_id)
///     {
/// 
///       ...
/// 
///     case PROP_ACTIVATABLE_RELATED_ACTION:
///       foo_bar_set_related_action (bar, g_value_get_object (value));
///       break;
///     case PROP_ACTIVATABLE_USE_ACTION_APPEARANCE:
///       foo_bar_set_use_action_appearance (bar, g_value_get_boolean (value));
///       break;
///     default:
///       G_OBJECT_WARN_INVALID_PROPERTY_ID (object, prop_id, pspec);
///       break;
///     }
/// }
/// 
/// static void
/// foo_bar_get_property (GObject         *object,
///                          guint            prop_id,
///                          GValue          *value,
///                          GParamSpec      *pspec)
/// {
///   FooBar *bar = FOO_BAR (object);
///   FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (bar);
/// 
///   switch (prop_id)
///     {
/// 
///       ...
/// 
///     case PROP_ACTIVATABLE_RELATED_ACTION:
///       g_value_set_object (value, priv->action);
///       break;
///     case PROP_ACTIVATABLE_USE_ACTION_APPEARANCE:
///       g_value_set_boolean (value, priv->use_action_appearance);
///       break;
///     default:
///       G_OBJECT_WARN_INVALID_PROPERTY_ID (object, prop_id, pspec);
///       break;
///     }
/// }
/// 
/// 
/// static void
/// foo_bar_set_use_action_appearance (FooBar   *bar,
/// 				   gboolean  use_appearance)
/// {
///   FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (bar);
/// 
///   if (priv->use_action_appearance != use_appearance)
///     {
///       priv->use_action_appearance = use_appearance;
///       
///       gtk_activatable_sync_action_properties (GTK_ACTIVATABLE (bar), priv->action);
///     }
/// }
/// 
/// ... call gtk_activatable_do_set_related_action() and then assign the action pointer,
/// no need to reference the action here since gtk_activatable_do_set_related_action() already
/// holds a reference here for you...
/// static void
/// foo_bar_set_related_action (FooBar    *bar,
/// 			    GtkAction *action)
/// {
///   FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (bar);
/// 
///   if (priv->action == action)
///     return;
/// 
///   gtk_activatable_do_set_related_action (GTK_ACTIVATABLE (bar), action);
/// 
///   priv->action = action;
/// }
/// 
/// ... Selectively reset and update activatable depending on the use-action-appearance property ...
/// static void
/// gtk_button_activatable_sync_action_properties (GtkActivatable       *activatable,
/// 		                                  GtkAction            *action)
/// {
///   GtkButtonPrivate *priv = GTK_BUTTON_GET_PRIVATE (activatable);
/// 
///   if (!action)
///     return;
/// 
///   if (gtk_action_is_visible (action))
///     gtk_widget_show (GTK_WIDGET (activatable));
///   else
///     gtk_widget_hide (GTK_WIDGET (activatable));
///   
///   gtk_widget_set_sensitive (GTK_WIDGET (activatable), gtk_action_is_sensitive (action));
/// 
///   ...
///   
///   if (priv->use_action_appearance)
///     {
///       if (gtk_action_get_stock_id (action))
/// 	foo_bar_set_stock (button, gtk_action_get_stock_id (action));
///       else if (gtk_action_get_label (action))
/// 	foo_bar_set_label (button, gtk_action_get_label (action));
/// 
///       ...
/// 
///     }
/// }
/// 
/// static void
/// foo_bar_activatable_update (GtkActivatable       *activatable,
/// 			       GtkAction            *action,
/// 			       const gchar          *property_name)
/// {
///   FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (activatable);
/// 
///   if (strcmp (property_name, "visible") == 0)
///     {
///       if (gtk_action_is_visible (action))
/// 	gtk_widget_show (GTK_WIDGET (activatable));
///       else
/// 	gtk_widget_hide (GTK_WIDGET (activatable));
///     }
///   else if (strcmp (property_name, "sensitive") == 0)
///     gtk_widget_set_sensitive (GTK_WIDGET (activatable), gtk_action_is_sensitive (action));
/// 
///   ...
/// 
///   if (!priv->use_action_appearance)
///     return;
/// 
///   if (strcmp (property_name, "stock-id") == 0)
///     foo_bar_set_stock (button, gtk_action_get_stock_id (action));
///   else if (strcmp (property_name, "label") == 0)
///     foo_bar_set_label (button, gtk_action_get_label (action));
/// 
///   ...
/// }
/// ```
/// 
public protocol ActivatableProtocol {
    /// Untyped pointer to the underlying `GtkActivatable` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkActivatable` instance.
    var activatable_ptr: UnsafeMutablePointer<GtkActivatable> { get }
}

/// The `ActivatableRef` type acts as a lightweight Swift reference to an underlying `GtkActivatable` instance.
/// It exposes methods that can operate on this data type through `ActivatableProtocol` conformance.
/// Use `ActivatableRef` only as an `unowned` reference to an existing `GtkActivatable` instance.
///
/// Activatable widgets can be connected to a `GtkAction` and reflects
/// the state of its action. A `GtkActivatable` can also provide feedback
/// through its action, as they are responsible for activating their
/// related actions.
/// 
/// `` Implementing GtkActivatable
/// 
/// When extending a class that is already `GtkActivatable`; it is only
/// necessary to implement the `GtkActivatable`->sync_action_properties()
/// and `GtkActivatable`->update() methods and chain up to the parent
/// implementation, however when introducing
/// a new `GtkActivatable` class; the `GtkActivatable`:related-action and
/// `GtkActivatable`:use-action-appearance properties need to be handled by
/// the implementor. Handling these properties is mostly a matter of installing
/// the action pointer and boolean flag on your instance, and calling
/// gtk_activatable_do_set_related_action() and
/// gtk_activatable_sync_action_properties() at the appropriate times.
/// 
/// ``` A class fragment implementing `GtkActivatable`
/// 
/// (C Language Example):
/// ```C
/// 
/// enum {
/// ...
/// 
/// PROP_ACTIVATABLE_RELATED_ACTION,
/// PROP_ACTIVATABLE_USE_ACTION_APPEARANCE
/// }
/// 
/// struct _FooBarPrivate
/// {
/// 
///   ...
/// 
///   GtkAction      *action;
///   gboolean        use_action_appearance;
/// };
/// 
/// ...
/// 
/// static void foo_bar_activatable_interface_init         (GtkActivatableIface  *iface);
/// static void foo_bar_activatable_update                 (GtkActivatable       *activatable,
/// 						           GtkAction            *action,
/// 						           const gchar          *property_name);
/// static void foo_bar_activatable_sync_action_properties (GtkActivatable       *activatable,
/// 						           GtkAction            *action);
/// ...
/// 
/// 
/// static void
/// foo_bar_class_init (FooBarClass *klass)
/// {
/// 
///   ...
/// 
///   g_object_class_override_property (gobject_class, PROP_ACTIVATABLE_RELATED_ACTION, "related-action");
///   g_object_class_override_property (gobject_class, PROP_ACTIVATABLE_USE_ACTION_APPEARANCE, "use-action-appearance");
/// 
///   ...
/// }
/// 
/// 
/// static void
/// foo_bar_activatable_interface_init (GtkActivatableIface  *iface)
/// {
///   iface->update = foo_bar_activatable_update;
///   iface->sync_action_properties = foo_bar_activatable_sync_action_properties;
/// }
/// 
/// ... Break the reference using gtk_activatable_do_set_related_action()...
/// 
/// static void
/// foo_bar_dispose (GObject *object)
/// {
///   FooBar *bar = FOO_BAR (object);
///   FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (bar);
/// 
///   ...
/// 
///   if (priv->action)
///     {
///       gtk_activatable_do_set_related_action (GTK_ACTIVATABLE (bar), NULL);
///       priv->action = NULL;
///     }
///   G_OBJECT_CLASS (foo_bar_parent_class)->dispose (object);
/// }
/// 
/// ... Handle the “related-action” and “use-action-appearance” properties ...
/// 
/// static void
/// foo_bar_set_property (GObject         *object,
///                       guint            prop_id,
///                       const GValue    *value,
///                       GParamSpec      *pspec)
/// {
///   FooBar *bar = FOO_BAR (object);
///   FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (bar);
/// 
///   switch (prop_id)
///     {
/// 
///       ...
/// 
///     case PROP_ACTIVATABLE_RELATED_ACTION:
///       foo_bar_set_related_action (bar, g_value_get_object (value));
///       break;
///     case PROP_ACTIVATABLE_USE_ACTION_APPEARANCE:
///       foo_bar_set_use_action_appearance (bar, g_value_get_boolean (value));
///       break;
///     default:
///       G_OBJECT_WARN_INVALID_PROPERTY_ID (object, prop_id, pspec);
///       break;
///     }
/// }
/// 
/// static void
/// foo_bar_get_property (GObject         *object,
///                          guint            prop_id,
///                          GValue          *value,
///                          GParamSpec      *pspec)
/// {
///   FooBar *bar = FOO_BAR (object);
///   FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (bar);
/// 
///   switch (prop_id)
///     {
/// 
///       ...
/// 
///     case PROP_ACTIVATABLE_RELATED_ACTION:
///       g_value_set_object (value, priv->action);
///       break;
///     case PROP_ACTIVATABLE_USE_ACTION_APPEARANCE:
///       g_value_set_boolean (value, priv->use_action_appearance);
///       break;
///     default:
///       G_OBJECT_WARN_INVALID_PROPERTY_ID (object, prop_id, pspec);
///       break;
///     }
/// }
/// 
/// 
/// static void
/// foo_bar_set_use_action_appearance (FooBar   *bar,
/// 				   gboolean  use_appearance)
/// {
///   FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (bar);
/// 
///   if (priv->use_action_appearance != use_appearance)
///     {
///       priv->use_action_appearance = use_appearance;
///       
///       gtk_activatable_sync_action_properties (GTK_ACTIVATABLE (bar), priv->action);
///     }
/// }
/// 
/// ... call gtk_activatable_do_set_related_action() and then assign the action pointer,
/// no need to reference the action here since gtk_activatable_do_set_related_action() already
/// holds a reference here for you...
/// static void
/// foo_bar_set_related_action (FooBar    *bar,
/// 			    GtkAction *action)
/// {
///   FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (bar);
/// 
///   if (priv->action == action)
///     return;
/// 
///   gtk_activatable_do_set_related_action (GTK_ACTIVATABLE (bar), action);
/// 
///   priv->action = action;
/// }
/// 
/// ... Selectively reset and update activatable depending on the use-action-appearance property ...
/// static void
/// gtk_button_activatable_sync_action_properties (GtkActivatable       *activatable,
/// 		                                  GtkAction            *action)
/// {
///   GtkButtonPrivate *priv = GTK_BUTTON_GET_PRIVATE (activatable);
/// 
///   if (!action)
///     return;
/// 
///   if (gtk_action_is_visible (action))
///     gtk_widget_show (GTK_WIDGET (activatable));
///   else
///     gtk_widget_hide (GTK_WIDGET (activatable));
///   
///   gtk_widget_set_sensitive (GTK_WIDGET (activatable), gtk_action_is_sensitive (action));
/// 
///   ...
///   
///   if (priv->use_action_appearance)
///     {
///       if (gtk_action_get_stock_id (action))
/// 	foo_bar_set_stock (button, gtk_action_get_stock_id (action));
///       else if (gtk_action_get_label (action))
/// 	foo_bar_set_label (button, gtk_action_get_label (action));
/// 
///       ...
/// 
///     }
/// }
/// 
/// static void
/// foo_bar_activatable_update (GtkActivatable       *activatable,
/// 			       GtkAction            *action,
/// 			       const gchar          *property_name)
/// {
///   FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (activatable);
/// 
///   if (strcmp (property_name, "visible") == 0)
///     {
///       if (gtk_action_is_visible (action))
/// 	gtk_widget_show (GTK_WIDGET (activatable));
///       else
/// 	gtk_widget_hide (GTK_WIDGET (activatable));
///     }
///   else if (strcmp (property_name, "sensitive") == 0)
///     gtk_widget_set_sensitive (GTK_WIDGET (activatable), gtk_action_is_sensitive (action));
/// 
///   ...
/// 
///   if (!priv->use_action_appearance)
///     return;
/// 
///   if (strcmp (property_name, "stock-id") == 0)
///     foo_bar_set_stock (button, gtk_action_get_stock_id (action));
///   else if (strcmp (property_name, "label") == 0)
///     foo_bar_set_label (button, gtk_action_get_label (action));
/// 
///   ...
/// }
/// ```
/// 
public struct ActivatableRef: ActivatableProtocol {
    /// Untyped pointer to the underlying `GtkActivatable` instance.
    /// For type-safe access, use the generated, typed pointer `activatable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ActivatableRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkActivatable>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ActivatableProtocol`
    init<T: ActivatableProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActivatableProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActivatableProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActivatableProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActivatableProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActivatableProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Activatable` type acts as an owner of an underlying `GtkActivatable` instance.
/// It provides the methods that can operate on this data type through `ActivatableProtocol` conformance.
/// Use `Activatable` as a strong reference or owner of a `GtkActivatable` instance.
///
/// Activatable widgets can be connected to a `GtkAction` and reflects
/// the state of its action. A `GtkActivatable` can also provide feedback
/// through its action, as they are responsible for activating their
/// related actions.
/// 
/// `` Implementing GtkActivatable
/// 
/// When extending a class that is already `GtkActivatable`; it is only
/// necessary to implement the `GtkActivatable`->sync_action_properties()
/// and `GtkActivatable`->update() methods and chain up to the parent
/// implementation, however when introducing
/// a new `GtkActivatable` class; the `GtkActivatable`:related-action and
/// `GtkActivatable`:use-action-appearance properties need to be handled by
/// the implementor. Handling these properties is mostly a matter of installing
/// the action pointer and boolean flag on your instance, and calling
/// gtk_activatable_do_set_related_action() and
/// gtk_activatable_sync_action_properties() at the appropriate times.
/// 
/// ``` A class fragment implementing `GtkActivatable`
/// 
/// (C Language Example):
/// ```C
/// 
/// enum {
/// ...
/// 
/// PROP_ACTIVATABLE_RELATED_ACTION,
/// PROP_ACTIVATABLE_USE_ACTION_APPEARANCE
/// }
/// 
/// struct _FooBarPrivate
/// {
/// 
///   ...
/// 
///   GtkAction      *action;
///   gboolean        use_action_appearance;
/// };
/// 
/// ...
/// 
/// static void foo_bar_activatable_interface_init         (GtkActivatableIface  *iface);
/// static void foo_bar_activatable_update                 (GtkActivatable       *activatable,
/// 						           GtkAction            *action,
/// 						           const gchar          *property_name);
/// static void foo_bar_activatable_sync_action_properties (GtkActivatable       *activatable,
/// 						           GtkAction            *action);
/// ...
/// 
/// 
/// static void
/// foo_bar_class_init (FooBarClass *klass)
/// {
/// 
///   ...
/// 
///   g_object_class_override_property (gobject_class, PROP_ACTIVATABLE_RELATED_ACTION, "related-action");
///   g_object_class_override_property (gobject_class, PROP_ACTIVATABLE_USE_ACTION_APPEARANCE, "use-action-appearance");
/// 
///   ...
/// }
/// 
/// 
/// static void
/// foo_bar_activatable_interface_init (GtkActivatableIface  *iface)
/// {
///   iface->update = foo_bar_activatable_update;
///   iface->sync_action_properties = foo_bar_activatable_sync_action_properties;
/// }
/// 
/// ... Break the reference using gtk_activatable_do_set_related_action()...
/// 
/// static void
/// foo_bar_dispose (GObject *object)
/// {
///   FooBar *bar = FOO_BAR (object);
///   FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (bar);
/// 
///   ...
/// 
///   if (priv->action)
///     {
///       gtk_activatable_do_set_related_action (GTK_ACTIVATABLE (bar), NULL);
///       priv->action = NULL;
///     }
///   G_OBJECT_CLASS (foo_bar_parent_class)->dispose (object);
/// }
/// 
/// ... Handle the “related-action” and “use-action-appearance” properties ...
/// 
/// static void
/// foo_bar_set_property (GObject         *object,
///                       guint            prop_id,
///                       const GValue    *value,
///                       GParamSpec      *pspec)
/// {
///   FooBar *bar = FOO_BAR (object);
///   FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (bar);
/// 
///   switch (prop_id)
///     {
/// 
///       ...
/// 
///     case PROP_ACTIVATABLE_RELATED_ACTION:
///       foo_bar_set_related_action (bar, g_value_get_object (value));
///       break;
///     case PROP_ACTIVATABLE_USE_ACTION_APPEARANCE:
///       foo_bar_set_use_action_appearance (bar, g_value_get_boolean (value));
///       break;
///     default:
///       G_OBJECT_WARN_INVALID_PROPERTY_ID (object, prop_id, pspec);
///       break;
///     }
/// }
/// 
/// static void
/// foo_bar_get_property (GObject         *object,
///                          guint            prop_id,
///                          GValue          *value,
///                          GParamSpec      *pspec)
/// {
///   FooBar *bar = FOO_BAR (object);
///   FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (bar);
/// 
///   switch (prop_id)
///     {
/// 
///       ...
/// 
///     case PROP_ACTIVATABLE_RELATED_ACTION:
///       g_value_set_object (value, priv->action);
///       break;
///     case PROP_ACTIVATABLE_USE_ACTION_APPEARANCE:
///       g_value_set_boolean (value, priv->use_action_appearance);
///       break;
///     default:
///       G_OBJECT_WARN_INVALID_PROPERTY_ID (object, prop_id, pspec);
///       break;
///     }
/// }
/// 
/// 
/// static void
/// foo_bar_set_use_action_appearance (FooBar   *bar,
/// 				   gboolean  use_appearance)
/// {
///   FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (bar);
/// 
///   if (priv->use_action_appearance != use_appearance)
///     {
///       priv->use_action_appearance = use_appearance;
///       
///       gtk_activatable_sync_action_properties (GTK_ACTIVATABLE (bar), priv->action);
///     }
/// }
/// 
/// ... call gtk_activatable_do_set_related_action() and then assign the action pointer,
/// no need to reference the action here since gtk_activatable_do_set_related_action() already
/// holds a reference here for you...
/// static void
/// foo_bar_set_related_action (FooBar    *bar,
/// 			    GtkAction *action)
/// {
///   FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (bar);
/// 
///   if (priv->action == action)
///     return;
/// 
///   gtk_activatable_do_set_related_action (GTK_ACTIVATABLE (bar), action);
/// 
///   priv->action = action;
/// }
/// 
/// ... Selectively reset and update activatable depending on the use-action-appearance property ...
/// static void
/// gtk_button_activatable_sync_action_properties (GtkActivatable       *activatable,
/// 		                                  GtkAction            *action)
/// {
///   GtkButtonPrivate *priv = GTK_BUTTON_GET_PRIVATE (activatable);
/// 
///   if (!action)
///     return;
/// 
///   if (gtk_action_is_visible (action))
///     gtk_widget_show (GTK_WIDGET (activatable));
///   else
///     gtk_widget_hide (GTK_WIDGET (activatable));
///   
///   gtk_widget_set_sensitive (GTK_WIDGET (activatable), gtk_action_is_sensitive (action));
/// 
///   ...
///   
///   if (priv->use_action_appearance)
///     {
///       if (gtk_action_get_stock_id (action))
/// 	foo_bar_set_stock (button, gtk_action_get_stock_id (action));
///       else if (gtk_action_get_label (action))
/// 	foo_bar_set_label (button, gtk_action_get_label (action));
/// 
///       ...
/// 
///     }
/// }
/// 
/// static void
/// foo_bar_activatable_update (GtkActivatable       *activatable,
/// 			       GtkAction            *action,
/// 			       const gchar          *property_name)
/// {
///   FooBarPrivate *priv = FOO_BAR_GET_PRIVATE (activatable);
/// 
///   if (strcmp (property_name, "visible") == 0)
///     {
///       if (gtk_action_is_visible (action))
/// 	gtk_widget_show (GTK_WIDGET (activatable));
///       else
/// 	gtk_widget_hide (GTK_WIDGET (activatable));
///     }
///   else if (strcmp (property_name, "sensitive") == 0)
///     gtk_widget_set_sensitive (GTK_WIDGET (activatable), gtk_action_is_sensitive (action));
/// 
///   ...
/// 
///   if (!priv->use_action_appearance)
///     return;
/// 
///   if (strcmp (property_name, "stock-id") == 0)
///     foo_bar_set_stock (button, gtk_action_get_stock_id (action));
///   else if (strcmp (property_name, "label") == 0)
///     foo_bar_set_label (button, gtk_action_get_label (action));
/// 
///   ...
/// }
/// ```
/// 
open class Activatable: ActivatableProtocol {
    /// Untyped pointer to the underlying `GtkActivatable` instance.
    /// For type-safe access, use the generated, typed pointer `activatable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Activatable` instance.
    public init(_ op: UnsafeMutablePointer<GtkActivatable>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ActivatableProtocol`
    /// `GtkActivatable` does not allow reference counting.
    public convenience init<T: ActivatableProtocol>(_ other: T) {
        self.init(cast(other.activatable_ptr))
        // no reference counting for GtkActivatable, cannot ref(cast(activatable_ptr))
    }

    /// Do-nothing destructor for`GtkActivatable`.
    deinit {
        // no reference counting for GtkActivatable, cannot unref(cast(activatable_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActivatableProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkActivatable.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActivatableProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkActivatable.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActivatableProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkActivatable.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActivatableProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkActivatable>(opaquePointer))
    }



}

public enum ActivatablePropertyName: String, PropertyNameProtocol {
    /// The action that this activatable will activate and receive
    /// updates from for various states and possibly appearance.
    /// 
    /// > `GtkActivatable` implementors need to handle the this property and
    /// > call gtk_activatable_do_set_related_action() when it changes.
    ///
    /// **related-action is deprecated:**
    /// This method is deprecated.
    case relatedAction = "related-action"
    /// Whether this activatable should reset its layout
    /// and appearance when setting the related action or when
    /// the action changes appearance.
    /// 
    /// See the `GtkAction` documentation directly to find which properties
    /// should be ignored by the `GtkActivatable` when this property is `false`.
    /// 
    /// > `GtkActivatable` implementors need to handle this property
    /// > and call gtk_activatable_sync_action_properties() on the activatable
    /// > widget when it changes.
    ///
    /// **use-action-appearance is deprecated:**
    /// This method is deprecated.
    case useActionAppearance = "use-action-appearance"
}

public extension ActivatableProtocol {
    /// Bind a `ActivatablePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ActivatablePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(activatable_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum ActivatableSignalName: String, SignalNameProtocol {

    /// The action that this activatable will activate and receive
    /// updates from for various states and possibly appearance.
    /// 
    /// > `GtkActivatable` implementors need to handle the this property and
    /// > call gtk_activatable_do_set_related_action() when it changes.
    ///
    /// **related-action is deprecated:**
    /// This method is deprecated.
    case notifyRelatedAction = "notify::related-action"
    /// Whether this activatable should reset its layout
    /// and appearance when setting the related action or when
    /// the action changes appearance.
    /// 
    /// See the `GtkAction` documentation directly to find which properties
    /// should be ignored by the `GtkActivatable` when this property is `false`.
    /// 
    /// > `GtkActivatable` implementors need to handle this property
    /// > and call gtk_activatable_sync_action_properties() on the activatable
    /// > widget when it changes.
    ///
    /// **use-action-appearance is deprecated:**
    /// This method is deprecated.
    case notifyUseActionAppearance = "notify::use-action-appearance"
}

public extension ActivatableProtocol {
    /// Connect a `ActivatableSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: ActivatableSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(activatable_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension ActivatableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkActivatable` instance.
    var activatable_ptr: UnsafeMutablePointer<GtkActivatable> { return ptr.assumingMemoryBound(to: GtkActivatable.self) }

    /// This is a utility function for `GtkActivatable` implementors.
    /// 
    /// When implementing `GtkActivatable` you must call this when
    /// handling changes of the `GtkActivatable`:related-action, and
    /// you must also use this to break references in `GObject`->dispose().
    /// 
    /// This function adds a reference to the currently set related
    /// action for you, it also makes sure the `GtkActivatable`->update()
    /// method is called when the related `GtkAction` properties change
    /// and registers to the action’s proxy list.
    /// 
    /// > Be careful to call this before setting the local
    /// > copy of the `GtkAction` property, since this function uses
    /// > gtk_activatable_get_related_action() to retrieve the
    /// > previous action.
    ///
    /// **do_set_related_action is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) func doSetRelated(action: ActionProtocol) {
        gtk_activatable_do_set_related_action(cast(activatable_ptr), cast(action.ptr))
    
    }

    /// Gets the related `GtkAction` for `activatable`.
    ///
    /// **get_related_action is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) func getRelatedAction() -> UnsafeMutablePointer<GtkAction>! {
        let rv = gtk_activatable_get_related_action(cast(activatable_ptr))
        return cast(rv)
    }

    /// Gets whether this activatable should reset its layout
    /// and appearance when setting the related action or when
    /// the action changes appearance.
    ///
    /// **get_use_action_appearance is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) func getUseActionAppearance() -> Bool {
        let rv = gtk_activatable_get_use_action_appearance(cast(activatable_ptr))
        return Bool(rv != 0)
    }

    /// Sets the related action on the `activatable` object.
    /// 
    /// > `GtkActivatable` implementors need to handle the `GtkActivatable`:related-action
    /// > property and call gtk_activatable_do_set_related_action() when it changes.
    ///
    /// **set_related_action is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) func setRelated(action: ActionProtocol) {
        gtk_activatable_set_related_action(cast(activatable_ptr), cast(action.ptr))
    
    }

    /// Sets whether this activatable should reset its layout and appearance
    /// when setting the related action or when the action changes appearance
    /// 
    /// > `GtkActivatable` implementors need to handle the
    /// > `GtkActivatable`:use-action-appearance property and call
    /// > gtk_activatable_sync_action_properties() to update `activatable`
    /// > if needed.
    ///
    /// **set_use_action_appearance is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) func setUseActionAppearance(useAppearance use_appearance: Bool) {
        gtk_activatable_set_use_action_appearance(cast(activatable_ptr), gboolean(use_appearance ? 1 : 0))
    
    }

    /// This is called to update the activatable completely, this is called
    /// internally when the `GtkActivatable`:related-action property is set
    /// or unset and by the implementing class when
    /// `GtkActivatable`:use-action-appearance changes.
    ///
    /// **sync_action_properties is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) func syncActionProperties(action: ActionProtocol) {
        gtk_activatable_sync_action_properties(cast(activatable_ptr), cast(action.ptr))
    
    }
    /// Gets the related `GtkAction` for `activatable`.
    ///
    /// **get_related_action is deprecated:**
    /// This method is deprecated.
    var relatedAction: UnsafeMutablePointer<GtkAction>! {
        /// Gets the related `GtkAction` for `activatable`.
        ///
        /// **get_related_action is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated) get {
            let rv = gtk_activatable_get_related_action(cast(activatable_ptr))
            return cast(rv)
        }
        /// Sets the related action on the `activatable` object.
        /// 
        /// > `GtkActivatable` implementors need to handle the `GtkActivatable`:related-action
        /// > property and call gtk_activatable_do_set_related_action() when it changes.
        ///
        /// **set_related_action is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated) nonmutating set {
            gtk_activatable_set_related_action(cast(activatable_ptr), cast(newValue))
        }
    }

    /// Gets whether this activatable should reset its layout
    /// and appearance when setting the related action or when
    /// the action changes appearance.
    ///
    /// **get_use_action_appearance is deprecated:**
    /// This method is deprecated.
    var useActionAppearance: Bool {
        /// Gets whether this activatable should reset its layout
        /// and appearance when setting the related action or when
        /// the action changes appearance.
        ///
        /// **get_use_action_appearance is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated) get {
            let rv = gtk_activatable_get_use_action_appearance(cast(activatable_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether this activatable should reset its layout and appearance
        /// when setting the related action or when the action changes appearance
        /// 
        /// > `GtkActivatable` implementors need to handle the
        /// > `GtkActivatable`:use-action-appearance property and call
        /// > gtk_activatable_sync_action_properties() to update `activatable`
        /// > if needed.
        ///
        /// **set_use_action_appearance is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated) nonmutating set {
            gtk_activatable_set_use_action_appearance(cast(activatable_ptr), gboolean(newValue ? 1 : 0))
        }
    }
}



// MARK: - AppChooser Interface

/// The `AppChooserProtocol` protocol exposes the methods and properties of an underlying `GtkAppChooser` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AppChooser`.
/// Alternatively, use `AppChooserRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkAppChooser` is an interface that can be implemented by widgets which
/// allow the user to choose an application (typically for the purpose of
/// opening a file). The main objects that implement this interface are
/// `GtkAppChooserWidget`, `GtkAppChooserDialog` and `GtkAppChooserButton`.
/// 
/// Applications are represented by GIO `GAppInfo` objects here.
/// GIO has a concept of recommended and fallback applications for a
/// given content type. Recommended applications are those that claim
/// to handle the content type itself, while fallback also includes
/// applications that handle a more generic content type. GIO also
/// knows the default and last-used application for a given content
/// type. The `GtkAppChooserWidget` provides detailed control over
/// whether the shown list of applications should include default,
/// recommended or fallback applications.
/// 
/// To obtain the application that has been selected in a `GtkAppChooser`,
/// use gtk_app_chooser_get_app_info().
public protocol AppChooserProtocol: WidgetProtocol {
    /// Untyped pointer to the underlying `GtkAppChooser` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkAppChooser` instance.
    var app_chooser_ptr: UnsafeMutablePointer<GtkAppChooser> { get }
}

/// The `AppChooserRef` type acts as a lightweight Swift reference to an underlying `GtkAppChooser` instance.
/// It exposes methods that can operate on this data type through `AppChooserProtocol` conformance.
/// Use `AppChooserRef` only as an `unowned` reference to an existing `GtkAppChooser` instance.
///
/// `GtkAppChooser` is an interface that can be implemented by widgets which
/// allow the user to choose an application (typically for the purpose of
/// opening a file). The main objects that implement this interface are
/// `GtkAppChooserWidget`, `GtkAppChooserDialog` and `GtkAppChooserButton`.
/// 
/// Applications are represented by GIO `GAppInfo` objects here.
/// GIO has a concept of recommended and fallback applications for a
/// given content type. Recommended applications are those that claim
/// to handle the content type itself, while fallback also includes
/// applications that handle a more generic content type. GIO also
/// knows the default and last-used application for a given content
/// type. The `GtkAppChooserWidget` provides detailed control over
/// whether the shown list of applications should include default,
/// recommended or fallback applications.
/// 
/// To obtain the application that has been selected in a `GtkAppChooser`,
/// use gtk_app_chooser_get_app_info().
public struct AppChooserRef: AppChooserProtocol {
    /// Untyped pointer to the underlying `GtkAppChooser` instance.
    /// For type-safe access, use the generated, typed pointer `app_chooser_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AppChooserRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkAppChooser>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AppChooserProtocol`
    init<T: AppChooserProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AppChooser` type acts as a reference-counted owner of an underlying `GtkAppChooser` instance.
/// It provides the methods that can operate on this data type through `AppChooserProtocol` conformance.
/// Use `AppChooser` as a strong reference or owner of a `GtkAppChooser` instance.
///
/// `GtkAppChooser` is an interface that can be implemented by widgets which
/// allow the user to choose an application (typically for the purpose of
/// opening a file). The main objects that implement this interface are
/// `GtkAppChooserWidget`, `GtkAppChooserDialog` and `GtkAppChooserButton`.
/// 
/// Applications are represented by GIO `GAppInfo` objects here.
/// GIO has a concept of recommended and fallback applications for a
/// given content type. Recommended applications are those that claim
/// to handle the content type itself, while fallback also includes
/// applications that handle a more generic content type. GIO also
/// knows the default and last-used application for a given content
/// type. The `GtkAppChooserWidget` provides detailed control over
/// whether the shown list of applications should include default,
/// recommended or fallback applications.
/// 
/// To obtain the application that has been selected in a `GtkAppChooser`,
/// use gtk_app_chooser_get_app_info().
open class AppChooser: Widget, AppChooserProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `AppChooser` instance.
    public init(_ op: UnsafeMutablePointer<GtkAppChooser>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `AppChooserProtocol`
    /// Will retain `GtkAppChooser`.
    public convenience init<T: AppChooserProtocol>(_ other: T) {
        self.init(cast(other.app_chooser_ptr))
        g_object_ref(cast(app_chooser_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkAppChooser.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkAppChooser.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkAppChooser.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkAppChooser>(opaquePointer))
    }



}

public enum AppChooserPropertyName: String, PropertyNameProtocol {
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
    /// The content type of the `GtkAppChooser` object.
    /// 
    /// See [GContentType][gio-GContentType]
    /// for more information about content types.
    case contentType = "content-type"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
    case events = "events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget`:hexpand and `GtkWidget`:vexpand
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
    /// Enables or disables the emission of `GtkWidget`::query-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget`::query-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See gtk_widget_set_hexpand().
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget`:hexpand property. See gtk_widget_get_hexpand_set().
    case hexpandSet = "hexpand-set"
    case isFocus = "is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case marginTop = "margin-top"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See gtk_widget_set_opacity() for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case receivesDefault = "receives-default"
    /// The scale factor of the widget. See gtk_widget_get_scale_factor() for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language][PangoMarkupFormat].
    /// Also see gtk_tooltip_set_markup().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see gtk_tooltip_set_text().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See gtk_widget_set_vexpand().
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget`:vexpand property. See gtk_widget_get_vexpand_set().
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
}

public extension AppChooserProtocol {
    /// Bind a `AppChooserPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: AppChooserPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(app_chooser_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum AppChooserSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    /// The ::button-press-event signal will be emitted when a button
    /// (typically from a mouse) is pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonPressEvent = "button-press-event"
    /// The ::button-release-event signal will be emitted when a button
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
    /// The ::child-notify signal is emitted for each
    /// [child property][child-properties]  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// The ::composited-changed signal is emitted when the composited
    /// status of `widgets` screen changes.
    /// See gdk_screen_is_composited().
    ///
    /// **composited-changed is deprecated:**
    /// Use GdkScreen::composited-changed instead.
    case compositedChanged = "composited-changed"
    /// The ::configure-event signal will be emitted when the size, position or
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
    /// The ::delete-event signal is emitted if a user requests that
    /// a toplevel window is closed. The default handler for this signal
    /// destroys the window. Connecting gtk_widget_hide_on_delete() to
    /// this signal will cause the window to be hidden instead, so that
    /// it can later be shown again without reconstructing it.
    case deleteEvent = "delete-event"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The ::destroy-event signal is emitted when a `GdkWindow` is destroyed.
    /// You rarely get this signal, because most widgets disconnect themselves
    /// from their window before they destroy it, so no widget owns the
    /// window at destroy time.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case destroyEvent = "destroy-event"
    /// The ::direction-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The ::drag-begin signal is emitted on the drag source when a drag is
    /// started. A typical reason to connect to this signal is to set up a
    /// custom drag icon with e.g. gtk_drag_source_set_icon_pixbuf().
    /// 
    /// Note that some widgets set up a drag icon in the default handler of
    /// this signal, so you may have to use g_signal_connect_after() to
    /// override what the default handler did.
    case dragBegin = "drag-begin"
    /// The ::drag-data-delete signal is emitted on the drag source when a drag
    /// with the action `GDK_ACTION_MOVE` is successfully completed. The signal
    /// handler is responsible for deleting the data that has been dropped. What
    /// "delete" means depends on the context of the drag operation.
    case dragDataDelete = "drag-data-delete"
    /// The ::drag-data-get signal is emitted on the drag source when the drop
    /// site requests the data which is dragged. It is the responsibility of
    /// the signal handler to fill `data` with the data in the format which
    /// is indicated by `info`. See gtk_selection_data_set() and
    /// gtk_selection_data_set_text().
    case dragDataGet = "drag-data-get"
    /// The ::drag-data-received signal is emitted on the drop site when the
    /// dragged data has been received. If the data was received in order to
    /// determine whether the drop will be accepted, the handler is expected
    /// to call gdk_drag_status() and not finish the drag.
    /// If the data was received in response to a `GtkWidget`::drag-drop signal
    /// (and this is the last target to be received), the handler for this
    /// signal is expected to process the received data and then call
    /// gtk_drag_finish(), setting the `success` parameter depending on
    /// whether the data was processed successfully.
    /// 
    /// Applications must create some means to determine why the signal was emitted
    /// and therefore whether to call gdk_drag_status() or gtk_drag_finish().
    /// 
    /// The handler may inspect the selected action with
    /// gdk_drag_context_get_selected_action() before calling
    /// gtk_drag_finish(), e.g. to implement `GDK_ACTION_ASK` as
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
    /// The ::drag-drop signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the cursor position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// Otherwise, the handler returns `true`. In this case, the handler must
    /// ensure that gtk_drag_finish() is called to let the source know that
    /// the drop is done. The call to gtk_drag_finish() can be done either
    /// directly or in a `GtkWidget`::drag-data-received handler which gets
    /// triggered by calling gtk_drag_get_data() to receive the data for one
    /// or more of the supported targets.
    case dragDrop = "drag-drop"
    /// The ::drag-end signal is emitted on the drag source when a drag is
    /// finished.  A typical reason to connect to this signal is to undo
    /// things done in `GtkWidget`::drag-begin.
    case dragEnd = "drag-end"
    /// The ::drag-failed signal is emitted on the drag source when a drag has
    /// failed. The signal handler may hook custom code to handle a failed DnD
    /// operation based on the type of error, it returns `true` is the failure has
    /// been already handled (not showing the default "drag operation failed"
    /// animation), otherwise it returns `false`.
    case dragFailed = "drag-failed"
    /// The ::drag-leave signal is emitted on the drop site when the cursor
    /// leaves the widget. A typical reason to connect to this signal is to
    /// undo things done in `GtkWidget`::drag-motion, e.g. undo highlighting
    /// with gtk_drag_unhighlight().
    /// 
    /// 
    /// Likewise, the `GtkWidget`::drag-leave signal is also emitted before the
    /// ::drag-drop signal, for instance to allow cleaning up of a preview item
    /// created in the `GtkWidget`::drag-motion signal handler.
    case dragLeave = "drag-leave"
    /// The ::drag-motion signal is emitted on the drop site when the user
    /// moves the cursor over the widget during a drag. The signal handler
    /// must determine whether the cursor position is in a drop zone or not.
    /// If it is not in a drop zone, it returns `false` and no further processing
    /// is necessary. Otherwise, the handler returns `true`. In this case, the
    /// handler is responsible for providing the necessary information for
    /// displaying feedback to the user, by calling gdk_drag_status().
    /// 
    /// If the decision whether the drop will be accepted or rejected can't be
    /// made based solely on the cursor position and the type of the data, the
    /// handler may inspect the dragged data by calling gtk_drag_get_data() and
    /// defer the gdk_drag_status() call to the `GtkWidget`::drag-data-received
    /// handler. Note that you must pass `GTK_DEST_DEFAULT_DROP`,
    /// `GTK_DEST_DEFAULT_MOTION` or `GTK_DEST_DEFAULT_ALL` to gtk_drag_dest_set()
    /// when using the drag-motion signal that way.
    /// 
    /// Also note that there is no drag-enter signal. The drag receiver has to
    /// keep track of whether he has received any drag-motion signals since the
    /// last `GtkWidget`::drag-leave and if not, treat the drag-motion signal as
    /// an "enter" signal. Upon an "enter", the handler will typically highlight
    /// the drop site with gtk_drag_highlight().
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
    /// gtk_widget_get_allocated_width() and
    /// gtk_widget_get_allocated_height().
    /// 
    /// Signal handlers connected to this signal can modify the cairo
    /// context passed as `cr` in any way they like and don't need to
    /// restore it. The signal emission takes care of calling cairo_save()
    /// before and cairo_restore() after invoking the handler.
    /// 
    /// The signal handler will get a `cr` with a clip region already set to the
    /// widget's dirty region, i.e. to the area that needs repainting.  Complicated
    /// widgets that want to avoid redrawing themselves completely can get the full
    /// extents of the clip region with gdk_cairo_get_clip_rectangle(), or they can
    /// get a finer-grained representation of the dirty region with
    /// cairo_copy_clip_rectangle_list().
    case draw = "draw"
    /// The ::enter-notify-event will be emitted when the pointer enters
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_ENTER_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case enterNotifyEvent = "enter-notify-event"
    /// The GTK+ main loop will emit three signals for each GDK event delivered
    /// to a widget: one generic ::event signal, another, more specific,
    /// signal that matches the type of event delivered (e.g.
    /// `GtkWidget`::key-press-event) and finally a generic
    /// `GtkWidget`::event-after signal.
    case event = "event"
    /// After the emission of the `GtkWidget`::event signal and (optionally)
    /// the second more specific signal, ::event-after will be emitted
    /// regardless of the previous two signals handlers return values.
    case eventAfter = "event-after"
    case focus = "focus"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The ::focus-in-event signal will be emitted when the keyboard focus
    /// enters the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusInEvent = "focus-in-event"
    /// The ::focus-out-event signal will be emitted when the keyboard focus
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
    /// The ::grab-notify signal is emitted when a widget becomes
    /// shadowed by a GTK+ grab (not a pointer or keyboard grab) on
    /// another widget, or when it becomes unshadowed due to a grab
    /// being removed.
    /// 
    /// A widget is shadowed by a gtk_grab_add() when the topmost
    /// grab widget in the grab stack of its window group is not
    /// its ancestor.
    case grabNotify = "grab-notify"
    /// The ::hide signal is emitted when `widget` is hidden, for example with
    /// gtk_widget_hide().
    case hide = "hide"
    /// The ::hierarchy-changed signal is emitted when the
    /// anchored state of a widget changes. A widget is
    /// “anchored” when its toplevel
    /// ancestor is a `GtkWindow`. This signal is emitted when
    /// a widget changes from un-anchored to anchored or vice-versa.
    case hierarchyChanged = "hierarchy-changed"
    /// The ::key-press-event signal is emitted when a key is pressed. The signal
    /// emission will reoccur at the key-repeat rate when the key is kept pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyPressEvent = "key-press-event"
    /// The ::key-release-event signal is emitted when a key is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyReleaseEvent = "key-release-event"
    /// Gets emitted if keyboard navigation fails.
    /// See gtk_widget_keynav_failed() for details.
    case keynavFailed = "keynav-failed"
    /// The ::leave-notify-event will be emitted when the pointer leaves
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_LEAVE_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case leaveNotifyEvent = "leave-notify-event"
    /// The ::map signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// gtk_widget_set_visible()) and all its parents up to the toplevel widget
    /// are also visible. Once the map has occurred, `GtkWidget`::map-event will
    /// be emitted.
    /// 
    /// The ::map signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget`::unmap.
    case map = "map"
    /// The ::map-event signal will be emitted when the `widget`'s window is
    /// mapped. A window is mapped when it becomes visible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case mapEvent = "map-event"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// The ::motion-notify-event signal is emitted when the pointer moves
    /// over the widget's `GdkWindow`.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_POINTER_MOTION_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case motionNotifyEvent = "motion-notify-event"
    case moveFocus = "move-focus"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through g_object_set_property(), g_object_set(), et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to g_object_set_property() results
    /// in ::notify being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call g_object_notify() or g_object_notify_by_pspec(),
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// g_signal_connect() call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The ::parent-set signal is emitted when a new parent
    /// has been set on a widget.
    case parentSet = "parent-set"
    /// This signal gets emitted whenever a widget should pop up a context
    /// menu. This usually happens through the standard key binding mechanism;
    /// by pressing a certain key while a widget is focused, the user can cause
    /// the widget to pop up a menu.  For example, the `GtkEntry` widget creates
    /// a menu with clipboard commands. See the
    /// [Popup Menu Migration Checklist][checklist-popup-menu]
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
    /// g_object_notify() to emit property-changed
    /// notifications. `AtkObject`::property-changed is needed by the
    /// implementation of atk_add_global_event_listener() because GObject
    /// notify doesn't support emission hooks.
    case propertyChange = "property-change"
    /// The ::property-notify-event signal will be emitted when a property on
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
    /// Emitted when `GtkWidget`:has-tooltip is `true` and the hover timeout
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
    /// The ::realize signal is emitted when `widget` is associated with a
    /// `GdkWindow`, which means that gtk_widget_realize() has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// The ::screen-changed signal gets emitted when the
    /// screen of a widget has changed.
    case screenChanged = "screen-changed"
    /// The ::scroll-event signal is emitted when a button in the 4 to 7
    /// range is pressed. Wheel mice are usually configured to generate
    /// button press events for buttons 4 and 5 when the wheel is turned.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_SCROLL_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case scrollEvent = "scroll-event"
    /// The ::selection-clear-event signal will be emitted when the
    /// the `widget`'s window has lost ownership of a selection.
    case selectionClearEvent = "selection-clear-event"
    case selectionGet = "selection-get"
    case selectionNotifyEvent = "selection-notify-event"
    case selectionReceived = "selection-received"
    /// The ::selection-request-event signal will be emitted when
    /// another client requests ownership of the selection owned by
    /// the `widget`'s window.
    case selectionRequestEvent = "selection-request-event"
    /// The ::show signal is emitted when `widget` is shown, for example with
    /// gtk_widget_show().
    case show = "show"
    case showHelp = "show-help"
    case sizeAllocate = "size-allocate"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The ::state-changed signal is emitted when the widget state changes.
    /// See gtk_widget_get_state().
    ///
    /// **state-changed is deprecated:**
    /// Use #GtkWidget::state-flags-changed instead.
    case stateChanged = "state-changed"
    /// The ::state-flags-changed signal is emitted when the widget state
    /// changes, see gtk_widget_get_state_flags().
    case stateFlagsChanged = "state-flags-changed"
    /// The ::style-set signal is emitted when a new style has been set
    /// on a widget. Note that style-modifying functions like
    /// gtk_widget_modify_base() also cause this signal to be emitted.
    /// 
    /// Note that this signal is emitted for changes to the deprecated
    /// `GtkStyle`. To track changes to the `GtkStyleContext` associated
    /// with a widget, use the `GtkWidget`::style-updated signal.
    ///
    /// **style-set is deprecated:**
    /// Use the #GtkWidget::style-updated signal
    case styleSet = "style-set"
    /// The ::style-updated signal is a convenience signal that is emitted when the
    /// `GtkStyleContext`::changed signal is emitted on the `widget`'s associated
    /// `GtkStyleContext` as returned by gtk_widget_get_style_context().
    /// 
    /// Note that style-modifying functions like gtk_widget_override_color() also
    /// cause this signal to be emitted.
    case styleUpdated = "style-updated"
    case touchEvent = "touch-event"
    /// The ::unmap signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As ::unmap indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The ::unmap-event signal will be emitted when the `widget`'s window is
    /// unmapped. A window is unmapped when it becomes invisible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case unmapEvent = "unmap-event"
    /// The ::unrealize signal is emitted when the `GdkWindow` associated with
    /// `widget` is destroyed, which means that gtk_widget_unrealize() has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
    /// The ::visibility-notify-event will be emitted when the `widget`'s
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
    /// The ::window-state-event will be emitted when the state of the
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
    /// The content type of the `GtkAppChooser` object.
    /// 
    /// See [GContentType][gio-GContentType]
    /// for more information about content types.
    case notifyContentType = "notify::content-type"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case notifyDoubleBuffered = "notify::double-buffered"
    case notifyEvents = "notify::events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget`:hexpand and `GtkWidget`:vexpand
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
    /// Enables or disables the emission of `GtkWidget`::query-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget`::query-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See gtk_widget_set_hexpand().
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget`:hexpand property. See gtk_widget_get_hexpand_set().
    case notifyHexpandSet = "notify::hexpand-set"
    case notifyIsFocus = "notify::is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case notifyMargin = "notify::margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case notifyMarginLeft = "notify::margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case notifyMarginRight = "notify::margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// gtk_widget_set_size_request() for example.
    case notifyMarginTop = "notify::margin-top"
    case notifyName = "notify::name"
    case notifyNoShowAll = "notify::no-show-all"
    /// The requested opacity of the widget. See gtk_widget_set_opacity() for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case notifyOpacity = "notify::opacity"
    case notifyParent = "notify::parent"
    case notifyReceivesDefault = "notify::receives-default"
    /// The scale factor of the widget. See gtk_widget_get_scale_factor() for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case notifyStyle = "notify::style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language][PangoMarkupFormat].
    /// Also see gtk_tooltip_set_markup().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see gtk_tooltip_set_text().
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget`:has-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget`::query-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget`:tooltip-text and `GtkWidget`:tooltip-markup
    /// are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    /// Whether to expand vertically. See gtk_widget_set_vexpand().
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget`:vexpand property. See gtk_widget_get_vexpand_set().
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    case notifyWidthRequest = "notify::width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case notifyWindow = "notify::window"
}

public extension AppChooserProtocol {
    /// Connect a `AppChooserSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: AppChooserSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(app_chooser_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension AppChooserProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAppChooser` instance.
    var app_chooser_ptr: UnsafeMutablePointer<GtkAppChooser> { return ptr.assumingMemoryBound(to: GtkAppChooser.self) }

    /// Returns the currently selected application.
    func getAppInfo() -> UnsafeMutablePointer<GAppInfo>! {
        let rv = gtk_app_chooser_get_app_info(cast(app_chooser_ptr))
        return cast(rv)
    }

    /// Returns the current value of the `GtkAppChooser`:content-type property.
    func getContentType() -> String! {
        let rv = gtk_app_chooser_get_content_type(cast(app_chooser_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Reloads the list of applications.
    func refresh() {
        gtk_app_chooser_refresh(cast(app_chooser_ptr))
    
    }
    /// Returns the currently selected application.
    var appInfo: UnsafeMutablePointer<GAppInfo>! {
        /// Returns the currently selected application.
        get {
            let rv = gtk_app_chooser_get_app_info(cast(app_chooser_ptr))
            return cast(rv)
        }
    }

    /// Returns the current value of the `GtkAppChooser`:content-type property.
    var contentType: String! {
        /// Returns the current value of the `GtkAppChooser`:content-type property.
        get {
            let rv = gtk_app_chooser_get_content_type(cast(app_chooser_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }
}



// MARK: - Buildable Interface

/// The `BuildableProtocol` protocol exposes the methods and properties of an underlying `GtkBuildable` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Buildable`.
/// Alternatively, use `BuildableRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkBuildable allows objects to extend and customize their deserialization
/// from [GtkBuilder UI descriptions][BUILDER-UI].
/// The interface includes methods for setting names and properties of objects,
/// parsing custom tags and constructing child objects.
/// 
/// The GtkBuildable interface is implemented by all widgets and
/// many of the non-widget objects that are provided by GTK+. The
/// main user of this interface is `GtkBuilder`. There should be
/// very little need for applications to call any of these functions directly.
/// 
/// An object only needs to implement this interface if it needs to extend the
/// `GtkBuilder` format or run any extra routines at deserialization time.
public protocol BuildableProtocol {
    /// Untyped pointer to the underlying `GtkBuildable` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkBuildable` instance.
    var buildable_ptr: UnsafeMutablePointer<GtkBuildable> { get }
}

/// The `BuildableRef` type acts as a lightweight Swift reference to an underlying `GtkBuildable` instance.
/// It exposes methods that can operate on this data type through `BuildableProtocol` conformance.
/// Use `BuildableRef` only as an `unowned` reference to an existing `GtkBuildable` instance.
///
/// GtkBuildable allows objects to extend and customize their deserialization
/// from [GtkBuilder UI descriptions][BUILDER-UI].
/// The interface includes methods for setting names and properties of objects,
/// parsing custom tags and constructing child objects.
/// 
/// The GtkBuildable interface is implemented by all widgets and
/// many of the non-widget objects that are provided by GTK+. The
/// main user of this interface is `GtkBuilder`. There should be
/// very little need for applications to call any of these functions directly.
/// 
/// An object only needs to implement this interface if it needs to extend the
/// `GtkBuilder` format or run any extra routines at deserialization time.
public struct BuildableRef: BuildableProtocol {
    /// Untyped pointer to the underlying `GtkBuildable` instance.
    /// For type-safe access, use the generated, typed pointer `buildable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension BuildableRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkBuildable>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `BuildableProtocol`
    init<T: BuildableProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Buildable` type acts as an owner of an underlying `GtkBuildable` instance.
/// It provides the methods that can operate on this data type through `BuildableProtocol` conformance.
/// Use `Buildable` as a strong reference or owner of a `GtkBuildable` instance.
///
/// GtkBuildable allows objects to extend and customize their deserialization
/// from [GtkBuilder UI descriptions][BUILDER-UI].
/// The interface includes methods for setting names and properties of objects,
/// parsing custom tags and constructing child objects.
/// 
/// The GtkBuildable interface is implemented by all widgets and
/// many of the non-widget objects that are provided by GTK+. The
/// main user of this interface is `GtkBuilder`. There should be
/// very little need for applications to call any of these functions directly.
/// 
/// An object only needs to implement this interface if it needs to extend the
/// `GtkBuilder` format or run any extra routines at deserialization time.
open class Buildable: BuildableProtocol {
    /// Untyped pointer to the underlying `GtkBuildable` instance.
    /// For type-safe access, use the generated, typed pointer `buildable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Buildable` instance.
    public init(_ op: UnsafeMutablePointer<GtkBuildable>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `BuildableProtocol`
    /// `GtkBuildable` does not allow reference counting.
    public convenience init<T: BuildableProtocol>(_ other: T) {
        self.init(cast(other.buildable_ptr))
        // no reference counting for GtkBuildable, cannot ref(cast(buildable_ptr))
    }

    /// Do-nothing destructor for`GtkBuildable`.
    deinit {
        // no reference counting for GtkBuildable, cannot unref(cast(buildable_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkBuildable.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkBuildable.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkBuildable.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkBuildable>(opaquePointer))
    }



}

// MARK: - no Buildable properties

// MARK: - no signals


public extension BuildableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBuildable` instance.
    var buildable_ptr: UnsafeMutablePointer<GtkBuildable> { return ptr.assumingMemoryBound(to: GtkBuildable.self) }

    /// Adds a child to `buildable`. `type` is an optional string
    /// describing how the child should be added.
    func addChild(builder: BuilderProtocol, child: GLibObject.ObjectProtocol, type: UnsafePointer<gchar>) {
        gtk_buildable_add_child(cast(buildable_ptr), cast(builder.ptr), cast(child.ptr), type)
    
    }

    /// Constructs a child of `buildable` with the name `name`.
    /// 
    /// `GtkBuilder` calls this function if a “constructor” has been
    /// specified in the UI definition.
    func constructChild(builder: BuilderProtocol, name: UnsafePointer<gchar>) -> UnsafeMutablePointer<GObject>! {
        let rv = gtk_buildable_construct_child(cast(buildable_ptr), cast(builder.ptr), name)
        return cast(rv)
    }

    /// This is similar to gtk_buildable_parser_finished() but is
    /// called once for each custom tag handled by the `buildable`.
    func customFinished(builder: BuilderProtocol, child: GLibObject.ObjectProtocol, tagname: UnsafePointer<gchar>, data: UnsafeMutableRawPointer) {
        gtk_buildable_custom_finished(cast(buildable_ptr), cast(builder.ptr), cast(child.ptr), tagname, cast(data))
    
    }

    /// This is called at the end of each custom element handled by
    /// the buildable.
    func customTagEnd(builder: BuilderProtocol, child: GLibObject.ObjectProtocol, tagname: UnsafePointer<gchar>, data: UnsafeMutablePointer<UnsafeMutableRawPointer>) {
        gtk_buildable_custom_tag_end(cast(buildable_ptr), cast(builder.ptr), cast(child.ptr), tagname, cast(data))
    
    }

    /// This is called for each unknown element under <child>.
    func customTagStart(builder: BuilderProtocol, child: GLibObject.ObjectProtocol, tagname: UnsafePointer<gchar>, parser: MarkupParserProtocol, data: UnsafeMutablePointer<UnsafeMutableRawPointer>) -> Bool {
        let rv = gtk_buildable_custom_tag_start(cast(buildable_ptr), cast(builder.ptr), cast(child.ptr), tagname, cast(parser.ptr), cast(data))
        return Bool(rv != 0)
    }

    /// Get the internal child called `childname` of the `buildable` object.
    func getInternalChild(builder: BuilderProtocol, childname: UnsafePointer<gchar>) -> UnsafeMutablePointer<GObject>! {
        let rv = gtk_buildable_get_internal_child(cast(buildable_ptr), cast(builder.ptr), childname)
        return cast(rv)
    }

    /// Gets the name of the `buildable` object.
    /// 
    /// `GtkBuilder` sets the name based on the
    /// [GtkBuilder UI definition][BUILDER-UI]
    /// used to construct the `buildable`.
    func getName() -> String! {
        let rv = gtk_buildable_get_name(cast(buildable_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Called when the builder finishes the parsing of a
    /// [GtkBuilder UI definition][BUILDER-UI].
    /// Note that this will be called once for each time
    /// gtk_builder_add_from_file() or gtk_builder_add_from_string()
    /// is called on a builder.
    func parserFinished(builder: BuilderProtocol) {
        gtk_buildable_parser_finished(cast(buildable_ptr), cast(builder.ptr))
    
    }

    /// Sets the property name `name` to `value` on the `buildable` object.
    func setBuildableProperty(builder: BuilderProtocol, name: UnsafePointer<gchar>, value: GLibObject.ValueProtocol) {
        gtk_buildable_set_buildable_property(cast(buildable_ptr), cast(builder.ptr), name, cast(value.ptr))
    
    }

    /// Sets the name of the `buildable` object.
    func set(name: UnsafePointer<gchar>) {
        gtk_buildable_set_name(cast(buildable_ptr), name)
    
    }
    /// Gets the name of the `buildable` object.
    /// 
    /// `GtkBuilder` sets the name based on the
    /// [GtkBuilder UI definition][BUILDER-UI]
    /// used to construct the `buildable`.
    var name: String! {
        /// Gets the name of the `buildable` object.
        /// 
        /// `GtkBuilder` sets the name based on the
        /// [GtkBuilder UI definition][BUILDER-UI]
        /// used to construct the `buildable`.
        get {
            let rv = gtk_buildable_get_name(cast(buildable_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Sets the name of the `buildable` object.
        nonmutating set {
            gtk_buildable_set_name(cast(buildable_ptr), newValue)
        }
    }
}



