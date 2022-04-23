#include <glib.h>
#include <glib-object.h>
#include <gobject/gvaluecollector.h>

/// Return the base address of the data union stored in the `GValue` instance.
/// @param gvalue the value to extract the data pointer for
void *glibobject_value_dataptr(GValue * const gvalue) __attribute__((nonnull)) __attribute__((returns_nonnull));

struct GObjectTypeCValue {
    union _GTypeCValue g_vci_cvalue;
};

union GObjectTypeValueUnion {
    gint        v_int;
    guint       v_uint;
    glong       v_long;
    gulong      v_ulong;
    gint64      v_int64;
    guint64     v_uint64;
    gfloat      v_float;
    gdouble     v_double;
    gpointer    v_pointer;
} value;

struct GObjectTypeValueWrapper {
    union GObjectTypeValueUnion v_union;
};

struct GObjectValue {
    GType g_type;
    union GObjectTypeValueUnion data[2];
};
