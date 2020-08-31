s/^public let STOCK_/\/\/ public let STOCK_/
s/^let \(.*\): String/let \1: CChar/
s/Gicon/Icon/g
s/Id/ID/g
s/IDe/Ide/g
s/Rgba/RGBA/g
s/Rgb/RGB/g
s/Uri/URI/g
s/open class TreeIter: TreeIterProtocol/open class TreeIterBase: TreeIterProtocol/
s/setApplicationName(applicationName:/set(applicationName:/
s/static func newWith(with_label label/static func newWith(label/g
s/  public static func newWith(with_label label: UnsafePointer<gchar>) -> ToggleButton/  override public static func newWith(with_label label: UnsafePointer<gchar>) -> ToggleButton/
s/\(public init(font fontname: UnsafePointer<gchar>)\)/ \1/
s/\(public typealias Stock = GtkStock\)/@available(*, deprecated) \1/
s/\(func getCurrentAlpha.. -> UInt16\)/@available(*, deprecated) \1/
s/\(func getPreviousAlpha.. -> UInt16\)/@available(*, deprecated) \1/
s/\(func getCurrent.rgba: RGBAProtocol\)/@available(*, deprecated) \1/
s/\(func getPrevious.rgba: RGBAProtocol\)/@available(*, deprecated) \1/
s/\(func getHasOpacityControl.. -> Bool\)/@available(*, deprecated) \1/
s/\(func getHasPalette.. -> Bool\)/@available(*, deprecated) \1/
s/\(func isAdjusting.. -> Bool\)/@available(*, deprecated) \1/
s/\(func setCurrent.alpha: UInt16\)/@available(*, deprecated) \1/
s/\(func setCurrent.rgba: RGBAProtocol\)/@available(*, deprecated) \1/
s/\(func setHasOpacityControl.hasOpacity\)/@available(*, deprecated) \1/
s/\(func set.hasPalette has_palette:\)/@available(*, deprecated) \1/
s/\(func setPrevious.alpha: UInt16.\)/@available(*, deprecated) \1/
s/\(func setPrevious.rgba: RGBAProtocol.\)/@available(*, deprecated) \1/
s/\(var currentAlpha: UInt16\)/@available(*, deprecated) \1/
s/\(var hasOpacityControl: Bool\)/@available(*, deprecated) \1/
s/\(var hasPalette: Bool\)/@available(*, deprecated) \1/
s/\(var isAdjusting: Bool\)/@available(*, deprecated) \1/
s/\(var previousAlpha: UInt16\)/@available(*, deprecated) \1/
s/\(func getColorSelection.. ->\)/@available(*, deprecated) \1/
s/\(var colorSelection:\)/@available(*, deprecated) \1/
s/\(func getColor.h:\)/@available(*, deprecated) \1/
s/\(func getMetrics.size:\)/@available(*, deprecated) \1/
s/\(func setMetrics.size:\)/@available(*, deprecated) \1/
s/\(func getStyleProperty.widgetType \)/@available(*, deprecated) \1/
s/\(func getValist.widgetType \)/@available(*, deprecated) \1/
s/\(func hasContext.. -> Bool\)/@available(*, deprecated) \1/
s/\(func dragBegin.targets:\)/@available(*, deprecated) \1/
s/\(public func drag.*SetIconStock\)/@available(*, deprecated) \1/
s/\(  func drag.*SetIconStock\)/@available(*, deprecated)\1/
s/\(func getDoubleBuffered.. -> Bool\)/@available(*, deprecated) \1/
s/\(var doubleBuffered: Bool\)/@available(*, deprecated) \1/
s/\(func setColor.h:\)/@available(*, deprecated) \1/
s/\(func resolveFor.context:\)/@available(*, deprecated) \1/
s/\(func getFocusOnClick.. -> Bool\)/@available(*, deprecated) \1/
s/\(func set.focusOnClick focus_on_click: Bool\)/@available(*, deprecated) \1/
s/\(var focusOnClick: Bool\)/@available(*, deprecated) \1/
s/\(public func showURI.screen:\)/@available(*, deprecated) \1/
s/\(  func showURI.screen:\)/@available(*, deprecated)\1/
s/\(public func dragDestSetProxy.proxyWindow\)/@available(*, deprecated) \1/
s/\(func dragDestSetProxy.proxyWindow\)/@available(*, deprecated) \1/
s/\(@available(., deprecated)\) /\1\
    /
s/gtk_gradient_ref/g_object_ref/
s/gtk_gradient_unref/g_object_unref/
s/gtk_icon_set_ref/g_object_ref/
s/gtk_icon_set_unref/g_object_unref/
s/gtk_symbolic_color_ref/g_object_ref/
s/gtk_symbolic_color_unref/g_object_unref/
s/public func resolve_for_context/@available(*, deprecated) public func resolve_for_context/
s/\(renderIcon.*\), size: CInt/\1, size: GtkIconSize/
s/\(icon_source.*\)size: CInt/\1size: GtkIconSize/
s/set(size: CInt)/set(size: GtkIconSize)/
s/icon_size: CInt/icon_size: GtkIconSize/
s/UnsafeMutablePointer<GdkAtom>/UnsafeMutablePointer<GdkAtom?>/
s/-> GdkAtom {/-> GdkAtom! {/
s/-> GCallback {/-> CGLib.GCallback? {/
s/: GdkAtom {/: GdkAtom! {/
s/-> ListRef/-> GLib.ListRef/
s/: ListRef/: GLib.ListRef/
s/-> IconRef/-> GIO.IconRef/
s/: IconRef/: GIO.IconRef/
s/-> FontFaceRef/-> Pango.FontFaceRef/
s/: FontFaceRef/: Pango.FontFaceRef/
s/-> FontMapRef/-> Pango.FontMapRef/
s/: FontMapRef/: Pango.FontMapRef/
s/-> DeviceRef/-> Gdk.DeviceRef/
s/: DeviceRef/: Gdk.DeviceRef/
s/-> EventRef/-> Gdk.EventRef/
s/: EventRef/: Gdk.EventRef/
s/EventMask/Gdk.EventMask/
s/ XCallback/ GCallback/
s/ApplicationProtocol: ApplicationProtocol/ApplicationProtocol: Gio.ApplicationProtocol/
s/Application: Application/Application: Gio.Application/
s/(application other: T)/(gtkApplication other: T)/
s/(mountOperation other: T)/(gtkMountOperation other: T)/
s/: DeviceProtocol/: Gdk.DeviceProtocol/
s/MountOperationProtocol: MountOperationProtocol/MountOperationProtocol: Gio.MountOperationProtocol/
s/MountOperation: MountOperation/MountOperation: Gio.MountOperation/
s/AccessibleProtocol: ObjectProtocol/AccessibleProtocol: Atk.ObjectProtocol/
s/Accessible: Object/Accessible: Atk.Object/
s/Protocol: ObjectProtocol/Protocol: GLibObject.ObjectProtocol/
s/ \(ColorProtocol.*ColorT\)/ Gdk.\1/g
s/: Color\([^A-Z]\)/: Gdk.Color\1/g
s/ \(RectangleProtocol.*RectangleT\)/Gdk.\1/g
s/ \(ContextProtocol.*cr:\)/Cairo.\1/g
s/\(airo.*\) \(Context\)/\1 Cairo.\2/
s/\(airo.*\) \(LayoutProtocol\)/\1 Pango.\2/
s/\(airo.*\) \(WindowProtocol\)/\1 Gdk.\2/
s/\( attach<WindowT:\) \(WindowProtocol>(window: WindowT\)/\1 Gdk.\2/
s/\( set<WindowT:\) \(WindowProtocol>(window: WindowT\)/\1 Gdk.\2/
s/\( set<WindowT:\) \(WindowProtocol>(parentWindow parent_window: WindowT\)/\1 Gdk.\2/
s/\( setBackground<WindowT:\) \(WindowProtocol>(window: WindowT\)/\1 Gdk.\2/
s/\( setClient<WindowT:\) \(WindowProtocol>(window: WindowT\)/\1 Gdk.\2/
s/\( unregister<WindowT:\) \(WindowProtocol>(window: WindowT\)/\1 Gdk.\2/
s/\( getWindowType<WindowT:\) \(WindowProtocol.*: WindowT\)/\1 Gdk.\2/
s/\( dragDestSetProxy<WindowT:\) \(WindowProtocol.*: WindowT\)/\1 Gdk.\2/
s/\( notifyStateChange<WindowT:\) \(WindowProtocol.*: WindowT\)/\1 Gdk.\2/
s/\( register<WindowT:\) \(WindowProtocol.*: WindowT\)/\1 Gdk.\2/
s/\( scrollAnimations<WindowT:\) \(WindowProtocol.*: WindowT\)/\1 Gdk.\2/
s/\(urface.*WindowT:\) \(WindowProtocol.*: WindowT\)/\1 Gdk.\2/
s/\( popupAtRect.*WindowT:\) \(WindowProtocol.*: WindowT\)/\1 Gdk.\2/
s/\(var [a-z]*Window:\) WindowRef/\1 Gdk.WindowRef/
s/ activeWindow: Gdk.WindowRef/ activeWindow: WindowRef/
s/ tooltipWindow: Gdk.WindowRef/ tooltipWindow: WindowRef/
s/\(func get[a-zA-Z]*Window()\) -> WindowRef/\1 -> Gdk.WindowRef/
s/getActiveWindow() -> Gdk.WindowRef/getActiveWindow() -> WindowRef/
s/\(Accessible.*\) \(ObjectRef\)/\1 Atk.\2/
s/\(ango.*\) \(Context\)/\1 Pango.\2/
s/\(rv = \)\(ContextRef(.*cairo.*)\)/\1Cairo.\2/
s/\(rv = \)\(ContextRef(.*pango.*)\)/\1Pango.\2/
s/\(rv = \)\(FontMapRef(.*pango.*)\)/\1Pango.\2/
s/\(rv = \)\(FontMapRef(.*widget.*)\)/\1Pango.\2/
s/\(rv = \)\(FontMapRef(.*font_chooser.*)\)/\1Pango.\2/
s/\(rv = \)\(FontFaceRef(.*font_chooser.*)\)/\1Pango.\2/
s/\(rv = \)\(FontFaceRef(.*get_face.*)\)/\1Pango.\2/
s/\(rv = \)\(DeviceRef(.*device.*)\)/\1Gdk.\2/
s/\(rv = \)\(WindowRef(.*gdk.*)\)/\1Gdk.\2/
s/\(rv = \)\(WindowRef(.*get.*_window.*)\)/\1Gdk.\2/
s/\(rv = \)Gdk.\(WindowRef(.*application_get.*_window.*)\)/\1\2/
s/\(rv = \)Gdk\(WindowRef(.*get_tooltip_window.*)\)/\1Gdk.\2/
s/\(rv = \)\(WindowRef(.*gesture.*)\)/\1Gdk.\2/
s/\(rv = \)\(ObjectRef(.*accessible.*)\)/\1Atk.\2/
s/\(FontMapProtocol.*map: FontMapT\)/Pango.\1/g
s/GObject\./GLibObject./g
s/GLibObject.self/GObject.self/g
s/accessible: ObjectRef/accessible: Atk.ObjectRef/g
s/: Object/: GLibObject.Object/
s/: GLibObject.ObjectT/: ObjectT/
s/: Value/: GLibObject.Value/g
s/: GLibObject.ValueT/: ValueT/g
s/: Cairo.ContextT/: ContextT/g
s/: Pango.ContextT/: ContextT/g
s/ ObjectRef/ GLibObject.ObjectRef/g
s/func setFromIcon(icon: IconProtocol, size: CInt)/func setFrom(icon: IconProtocol, size: GtkIconSize)/
s/func setFromIconName(iconName icon_name: UnsafePointer<gchar>, size: CInt)/func setFrom(iconName icon_name: UnsafePointer<gchar>, size: GtkIconSize)/
s/setFromStock(stockID stock_id: UnsafePointer<gchar>, size: CInt)/setFrom(stock stock_id: UnsafePointer<gchar>, size: GtkIconSize)/
s/setIconFromStock(stockID stock_id: UnsafePointer<gchar>, size: CInt)/setFrom(stock stock_id: UnsafePointer<gchar>, size: GtkIconSize)/
s/\(gtk_menu_set_active.cast.menu_ptr., guint.newValue..\)/\/\/ \1/
s/func setIconFrom(gicon: IconProtocol, size: CInt)/func setIconFrom(gicon: IconProtocol, size: GtkIconSize)/
s/func setFrom(iconName icon_name: UnsafePointer<gchar>, size: CInt)/func setFrom(iconName icon_name: UnsafePointer<gchar>, size: GtkIconSize)/
s/func setIconFrom(iconName icon_name: UnsafePointer<gchar>, size: CInt)/func setIconFrom(iconName icon_name: UnsafePointer<gchar>, size: GtkIconSize)/
s/func setIconFromStock(stock_id: UnsafePointer<gchar>, size: CInt)/func setIconFrom(stock stock_id: UnsafePointer<gchar>, size: GtkIconSize)/
s/func iconSizeGetName(size: CInt)/func iconSizeGetName(size: GtkIconSize)/
s/func iconSizeLookup(size: CInt/func iconSizeLookup(size: GtkIconSize/
s/func iconSizeLookupForSettings(size: CInt/func iconSizeLookupForSettings(size: GtkIconSize/
s/func iconSizeLookupFor(settings: SettingsProtocol, size: CInt/func iconSizeLookupFor(settings: SettingsProtocol, size: GtkIconSize/
s/func iconSizeRegister(alias: UnsafePointer<gchar>, target: CInt/func iconSizeRegister(alias: UnsafePointer<gchar>, target: GtkIconSize/
s/func setFrom(iconSet icon_set: IconSetProtocol, size: CInt/func setFrom(iconSet icon_set: IconSetProtocol, size: GtkIconSize/
s/rv = gtk_clipboard_get_default/rv: UnsafeMutablePointer<GtkClipboard>? = nil \/\/ gtk_clipboard_get_default/
s/gtk_drag_set_icon_gicon/\/\/ gtk_drag_set_icon_gicon/
s/gtk_drag_source_set_icon_gicon/\/\/ gtk_drag_source_set_icon_gicon/
s/init.icon_name: UnsafePointer<gchar>, size: CInt/init(iconName icon_name: UnsafePointer<gchar>, size: GtkIconSize/
s/static func newFromIconName.icon_name: UnsafePointer<gchar>, size: CInt/static func newFrom(iconName icon_name: UnsafePointer<gchar>, size: GtkIconSize/
s/init.icon_name: UnsafePointer<gchar>, size: CInt/init(icon_name: UnsafePointer<gchar>, size: GtkIconSize/
s/static func newFrom.iconName icon_name: UnsafePointer<gchar>, size: CInt/static func newFrom(iconName icon_name: UnsafePointer<gchar>, size: GtkIconSize/
s/init.gicon icon: IconProtocol, size: CInt/init(icon: IconProtocol, size: GtkIconSize/
s/init.icon_name: UnsafePointer<gchar>, size: CInt/init(iconName icon_name: UnsafePointer<gchar>, size: GtkIconSize/
s/init.icon_set: IconSetProtocol, size: CInt/init(iconSet icon_set: IconSetProtocol, size: GtkIconSize/
s/\(.*init.*icon.*size:\)\( *CInt\)/\1 GtkIconSize/
s/\(.*newFrom.*icon.*size:\)\( *CInt\)/\1 GtkIconSize/
s/\(.*init.*stock.*size:\)\( *CInt\)/\1 GtkIconSize/
s/\(.*newFrom.*stock.*size:\)\( *CInt\)/\1 GtkIconSize/
s/\(.*init.*size:\)\( *CInt\)\(.*icon\)/\1 GtkIconSize\3/
s/static let String = GTK_FILE/public static let filename = GTK_FILE/
s/xlib.Window/gulong/g
s/getID() -> Window/getID() -> gulong/
s/var id: Window/var id: gulong/
s/gtk_widget_path_iter_add_qclass/\/\/ gtk_widget_path_iter_add_qclass/
s/CallbackSymbol(callbackName/(callback/
s/FromFile(String_:/From(file String_:/
s/FromResource(resourcePath/From(resource/
s/Layout(layoutStyle/(layoutStyle/
s/FromString(buffer:/From(stringBuffer buffer:/
s/FromString(pspec:/From(pspec:/
s/FromString(type:/From(type:/
s/String(str:/(string str:/
s/Text(str:/(text str:/
s/Label(str:/(label str:/
s/Markup(str:/(markup str:/
s/Mnemonic(str:/(mnemonic str:/
s/Search(str:/Search(_ str:/
s/Chars(nChars /(nChars /
s/Selectable(setting:/(selectable setting:/
s/Use\([A-Z][A-Za-z]*\)(setting:/(use\1 setting:/
s/TrackVisitedLinks(trackLinks /(trackVisitedLinks /
s/init(with_\([^ :]*\) \([^ :]*\):/init(\1 \2:/
s/[gs]etChild\([a-zA-Z_]\)*(child:/get\1(child:/
s/let rv = gtk_clipboard_get_selection.*/let rv: GdkAtom! = nil/
s/(func_:/(_ func_:/
s/,func_:/,_ func_:/
s/: \([A-Za-z.]*Notify[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Func[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Marshal[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Marshaller[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Callback[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Accumulator[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Handler[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Transformer[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Transform[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Transformer =\)/: @escaping \1/g
s/: \([A-Za-z.]*Hook[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Function[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Mapping[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Listener[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*ListenerInit[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Predicate[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Foreach[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Parser[,)]\)/: @escaping \1/g
s/label group: SListT/group: SListT/
s/mnemonic group: SListT\(.*\)label:/group: SListT\1mnemonic label:/
s/radio.*NewWith/newWith/
s/, GObject.TypePluginProtocol//
s/Int\( = cast.gtk_icon.*_size\)/GtkIconSize\1/
s/\(var callback: \)GCallback {/\1CGLib.GCallback {/
s/\(GCallback = cast._ptr.pointee.callback.\)/CGLib.\1/
s/\(func getBaseSize() ->\) Int/\1 GtkIconSize/
s/^\(    var baseSize:\) Int/\1 GtkIconSize/
s/\(func getItemIndex.item: ToolItemProtocol. ->\) Int/\1 GtkIconSize/
s/dialog.dialog_ptr/dialog.ptr.assumingMemoryBound(to: GtkWidget.self)/
s/group\.action_group_ptr/group.gActionGroupPointer/
s/group\?\.action_group_ptr/group?.gActionGroupPointer/
s/\(ui_manager_.*_action_group.*action_group\).gActionGroupPointer/\1.action_group_ptr/
s/\(set_artists.*\)newValue/\1UnsafeMutablePointer(mutating: newValue)/
s/\(set_authors.*\)newValue/\1UnsafeMutablePointer(mutating: newValue)/
s/\(set_documenters.*\)newValue/\1UnsafeMutablePointer(mutating: newValue)/
s/getBaseSize() -> GtkIconSize/getBaseSize() -> Int/
s|\(gtk_menu_set_active(menu_ptr, guint(newValue))\)|// \1|
s|\(gtk_container_class_find.*(\)_ptr|\1ptr.assumingMemoryBound(to: GObjectClass.self)|
s|\(gtk_container_class_list.*(\)_ptr|\1ptr.assumingMemoryBound(to: GObjectClass.self)|
s|\(waitForRichText<\)AtomT: AtomProtocol, \(.*format: \)AtomT|\1\2UnsafeMutablePointer<GdkAtom?>|
s|\(gtk_clipboard_wait_for_rich_text(.*format\)._ptr|\1|
s|\(gtk_menu_item_set_submenu(.*\.\)menu_ptr|\1widget_ptr|
s|\(gtk_menu_shell_append(.*\.\)menu_item_ptr|\1widget_ptr|
s|bgPixmapName: (UnsafeMutablePointer<gchar>!, UnsafeMutablePointer<gchar>!, UnsafeMutablePointer<gchar>!, UnsafeMutablePointer<gchar>!, UnsafeMutablePointer<gchar>!)|bgPixmapName: (UnsafeMutablePointer<gchar>?, UnsafeMutablePointer<gchar>?, UnsafeMutablePointer<gchar>?, UnsafeMutablePointer<gchar>?, UnsafeMutablePointer<gchar>?)|
s|background: (UnsafeMutablePointer<cairo_pattern_t>!, UnsafeMutablePointer<cairo_pattern_t>!, UnsafeMutablePointer<cairo_pattern_t>!, UnsafeMutablePointer<cairo_pattern_t>!, UnsafeMutablePointer<cairo_pattern_t>!)|background: (UnsafeMutablePointer<cairo_pattern_t>?, UnsafeMutablePointer<cairo_pattern_t>?, UnsafeMutablePointer<cairo_pattern_t>?, UnsafeMutablePointer<cairo_pattern_t>?, UnsafeMutablePointer<cairo_pattern_t>?)|
s|\(super.init(gpointer: (rv))\)|\1 ; _ = refSink()|
