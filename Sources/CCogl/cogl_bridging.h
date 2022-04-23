struct _CoglBitmap {};
struct _CoglFramebuffer {};
struct _CoglMaterial {};
struct _CoglMaterialLayer {};
struct _CoglOffscreen {};
struct _CoglPrimitive {};
struct _CoglTexture {};
struct _CoglRenderer {};
struct _XDisplay {};

typedef struct _CoglRenderer CoglRenderer;

#define COGL_ENABLE_EXPERIMENTAL_API
#define GLIB_DISABLE_DEPRECATION_WARNINGS
#include <sys/types.h>
#include <cogl/cogl.h>
#ifndef __APPLE__
#include <cogl/cogl-xlib.h>
#endif
