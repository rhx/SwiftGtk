struct _cairo_script_interpreter {};
struct _cairo {};
struct _cairo_surface {};
struct _cairo_device {};
struct _cairo_pattern {};
struct _cairo_scaled_font {};
struct _cairo_font_face {};
struct _cairo_font_options {};
struct _cairo_region {};

#define GLIB_DISABLE_DEPRECATION_WARNINGS
#include <sys/types.h>
#include <cairo.h>
#include <cairo-deprecated.h>
#include <cairo-features.h>
#include <cairo-ft.h>
#include <cairo-gobject.h>
#include <cairo-pdf.h>
#include <cairo-ps.h>
#include <cairo-script-interpreter.h>
#include <cairo-script.h>
#include <cairo-svg.h>
#include <cairo-tee.h>
#include <cairo-version.h>
#ifdef __APPLE__
#include <cairo-quartz-image.h>
#include <cairo-quartz.h>
#endif
