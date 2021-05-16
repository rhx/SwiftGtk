s/GTK_IM_MODULE_EXTENSION_POINT_NAME/"gtk-im-module"/
s/applicationId/applicationID/g
s/\(public init\!*([_a-z]* op: Unsafe.*Pointer<GtkSnapshot>[?]*)\)/override \1/
s/\(public init<T: SnapshotProtocol>(\)snapshot \(other: T)\)/\1_ \2/
s/\(public init<T: ApplicationProtocol>(\)application \(other: T)\)/\1_ \2/
s/\(public init<T: MountOperationProtocol>(\)mountOperation \(other: T)\)/\1_ \2/
s/loadFrom(\([a-zA-Z0-9]*\):/load(from \1:/
s/loadFrom\(<[^>]*>\)(\([a-zA-Z0-9]*\):/load\1(from \2:/
s/open class TreeIter: TreeIterProtocol/open class TreeIterBase: TreeIterProtocol/
s/\(super.init(gpointer:\) \((rv))\)/\1 gpointer\2/
s/\(gtk_constant_expression_[a-zA-Z_]*(.*\)constant_\(expression_ptr[^a-zA-Z_]\)/\1\2/
s/\(gtk_object_expression_[a-zA-Z_]*(.*\)object_\(expression_ptr[^a-zA-Z_]\)/\1\2/
s/\(gtk_property_expression_[a-zA-Z_]*(.*\)property_\(expression_ptr[^a-zA-Z_]\)/\1\2/
s/\(gtk_property_expression_get_expression(\)ptr/\1expression.expression_ptr/
s/\(gtk_icon_theme_set_.*_path(.*,\) *\(newValue\)/\1 unsafeBitCast(\2, to: UnsafePointer<UnsafePointer<CChar>?>.self)/
s/\(gtk_widget_set_css_classes(.*,\) *\(newValue\)/\1 unsafeBitCast(\2, to: UnsafeMutablePointer<UnsafePointer<CChar>?>.self)/
s/\(set_artists.*\)newValue/\1UnsafeMutablePointer(mutating: newValue)/
s/\(set_authors.*\)newValue/\1UnsafeMutablePointer(mutating: newValue)/
s/\(set_documenters.*\)newValue/\1UnsafeMutablePointer(mutating: newValue)/
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
