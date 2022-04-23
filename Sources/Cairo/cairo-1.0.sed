s/func imageSurfaceCreate()/func imageSurfaceCreate(format: cairo_format_t, width: Int, height: Int) -> Surface/
s/cairo_image_surface_create()/return Surface(cairo_image_surface_create(format, CInt(width), CInt(height)))/
s/.. no reference counting for cairo_t, cannot \([unref]*\).*/\1()/
s/.. no reference counting for cairo_scaled_font_t, cannot \([unref]*\).*/\1()/
s/.. no reference counting for cairo_surface_t, cannot unref.*/cairo_surface_destroy(_ptr)/
s/invalidDsc/invalidDSC/g
