import CGLib
import CCairo
import CPango
import CGdkPixbuf
import CGdk
import CGtk
import GLib
import GLibObject
import GIO
import Pango
import Cairo
import PangoCairo
import GdkPixbuf
import Gdk

/// An undefined value. The accessible attribute is either unset, or its
/// value is undefined.
public let ACCESSIBLE_VALUE_UNDEFINED = GTK_ACCESSIBLE_VALUE_UNDEFINED // -1

/// Like `gtk_get_binary_age()`, but from the headers used at
/// application compile time, rather than from the library linked
/// against at application run time.
public let BINARY_AGE = GTK_BINARY_AGE // 1

public let IM_MODULE_EXTENSION_POINT_NAME = "gtk-im-module" // 2

/// Constant to return from a signal handler for the `GtkSpinButton::input`
/// signal in case of conversion failure.
public let INPUT_ERROR = GTK_INPUT_ERROR // -1

/// Like `gtk_get_interface_age()`, but from the headers used at
/// application compile time, rather than from the library linked
/// against at application run time.
public let INTERFACE_AGE = GTK_INTERFACE_AGE // 1

/// The name used for the stock full offset included by `GtkLevelBar`.
public let LEVEL_BAR_OFFSET_FULL = GTK_LEVEL_BAR_OFFSET_FULL // 5

/// The name used for the stock high offset included by `GtkLevelBar`.
public let LEVEL_BAR_OFFSET_HIGH = GTK_LEVEL_BAR_OFFSET_HIGH // 6

/// The name used for the stock low offset included by `GtkLevelBar`.
public let LEVEL_BAR_OFFSET_LOW = GTK_LEVEL_BAR_OFFSET_LOW // 7

/// Like `gtk_get_major_version()`, but from the headers used at
/// application compile time, rather than from the library linked
/// against at application run time.
public let MAJOR_VERSION = GTK_MAJOR_VERSION // 4

/// The maximum length of sequences in compose tables.
public let MAX_COMPOSE_LEN = GTK_MAX_COMPOSE_LEN // 7

public let MEDIA_FILE_EXTENSION_POINT_NAME = GTK_MEDIA_FILE_EXTENSION_POINT_NAME // 10

/// Like `gtk_get_micro_version()`, but from the headers used at
/// application compile time, rather than from the library linked
/// against at application run time.
public let MICRO_VERSION = GTK_MICRO_VERSION // 1

/// Like `gtk_get_minor_version()`, but from the headers used at
/// application compile time, rather than from the library linked
/// against at application run time.
public let MINOR_VERSION = GTK_MINOR_VERSION // 0

/// Name for the A3 paper size.
public let PAPER_NAME_A3 = GTK_PAPER_NAME_A3 // 13

/// Name for the A4 paper size.
public let PAPER_NAME_A4 = GTK_PAPER_NAME_A4 // 14

/// Name for the A5 paper size.
public let PAPER_NAME_A5 = GTK_PAPER_NAME_A5 // 15

/// Name for the B5 paper size.
public let PAPER_NAME_B5 = GTK_PAPER_NAME_B5 // 16

/// Name for the Executive paper size.
public let PAPER_NAME_EXECUTIVE = GTK_PAPER_NAME_EXECUTIVE // 17

/// Name for the Legal paper size.
public let PAPER_NAME_LEGAL = GTK_PAPER_NAME_LEGAL // 18

/// Name for the Letter paper size.
public let PAPER_NAME_LETTER = GTK_PAPER_NAME_LETTER // 19

public let PRINT_SETTINGS_COLLATE = GTK_PRINT_SETTINGS_COLLATE // 20

public let PRINT_SETTINGS_DEFAULT_SOURCE = GTK_PRINT_SETTINGS_DEFAULT_SOURCE // 21

public let PRINT_SETTINGS_DITHER = GTK_PRINT_SETTINGS_DITHER // 22

public let PRINT_SETTINGS_DUPLEX = GTK_PRINT_SETTINGS_DUPLEX // 23

public let PRINT_SETTINGS_FINISHINGS = GTK_PRINT_SETTINGS_FINISHINGS // 24

public let PRINT_SETTINGS_MEDIA_TYPE = GTK_PRINT_SETTINGS_MEDIA_TYPE // 25

public let PRINT_SETTINGS_NUMBER_UP = GTK_PRINT_SETTINGS_NUMBER_UP // 26

public let PRINT_SETTINGS_NUMBER_UP_LAYOUT = GTK_PRINT_SETTINGS_NUMBER_UP_LAYOUT // 27

public let PRINT_SETTINGS_N_COPIES = GTK_PRINT_SETTINGS_N_COPIES // 28

public let PRINT_SETTINGS_ORIENTATION = GTK_PRINT_SETTINGS_ORIENTATION // 29

/// The key used by the “Print to file” printer to store the file
/// name of the output without the path to the directory and the
/// file extension.
public let PRINT_SETTINGS_OUTPUT_BASENAME = GTK_PRINT_SETTINGS_OUTPUT_BASENAME // 30

public let PRINT_SETTINGS_OUTPUT_BIN = GTK_PRINT_SETTINGS_OUTPUT_BIN // 31

/// The key used by the “Print to file” printer to store the
/// directory to which the output should be written.
public let PRINT_SETTINGS_OUTPUT_DIR = GTK_PRINT_SETTINGS_OUTPUT_DIR // 32

/// The key used by the “Print to file” printer to store the format
/// of the output. The supported values are “PS” and “PDF”.
public let PRINT_SETTINGS_OUTPUT_FILE_FORMAT = GTK_PRINT_SETTINGS_OUTPUT_FILE_FORMAT // 33

/// The key used by the “Print to file” printer to store the URI
/// to which the output should be written. GTK itself supports
/// only “file://” URIs.
public let PRINT_SETTINGS_OUTPUT_URI = GTK_PRINT_SETTINGS_OUTPUT_URI // 34

public let PRINT_SETTINGS_PAGE_RANGES = GTK_PRINT_SETTINGS_PAGE_RANGES // 35

public let PRINT_SETTINGS_PAGE_SET = GTK_PRINT_SETTINGS_PAGE_SET // 36

public let PRINT_SETTINGS_PAPER_FORMAT = GTK_PRINT_SETTINGS_PAPER_FORMAT // 37

public let PRINT_SETTINGS_PAPER_HEIGHT = GTK_PRINT_SETTINGS_PAPER_HEIGHT // 38

public let PRINT_SETTINGS_PAPER_WIDTH = GTK_PRINT_SETTINGS_PAPER_WIDTH // 39

public let PRINT_SETTINGS_PRINTER = GTK_PRINT_SETTINGS_PRINTER // 40

public let PRINT_SETTINGS_PRINTER_LPI = GTK_PRINT_SETTINGS_PRINTER_LPI // 41

public let PRINT_SETTINGS_PRINT_PAGES = GTK_PRINT_SETTINGS_PRINT_PAGES // 42

public let PRINT_SETTINGS_QUALITY = GTK_PRINT_SETTINGS_QUALITY // 43

public let PRINT_SETTINGS_RESOLUTION = GTK_PRINT_SETTINGS_RESOLUTION // 44

public let PRINT_SETTINGS_RESOLUTION_X = GTK_PRINT_SETTINGS_RESOLUTION_X // 45

public let PRINT_SETTINGS_RESOLUTION_Y = GTK_PRINT_SETTINGS_RESOLUTION_Y // 46

public let PRINT_SETTINGS_REVERSE = GTK_PRINT_SETTINGS_REVERSE // 47

public let PRINT_SETTINGS_SCALE = GTK_PRINT_SETTINGS_SCALE // 48

public let PRINT_SETTINGS_USE_COLOR = GTK_PRINT_SETTINGS_USE_COLOR // 49

public let PRINT_SETTINGS_WIN32_DRIVER_EXTRA = GTK_PRINT_SETTINGS_WIN32_DRIVER_EXTRA // 50

public let PRINT_SETTINGS_WIN32_DRIVER_VERSION = GTK_PRINT_SETTINGS_WIN32_DRIVER_VERSION // 51

/// Use this priority for functionality related to size allocation.
/// 
/// It is used internally by GTK+ to compute the sizes of widgets.
/// This priority is higher than `GDK_PRIORITY_REDRAW` to avoid
/// resizing a widget which was just redrawn.
public let PRIORITY_RESIZE = 110 // GTK_PRIORITY_RESIZE

/// A priority that can be used when adding a `GtkStyleProvider`
/// for application-specific style information.
public let STYLE_PROVIDER_PRIORITY_APPLICATION = GTK_STYLE_PROVIDER_PRIORITY_APPLICATION // 600

/// The priority used for default style information
/// that is used in the absence of themes.
/// 
/// Note that this is not very useful for providing default
/// styling for custom style classes - themes are likely to
/// override styling provided at this priority with
/// catch-all `* {...}` rules.
public let STYLE_PROVIDER_PRIORITY_FALLBACK = GTK_STYLE_PROVIDER_PRIORITY_FALLBACK // 1

/// The priority used for style information provided
/// via `GtkSettings`.
/// 
/// This priority is higher than `GTK_STYLE_PROVIDER_PRIORITY_THEME`
/// to let settings override themes.
public let STYLE_PROVIDER_PRIORITY_SETTINGS = GTK_STYLE_PROVIDER_PRIORITY_SETTINGS // 400

/// The priority used for style information provided
/// by themes.
public let STYLE_PROVIDER_PRIORITY_THEME = GTK_STYLE_PROVIDER_PRIORITY_THEME // 200

/// The priority used for the style information from
/// `$XDG_CONFIG_HOME/gtk-4.0/gtk.css`.
/// 
/// You should not use priorities higher than this, to
/// give the user the last word.
public let STYLE_PROVIDER_PRIORITY_USER = GTK_STYLE_PROVIDER_PRIORITY_USER // 800

/// The priority at which the text view validates onscreen lines
/// in an idle job in the background.
public let TEXT_VIEW_PRIORITY_VALIDATE = 125 // GTK_TEXT_VIEW_PRIORITY_VALIDATE

/// The GTK_TREE_SORTABLE_DEFAULT_SORT_COLUMN_ID can be used to make a
/// `GtkTreeSortable` use the default sort function.
/// 
/// See also `gtk_tree_sortable_set_sort_column_id()`
public let TREE_SORTABLE_DEFAULT_SORT_COLUMN_ID = GTK_TREE_SORTABLE_DEFAULT_SORT_COLUMN_ID // -1

/// The GTK_TREE_SORTABLE_UNSORTED_SORT_COLUMN_ID can be used to make a
/// `GtkTreeSortable` use no sorting.
/// 
/// See also `gtk_tree_sortable_set_sort_column_id()`
public let TREE_SORTABLE_UNSORTED_SORT_COLUMN_ID = GTK_TREE_SORTABLE_UNSORTED_SORT_COLUMN_ID // -2
