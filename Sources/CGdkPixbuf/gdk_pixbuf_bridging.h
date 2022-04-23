struct _GdkPixbuf {};
struct _GdkPixbufSimpleAnim {};
struct _GdkPixbufSimpleAnimClass {};

#define GLIB_DISABLE_DEPRECATION_WARNINGS
#define GDK_PIXBUF_ENABLE_BACKEND
#include <unistd.h>
#include <termios.h>
#include <sys/types.h>
#include <gdk-pixbuf/gdk-pixbuf.h>
#include <gdk-pixbuf/gdk-pixbuf-loader.h>
#include <gdk-pixbuf/gdk-pixbuf-marshal.h>
#include <gdk-pixbuf/gdk-pixbuf-transform.h>
#include <gdk-pixbuf/gdk-pixdata.h>
#include <gdk-pixbuf/gdk-pixbuf-io.h>

/// Private part of the GdkPixbufNonAnim structure
struct _GdkPixbufNonAnim {
    GdkPixbufAnimation parent_instance;
    GdkPixbuf *pixbuf;
};

/// Private class structure for `GdkPixbufNonAnim`
struct _GdkPixbufNonAnimClass {
    GdkPixbufAnimationClass parent_class;
};

/// Private part of the GdkPixbufNonAnim structure
typedef struct _GdkPixbufNonAnim GdkPixbufNonAnim;

/// Private class structure for `GdkPixbufNonAnim`
typedef struct _GdkPixbufNonAnimClass GdkPixbufNonAnimClass;
