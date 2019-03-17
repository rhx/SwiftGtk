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
s/-> GdkAtom {/-> GdkAtom! {/
s/-> GCallback {/-> CGLib.GCallback? {/
s/: GdkAtom {/: GdkAtom! {/
s/ Callback/ GCallback/
s/ApplicationProtocol: ApplicationProtocol/ApplicationProtocol: Gio.ApplicationProtocol/
s/Application: Application/Application: Gio.Application/
s/: DeviceProtocol/: Gdk.DeviceProtocol/
s/MountOperationProtocol: MountOperationProtocol/MountOperationProtocol: Gio.MountOperationProtocol/
s/MountOperation: MountOperation/MountOperation: Gio.MountOperation/
s/AccessibleProtocol: ObjectProtocol/AccessibleProtocol: Atk.ObjectProtocol/
s/Accessible: Object/Accessible: Atk.Object/
s/Protocol: ObjectProtocol/Protocol: GLibObject.ObjectProtocol/
s/GObject\./GLibObject./g
s/GLibObject.self/GObject.self/g
s/: Object/: GLibObject.Object/
s/: Value/: GLibObject.Value/g
s/: ColorProtocol/: Gdk.ColorProtocol/g
s/: Color\([^A-Z]\)/: Gdk.Color\1/g
s/: Rectangle/: Gdk.Rectangle/g
s/cr: Context/cr: cairo.Context/g
s/map: FontMap/map: Pango.FontMap/g
s/func setFromIcon(icon: IconProtocol, size: CInt)/func setFrom(icon: IconProtocol, size: GtkIconSize)/
s/func setFromIconName(iconName icon_name: UnsafePointer<gchar>, size: CInt)/func setFrom(iconName icon_name: UnsafePointer<gchar>, size: GtkIconSize)/
s/setFromStock(stockID stock_id: UnsafePointer<gchar>, size: CInt)/setFrom(stock stock_id: UnsafePointer<gchar>, size: GtkIconSize)/
s/setIconFromStock(stockID stock_id: UnsafePointer<gchar>, size: CInt)/setFrom(stock stock_id: UnsafePointer<gchar>, size: GtkIconSize)/
s/\(gtk_menu_set_active.cast.ptr., guint.newValue..\)/\/\/ \1/
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
s/convenience init.icon_name: UnsafePointer<gchar>, size: CInt/convenience init(icon_name: UnsafePointer<gchar>, size: GtkIconSize/
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
s/ *label group: SListProtocol/group: SListProtocol/
