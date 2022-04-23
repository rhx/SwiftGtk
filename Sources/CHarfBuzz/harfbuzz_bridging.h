struct gr_face {};
struct gr_font {};
struct gr_feature_ref {};
struct gr_feature_val {};

struct hb_blob_t {};
struct hb_buffer_t {};
struct hb_draw_funcs_t {};
struct hb_face_t {};
struct hb_font_t {};
struct hb_font_funcs_t {};
struct hb_language_impl_t {};
struct hb_link_t {};
struct hb_map_t {};
struct hb_object_t {};
struct hb_set_t {};
struct hb_shape_plan_t {};
struct hb_subset_input_t {};
struct hb_subset_plan_t {};
struct hb_unicode_funcs_t {};

#define GLIB_DISABLE_DEPRECATION_WARNINGS
#include <sys/types.h>
#include <hb-glib.h>
#include <hb-gobject.h>
#if __has_include(<hb-aat.h>)
#include <hb-aat.h>
#endif
#if __has_include(<hb-ot.h>)
#include <hb-ot.h>
#endif
#if __has_include(<hb-graphite2.h>)
#include <hb-graphite2.h>
#endif
#if __has_include(<ft2build.h>)
#include <hb-ft.h>
#else
struct FT_FaceRec_ {};
typedef struct FT_FaceRec_*  FT_Face;

HB_BEGIN_DECLS

HB_EXTERN hb_face_t *
hb_ft_face_create (FT_Face           ft_face,
                   hb_destroy_func_t destroy);
HB_EXTERN hb_face_t *
hb_ft_face_create_cached (FT_Face ft_face);
HB_EXTERN hb_face_t *
hb_ft_face_create_referenced (FT_Face ft_face);
HB_EXTERN hb_font_t *
hb_ft_font_create (FT_Face           ft_face,
                   hb_destroy_func_t destroy);
HB_EXTERN hb_font_t *
hb_ft_font_create_referenced (FT_Face ft_face);

HB_EXTERN FT_Face
hb_ft_font_get_face (hb_font_t *font);

HB_EXTERN FT_Face
hb_ft_font_lock_face (hb_font_t *font);

HB_EXTERN void
hb_ft_font_unlock_face (hb_font_t *font);

HB_EXTERN void
hb_ft_font_set_load_flags (hb_font_t *font, int load_flags);

HB_EXTERN int
hb_ft_font_get_load_flags (hb_font_t *font);

/* Call when size or variations settings on underlying FT_Face change. */
HB_EXTERN void
hb_ft_font_changed (hb_font_t *font);

/* Makes an hb_font_t use FreeType internally to implement font functions.
 * Note: this internally creates an FT_Face.  Use it when you create your
 * hb_face_t using hb_face_create(). */
HB_EXTERN void
hb_ft_font_set_funcs (hb_font_t *font);

HB_END_DECLS

#endif
#ifdef __APPLE__
#include <hb-coretext.h>
#endif
