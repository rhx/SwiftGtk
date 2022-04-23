s/gdk_pixbuf_ref/g_object_ref/
s/gdk_pixbuf_unref/g_object_unref/
s/gdk_pixbuf_animation_ref/g_object_ref/
s/gdk_pixbuf_animation_unref/g_object_unref/
s/\(public init.(.* op:.*<GdkPixbufSimpleAnimIter>.*\)/override \1/
s/\(public init(.* op:.*<GdkPixbufSimpleAnimIter>.*\)/override \1/
s/: \([A-Za-z.]*Notify[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Func[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Marshal[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Marshaller[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Callback[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Accumulator[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*SignalHandler[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Transformer[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Transform[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Transformer =\)/: @escaping \1/g
s/: \([A-Za-z.]*Hook[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Function[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Mapping[,)]\)/: @escaping \1/g
s/\(public.* init.inline data_length:\)/@available(*, deprecated) \1/
s/\(public static func newFrom.inline data_length:\)/@available(*, deprecated) \1/
s/\(    \)\(init.inline data_length:\)/\1@available(*, deprecated) \2/
s/\(    \)\(static func newFrom.inline data_length:\)/\1@available(*, deprecated) \2/
s/data: UnsafeMutablePointer<UnsafeMutablePointer<CChar>/data: UnsafeMutablePointer<UnsafePointer<CChar>/
s/GModule.Module/Module/g
