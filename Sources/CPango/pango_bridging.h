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
#include <pango/pango-ot.h>
#include <pango/pango-renderer.h>
#include <pango/pango-script.h>
#include <pango/pango-tabs.h>
#include <pango/pango-types.h>
#include <pango/pango-utils.h>
#include <pango/pangocairo.h>
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
