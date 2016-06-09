s/^public let STOCK_/\/\/ public let STOCK_/
s/^public let \(.*\): String/public let \1: CChar/
s/\(public typealias Stock = GtkStock\)/@available(*, deprecated) \1/
s/\(public func get_current_alpha.. -> UInt16\)/@available(*, deprecated) \1/
s/\(public func get_previous_alpha.. -> UInt16\)/@available(*, deprecated) \1/
s/\(public func get_current_rgba.rgba: RGBAProtocol. {\)/@available(*, deprecated) \1/
s/\(public func get_previous_rgba.rgba: RGBAProtocol. {\)/@available(*, deprecated) \1/
s/\(public func get_has_opacity_control.. -> Bool\)/@available(*, deprecated) \1/
s/\(public func get_has_palette.. -> Bool\)/@available(*, deprecated) \1/
s/\(public func is_adjusting.. -> Bool\)/@available(*, deprecated) \1/
s/\(public func set_current_alpha(alpha: UInt16.\)/@available(*, deprecated) \1/
s/\(public func set_current_rgba.rgba: RGBAProtocol. {\)/@available(*, deprecated) \1/
s/\(public func set_has_opacity_control.has_opacity: Bool.\)/@available(*, deprecated) \1/
s/\(public func set_has_palette.has_palette: Bool.\)/@available(*, deprecated) \1/
s/\(public func set_previous_alpha.alpha: UInt16.\)/@available(*, deprecated) \1/
s/\(public func set_previous_rgba.rgba: RGBAProtocol.\)/@available(*, deprecated) \1/
s/\(public var currentAlpha: UInt16\)/@available(*, deprecated) \1/
s/\(public var hasOpacityControl: Bool\)/@available(*, deprecated) \1/
s/\(public var hasPalette: Bool\)/@available(*, deprecated) \1/
s/\(public var isAdjusting: Bool\)/@available(*, deprecated) \1/
s/\(public var previousAlpha: UInt16\)/@available(*, deprecated) \1/
s/\(public func get_color_selection.. ->\)/@available(*, deprecated) \1/
s/\(public var colorSelection:\)/@available(*, deprecated) \1/
s/\(public func get_color.h:\)/@available(*, deprecated) \1/
s/\(public func get_metrics.size:\)/@available(*, deprecated) \1/
s/\(public func set_metrics.size:\)/@available(*, deprecated) \1/
s/\(public func get_style_property.widget_type: GType\)/@available(*, deprecated) \1/
s/\(public func get_valist.widget_type: GType\)/@available(*, deprecated) \1/
s/\(public func has_context.. -> Bool\)/@available(*, deprecated) \1/
s/\(public func drag_begin.targets:\)/@available(*, deprecated) \1/
s/\(public func drag.*_set_icon_stock\)/@available(*, deprecated) \1/
s/\(public func get_double_buffered.. -> Bool\)/@available(*, deprecated) \1/
s/\(public var doubleBuffered: Bool\)/@available(*, deprecated) \1/
s/\(public func set_color.h:\)/@available(*, deprecated) \1/
s/gtk_gradient_ref/g_object_ref/
s/gtk_gradient_unref/g_object_unref/
s/gtk_icon_set_ref/g_object_ref/
s/gtk_icon_set_unref/g_object_unref/
s/gtk_symbolic_color_ref/g_object_ref/
s/gtk_symbolic_color_unref/g_object_unref/
s/public func resolve_for_context/@available(*, deprecated) public func resolve_for_context/
s/\(render_icon.*\), size: CInt/\1, size: GtkIconSize/
s/\(icon_source.*\)size: CInt/\1size: GtkIconSize/
s/set_size(size: CInt)/set_size(size: GtkIconSize)/
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
s/public func set_from_gicon(icon: IconProtocol, size: CInt)/public func set_from_gicon(icon: IconProtocol, size: GtkIconSize)/
s/public func set_from_icon_name(icon_name: UnsafePointer<gchar>, size: CInt)/public func set_from_icon_name(icon_name: UnsafePointer<gchar>, size: GtkIconSize)/
s/set_from_stock(stock_id: UnsafePointer<gchar>, size: CInt)/set_from_stock(stock_id: UnsafePointer<gchar>, size: GtkIconSize)/
s/\(gtk_menu_set_active.cast.ptr., guint.newValue..\)/\/\/ \1/
s/public func set_icon_from_gicon(gicon: IconProtocol, size: CInt)/public func set_icon_from_gicon(gicon: IconProtocol, size: GtkIconSize)/
s/public func set_icon_from_icon_name(icon_name: UnsafePointer<gchar>, size: CInt)/public func set_icon_from_icon_name(icon_name: UnsafePointer<gchar>, size: GtkIconSize)/
s/public func set_icon_from_stock(stock_id: UnsafePointer<gchar>, size: CInt)/public func set_icon_from_stock(stock_id: UnsafePointer<gchar>, size: GtkIconSize)/
s/public func icon_size_get_name(size: CInt)/public func icon_size_get_name(size: GtkIconSize)/
s/public func icon_size_lookup(size: CInt/public func icon_size_lookup(size: GtkIconSize/
s/public func icon_size_lookup_for_settings(size: CInt/public func icon_size_lookup_for_settings(size: GtkIconSize/
s/public func icon_size_lookup_for_settings(settings: SettingsProtocol, size: CInt/public func icon_size_lookup_for_settings(settings: SettingsProtocol, size: GtkIconSize/
s/public func icon_size_register_alias(alias: UnsafePointer<gchar>, target: CInt/public func icon_size_register_alias(alias: UnsafePointer<gchar>, target: GtkIconSize/
s/public func set_from_icon_set(icon_set: IconSetProtocol, size: CInt/public func set_from_icon_set(icon_set: IconSetProtocol, size: GtkIconSize/
