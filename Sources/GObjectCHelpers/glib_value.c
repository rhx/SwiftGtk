#include "glib_value.h"

/// Return the base address of the data union stored in the `GValue` instance.
/// @param gvalue the value to extract the data pointer for
void *glibobject_value_dataptr(GValue * const gvalue)
{
    return gvalue->data;
}
