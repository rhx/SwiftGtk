s/FontOptions<ContextT: ContextProtocol/FontOptions<ContextT: Pango.ContextProtocol/
s/font_options(context._ptr/font_options(context.context_ptr/
s/Resolution<ContextT: ContextProtocol/Resolution<ContextT: Pango.ContextProtocol/
s/resolution(context._ptr/resolution(context.context_ptr/
s/Renderer<ContextT: ContextProtocol>/Renderer<ContextT: Pango.ContextProtocol>/
s/renderer(context._ptr/renderer(context.context_ptr/
s/ContextT: ContextProtocol>(context:/ContextT: Pango.ContextProtocol>(context:/
s/updateContext<ContextT: Cairo.ContextProtocol, ContextT:.*)/updateContext<C: Cairo.ContextProtocol, P: Pango.ContextProtocol>(cr: C, context: P)/
s/cr._ptr, context._ptr/cr._ptr, context.context_ptr/
s/Layout<ContextT: ContextProtocol/Layout<ContextT: Cairo.ContextProtocol/
s/Path<ContextT: ContextProtocol/Path<ContextT: Cairo.ContextProtocol/
s/GlyphString<ContextT: ContextProtocol/GlyphString<ContextT: Cairo.ContextProtocol/
s/GlyphStringProtocol, ContextT: ContextProtocol/GlyphStringProtocol, ContextT: Cairo.ContextProtocol/
s/GlyphItem<ContextT: ContextProtocol/GlyphItem<ContextT: Cairo.ContextProtocol/
s/createContext<ContextT: ContextProtocol>(cr: ContextT) -> ContextRef/createContext<ContextT: Cairo.ContextProtocol>(cr: ContextT) -> Pango.ContextRef/
s/createContext() -> ContextRef/createContext() -> Pango.ContextRef/
s/createContext<ContextT: Cairo.ContextProtocol>(cr: ContextT) -> ContextRef/createContext<ContextT: Cairo.ContextProtocol>(cr: ContextT) -> Pango.ContextRef/
s/: ContextProtocol, GlyphStringT:/: Cairo.ContextProtocol, GlyphStringT:/
s/\(ContextT: \)\(ContextProtocol.*(cr: ContextT\)/\1Cairo.\2/
s/ContextRef(gconstpointer: gconstpointer(pango_cairo_create_context/Pango.ContextRef(gconstpointer: gconstpointer(pango_cairo_create_context/
s/ContextRef(gconstpointer: gconstpointer(pango_cairo_font_map_create_context/Pango.ContextRef(gconstpointer: gconstpointer(pango_cairo_font_map_create_context/
s/GlyphItemProtocol, ContextT: ContextProtocol/GlyphItemProtocol, ContextT: Cairo.ContextProtocol/
s/cr: ContextProtocol/cr: Cairo.ContextProtocol/g
s/FontProtocol: FontProtocol/FontProtocol: Pango.FontProtocol/
s/Font: Font/Font: Pango.Font/
s/FontMap: FontMap/FontMap: Pango.FontMap/
s/FontMapProtocol: FontMapProtocol/FontMapProtocol: Pango.FontMapProtocol/
s/pango_cairo_font_map_new_for_font_type(cast(fonttype.ptr))/pango_cairo_font_map_new_for_font_type(fonttype.ptr.pointee)/
s/\(public init.*\)(font other: T)/\1(pangoCairoFont other: T)/
s/\(public init.*\)(fontMap other: T)/\1(pangoCairoFontMap other: T)/
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
