s/Cogl.Bool/Bool/g
s/cogl_pango_font_map_set_use_mipmapping.cast.font_map., value./cogl_pango_font_map_set_use_mipmapping(cast(font_map), value ? 1 : 0)/
s/\(@inlinable public init<T: RendererProtocol>(\)renderer \(other: T)\)/\1_ \2/
