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

/// Gets the modifier mask.
/// 
/// The modifier mask determines which modifiers are considered significant
/// for keyboard accelerators. This includes all keyboard modifiers except
/// for `GDK_LOCK_MASK`.
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
/// “&lt;Control&gt;a” or “&lt;Shift&gt;&lt;Alt&gt;F1”.
/// 
/// The parser is fairly liberal and allows lower or upper case, and also
/// abbreviations such as “&lt;Ctl&gt;” and “&lt;Ctrl&gt;”. Key names are parsed using
/// `gdk_keyval_from_name()`. For character keys the name is not the symbol,
/// but the lowercase name, e.g. one would use “&lt;Ctrl&gt;minus” instead of
/// “&lt;Ctrl&gt;-”.
/// 
/// If the parse fails, `accelerator_key` and `accelerator_mods` will
/// be set to 0 (zero).
@inlinable public func acceleratorParse(accelerator: UnsafePointer<CChar>!, acceleratorKey: UnsafeMutablePointer<guint>! = nil, acceleratorMods: UnsafeMutablePointer<GdkModifierType>! = nil) -> Bool {
    let rv = ((gtk_accelerator_parse(accelerator, acceleratorKey, acceleratorMods)) != 0)
    return rv
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
@inlinable public func acceleratorParseWithKeycode(accelerator: UnsafePointer<CChar>!, display: Gdk.DisplayRef? = nil, acceleratorKey: UnsafeMutablePointer<guint>! = nil, acceleratorCodes: UnsafeMutablePointer<UnsafeMutablePointer<guint>?>! = nil, acceleratorMods: UnsafeMutablePointer<GdkModifierType>! = nil) -> Bool {
    let rv = ((gtk_accelerator_parse_with_keycode(accelerator, display?.display_ptr, acceleratorKey, acceleratorCodes, acceleratorMods)) != 0)
    return rv
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
@inlinable public func acceleratorParseWithKeycode<DisplayT: Gdk.DisplayProtocol>(accelerator: UnsafePointer<CChar>!, display: DisplayT?, acceleratorKey: UnsafeMutablePointer<guint>! = nil, acceleratorCodes: UnsafeMutablePointer<UnsafeMutablePointer<guint>?>! = nil, acceleratorMods: UnsafeMutablePointer<GdkModifierType>! = nil) -> Bool {
    let rv = ((gtk_accelerator_parse_with_keycode(accelerator, display?.display_ptr, acceleratorKey, acceleratorCodes, acceleratorMods)) != 0)
    return rv
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




@inlinable public func accessiblePropertyInitValue<ValueT: GLibObject.ValueProtocol>(property: GtkAccessibleProperty, value: ValueT) {
    gtk_accessible_property_init_value(property, value.value_ptr)

}




@inlinable public func accessibleRelationInitValue<ValueT: GLibObject.ValueProtocol>(relation: GtkAccessibleRelation, value: ValueT) {
    gtk_accessible_relation_init_value(relation, value.value_ptr)

}




@inlinable public func accessibleStateInitValue<ValueT: GLibObject.ValueProtocol>(state: GtkAccessibleState, value: ValueT) {
    gtk_accessible_state_init_value(state, value.value_ptr)

}




/// Initializes `iter` to point to `target`. If `target` is not found, finds
/// the next value after it. If no value &gt;= `target` exists in `set`, this
/// function returns `false`.
@inlinable public func bitsetIterInitAt<BitsetIterT: BitsetIterProtocol, BitsetT: BitsetProtocol>(iter: BitsetIterT, set: BitsetT, target: Int, value: UnsafeMutablePointer<guint>! = nil) -> Bool {
    let rv = ((gtk_bitset_iter_init_at(iter._ptr, set.bitset_ptr, guint(target), value)) != 0)
    return rv
}




/// Initializes an iterator for `set` and points it to the first
/// value in `set`. If `set` is empty, `false` is returned and `value`
/// is set to `G_MAXUINT`.
@inlinable public func bitsetIterInitFirst<BitsetIterT: BitsetIterProtocol, BitsetT: BitsetProtocol>(iter: BitsetIterT, set: BitsetT, value: UnsafeMutablePointer<guint>! = nil) -> Bool {
    let rv = ((gtk_bitset_iter_init_first(iter._ptr, set.bitset_ptr, value)) != 0)
    return rv
}




/// Initializes an iterator for `set` and points it to the last
/// value in `set`. If `set` is empty, `false` is returned.
@inlinable public func bitsetIterInitLast<BitsetIterT: BitsetIterProtocol, BitsetT: BitsetProtocol>(iter: BitsetIterT, set: BitsetT, value: UnsafeMutablePointer<guint>! = nil) -> Bool {
    let rv = ((gtk_bitset_iter_init_last(iter._ptr, set.bitset_ptr, value)) != 0)
    return rv
}




@inlinable public func builderErrorQuark() -> GQuark {
    let rv = gtk_builder_error_quark()
    return rv
}




@inlinable public func constraintVflParserErrorQuark() -> GQuark {
    let rv = gtk_constraint_vfl_parser_error_quark()
    return rv
}




@inlinable public func cssParserErrorQuark() -> GQuark {
    let rv = gtk_css_parser_error_quark()
    return rv
}




@inlinable public func cssParserWarningQuark() -> GQuark {
    let rv = gtk_css_parser_warning_quark()
    return rv
}




/// Prevents `gtk_init()`, `gtk_init_check()` and
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




/// Gets a property of the `GtkEditable` delegate for `object`.
/// 
/// This is helper function that should be called in get_property,
/// before handling your own properties.
@inlinable public func editableDelegateGetProperty<ObjectT: GLibObject.ObjectProtocol, ParamSpecT: GLibObject.ParamSpecProtocol, ValueT: GLibObject.ValueProtocol>(object: ObjectT, propId: Int, value: ValueT, pspec: ParamSpecT) -> Bool {
    let rv = ((gtk_editable_delegate_get_property(object.object_ptr, guint(propId), value.value_ptr, pspec.param_spec_ptr)) != 0)
    return rv
}




/// Sets a property on the `GtkEditable` delegate for `object`.
/// 
/// This is a helper function that should be called in set_property,
/// before handling your own properties.
@inlinable public func editableDelegateSetProperty<ObjectT: GLibObject.ObjectProtocol, ParamSpecT: GLibObject.ParamSpecProtocol, ValueT: GLibObject.ValueProtocol>(object: ObjectT, propId: Int, value: ValueT, pspec: ParamSpecT) -> Bool {
    let rv = ((gtk_editable_delegate_set_property(object.object_ptr, guint(propId), value.value_ptr, pspec.param_spec_ptr)) != 0)
    return rv
}




/// Installs the GtkEditable properties for `class`.
/// 
/// This is a helper function that should be called in class_init,
/// after installing your own properties.
/// 
/// To handle the properties in your set_property and get_property
/// functions, you can either use `gtk_editable_delegate_set_property()`
/// and `gtk_editable_delegate_get_property()` (if you are using a delegate),
/// or remember the `first_prop` offset and add it to the values in the
/// `GtkEditableProperties` enumeration to get the property IDs for these
/// properties.
@inlinable public func editableInstallProperties<ObjectClassT: GLibObject.ObjectClassProtocol>(objectClass: ObjectClassT, firstProp: Int) -> Int {
    let rv = Int(gtk_editable_install_properties(objectClass._ptr, guint(firstProp)))
    return rv
}




/// Registers an error quark for `GtkFileChooser` if necessary.
@inlinable public func fileChooserErrorQuark() -> GQuark {
    let rv = gtk_file_chooser_error_quark()
    return rv
}




/// Returns the binary age as passed to `libtool`
/// when building the GTK library the process is running against.
/// If `libtool` means nothing to you, don't
/// worry about it.
@inlinable public func getBinaryAge() -> Int {
    let rv = Int(gtk_get_binary_age())
    return rv
}




/// Returns the GTK debug flags that are currently active.
/// 
/// This function is intended for GTK modules that want
/// to adjust their debug output based on GTK debug flags.
@inlinable public func getDebugFlags() -> DebugFlags {
    let rv = DebugFlags(gtk_get_debug_flags())
    return rv
}




/// Returns the `PangoLanguage` for the default language currently in
/// effect. (Note that this can change over the life of an
/// application.) The default language is derived from the current
/// locale. It determines, for example, whether GTK uses the
/// right-to-left or left-to-right text direction.
/// 
/// This function is equivalent to `pango_language_get_default()`.
/// See that function for details.
@inlinable public func getDefaultLanguage() -> Pango.LanguageRef! {
    guard let rv = Pango.LanguageRef(gtk_get_default_language()) else { return nil }
    return rv
}




/// Returns the interface age as passed to `libtool`
/// when building the GTK library the process is running against.
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
/// GTK sets the default text direction according to the locale
/// during `gtk_init()`, and you should normally use
/// `gtk_widget_get_direction()` or `gtk_widget_get_default_direction()`
/// to obtain the current direction.
/// 
/// This function is only needed rare cases when the locale is
/// changed after GTK has already been initialized. In this case,
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




/// Returns the major version number of the GTK library.
/// (e.g. in GTK version 3.1.5 this is 3.)
/// 
/// This function is in the library, so it represents the GTK library
/// your code is running against. Contrast with the `GTK_MAJOR_VERSION`
/// macro, which represents the major version of the GTK headers you
/// have included when compiling your code.
@inlinable public func getMajorVersion() -> Int {
    let rv = Int(gtk_get_major_version())
    return rv
}




/// Returns the micro version number of the GTK library.
/// (e.g. in GTK version 3.1.5 this is 5.)
/// 
/// This function is in the library, so it represents the GTK library
/// your code is are running against. Contrast with the
/// `GTK_MICRO_VERSION` macro, which represents the micro version of the
/// GTK headers you have included when compiling your code.
@inlinable public func getMicroVersion() -> Int {
    let rv = Int(gtk_get_micro_version())
    return rv
}




/// Returns the minor version number of the GTK library.
/// (e.g. in GTK version 3.1.5 this is 1.)
/// 
/// This function is in the library, so it represents the GTK library
/// your code is are running against. Contrast with the
/// `GTK_MINOR_VERSION` macro, which represents the minor version of the
/// GTK headers you have included when compiling your code.
@inlinable public func getMinorVersion() -> Int {
    let rv = Int(gtk_get_minor_version())
    return rv
}




/// Converts a color from HSV space to RGB.
/// 
/// Input values must be in the [0.0, 1.0] range;
/// output values will be in the same range.
@inlinable public func hsvToRgb(h: CFloat, s: CFloat, v: CFloat, r: UnsafeMutablePointer<CFloat>!, g: UnsafeMutablePointer<CFloat>!, b: UnsafeMutablePointer<CFloat>!) {
    gtk_hsv_to_rgb(h, s, v, r, g, b)

}




@inlinable public func iconThemeErrorQuark() -> GQuark {
    let rv = gtk_icon_theme_error_quark()
    return rv
}




@inlinable public func imModulesInit() {
    gtk_im_modules_init()

}




/// Call this function before using any other GTK functions in your GUI
/// applications.  It will initialize everything needed to operate the
/// toolkit and parses some standard command line options.
/// 
/// If you are using `GtkApplication`, you don't have to call `gtk_init()`
/// or `gtk_init_check()`; the `GApplication::startup` handler
/// does it for you.
/// 
/// This function will terminate your program if it was unable to
/// initialize the windowing system for some reason. If you want
/// your program to fall back to a textual interface you want to
/// call `gtk_init_check()` instead.
/// 
/// GTK calls `signal (SIGPIPE, SIG_IGN)`
/// during initialization, to ignore SIGPIPE signals, since these are
/// almost never wanted in graphical applications. If you do need to
/// handle SIGPIPE for some reason, reset the handler after `gtk_init()`,
/// but notice that other libraries (e.g. libdbus or gvfs) might do
/// similar things.
@inlinable public func init_() {
    gtk_init()

}




/// This function does the same work as `gtk_init()` with only a single
/// change: It does not terminate the program if the windowing system
/// can’t be initialized. Instead it returns `false` on failure.
/// 
/// This way the application can fall back to some other means of
/// communication with the user - for example a curses or command line
/// interface.
@inlinable public func initCheck() -> Bool {
    let rv = ((gtk_init_check()) != 0)
    return rv
}




/// Use this function to check if GTK has been initialized with `gtk_init()`
/// or `gtk_init_check()`.
@inlinable public func isInitialized() -> Bool {
    let rv = ((gtk_is_initialized()) != 0)
    return rv
}




/// Finds the GtkNative associated with the surface.
@inlinable public func nativeGetFor<SurfaceT: Gdk.SurfaceProtocol>(surface: SurfaceT) -> NativeRef! {
    guard let rv = NativeRef(gconstpointer: gconstpointer(gtk_native_get_for_surface(surface.surface_ptr))) else { return nil }
    return rv
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




/// Creates a new `GParamSpec` instance for a property holding a `GtkExpression`.
/// 
/// See `g_param_spec_internal()` for details on the property strings.
@inlinable public func paramSpecExpression(name: UnsafePointer<CChar>!, nick: UnsafePointer<CChar>!, blurb: UnsafePointer<CChar>!, flags: GLibObject.ParamFlags) -> GLibObject.ParamSpecRef! {
    guard let rv = GLibObject.ParamSpecRef(gtk_param_spec_expression(name, nick, blurb, flags.value)) else { return nil }
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




@inlinable public func recentManagerErrorQuark() -> GQuark {
    let rv = gtk_recent_manager_error_quark()
    return rv
}




/// Renders an activity indicator (such as in `GtkSpinner`).
/// The state `GTK_STATE_FLAG_CHECKED` determines whether there is
/// activity going on.
@inlinable public func renderActivity<ContextT: Cairo.ContextProtocol, StyleContextT: StyleContextProtocol>(context: StyleContextT, cr: ContextT, x: CDouble, y: CDouble, width: CDouble, height: CDouble) {
    gtk_render_activity(context.style_context_ptr, cr._ptr, x, y, width, height)

}




/// Renders an arrow pointing to `angle`.
/// 
/// Typical arrow rendering at 0, 1⁄2 π;, π; and 3⁄2 π:
/// 
/// ![](arrows.png)
@inlinable public func renderArrow<ContextT: Cairo.ContextProtocol, StyleContextT: StyleContextProtocol>(context: StyleContextT, cr: ContextT, angle: CDouble, x: CDouble, y: CDouble, size: CDouble) {
    gtk_render_arrow(context.style_context_ptr, cr._ptr, angle, x, y, size)

}




/// Renders the background of an element.
/// 
/// Typical background rendering, showing the effect of
/// `background-image`, `border-width` and `border-radius`:
/// 
/// ![](background.png)
@inlinable public func renderBackground<ContextT: Cairo.ContextProtocol, StyleContextT: StyleContextProtocol>(context: StyleContextT, cr: ContextT, x: CDouble, y: CDouble, width: CDouble, height: CDouble) {
    gtk_render_background(context.style_context_ptr, cr._ptr, x, y, width, height)

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
@inlinable public func renderCheck<ContextT: Cairo.ContextProtocol, StyleContextT: StyleContextProtocol>(context: StyleContextT, cr: ContextT, x: CDouble, y: CDouble, width: CDouble, height: CDouble) {
    gtk_render_check(context.style_context_ptr, cr._ptr, x, y, width, height)

}




/// Renders an expander (as used in `GtkTreeView` and `GtkExpander`) in the area
/// defined by `x`, `y`, `width`, `height`. The state `GTK_STATE_FLAG_CHECKED`
/// determines whether the expander is collapsed or expanded.
/// 
/// Typical expander rendering:
/// 
/// ![](expanders.png)
@inlinable public func renderExpander<ContextT: Cairo.ContextProtocol, StyleContextT: StyleContextProtocol>(context: StyleContextT, cr: ContextT, x: CDouble, y: CDouble, width: CDouble, height: CDouble) {
    gtk_render_expander(context.style_context_ptr, cr._ptr, x, y, width, height)

}




/// Renders a focus indicator on the rectangle determined by `x`, `y`, `width`, `height`.
/// 
/// Typical focus rendering:
/// 
/// ![](focus.png)
@inlinable public func renderFocus<ContextT: Cairo.ContextProtocol, StyleContextT: StyleContextProtocol>(context: StyleContextT, cr: ContextT, x: CDouble, y: CDouble, width: CDouble, height: CDouble) {
    gtk_render_focus(context.style_context_ptr, cr._ptr, x, y, width, height)

}




/// Renders a frame around the rectangle defined by `x`, `y`, `width`, `height`.
/// 
/// Examples of frame rendering, showing the effect of `border-image`,
/// `border-color`, `border-width`, `border-radius` and junctions:
/// 
/// ![](frames.png)
@inlinable public func renderFrame<ContextT: Cairo.ContextProtocol, StyleContextT: StyleContextProtocol>(context: StyleContextT, cr: ContextT, x: CDouble, y: CDouble, width: CDouble, height: CDouble) {
    gtk_render_frame(context.style_context_ptr, cr._ptr, x, y, width, height)

}




/// Renders a handle (as in `GtkPaned` and
/// `GtkWindow`’s resize grip), in the rectangle
/// determined by `x`, `y`, `width`, `height`.
/// 
/// Handles rendered for the paned and grip classes:
/// 
/// ![](handles.png)
@inlinable public func renderHandle<ContextT: Cairo.ContextProtocol, StyleContextT: StyleContextProtocol>(context: StyleContextT, cr: ContextT, x: CDouble, y: CDouble, width: CDouble, height: CDouble) {
    gtk_render_handle(context.style_context_ptr, cr._ptr, x, y, width, height)

}




/// Renders the icon in `texture` at the specified `x` and `y` coordinates.
/// 
/// This function will render the icon in `texture` at exactly its size,
/// regardless of scaling factors, which may not be appropriate when
/// drawing on displays with high pixel densities.
@inlinable public func renderIcon<ContextT: Cairo.ContextProtocol, StyleContextT: StyleContextProtocol, TextureT: Gdk.TextureProtocol>(context: StyleContextT, cr: ContextT, texture: TextureT, x: CDouble, y: CDouble) {
    gtk_render_icon(context.style_context_ptr, cr._ptr, texture.texture_ptr, x, y)

}




/// Renders `layout` on the coordinates `x`, `y`
@inlinable public func renderLayout<ContextT: Cairo.ContextProtocol, LayoutT: Pango.LayoutProtocol, StyleContextT: StyleContextProtocol>(context: StyleContextT, cr: ContextT, x: CDouble, y: CDouble, layout: LayoutT) {
    gtk_render_layout(context.style_context_ptr, cr._ptr, x, y, layout.layout_ptr)

}




/// Renders a line from (x0, y0) to (x1, y1).
@inlinable public func renderLine<ContextT: Cairo.ContextProtocol, StyleContextT: StyleContextProtocol>(context: StyleContextT, cr: ContextT, x0: CDouble, y0: CDouble, x1: CDouble, y1: CDouble) {
    gtk_render_line(context.style_context_ptr, cr._ptr, x0, y0, x1, y1)

}




/// Renders an option mark (as in a radio button), the `GTK_STATE_FLAG_CHECKED`
/// state will determine whether the option is on or off, and
/// `GTK_STATE_FLAG_INCONSISTENT` whether it should be marked as undefined.
/// 
/// Typical option mark rendering:
/// 
/// ![](options.png)
@inlinable public func renderOption<ContextT: Cairo.ContextProtocol, StyleContextT: StyleContextProtocol>(context: StyleContextT, cr: ContextT, x: CDouble, y: CDouble, width: CDouble, height: CDouble) {
    gtk_render_option(context.style_context_ptr, cr._ptr, x, y, width, height)

}




/// Converts a color from RGB space to HSV.
/// 
/// Input values must be in the [0.0, 1.0] range;
/// output values will be in the same range.
@inlinable public func rgbToHsv(r: CFloat, g: CFloat, b: CFloat, h: UnsafeMutablePointer<CFloat>!, s: UnsafeMutablePointer<CFloat>!, v: UnsafeMutablePointer<CFloat>!) {
    gtk_rgb_to_hsv(r, g, b, h, s, v)

}




/// Sets the GTK debug flags.
@inlinable public func setDebug(flags: DebugFlags) {
    gtk_set_debug_flags(flags.value)

}





// *** showAboutDialog() is not available because it has a varargs (...) parameter!





/// This function launches the default application for showing
/// a given uri, or shows an error dialog if that fails.
@inlinable public func showUri(parent: WindowRef? = nil, uri: UnsafePointer<CChar>!, timestamp: guint32) {
    gtk_show_uri(parent?.window_ptr, uri, timestamp)

}
/// This function launches the default application for showing
/// a given uri, or shows an error dialog if that fails.
@inlinable public func showUri<WindowT: WindowProtocol>(parent: WindowT?, uri: UnsafePointer<CChar>!, timestamp: guint32) {
    gtk_show_uri(parent?.window_ptr, uri, timestamp)

}




/// This function launches the default application for showing
/// a given uri.
/// 
/// The `callback` will be called when the launch is completed.
/// It should call `gtk_show_uri_full_finish()` to obtain the result.
/// 
/// This is the recommended call to be used as it passes information
/// necessary for sandbox helpers to parent their dialogs properly.
@inlinable public func showUriFull(parent: WindowRef? = nil, uri: UnsafePointer<CChar>!, timestamp: guint32, cancellable: GIO.CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
    gtk_show_uri_full(parent?.window_ptr, uri, timestamp, cancellable?.cancellable_ptr, callback, userData)

}
/// This function launches the default application for showing
/// a given uri.
/// 
/// The `callback` will be called when the launch is completed.
/// It should call `gtk_show_uri_full_finish()` to obtain the result.
/// 
/// This is the recommended call to be used as it passes information
/// necessary for sandbox helpers to parent their dialogs properly.
@inlinable public func showUriFull<CancellableT: GIO.CancellableProtocol, WindowT: WindowProtocol>(parent: WindowT?, uri: UnsafePointer<CChar>!, timestamp: guint32, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
    gtk_show_uri_full(parent?.window_ptr, uri, timestamp, cancellable?.cancellable_ptr, callback, userData)

}




/// Finished the `gtk_show_uri()` call and returns the result
/// of the operation.
@inlinable public func showUriFullFinish<AsyncResultT: GIO.AsyncResultProtocol, WindowT: WindowProtocol>(parent: WindowT, result: AsyncResultT) throws -> Bool {
    var error: UnsafeMutablePointer<GError>?
    let rv = ((gtk_show_uri_full_finish(parent.window_ptr, result.async_result_ptr, &error)) != 0)
    if let error = error { throw GLibError(error) }
    return rv
}




@inlinable public func testAccessibleAssertionMessageRole<AccessibleT: AccessibleProtocol>(domain: UnsafePointer<CChar>!, file: UnsafePointer<CChar>!, line: Int, `func`: UnsafePointer<CChar>!, expr: UnsafePointer<CChar>!, accessible: AccessibleT, expectedRole: GtkAccessibleRole, actualRole: GtkAccessibleRole) {
    gtk_test_accessible_assertion_message_role(domain, file, gint(line), `func`, expr, accessible.accessible_ptr, expectedRole, actualRole)

}





// *** testAccessibleCheckProperty() is not available because it has a varargs (...) parameter!






// *** testAccessibleCheckRelation() is not available because it has a varargs (...) parameter!






// *** testAccessibleCheckState() is not available because it has a varargs (...) parameter!





/// Checks whether the `GtkAccessible` has `property` set.
@inlinable public func testAccessibleHasProperty<AccessibleT: AccessibleProtocol>(accessible: AccessibleT, property: GtkAccessibleProperty) -> Bool {
    let rv = ((gtk_test_accessible_has_property(accessible.accessible_ptr, property)) != 0)
    return rv
}




/// Checks whether the `GtkAccessible` has `relation` set.
@inlinable public func testAccessibleHasRelation<AccessibleT: AccessibleProtocol>(accessible: AccessibleT, relation: GtkAccessibleRelation) -> Bool {
    let rv = ((gtk_test_accessible_has_relation(accessible.accessible_ptr, relation)) != 0)
    return rv
}




/// Checks whether the `GtkAccessible:accessible-role` of the accessible
/// is `role`.
@inlinable public func testAccessibleHasRole<AccessibleT: AccessibleProtocol>(accessible: AccessibleT, role: GtkAccessibleRole) -> Bool {
    let rv = ((gtk_test_accessible_has_role(accessible.accessible_ptr, role)) != 0)
    return rv
}




/// Checks whether the `GtkAccessible` has `state` set.
@inlinable public func testAccessibleHasState<AccessibleT: AccessibleProtocol>(accessible: AccessibleT, state: GtkAccessibleState) -> Bool {
    let rv = ((gtk_test_accessible_has_state(accessible.accessible_ptr, state)) != 0)
    return rv
}




/// Return the type ids that have been registered after
/// calling `gtk_test_register_all_types()`.
@inlinable public func testListAllTypes(nTypes: UnsafeMutablePointer<guint>!) -> UnsafePointer<GType>! {
    guard let rv = gtk_test_list_all_types(nTypes) else { return nil }
    return rv
}




/// Force registration of all core GTK object types.
/// 
/// This allowes to refer to any of those object types via
/// `g_type_from_name()` after calling this function.
@inlinable public func testRegisterAllTypes() {
    gtk_test_register_all_types()

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




/// Creates a content provider for dragging `path` from `tree_model`.
@inlinable public func treeCreateRowDragContent<TreeModelT: TreeModelProtocol, TreePathT: TreePathProtocol>(treeModel: TreeModelT, path: TreePathT) -> Gdk.ContentProviderRef! {
    guard let rv = Gdk.ContentProviderRef(gtk_tree_create_row_drag_content(treeModel.tree_model_ptr, path.tree_path_ptr)) else { return nil }
    return rv
}




/// Obtains a `tree_model` and `path` from value of target type
/// `GTK_TYPE_TREE_ROW_DATA`.
/// 
/// The returned path must be freed with `gtk_tree_path_free()`.
@inlinable public func treeGetRowDragData<ValueT: GLibObject.ValueProtocol>(value: ValueT, treeModel: UnsafeMutablePointer<UnsafeMutablePointer<GtkTreeModel>?>? = nil, path: UnsafeMutablePointer<UnsafeMutablePointer<GtkTreePath>?>? = nil) -> Bool {
    let rv = ((gtk_tree_get_row_drag_data(value.value_ptr, treeModel, path)) != 0)
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
@inlinable public func treeRowReferenceReordered<ObjectT: GLibObject.ObjectProtocol, TreeIterT: TreeIterProtocol, TreePathT: TreePathProtocol>(proxy: ObjectT, path: TreePathT, iter: TreeIterT, newOrder: UnsafeMutablePointer<CInt>!) {
    gtk_tree_row_reference_reordered(proxy.object_ptr, path.tree_path_ptr, iter.tree_iter_ptr, newOrder)

}




/// Retrieves the `GtkExpression` stored inside the given `value`, and acquires
/// a reference to it.
@inlinable public func valueDupExpression<ValueT: GLibObject.ValueProtocol>(value: ValueT) -> ExpressionRef! {
    guard let rv = ExpressionRef(gconstpointer: gconstpointer(gtk_value_dup_expression(value.value_ptr))) else { return nil }
    return rv
}




/// Retrieves the `GtkExpression` stored inside the given `value`.
@inlinable public func valueGetExpression<ValueT: GLibObject.ValueProtocol>(value: ValueT) -> ExpressionRef! {
    guard let rv = ExpressionRef(gconstpointer: gconstpointer(gtk_value_get_expression(value.value_ptr))) else { return nil }
    return rv
}




/// Stores the given `GtkExpression` inside `value`.
/// 
/// The `GValue` will acquire a reference to the `expression`.
@inlinable public func valueSetExpression<ExpressionT: ExpressionProtocol, ValueT: GLibObject.ValueProtocol>(value: ValueT, expression: ExpressionT) {
    gtk_value_set_expression(value.value_ptr, expression.expression_ptr)

}




/// Stores the given `GtkExpression` inside `value`.
/// 
/// This function transfers the ownership of the `expression` to the `GValue`.
@inlinable public func valueTakeExpression<ValueT: GLibObject.ValueProtocol>(value: ValueT, expression: ExpressionRef? = nil) {
    gtk_value_take_expression(value.value_ptr, expression?.expression_ptr)

}
/// Stores the given `GtkExpression` inside `value`.
/// 
/// This function transfers the ownership of the `expression` to the `GValue`.
@inlinable public func valueTakeExpression<ExpressionT: ExpressionProtocol, ValueT: GLibObject.ValueProtocol>(value: ValueT, expression: ExpressionT?) {
    gtk_value_take_expression(value.value_ptr, expression?.expression_ptr)

}


