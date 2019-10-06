import CGLib
import CCairo
import CPango
import CGdkPixbuf
import CGdk
import CAtk
import CGtk
import GLib
import GLibObject
import GIO
import Pango
import Cairo
import PangoCairo
import GdkPixbuf
import Gdk
import Atk

/// A `GtkAllocation`-struct of a widget represents region
/// which has been allocated to the widget by its parent. It is a subregion
/// of its parents allocation. See
/// [GtkWidget’s geometry management section](#geometry-management) for
/// more information.
public typealias Allocation = GtkAllocation

@available(*, deprecated) public typealias Stock = GtkStock
