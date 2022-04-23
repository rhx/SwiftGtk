struct _PangoAttrIterator {};
struct _PangoAttrList {};
struct _PangoContext {};
struct _PangoContextClass {};
struct _PangoCoverage {};
struct _PangoFontDescription {};
struct _PangoFontsetSimple {};
struct _PangoFontsetSimpleClass {};
struct _PangoLanguage {};
struct _PangoLayout {};
struct _PangoLayoutClass {};
struct _PangoLayoutIter {};
struct _PangoMap {};
struct _PangoMapEntry {};
struct _PangoRendererPrivate {};
struct _PangoScriptIter {};
struct _PangoTabArray {};

struct _PangoCairoCoreTextFont {};
struct _PangoCairoCoreTextFontClass {};
struct _PangoCairoCoreTextFontMap {};
struct _PangoCairoFcFontMap {};
struct _PangoCairoFont {};
struct _PangoCairoFontMap {};

#define PANGO_ENABLE_BACKEND
#define PANGO_ENABLE_ENGINE
#define GLIB_DISABLE_DEPRECATION_WARNINGS
#include <sys/types.h>
#include <pango/pango.h>
#include <pango/pango-attributes.h>
#include <pango/pango-bidi-type.h>
#include <pango/pango-break.h>
#include <pango/pango-context.h>
#include <pango/pango-coverage.h>
#include <pango/pango-engine.h>
#include <pango/pango-enum-types.h>
#include <pango/pango-features.h>
#include <pango/pango-font.h>
#include <pango/pango-fontmap.h>
#include <pango/pango-fontset.h>
#include <pango/pango-glyph-item.h>
#include <pango/pango-glyph.h>
#include <pango/pango-gravity.h>
#include <pango/pango-item.h>
#include <pango/pango-language.h>
#include <pango/pango-layout.h>
#include <pango/pango-matrix.h>
#include <pango/pango-modules.h>
#if __has_include(<ft2build.h>)
#include <pango/pango-ot.h>
#else
typedef struct FT_FaceRec_{} *FT_Face;
typedef struct  FT_Bitmap_
{
    unsigned int    rows;
    unsigned int    width;
    int             pitch;
    unsigned char*  buffer;
    unsigned short  num_grays;
    unsigned char   pixel_mode;
    unsigned char   palette_mode;
    void*           palette;
} FT_Bitmap;
#endif
typedef struct _PangoCairoFcFontMap PangoCairoFcFontMap;
typedef struct _FcPattern {} FcPattern;
typedef struct _FcCharSet FcCharSet;
#define __PANGO_FC_FONT_H__
G_BEGIN_DECLS
#define PANGO_TYPE_FC_FONT              (pango_fc_font_get_type ())
#define PANGO_FC_FONT(object)           (G_TYPE_CHECK_INSTANCE_CAST ((object), PANGO_TYPE_FC_FONT, PangoFcFont))
#define PANGO_IS_FC_FONT(object)        (G_TYPE_CHECK_INSTANCE_TYPE ((object), PANGO_TYPE_FC_FONT))

#define PANGO_RENDER_TYPE_FC "PangoRenderFc"

#define PANGO_FC_FONT_CLASS(klass)      (G_TYPE_CHECK_CLASS_CAST ((klass), PANGO_TYPE_FC_FONT, PangoFcFontClass))
#define PANGO_IS_FC_FONT_CLASS(klass)   (G_TYPE_CHECK_CLASS_TYPE ((klass), PANGO_TYPE_FC_FONT))
#define PANGO_FC_FONT_GET_CLASS(obj)    (G_TYPE_INSTANCE_GET_CLASS ((obj), PANGO_TYPE_FC_FONT, PangoFcFontClass))

typedef struct _PangoFcFont      PangoFcFont;
typedef struct _PangoFcFontClass PangoFcFontClass;

PANGO_AVAILABLE_IN_1_4
gboolean   pango_fc_font_has_char          (PangoFcFont      *font,
					    gunichar          wc);
PANGO_AVAILABLE_IN_1_4
guint      pango_fc_font_get_glyph         (PangoFcFont      *font,
					    gunichar          wc);
#ifndef PANGO_DISABLE_DEPRECATED
PANGO_DEPRECATED_FOR(PANGO_GET_UNKNOWN_GLYPH)
PangoGlyph pango_fc_font_get_unknown_glyph (PangoFcFont      *font,
					    gunichar          wc);
PANGO_DEPRECATED_IN_1_32
void       pango_fc_font_kern_glyphs       (PangoFcFont      *font,
					    PangoGlyphString *glyphs);

PANGO_AVAILABLE_IN_ALL
GType      pango_fc_font_get_type (void) G_GNUC_CONST;

PANGO_AVAILABLE_IN_1_4
FT_Face    pango_fc_font_lock_face         (PangoFcFont      *font);
PANGO_AVAILABLE_IN_1_4
void       pango_fc_font_unlock_face       (PangoFcFont      *font);

G_END_DECLS
#include <pango/pango-ot.h>
#endif
#include <pango/pango-renderer.h>
#include <pango/pango-script.h>
#include <pango/pango-tabs.h>
#include <pango/pango-types.h>
#include <pango/pango-utils.h>
#if __has_include(<cairo.h>)
#include <pango/pangocairo.h>
#else
#include <cairo/cairo.h>
#define __PANGOCAIRO_H__
G_BEGIN_DECLS
typedef struct _PangoCairoFont      PangoCairoFont;
#define PANGO_TYPE_CAIRO_FONT       (pango_cairo_font_get_type ())
#define PANGO_CAIRO_FONT(object)    (G_TYPE_CHECK_INSTANCE_CAST ((object), PANGO_TYPE_CAIRO_FONT, PangoCairoFont))
#define PANGO_IS_CAIRO_FONT(object) (G_TYPE_CHECK_INSTANCE_TYPE ((object), PANGO_TYPE_CAIRO_FONT))
typedef struct _PangoCairoFontMap        PangoCairoFontMap;
#define PANGO_TYPE_CAIRO_FONT_MAP       (pango_cairo_font_map_get_type ())
#define PANGO_CAIRO_FONT_MAP(object)    (G_TYPE_CHECK_INSTANCE_CAST ((object), PANGO_TYPE_CAIRO_FONT_MAP, PangoCairoFontMap))
#define PANGO_IS_CAIRO_FONT_MAP(object) (G_TYPE_CHECK_INSTANCE_TYPE ((object), PANGO_TYPE_CAIRO_FONT_MAP))
typedef void (* PangoCairoShapeRendererFunc) (cairo_t        *cr,
					      PangoAttrShape *attr,
					      gboolean        do_path,
					      gpointer        data);
PANGO_AVAILABLE_IN_1_10
GType         pango_cairo_font_map_get_type          (void) G_GNUC_CONST;

PANGO_AVAILABLE_IN_1_10
PangoFontMap *pango_cairo_font_map_new               (void);
PANGO_AVAILABLE_IN_1_18
PangoFontMap *pango_cairo_font_map_new_for_font_type (cairo_font_type_t fonttype);
PANGO_AVAILABLE_IN_1_10
PangoFontMap *pango_cairo_font_map_get_default       (void);
PANGO_AVAILABLE_IN_1_22
void          pango_cairo_font_map_set_default       (PangoCairoFontMap *fontmap);
PANGO_AVAILABLE_IN_1_18
cairo_font_type_t pango_cairo_font_map_get_font_type (PangoCairoFontMap *fontmap);

PANGO_AVAILABLE_IN_1_10
void          pango_cairo_font_map_set_resolution (PangoCairoFontMap *fontmap,
						   double             dpi);
PANGO_AVAILABLE_IN_1_10
double        pango_cairo_font_map_get_resolution (PangoCairoFontMap *fontmap);
PANGO_DEPRECATED_IN_1_22_FOR(pango_font_map_create_context)
PangoContext *pango_cairo_font_map_create_context (PangoCairoFontMap *fontmap);

PANGO_AVAILABLE_IN_1_18
GType         pango_cairo_font_get_type               (void) G_GNUC_CONST;

PANGO_AVAILABLE_IN_1_18
cairo_scaled_font_t *pango_cairo_font_get_scaled_font (PangoCairoFont *font);

/* Update a Pango context for the current state of a cairo context
 */
PANGO_AVAILABLE_IN_1_10
void         pango_cairo_update_context (cairo_t      *cr,
					 PangoContext *context);

PANGO_AVAILABLE_IN_1_10
void                        pango_cairo_context_set_font_options (PangoContext               *context,
								  const cairo_font_options_t *options);
PANGO_AVAILABLE_IN_1_10
const cairo_font_options_t *pango_cairo_context_get_font_options (PangoContext               *context);

PANGO_AVAILABLE_IN_1_10
void               pango_cairo_context_set_resolution     (PangoContext       *context,
							   double              dpi);
PANGO_AVAILABLE_IN_1_10
double             pango_cairo_context_get_resolution     (PangoContext       *context);

PANGO_AVAILABLE_IN_1_18
void                        pango_cairo_context_set_shape_renderer (PangoContext                *context,
								    PangoCairoShapeRendererFunc  func,
								    gpointer                     data,
								    GDestroyNotify               dnotify);
PANGO_AVAILABLE_IN_1_18
PangoCairoShapeRendererFunc pango_cairo_context_get_shape_renderer (PangoContext                *context,
								    gpointer                    *data);

PANGO_AVAILABLE_IN_1_22
PangoContext *pango_cairo_create_context (cairo_t   *cr);
PANGO_AVAILABLE_IN_ALL
PangoLayout *pango_cairo_create_layout (cairo_t     *cr);
PANGO_AVAILABLE_IN_1_10
void         pango_cairo_update_layout (cairo_t     *cr,
					PangoLayout *layout);

PANGO_AVAILABLE_IN_1_10
void pango_cairo_show_glyph_string (cairo_t          *cr,
				    PangoFont        *font,
				    PangoGlyphString *glyphs);
PANGO_AVAILABLE_IN_1_22
void pango_cairo_show_glyph_item   (cairo_t          *cr,
				    const char       *text,
				    PangoGlyphItem   *glyph_item);
PANGO_AVAILABLE_IN_1_10
void pango_cairo_show_layout_line  (cairo_t          *cr,
				    PangoLayoutLine  *line);
PANGO_AVAILABLE_IN_1_10
void pango_cairo_show_layout       (cairo_t          *cr,
				    PangoLayout      *layout);

PANGO_AVAILABLE_IN_1_14
void pango_cairo_show_error_underline (cairo_t       *cr,
				       double         x,
				       double         y,
				       double         width,
				       double         height);

PANGO_AVAILABLE_IN_1_10
void pango_cairo_glyph_string_path (cairo_t          *cr,
				    PangoFont        *font,
				    PangoGlyphString *glyphs);
PANGO_AVAILABLE_IN_1_10
void pango_cairo_layout_line_path  (cairo_t          *cr,
				    PangoLayoutLine  *line);
PANGO_AVAILABLE_IN_1_10
void pango_cairo_layout_path       (cairo_t          *cr,
				    PangoLayout      *layout);

PANGO_AVAILABLE_IN_1_14
void pango_cairo_error_underline_path (cairo_t       *cr,
				       double         x,
				       double         y,
				       double         width,
				       double         height);
G_END_DECLS
#endif
#include <pango/pangofc-decoder.h>
#include <pango/pangofc-font.h>
#include <pango/pangofc-fontmap.h>
#include <pango/pangoft2.h>
#if PANGO_VERSION_MAJOR == 1 && PANGO_VERSION_MINOR < 44
#  ifdef __APPLE__
#    include <pango/pangocoretext.h>
#  endif
#endif

struct _PangoScriptForLang {
    char lang[6];
    PangoScript scripts[3];
};
typedef struct _PangoScriptForLang PangoScriptForLang;
