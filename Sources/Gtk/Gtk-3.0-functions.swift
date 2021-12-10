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

/// Finds the first accelerator in any `GtkAccelGroup` attached
/// to `object` that matches `accel_key` and `accel_mods`, and
/// activates that accelerator.
@inlinable public func accelGroupsActivate<ObjectT: GLibObject.ObjectProtocol>(object: ObjectT, accelKey: Int, accelMods: Gdk.ModifierType) -> Bool {
    let rv = ((gtk_accel_groups_activate(object.object_ptr, guint(accelKey), accelMods.value)) != 0)
    return rv
}




/// Gets a list of all accel groups which are attached to `object`.
@inlinable public func accelGroupsFrom<ObjectT: GLibObject.ObjectProtocol>(object: ObjectT) -> GLib.SListRef! {
    guard let rv = GLib.SListRef(gtk_accel_groups_from_object(object.object_ptr)) else { return nil }
    return rv
}




/// Gets the modifier mask.
/// 
/// The modifier mask determines which modifiers are considered significant
/// for keyboard accelerators. See `gtk_accelerator_set_default_mod_mask()`.
@inlinable public func acceleratorGetDefaultModMask() -> Gdk.ModifierType {
    let rv = Gdk.ModifierType(gtk_accelerator_get_default_mod_mask())
    return rv
}




/// Converts an accelerator keyval and modifier mask into a string
/// which can be used to represent the accelerator to the user.
@inlinable public func acceleratorGetLabel(acceleratorKey: Int, acceleratorMods: Gdk.ModifierType) -> String! {
    guard let rv = gtk_accelerator_get_label(guint(acceleratorKey), acceleratorMods.value).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Converts an accelerator keyval and modifier mask
/// into a (possibly translated) string that can be displayed to
/// a user, similarly to `gtk_accelerator_get_label()`, but handling
/// keycodes.
/// 
/// This is only useful for system-level components, applications
/// should use `gtk_accelerator_parse()` instead.
@inlinable public func acceleratorGetLabelWithKeycode(display: Gdk.DisplayRef? = nil, acceleratorKey: Int, keycode: Int, acceleratorMods: Gdk.ModifierType) -> String! {
    guard let rv = gtk_accelerator_get_label_with_keycode(display?.display_ptr, guint(acceleratorKey), guint(keycode), acceleratorMods.value).map({ String(cString: $0) }) else { return nil }
    return rv
}
/// Converts an accelerator keyval and modifier mask
/// into a (possibly translated) string that can be displayed to
/// a user, similarly to `gtk_accelerator_get_label()`, but handling
/// keycodes.
/// 
/// This is only useful for system-level components, applications
/// should use `gtk_accelerator_parse()` instead.
@inlinable public func acceleratorGetLabelWithKeycode<DisplayT: Gdk.DisplayProtocol>(display: DisplayT?, acceleratorKey: Int, keycode: Int, acceleratorMods: Gdk.ModifierType) -> String! {
    guard let rv = gtk_accelerator_get_label_with_keycode(display?.display_ptr, guint(acceleratorKey), guint(keycode), acceleratorMods.value).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Converts an accelerator keyval and modifier mask into a string
/// parseable by `gtk_accelerator_parse()`. For example, if you pass in
/// `GDK_KEY_q` and `GDK_CONTROL_MASK`, this function returns “&lt;Control&gt;q”.
/// 
/// If you need to display accelerators in the user interface,
/// see `gtk_accelerator_get_label()`.
@inlinable public func acceleratorName(acceleratorKey: Int, acceleratorMods: Gdk.ModifierType) -> String! {
    guard let rv = gtk_accelerator_name(guint(acceleratorKey), acceleratorMods.value).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Converts an accelerator keyval and modifier mask
/// into a string parseable by `gtk_accelerator_parse_with_keycode()`,
/// similarly to `gtk_accelerator_name()` but handling keycodes.
/// This is only useful for system-level components, applications
/// should use `gtk_accelerator_parse()` instead.
@inlinable public func acceleratorNameWithKeycode(display: Gdk.DisplayRef? = nil, acceleratorKey: Int, keycode: Int, acceleratorMods: Gdk.ModifierType) -> String! {
    guard let rv = gtk_accelerator_name_with_keycode(display?.display_ptr, guint(acceleratorKey), guint(keycode), acceleratorMods.value).map({ String(cString: $0) }) else { return nil }
    return rv
}
/// Converts an accelerator keyval and modifier mask
/// into a string parseable by `gtk_accelerator_parse_with_keycode()`,
/// similarly to `gtk_accelerator_name()` but handling keycodes.
/// This is only useful for system-level components, applications
/// should use `gtk_accelerator_parse()` instead.
@inlinable public func acceleratorNameWithKeycode<DisplayT: Gdk.DisplayProtocol>(display: DisplayT?, acceleratorKey: Int, keycode: Int, acceleratorMods: Gdk.ModifierType) -> String! {
    guard let rv = gtk_accelerator_name_with_keycode(display?.display_ptr, guint(acceleratorKey), guint(keycode), acceleratorMods.value).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Parses a string representing an accelerator. The format looks like
/// “&lt;Control&gt;a” or “&lt;Shift&gt;&lt;Alt&gt;F1” or “&lt;Release&gt;z” (the last one is
/// for key release).
/// 
/// The parser is fairly liberal and allows lower or upper case, and also
/// abbreviations such as “&lt;Ctl&gt;” and “&lt;Ctrl&gt;”. Key names are parsed using
/// `gdk_keyval_from_name()`. For character keys the name is not the symbol,
/// but the lowercase name, e.g. one would use “&lt;Ctrl&gt;minus” instead of
/// “&lt;Ctrl&gt;-”.
/// 
/// If the parse fails, `accelerator_key` and `accelerator_mods` will
/// be set to 0 (zero).
@inlinable public func acceleratorParse(accelerator: UnsafePointer<gchar>!, acceleratorKey: UnsafeMutablePointer<guint>! = nil, acceleratorMods: UnsafeMutablePointer<GdkModifierType>! = nil) {
    gtk_accelerator_parse(accelerator, acceleratorKey, acceleratorMods)

}




/// Parses a string representing an accelerator, similarly to
/// `gtk_accelerator_parse()` but handles keycodes as well. This is only
/// useful for system-level components, applications should use
/// `gtk_accelerator_parse()` instead.
/// 
/// If `accelerator_codes` is given and the result stored in it is non-`nil`,
/// the result must be freed with `g_free()`.
/// 
/// If a keycode is present in the accelerator and no `accelerator_codes`
/// is given, the parse will fail.
/// 
/// If the parse fails, `accelerator_key`, `accelerator_mods` and
/// `accelerator_codes` will be set to 0 (zero).
@inlinable public func acceleratorParseWithKeycode(accelerator: UnsafePointer<gchar>!, acceleratorKey: UnsafeMutablePointer<guint>! = nil, acceleratorCodes: UnsafeMutablePointer<UnsafeMutablePointer<guint>?>! = nil, acceleratorMods: UnsafeMutablePointer<GdkModifierType>! = nil) {
    gtk_accelerator_parse_with_keycode(accelerator, acceleratorKey, acceleratorCodes, acceleratorMods)

}




/// Sets the modifiers that will be considered significant for keyboard
/// accelerators. The default mod mask depends on the GDK backend in use,
/// but will typically include `GDK_CONTROL_MASK` | `GDK_SHIFT_MASK` |
/// `GDK_MOD1_MASK` | `GDK_SUPER_MASK` | `GDK_HYPER_MASK` | `GDK_META_MASK`.
/// In other words, Control, Shift, Alt, Super, Hyper and Meta. Other
/// modifiers will by default be ignored by `GtkAccelGroup`.
/// 
/// You must include at least the three modifiers Control, Shift
/// and Alt in any value you pass to this function.
/// 
/// The default mod mask should be changed on application startup,
/// before using any accelerator groups.
@inlinable public func acceleratorSet(defaultModMask: Gdk.ModifierType) {
    gtk_accelerator_set_default_mod_mask(defaultModMask.value)

}




/// Determines whether a given keyval and modifier mask constitute
/// a valid keyboard accelerator. For example, the `GDK_KEY_a` keyval
/// plus `GDK_CONTROL_MASK` is valid - this is a “Ctrl+a” accelerator.
/// But, you can't, for instance, use the `GDK_KEY_Control_L` keyval
/// as an accelerator.
@inlinable public func acceleratorValid(keyval: Int, modifiers: Gdk.ModifierType) -> Bool {
    let rv = ((gtk_accelerator_valid(guint(keyval), modifiers.value)) != 0)
    return rv
}




/// Returns `true` if dialogs are expected to use an alternative
/// button order on the screen `screen`. See
/// `gtk_dialog_set_alternative_button_order()` for more details
/// about alternative button order.
/// 
/// If you need to use this function, you should probably connect
/// to the `notify:gtk-alternative-button-order` signal on the
/// `GtkSettings` object associated to `screen`, in order to be
/// notified if the button order setting changes.
///
/// **alternative_dialog_button_order is deprecated:**
/// Deprecated
@available(*, deprecated)
    @inlinable public func alternativeDialogButtonOrder(screen: Gdk.ScreenRef? = nil) -> Bool {
    let rv = ((gtk_alternative_dialog_button_order(screen?.screen_ptr)) != 0)
    return rv
}
/// Returns `true` if dialogs are expected to use an alternative
/// button order on the screen `screen`. See
/// `gtk_dialog_set_alternative_button_order()` for more details
/// about alternative button order.
/// 
/// If you need to use this function, you should probably connect
/// to the `notify:gtk-alternative-button-order` signal on the
/// `GtkSettings` object associated to `screen`, in order to be
/// notified if the button order setting changes.
///
/// **alternative_dialog_button_order is deprecated:**
/// Deprecated
@available(*, deprecated)
    @inlinable public func alternativeDialogButtonOrder<ScreenT: Gdk.ScreenProtocol>(screen: ScreenT?) -> Bool {
    let rv = ((gtk_alternative_dialog_button_order(screen?.screen_ptr)) != 0)
    return rv
}




/// Parses a signal description from `signal_desc` and incorporates
/// it into `binding_set`.
/// 
/// Signal descriptions may either bind a key combination to
/// one or more signals:
/// ```
///   bind "key" {
///     "signalname" (param, ...)
///     ...
///   }
/// ```
/// 
/// Or they may also unbind a key combination:
/// ```
///   unbind "key"
/// ```
/// 
/// Key combinations must be in a format that can be parsed by
/// `gtk_accelerator_parse()`.
@inlinable public func bindingEntryAddSignalFromString<BindingSetT: BindingSetProtocol>(bindingSet: BindingSetT, signalDesc: UnsafePointer<gchar>!) -> GTokenType {
    let rv = gtk_binding_entry_add_signal_from_string(bindingSet._ptr, signalDesc)
    return rv
}




/// Override or install a new key binding for `keyval` with `modifiers` on
/// `binding_set`.
@inlinable public func bindingEntryAddSignall<BindingSetT: BindingSetProtocol, SListT: GLib.SListProtocol>(bindingSet: BindingSetT, keyval: Int, modifiers: Gdk.ModifierType, signalName: UnsafePointer<gchar>!, bindingArgs: SListT) {
    gtk_binding_entry_add_signall(bindingSet._ptr, guint(keyval), modifiers.value, signalName, bindingArgs._ptr)

}




/// Remove a binding previously installed via
/// `gtk_binding_entry_add_signal()` on `binding_set`.
@inlinable public func bindingEntryRemove<BindingSetT: BindingSetProtocol>(bindingSet: BindingSetT, keyval: Int, modifiers: Gdk.ModifierType) {
    gtk_binding_entry_remove(bindingSet._ptr, guint(keyval), modifiers.value)

}




/// Install a binding on `binding_set` which causes key lookups
/// to be aborted, to prevent bindings from lower priority sets
/// to be activated.
@inlinable public func bindingEntrySkip<BindingSetT: BindingSetProtocol>(bindingSet: BindingSetT, keyval: Int, modifiers: Gdk.ModifierType) {
    gtk_binding_entry_skip(bindingSet._ptr, guint(keyval), modifiers.value)

}




/// This function returns the binding set named after the type name of
/// the passed in class structure. New binding sets are created on
/// demand by this function.
@inlinable public func bindingSetByClass(objectClass: gpointer! = nil) -> BindingSetRef! {
    guard let rv = BindingSetRef(gconstpointer: gconstpointer(gtk_binding_set_by_class(objectClass))) else { return nil }
    return rv
}




/// Find a binding set by its globally unique name.
/// 
/// The `set_name` can either be a name used for `gtk_binding_set_new()`
/// or the type name of a class used in `gtk_binding_set_by_class()`.
@inlinable public func bindingSetFind(setName: UnsafePointer<gchar>!) -> BindingSetRef! {
    guard let rv = BindingSetRef(gconstpointer: gconstpointer(gtk_binding_set_find(setName))) else { return nil }
    return rv
}




/// GTK+ maintains a global list of binding sets. Each binding set has
/// a unique name which needs to be specified upon creation.
@inlinable public func bindingSetNew(setName: UnsafePointer<gchar>!) -> BindingSetRef! {
    guard let rv = BindingSetRef(gconstpointer: gconstpointer(gtk_binding_set_new(setName))) else { return nil }
    return rv
}




/// Find a key binding matching `keyval` and `modifiers` and activate the
/// binding on `object`.
@inlinable public func bindingsActivate<ObjectT: GLibObject.ObjectProtocol>(object: ObjectT, keyval: Int, modifiers: Gdk.ModifierType) -> Bool {
    let rv = ((gtk_bindings_activate(object.object_ptr, guint(keyval), modifiers.value)) != 0)
    return rv
}




/// Looks up key bindings for `object` to find one matching
/// `event`, and if one was found, activate it.
@inlinable public func bindingsActivateEvent<EventKeyT: Gdk.EventKeyProtocol, ObjectT: GLibObject.ObjectProtocol>(object: ObjectT, event: EventKeyT) -> Bool {
    let rv = ((gtk_bindings_activate_event(object.object_ptr, event._ptr)) != 0)
    return rv
}




@inlinable public func builderErrorQuark() -> GQuark {
    let rv = gtk_builder_error_quark()
    return rv
}




/// This function is supposed to be called in `GtkWidget::draw`
/// implementations for widgets that support multiple windows.
/// `cr` must be untransformed from invoking of the draw function.
/// This function will return `true` if the contents of the given
/// `window` are supposed to be drawn and `false` otherwise. Note
/// that when the drawing was not initiated by the windowing
/// system this function will return `true` for all windows, so
/// you need to draw the bottommost window first. Also, do not
/// use “else if” statements to check which window should be drawn.
@inlinable public func cairoShouldDrawWindow<ContextT: Cairo.ContextProtocol, WindowT: Gdk.WindowProtocol>(cr: ContextT, window: WindowT) -> Bool {
    let rv = ((gtk_cairo_should_draw_window(cr._ptr, window.window_ptr)) != 0)
    return rv
}




/// Transforms the given cairo context `cr` that from `widget-relative`
/// coordinates to `window-relative` coordinates.
/// If the `widget`’s window is not an ancestor of `window`, no
/// modification will be applied.
/// 
/// This is the inverse to the transformation GTK applies when
/// preparing an expose event to be emitted with the `GtkWidget::draw`
/// signal. It is intended to help porting multiwindow widgets from
/// GTK+ 2 to the rendering architecture of GTK+ 3.
@inlinable public func cairoTransformToWindow<ContextT: Cairo.ContextProtocol, WidgetT: WidgetProtocol, WindowT: Gdk.WindowProtocol>(cr: ContextT, widget: WidgetT, window: WindowT) {
    gtk_cairo_transform_to_window(cr._ptr, widget.widget_ptr, window.window_ptr)

}




/// Checks that the GTK+ library in use is compatible with the
/// given version. Generally you would pass in the constants
/// `GTK_MAJOR_VERSION`, `GTK_MINOR_VERSION`, `GTK_MICRO_VERSION`
/// as the three arguments to this function; that produces
/// a check that the library in use is compatible with
/// the version of GTK+ the application or module was compiled
/// against.
/// 
/// Compatibility is defined by two things: first the version
/// of the running library is newer than the version
/// `required_major.required_minor`.`required_micro`. Second
/// the running library must be binary compatible with the
/// version `required_major.required_minor`.`required_micro`
/// (same major version.)
/// 
/// This function is primarily for GTK+ modules; the module
/// can call this function to check that it wasn’t loaded
/// into an incompatible version of GTK+. However, such a
/// check isn’t completely reliable, since the module may be
/// linked against an old version of GTK+ and calling the
/// old version of `gtk_check_version()`, but still get loaded
/// into an application using a newer version of GTK+.
@inlinable public func checkVersion(requiredMajor: Int, requiredMinor: Int, requiredMicro: Int) -> String! {
    guard let rv = gtk_check_version(guint(requiredMajor), guint(requiredMinor), guint(requiredMicro)).map({ String(cString: $0) }) else { return nil }
    return rv
}




@inlinable public func cssProviderErrorQuark() -> GQuark {
    let rv = gtk_css_provider_error_quark()
    return rv
}




/// Adds a GTK+ grab on `device`, so all the events on `device` and its
/// associated pointer or keyboard (if any) are delivered to `widget`.
/// If the `block_others` parameter is `true`, any other devices will be
/// unable to interact with `widget` during the grab.
@inlinable public func deviceGrabAdd<DeviceT: Gdk.DeviceProtocol, WidgetT: WidgetProtocol>(widget: WidgetT, device: DeviceT, blockOthers: Bool) {
    gtk_device_grab_add(widget.widget_ptr, device.device_ptr, gboolean((blockOthers) ? 1 : 0))

}




/// Removes a device grab from the given widget.
/// 
/// You have to pair calls to `gtk_device_grab_add()` and
/// `gtk_device_grab_remove()`.
@inlinable public func deviceGrabRemove<DeviceT: Gdk.DeviceProtocol, WidgetT: WidgetProtocol>(widget: WidgetT, device: DeviceT) {
    gtk_device_grab_remove(widget.widget_ptr, device.device_ptr)

}




/// Prevents `gtk_init()`, `gtk_init_check()`, `gtk_init_with_args()` and
/// `gtk_parse_args()` from automatically
/// calling `setlocale (LC_ALL, "")`. You would
/// want to use this function if you wanted to set the locale for
/// your program to something other than the user’s locale, or if
/// you wanted to set different values for different locale categories.
/// 
/// Most programs should not need to call this function.
@inlinable public func disableSetlocale() {
    gtk_disable_setlocale()

}




/// Distributes `extra_space` to child `sizes` by bringing smaller
/// children up to natural size first.
/// 
/// The remaining space will be added to the `minimum_size` member of the
/// GtkRequestedSize struct. If all sizes reach their natural size then
/// the remaining space is returned.
@inlinable public func distributeNaturalAllocation<RequestedSizeT: RequestedSizeProtocol>(extraSpace: Int, nRequestedSizes: Int, sizes: RequestedSizeT) -> Int {
    let rv = Int(gtk_distribute_natural_allocation(gint(extraSpace), guint(nRequestedSizes), sizes._ptr))
    return rv
}




@inlinable public func dragCancel<DragContextT: Gdk.DragContextProtocol>(context: DragContextT) {
    gtk_drag_cancel(context.drag_context_ptr)

}




@inlinable public func dragFinish<DragContextT: Gdk.DragContextProtocol>(context: DragContextT, success: Bool, del: Bool, time: guint32) {
    gtk_drag_finish(context.drag_context_ptr, gboolean((success) ? 1 : 0), gboolean((del) ? 1 : 0), time)

}




@inlinable public func dragGetSourceWidget<DragContextT: Gdk.DragContextProtocol>(context: DragContextT) -> WidgetRef! {
    guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_drag_get_source_widget(context.drag_context_ptr))) else { return nil }
    return rv
}




/// Sets the icon for a particular drag to the default
/// icon.
@inlinable public func dragSetIconDefault<DragContextT: Gdk.DragContextProtocol>(context: DragContextT) {
    gtk_drag_set_icon_default(context.drag_context_ptr)

}




@inlinable public func dragSetIconIcon<DragContextT: Gdk.DragContextProtocol, IconT: GIO.IconProtocol>(context: DragContextT, icon: IconT, hotX: Int, hotY: Int) {
    // gtk_drag_set_icon_gicon(context.drag_context_ptr, icon.icon_ptr, gint(hotX), gint(hotY))

}




/// Sets the icon for a given drag from a named themed icon. See
/// the docs for `GtkIconTheme` for more details. Note that the
/// size of the icon depends on the icon theme (the icon is
/// loaded at the symbolic size `GTK_ICON_SIZE_DND`), thus
/// `hot_x` and `hot_y` have to be used with care.
@inlinable public func dragSetIconName<DragContextT: Gdk.DragContextProtocol>(context: DragContextT, iconName: UnsafePointer<gchar>!, hotX: Int, hotY: Int) {
    gtk_drag_set_icon_name(context.drag_context_ptr, iconName, gint(hotX), gint(hotY))

}




/// Sets `pixbuf` as the icon for a given drag.
@inlinable public func dragSetIconPixbuf<DragContextT: Gdk.DragContextProtocol, PixbufT: PixbufProtocol>(context: DragContextT, pixbuf: PixbufT, hotX: Int, hotY: Int) {
    gtk_drag_set_icon_pixbuf(context.drag_context_ptr, pixbuf.pixbuf_ptr, gint(hotX), gint(hotY))

}




/// Sets the icon for a given drag from a stock ID.
@inlinable @available(*, deprecated)
    public func dragSetIconStock<DragContextT: Gdk.DragContextProtocol>(context: DragContextT, stockID: UnsafePointer<gchar>!, hotX: Int, hotY: Int) {
    gtk_drag_set_icon_stock(context.drag_context_ptr, stockID, gint(hotX), gint(hotY))

}




/// Sets `surface` as the icon for a given drag. GTK+ retains
/// references for the arguments, and will release them when
/// they are no longer needed.
/// 
/// To position the surface relative to the mouse, use
/// `cairo_surface_set_device_offset()` on `surface`. The mouse
/// cursor will be positioned at the (0,0) coordinate of the
/// surface.
@inlinable public func dragSetIconSurface<DragContextT: Gdk.DragContextProtocol, SurfaceT: Cairo.SurfaceProtocol>(context: DragContextT, surface: SurfaceT) {
    gtk_drag_set_icon_surface(context.drag_context_ptr, surface._ptr)

}




/// Changes the icon for a widget to a given widget. GTK+
/// will not destroy the icon, so if you don’t want
/// it to persist, you should connect to the “drag-end”
/// signal and destroy it yourself.
@inlinable public func dragSetIconWidget<DragContextT: Gdk.DragContextProtocol, WidgetT: WidgetProtocol>(context: DragContextT, widget: WidgetT, hotX: Int, hotY: Int) {
    gtk_drag_set_icon_widget(context.drag_context_ptr, widget.widget_ptr, gint(hotX), gint(hotY))

}




/// Draws a text caret on `cr` at `location`. This is not a style function
/// but merely a convenience function for drawing the standard cursor shape.
///
/// **draw_insertion_cursor is deprecated:**
/// Use gtk_render_insertion_cursor() instead.
@available(*, deprecated)
    @inlinable public func drawInsertionCursor<ContextT: Cairo.ContextProtocol, RectangleT: Gdk.RectangleProtocol, WidgetT: WidgetProtocol>(widget: WidgetT, cr: ContextT, location: RectangleT, isPrimary: Bool, direction: GtkTextDirection, drawArrow: Bool) {
    gtk_draw_insertion_cursor(widget.widget_ptr, cr._ptr, location.rectangle_ptr, gboolean((isPrimary) ? 1 : 0), direction, gboolean((drawArrow) ? 1 : 0))

}




/// Checks if any events are pending.
/// 
/// This can be used to update the UI and invoke timeouts etc.
/// while doing some time intensive computation.
/// 
/// ## Updating the UI during a long computation
/// 
/// (C Language Example):
/// ```C
///  // computation going on...
/// 
///  while (gtk_events_pending ())
///    gtk_main_iteration ();
/// 
///  // ...computation continued
/// ```
/// 
@inlinable public func eventsPending() -> Bool {
    let rv = ((gtk_events_pending()) != 0)
    return rv
}




/// Analogical to `gtk_true()`, this function does nothing
/// but always returns `false`.
@inlinable public func false_() -> Bool {
    let rv = ((gtk_false()) != 0)
    return rv
}




/// Registers an error quark for `GtkFileChooser` if necessary.
@inlinable public func fileChooserErrorQuark() -> GQuark {
    let rv = gtk_file_chooser_error_quark()
    return rv
}




/// Returns the binary age as passed to `libtool`
/// when building the GTK+ library the process is running against.
/// If `libtool` means nothing to you, don't
/// worry about it.
@inlinable public func getBinaryAge() -> Int {
    let rv = Int(gtk_get_binary_age())
    return rv
}




/// Obtains a copy of the event currently being processed by GTK+.
/// 
/// For example, if you are handling a `GtkButton::clicked` signal,
/// the current event will be the `GdkEventButton` that triggered
/// the `clicked` signal.
@inlinable public func getCurrentEvent() -> Gdk.EventRef! {
    guard let rv = Gdk.EventRef(gtk_get_current_event()) else { return nil }
    return rv
}




/// If there is a current event and it has a device, return that
/// device, otherwise return `nil`.
@inlinable public func getCurrentEventDevice() -> Gdk.DeviceRef! {
    guard let rv = Gdk.DeviceRef(gtk_get_current_event_device()) else { return nil }
    return rv
}




/// If there is a current event and it has a state field, place
/// that state field in `state` and return `true`, otherwise return
/// `false`.
@inlinable public func getCurrentEvent(state: UnsafeMutablePointer<GdkModifierType>!) -> Bool {
    let rv = ((gtk_get_current_event_state(state)) != 0)
    return rv
}




/// If there is a current event and it has a timestamp,
/// return that timestamp, otherwise return `GDK_CURRENT_TIME`.
@inlinable public func getCurrentEventTime() -> guint32 {
    let rv = gtk_get_current_event_time()
    return rv
}




/// Returns the GTK+ debug flags.
/// 
/// This function is intended for GTK+ modules that want
/// to adjust their debug output based on GTK+ debug flags.
@inlinable public func getDebugFlags() -> Int {
    let rv = Int(gtk_get_debug_flags())
    return rv
}




/// Returns the `PangoLanguage` for the default language currently in
/// effect. (Note that this can change over the life of an
/// application.) The default language is derived from the current
/// locale. It determines, for example, whether GTK+ uses the
/// right-to-left or left-to-right text direction.
/// 
/// This function is equivalent to `pango_language_get_default()`.
/// See that function for details.
@inlinable public func getDefaultLanguage() -> Pango.LanguageRef! {
    guard let rv = Pango.LanguageRef(gtk_get_default_language()) else { return nil }
    return rv
}




/// If `event` is `nil` or the event was not associated with any widget,
/// returns `nil`, otherwise returns the widget that received the event
/// originally.
@inlinable public func getEventWidget<EventT: Gdk.EventProtocol>(event: EventT) -> WidgetRef! {
    guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_get_event_widget(event.event_ptr))) else { return nil }
    return rv
}




/// Returns the interface age as passed to `libtool`
/// when building the GTK+ library the process is running against.
/// If `libtool` means nothing to you, don't
/// worry about it.
@inlinable public func getInterfaceAge() -> Int {
    let rv = Int(gtk_get_interface_age())
    return rv
}




/// Get the direction of the current locale. This is the expected
/// reading direction for text and UI.
/// 
/// This function depends on the current locale being set with
/// `setlocale()` and will default to setting the `GTK_TEXT_DIR_LTR`
/// direction otherwise. `GTK_TEXT_DIR_NONE` will never be returned.
/// 
/// GTK+ sets the default text direction according to the locale
/// during `gtk_init()`, and you should normally use
/// `gtk_widget_get_direction()` or `gtk_widget_get_default_direction()`
/// to obtain the current direcion.
/// 
/// This function is only needed rare cases when the locale is
/// changed after GTK+ has already been initialized. In this case,
/// you can use it to update the default text direction as follows:
/// 
/// (C Language Example):
/// ```C
/// setlocale (LC_ALL, new_locale);
/// direction = gtk_get_locale_direction ();
/// gtk_widget_set_default_direction (direction);
/// ```
/// 
@inlinable public func getLocaleDirection() -> GtkTextDirection {
    let rv = gtk_get_locale_direction()
    return rv
}




/// Returns the major version number of the GTK+ library.
/// (e.g. in GTK+ version 3.1.5 this is 3.)
/// 
/// This function is in the library, so it represents the GTK+ library
/// your code is running against. Contrast with the `GTK_MAJOR_VERSION`
/// macro, which represents the major version of the GTK+ headers you
/// have included when compiling your code.
@inlinable public func getMajorVersion() -> Int {
    let rv = Int(gtk_get_major_version())
    return rv
}




/// Returns the micro version number of the GTK+ library.
/// (e.g. in GTK+ version 3.1.5 this is 5.)
/// 
/// This function is in the library, so it represents the GTK+ library
/// your code is are running against. Contrast with the
/// `GTK_MICRO_VERSION` macro, which represents the micro version of the
/// GTK+ headers you have included when compiling your code.
@inlinable public func getMicroVersion() -> Int {
    let rv = Int(gtk_get_micro_version())
    return rv
}




/// Returns the minor version number of the GTK+ library.
/// (e.g. in GTK+ version 3.1.5 this is 1.)
/// 
/// This function is in the library, so it represents the GTK+ library
/// your code is are running against. Contrast with the
/// `GTK_MINOR_VERSION` macro, which represents the minor version of the
/// GTK+ headers you have included when compiling your code.
@inlinable public func getMinorVersion() -> Int {
    let rv = Int(gtk_get_minor_version())
    return rv
}




/// Returns a `GOptionGroup` for the commandline arguments recognized
/// by GTK+ and GDK.
/// 
/// You should add this group to your `GOptionContext`
/// with `g_option_context_add_group()`, if you are using
/// `g_option_context_parse()` to parse your commandline arguments.
@inlinable public func getOptionGroup(openDefaultDisplay: Bool) -> GLib.OptionGroupRef! {
    guard let rv = GLib.OptionGroupRef(gtk_get_option_group(gboolean((openDefaultDisplay) ? 1 : 0))) else { return nil }
    return rv
}




/// Queries the current grab of the default window group.
@inlinable public func grabGetCurrent() -> WidgetRef! {
    guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_grab_get_current())) else { return nil }
    return rv
}




/// Looks up the icon size associated with `name`.
///
/// **icon_size_from_name is deprecated:**
/// Use #GtkIconTheme instead.
@available(*, deprecated)
    @inlinable public func iconSizeFrom(name: UnsafePointer<gchar>!) -> GtkIconSize {
    let rv = gtk_icon_size_from_name(name)
    return rv
}




/// Gets the canonical name of the given icon size. The returned string
/// is statically allocated and should not be freed.
///
/// **icon_size_get_name is deprecated:**
/// Use #GtkIconTheme instead.
@available(*, deprecated)
    @inlinable public func iconSizeGetName(size: GtkIconSize) -> String! {
    guard let rv = gtk_icon_size_get_name(size).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Obtains the pixel size of a semantic icon size `size:`
/// `GTK_ICON_SIZE_MENU`, `GTK_ICON_SIZE_BUTTON`, etc.  This function
/// isn’t normally needed, `gtk_icon_theme_load_icon()` is the usual
/// way to get an icon for rendering, then just look at the size of
/// the rendered pixbuf. The rendered pixbuf may not even correspond to
/// the width/height returned by `gtk_icon_size_lookup()`, because themes
/// are free to render the pixbuf however they like, including changing
/// the usual size.
@inlinable public func iconSizeLookup(size: GtkIconSize, width: UnsafeMutablePointer<gint>! = nil, height: UnsafeMutablePointer<gint>! = nil) -> Bool {
    let rv = ((gtk_icon_size_lookup(size, width, height)) != 0)
    return rv
}




/// Obtains the pixel size of a semantic icon size, possibly
/// modified by user preferences for a particular
/// `GtkSettings`. Normally `size` would be
/// `GTK_ICON_SIZE_MENU`, `GTK_ICON_SIZE_BUTTON`, etc.  This function
/// isn’t normally needed, `gtk_widget_render_icon_pixbuf()` is the usual
/// way to get an icon for rendering, then just look at the size of
/// the rendered pixbuf. The rendered pixbuf may not even correspond to
/// the width/height returned by `gtk_icon_size_lookup()`, because themes
/// are free to render the pixbuf however they like, including changing
/// the usual size.
///
/// **icon_size_lookup_for_settings is deprecated:**
/// Use gtk_icon_size_lookup() instead.
@available(*, deprecated)
    @inlinable public func iconSizeLookupFor<SettingsT: SettingsProtocol>(settings: SettingsT, size: GtkIconSize, width: UnsafeMutablePointer<gint>! = nil, height: UnsafeMutablePointer<gint>! = nil) -> Bool {
    let rv = ((gtk_icon_size_lookup_for_settings(settings.settings_ptr, size, width, height)) != 0)
    return rv
}




/// Registers a new icon size, along the same lines as `GTK_ICON_SIZE_MENU`,
/// etc. Returns the integer value for the size.
///
/// **icon_size_register is deprecated:**
/// Use #GtkIconTheme instead.
@available(*, deprecated)
    @inlinable public func iconSizeRegister(name: UnsafePointer<gchar>!, width: Int, height: Int) -> GtkIconSize {
    let rv = gtk_icon_size_register(name, gint(width), gint(height))
    return rv
}




/// Registers `alias` as another name for `target`.
/// So calling `gtk_icon_size_from_name()` with `alias` as argument
/// will return `target`.
///
/// **icon_size_register_alias is deprecated:**
/// Use #GtkIconTheme instead.
@available(*, deprecated)
    @inlinable public func iconSizeRegister(alias: UnsafePointer<gchar>!, target: GtkIconSize) {
    gtk_icon_size_register_alias(alias, target)

}




@inlinable public func iconThemeErrorQuark() -> GQuark {
    let rv = gtk_icon_theme_error_quark()
    return rv
}




/// Call this function before using any other GTK+ functions in your GUI
/// applications.  It will initialize everything needed to operate the
/// toolkit and parses some standard command line options.
/// 
/// Although you are expected to pass the `argc`, `argv` parameters from `main()` to
/// this function, it is possible to pass `nil` if `argv` is not available or
/// commandline handling is not required.
/// 
/// `argc` and `argv` are adjusted accordingly so your own code will
/// never see those standard arguments.
/// 
/// Note that there are some alternative ways to initialize GTK+:
/// if you are calling `gtk_parse_args()`, `gtk_init_check()`,
/// `gtk_init_with_args()` or `g_option_context_parse()` with
/// the option group returned by `gtk_get_option_group()`,
/// you don’t have to call `gtk_init()`.
/// 
/// And if you are using `GtkApplication`, you don't have to call any of the
/// initialization functions either; the `GtkApplication::startup` handler
/// does it for you.
/// 
/// This function will terminate your program if it was unable to
/// initialize the windowing system for some reason. If you want
/// your program to fall back to a textual interface you want to
/// call `gtk_init_check()` instead.
/// 
/// Since 2.18, GTK+ calls `signal (SIGPIPE, SIG_IGN)`
/// during initialization, to ignore SIGPIPE signals, since these are
/// almost never wanted in graphical applications. If you do need to
/// handle SIGPIPE for some reason, reset the handler after `gtk_init()`,
/// but notice that other libraries (e.g. libdbus or gvfs) might do
/// similar things.
@inlinable public func init_(argc: UnsafeMutablePointer<gint>!, argv: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>?>! = nil) {
    gtk_init(argc, argv)

}




/// This function does the same work as `gtk_init()` with only a single
/// change: It does not terminate the program if the commandline
/// arguments couldn’t be parsed or the windowing system can’t be
/// initialized. Instead it returns `false` on failure.
/// 
/// This way the application can fall back to some other means of
/// communication with the user - for example a curses or command line
/// interface.
/// 
/// Note that calling any GTK function or instantiating any GTK type after
/// this function returns `false` results in undefined behavior.
@inlinable public func initCheck(argc: UnsafeMutablePointer<gint>!, argv: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>?>! = nil) -> Bool {
    let rv = ((gtk_init_check(argc, argv)) != 0)
    return rv
}




/// This function does the same work as `gtk_init_check()`.
/// Additionally, it allows you to add your own commandline options,
/// and it automatically generates nicely formatted
/// `--help` output. Note that your program will
/// be terminated after writing out the help output.
@inlinable public func initWithArgs(argc: UnsafeMutablePointer<gint>!, argv: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>?>! = nil, parameterString: UnsafePointer<gchar>? = nil, entries: UnsafePointer<GOptionEntry>!, translationDomain: UnsafePointer<gchar>? = nil) throws -> Bool {
    var error: UnsafeMutablePointer<GError>?
    let rv = ((gtk_init_with_args(argc, argv, parameterString, entries, translationDomain, &error)) != 0)
    if let error = error { throw GLibError(error) }
    return rv
}




/// Installs a key snooper function, which will get called on all
/// key events before delivering them normally.
///
/// **key_snooper_install is deprecated:**
/// Key snooping should not be done. Events should
///     be handled by widgets.
@available(*, deprecated)
    @inlinable public func keySnooperInstall(snooper: GtkKeySnoopFunc?, funcData: gpointer! = nil) -> Int {
    let rv = Int(gtk_key_snooper_install(snooper, funcData))
    return rv
}




/// Removes the key snooper function with the given id.
///
/// **key_snooper_remove is deprecated:**
/// Key snooping should not be done. Events should
///     be handled by widgets.
@available(*, deprecated)
    @inlinable public func keySnooperRemove(snooperHandlerID: Int) {
    gtk_key_snooper_remove(guint(snooperHandlerID))

}




/// Runs the main loop until `gtk_main_quit()` is called.
/// 
/// You can nest calls to `gtk_main()`. In that case `gtk_main_quit()`
/// will make the innermost invocation of the main loop return.
@inlinable public func main() {
    gtk_main()

}




/// Processes a single GDK event.
/// 
/// This is public only to allow filtering of events between GDK and GTK+.
/// You will not usually need to call this function directly.
/// 
/// While you should not call this function directly, you might want to
/// know how exactly events are handled. So here is what this function
/// does with the event:
/// 
/// 1. Compress enter/leave notify events. If the event passed build an
///    enter/leave pair together with the next event (peeked from GDK), both
///    events are thrown away. This is to avoid a backlog of (de-)highlighting
///    widgets crossed by the pointer.
/// 
/// 2. Find the widget which got the event. If the widget can’t be determined
///    the event is thrown away unless it belongs to a INCR transaction.
/// 
/// 3. Then the event is pushed onto a stack so you can query the currently
///    handled event with `gtk_get_current_event()`.
/// 
/// 4. The event is sent to a widget. If a grab is active all events for widgets
///    that are not in the contained in the grab widget are sent to the latter
///    with a few exceptions:
///    - Deletion and destruction events are still sent to the event widget for
///      obvious reasons.
///    - Events which directly relate to the visual representation of the event
///      widget.
///    - Leave events are delivered to the event widget if there was an enter
///      event delivered to it before without the paired leave event.
///    - Drag events are not redirected because it is unclear what the semantics
///      of that would be.
///    Another point of interest might be that all key events are first passed
///    through the key snooper functions if there are any. Read the description
///    of `gtk_key_snooper_install()` if you need this feature.
/// 
/// 5. After finishing the delivery the event is popped from the event stack.
@inlinable public func mainDo<EventT: Gdk.EventProtocol>(event: EventT) {
    gtk_main_do_event(event.event_ptr)

}




/// Runs a single iteration of the mainloop.
/// 
/// If no events are waiting to be processed GTK+ will block
/// until the next event is noticed. If you don’t want to block
/// look at `gtk_main_iteration_do()` or check if any events are
/// pending with `gtk_events_pending()` first.
@inlinable public func mainIteration() -> Bool {
    let rv = ((gtk_main_iteration()) != 0)
    return rv
}




/// Runs a single iteration of the mainloop.
/// If no events are available either return or block depending on
/// the value of `blocking`.
@inlinable public func mainIterationDo(blocking: Bool) -> Bool {
    let rv = ((gtk_main_iteration_do(gboolean((blocking) ? 1 : 0))) != 0)
    return rv
}




/// Asks for the current nesting level of the main loop.
@inlinable public func mainLevel() -> Int {
    let rv = Int(gtk_main_level())
    return rv
}




/// Makes the innermost invocation of the main loop return
/// when it regains control.
@inlinable public func mainQuit() {
    gtk_main_quit()

}




/// Draws an arrow in the given rectangle on `cr` using the given
/// parameters. `arrow_type` determines the direction of the arrow.
///
/// **paint_arrow is deprecated:**
/// Use gtk_render_arrow() instead
@available(*, deprecated)
    @inlinable public func paintArrow<ContextT: Cairo.ContextProtocol, StyleT: StyleProtocol>(style: StyleT, cr: ContextT, stateType: GtkStateType, shadowType: GtkShadowType, widget: WidgetRef? = nil, detail: UnsafePointer<gchar>? = nil, arrowType: GtkArrowType, fill: Bool, x: Int, y: Int, width: Int, height: Int) {
    gtk_paint_arrow(style.style_ptr, cr._ptr, stateType, shadowType, widget?.widget_ptr, detail, arrowType, gboolean((fill) ? 1 : 0), gint(x), gint(y), gint(width), gint(height))

}
/// Draws an arrow in the given rectangle on `cr` using the given
/// parameters. `arrow_type` determines the direction of the arrow.
///
/// **paint_arrow is deprecated:**
/// Use gtk_render_arrow() instead
@available(*, deprecated)
    @inlinable public func paintArrow<ContextT: Cairo.ContextProtocol, StyleT: StyleProtocol, WidgetT: WidgetProtocol>(style: StyleT, cr: ContextT, stateType: GtkStateType, shadowType: GtkShadowType, widget: WidgetT?, detail: UnsafePointer<gchar>? = nil, arrowType: GtkArrowType, fill: Bool, x: Int, y: Int, width: Int, height: Int) {
    gtk_paint_arrow(style.style_ptr, cr._ptr, stateType, shadowType, widget?.widget_ptr, detail, arrowType, gboolean((fill) ? 1 : 0), gint(x), gint(y), gint(width), gint(height))

}




/// Draws a box on `cr` with the given parameters.
///
/// **paint_box is deprecated:**
/// Use gtk_render_frame() and gtk_render_background() instead
@available(*, deprecated)
    @inlinable public func paintBox<ContextT: Cairo.ContextProtocol, StyleT: StyleProtocol>(style: StyleT, cr: ContextT, stateType: GtkStateType, shadowType: GtkShadowType, widget: WidgetRef? = nil, detail: UnsafePointer<gchar>? = nil, x: Int, y: Int, width: Int, height: Int) {
    gtk_paint_box(style.style_ptr, cr._ptr, stateType, shadowType, widget?.widget_ptr, detail, gint(x), gint(y), gint(width), gint(height))

}
/// Draws a box on `cr` with the given parameters.
///
/// **paint_box is deprecated:**
/// Use gtk_render_frame() and gtk_render_background() instead
@available(*, deprecated)
    @inlinable public func paintBox<ContextT: Cairo.ContextProtocol, StyleT: StyleProtocol, WidgetT: WidgetProtocol>(style: StyleT, cr: ContextT, stateType: GtkStateType, shadowType: GtkShadowType, widget: WidgetT?, detail: UnsafePointer<gchar>? = nil, x: Int, y: Int, width: Int, height: Int) {
    gtk_paint_box(style.style_ptr, cr._ptr, stateType, shadowType, widget?.widget_ptr, detail, gint(x), gint(y), gint(width), gint(height))

}




/// Draws a box in `cr` using the given style and state and shadow type,
/// leaving a gap in one side.
///
/// **paint_box_gap is deprecated:**
/// Use gtk_render_frame_gap() instead
@available(*, deprecated)
    @inlinable public func paintBoxGap<ContextT: Cairo.ContextProtocol, StyleT: StyleProtocol>(style: StyleT, cr: ContextT, stateType: GtkStateType, shadowType: GtkShadowType, widget: WidgetRef? = nil, detail: UnsafePointer<gchar>? = nil, x: Int, y: Int, width: Int, height: Int, gapSide: GtkPositionType, gapX: Int, gapWidth: Int) {
    gtk_paint_box_gap(style.style_ptr, cr._ptr, stateType, shadowType, widget?.widget_ptr, detail, gint(x), gint(y), gint(width), gint(height), gapSide, gint(gapX), gint(gapWidth))

}
/// Draws a box in `cr` using the given style and state and shadow type,
/// leaving a gap in one side.
///
/// **paint_box_gap is deprecated:**
/// Use gtk_render_frame_gap() instead
@available(*, deprecated)
    @inlinable public func paintBoxGap<ContextT: Cairo.ContextProtocol, StyleT: StyleProtocol, WidgetT: WidgetProtocol>(style: StyleT, cr: ContextT, stateType: GtkStateType, shadowType: GtkShadowType, widget: WidgetT?, detail: UnsafePointer<gchar>? = nil, x: Int, y: Int, width: Int, height: Int, gapSide: GtkPositionType, gapX: Int, gapWidth: Int) {
    gtk_paint_box_gap(style.style_ptr, cr._ptr, stateType, shadowType, widget?.widget_ptr, detail, gint(x), gint(y), gint(width), gint(height), gapSide, gint(gapX), gint(gapWidth))

}




/// Draws a check button indicator in the given rectangle on `cr` with
/// the given parameters.
///
/// **paint_check is deprecated:**
/// Use gtk_render_check() instead
@available(*, deprecated)
    @inlinable public func paintCheck<ContextT: Cairo.ContextProtocol, StyleT: StyleProtocol>(style: StyleT, cr: ContextT, stateType: GtkStateType, shadowType: GtkShadowType, widget: WidgetRef? = nil, detail: UnsafePointer<gchar>? = nil, x: Int, y: Int, width: Int, height: Int) {
    gtk_paint_check(style.style_ptr, cr._ptr, stateType, shadowType, widget?.widget_ptr, detail, gint(x), gint(y), gint(width), gint(height))

}
/// Draws a check button indicator in the given rectangle on `cr` with
/// the given parameters.
///
/// **paint_check is deprecated:**
/// Use gtk_render_check() instead
@available(*, deprecated)
    @inlinable public func paintCheck<ContextT: Cairo.ContextProtocol, StyleT: StyleProtocol, WidgetT: WidgetProtocol>(style: StyleT, cr: ContextT, stateType: GtkStateType, shadowType: GtkShadowType, widget: WidgetT?, detail: UnsafePointer<gchar>? = nil, x: Int, y: Int, width: Int, height: Int) {
    gtk_paint_check(style.style_ptr, cr._ptr, stateType, shadowType, widget?.widget_ptr, detail, gint(x), gint(y), gint(width), gint(height))

}




/// Draws a diamond in the given rectangle on `window` using the given
/// parameters.
///
/// **paint_diamond is deprecated:**
/// Use cairo instead
@available(*, deprecated)
    @inlinable public func paintDiamond<ContextT: Cairo.ContextProtocol, StyleT: StyleProtocol>(style: StyleT, cr: ContextT, stateType: GtkStateType, shadowType: GtkShadowType, widget: WidgetRef? = nil, detail: UnsafePointer<gchar>? = nil, x: Int, y: Int, width: Int, height: Int) {
    gtk_paint_diamond(style.style_ptr, cr._ptr, stateType, shadowType, widget?.widget_ptr, detail, gint(x), gint(y), gint(width), gint(height))

}
/// Draws a diamond in the given rectangle on `window` using the given
/// parameters.
///
/// **paint_diamond is deprecated:**
/// Use cairo instead
@available(*, deprecated)
    @inlinable public func paintDiamond<ContextT: Cairo.ContextProtocol, StyleT: StyleProtocol, WidgetT: WidgetProtocol>(style: StyleT, cr: ContextT, stateType: GtkStateType, shadowType: GtkShadowType, widget: WidgetT?, detail: UnsafePointer<gchar>? = nil, x: Int, y: Int, width: Int, height: Int) {
    gtk_paint_diamond(style.style_ptr, cr._ptr, stateType, shadowType, widget?.widget_ptr, detail, gint(x), gint(y), gint(width), gint(height))

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
@available(*, deprecated)
    @inlinable public func paintExpander<ContextT: Cairo.ContextProtocol, StyleT: StyleProtocol>(style: StyleT, cr: ContextT, stateType: GtkStateType, widget: WidgetRef? = nil, detail: UnsafePointer<gchar>? = nil, x: Int, y: Int, expanderStyle: GtkExpanderStyle) {
    gtk_paint_expander(style.style_ptr, cr._ptr, stateType, widget?.widget_ptr, detail, gint(x), gint(y), expanderStyle)

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
@available(*, deprecated)
    @inlinable public func paintExpander<ContextT: Cairo.ContextProtocol, StyleT: StyleProtocol, WidgetT: WidgetProtocol>(style: StyleT, cr: ContextT, stateType: GtkStateType, widget: WidgetT?, detail: UnsafePointer<gchar>? = nil, x: Int, y: Int, expanderStyle: GtkExpanderStyle) {
    gtk_paint_expander(style.style_ptr, cr._ptr, stateType, widget?.widget_ptr, detail, gint(x), gint(y), expanderStyle)

}




/// Draws an extension, i.e. a notebook tab.
///
/// **paint_extension is deprecated:**
/// Use gtk_render_extension() instead
@available(*, deprecated)
    @inlinable public func paintExtension<ContextT: Cairo.ContextProtocol, StyleT: StyleProtocol>(style: StyleT, cr: ContextT, stateType: GtkStateType, shadowType: GtkShadowType, widget: WidgetRef? = nil, detail: UnsafePointer<gchar>? = nil, x: Int, y: Int, width: Int, height: Int, gapSide: GtkPositionType) {
    gtk_paint_extension(style.style_ptr, cr._ptr, stateType, shadowType, widget?.widget_ptr, detail, gint(x), gint(y), gint(width), gint(height), gapSide)

}
/// Draws an extension, i.e. a notebook tab.
///
/// **paint_extension is deprecated:**
/// Use gtk_render_extension() instead
@available(*, deprecated)
    @inlinable public func paintExtension<ContextT: Cairo.ContextProtocol, StyleT: StyleProtocol, WidgetT: WidgetProtocol>(style: StyleT, cr: ContextT, stateType: GtkStateType, shadowType: GtkShadowType, widget: WidgetT?, detail: UnsafePointer<gchar>? = nil, x: Int, y: Int, width: Int, height: Int, gapSide: GtkPositionType) {
    gtk_paint_extension(style.style_ptr, cr._ptr, stateType, shadowType, widget?.widget_ptr, detail, gint(x), gint(y), gint(width), gint(height), gapSide)

}




/// Draws a flat box on `cr` with the given parameters.
///
/// **paint_flat_box is deprecated:**
/// Use gtk_render_frame() and gtk_render_background() instead
@available(*, deprecated)
    @inlinable public func paintFlatBox<ContextT: Cairo.ContextProtocol, StyleT: StyleProtocol>(style: StyleT, cr: ContextT, stateType: GtkStateType, shadowType: GtkShadowType, widget: WidgetRef? = nil, detail: UnsafePointer<gchar>? = nil, x: Int, y: Int, width: Int, height: Int) {
    gtk_paint_flat_box(style.style_ptr, cr._ptr, stateType, shadowType, widget?.widget_ptr, detail, gint(x), gint(y), gint(width), gint(height))

}
/// Draws a flat box on `cr` with the given parameters.
///
/// **paint_flat_box is deprecated:**
/// Use gtk_render_frame() and gtk_render_background() instead
@available(*, deprecated)
    @inlinable public func paintFlatBox<ContextT: Cairo.ContextProtocol, StyleT: StyleProtocol, WidgetT: WidgetProtocol>(style: StyleT, cr: ContextT, stateType: GtkStateType, shadowType: GtkShadowType, widget: WidgetT?, detail: UnsafePointer<gchar>? = nil, x: Int, y: Int, width: Int, height: Int) {
    gtk_paint_flat_box(style.style_ptr, cr._ptr, stateType, shadowType, widget?.widget_ptr, detail, gint(x), gint(y), gint(width), gint(height))

}




/// Draws a focus indicator around the given rectangle on `cr` using the
/// given style.
///
/// **paint_focus is deprecated:**
/// Use gtk_render_focus() instead
@available(*, deprecated)
    @inlinable public func paintFocus<ContextT: Cairo.ContextProtocol, StyleT: StyleProtocol>(style: StyleT, cr: ContextT, stateType: GtkStateType, widget: WidgetRef? = nil, detail: UnsafePointer<gchar>? = nil, x: Int, y: Int, width: Int, height: Int) {
    gtk_paint_focus(style.style_ptr, cr._ptr, stateType, widget?.widget_ptr, detail, gint(x), gint(y), gint(width), gint(height))

}
/// Draws a focus indicator around the given rectangle on `cr` using the
/// given style.
///
/// **paint_focus is deprecated:**
/// Use gtk_render_focus() instead
@available(*, deprecated)
    @inlinable public func paintFocus<ContextT: Cairo.ContextProtocol, StyleT: StyleProtocol, WidgetT: WidgetProtocol>(style: StyleT, cr: ContextT, stateType: GtkStateType, widget: WidgetT?, detail: UnsafePointer<gchar>? = nil, x: Int, y: Int, width: Int, height: Int) {
    gtk_paint_focus(style.style_ptr, cr._ptr, stateType, widget?.widget_ptr, detail, gint(x), gint(y), gint(width), gint(height))

}




/// Draws a handle as used in `GtkHandleBox` and `GtkPaned`.
///
/// **paint_handle is deprecated:**
/// Use gtk_render_handle() instead
@available(*, deprecated)
    @inlinable public func paintHandle<ContextT: Cairo.ContextProtocol, StyleT: StyleProtocol>(style: StyleT, cr: ContextT, stateType: GtkStateType, shadowType: GtkShadowType, widget: WidgetRef? = nil, detail: UnsafePointer<gchar>? = nil, x: Int, y: Int, width: Int, height: Int, orientation: GtkOrientation) {
    gtk_paint_handle(style.style_ptr, cr._ptr, stateType, shadowType, widget?.widget_ptr, detail, gint(x), gint(y), gint(width), gint(height), orientation)

}
/// Draws a handle as used in `GtkHandleBox` and `GtkPaned`.
///
/// **paint_handle is deprecated:**
/// Use gtk_render_handle() instead
@available(*, deprecated)
    @inlinable public func paintHandle<ContextT: Cairo.ContextProtocol, StyleT: StyleProtocol, WidgetT: WidgetProtocol>(style: StyleT, cr: ContextT, stateType: GtkStateType, shadowType: GtkShadowType, widget: WidgetT?, detail: UnsafePointer<gchar>? = nil, x: Int, y: Int, width: Int, height: Int, orientation: GtkOrientation) {
    gtk_paint_handle(style.style_ptr, cr._ptr, stateType, shadowType, widget?.widget_ptr, detail, gint(x), gint(y), gint(width), gint(height), orientation)

}




/// Draws a horizontal line from (`x1`, `y`) to (`x2`, `y`) in `cr`
/// using the given style and state.
///
/// **paint_hline is deprecated:**
/// Use gtk_render_line() instead
@available(*, deprecated)
    @inlinable public func paintHline<ContextT: Cairo.ContextProtocol, StyleT: StyleProtocol>(style: StyleT, cr: ContextT, stateType: GtkStateType, widget: WidgetRef? = nil, detail: UnsafePointer<gchar>? = nil, x1: Int, x2: Int, y: Int) {
    gtk_paint_hline(style.style_ptr, cr._ptr, stateType, widget?.widget_ptr, detail, gint(x1), gint(x2), gint(y))

}
/// Draws a horizontal line from (`x1`, `y`) to (`x2`, `y`) in `cr`
/// using the given style and state.
///
/// **paint_hline is deprecated:**
/// Use gtk_render_line() instead
@available(*, deprecated)
    @inlinable public func paintHline<ContextT: Cairo.ContextProtocol, StyleT: StyleProtocol, WidgetT: WidgetProtocol>(style: StyleT, cr: ContextT, stateType: GtkStateType, widget: WidgetT?, detail: UnsafePointer<gchar>? = nil, x1: Int, x2: Int, y: Int) {
    gtk_paint_hline(style.style_ptr, cr._ptr, stateType, widget?.widget_ptr, detail, gint(x1), gint(x2), gint(y))

}




/// Draws a layout on `cr` using the given parameters.
///
/// **paint_layout is deprecated:**
/// Use gtk_render_layout() instead
@available(*, deprecated)
    @inlinable public func paintLayout<ContextT: Cairo.ContextProtocol, LayoutT: Pango.LayoutProtocol, StyleT: StyleProtocol>(style: StyleT, cr: ContextT, stateType: GtkStateType, useText: Bool, widget: WidgetRef? = nil, detail: UnsafePointer<gchar>? = nil, x: Int, y: Int, layout: LayoutT) {
    gtk_paint_layout(style.style_ptr, cr._ptr, stateType, gboolean((useText) ? 1 : 0), widget?.widget_ptr, detail, gint(x), gint(y), layout.layout_ptr)

}
/// Draws a layout on `cr` using the given parameters.
///
/// **paint_layout is deprecated:**
/// Use gtk_render_layout() instead
@available(*, deprecated)
    @inlinable public func paintLayout<ContextT: Cairo.ContextProtocol, LayoutT: Pango.LayoutProtocol, StyleT: StyleProtocol, WidgetT: WidgetProtocol>(style: StyleT, cr: ContextT, stateType: GtkStateType, useText: Bool, widget: WidgetT?, detail: UnsafePointer<gchar>? = nil, x: Int, y: Int, layout: LayoutT) {
    gtk_paint_layout(style.style_ptr, cr._ptr, stateType, gboolean((useText) ? 1 : 0), widget?.widget_ptr, detail, gint(x), gint(y), layout.layout_ptr)

}




/// Draws a radio button indicator in the given rectangle on `cr` with
/// the given parameters.
///
/// **paint_option is deprecated:**
/// Use gtk_render_option() instead
@available(*, deprecated)
    @inlinable public func paintOption<ContextT: Cairo.ContextProtocol, StyleT: StyleProtocol>(style: StyleT, cr: ContextT, stateType: GtkStateType, shadowType: GtkShadowType, widget: WidgetRef? = nil, detail: UnsafePointer<gchar>? = nil, x: Int, y: Int, width: Int, height: Int) {
    gtk_paint_option(style.style_ptr, cr._ptr, stateType, shadowType, widget?.widget_ptr, detail, gint(x), gint(y), gint(width), gint(height))

}
/// Draws a radio button indicator in the given rectangle on `cr` with
/// the given parameters.
///
/// **paint_option is deprecated:**
/// Use gtk_render_option() instead
@available(*, deprecated)
    @inlinable public func paintOption<ContextT: Cairo.ContextProtocol, StyleT: StyleProtocol, WidgetT: WidgetProtocol>(style: StyleT, cr: ContextT, stateType: GtkStateType, shadowType: GtkShadowType, widget: WidgetT?, detail: UnsafePointer<gchar>? = nil, x: Int, y: Int, width: Int, height: Int) {
    gtk_paint_option(style.style_ptr, cr._ptr, stateType, shadowType, widget?.widget_ptr, detail, gint(x), gint(y), gint(width), gint(height))

}




/// Draws a resize grip in the given rectangle on `cr` using the given
/// parameters.
///
/// **paint_resize_grip is deprecated:**
/// Use gtk_render_handle() instead
@available(*, deprecated)
    @inlinable public func paintResizeGrip<ContextT: Cairo.ContextProtocol, StyleT: StyleProtocol>(style: StyleT, cr: ContextT, stateType: GtkStateType, widget: WidgetRef? = nil, detail: UnsafePointer<gchar>? = nil, edge: GdkWindowEdge, x: Int, y: Int, width: Int, height: Int) {
    gtk_paint_resize_grip(style.style_ptr, cr._ptr, stateType, widget?.widget_ptr, detail, edge, gint(x), gint(y), gint(width), gint(height))

}
/// Draws a resize grip in the given rectangle on `cr` using the given
/// parameters.
///
/// **paint_resize_grip is deprecated:**
/// Use gtk_render_handle() instead
@available(*, deprecated)
    @inlinable public func paintResizeGrip<ContextT: Cairo.ContextProtocol, StyleT: StyleProtocol, WidgetT: WidgetProtocol>(style: StyleT, cr: ContextT, stateType: GtkStateType, widget: WidgetT?, detail: UnsafePointer<gchar>? = nil, edge: GdkWindowEdge, x: Int, y: Int, width: Int, height: Int) {
    gtk_paint_resize_grip(style.style_ptr, cr._ptr, stateType, widget?.widget_ptr, detail, edge, gint(x), gint(y), gint(width), gint(height))

}




/// Draws a shadow around the given rectangle in `cr`
/// using the given style and state and shadow type.
///
/// **paint_shadow is deprecated:**
/// Use gtk_render_frame() instead
@available(*, deprecated)
    @inlinable public func paintShadow<ContextT: Cairo.ContextProtocol, StyleT: StyleProtocol>(style: StyleT, cr: ContextT, stateType: GtkStateType, shadowType: GtkShadowType, widget: WidgetRef? = nil, detail: UnsafePointer<gchar>? = nil, x: Int, y: Int, width: Int, height: Int) {
    gtk_paint_shadow(style.style_ptr, cr._ptr, stateType, shadowType, widget?.widget_ptr, detail, gint(x), gint(y), gint(width), gint(height))

}
/// Draws a shadow around the given rectangle in `cr`
/// using the given style and state and shadow type.
///
/// **paint_shadow is deprecated:**
/// Use gtk_render_frame() instead
@available(*, deprecated)
    @inlinable public func paintShadow<ContextT: Cairo.ContextProtocol, StyleT: StyleProtocol, WidgetT: WidgetProtocol>(style: StyleT, cr: ContextT, stateType: GtkStateType, shadowType: GtkShadowType, widget: WidgetT?, detail: UnsafePointer<gchar>? = nil, x: Int, y: Int, width: Int, height: Int) {
    gtk_paint_shadow(style.style_ptr, cr._ptr, stateType, shadowType, widget?.widget_ptr, detail, gint(x), gint(y), gint(width), gint(height))

}




/// Draws a shadow around the given rectangle in `cr`
/// using the given style and state and shadow type, leaving a
/// gap in one side.
///
/// **paint_shadow_gap is deprecated:**
/// Use gtk_render_frame_gap() instead
@available(*, deprecated)
    @inlinable public func paintShadowGap<ContextT: Cairo.ContextProtocol, StyleT: StyleProtocol>(style: StyleT, cr: ContextT, stateType: GtkStateType, shadowType: GtkShadowType, widget: WidgetRef? = nil, detail: UnsafePointer<gchar>? = nil, x: Int, y: Int, width: Int, height: Int, gapSide: GtkPositionType, gapX: Int, gapWidth: Int) {
    gtk_paint_shadow_gap(style.style_ptr, cr._ptr, stateType, shadowType, widget?.widget_ptr, detail, gint(x), gint(y), gint(width), gint(height), gapSide, gint(gapX), gint(gapWidth))

}
/// Draws a shadow around the given rectangle in `cr`
/// using the given style and state and shadow type, leaving a
/// gap in one side.
///
/// **paint_shadow_gap is deprecated:**
/// Use gtk_render_frame_gap() instead
@available(*, deprecated)
    @inlinable public func paintShadowGap<ContextT: Cairo.ContextProtocol, StyleT: StyleProtocol, WidgetT: WidgetProtocol>(style: StyleT, cr: ContextT, stateType: GtkStateType, shadowType: GtkShadowType, widget: WidgetT?, detail: UnsafePointer<gchar>? = nil, x: Int, y: Int, width: Int, height: Int, gapSide: GtkPositionType, gapX: Int, gapWidth: Int) {
    gtk_paint_shadow_gap(style.style_ptr, cr._ptr, stateType, shadowType, widget?.widget_ptr, detail, gint(x), gint(y), gint(width), gint(height), gapSide, gint(gapX), gint(gapWidth))

}




/// Draws a slider in the given rectangle on `cr` using the
/// given style and orientation.
///
/// **paint_slider is deprecated:**
/// Use gtk_render_slider() instead
@available(*, deprecated)
    @inlinable public func paintSlider<ContextT: Cairo.ContextProtocol, StyleT: StyleProtocol>(style: StyleT, cr: ContextT, stateType: GtkStateType, shadowType: GtkShadowType, widget: WidgetRef? = nil, detail: UnsafePointer<gchar>? = nil, x: Int, y: Int, width: Int, height: Int, orientation: GtkOrientation) {
    gtk_paint_slider(style.style_ptr, cr._ptr, stateType, shadowType, widget?.widget_ptr, detail, gint(x), gint(y), gint(width), gint(height), orientation)

}
/// Draws a slider in the given rectangle on `cr` using the
/// given style and orientation.
///
/// **paint_slider is deprecated:**
/// Use gtk_render_slider() instead
@available(*, deprecated)
    @inlinable public func paintSlider<ContextT: Cairo.ContextProtocol, StyleT: StyleProtocol, WidgetT: WidgetProtocol>(style: StyleT, cr: ContextT, stateType: GtkStateType, shadowType: GtkShadowType, widget: WidgetT?, detail: UnsafePointer<gchar>? = nil, x: Int, y: Int, width: Int, height: Int, orientation: GtkOrientation) {
    gtk_paint_slider(style.style_ptr, cr._ptr, stateType, shadowType, widget?.widget_ptr, detail, gint(x), gint(y), gint(width), gint(height), orientation)

}




/// Draws a spinner on `window` using the given parameters.
///
/// **paint_spinner is deprecated:**
/// Use gtk_render_icon() and the #GtkStyleContext
///   you are drawing instead
@available(*, deprecated)
    @inlinable public func paintSpinner<ContextT: Cairo.ContextProtocol, StyleT: StyleProtocol>(style: StyleT, cr: ContextT, stateType: GtkStateType, widget: WidgetRef? = nil, detail: UnsafePointer<gchar>? = nil, step: Int, x: Int, y: Int, width: Int, height: Int) {
    gtk_paint_spinner(style.style_ptr, cr._ptr, stateType, widget?.widget_ptr, detail, guint(step), gint(x), gint(y), gint(width), gint(height))

}
/// Draws a spinner on `window` using the given parameters.
///
/// **paint_spinner is deprecated:**
/// Use gtk_render_icon() and the #GtkStyleContext
///   you are drawing instead
@available(*, deprecated)
    @inlinable public func paintSpinner<ContextT: Cairo.ContextProtocol, StyleT: StyleProtocol, WidgetT: WidgetProtocol>(style: StyleT, cr: ContextT, stateType: GtkStateType, widget: WidgetT?, detail: UnsafePointer<gchar>? = nil, step: Int, x: Int, y: Int, width: Int, height: Int) {
    gtk_paint_spinner(style.style_ptr, cr._ptr, stateType, widget?.widget_ptr, detail, guint(step), gint(x), gint(y), gint(width), gint(height))

}




/// Draws an option menu tab (i.e. the up and down pointing arrows)
/// in the given rectangle on `cr` using the given parameters.
///
/// **paint_tab is deprecated:**
/// Use cairo instead
@available(*, deprecated)
    @inlinable public func paintTab<ContextT: Cairo.ContextProtocol, StyleT: StyleProtocol>(style: StyleT, cr: ContextT, stateType: GtkStateType, shadowType: GtkShadowType, widget: WidgetRef? = nil, detail: UnsafePointer<gchar>? = nil, x: Int, y: Int, width: Int, height: Int) {
    gtk_paint_tab(style.style_ptr, cr._ptr, stateType, shadowType, widget?.widget_ptr, detail, gint(x), gint(y), gint(width), gint(height))

}
/// Draws an option menu tab (i.e. the up and down pointing arrows)
/// in the given rectangle on `cr` using the given parameters.
///
/// **paint_tab is deprecated:**
/// Use cairo instead
@available(*, deprecated)
    @inlinable public func paintTab<ContextT: Cairo.ContextProtocol, StyleT: StyleProtocol, WidgetT: WidgetProtocol>(style: StyleT, cr: ContextT, stateType: GtkStateType, shadowType: GtkShadowType, widget: WidgetT?, detail: UnsafePointer<gchar>? = nil, x: Int, y: Int, width: Int, height: Int) {
    gtk_paint_tab(style.style_ptr, cr._ptr, stateType, shadowType, widget?.widget_ptr, detail, gint(x), gint(y), gint(width), gint(height))

}




/// Draws a vertical line from (`x`, `y1_`) to (`x`, `y2_`) in `cr`
/// using the given style and state.
///
/// **paint_vline is deprecated:**
/// Use gtk_render_line() instead
@available(*, deprecated)
    @inlinable public func paintVline<ContextT: Cairo.ContextProtocol, StyleT: StyleProtocol>(style: StyleT, cr: ContextT, stateType: GtkStateType, widget: WidgetRef? = nil, detail: UnsafePointer<gchar>? = nil, y1: Int, y2: Int, x: Int) {
    gtk_paint_vline(style.style_ptr, cr._ptr, stateType, widget?.widget_ptr, detail, gint(y1), gint(y2), gint(x))

}
/// Draws a vertical line from (`x`, `y1_`) to (`x`, `y2_`) in `cr`
/// using the given style and state.
///
/// **paint_vline is deprecated:**
/// Use gtk_render_line() instead
@available(*, deprecated)
    @inlinable public func paintVline<ContextT: Cairo.ContextProtocol, StyleT: StyleProtocol, WidgetT: WidgetProtocol>(style: StyleT, cr: ContextT, stateType: GtkStateType, widget: WidgetT?, detail: UnsafePointer<gchar>? = nil, y1: Int, y2: Int, x: Int) {
    gtk_paint_vline(style.style_ptr, cr._ptr, stateType, widget?.widget_ptr, detail, gint(y1), gint(y2), gint(x))

}




/// Returns the name of the default paper size, which
/// depends on the current locale.
@inlinable public func paperSizeGetDefault() -> String! {
    guard let rv = gtk_paper_size_get_default().map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Creates a list of known paper sizes.
@inlinable public func paperSizeGetPaperSizes(includeCustom: Bool) -> GLib.ListRef! {
    guard let rv = GLib.ListRef(gtk_paper_size_get_paper_sizes(gboolean((includeCustom) ? 1 : 0))) else { return nil }
    return rv
}




/// Parses command line arguments, and initializes global
/// attributes of GTK+, but does not actually open a connection
/// to a display. (See `gdk_display_open()`, `gdk_get_display_arg_name()`)
/// 
/// Any arguments used by GTK+ or GDK are removed from the array and
/// `argc` and `argv` are updated accordingly.
/// 
/// There is no need to call this function explicitly if you are using
/// `gtk_init()`, or `gtk_init_check()`.
/// 
/// Note that many aspects of GTK+ require a display connection to
/// function, so this way of initializing GTK+ is really only useful
/// for specialized use cases.
@inlinable public func parseArgs(argc: UnsafeMutablePointer<gint>!, argv: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>?>!) -> Bool {
    let rv = ((gtk_parse_args(argc, argv)) != 0)
    return rv
}




/// Registers an error quark for `GtkPrintOperation` if necessary.
@inlinable public func printErrorQuark() -> GQuark {
    let rv = gtk_print_error_quark()
    return rv
}




/// Runs a page setup dialog, letting the user modify the values from
/// `page_setup`. If the user cancels the dialog, the returned `GtkPageSetup`
/// is identical to the passed in `page_setup`, otherwise it contains the
/// modifications done in the dialog.
/// 
/// Note that this function may use a recursive mainloop to show the page
/// setup dialog. See `gtk_print_run_page_setup_dialog_async()` if this is
/// a problem.
@inlinable public func printRunPageSetupDialog<PrintSettingsT: PrintSettingsProtocol>(parent: WindowRef? = nil, pageSetup: PageSetupRef? = nil, settings: PrintSettingsT) -> PageSetupRef! {
    guard let rv = PageSetupRef(gconstpointer: gconstpointer(gtk_print_run_page_setup_dialog(parent?.window_ptr, pageSetup?.page_setup_ptr, settings.print_settings_ptr))) else { return nil }
    return rv
}
/// Runs a page setup dialog, letting the user modify the values from
/// `page_setup`. If the user cancels the dialog, the returned `GtkPageSetup`
/// is identical to the passed in `page_setup`, otherwise it contains the
/// modifications done in the dialog.
/// 
/// Note that this function may use a recursive mainloop to show the page
/// setup dialog. See `gtk_print_run_page_setup_dialog_async()` if this is
/// a problem.
@inlinable public func printRunPageSetupDialog<PageSetupT: PageSetupProtocol, PrintSettingsT: PrintSettingsProtocol, WindowT: WindowProtocol>(parent: WindowT?, pageSetup: PageSetupT?, settings: PrintSettingsT) -> PageSetupRef! {
    guard let rv = PageSetupRef(gconstpointer: gconstpointer(gtk_print_run_page_setup_dialog(parent?.window_ptr, pageSetup?.page_setup_ptr, settings.print_settings_ptr))) else { return nil }
    return rv
}




/// Runs a page setup dialog, letting the user modify the values from `page_setup`.
/// 
/// In contrast to `gtk_print_run_page_setup_dialog()`, this function  returns after
/// showing the page setup dialog on platforms that support this, and calls `done_cb`
/// from a signal handler for the `response` signal of the dialog.
@inlinable public func printRunPageSetupDialogAsync<PrintSettingsT: PrintSettingsProtocol>(parent: WindowRef? = nil, pageSetup: PageSetupRef? = nil, settings: PrintSettingsT, doneCb: GtkPageSetupDoneFunc?, data: gpointer! = nil) {
    gtk_print_run_page_setup_dialog_async(parent?.window_ptr, pageSetup?.page_setup_ptr, settings.print_settings_ptr, doneCb, data)

}
/// Runs a page setup dialog, letting the user modify the values from `page_setup`.
/// 
/// In contrast to `gtk_print_run_page_setup_dialog()`, this function  returns after
/// showing the page setup dialog on platforms that support this, and calls `done_cb`
/// from a signal handler for the `response` signal of the dialog.
@inlinable public func printRunPageSetupDialogAsync<PageSetupT: PageSetupProtocol, PrintSettingsT: PrintSettingsProtocol, WindowT: WindowProtocol>(parent: WindowT?, pageSetup: PageSetupT?, settings: PrintSettingsT, doneCb: GtkPageSetupDoneFunc?, data: gpointer! = nil) {
    gtk_print_run_page_setup_dialog_async(parent?.window_ptr, pageSetup?.page_setup_ptr, settings.print_settings_ptr, doneCb, data)

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
@inlinable public func propagateEvent<EventT: Gdk.EventProtocol, WidgetT: WidgetProtocol>(widget: WidgetT, event: EventT) {
    gtk_propagate_event(widget.widget_ptr, event.event_ptr)

}




/// Adds a file to the list of files to be parsed at the
/// end of `gtk_init()`.
///
/// **rc_add_default_file is deprecated:**
/// Use #GtkStyleContext with a custom #GtkStyleProvider instead
@available(*, deprecated)
    @inlinable public func rcAddDefaultFile(filename: UnsafePointer<gchar>!) {
    gtk_rc_add_default_file(filename)

}




/// Searches for a theme engine in the GTK+ search path. This function
/// is not useful for applications and should not be used.
///
/// **rc_find_module_in_path is deprecated:**
/// Use #GtkCssProvider instead.
@available(*, deprecated)
    @inlinable public func rcFindModuleInPath(moduleFile: UnsafePointer<gchar>!) -> String! {
    guard let rv = gtk_rc_find_module_in_path(moduleFile).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Looks up a file in pixmap path for the specified `GtkSettings`.
/// If the file is not found, it outputs a warning message using
/// `g_warning()` and returns `nil`.
///
/// **rc_find_pixmap_in_path is deprecated:**
/// Use #GtkCssProvider instead.
@available(*, deprecated)
    @inlinable public func rcFindPixmapInPath<ScannerT: GLib.ScannerProtocol, SettingsT: SettingsProtocol>(settings: SettingsT, scanner: ScannerT, pixmapFile: UnsafePointer<gchar>!) -> String! {
    guard let rv = gtk_rc_find_pixmap_in_path(settings.settings_ptr, scanner._ptr, pixmapFile).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Retrieves the current list of RC files that will be parsed
/// at the end of `gtk_init()`.
///
/// **rc_get_default_files is deprecated:**
/// Use #GtkStyleContext instead
@available(*, deprecated)
    @inlinable public func rcGetDefaultFiles() -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
    guard let rv = gtk_rc_get_default_files() else { return nil }
    return rv
}




/// Obtains the path to the IM modules file. See the documentation
/// of the `GTK_IM_MODULE_FILE`
/// environment variable for more details.
///
/// **rc_get_im_module_file is deprecated:**
/// Use #GtkCssProvider instead.
@available(*, deprecated)
    @inlinable public func rcGetImModuleFile() -> String! {
    guard let rv = gtk_rc_get_im_module_file().map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Obtains the path in which to look for IM modules. See the documentation
/// of the `GTK_PATH`
/// environment variable for more details about looking up modules. This
/// function is useful solely for utilities supplied with GTK+ and should
/// not be used by applications under normal circumstances.
///
/// **rc_get_im_module_path is deprecated:**
/// Use #GtkCssProvider instead.
@available(*, deprecated)
    @inlinable public func rcGetImModulePath() -> String! {
    guard let rv = gtk_rc_get_im_module_path().map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Returns a directory in which GTK+ looks for theme engines.
/// For full information about the search for theme engines,
/// see the docs for `GTK_PATH` in [Running GTK+ Applications](#gtk-running).
///
/// **rc_get_module_dir is deprecated:**
/// Use #GtkCssProvider instead.
@available(*, deprecated)
    @inlinable public func rcGetModuleDir() -> String! {
    guard let rv = gtk_rc_get_module_dir().map({ String(cString: $0) }) else { return nil }
    return rv
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
@available(*, deprecated)
    @inlinable public func rcGetStyle<WidgetT: WidgetProtocol>(widget: WidgetT) -> StyleRef! {
    guard let rv = StyleRef(gconstpointer: gconstpointer(gtk_rc_get_style(widget.widget_ptr))) else { return nil }
    return rv
}




/// Creates up a `GtkStyle` from styles defined in a RC file by providing
/// the raw components used in matching. This function may be useful
/// when creating pseudo-widgets that should be themed like widgets but
/// don’t actually have corresponding GTK+ widgets. An example of this
/// would be items inside a GNOME canvas widget.
/// 
/// The action of `gtk_rc_get_style()` is similar to:
/// (C Language Example):
/// ```C
///  gtk_widget_path (widget, NULL, &path, NULL);
///  gtk_widget_class_path (widget, NULL, &class_path, NULL);
///  gtk_rc_get_style_by_paths (gtk_widget_get_settings (widget),
///                             path, class_path,
///                             G_OBJECT_TYPE (widget));
/// ```
/// 
///
/// **rc_get_style_by_paths is deprecated:**
/// Use #GtkStyleContext instead
@available(*, deprecated)
    @inlinable public func rcGetStyleByPaths<SettingsT: SettingsProtocol>(settings: SettingsT, widgetPath: UnsafePointer<CChar>? = nil, classPath: UnsafePointer<CChar>? = nil, type: GType) -> StyleRef! {
    guard let rv = StyleRef(gconstpointer: gconstpointer(gtk_rc_get_style_by_paths(settings.settings_ptr, widgetPath, classPath, type))) else { return nil }
    return rv
}




/// Returns the standard directory in which themes should
/// be installed. (GTK+ does not actually use this directory
/// itself.)
///
/// **rc_get_theme_dir is deprecated:**
/// Use #GtkCssProvider instead.
@available(*, deprecated)
    @inlinable public func rcGetThemeDir() -> String! {
    guard let rv = gtk_rc_get_theme_dir().map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Parses a given resource file.
///
/// **rc_parse is deprecated:**
/// Use #GtkCssProvider instead.
@available(*, deprecated)
    @inlinable public func rcParse(filename: UnsafePointer<gchar>!) {
    gtk_rc_parse(filename)

}




/// Parses a color in the format expected
/// in a RC file.
/// 
/// Note that theme engines should use `gtk_rc_parse_color_full()` in
/// order to support symbolic colors.
///
/// **rc_parse_color is deprecated:**
/// Use #GtkCssProvider instead
@available(*, deprecated)
    @inlinable public func rcParseColor<ColorT: Gdk.ColorProtocol, ScannerT: GLib.ScannerProtocol>(scanner: ScannerT, color: ColorT) -> Int {
    let rv = Int(gtk_rc_parse_color(scanner._ptr, color.color_ptr))
    return rv
}




/// Parses a color in the format expected
/// in a RC file. If `style` is not `nil`, it will be consulted to resolve
/// references to symbolic colors.
///
/// **rc_parse_color_full is deprecated:**
/// Use #GtkCssProvider instead
@available(*, deprecated)
    @inlinable public func rcParseColorFull<ColorT: Gdk.ColorProtocol, ScannerT: GLib.ScannerProtocol>(scanner: ScannerT, style: RcStyleRef? = nil, color: ColorT) -> Int {
    let rv = Int(gtk_rc_parse_color_full(scanner._ptr, style?.rc_style_ptr, color.color_ptr))
    return rv
}
/// Parses a color in the format expected
/// in a RC file. If `style` is not `nil`, it will be consulted to resolve
/// references to symbolic colors.
///
/// **rc_parse_color_full is deprecated:**
/// Use #GtkCssProvider instead
@available(*, deprecated)
    @inlinable public func rcParseColorFull<ColorT: Gdk.ColorProtocol, RcStyleT: RcStyleProtocol, ScannerT: GLib.ScannerProtocol>(scanner: ScannerT, style: RcStyleT?, color: ColorT) -> Int {
    let rv = Int(gtk_rc_parse_color_full(scanner._ptr, style?.rc_style_ptr, color.color_ptr))
    return rv
}




/// Parses a `GtkPathPriorityType` variable from the format expected
/// in a RC file.
///
/// **rc_parse_priority is deprecated:**
/// Use #GtkCssProvider instead
@available(*, deprecated)
    @inlinable public func rcParsePriority<ScannerT: GLib.ScannerProtocol>(scanner: ScannerT, priority: UnsafeMutablePointer<GtkPathPriorityType>!) -> Int {
    let rv = Int(gtk_rc_parse_priority(scanner._ptr, priority))
    return rv
}




/// Parses a `GtkStateType` variable from the format expected
/// in a RC file.
///
/// **rc_parse_state is deprecated:**
/// Use #GtkCssProvider instead
@available(*, deprecated)
    @inlinable public func rcParseState<ScannerT: GLib.ScannerProtocol>(scanner: ScannerT, state: UnsafeMutablePointer<GtkStateType>!) -> Int {
    let rv = Int(gtk_rc_parse_state(scanner._ptr, state))
    return rv
}




/// Parses resource information directly from a string.
///
/// **rc_parse_string is deprecated:**
/// Use #GtkCssProvider instead.
@available(*, deprecated)
    @inlinable public func rcParseString(rcString: UnsafePointer<gchar>!) {
    gtk_rc_parse_string(rcString)

}




/// A `GtkRcPropertyParser` for use with `gtk_settings_install_property_parser()`
/// or `gtk_widget_class_install_style_property_parser()` which parses
/// borders in the form
/// `"{ left, right, top, bottom }"` for integers
/// left, right, top and bottom.
@inlinable public func rcPropertyParseBorder<ParamSpecT: GLibObject.ParamSpecProtocol, StringTypeT: StringProtocol, ValueT: GLibObject.ValueProtocol>(pspec: ParamSpecT, gstring: StringTypeT, propertyValue: ValueT) -> Bool {
    let rv = ((gtk_rc_property_parse_border(pspec.param_spec_ptr, gstring.gstring_ptr, propertyValue.value_ptr)) != 0)
    return rv
}




/// A `GtkRcPropertyParser` for use with `gtk_settings_install_property_parser()`
/// or `gtk_widget_class_install_style_property_parser()` which parses a
/// color given either by its name or in the form
/// `{ red, green, blue }` where red, green and
/// blue are integers between 0 and 65535 or floating-point numbers
/// between 0 and 1.
@inlinable public func rcPropertyParseColor<ParamSpecT: GLibObject.ParamSpecProtocol, StringTypeT: StringProtocol, ValueT: GLibObject.ValueProtocol>(pspec: ParamSpecT, gstring: StringTypeT, propertyValue: ValueT) -> Bool {
    let rv = ((gtk_rc_property_parse_color(pspec.param_spec_ptr, gstring.gstring_ptr, propertyValue.value_ptr)) != 0)
    return rv
}




/// A `GtkRcPropertyParser` for use with `gtk_settings_install_property_parser()`
/// or `gtk_widget_class_install_style_property_parser()` which parses a single
/// enumeration value.
/// 
/// The enumeration value can be specified by its name, its nickname or
/// its numeric value. For consistency with flags parsing, the value
/// may be surrounded by parentheses.
@inlinable public func rcPropertyParseEnum<ParamSpecT: GLibObject.ParamSpecProtocol, StringTypeT: StringProtocol, ValueT: GLibObject.ValueProtocol>(pspec: ParamSpecT, gstring: StringTypeT, propertyValue: ValueT) -> Bool {
    let rv = ((gtk_rc_property_parse_enum(pspec.param_spec_ptr, gstring.gstring_ptr, propertyValue.value_ptr)) != 0)
    return rv
}




/// A `GtkRcPropertyParser` for use with `gtk_settings_install_property_parser()`
/// or `gtk_widget_class_install_style_property_parser()` which parses flags.
/// 
/// Flags can be specified by their name, their nickname or
/// numerically. Multiple flags can be specified in the form
/// `"( flag1 | flag2 | ... )"`.
@inlinable public func rcPropertyParseFlags<ParamSpecT: GLibObject.ParamSpecProtocol, StringTypeT: StringProtocol, ValueT: GLibObject.ValueProtocol>(pspec: ParamSpecT, gstring: StringTypeT, propertyValue: ValueT) -> Bool {
    let rv = ((gtk_rc_property_parse_flags(pspec.param_spec_ptr, gstring.gstring_ptr, propertyValue.value_ptr)) != 0)
    return rv
}




/// A `GtkRcPropertyParser` for use with `gtk_settings_install_property_parser()`
/// or `gtk_widget_class_install_style_property_parser()` which parses a
/// requisition in the form
/// `"{ width, height }"` for integers `width` and `height`.
@inlinable public func rcPropertyParseRequisition<ParamSpecT: GLibObject.ParamSpecProtocol, StringTypeT: StringProtocol, ValueT: GLibObject.ValueProtocol>(pspec: ParamSpecT, gstring: StringTypeT, propertyValue: ValueT) -> Bool {
    let rv = ((gtk_rc_property_parse_requisition(pspec.param_spec_ptr, gstring.gstring_ptr, propertyValue.value_ptr)) != 0)
    return rv
}




/// If the modification time on any previously read file for the
/// default `GtkSettings` has changed, discard all style information
/// and then reread all previously read RC files.
///
/// **rc_reparse_all is deprecated:**
/// Use #GtkCssProvider instead.
@available(*, deprecated)
    @inlinable public func rcReparseAll() -> Bool {
    let rv = ((gtk_rc_reparse_all()) != 0)
    return rv
}




/// If the modification time on any previously read file
/// for the given `GtkSettings` has changed, discard all style information
/// and then reread all previously read RC files.
///
/// **rc_reparse_all_for_settings is deprecated:**
/// Use #GtkCssProvider instead.
@available(*, deprecated)
    @inlinable public func rcReparseAllFor<SettingsT: SettingsProtocol>(settings: SettingsT, forceLoad: Bool) -> Bool {
    let rv = ((gtk_rc_reparse_all_for_settings(settings.settings_ptr, gboolean((forceLoad) ? 1 : 0))) != 0)
    return rv
}




/// This function recomputes the styles for all widgets that use a
/// particular `GtkSettings` object. (There is one `GtkSettings` object
/// per `GdkScreen`, see `gtk_settings_get_for_screen()`); It is useful
/// when some global parameter has changed that affects the appearance
/// of all widgets, because when a widget gets a new style, it will
/// both redraw and recompute any cached information about its
/// appearance. As an example, it is used when the default font size
/// set by the operating system changes. Note that this function
/// doesn’t affect widgets that have a style set explicitly on them
/// with `gtk_widget_set_style()`.
///
/// **rc_reset_styles is deprecated:**
/// Use #GtkCssProvider instead.
@available(*, deprecated)
    @inlinable public func rcResetStyles<SettingsT: SettingsProtocol>(settings: SettingsT) {
    gtk_rc_reset_styles(settings.settings_ptr)

}





///
/// **rc_scanner_new is deprecated:**
/// Use #GtkCssProvider instead
@available(*, deprecated)
    @inlinable public func rcScannerNew() -> GLib.ScannerRef! {
    guard let rv = GLib.ScannerRef(gtk_rc_scanner_new()) else { return nil }
    return rv
}




/// Sets the list of files that GTK+ will read at the
/// end of `gtk_init()`.
///
/// **rc_set_default_files is deprecated:**
/// Use #GtkStyleContext with a custom #GtkStyleProvider instead
@available(*, deprecated)
    @inlinable public func rcSetDefaultFiles(filenames: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>!) {
    gtk_rc_set_default_files(filenames)

}




@inlinable public func recentChooserErrorQuark() -> GQuark {
    let rv = gtk_recent_chooser_error_quark()
    return rv
}




@inlinable public func recentManagerErrorQuark() -> GQuark {
    let rv = gtk_recent_manager_error_quark()
    return rv
}




/// Renders an activity indicator (such as in `GtkSpinner`).
/// The state `GTK_STATE_FLAG_CHECKED` determines whether there is
/// activity going on.
@inlinable public func renderActivity<ContextT: Cairo.ContextProtocol, StyleContextT: StyleContextProtocol>(context: StyleContextT, cr: ContextT, x: Double, y: Double, width: Double, height: Double) {
    gtk_render_activity(context.style_context_ptr, cr._ptr, gdouble(x), gdouble(y), gdouble(width), gdouble(height))

}




/// Renders an arrow pointing to `angle`.
/// 
/// Typical arrow rendering at 0, 1⁄2 π;, π; and 3⁄2 π:
/// 
/// ![](arrows.png)
@inlinable public func renderArrow<ContextT: Cairo.ContextProtocol, StyleContextT: StyleContextProtocol>(context: StyleContextT, cr: ContextT, angle: Double, x: Double, y: Double, size: Double) {
    gtk_render_arrow(context.style_context_ptr, cr._ptr, gdouble(angle), gdouble(x), gdouble(y), gdouble(size))

}




/// Renders the background of an element.
/// 
/// Typical background rendering, showing the effect of
/// `background-image`, `border-width` and `border-radius`:
/// 
/// ![](background.png)
@inlinable public func renderBackground<ContextT: Cairo.ContextProtocol, StyleContextT: StyleContextProtocol>(context: StyleContextT, cr: ContextT, x: Double, y: Double, width: Double, height: Double) {
    gtk_render_background(context.style_context_ptr, cr._ptr, gdouble(x), gdouble(y), gdouble(width), gdouble(height))

}




/// Returns the area that will be affected (i.e. drawn to) when
/// calling `gtk_render_background()` for the given `context` and
/// rectangle.
@inlinable public func renderBackgroundGetClip<RectangleT: Gdk.RectangleProtocol, StyleContextT: StyleContextProtocol>(context: StyleContextT, x: Double, y: Double, width: Double, height: Double, outClip: RectangleT) {
    gtk_render_background_get_clip(context.style_context_ptr, gdouble(x), gdouble(y), gdouble(width), gdouble(height), outClip.rectangle_ptr)

}




/// Renders a checkmark (as in a `GtkCheckButton`).
/// 
/// The `GTK_STATE_FLAG_CHECKED` state determines whether the check is
/// on or off, and `GTK_STATE_FLAG_INCONSISTENT` determines whether it
/// should be marked as undefined.
/// 
/// Typical checkmark rendering:
/// 
/// ![](checks.png)
@inlinable public func renderCheck<ContextT: Cairo.ContextProtocol, StyleContextT: StyleContextProtocol>(context: StyleContextT, cr: ContextT, x: Double, y: Double, width: Double, height: Double) {
    gtk_render_check(context.style_context_ptr, cr._ptr, gdouble(x), gdouble(y), gdouble(width), gdouble(height))

}




/// Renders an expander (as used in `GtkTreeView` and `GtkExpander`) in the area
/// defined by `x`, `y`, `width`, `height`. The state `GTK_STATE_FLAG_CHECKED`
/// determines whether the expander is collapsed or expanded.
/// 
/// Typical expander rendering:
/// 
/// ![](expanders.png)
@inlinable public func renderExpander<ContextT: Cairo.ContextProtocol, StyleContextT: StyleContextProtocol>(context: StyleContextT, cr: ContextT, x: Double, y: Double, width: Double, height: Double) {
    gtk_render_expander(context.style_context_ptr, cr._ptr, gdouble(x), gdouble(y), gdouble(width), gdouble(height))

}




/// Renders a extension (as in a `GtkNotebook` tab) in the rectangle
/// defined by `x`, `y`, `width`, `height`. The side where the extension
/// connects to is defined by `gap_side`.
/// 
/// Typical extension rendering:
/// 
/// ![](extensions.png)
@inlinable public func renderExtension<ContextT: Cairo.ContextProtocol, StyleContextT: StyleContextProtocol>(context: StyleContextT, cr: ContextT, x: Double, y: Double, width: Double, height: Double, gapSide: GtkPositionType) {
    gtk_render_extension(context.style_context_ptr, cr._ptr, gdouble(x), gdouble(y), gdouble(width), gdouble(height), gapSide)

}




/// Renders a focus indicator on the rectangle determined by `x`, `y`, `width`, `height`.
/// 
/// Typical focus rendering:
/// 
/// ![](focus.png)
@inlinable public func renderFocus<ContextT: Cairo.ContextProtocol, StyleContextT: StyleContextProtocol>(context: StyleContextT, cr: ContextT, x: Double, y: Double, width: Double, height: Double) {
    gtk_render_focus(context.style_context_ptr, cr._ptr, gdouble(x), gdouble(y), gdouble(width), gdouble(height))

}




/// Renders a frame around the rectangle defined by `x`, `y`, `width`, `height`.
/// 
/// Examples of frame rendering, showing the effect of `border-image`,
/// `border-color`, `border-width`, `border-radius` and junctions:
/// 
/// ![](frames.png)
@inlinable public func renderFrame<ContextT: Cairo.ContextProtocol, StyleContextT: StyleContextProtocol>(context: StyleContextT, cr: ContextT, x: Double, y: Double, width: Double, height: Double) {
    gtk_render_frame(context.style_context_ptr, cr._ptr, gdouble(x), gdouble(y), gdouble(width), gdouble(height))

}




/// Renders a frame around the rectangle defined by (`x`, `y`, `width`, `height`),
/// leaving a gap on one side. `xy0_gap` and `xy1_gap` will mean X coordinates
/// for `GTK_POS_TOP` and `GTK_POS_BOTTOM` gap sides, and Y coordinates for
/// `GTK_POS_LEFT` and `GTK_POS_RIGHT`.
/// 
/// Typical rendering of a frame with a gap:
/// 
/// ![](frame-gap.png)
///
/// **render_frame_gap is deprecated:**
/// Use gtk_render_frame() instead. Themes can create gaps
///     by omitting borders via CSS.
@available(*, deprecated)
    @inlinable public func renderFrameGap<ContextT: Cairo.ContextProtocol, StyleContextT: StyleContextProtocol>(context: StyleContextT, cr: ContextT, x: Double, y: Double, width: Double, height: Double, gapSide: GtkPositionType, xy0Gap: Double, xy1Gap: Double) {
    gtk_render_frame_gap(context.style_context_ptr, cr._ptr, gdouble(x), gdouble(y), gdouble(width), gdouble(height), gapSide, gdouble(xy0Gap), gdouble(xy1Gap))

}




/// Renders a handle (as in `GtkHandleBox`, `GtkPaned` and
/// `GtkWindow`’s resize grip), in the rectangle
/// determined by `x`, `y`, `width`, `height`.
/// 
/// Handles rendered for the paned and grip classes:
/// 
/// ![](handles.png)
@inlinable public func renderHandle<ContextT: Cairo.ContextProtocol, StyleContextT: StyleContextProtocol>(context: StyleContextT, cr: ContextT, x: Double, y: Double, width: Double, height: Double) {
    gtk_render_handle(context.style_context_ptr, cr._ptr, gdouble(x), gdouble(y), gdouble(width), gdouble(height))

}




/// Renders the icon in `pixbuf` at the specified `x` and `y` coordinates.
/// 
/// This function will render the icon in `pixbuf` at exactly its size,
/// regardless of scaling factors, which may not be appropriate when
/// drawing on displays with high pixel densities.
/// 
/// You probably want to use `gtk_render_icon_surface()` instead, if you
/// already have a Cairo surface.
@inlinable public func renderIcon<ContextT: Cairo.ContextProtocol, PixbufT: PixbufProtocol, StyleContextT: StyleContextProtocol>(context: StyleContextT, cr: ContextT, pixbuf: PixbufT, x: Double, y: Double) {
    gtk_render_icon(context.style_context_ptr, cr._ptr, pixbuf.pixbuf_ptr, gdouble(x), gdouble(y))

}




/// Renders the icon specified by `source` at the given `size`, returning the result
/// in a pixbuf.
///
/// **render_icon_pixbuf is deprecated:**
/// Use gtk_icon_theme_load_icon() instead.
@available(*, deprecated)
    @inlinable public func renderIconPixbuf<IconSourceT: IconSourceProtocol, StyleContextT: StyleContextProtocol>(context: StyleContextT, source: IconSourceT, size: GtkIconSize) -> PixbufRef! {
    guard let rv = PixbufRef(gconstpointer: gconstpointer(gtk_render_icon_pixbuf(context.style_context_ptr, source.icon_source_ptr, size))) else { return nil }
    return rv
}




/// Renders the icon in `surface` at the specified `x` and `y` coordinates.
@inlinable public func renderIconSurface<ContextT: Cairo.ContextProtocol, StyleContextT: StyleContextProtocol, SurfaceT: Cairo.SurfaceProtocol>(context: StyleContextT, cr: ContextT, surface: SurfaceT, x: Double, y: Double) {
    gtk_render_icon_surface(context.style_context_ptr, cr._ptr, surface._ptr, gdouble(x), gdouble(y))

}




/// Draws a text caret on `cr` at the specified index of `layout`.
@inlinable public func renderInsertionCursor<ContextT: Cairo.ContextProtocol, LayoutT: Pango.LayoutProtocol, StyleContextT: StyleContextProtocol>(context: StyleContextT, cr: ContextT, x: Double, y: Double, layout: LayoutT, index: Int, direction: PangoDirection) {
    gtk_render_insertion_cursor(context.style_context_ptr, cr._ptr, gdouble(x), gdouble(y), layout.layout_ptr, gint(index), direction)

}




/// Renders `layout` on the coordinates `x`, `y`
@inlinable public func renderLayout<ContextT: Cairo.ContextProtocol, LayoutT: Pango.LayoutProtocol, StyleContextT: StyleContextProtocol>(context: StyleContextT, cr: ContextT, x: Double, y: Double, layout: LayoutT) {
    gtk_render_layout(context.style_context_ptr, cr._ptr, gdouble(x), gdouble(y), layout.layout_ptr)

}




/// Renders a line from (x0, y0) to (x1, y1).
@inlinable public func renderLine<ContextT: Cairo.ContextProtocol, StyleContextT: StyleContextProtocol>(context: StyleContextT, cr: ContextT, x0: Double, y0: Double, x1: Double, y1: Double) {
    gtk_render_line(context.style_context_ptr, cr._ptr, gdouble(x0), gdouble(y0), gdouble(x1), gdouble(y1))

}




/// Renders an option mark (as in a `GtkRadioButton`), the `GTK_STATE_FLAG_CHECKED`
/// state will determine whether the option is on or off, and
/// `GTK_STATE_FLAG_INCONSISTENT` whether it should be marked as undefined.
/// 
/// Typical option mark rendering:
/// 
/// ![](options.png)
@inlinable public func renderOption<ContextT: Cairo.ContextProtocol, StyleContextT: StyleContextProtocol>(context: StyleContextT, cr: ContextT, x: Double, y: Double, width: Double, height: Double) {
    gtk_render_option(context.style_context_ptr, cr._ptr, gdouble(x), gdouble(y), gdouble(width), gdouble(height))

}




/// Renders a slider (as in `GtkScale`) in the rectangle defined by `x`, `y`,
/// `width`, `height`. `orientation` defines whether the slider is vertical
/// or horizontal.
/// 
/// Typical slider rendering:
/// 
/// ![](sliders.png)
@inlinable public func renderSlider<ContextT: Cairo.ContextProtocol, StyleContextT: StyleContextProtocol>(context: StyleContextT, cr: ContextT, x: Double, y: Double, width: Double, height: Double, orientation: GtkOrientation) {
    gtk_render_slider(context.style_context_ptr, cr._ptr, gdouble(x), gdouble(y), gdouble(width), gdouble(height), orientation)

}




/// Converts a color from RGB space to HSV.
/// 
/// Input values must be in the [0.0, 1.0] range;
/// output values will be in the same range.
@inlinable public func rgbToHsv(r: Double, g: Double, b: Double, h: UnsafeMutablePointer<gdouble>!, s: UnsafeMutablePointer<gdouble>!, v: UnsafeMutablePointer<gdouble>!) {
    gtk_rgb_to_hsv(gdouble(r), gdouble(g), gdouble(b), h, s, v)

}




/// Appends a specified target to the list of supported targets for a
/// given widget and selection.
@inlinable public func selectionAddTarget<WidgetT: WidgetProtocol>(widget: WidgetT, selection: GdkAtom, target: GdkAtom, info: Int) {
    gtk_selection_add_target(widget.widget_ptr, selection, target, guint(info))

}




/// Prepends a table of targets to the list of supported targets
/// for a given widget and selection.
@inlinable public func selectionAddTargets<WidgetT: WidgetProtocol>(widget: WidgetT, selection: GdkAtom, targets: UnsafePointer<GtkTargetEntry>!, ntargets: Int) {
    gtk_selection_add_targets(widget.widget_ptr, selection, targets, guint(ntargets))

}




/// Remove all targets registered for the given selection for the
/// widget.
@inlinable public func selectionClearTargets<WidgetT: WidgetProtocol>(widget: WidgetT, selection: GdkAtom) {
    gtk_selection_clear_targets(widget.widget_ptr, selection)

}




/// Requests the contents of a selection. When received,
/// a “selection-received” signal will be generated.
@inlinable public func selectionConvert<WidgetT: WidgetProtocol>(widget: WidgetT, selection: GdkAtom, target: GdkAtom, time: guint32) -> Bool {
    let rv = ((gtk_selection_convert(widget.widget_ptr, selection, target, time)) != 0)
    return rv
}




/// Claims ownership of a given selection for a particular widget,
/// or, if `widget` is `nil`, release ownership of the selection.
@inlinable public func selectionOwnerSet(widget: WidgetRef? = nil, selection: GdkAtom, time: guint32) -> Bool {
    let rv = ((gtk_selection_owner_set(widget?.widget_ptr, selection, time)) != 0)
    return rv
}
/// Claims ownership of a given selection for a particular widget,
/// or, if `widget` is `nil`, release ownership of the selection.
@inlinable public func selectionOwnerSet<WidgetT: WidgetProtocol>(widget: WidgetT?, selection: GdkAtom, time: guint32) -> Bool {
    let rv = ((gtk_selection_owner_set(widget?.widget_ptr, selection, time)) != 0)
    return rv
}




/// Claim ownership of a given selection for a particular widget, or,
/// if `widget` is `nil`, release ownership of the selection.
@inlinable public func selectionOwnerSetFor<DisplayT: Gdk.DisplayProtocol>(display: DisplayT, widget: WidgetRef? = nil, selection: GdkAtom, time: guint32) -> Bool {
    let rv = ((gtk_selection_owner_set_for_display(display.display_ptr, widget?.widget_ptr, selection, time)) != 0)
    return rv
}
/// Claim ownership of a given selection for a particular widget, or,
/// if `widget` is `nil`, release ownership of the selection.
@inlinable public func selectionOwnerSetFor<DisplayT: Gdk.DisplayProtocol, WidgetT: WidgetProtocol>(display: DisplayT, widget: WidgetT?, selection: GdkAtom, time: guint32) -> Bool {
    let rv = ((gtk_selection_owner_set_for_display(display.display_ptr, widget?.widget_ptr, selection, time)) != 0)
    return rv
}




/// Removes all handlers and unsets ownership of all
/// selections for a widget. Called when widget is being
/// destroyed. This function will not generally be
/// called by applications.
@inlinable public func selectionRemoveAll<WidgetT: WidgetProtocol>(widget: WidgetT) {
    gtk_selection_remove_all(widget.widget_ptr)

}




/// Sets the GTK+ debug flags.
@inlinable public func setDebug(flags: Int) {
    gtk_set_debug_flags(guint(flags))

}





// *** showAboutDialog() is not available because it has a varargs (...) parameter!





/// A convenience function for launching the default application
/// to show the uri. Like `gtk_show_uri_on_window()`, but takes a screen
/// as transient parent instead of a window.
/// 
/// Note that this function is deprecated as it does not pass the necessary
/// information for helpers to parent their dialog properly, when run from
/// sandboxed applications for example.
///
/// **show_uri is deprecated:**
/// Use gtk_show_uri_on_window() instead.
@available(*, deprecated)
    @inlinable @available(*, deprecated) public func showURI(screen: Gdk.ScreenRef? = nil, uri: UnsafePointer<gchar>!, timestamp: guint32) throws -> Bool {
    var error: UnsafeMutablePointer<GError>?
    let rv = ((gtk_show_uri(screen?.screen_ptr, uri, timestamp, &error)) != 0)
    if let error = error { throw GLibError(error) }
    return rv
}
/// A convenience function for launching the default application
/// to show the uri. Like `gtk_show_uri_on_window()`, but takes a screen
/// as transient parent instead of a window.
/// 
/// Note that this function is deprecated as it does not pass the necessary
/// information for helpers to parent their dialog properly, when run from
/// sandboxed applications for example.
///
/// **show_uri is deprecated:**
/// Use gtk_show_uri_on_window() instead.
@available(*, deprecated)
    @inlinable public func showURI<ScreenT: Gdk.ScreenProtocol>(screen: ScreenT?, uri: UnsafePointer<gchar>!, timestamp: guint32) throws -> Bool {
    var error: UnsafeMutablePointer<GError>?
    let rv = ((gtk_show_uri(screen?.screen_ptr, uri, timestamp, &error)) != 0)
    if let error = error { throw GLibError(error) }
    return rv
}




/// This is a convenience function for launching the default application
/// to show the uri. The uri must be of a form understood by GIO (i.e. you
/// need to install gvfs to get support for uri schemes such as http://
/// or ftp://, as only local files are handled by GIO itself).
/// Typical examples are
/// - `file:///home/gnome/pict.jpg`
/// - `http://www.gnome.org`
/// - `mailto:me`gnome.org``
/// 
/// Ideally the timestamp is taken from the event triggering
/// the `gtk_show_uri()` call. If timestamp is not known you can take
/// `GDK_CURRENT_TIME`.
/// 
/// This is the recommended call to be used as it passes information
/// necessary for sandbox helpers to parent their dialogs properly.
@inlinable public func showURIOnWindow(parent: WindowRef? = nil, uri: UnsafePointer<CChar>!, timestamp: guint32) throws -> Bool {
    var error: UnsafeMutablePointer<GError>?
    let rv = ((gtk_show_uri_on_window(parent?.window_ptr, uri, timestamp, &error)) != 0)
    if let error = error { throw GLibError(error) }
    return rv
}
/// This is a convenience function for launching the default application
/// to show the uri. The uri must be of a form understood by GIO (i.e. you
/// need to install gvfs to get support for uri schemes such as http://
/// or ftp://, as only local files are handled by GIO itself).
/// Typical examples are
/// - `file:///home/gnome/pict.jpg`
/// - `http://www.gnome.org`
/// - `mailto:me`gnome.org``
/// 
/// Ideally the timestamp is taken from the event triggering
/// the `gtk_show_uri()` call. If timestamp is not known you can take
/// `GDK_CURRENT_TIME`.
/// 
/// This is the recommended call to be used as it passes information
/// necessary for sandbox helpers to parent their dialogs properly.
@inlinable public func showURIOnWindow<WindowT: WindowProtocol>(parent: WindowT?, uri: UnsafePointer<CChar>!, timestamp: guint32) throws -> Bool {
    var error: UnsafeMutablePointer<GError>?
    let rv = ((gtk_show_uri_on_window(parent?.window_ptr, uri, timestamp, &error)) != 0)
    if let error = error { throw GLibError(error) }
    return rv
}




/// Registers each of the stock items in `items`. If an item already
/// exists with the same stock ID as one of the `items`, the old item
/// gets replaced. The stock items are copied, so GTK+ does not hold
/// any pointer into `items` and `items` can be freed. Use
/// `gtk_stock_add_static()` if `items` is persistent and GTK+ need not
/// copy the array.
///
/// **stock_add is deprecated:**
/// This method is deprecated.
@available(*, deprecated)
    @inlinable public func stockAdd(items: UnsafePointer<GtkStockItem>!, nItems: Int) {
    gtk_stock_add(items, guint(nItems))

}




/// Same as `gtk_stock_add()`, but doesn’t copy `items`, so
/// `items` must persist until application exit.
///
/// **stock_add_static is deprecated:**
/// This method is deprecated.
@available(*, deprecated)
    @inlinable public func stockAddStatic(items: UnsafePointer<GtkStockItem>!, nItems: Int) {
    gtk_stock_add_static(items, guint(nItems))

}




/// Retrieves a list of all known stock IDs added to a `GtkIconFactory`
/// or registered with `gtk_stock_add()`. The list must be freed with `g_slist_free()`,
/// and each string in the list must be freed with `g_free()`.
///
/// **stock_list_ids is deprecated:**
/// This method is deprecated.
@available(*, deprecated)
    @inlinable public func stockListIDs() -> GLib.SListRef! {
    guard let rv = GLib.SListRef(gtk_stock_list_ids()) else { return nil }
    return rv
}




/// Fills `item` with the registered values for `stock_id`, returning `true`
/// if `stock_id` was known.
///
/// **stock_lookup is deprecated:**
/// This method is deprecated.
@available(*, deprecated)
    @inlinable public func stockLookup<StockItemT: StockItemProtocol>(stockID: UnsafePointer<gchar>!, item: StockItemT) -> Bool {
    let rv = ((gtk_stock_lookup(stockID, item._ptr)) != 0)
    return rv
}




/// Sets a function to be used for translating the `label` of
/// a stock item.
/// 
/// If no function is registered for a translation domain,
/// `g_dgettext()` is used.
/// 
/// The function is used for all stock items whose
/// `translation_domain` matches `domain`. Note that it is possible
/// to use strings different from the actual gettext translation domain
/// of your application for this, as long as your `GtkTranslateFunc` uses
/// the correct domain when calling `dgettext()`. This can be useful, e.g.
/// when dealing with message contexts:
/// 
/// (C Language Example):
/// ```C
/// GtkStockItem items[] = {
///  { MY_ITEM1, NC_("odd items", "Item 1"), 0, 0, "odd-item-domain" },
///  { MY_ITEM2, NC_("even items", "Item 2"), 0, 0, "even-item-domain" },
/// };
/// 
/// gchar *
/// my_translate_func (const gchar *msgid,
///                    gpointer     data)
/// {
///   gchar *msgctxt = data;
/// 
///   return (gchar*)g_dpgettext2 (GETTEXT_PACKAGE, msgctxt, msgid);
/// }
/// 
/// ...
/// 
/// gtk_stock_add (items, G_N_ELEMENTS (items));
/// gtk_stock_set_translate_func ("odd-item-domain", my_translate_func, "odd items");
/// gtk_stock_set_translate_func ("even-item-domain", my_translate_func, "even items");
/// ```
/// 
///
/// **stock_set_translate_func is deprecated:**
/// This method is deprecated.
@available(*, deprecated)
    @inlinable public func stockSetTranslateFunc(domain: UnsafePointer<gchar>!, `func`: GtkTranslateFunc?, data: gpointer! = nil, notify: GDestroyNotify?) {
    gtk_stock_set_translate_func(domain, `func`, data, notify)

}




/// This function frees a target table as returned by
/// `gtk_target_table_new_from_list()`
@inlinable public func targetTableFree(targets: UnsafeMutablePointer<GtkTargetEntry>!, nTargets: Int) {
    gtk_target_table_free(targets, gint(nTargets))

}




/// This function creates an `GtkTargetEntry` array that contains the
/// same targets as the passed `list`. The returned table is newly
/// allocated and should be freed using `gtk_target_table_free()` when no
/// longer needed.
@inlinable public func targetTableNewFrom<TargetListT: TargetListProtocol>(list: TargetListT, nTargets: UnsafeMutablePointer<gint>!) -> UnsafeMutablePointer<GtkTargetEntry>! {
    guard let rv = gtk_target_table_new_from_list(list.target_list_ptr, nTargets) else { return nil }
    return rv
}




/// Determines if any of the targets in `targets` can be used to
/// provide a `GdkPixbuf`.
@inlinable public func targetsIncludeImage(targets: UnsafeMutablePointer<GdkAtom?>!, nTargets: Int, writable: Bool) -> Bool {
    let rv = ((gtk_targets_include_image(targets, gint(nTargets), gboolean((writable) ? 1 : 0))) != 0)
    return rv
}




/// Determines if any of the targets in `targets` can be used to
/// provide rich text.
@inlinable public func targetsIncludeRichText<TextBufferT: TextBufferProtocol>(targets: UnsafeMutablePointer<GdkAtom?>!, nTargets: Int, buffer: TextBufferT) -> Bool {
    let rv = ((gtk_targets_include_rich_text(targets, gint(nTargets), buffer.text_buffer_ptr)) != 0)
    return rv
}




/// Determines if any of the targets in `targets` can be used to
/// provide text.
@inlinable public func targetsIncludeText(targets: UnsafeMutablePointer<GdkAtom?>!, nTargets: Int) -> Bool {
    let rv = ((gtk_targets_include_text(targets, gint(nTargets))) != 0)
    return rv
}




/// Determines if any of the targets in `targets` can be used to
/// provide an uri list.
@inlinable public func targetsIncludeURI(targets: UnsafeMutablePointer<GdkAtom?>!, nTargets: Int) -> Bool {
    let rv = ((gtk_targets_include_uri(targets, gint(nTargets))) != 0)
    return rv
}




/// Create a simple window with window title `window_title` and
/// text contents `dialog_text`.
/// The window will quit any running `gtk_main()`-loop when destroyed, and it
/// will automatically be destroyed upon test function teardown.
///
/// **test_create_simple_window is deprecated:**
/// This testing infrastructure is phased out in favor of reftests.
@available(*, deprecated)
    @inlinable public func testCreateSimpleWindow(windowTitle: UnsafePointer<gchar>!, dialogText: UnsafePointer<gchar>!) -> WidgetRef! {
    guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_test_create_simple_window(windowTitle, dialogText))) else { return nil }
    return rv
}





// *** testCreateWidget() is not available because it has a varargs (...) parameter!






// *** testDisplayButtonWindow() is not available because it has a varargs (...) parameter!





/// This function will search `widget` and all its descendants for a GtkLabel
/// widget with a text string matching `label_pattern`.
/// The `label_pattern` may contain asterisks “*” and question marks “?” as
/// placeholders, `g_pattern_match()` is used for the matching.
/// Note that locales other than "C“ tend to alter (translate” label strings,
/// so this function is genrally only useful in test programs with
/// predetermined locales, see `gtk_test_init()` for more details.
@inlinable public func testFindLabel<WidgetT: WidgetProtocol>(widget: WidgetT, labelPattern: UnsafePointer<gchar>!) -> WidgetRef! {
    guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_test_find_label(widget.widget_ptr, labelPattern))) else { return nil }
    return rv
}




/// This function will search siblings of `base_widget` and siblings of its
/// ancestors for all widgets matching `widget_type`.
/// Of the matching widgets, the one that is geometrically closest to
/// `base_widget` will be returned.
/// The general purpose of this function is to find the most likely “action”
/// widget, relative to another labeling widget. Such as finding a
/// button or text entry widget, given its corresponding label widget.
@inlinable public func testFindSibling<WidgetT: WidgetProtocol>(baseWidget: WidgetT, widgetType: GType) -> WidgetRef! {
    guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_test_find_sibling(baseWidget.widget_ptr, widgetType))) else { return nil }
    return rv
}




/// This function will search the descendants of `widget` for a widget
/// of type `widget_type` that has a label matching `label_pattern` next
/// to it. This is most useful for automated GUI testing, e.g. to find
/// the “OK” button in a dialog and synthesize clicks on it.
/// However see `gtk_test_find_label()`, `gtk_test_find_sibling()` and
/// `gtk_test_widget_click()` for possible caveats involving the search of
/// such widgets and synthesizing widget events.
@inlinable public func testFind<WidgetT: WidgetProtocol>(widget: WidgetT, labelPattern: UnsafePointer<gchar>!, widgetType: GType) -> WidgetRef! {
    guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_test_find_widget(widget.widget_ptr, labelPattern, widgetType))) else { return nil }
    return rv
}





// *** testInit() is not available because it has a varargs (...) parameter!





/// Return the type ids that have been registered after
/// calling `gtk_test_register_all_types()`.
@inlinable public func testListAllTypes(nTypes: UnsafeMutablePointer<guint>!) -> UnsafePointer<GType>! {
    guard let rv = gtk_test_list_all_types(nTypes) else { return nil }
    return rv
}




/// Force registration of all core Gtk+ and Gdk object types.
/// This allowes to refer to any of those object types via
/// `g_type_from_name()` after calling this function.
@inlinable public func testRegisterAllTypes() {
    gtk_test_register_all_types()

}




/// Retrive the literal adjustment value for GtkRange based
/// widgets and spin buttons. Note that the value returned by
/// this function is anything between the lower and upper bounds
/// of the adjustment belonging to `widget`, and is not a percentage
/// as passed in to `gtk_test_slider_set_perc()`.
///
/// **test_slider_get_value is deprecated:**
/// This testing infrastructure is phased out in favor of reftests.
@available(*, deprecated)
    @inlinable public func testSliderGetValue<WidgetT: WidgetProtocol>(widget: WidgetT) -> CDouble {
    let rv = gtk_test_slider_get_value(widget.widget_ptr)
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
@available(*, deprecated)
    @inlinable public func testSliderSetPerc<WidgetT: WidgetProtocol>(widget: WidgetT, percentage: CDouble) {
    gtk_test_slider_set_perc(widget.widget_ptr, percentage)

}




/// This function will generate a `button` click in the upwards or downwards
/// spin button arrow areas, usually leading to an increase or decrease of
/// spin button’s value.
///
/// **test_spin_button_click is deprecated:**
/// This testing infrastructure is phased out in favor of reftests.
@available(*, deprecated)
    @inlinable public func testSpinButtonClick<SpinButtonT: SpinButtonProtocol>(spinner: SpinButtonT, button: Int, upwards: Bool) -> Bool {
    let rv = ((gtk_test_spin_button_click(spinner.spin_button_ptr, guint(button), gboolean((upwards) ? 1 : 0))) != 0)
    return rv
}




/// Retrive the text string of `widget` if it is a GtkLabel,
/// GtkEditable (entry and text widgets) or GtkTextView.
///
/// **test_text_get is deprecated:**
/// This testing infrastructure is phased out in favor of reftests.
@available(*, deprecated)
    @inlinable public func testTextGet<WidgetT: WidgetProtocol>(widget: WidgetT) -> String! {
    guard let rv = gtk_test_text_get(widget.widget_ptr).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Set the text string of `widget` to `string` if it is a GtkLabel,
/// GtkEditable (entry and text widgets) or GtkTextView.
///
/// **test_text_set is deprecated:**
/// This testing infrastructure is phased out in favor of reftests.
@available(*, deprecated)
    @inlinable public func testTextSet<WidgetT: WidgetProtocol>(widget: WidgetT, string: UnsafePointer<gchar>!) {
    gtk_test_text_set(widget.widget_ptr, string)

}




/// This function will generate a `button` click (button press and button
/// release event) in the middle of the first GdkWindow found that belongs
/// to `widget`.
/// For windowless widgets like `GtkButton` (which returns `false` from
/// `gtk_widget_get_has_window()`), this will often be an
/// input-only event window. For other widgets, this is usually widget-&gt;window.
/// Certain caveats should be considered when using this function, in
/// particular because the mouse pointer is warped to the button click
/// location, see `gdk_test_simulate_button()` for details.
///
/// **test_widget_click is deprecated:**
/// This testing infrastructure is phased out in favor of reftests.
@available(*, deprecated)
    @inlinable public func testWidgetClick<WidgetT: WidgetProtocol>(widget: WidgetT, button: Int, modifiers: Gdk.ModifierType) -> Bool {
    let rv = ((gtk_test_widget_click(widget.widget_ptr, guint(button), modifiers.value)) != 0)
    return rv
}




/// This function will generate keyboard press and release events in
/// the middle of the first GdkWindow found that belongs to `widget`.
/// For windowless widgets like `GtkButton` (which returns `false` from
/// `gtk_widget_get_has_window()`), this will often be an
/// input-only event window. For other widgets, this is usually widget-&gt;window.
/// Certain caveats should be considered when using this function, in
/// particular because the mouse pointer is warped to the key press
/// location, see `gdk_test_simulate_key()` for details.
@inlinable public func testWidgetSendKey<WidgetT: WidgetProtocol>(widget: WidgetT, keyval: Int, modifiers: Gdk.ModifierType) -> Bool {
    let rv = ((gtk_test_widget_send_key(widget.widget_ptr, guint(keyval), modifiers.value)) != 0)
    return rv
}




/// Enters the main loop and waits for `widget` to be “drawn”. In this
/// context that means it waits for the frame clock of `widget` to have
/// run a full styling, layout and drawing cycle.
/// 
/// This function is intended to be used for syncing with actions that
/// depend on `widget` relayouting or on interaction with the display
/// server.
@inlinable public func testWidgetWaitForDraw<WidgetT: WidgetProtocol>(widget: WidgetT) {
    gtk_test_widget_wait_for_draw(widget.widget_ptr)

}




/// Obtains a `tree_model` and `path` from selection data of target type
/// `GTK_TREE_MODEL_ROW`. Normally called from a drag_data_received handler.
/// This function can only be used if `selection_data` originates from the same
/// process that’s calling this function, because a pointer to the tree model
/// is being passed around. If you aren’t in the same process, then you'll
/// get memory corruption. In the `GtkTreeDragDest` drag_data_received handler,
/// you can assume that selection data of type `GTK_TREE_MODEL_ROW` is
/// in from the current process. The returned path must be freed with
/// `gtk_tree_path_free()`.
@inlinable public func treeGetRowDragData<SelectionDataT: SelectionDataProtocol>(selectionData: SelectionDataT, treeModel: UnsafeMutablePointer<UnsafeMutablePointer<GtkTreeModel>?>? = nil, path: UnsafeMutablePointer<UnsafeMutablePointer<GtkTreePath>?>? = nil) -> Bool {
    let rv = ((gtk_tree_get_row_drag_data(selectionData.selection_data_ptr, treeModel, path)) != 0)
    return rv
}




/// Lets a set of row reference created by
/// `gtk_tree_row_reference_new_proxy()` know that the
/// model emitted the `GtkTreeModel::row-deleted` signal.
@inlinable public func treeRowReferenceDeleted<ObjectT: GLibObject.ObjectProtocol, TreePathT: TreePathProtocol>(proxy: ObjectT, path: TreePathT) {
    gtk_tree_row_reference_deleted(proxy.object_ptr, path.tree_path_ptr)

}




/// Lets a set of row reference created by
/// `gtk_tree_row_reference_new_proxy()` know that the
/// model emitted the `GtkTreeModel::row-inserted` signal.
@inlinable public func treeRowReferenceInserted<ObjectT: GLibObject.ObjectProtocol, TreePathT: TreePathProtocol>(proxy: ObjectT, path: TreePathT) {
    gtk_tree_row_reference_inserted(proxy.object_ptr, path.tree_path_ptr)

}




/// Lets a set of row reference created by
/// `gtk_tree_row_reference_new_proxy()` know that the
/// model emitted the `GtkTreeModel::rows-reordered` signal.
@inlinable public func treeRowReferenceReordered<ObjectT: GLibObject.ObjectProtocol, TreeIterT: TreeIterProtocol, TreePathT: TreePathProtocol>(proxy: ObjectT, path: TreePathT, iter: TreeIterT, newOrder: UnsafeMutablePointer<gint>!) {
    gtk_tree_row_reference_reordered(proxy.object_ptr, path.tree_path_ptr, iter.tree_iter_ptr, newOrder)

}




/// Sets selection data of target type `GTK_TREE_MODEL_ROW`. Normally used
/// in a drag_data_get handler.
@inlinable public func treeSetRowDragData<SelectionDataT: SelectionDataProtocol, TreeModelT: TreeModelProtocol, TreePathT: TreePathProtocol>(selectionData: SelectionDataT, treeModel: TreeModelT, path: TreePathT) -> Bool {
    let rv = ((gtk_tree_set_row_drag_data(selectionData.selection_data_ptr, treeModel.tree_model_ptr, path.tree_path_ptr)) != 0)
    return rv
}




/// All this function does it to return `true`.
/// 
/// This can be useful for example if you want to inhibit the deletion
/// of a window. Of course you should not do this as the user expects
/// a reaction from clicking the close icon of the window...
/// 
/// ## A persistent window
/// 
/// (C Language Example):
/// ```C
/// #include <gtk/gtk.h>
/// 
/// int
/// main (int argc, char **argv)
/// {
///   GtkWidget *win, *but;
///   const char *text = "Close yourself. I mean it!";
/// 
///   gtk_init (&argc, &argv);
/// 
///   win = gtk_window_new (GTK_WINDOW_TOPLEVEL);
///   g_signal_connect (win,
///                     "delete-event",
///                     G_CALLBACK (gtk_true),
///                     NULL);
///   g_signal_connect (win, "destroy",
///                     G_CALLBACK (gtk_main_quit),
///                     NULL);
/// 
///   but = gtk_button_new_with_label (text);
///   g_signal_connect_swapped (but, "clicked",
///                             G_CALLBACK (gtk_object_destroy),
///                             win);
///   gtk_container_add (GTK_CONTAINER (win), but);
/// 
///   gtk_widget_show_all (win);
/// 
///   gtk_main ();
/// 
///   return 0;
/// }
/// ```
/// 
@inlinable public func true_() -> Bool {
    let rv = ((gtk_true()) != 0)
    return rv
}


