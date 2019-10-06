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
public func accelGroupsActivate(object: GLibObject.ObjectProtocol, accelKey accel_key: CUnsignedInt, accelMods accel_mods: Gdk.ModifierType) -> Bool {
    let rv = gtk_accel_groups_activate(cast(object.ptr), guint(accel_key), accel_mods)
    return Bool(rv != 0)
}




/// Gets a list of all accel groups which are attached to `object`.
public func accelGroupsFrom(object: GLibObject.ObjectProtocol) -> SListRef! {
    let rv = gtk_accel_groups_from_object(cast(object.ptr))
    return cast(rv.map { SListRef($0) })
}




/// Gets the modifier mask.
/// 
/// The modifier mask determines which modifiers are considered significant
/// for keyboard accelerators. See `gtk_accelerator_set_default_mod_mask()`.
public func acceleratorGetDefaultModMask() -> GdkModifierType {
    let rv = gtk_accelerator_get_default_mod_mask()
    return rv
}




/// Converts an accelerator keyval and modifier mask into a string
/// which can be used to represent the accelerator to the user.
public func acceleratorGetLabel(acceleratorKey accelerator_key: CUnsignedInt, acceleratorMods accelerator_mods: Gdk.ModifierType) -> String! {
    let rv = gtk_accelerator_get_label(guint(accelerator_key), accelerator_mods)
    return rv.map { String(cString: UnsafePointer<CChar>($0)) }
}




/// Converts an accelerator keyval and modifier mask
/// into a (possibly translated) string that can be displayed to
/// a user, similarly to `gtk_accelerator_get_label()`, but handling
/// keycodes.
/// 
/// This is only useful for system-level components, applications
/// should use `gtk_accelerator_parse()` instead.
public func acceleratorGetLabelWithKeycode(display: DisplayProtocol, acceleratorKey accelerator_key: CUnsignedInt, keycode: CUnsignedInt, acceleratorMods accelerator_mods: Gdk.ModifierType) -> String! {
    let rv = gtk_accelerator_get_label_with_keycode(cast(display.ptr), guint(accelerator_key), guint(keycode), accelerator_mods)
    return rv.map { String(cString: UnsafePointer<CChar>($0)) }
}




/// Converts an accelerator keyval and modifier mask into a string
/// parseable by `gtk_accelerator_parse()`. For example, if you pass in
/// `GDK_KEY_q` and `GDK_CONTROL_MASK`, this function returns “<Control>q”.
/// 
/// If you need to display accelerators in the user interface,
/// see `gtk_accelerator_get_label()`.
public func acceleratorName(acceleratorKey accelerator_key: CUnsignedInt, acceleratorMods accelerator_mods: Gdk.ModifierType) -> String! {
    let rv = gtk_accelerator_name(guint(accelerator_key), accelerator_mods)
    return rv.map { String(cString: UnsafePointer<CChar>($0)) }
}




/// Converts an accelerator keyval and modifier mask
/// into a string parseable by `gtk_accelerator_parse_with_keycode()`,
/// similarly to `gtk_accelerator_name()` but handling keycodes.
/// This is only useful for system-level components, applications
/// should use `gtk_accelerator_parse()` instead.
public func acceleratorNameWithKeycode(display: DisplayProtocol, acceleratorKey accelerator_key: CUnsignedInt, keycode: CUnsignedInt, acceleratorMods accelerator_mods: Gdk.ModifierType) -> String! {
    let rv = gtk_accelerator_name_with_keycode(cast(display.ptr), guint(accelerator_key), guint(keycode), accelerator_mods)
    return rv.map { String(cString: UnsafePointer<CChar>($0)) }
}




/// Parses a string representing an accelerator. The format looks like
/// “<Control>a” or “<Shift><Alt>F1” or “<Release>z” (the last one is
/// for key release).
/// 
/// The parser is fairly liberal and allows lower or upper case, and also
/// abbreviations such as “<Ctl>” and “<Ctrl>”. Key names are parsed using
/// `gdk_keyval_from_name()`. For character keys the name is not the symbol,
/// but the lowercase name, e.g. one would use “<Ctrl>minus” instead of
/// “<Ctrl>-”.
/// 
/// If the parse fails, `accelerator_key` and `accelerator_mods` will
/// be set to 0 (zero).
public func acceleratorParse(accelerator: UnsafePointer<gchar>, acceleratorKey accelerator_key: UnsafeMutablePointer<CUnsignedInt>, acceleratorMods accelerator_mods: UnsafeMutablePointer<GdkModifierType>) {
    gtk_accelerator_parse(accelerator, cast(accelerator_key), cast(accelerator_mods))

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
public func acceleratorParseWithKeycode(accelerator: UnsafePointer<gchar>, acceleratorKey accelerator_key: UnsafeMutablePointer<CUnsignedInt>, acceleratorCodes accelerator_codes: UnsafeMutablePointer<UnsafeMutablePointer<CUnsignedInt>>, acceleratorMods accelerator_mods: UnsafeMutablePointer<GdkModifierType>) {
    gtk_accelerator_parse_with_keycode(accelerator, cast(accelerator_key), cast(accelerator_codes), cast(accelerator_mods))

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
public func acceleratorSet(defaultModMask default_mod_mask: Gdk.ModifierType) {
    gtk_accelerator_set_default_mod_mask(default_mod_mask)

}




/// Determines whether a given keyval and modifier mask constitute
/// a valid keyboard accelerator. For example, the `GDK_KEY_a` keyval
/// plus `GDK_CONTROL_MASK` is valid - this is a “Ctrl+a” accelerator.
/// But, you can't, for instance, use the `GDK_KEY_Control_L` keyval
/// as an accelerator.
public func acceleratorValid(keyval: CUnsignedInt, modifiers: Gdk.ModifierType) -> Bool {
    let rv = gtk_accelerator_valid(guint(keyval), modifiers)
    return Bool(rv != 0)
}




/// Returns `true` if dialogs are expected to use an alternative
/// button order on the screen `screen`. See
/// `gtk_dialog_set_alternative_button_order()` for more details
/// about alternative button order.
/// 
/// If you need to use this function, you should probably connect
/// to the `notify:gtk`-alternative-button-order signal on the
/// `GtkSettings` object associated to `screen`, in order to be
/// notified if the button order setting changes.
///
/// **alternative_dialog_button_order is deprecated:**
/// Deprecated
@available(*, deprecated) public func alternativeDialogButtonOrder(screen: ScreenProtocol) -> Bool {
    let rv = gtk_alternative_dialog_button_order(cast(screen.ptr))
    return Bool(rv != 0)
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
public func bindingEntryAddSignalFromString(bindingSet binding_set: BindingSetProtocol, signalDesc signal_desc: UnsafePointer<gchar>) -> GTokenType {
    let rv = gtk_binding_entry_add_signal_from_string(cast(binding_set.ptr), signal_desc)
    return rv
}




/// Override or install a new key binding for `keyval` with `modifiers` on
/// `binding_set`.
public func bindingEntryAddSignall(bindingSet binding_set: BindingSetProtocol, keyval: CUnsignedInt, modifiers: Gdk.ModifierType, signalName signal_name: UnsafePointer<gchar>, bindingArgs binding_args: SListProtocol) {
    gtk_binding_entry_add_signall(cast(binding_set.ptr), guint(keyval), modifiers, signal_name, cast(binding_args.ptr))

}




/// Remove a binding previously installed via
/// `gtk_binding_entry_add_signal()` on `binding_set`.
public func bindingEntryRemove(bindingSet binding_set: BindingSetProtocol, keyval: CUnsignedInt, modifiers: Gdk.ModifierType) {
    gtk_binding_entry_remove(cast(binding_set.ptr), guint(keyval), modifiers)

}




/// Install a binding on `binding_set` which causes key lookups
/// to be aborted, to prevent bindings from lower priority sets
/// to be activated.
public func bindingEntrySkip(bindingSet binding_set: BindingSetProtocol, keyval: CUnsignedInt, modifiers: Gdk.ModifierType) {
    gtk_binding_entry_skip(cast(binding_set.ptr), guint(keyval), modifiers)

}




/// This function returns the binding set named after the type name of
/// the passed in class structure. New binding sets are created on
/// demand by this function.
public func bindingSetByClass(objectClass object_class: UnsafeMutableRawPointer) -> UnsafeMutablePointer<GtkBindingSet>! {
    let rv = gtk_binding_set_by_class(cast(object_class))
    return cast(rv)
}




/// Find a binding set by its globally unique name.
/// 
/// The `set_name` can either be a name used for `gtk_binding_set_new()`
/// or the type name of a class used in `gtk_binding_set_by_class()`.
public func bindingSetFind(setName set_name: UnsafePointer<gchar>) -> UnsafeMutablePointer<GtkBindingSet>! {
    let rv = gtk_binding_set_find(set_name)
    return cast(rv)
}




/// GTK+ maintains a global list of binding sets. Each binding set has
/// a unique name which needs to be specified upon creation.
public func bindingSetNew(setName set_name: UnsafePointer<gchar>) -> UnsafeMutablePointer<GtkBindingSet>! {
    let rv = gtk_binding_set_new(set_name)
    return cast(rv)
}




/// Find a key binding matching `keyval` and `modifiers` and activate the
/// binding on `object`.
public func bindingsActivate(object: GLibObject.ObjectProtocol, keyval: CUnsignedInt, modifiers: Gdk.ModifierType) -> Bool {
    let rv = gtk_bindings_activate(cast(object.ptr), guint(keyval), modifiers)
    return Bool(rv != 0)
}




/// Looks up key bindings for `object` to find one matching
/// `event`, and if one was found, activate it.
public func bindingsActivateEvent(object: GLibObject.ObjectProtocol, event: EventKeyProtocol) -> Bool {
    let rv = gtk_bindings_activate_event(cast(object.ptr), cast(event.ptr))
    return Bool(rv != 0)
}




public func builderErrorQuark() -> GQuark {
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
public func cairoShouldDrawWindow(cr: cairo.ContextProtocol, window: WindowProtocol) -> Bool {
    let rv = gtk_cairo_should_draw_window(cast(cr.ptr), cast(window.ptr))
    return Bool(rv != 0)
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
public func cairoTransformToWindow(cr: cairo.ContextProtocol, widget: WidgetProtocol, window: WindowProtocol) {
    gtk_cairo_transform_to_window(cast(cr.ptr), cast(widget.ptr), cast(window.ptr))

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
public func checkVersion(requiredMajor required_major: CUnsignedInt, requiredMinor required_minor: CUnsignedInt, requiredMicro required_micro: CUnsignedInt) -> String! {
    let rv = gtk_check_version(guint(required_major), guint(required_minor), guint(required_micro))
    return rv.map { String(cString: UnsafePointer<CChar>($0)) }
}




public func cssProviderErrorQuark() -> GQuark {
    let rv = gtk_css_provider_error_quark()
    return rv
}




/// Adds a GTK+ grab on `device`, so all the events on `device` and its
/// associated pointer or keyboard (if any) are delivered to `widget`.
/// If the `block_others` parameter is `true`, any other devices will be
/// unable to interact with `widget` during the grab.
public func deviceGrabAdd(widget: WidgetProtocol, device: Gdk.DeviceProtocol, blockOthers block_others: Bool) {
    gtk_device_grab_add(cast(widget.ptr), cast(device.ptr), gboolean(block_others ? 1 : 0))

}




/// Removes a device grab from the given widget.
/// 
/// You have to pair calls to `gtk_device_grab_add()` and
/// `gtk_device_grab_remove()`.
public func deviceGrabRemove(widget: WidgetProtocol, device: Gdk.DeviceProtocol) {
    gtk_device_grab_remove(cast(widget.ptr), cast(device.ptr))

}




/// Prevents `gtk_init()`, `gtk_init_check()`, `gtk_init_with_args()` and
/// `gtk_parse_args()` from automatically
/// calling `setlocale (LC_ALL, "")`. You would
/// want to use this function if you wanted to set the locale for
/// your program to something other than the user’s locale, or if
/// you wanted to set different values for different locale categories.
/// 
/// Most programs should not need to call this function.
public func disableSetlocale() {
    gtk_disable_setlocale()

}




/// Distributes `extra_space` to child `sizes` by bringing smaller
/// children up to natural size first.
/// 
/// The remaining space will be added to the `minimum_size` member of the
/// GtkRequestedSize struct. If all sizes reach their natural size then
/// the remaining space is returned.
public func distributeNaturalAllocation(extraSpace extra_space: CInt, nRequestedSizes n_requested_sizes: CUnsignedInt, sizes: RequestedSizeProtocol) -> CInt {
    let rv = gtk_distribute_natural_allocation(gint(extra_space), guint(n_requested_sizes), cast(sizes.ptr))
    return CInt(rv)
}




public func dragCancel(context: DragContextProtocol) {
    gtk_drag_cancel(cast(context.ptr))

}




public func dragFinish(context: DragContextProtocol, success: Bool, del: Bool, time_: UInt32) {
    gtk_drag_finish(cast(context.ptr), gboolean(success ? 1 : 0), gboolean(del ? 1 : 0), guint32(time_))

}




public func dragGetSourceWidget(context: DragContextProtocol) -> UnsafeMutablePointer<GtkWidget>! {
    let rv = gtk_drag_get_source_widget(cast(context.ptr))
    return cast(rv)
}




/// Sets the icon for a particular drag to the default
/// icon.
public func dragSetIconDefault(context: DragContextProtocol) {
    gtk_drag_set_icon_default(cast(context.ptr))

}




public func dragSetIconIcon(context: DragContextProtocol, icon: IconProtocol, hotX hot_x: CInt, hotY hot_y: CInt) {
    // gtk_drag_set_icon_gicon(cast(context.ptr), cast(icon.ptr), gint(hot_x), gint(hot_y))

}




/// Sets the icon for a given drag from a named themed icon. See
/// the docs for `GtkIconTheme` for more details. Note that the
/// size of the icon depends on the icon theme (the icon is
/// loaded at the symbolic size `GTK_ICON_SIZE_DND`), thus
/// `hot_x` and `hot_y` have to be used with care.
public func dragSetIconName(context: DragContextProtocol, iconName icon_name: UnsafePointer<gchar>, hotX hot_x: CInt, hotY hot_y: CInt) {
    gtk_drag_set_icon_name(cast(context.ptr), icon_name, gint(hot_x), gint(hot_y))

}




/// Sets `pixbuf` as the icon for a given drag.
public func dragSetIconPixbuf(context: DragContextProtocol, pixbuf: PixbufProtocol, hotX hot_x: CInt, hotY hot_y: CInt) {
    gtk_drag_set_icon_pixbuf(cast(context.ptr), cast(pixbuf.ptr), gint(hot_x), gint(hot_y))

}




/// Sets the icon for a given drag from a stock ID.
@available(*, deprecated) public func dragSetIconStock(context: DragContextProtocol, stockID stock_id: UnsafePointer<gchar>, hotX hot_x: CInt, hotY hot_y: CInt) {
    gtk_drag_set_icon_stock(cast(context.ptr), stock_id, gint(hot_x), gint(hot_y))

}




/// Sets `surface` as the icon for a given drag. GTK+ retains
/// references for the arguments, and will release them when
/// they are no longer needed.
/// 
/// To position the surface relative to the mouse, use
/// `cairo_surface_set_device_offset()` on `surface`. The mouse
/// cursor will be positioned at the (0,0) coordinate of the
/// surface.
public func dragSetIconSurface(context: DragContextProtocol, surface: SurfaceProtocol) {
    gtk_drag_set_icon_surface(cast(context.ptr), cast(surface.ptr))

}




/// Changes the icon for a widget to a given widget. GTK+
/// will not destroy the icon, so if you don’t want
/// it to persist, you should connect to the “drag-end”
/// signal and destroy it yourself.
public func dragSetIconWidget(context: DragContextProtocol, widget: WidgetProtocol, hotX hot_x: CInt, hotY hot_y: CInt) {
    gtk_drag_set_icon_widget(cast(context.ptr), cast(widget.ptr), gint(hot_x), gint(hot_y))

}




/// Draws a text caret on `cr` at `location`. This is not a style function
/// but merely a convenience function for drawing the standard cursor shape.
///
/// **draw_insertion_cursor is deprecated:**
/// Use gtk_render_insertion_cursor() instead.
@available(*, deprecated) public func drawInsertionCursor(widget: WidgetProtocol, cr: cairo.ContextProtocol, location: Gdk.RectangleProtocol, isPrimary is_primary: Bool, direction: TextDirection, drawArrow draw_arrow: Bool) {
    gtk_draw_insertion_cursor(cast(widget.ptr), cast(cr.ptr), cast(location.ptr), gboolean(is_primary ? 1 : 0), direction, gboolean(draw_arrow ? 1 : 0))

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
public func eventsPending() -> Bool {
    let rv = gtk_events_pending()
    return Bool(rv != 0)
}




/// Analogical to `gtk_true()`, this function does nothing
/// but always returns `false`.
public func false_() -> Bool {
    let rv = gtk_false()
    return Bool(rv != 0)
}




/// Registers an error quark for `GtkFileChooser` if necessary.
public func fileChooserErrorQuark() -> GQuark {
    let rv = gtk_file_chooser_error_quark()
    return rv
}




/// Returns the binary age as passed to `libtool`
/// when building the GTK+ library the process is running against.
/// If `libtool` means nothing to you, don't
/// worry about it.
public func getBinaryAge() -> CUnsignedInt {
    let rv = gtk_get_binary_age()
    return CUnsignedInt(rv)
}




/// Obtains a copy of the event currently being processed by GTK+.
/// 
/// For example, if you are handling a `GtkButton::clicked` signal,
/// the current event will be the `GdkEventButton` that triggered
/// the `clicked` signal.
public func getCurrentEvent() -> UnsafeMutablePointer<GdkEvent>! {
    let rv = gtk_get_current_event()
    return cast(rv)
}




/// If there is a current event and it has a device, return that
/// device, otherwise return `nil`.
public func getCurrentEventDevice() -> UnsafeMutablePointer<GdkDevice>! {
    let rv = gtk_get_current_event_device()
    return cast(rv)
}




/// If there is a current event and it has a state field, place
/// that state field in `state` and return `true`, otherwise return
/// `false`.
public func getCurrentEvent(state: UnsafeMutablePointer<GdkModifierType>) -> Bool {
    let rv = gtk_get_current_event_state(cast(state))
    return Bool(rv != 0)
}




/// If there is a current event and it has a timestamp,
/// return that timestamp, otherwise return `GDK_CURRENT_TIME`.
public func getCurrentEventTime() -> UInt32 {
    let rv = gtk_get_current_event_time()
    return UInt32(rv)
}




/// Returns the GTK+ debug flags.
/// 
/// This function is intended for GTK+ modules that want
/// to adjust their debug output based on GTK+ debug flags.
public func getDebugFlags() -> CUnsignedInt {
    let rv = gtk_get_debug_flags()
    return CUnsignedInt(rv)
}




/// Returns the `PangoLanguage` for the default language currently in
/// effect. (Note that this can change over the life of an
/// application.) The default language is derived from the current
/// locale. It determines, for example, whether GTK+ uses the
/// right-to-left or left-to-right text direction.
/// 
/// This function is equivalent to `pango_language_get_default()`.
/// See that function for details.
public func getDefaultLanguage() -> UnsafeMutablePointer<PangoLanguage>! {
    let rv = gtk_get_default_language()
    return cast(rv)
}




/// If `event` is `nil` or the event was not associated with any widget,
/// returns `nil`, otherwise returns the widget that received the event
/// originally.
public func getEventWidget(event: UnsafeMutablePointer<GdkEvent>) -> UnsafeMutablePointer<GtkWidget>! {
    let rv = gtk_get_event_widget(cast(event))
    return cast(rv)
}




/// Returns the interface age as passed to `libtool`
/// when building the GTK+ library the process is running against.
/// If `libtool` means nothing to you, don't
/// worry about it.
public func getInterfaceAge() -> CUnsignedInt {
    let rv = gtk_get_interface_age()
    return CUnsignedInt(rv)
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
public func getLocaleDirection() -> GtkTextDirection {
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
public func getMajorVersion() -> CUnsignedInt {
    let rv = gtk_get_major_version()
    return CUnsignedInt(rv)
}




/// Returns the micro version number of the GTK+ library.
/// (e.g. in GTK+ version 3.1.5 this is 5.)
/// 
/// This function is in the library, so it represents the GTK+ library
/// your code is are running against. Contrast with the
/// `GTK_MICRO_VERSION` macro, which represents the micro version of the
/// GTK+ headers you have included when compiling your code.
public func getMicroVersion() -> CUnsignedInt {
    let rv = gtk_get_micro_version()
    return CUnsignedInt(rv)
}




/// Returns the minor version number of the GTK+ library.
/// (e.g. in GTK+ version 3.1.5 this is 1.)
/// 
/// This function is in the library, so it represents the GTK+ library
/// your code is are running against. Contrast with the
/// `GTK_MINOR_VERSION` macro, which represents the minor version of the
/// GTK+ headers you have included when compiling your code.
public func getMinorVersion() -> CUnsignedInt {
    let rv = gtk_get_minor_version()
    return CUnsignedInt(rv)
}




/// Returns a `GOptionGroup` for the commandline arguments recognized
/// by GTK+ and GDK.
/// 
/// You should add this group to your `GOptionContext`
/// with `g_option_context_add_group()`, if you are using
/// `g_option_context_parse()` to parse your commandline arguments.
public func getOptionGroup(openDefaultDisplay open_default_display: Bool) -> UnsafeMutablePointer<GOptionGroup>! {
    let rv = gtk_get_option_group(gboolean(open_default_display ? 1 : 0))
    return cast(rv)
}




/// Queries the current grab of the default window group.
public func grabGetCurrent() -> UnsafeMutablePointer<GtkWidget>! {
    let rv = gtk_grab_get_current()
    return cast(rv)
}




/// Looks up the icon size associated with `name`.
///
/// **icon_size_from_name is deprecated:**
/// Use #GtkIconTheme instead.
@available(*, deprecated) public func iconSizeFrom(name: UnsafePointer<gchar>) -> GtkIconSize {
    let rv = gtk_icon_size_from_name(name)
    return rv
}




/// Gets the canonical name of the given icon size. The returned string
/// is statically allocated and should not be freed.
///
/// **icon_size_get_name is deprecated:**
/// Use #GtkIconTheme instead.
@available(*, deprecated) public func iconSizeGetName(size: GtkIconSize) -> String! {
    let rv = gtk_icon_size_get_name(size)
    return rv.map { String(cString: UnsafePointer<CChar>($0)) }
}




/// Obtains the pixel size of a semantic icon size `size:`
/// `GTK_ICON_SIZE_MENU`, `GTK_ICON_SIZE_BUTTON`, etc.  This function
/// isn’t normally needed, `gtk_icon_theme_load_icon()` is the usual
/// way to get an icon for rendering, then just look at the size of
/// the rendered pixbuf. The rendered pixbuf may not even correspond to
/// the width/height returned by `gtk_icon_size_lookup()`, because themes
/// are free to render the pixbuf however they like, including changing
/// the usual size.
public func iconSizeLookup(size: GtkIconSize, width: UnsafeMutablePointer<CInt>, height: UnsafeMutablePointer<CInt>) -> Bool {
    let rv = gtk_icon_size_lookup(size, cast(width), cast(height))
    return Bool(rv != 0)
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
@available(*, deprecated) public func iconSizeLookupFor(settings: SettingsProtocol, size: GtkIconSize, width: UnsafeMutablePointer<CInt>, height: UnsafeMutablePointer<CInt>) -> Bool {
    let rv = gtk_icon_size_lookup_for_settings(cast(settings.ptr), size, cast(width), cast(height))
    return Bool(rv != 0)
}




/// Registers a new icon size, along the same lines as `GTK_ICON_SIZE_MENU`,
/// etc. Returns the integer value for the size.
///
/// **icon_size_register is deprecated:**
/// Use #GtkIconTheme instead.
@available(*, deprecated) public func iconSizeRegister(name: UnsafePointer<gchar>, width: CInt, height: CInt) -> GtkIconSize {
    let rv = gtk_icon_size_register(name, gint(width), gint(height))
    return rv
}




/// Registers `alias` as another name for `target`.
/// So calling `gtk_icon_size_from_name()` with `alias` as argument
/// will return `target`.
///
/// **icon_size_register_alias is deprecated:**
/// Use #GtkIconTheme instead.
@available(*, deprecated) public func iconSizeRegister(alias: UnsafePointer<gchar>, target: GtkIconSize) {
    gtk_icon_size_register_alias(alias, target)

}




public func iconThemeErrorQuark() -> GQuark {
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
public func init_(argc: UnsafeMutablePointer<CInt>, argv: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<CChar>>>) {
    gtk_init(cast(argc), cast(argv))

}




/// This function does the same work as `gtk_init()` with only a single
/// change: It does not terminate the program if the commandline
/// arguments couldn’t be parsed or the windowing system can’t be
/// initialized. Instead it returns `false` on failure.
/// 
/// This way the application can fall back to some other means of
/// communication with the user - for example a curses or command line
/// interface.
public func initCheck(argc: UnsafeMutablePointer<CInt>, argv: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<CChar>>>) -> Bool {
    let rv = gtk_init_check(cast(argc), cast(argv))
    return Bool(rv != 0)
}




/// This function does the same work as `gtk_init_check()`.
/// Additionally, it allows you to add your own commandline options,
/// and it automatically generates nicely formatted
/// `--help` output. Note that your program will
/// be terminated after writing out the help output.
public func initWithArgs(argc: UnsafeMutablePointer<CInt>, argv: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<gchar>>>, parameterString parameter_string: UnsafePointer<gchar>, entries: UnsafePointer<GOptionEntry>, translationDomain translation_domain: UnsafePointer<gchar>) throws -> Bool {
    var error: Optional<UnsafeMutablePointer<GError>> = nil
    let rv = gtk_init_with_args(cast(argc), cast(argv), parameter_string, cast(entries), translation_domain, &error)
    if let error = error {
        throw ErrorType(error)
    }
    return Bool(rv != 0)
}




/// Installs a key snooper function, which will get called on all
/// key events before delivering them normally.
///
/// **key_snooper_install is deprecated:**
/// Key snooping should not be done. Events should
///     be handled by widgets.
@available(*, deprecated) public func keySnooperInstall(snooper: @escaping KeySnoopFunc, funcData func_data: UnsafeMutableRawPointer) -> CUnsignedInt {
    let rv = gtk_key_snooper_install(snooper, cast(func_data))
    return CUnsignedInt(rv)
}




/// Removes the key snooper function with the given id.
///
/// **key_snooper_remove is deprecated:**
/// Key snooping should not be done. Events should
///     be handled by widgets.
@available(*, deprecated) public func keySnooperRemove(snooperHandlerID snooper_handler_id: CUnsignedInt) {
    gtk_key_snooper_remove(guint(snooper_handler_id))

}




/// Runs the main loop until `gtk_main_quit()` is called.
/// 
/// You can nest calls to `gtk_main()`. In that case `gtk_main_quit()`
/// will make the innermost invocation of the main loop return.
public func main() {
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
public func mainDo(event: UnsafeMutablePointer<GdkEvent>) {
    gtk_main_do_event(cast(event))

}




/// Runs a single iteration of the mainloop.
/// 
/// If no events are waiting to be processed GTK+ will block
/// until the next event is noticed. If you don’t want to block
/// look at `gtk_main_iteration_do()` or check if any events are
/// pending with `gtk_events_pending()` first.
public func mainIteration() -> Bool {
    let rv = gtk_main_iteration()
    return Bool(rv != 0)
}




/// Runs a single iteration of the mainloop.
/// If no events are available either return or block depending on
/// the value of `blocking`.
public func mainIterationDo(blocking: Bool) -> Bool {
    let rv = gtk_main_iteration_do(gboolean(blocking ? 1 : 0))
    return Bool(rv != 0)
}




/// Asks for the current nesting level of the main loop.
public func mainLevel() -> CUnsignedInt {
    let rv = gtk_main_level()
    return CUnsignedInt(rv)
}




/// Makes the innermost invocation of the main loop return
/// when it regains control.
public func mainQuit() {
    gtk_main_quit()

}




/// Draws an arrow in the given rectangle on `cr` using the given
/// parameters. `arrow_type` determines the direction of the arrow.
///
/// **paint_arrow is deprecated:**
/// Use gtk_render_arrow() instead
@available(*, deprecated) public func paintArrow(style: StyleProtocol, cr: cairo.ContextProtocol, stateType state_type: StateType, shadowType shadow_type: ShadowType, widget: WidgetProtocol, detail: UnsafePointer<gchar>, arrowType arrow_type: ArrowType, fill: Bool, x: CInt, y: CInt, width: CInt, height: CInt) {
    gtk_paint_arrow(cast(style.ptr), cast(cr.ptr), state_type, shadow_type, cast(widget.ptr), detail, arrow_type, gboolean(fill ? 1 : 0), gint(x), gint(y), gint(width), gint(height))

}




/// Draws a box on `cr` with the given parameters.
///
/// **paint_box is deprecated:**
/// Use gtk_render_frame() and gtk_render_background() instead
@available(*, deprecated) public func paintBox(style: StyleProtocol, cr: cairo.ContextProtocol, stateType state_type: StateType, shadowType shadow_type: ShadowType, widget: WidgetProtocol, detail: UnsafePointer<gchar>, x: CInt, y: CInt, width: CInt, height: CInt) {
    gtk_paint_box(cast(style.ptr), cast(cr.ptr), state_type, shadow_type, cast(widget.ptr), detail, gint(x), gint(y), gint(width), gint(height))

}




/// Draws a box in `cr` using the given style and state and shadow type,
/// leaving a gap in one side.
///
/// **paint_box_gap is deprecated:**
/// Use gtk_render_frame_gap() instead
@available(*, deprecated) public func paintBoxGap(style: StyleProtocol, cr: cairo.ContextProtocol, stateType state_type: StateType, shadowType shadow_type: ShadowType, widget: WidgetProtocol, detail: UnsafePointer<gchar>, x: CInt, y: CInt, width: CInt, height: CInt, gapSide gap_side: PositionType, gapX gap_x: CInt, gapWidth gap_width: CInt) {
    gtk_paint_box_gap(cast(style.ptr), cast(cr.ptr), state_type, shadow_type, cast(widget.ptr), detail, gint(x), gint(y), gint(width), gint(height), gap_side, gint(gap_x), gint(gap_width))

}




/// Draws a check button indicator in the given rectangle on `cr` with
/// the given parameters.
///
/// **paint_check is deprecated:**
/// Use gtk_render_check() instead
@available(*, deprecated) public func paintCheck(style: StyleProtocol, cr: cairo.ContextProtocol, stateType state_type: StateType, shadowType shadow_type: ShadowType, widget: WidgetProtocol, detail: UnsafePointer<gchar>, x: CInt, y: CInt, width: CInt, height: CInt) {
    gtk_paint_check(cast(style.ptr), cast(cr.ptr), state_type, shadow_type, cast(widget.ptr), detail, gint(x), gint(y), gint(width), gint(height))

}




/// Draws a diamond in the given rectangle on `window` using the given
/// parameters.
///
/// **paint_diamond is deprecated:**
/// Use cairo instead
@available(*, deprecated) public func paintDiamond(style: StyleProtocol, cr: cairo.ContextProtocol, stateType state_type: StateType, shadowType shadow_type: ShadowType, widget: WidgetProtocol, detail: UnsafePointer<gchar>, x: CInt, y: CInt, width: CInt, height: CInt) {
    gtk_paint_diamond(cast(style.ptr), cast(cr.ptr), state_type, shadow_type, cast(widget.ptr), detail, gint(x), gint(y), gint(width), gint(height))

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
@available(*, deprecated) public func paintExpander(style: StyleProtocol, cr: cairo.ContextProtocol, stateType state_type: StateType, widget: WidgetProtocol, detail: UnsafePointer<gchar>, x: CInt, y: CInt, expanderStyle expander_style: ExpanderStyle) {
    gtk_paint_expander(cast(style.ptr), cast(cr.ptr), state_type, cast(widget.ptr), detail, gint(x), gint(y), expander_style)

}




/// Draws an extension, i.e. a notebook tab.
///
/// **paint_extension is deprecated:**
/// Use gtk_render_extension() instead
@available(*, deprecated) public func paintExtension(style: StyleProtocol, cr: cairo.ContextProtocol, stateType state_type: StateType, shadowType shadow_type: ShadowType, widget: WidgetProtocol, detail: UnsafePointer<gchar>, x: CInt, y: CInt, width: CInt, height: CInt, gapSide gap_side: PositionType) {
    gtk_paint_extension(cast(style.ptr), cast(cr.ptr), state_type, shadow_type, cast(widget.ptr), detail, gint(x), gint(y), gint(width), gint(height), gap_side)

}




/// Draws a flat box on `cr` with the given parameters.
///
/// **paint_flat_box is deprecated:**
/// Use gtk_render_frame() and gtk_render_background() instead
@available(*, deprecated) public func paintFlatBox(style: StyleProtocol, cr: cairo.ContextProtocol, stateType state_type: StateType, shadowType shadow_type: ShadowType, widget: WidgetProtocol, detail: UnsafePointer<gchar>, x: CInt, y: CInt, width: CInt, height: CInt) {
    gtk_paint_flat_box(cast(style.ptr), cast(cr.ptr), state_type, shadow_type, cast(widget.ptr), detail, gint(x), gint(y), gint(width), gint(height))

}




/// Draws a focus indicator around the given rectangle on `cr` using the
/// given style.
///
/// **paint_focus is deprecated:**
/// Use gtk_render_focus() instead
@available(*, deprecated) public func paintFocus(style: StyleProtocol, cr: cairo.ContextProtocol, stateType state_type: StateType, widget: WidgetProtocol, detail: UnsafePointer<gchar>, x: CInt, y: CInt, width: CInt, height: CInt) {
    gtk_paint_focus(cast(style.ptr), cast(cr.ptr), state_type, cast(widget.ptr), detail, gint(x), gint(y), gint(width), gint(height))

}




/// Draws a handle as used in `GtkHandleBox` and `GtkPaned`.
///
/// **paint_handle is deprecated:**
/// Use gtk_render_handle() instead
@available(*, deprecated) public func paintHandle(style: StyleProtocol, cr: cairo.ContextProtocol, stateType state_type: StateType, shadowType shadow_type: ShadowType, widget: WidgetProtocol, detail: UnsafePointer<gchar>, x: CInt, y: CInt, width: CInt, height: CInt, orientation: Orientation) {
    gtk_paint_handle(cast(style.ptr), cast(cr.ptr), state_type, shadow_type, cast(widget.ptr), detail, gint(x), gint(y), gint(width), gint(height), orientation)

}




/// Draws a horizontal line from (`x1`, `y`) to (`x2`, `y`) in `cr`
/// using the given style and state.
///
/// **paint_hline is deprecated:**
/// Use gtk_render_line() instead
@available(*, deprecated) public func paintHline(style: StyleProtocol, cr: cairo.ContextProtocol, stateType state_type: StateType, widget: WidgetProtocol, detail: UnsafePointer<gchar>, x1: CInt, x2: CInt, y: CInt) {
    gtk_paint_hline(cast(style.ptr), cast(cr.ptr), state_type, cast(widget.ptr), detail, gint(x1), gint(x2), gint(y))

}




/// Draws a layout on `cr` using the given parameters.
///
/// **paint_layout is deprecated:**
/// Use gtk_render_layout() instead
@available(*, deprecated) public func paintLayout(style: StyleProtocol, cr: cairo.ContextProtocol, stateType state_type: StateType, useText use_text: Bool, widget: WidgetProtocol, detail: UnsafePointer<gchar>, x: CInt, y: CInt, layout: LayoutProtocol) {
    gtk_paint_layout(cast(style.ptr), cast(cr.ptr), state_type, gboolean(use_text ? 1 : 0), cast(widget.ptr), detail, gint(x), gint(y), cast(layout.ptr))

}




/// Draws a radio button indicator in the given rectangle on `cr` with
/// the given parameters.
///
/// **paint_option is deprecated:**
/// Use gtk_render_option() instead
@available(*, deprecated) public func paintOption(style: StyleProtocol, cr: cairo.ContextProtocol, stateType state_type: StateType, shadowType shadow_type: ShadowType, widget: WidgetProtocol, detail: UnsafePointer<gchar>, x: CInt, y: CInt, width: CInt, height: CInt) {
    gtk_paint_option(cast(style.ptr), cast(cr.ptr), state_type, shadow_type, cast(widget.ptr), detail, gint(x), gint(y), gint(width), gint(height))

}




/// Draws a resize grip in the given rectangle on `cr` using the given
/// parameters.
///
/// **paint_resize_grip is deprecated:**
/// Use gtk_render_handle() instead
@available(*, deprecated) public func paintResizeGrip(style: StyleProtocol, cr: cairo.ContextProtocol, stateType state_type: StateType, widget: WidgetProtocol, detail: UnsafePointer<gchar>, edge: Gdk.WindowEdge, x: CInt, y: CInt, width: CInt, height: CInt) {
    gtk_paint_resize_grip(cast(style.ptr), cast(cr.ptr), state_type, cast(widget.ptr), detail, edge, gint(x), gint(y), gint(width), gint(height))

}




/// Draws a shadow around the given rectangle in `cr`
/// using the given style and state and shadow type.
///
/// **paint_shadow is deprecated:**
/// Use gtk_render_frame() instead
@available(*, deprecated) public func paintShadow(style: StyleProtocol, cr: cairo.ContextProtocol, stateType state_type: StateType, shadowType shadow_type: ShadowType, widget: WidgetProtocol, detail: UnsafePointer<gchar>, x: CInt, y: CInt, width: CInt, height: CInt) {
    gtk_paint_shadow(cast(style.ptr), cast(cr.ptr), state_type, shadow_type, cast(widget.ptr), detail, gint(x), gint(y), gint(width), gint(height))

}




/// Draws a shadow around the given rectangle in `cr`
/// using the given style and state and shadow type, leaving a
/// gap in one side.
///
/// **paint_shadow_gap is deprecated:**
/// Use gtk_render_frame_gap() instead
@available(*, deprecated) public func paintShadowGap(style: StyleProtocol, cr: cairo.ContextProtocol, stateType state_type: StateType, shadowType shadow_type: ShadowType, widget: WidgetProtocol, detail: UnsafePointer<gchar>, x: CInt, y: CInt, width: CInt, height: CInt, gapSide gap_side: PositionType, gapX gap_x: CInt, gapWidth gap_width: CInt) {
    gtk_paint_shadow_gap(cast(style.ptr), cast(cr.ptr), state_type, shadow_type, cast(widget.ptr), detail, gint(x), gint(y), gint(width), gint(height), gap_side, gint(gap_x), gint(gap_width))

}




/// Draws a slider in the given rectangle on `cr` using the
/// given style and orientation.
///
/// **paint_slider is deprecated:**
/// Use gtk_render_slider() instead
@available(*, deprecated) public func paintSlider(style: StyleProtocol, cr: cairo.ContextProtocol, stateType state_type: StateType, shadowType shadow_type: ShadowType, widget: WidgetProtocol, detail: UnsafePointer<gchar>, x: CInt, y: CInt, width: CInt, height: CInt, orientation: Orientation) {
    gtk_paint_slider(cast(style.ptr), cast(cr.ptr), state_type, shadow_type, cast(widget.ptr), detail, gint(x), gint(y), gint(width), gint(height), orientation)

}




/// Draws a spinner on `window` using the given parameters.
///
/// **paint_spinner is deprecated:**
/// Use gtk_render_icon() and the #GtkStyleContext
///   you are drawing instead
@available(*, deprecated) public func paintSpinner(style: StyleProtocol, cr: cairo.ContextProtocol, stateType state_type: StateType, widget: WidgetProtocol, detail: UnsafePointer<gchar>, step: CUnsignedInt, x: CInt, y: CInt, width: CInt, height: CInt) {
    gtk_paint_spinner(cast(style.ptr), cast(cr.ptr), state_type, cast(widget.ptr), detail, guint(step), gint(x), gint(y), gint(width), gint(height))

}




/// Draws an option menu tab (i.e. the up and down pointing arrows)
/// in the given rectangle on `cr` using the given parameters.
///
/// **paint_tab is deprecated:**
/// Use cairo instead
@available(*, deprecated) public func paintTab(style: StyleProtocol, cr: cairo.ContextProtocol, stateType state_type: StateType, shadowType shadow_type: ShadowType, widget: WidgetProtocol, detail: UnsafePointer<gchar>, x: CInt, y: CInt, width: CInt, height: CInt) {
    gtk_paint_tab(cast(style.ptr), cast(cr.ptr), state_type, shadow_type, cast(widget.ptr), detail, gint(x), gint(y), gint(width), gint(height))

}




/// Draws a vertical line from (`x`, `y1_`) to (`x`, `y2_`) in `cr`
/// using the given style and state.
///
/// **paint_vline is deprecated:**
/// Use gtk_render_line() instead
@available(*, deprecated) public func paintVline(style: StyleProtocol, cr: cairo.ContextProtocol, stateType state_type: StateType, widget: WidgetProtocol, detail: UnsafePointer<gchar>, y1_: CInt, y2_: CInt, x: CInt) {
    gtk_paint_vline(cast(style.ptr), cast(cr.ptr), state_type, cast(widget.ptr), detail, gint(y1_), gint(y2_), gint(x))

}




/// Returns the name of the default paper size, which
/// depends on the current locale.
public func paperSizeGetDefault() -> String! {
    let rv = gtk_paper_size_get_default()
    return rv.map { String(cString: UnsafePointer<CChar>($0)) }
}




/// Creates a list of known paper sizes.
public func paperSizeGetPaperSizes(includeCustom include_custom: Bool) -> UnsafeMutablePointer<GList>! {
    let rv = gtk_paper_size_get_paper_sizes(gboolean(include_custom ? 1 : 0))
    return cast(rv)
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
public func parseArgs(argc: UnsafeMutablePointer<CInt>, argv: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<CChar>>>) -> Bool {
    let rv = gtk_parse_args(cast(argc), cast(argv))
    return Bool(rv != 0)
}




/// Registers an error quark for `GtkPrintOperation` if necessary.
public func printErrorQuark() -> GQuark {
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
public func printRunPageSetupDialog(parent: WindowProtocol, pageSetup page_setup: PageSetupProtocol, settings: PrintSettingsProtocol) -> UnsafeMutablePointer<GtkPageSetup>! {
    let rv = gtk_print_run_page_setup_dialog(cast(parent.ptr), cast(page_setup.ptr), cast(settings.ptr))
    return cast(rv)
}




/// Runs a page setup dialog, letting the user modify the values from `page_setup`.
/// 
/// In contrast to `gtk_print_run_page_setup_dialog()`, this function  returns after
/// showing the page setup dialog on platforms that support this, and calls `done_cb`
/// from a signal handler for the `response` signal of the dialog.
public func printRunPageSetupDialogAsync(parent: WindowProtocol, pageSetup page_setup: PageSetupProtocol, settings: PrintSettingsProtocol, doneCb done_cb: @escaping PageSetupDoneFunc, data: UnsafeMutableRawPointer) {
    gtk_print_run_page_setup_dialog_async(cast(parent.ptr), cast(page_setup.ptr), cast(settings.ptr), done_cb, cast(data))

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
public func propagateEvent(widget: WidgetProtocol, event: UnsafeMutablePointer<GdkEvent>) {
    gtk_propagate_event(cast(widget.ptr), cast(event))

}




/// Adds a file to the list of files to be parsed at the
/// end of `gtk_init()`.
///
/// **rc_add_default_file is deprecated:**
/// Use #GtkStyleContext with a custom #GtkStyleProvider instead
@available(*, deprecated) public func rcAddDefaultFile(String_: UnsafePointer<gchar>) {
    gtk_rc_add_default_file(String_)

}




/// Searches for a theme engine in the GTK+ search path. This function
/// is not useful for applications and should not be used.
///
/// **rc_find_module_in_path is deprecated:**
/// Use #GtkCssProvider instead.
@available(*, deprecated) public func rcFindModuleInPath(moduleFile module_file: UnsafePointer<gchar>) -> String! {
    let rv = gtk_rc_find_module_in_path(module_file)
    return rv.map { String(cString: UnsafePointer<CChar>($0)) }
}




/// Looks up a file in pixmap path for the specified `GtkSettings`.
/// If the file is not found, it outputs a warning message using
/// `g_warning()` and returns `nil`.
///
/// **rc_find_pixmap_in_path is deprecated:**
/// Use #GtkCssProvider instead.
@available(*, deprecated) public func rcFindPixmapInPath(settings: SettingsProtocol, scanner: ScannerProtocol, pixmapFile pixmap_file: UnsafePointer<gchar>) -> String! {
    let rv = gtk_rc_find_pixmap_in_path(cast(settings.ptr), cast(scanner.ptr), pixmap_file)
    return rv.map { String(cString: UnsafePointer<CChar>($0)) }
}




/// Retrieves the current list of RC files that will be parsed
/// at the end of `gtk_init()`.
///
/// **rc_get_default_files is deprecated:**
/// Use #GtkStyleContext instead
@available(*, deprecated) public func rcGetDefaultFiles() -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
    let rv = gtk_rc_get_default_files()
    return cast(rv)
}




/// Obtains the path to the IM modules file. See the documentation
/// of the `GTK_IM_MODULE_FILE`
/// environment variable for more details.
///
/// **rc_get_im_module_file is deprecated:**
/// Use #GtkCssProvider instead.
@available(*, deprecated) public func rcGetImModuleFile() -> String! {
    let rv = gtk_rc_get_im_module_file()
    return rv.map { String(cString: UnsafePointer<CChar>($0)) }
}




/// Obtains the path in which to look for IM modules. See the documentation
/// of the `GTK_PATH`
/// environment variable for more details about looking up modules. This
/// function is useful solely for utilities supplied with GTK+ and should
/// not be used by applications under normal circumstances.
///
/// **rc_get_im_module_path is deprecated:**
/// Use #GtkCssProvider instead.
@available(*, deprecated) public func rcGetImModulePath() -> String! {
    let rv = gtk_rc_get_im_module_path()
    return rv.map { String(cString: UnsafePointer<CChar>($0)) }
}




/// Returns a directory in which GTK+ looks for theme engines.
/// For full information about the search for theme engines,
/// see the docs for `GTK_PATH` in [Running GTK+ Applications](#gtk-running).
///
/// **rc_get_module_dir is deprecated:**
/// Use #GtkCssProvider instead.
@available(*, deprecated) public func rcGetModuleDir() -> String! {
    let rv = gtk_rc_get_module_dir()
    return rv.map { String(cString: UnsafePointer<CChar>($0)) }
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
@available(*, deprecated) public func rcGetStyle(widget: WidgetProtocol) -> UnsafeMutablePointer<GtkStyle>! {
    let rv = gtk_rc_get_style(cast(widget.ptr))
    return cast(rv)
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
@available(*, deprecated) public func rcGetStyleByPaths(settings: SettingsProtocol, widgetPath widget_path: UnsafePointer<CChar>, classPath class_path: UnsafePointer<CChar>, type: GType) -> UnsafeMutablePointer<GtkStyle>! {
    let rv = gtk_rc_get_style_by_paths(cast(settings.ptr), widget_path, class_path, type)
    return cast(rv)
}




/// Returns the standard directory in which themes should
/// be installed. (GTK+ does not actually use this directory
/// itself.)
///
/// **rc_get_theme_dir is deprecated:**
/// Use #GtkCssProvider instead.
@available(*, deprecated) public func rcGetThemeDir() -> String! {
    let rv = gtk_rc_get_theme_dir()
    return rv.map { String(cString: UnsafePointer<CChar>($0)) }
}




/// Parses a given resource file.
///
/// **rc_parse is deprecated:**
/// Use #GtkCssProvider instead.
@available(*, deprecated) public func rcParse(String_: UnsafePointer<gchar>) {
    gtk_rc_parse(String_)

}




/// Parses a color in the format expected
/// in a RC file.
/// 
/// Note that theme engines should use `gtk_rc_parse_color_full()` in
/// order to support symbolic colors.
///
/// **rc_parse_color is deprecated:**
/// Use #GtkCssProvider instead
@available(*, deprecated) public func rcParseColor(scanner: ScannerProtocol, color: Gdk.ColorProtocol) -> CUnsignedInt {
    let rv = gtk_rc_parse_color(cast(scanner.ptr), cast(color.ptr))
    return CUnsignedInt(rv)
}




/// Parses a color in the format expected
/// in a RC file. If `style` is not `nil`, it will be consulted to resolve
/// references to symbolic colors.
///
/// **rc_parse_color_full is deprecated:**
/// Use #GtkCssProvider instead
@available(*, deprecated) public func rcParseColorFull(scanner: ScannerProtocol, style: RcStyleProtocol, color: Gdk.ColorProtocol) -> CUnsignedInt {
    let rv = gtk_rc_parse_color_full(cast(scanner.ptr), cast(style.ptr), cast(color.ptr))
    return CUnsignedInt(rv)
}




/// Parses a `GtkPathPriorityType` variable from the format expected
/// in a RC file.
///
/// **rc_parse_priority is deprecated:**
/// Use #GtkCssProvider instead
@available(*, deprecated) public func rcParsePriority(scanner: ScannerProtocol, priority: UnsafeMutablePointer<GtkPathPriorityType>) -> CUnsignedInt {
    let rv = gtk_rc_parse_priority(cast(scanner.ptr), cast(priority))
    return CUnsignedInt(rv)
}




/// Parses a `GtkStateType` variable from the format expected
/// in a RC file.
///
/// **rc_parse_state is deprecated:**
/// Use #GtkCssProvider instead
@available(*, deprecated) public func rcParseState(scanner: ScannerProtocol, state: UnsafeMutablePointer<GtkStateType>) -> CUnsignedInt {
    let rv = gtk_rc_parse_state(cast(scanner.ptr), cast(state))
    return CUnsignedInt(rv)
}




/// Parses resource information directly from a string.
///
/// **rc_parse_string is deprecated:**
/// Use #GtkCssProvider instead.
@available(*, deprecated) public func rcParseString(rcString rc_string: UnsafePointer<gchar>) {
    gtk_rc_parse_string(rc_string)

}




/// A `GtkRcPropertyParser` for use with `gtk_settings_install_property_parser()`
/// or `gtk_widget_class_install_style_property_parser()` which parses
/// borders in the form
/// `"{ left, right, top, bottom }"` for integers
/// left, right, top and bottom.
public func rcPropertyParseBorder(pspec: ParamSpecProtocol, gstring: StringTypeProtocol, propertyValue property_value: GLibObject.ValueProtocol) -> Bool {
    let rv = gtk_rc_property_parse_border(cast(pspec.ptr), cast(gstring.ptr), cast(property_value.ptr))
    return Bool(rv != 0)
}




/// A `GtkRcPropertyParser` for use with `gtk_settings_install_property_parser()`
/// or `gtk_widget_class_install_style_property_parser()` which parses a
/// color given either by its name or in the form
/// `{ red, green, blue }` where red, green and
/// blue are integers between 0 and 65535 or floating-point numbers
/// between 0 and 1.
public func rcPropertyParseColor(pspec: ParamSpecProtocol, gstring: StringTypeProtocol, propertyValue property_value: GLibObject.ValueProtocol) -> Bool {
    let rv = gtk_rc_property_parse_color(cast(pspec.ptr), cast(gstring.ptr), cast(property_value.ptr))
    return Bool(rv != 0)
}




/// A `GtkRcPropertyParser` for use with `gtk_settings_install_property_parser()`
/// or `gtk_widget_class_install_style_property_parser()` which parses a single
/// enumeration value.
/// 
/// The enumeration value can be specified by its name, its nickname or
/// its numeric value. For consistency with flags parsing, the value
/// may be surrounded by parentheses.
public func rcPropertyParseEnum(pspec: ParamSpecProtocol, gstring: StringTypeProtocol, propertyValue property_value: GLibObject.ValueProtocol) -> Bool {
    let rv = gtk_rc_property_parse_enum(cast(pspec.ptr), cast(gstring.ptr), cast(property_value.ptr))
    return Bool(rv != 0)
}




/// A `GtkRcPropertyParser` for use with `gtk_settings_install_property_parser()`
/// or `gtk_widget_class_install_style_property_parser()` which parses flags.
/// 
/// Flags can be specified by their name, their nickname or
/// numerically. Multiple flags can be specified in the form
/// `"( flag1 | flag2 | ... )"`.
public func rcPropertyParseFlags(pspec: ParamSpecProtocol, gstring: StringTypeProtocol, propertyValue property_value: GLibObject.ValueProtocol) -> Bool {
    let rv = gtk_rc_property_parse_flags(cast(pspec.ptr), cast(gstring.ptr), cast(property_value.ptr))
    return Bool(rv != 0)
}




/// A `GtkRcPropertyParser` for use with `gtk_settings_install_property_parser()`
/// or `gtk_widget_class_install_style_property_parser()` which parses a
/// requisition in the form
/// `"{ width, height }"` for integers `width` and `height`.
public func rcPropertyParseRequisition(pspec: ParamSpecProtocol, gstring: StringTypeProtocol, propertyValue property_value: GLibObject.ValueProtocol) -> Bool {
    let rv = gtk_rc_property_parse_requisition(cast(pspec.ptr), cast(gstring.ptr), cast(property_value.ptr))
    return Bool(rv != 0)
}




/// If the modification time on any previously read file for the
/// default `GtkSettings` has changed, discard all style information
/// and then reread all previously read RC files.
///
/// **rc_reparse_all is deprecated:**
/// Use #GtkCssProvider instead.
@available(*, deprecated) public func rcReparseAll() -> Bool {
    let rv = gtk_rc_reparse_all()
    return Bool(rv != 0)
}




/// If the modification time on any previously read file
/// for the given `GtkSettings` has changed, discard all style information
/// and then reread all previously read RC files.
///
/// **rc_reparse_all_for_settings is deprecated:**
/// Use #GtkCssProvider instead.
@available(*, deprecated) public func rcReparseAllFor(settings: SettingsProtocol, forceLoad force_load: Bool) -> Bool {
    let rv = gtk_rc_reparse_all_for_settings(cast(settings.ptr), gboolean(force_load ? 1 : 0))
    return Bool(rv != 0)
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
@available(*, deprecated) public func rcResetStyles(settings: SettingsProtocol) {
    gtk_rc_reset_styles(cast(settings.ptr))

}





///
/// **rc_scanner_new is deprecated:**
/// Use #GtkCssProvider instead
@available(*, deprecated) public func rcScannerNew() -> UnsafeMutablePointer<GScanner>! {
    let rv = gtk_rc_scanner_new()
    return cast(rv)
}




/// Sets the list of files that GTK+ will read at the
/// end of `gtk_init()`.
///
/// **rc_set_default_files is deprecated:**
/// Use #GtkStyleContext with a custom #GtkStyleProvider instead
@available(*, deprecated) public func rcSetDefaultFiles(filenames: UnsafeMutablePointer<UnsafeMutablePointer<gchar>>) {
    gtk_rc_set_default_files(cast(filenames))

}




public func recentChooserErrorQuark() -> GQuark {
    let rv = gtk_recent_chooser_error_quark()
    return rv
}




public func recentManagerErrorQuark() -> GQuark {
    let rv = gtk_recent_manager_error_quark()
    return rv
}




/// Renders an activity indicator (such as in `GtkSpinner`).
/// The state `GTK_STATE_FLAG_CHECKED` determines whether there is
/// activity going on.
public func renderActivity(context: StyleContextProtocol, cr: cairo.ContextProtocol, x: gdouble, y: gdouble, width: gdouble, height: gdouble) {
    gtk_render_activity(cast(context.ptr), cast(cr.ptr), x, y, width, height)

}




/// Renders an arrow pointing to `angle`.
/// 
/// Typical arrow rendering at 0, 1⁄2 π;, π; and 3⁄2 π:
/// 
/// ![](arrows.png)
public func renderArrow(context: StyleContextProtocol, cr: cairo.ContextProtocol, angle: gdouble, x: gdouble, y: gdouble, size: gdouble) {
    gtk_render_arrow(cast(context.ptr), cast(cr.ptr), angle, x, y, size)

}




/// Renders the background of an element.
/// 
/// Typical background rendering, showing the effect of
/// `background-image`, `border-width` and `border-radius`:
/// 
/// ![](background.png)
public func renderBackground(context: StyleContextProtocol, cr: cairo.ContextProtocol, x: gdouble, y: gdouble, width: gdouble, height: gdouble) {
    gtk_render_background(cast(context.ptr), cast(cr.ptr), x, y, width, height)

}




/// Returns the area that will be affected (i.e. drawn to) when
/// calling `gtk_render_background()` for the given `context` and
/// rectangle.
public func renderBackgroundGetClip(context: StyleContextProtocol, x: gdouble, y: gdouble, width: gdouble, height: gdouble, outClip out_clip: Gdk.RectangleProtocol) {
    gtk_render_background_get_clip(cast(context.ptr), x, y, width, height, cast(out_clip.ptr))

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
public func renderCheck(context: StyleContextProtocol, cr: cairo.ContextProtocol, x: gdouble, y: gdouble, width: gdouble, height: gdouble) {
    gtk_render_check(cast(context.ptr), cast(cr.ptr), x, y, width, height)

}




/// Renders an expander (as used in `GtkTreeView` and `GtkExpander`) in the area
/// defined by `x`, `y`, `width`, `height`. The state `GTK_STATE_FLAG_CHECKED`
/// determines whether the expander is collapsed or expanded.
/// 
/// Typical expander rendering:
/// 
/// ![](expanders.png)
public func renderExpander(context: StyleContextProtocol, cr: cairo.ContextProtocol, x: gdouble, y: gdouble, width: gdouble, height: gdouble) {
    gtk_render_expander(cast(context.ptr), cast(cr.ptr), x, y, width, height)

}




/// Renders a extension (as in a `GtkNotebook` tab) in the rectangle
/// defined by `x`, `y`, `width`, `height`. The side where the extension
/// connects to is defined by `gap_side`.
/// 
/// Typical extension rendering:
/// 
/// ![](extensions.png)
public func renderExtension(context: StyleContextProtocol, cr: cairo.ContextProtocol, x: gdouble, y: gdouble, width: gdouble, height: gdouble, gapSide gap_side: PositionType) {
    gtk_render_extension(cast(context.ptr), cast(cr.ptr), x, y, width, height, gap_side)

}




/// Renders a focus indicator on the rectangle determined by `x`, `y`, `width`, `height`.
/// 
/// Typical focus rendering:
/// 
/// ![](focus.png)
public func renderFocus(context: StyleContextProtocol, cr: cairo.ContextProtocol, x: gdouble, y: gdouble, width: gdouble, height: gdouble) {
    gtk_render_focus(cast(context.ptr), cast(cr.ptr), x, y, width, height)

}




/// Renders a frame around the rectangle defined by `x`, `y`, `width`, `height`.
/// 
/// Examples of frame rendering, showing the effect of `border-image`,
/// `border-color`, `border-width`, `border-radius` and junctions:
/// 
/// ![](frames.png)
public func renderFrame(context: StyleContextProtocol, cr: cairo.ContextProtocol, x: gdouble, y: gdouble, width: gdouble, height: gdouble) {
    gtk_render_frame(cast(context.ptr), cast(cr.ptr), x, y, width, height)

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
@available(*, deprecated) public func renderFrameGap(context: StyleContextProtocol, cr: cairo.ContextProtocol, x: gdouble, y: gdouble, width: gdouble, height: gdouble, gapSide gap_side: PositionType, xy0Gap xy0_gap: gdouble, xy1Gap xy1_gap: gdouble) {
    gtk_render_frame_gap(cast(context.ptr), cast(cr.ptr), x, y, width, height, gap_side, xy0_gap, xy1_gap)

}




/// Renders a handle (as in `GtkHandleBox`, `GtkPaned` and
/// `GtkWindow`’s resize grip), in the rectangle
/// determined by `x`, `y`, `width`, `height`.
/// 
/// Handles rendered for the paned and grip classes:
/// 
/// ![](handles.png)
public func renderHandle(context: StyleContextProtocol, cr: cairo.ContextProtocol, x: gdouble, y: gdouble, width: gdouble, height: gdouble) {
    gtk_render_handle(cast(context.ptr), cast(cr.ptr), x, y, width, height)

}




/// Renders the icon in `pixbuf` at the specified `x` and `y` coordinates.
/// 
/// This function will render the icon in `pixbuf` at exactly its size,
/// regardless of scaling factors, which may not be appropriate when
/// drawing on displays with high pixel densities.
/// 
/// You probably want to use `gtk_render_icon_surface()` instead, if you
/// already have a Cairo surface.
public func renderIcon(context: StyleContextProtocol, cr: cairo.ContextProtocol, pixbuf: PixbufProtocol, x: gdouble, y: gdouble) {
    gtk_render_icon(cast(context.ptr), cast(cr.ptr), cast(pixbuf.ptr), x, y)

}




/// Renders the icon specified by `source` at the given `size`, returning the result
/// in a pixbuf.
///
/// **render_icon_pixbuf is deprecated:**
/// Use gtk_icon_theme_load_icon() instead.
@available(*, deprecated) public func renderIconPixbuf(context: StyleContextProtocol, source: IconSourceProtocol, size: GtkIconSize) -> UnsafeMutablePointer<GdkPixbuf>! {
    let rv = gtk_render_icon_pixbuf(cast(context.ptr), cast(source.ptr), size)
    return cast(rv)
}




/// Renders the icon in `surface` at the specified `x` and `y` coordinates.
public func renderIconSurface(context: StyleContextProtocol, cr: cairo.ContextProtocol, surface: SurfaceProtocol, x: gdouble, y: gdouble) {
    gtk_render_icon_surface(cast(context.ptr), cast(cr.ptr), cast(surface.ptr), x, y)

}




/// Draws a text caret on `cr` at the specified index of `layout`.
public func renderInsertionCursor(context: StyleContextProtocol, cr: cairo.ContextProtocol, x: gdouble, y: gdouble, layout: LayoutProtocol, index: CInt, direction: Pango.Direction) {
    gtk_render_insertion_cursor(cast(context.ptr), cast(cr.ptr), x, y, cast(layout.ptr), index, direction)

}




/// Renders `layout` on the coordinates `x`, `y`
public func renderLayout(context: StyleContextProtocol, cr: cairo.ContextProtocol, x: gdouble, y: gdouble, layout: LayoutProtocol) {
    gtk_render_layout(cast(context.ptr), cast(cr.ptr), x, y, cast(layout.ptr))

}




/// Renders a line from (x0, y0) to (x1, y1).
public func renderLine(context: StyleContextProtocol, cr: cairo.ContextProtocol, x0: gdouble, y0: gdouble, x1: gdouble, y1: gdouble) {
    gtk_render_line(cast(context.ptr), cast(cr.ptr), x0, y0, x1, y1)

}




/// Renders an option mark (as in a `GtkRadioButton`), the `GTK_STATE_FLAG_CHECKED`
/// state will determine whether the option is on or off, and
/// `GTK_STATE_FLAG_INCONSISTENT` whether it should be marked as undefined.
/// 
/// Typical option mark rendering:
/// 
/// ![](options.png)
public func renderOption(context: StyleContextProtocol, cr: cairo.ContextProtocol, x: gdouble, y: gdouble, width: gdouble, height: gdouble) {
    gtk_render_option(cast(context.ptr), cast(cr.ptr), x, y, width, height)

}




/// Renders a slider (as in `GtkScale`) in the rectangle defined by `x`, `y`,
/// `width`, `height`. `orientation` defines whether the slider is vertical
/// or horizontal.
/// 
/// Typical slider rendering:
/// 
/// ![](sliders.png)
public func renderSlider(context: StyleContextProtocol, cr: cairo.ContextProtocol, x: gdouble, y: gdouble, width: gdouble, height: gdouble, orientation: Orientation) {
    gtk_render_slider(cast(context.ptr), cast(cr.ptr), x, y, width, height, orientation)

}




/// Converts a color from RGB space to HSV.
/// 
/// Input values must be in the [0.0, 1.0] range;
/// output values will be in the same range.
public func rgbToHsv(r: gdouble, g: gdouble, b: gdouble, h: UnsafeMutablePointer<gdouble>, s: UnsafeMutablePointer<gdouble>, v: UnsafeMutablePointer<gdouble>) {
    gtk_rgb_to_hsv(r, g, b, cast(h), cast(s), cast(v))

}




/// Appends a specified target to the list of supported targets for a
/// given widget and selection.
public func selectionAddTarget(widget: WidgetProtocol, selection: Gdk.Atom, target: Gdk.Atom, info: CUnsignedInt) {
    gtk_selection_add_target(cast(widget.ptr), cast(selection.ptr), cast(target.ptr), guint(info))

}




/// Prepends a table of targets to the list of supported targets
/// for a given widget and selection.
public func selectionAddTargets(widget: WidgetProtocol, selection: Gdk.Atom, targets: UnsafePointer<GtkTargetEntry>, ntargets: CUnsignedInt) {
    gtk_selection_add_targets(cast(widget.ptr), cast(selection.ptr), cast(targets), guint(ntargets))

}




/// Remove all targets registered for the given selection for the
/// widget.
public func selectionClearTargets(widget: WidgetProtocol, selection: Gdk.Atom) {
    gtk_selection_clear_targets(cast(widget.ptr), cast(selection.ptr))

}




/// Requests the contents of a selection. When received,
/// a “selection-received” signal will be generated.
public func selectionConvert(widget: WidgetProtocol, selection: Gdk.Atom, target: Gdk.Atom, time_: UInt32) -> Bool {
    let rv = gtk_selection_convert(cast(widget.ptr), cast(selection.ptr), cast(target.ptr), guint32(time_))
    return Bool(rv != 0)
}




/// Claims ownership of a given selection for a particular widget,
/// or, if `widget` is `nil`, release ownership of the selection.
public func selectionOwnerSet(widget: WidgetProtocol, selection: Gdk.Atom, time_: UInt32) -> Bool {
    let rv = gtk_selection_owner_set(cast(widget.ptr), cast(selection.ptr), guint32(time_))
    return Bool(rv != 0)
}




/// Claim ownership of a given selection for a particular widget, or,
/// if `widget` is `nil`, release ownership of the selection.
public func selectionOwnerSetFor(display: DisplayProtocol, widget: WidgetProtocol, selection: Gdk.Atom, time_: UInt32) -> Bool {
    let rv = gtk_selection_owner_set_for_display(cast(display.ptr), cast(widget.ptr), cast(selection.ptr), guint32(time_))
    return Bool(rv != 0)
}




/// Removes all handlers and unsets ownership of all
/// selections for a widget. Called when widget is being
/// destroyed. This function will not generally be
/// called by applications.
public func selectionRemoveAll(widget: WidgetProtocol) {
    gtk_selection_remove_all(cast(widget.ptr))

}




/// Sets the GTK+ debug flags.
public func setDebug(flags: CUnsignedInt) {
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
@available(*, deprecated) public func showURI(screen: ScreenProtocol, uri: UnsafePointer<gchar>, timestamp: UInt32) throws -> Bool {
    var error: Optional<UnsafeMutablePointer<GError>> = nil
    let rv = gtk_show_uri(cast(screen.ptr), uri, guint32(timestamp), &error)
    if let error = error {
        throw ErrorType(error)
    }
    return Bool(rv != 0)
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
public func showURIOnWindow(parent: WindowProtocol, uri: UnsafePointer<CChar>, timestamp: UInt32) throws -> Bool {
    var error: Optional<UnsafeMutablePointer<GError>> = nil
    let rv = gtk_show_uri_on_window(cast(parent.ptr), uri, guint32(timestamp), &error)
    if let error = error {
        throw ErrorType(error)
    }
    return Bool(rv != 0)
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
@available(*, deprecated) public func stockAdd(items: UnsafePointer<GtkStockItem>, nItems n_items: CUnsignedInt) {
    gtk_stock_add(cast(items), guint(n_items))

}




/// Same as `gtk_stock_add()`, but doesn’t copy `items`, so
/// `items` must persist until application exit.
///
/// **stock_add_static is deprecated:**
/// This method is deprecated.
@available(*, deprecated) public func stockAddStatic(items: UnsafePointer<GtkStockItem>, nItems n_items: CUnsignedInt) {
    gtk_stock_add_static(cast(items), guint(n_items))

}




/// Retrieves a list of all known stock IDs added to a `GtkIconFactory`
/// or registered with `gtk_stock_add()`. The list must be freed with `g_slist_free()`,
/// and each string in the list must be freed with `g_free()`.
///
/// **stock_list_ids is deprecated:**
/// This method is deprecated.
@available(*, deprecated) public func stockListIDs() -> SListRef! {
    let rv = gtk_stock_list_ids()
    return cast(rv.map { SListRef($0) })
}




/// Fills `item` with the registered values for `stock_id`, returning `true`
/// if `stock_id` was known.
///
/// **stock_lookup is deprecated:**
/// This method is deprecated.
@available(*, deprecated) public func stockLookup(stockID stock_id: UnsafePointer<gchar>, item: StockItemProtocol) -> Bool {
    let rv = gtk_stock_lookup(stock_id, cast(item.ptr))
    return Bool(rv != 0)
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
@available(*, deprecated) public func stockSetTranslateFunc(domain: UnsafePointer<gchar>, func_: @escaping TranslateFunc, data: UnsafeMutableRawPointer, notify: @escaping GLib.DestroyNotify) {
    gtk_stock_set_translate_func(domain, func_, cast(data), notify)

}




/// This function frees a target table as returned by
/// `gtk_target_table_new_from_list()`
public func targetTableFree(targets: UnsafeMutablePointer<GtkTargetEntry>, nTargets n_targets: CInt) {
    gtk_target_table_free(cast(targets), gint(n_targets))

}




/// This function creates an `GtkTargetEntry` array that contains the
/// same targets as the passed `list`. The returned table is newly
/// allocated and should be freed using `gtk_target_table_free()` when no
/// longer needed.
public func targetTableNewFrom(list: TargetListProtocol, nTargets n_targets: UnsafeMutablePointer<CInt>) -> UnsafeMutablePointer<GtkTargetEntry>! {
    let rv = gtk_target_table_new_from_list(cast(list.ptr), cast(n_targets))
    return cast(rv)
}




/// Determines if any of the targets in `targets` can be used to
/// provide a `GdkPixbuf`.
public func targetsIncludeImage(targets: UnsafeMutablePointer<GdkAtom>, nTargets n_targets: CInt, writable: Bool) -> Bool {
    let rv = gtk_targets_include_image(cast(targets), gint(n_targets), gboolean(writable ? 1 : 0))
    return Bool(rv != 0)
}




/// Determines if any of the targets in `targets` can be used to
/// provide rich text.
public func targetsIncludeRichText(targets: UnsafeMutablePointer<GdkAtom>, nTargets n_targets: CInt, buffer: TextBufferProtocol) -> Bool {
    let rv = gtk_targets_include_rich_text(cast(targets), gint(n_targets), cast(buffer.ptr))
    return Bool(rv != 0)
}




/// Determines if any of the targets in `targets` can be used to
/// provide text.
public func targetsIncludeText(targets: UnsafeMutablePointer<GdkAtom>, nTargets n_targets: CInt) -> Bool {
    let rv = gtk_targets_include_text(cast(targets), gint(n_targets))
    return Bool(rv != 0)
}




/// Determines if any of the targets in `targets` can be used to
/// provide an uri list.
public func targetsIncludeURI(targets: UnsafeMutablePointer<GdkAtom>, nTargets n_targets: CInt) -> Bool {
    let rv = gtk_targets_include_uri(cast(targets), gint(n_targets))
    return Bool(rv != 0)
}




/// Create a simple window with window title `window_title` and
/// text contents `dialog_text`.
/// The window will quit any running `gtk_main()`-loop when destroyed, and it
/// will automatically be destroyed upon test function teardown.
///
/// **test_create_simple_window is deprecated:**
/// This testing infrastructure is phased out in favor of reftests.
@available(*, deprecated) public func testCreateSimpleWindow(windowTitle window_title: UnsafePointer<gchar>, dialogText dialog_text: UnsafePointer<gchar>) -> UnsafeMutablePointer<GtkWidget>! {
    let rv = gtk_test_create_simple_window(window_title, dialog_text)
    return cast(rv)
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
public func testFindLabel(widget: WidgetProtocol, labelPattern label_pattern: UnsafePointer<gchar>) -> UnsafeMutablePointer<GtkWidget>! {
    let rv = gtk_test_find_label(cast(widget.ptr), label_pattern)
    return cast(rv)
}




/// This function will search siblings of `base_widget` and siblings of its
/// ancestors for all widgets matching `widget_type`.
/// Of the matching widgets, the one that is geometrically closest to
/// `base_widget` will be returned.
/// The general purpose of this function is to find the most likely “action”
/// widget, relative to another labeling widget. Such as finding a
/// button or text entry widget, given its corresponding label widget.
public func testFindSibling(baseWidget base_widget: WidgetProtocol, widgetType widget_type: GType) -> UnsafeMutablePointer<GtkWidget>! {
    let rv = gtk_test_find_sibling(cast(base_widget.ptr), widget_type)
    return cast(rv)
}




/// This function will search the descendants of `widget` for a widget
/// of type `widget_type` that has a label matching `label_pattern` next
/// to it. This is most useful for automated GUI testing, e.g. to find
/// the “OK” button in a dialog and synthesize clicks on it.
/// However see `gtk_test_find_label()`, `gtk_test_find_sibling()` and
/// `gtk_test_widget_click()` for possible caveats involving the search of
/// such widgets and synthesizing widget events.
public func testFind(widget: WidgetProtocol, labelPattern label_pattern: UnsafePointer<gchar>, widgetType widget_type: GType) -> UnsafeMutablePointer<GtkWidget>! {
    let rv = gtk_test_find_widget(cast(widget.ptr), label_pattern, widget_type)
    return cast(rv)
}





// *** testInit() is not available because it has a varargs (...) parameter!





/// Return the type ids that have been registered after
/// calling `gtk_test_register_all_types()`.
public func testListAllTypes(nTypes n_types: UnsafeMutablePointer<CUnsignedInt>) -> UnsafePointer<GType>! {
    let rv = gtk_test_list_all_types(cast(n_types))
    return cast(rv)
}




/// Force registration of all core Gtk+ and Gdk object types.
/// This allowes to refer to any of those object types via
/// `g_type_from_name()` after calling this function.
public func testRegisterAllTypes() {
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
@available(*, deprecated) public func testSliderGetValue(widget: WidgetProtocol) -> CDouble {
    let rv = gtk_test_slider_get_value(cast(widget.ptr))
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
@available(*, deprecated) public func testSliderSetPerc(widget: WidgetProtocol, percentage: gdouble) {
    gtk_test_slider_set_perc(cast(widget.ptr), percentage)

}




/// This function will generate a `button` click in the upwards or downwards
/// spin button arrow areas, usually leading to an increase or decrease of
/// spin button’s value.
///
/// **test_spin_button_click is deprecated:**
/// This testing infrastructure is phased out in favor of reftests.
@available(*, deprecated) public func testSpinButtonClick(spinner: SpinButtonProtocol, button: CUnsignedInt, upwards: Bool) -> Bool {
    let rv = gtk_test_spin_button_click(cast(spinner.ptr), guint(button), gboolean(upwards ? 1 : 0))
    return Bool(rv != 0)
}




/// Retrive the text string of `widget` if it is a GtkLabel,
/// GtkEditable (entry and text widgets) or GtkTextView.
///
/// **test_text_get is deprecated:**
/// This testing infrastructure is phased out in favor of reftests.
@available(*, deprecated) public func testTextGet(widget: WidgetProtocol) -> String! {
    let rv = gtk_test_text_get(cast(widget.ptr))
    return rv.map { String(cString: UnsafePointer<CChar>($0)) }
}




/// Set the text string of `widget` to `string` if it is a GtkLabel,
/// GtkEditable (entry and text widgets) or GtkTextView.
///
/// **test_text_set is deprecated:**
/// This testing infrastructure is phased out in favor of reftests.
@available(*, deprecated) public func testTextSet(widget: WidgetProtocol, string: UnsafePointer<gchar>) {
    gtk_test_text_set(cast(widget.ptr), string)

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
@available(*, deprecated) public func testWidgetClick(widget: WidgetProtocol, button: CUnsignedInt, modifiers: Gdk.ModifierType) -> Bool {
    let rv = gtk_test_widget_click(cast(widget.ptr), guint(button), modifiers)
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
public func testWidgetSendKey(widget: WidgetProtocol, keyval: CUnsignedInt, modifiers: Gdk.ModifierType) -> Bool {
    let rv = gtk_test_widget_send_key(cast(widget.ptr), guint(keyval), modifiers)
    return Bool(rv != 0)
}




/// Enters the main loop and waits for `widget` to be “drawn”. In this
/// context that means it waits for the frame clock of `widget` to have
/// run a full styling, layout and drawing cycle.
/// 
/// This function is intended to be used for syncing with actions that
/// depend on `widget` relayouting or on interaction with the display
/// server.
public func testWidgetWaitForDraw(widget: WidgetProtocol) {
    gtk_test_widget_wait_for_draw(cast(widget.ptr))

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
public func treeGetRowDragData(selectionData selection_data: SelectionDataProtocol, treeModel tree_model: TreeModelProtocol, path: TreePathProtocol) -> Bool {
    let rv = gtk_tree_get_row_drag_data(cast(selection_data.ptr), cast(tree_model.ptr), cast(path.ptr))
    return Bool(rv != 0)
}




/// Lets a set of row reference created by
/// `gtk_tree_row_reference_new_proxy()` know that the
/// model emitted the `GtkTreeModel::row`-deleted signal.
public func treeRowReferenceDeleted(proxy: GLibObject.ObjectProtocol, path: TreePathProtocol) {
    gtk_tree_row_reference_deleted(cast(proxy.ptr), cast(path.ptr))

}




/// Lets a set of row reference created by
/// `gtk_tree_row_reference_new_proxy()` know that the
/// model emitted the `GtkTreeModel::row`-inserted signal.
public func treeRowReferenceInserted(proxy: GLibObject.ObjectProtocol, path: TreePathProtocol) {
    gtk_tree_row_reference_inserted(cast(proxy.ptr), cast(path.ptr))

}




/// Lets a set of row reference created by
/// `gtk_tree_row_reference_new_proxy()` know that the
/// model emitted the `GtkTreeModel::rows`-reordered signal.
public func treeRowReferenceReordered(proxy: GLibObject.ObjectProtocol, path: TreePathProtocol, iter: TreeIterProtocol, newOrder new_order: UnsafeMutablePointer<CInt>) {
    gtk_tree_row_reference_reordered(cast(proxy.ptr), cast(path.ptr), cast(iter.ptr), cast(new_order))

}




/// Sets selection data of target type `GTK_TREE_MODEL_ROW`. Normally used
/// in a drag_data_get handler.
public func treeSetRowDragData(selectionData selection_data: SelectionDataProtocol, treeModel tree_model: TreeModelProtocol, path: TreePathProtocol) -> Bool {
    let rv = gtk_tree_set_row_drag_data(cast(selection_data.ptr), cast(tree_model.ptr), cast(path.ptr))
    return Bool(rv != 0)
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
public func true_() -> Bool {
    let rv = gtk_true()
    return Bool(rv != 0)
}


