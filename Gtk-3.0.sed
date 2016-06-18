s/^public let STOCK_/\/\/ public let STOCK_/
s/^public let \(.*\): String/public let \1: CChar/
s/Id/ID/g
s/IDe/Ide/g
s/Rgba/RGBA/g
s/Rgb/RGB/g
s/Gicon/Icon/g
s/setApplicationName(applicationName:/set(applicationName:/
s/public static func newWith(with_label label/public static func newWith(label/g
s/  public static func newWith(with_label label: UnsafePointer<gchar>) -> ToggleButton/  override public static func newWith(with_label label: UnsafePointer<gchar>) -> ToggleButton/
s/\(public typealias Stock = GtkStock\)/@available(*, deprecated) \1/
s/\(public func getCurrentAlpha.. -> UInt16\)/@available(*, deprecated) \1/
s/\(public func getPreviousAlpha.. -> UInt16\)/@available(*, deprecated) \1/
s/\(public func getCurrentRGBA.rgba: RGBAProtocol. {\)/@available(*, deprecated) \1/
s/\(public func getPreviousRGBA.rgba: RGBAProtocol. {\)/@available(*, deprecated) \1/
s/\(public func getHasOpacityControl.. -> Bool\)/@available(*, deprecated) \1/
s/\(public func getHasPalette.. -> Bool\)/@available(*, deprecated) \1/
s/\(public func isAdjusting.. -> Bool\)/@available(*, deprecated) \1/
s/\(public func setCurrentAlpha(alpha: UInt16.\)/@available(*, deprecated) \1/
s/\(public func setCurrentRGBA.rgba: RGBAProtocol. {\)/@available(*, deprecated) \1/
s/\(public func setHasOpacityControl.has_opacity: Bool.\)/@available(*, deprecated) \1/
s/\(public func setHasPalette.has_palette: Bool.\)/@available(*, deprecated) \1/
s/\(public func setPreviousAlpha.alpha: UInt16.\)/@available(*, deprecated) \1/
s/\(public func setPreviousRGBA.rgba: RGBAProtocol.\)/@available(*, deprecated) \1/
s/\(public var currentAlpha: UInt16\)/@available(*, deprecated) \1/
s/\(public var hasOpacityControl: Bool\)/@available(*, deprecated) \1/
s/\(public var hasPalette: Bool\)/@available(*, deprecated) \1/
s/\(public var isAdjusting: Bool\)/@available(*, deprecated) \1/
s/\(public var previousAlpha: UInt16\)/@available(*, deprecated) \1/
s/\(public func getColorSelection.. ->\)/@available(*, deprecated) \1/
s/\(public var colorSelection:\)/@available(*, deprecated) \1/
s/\(public func getColor.h:\)/@available(*, deprecated) \1/
s/\(public func getMetrics.size:\)/@available(*, deprecated) \1/
s/\(public func setMetrics.size:\)/@available(*, deprecated) \1/
s/\(public func getStyleProperty.widget_type: GType\)/@available(*, deprecated) \1/
s/\(public func getValist.widget_type: GType\)/@available(*, deprecated) \1/
s/\(public func hasContext.. -> Bool\)/@available(*, deprecated) \1/
s/\(public func dragBegin.targets:\)/@available(*, deprecated) \1/
s/\(public func drag.*_set_icon_stock\)/@available(*, deprecated) \1/
s/\(public func getDoubleBuffered.. -> Bool\)/@available(*, deprecated) \1/
s/\(public var doubleBuffered: Bool\)/@available(*, deprecated) \1/
s/\(public func setColor.h:\)/@available(*, deprecated) \1/
s/gtk_gradient_ref/g_object_ref/
s/gtk_gradient_unref/g_object_unref/
s/gtk_icon_set_ref/g_object_ref/
s/gtk_icon_set_unref/g_object_unref/
s/gtk_symbolic_color_ref/g_object_ref/
s/gtk_symbolic_color_unref/g_object_unref/
s/public func resolve_for_context/@available(*, deprecated) public func resolve_for_context/
s/\(renderIcon.*\), size: CInt/\1, size: GtkIconSize/
s/\(icon_source.*\)size: CInt/\1size: GtkIconSize/
s/setSize(size: CInt)/set_size(size: GtkIconSize)/
s/icon_size: CInt/icon_size: GtkIconSize/
s/-> GdkAtom {/-> GdkAtom! {/
s/-> GCallback {/-> CGLib.GCallback? {/
s/: GdkAtom {/: GdkAtom! {/
s/ Callback/ GCallback/
s/ApplicationProtocol: ApplicationProtocol/ApplicationProtocol: Gio.ApplicationProtocol/
s/Application: Application/Application: Gio.Application/
s/MountOperationProtocol: MountOperationProtocol/MountOperationProtocol: Gio.MountOperationProtocol/
s/MountOperation: MountOperation/MountOperation: Gio.MountOperation/
s/AccessibleProtocol: ObjectProtocol/AccessibleProtocol: Atk.ObjectProtocol/
s/Accessible: Object/Accessible: Atk.Object/
s/Protocol: ObjectProtocol/Protocol: GObject.ObjectProtocol/
s/: Object/: GObject.Object/
s/: Value/: GObject.Value/g
s/: ColorProtocol/: Gdk.ColorProtocol/g
s/: Color\([^A-Z]\)/: Gdk.Color\1/g
s/: Rectangle/: Gdk.Rectangle/g
s/cr: Context/cr: cairo.Context/g
s/map: FontMap/map: Pango.FontMap/g
s/public func setFromIcon(icon: IconProtocol, size: CInt)/public func setFrom(icon: IconProtocol, size: GtkIconSize)/
s/public func setFromIconName(iconName icon_name: UnsafePointer<gchar>, size: CInt)/public func setFrom(iconName icon_name: UnsafePointer<gchar>, size: GtkIconSize)/
s/setFromStock(stockID stock_id: UnsafePointer<gchar>, size: CInt)/setFrom(stock stock_id: UnsafePointer<gchar>, size: GtkIconSize)/
s/setIconFromStock(stockID stock_id: UnsafePointer<gchar>, size: CInt)/setFrom(stock stock_id: UnsafePointer<gchar>, size: GtkIconSize)/
s/\(gtk_menu_set_active.cast.ptr., guint.newValue..\)/\/\/ \1/
s/public func setIconFromIcon(gicon: IconProtocol, size: CInt)/public func setIconFrom(gicon: IconProtocol, size: GtkIconSize)/
s/public func setFrom(iconName icon_name: UnsafePointer<gchar>, size: CInt)/public func setFrom(iconName icon_name: UnsafePointer<gchar>, size: GtkIconSize)/
s/public func setIconFrom(iconName icon_name: UnsafePointer<gchar>, size: CInt)/public func setIconFrom(iconName icon_name: UnsafePointer<gchar>, size: GtkIconSize)/
s/public func setIconFromStock(stock_id: UnsafePointer<gchar>, size: CInt)/public func setIconFrom(stock stock_id: UnsafePointer<gchar>, size: GtkIconSize)/
s/public func iconSizeGetName(size: CInt)/public func iconSizeGetName(size: GtkIconSize)/
s/public func iconSizeLookup(size: CInt/public func iconSizeLookup(size: GtkIconSize/
s/public func iconSizeLookupForSettings(size: CInt/public func iconSizeLookupForSettings(size: GtkIconSize/
s/public func iconSizeLookupForSettings(settings: SettingsProtocol, size: CInt/public func iconSizeLookupFor(settings: SettingsProtocol, size: GtkIconSize/
s/public func iconSizeRegisterAlias(alias: UnsafePointer<gchar>, target: CInt/public func iconSizeRegister(alias: UnsafePointer<gchar>, target: GtkIconSize/
s/public func setFrom(iconSet icon_set: IconSetProtocol, size: CInt/public func setFrom(iconSet icon_set: IconSetProtocol, size: GtkIconSize/
s/rv = gtk_clipboard_get_default/rv: UnsafeMutablePointer<GtkClipboard>? = nil \/\/ gtk_clipboard_get_default/
s/gtk_drag_set_icon_gicon/\/\/ gtk_drag_set_icon_gicon/
s/gtk_drag_source_set_icon_gicon/\/\/ gtk_drag_source_set_icon_gicon/
s/public init.icon_name: UnsafePointer<gchar>, size: CInt/public init(iconName icon_name: UnsafePointer<gchar>, size: GtkIconSize/
s/public static func newFromIconName.icon_name: UnsafePointer<gchar>, size: CInt/public static func newFrom(iconName icon_name: UnsafePointer<gchar>, size: GtkIconSize/
s/public convenience init.icon_name: UnsafePointer<gchar>, size: CInt/public convenience init(icon_name: UnsafePointer<gchar>, size: GtkIconSize/
s/public static func newFrom.iconName icon_name: UnsafePointer<gchar>, size: CInt/public static func newFrom(iconName icon_name: UnsafePointer<gchar>, size: GtkIconSize/
s/public init.gicon icon: IconProtocol, size: CInt/public init(icon: IconProtocol, size: GtkIconSize/
s/public init.icon_name: UnsafePointer<gchar>, size: CInt/public init(iconName icon_name: UnsafePointer<gchar>, size: GtkIconSize/
s/public init.icon_set: IconSetProtocol, size: CInt/public init(iconSet icon_set: IconSetProtocol, size: GtkIconSize/
s/\(public .*init.*icon.*size:\)\( *CInt\)/\1 GtkIconSize/
s/\(public .*newFrom.*icon.*size:\)\( *CInt\)/\1 GtkIconSize/
s/\(public .*init.*stock.*size:\)\( *CInt\)/\1 GtkIconSize/
s/\(public .*newFrom.*stock.*size:\)\( *CInt\)/\1 GtkIconSize/
s/\(public .*init.*size:\)\( *CInt\)\(.*icon\)/\1 GtkIconSize\3/
s/public static let String = GTK_FILE/public static let filename = GTK_FILE/
s/xlib.Window/gulong/g
s/get_id() -> Window/get_id() -> gulong/
s/public var id: Window/public var id: gulong/
