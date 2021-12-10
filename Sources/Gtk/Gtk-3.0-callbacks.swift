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

public typealias AccelGroupActivate = GtkAccelGroupActivate


public typealias AccelGroupFindFunc = GtkAccelGroupFindFunc


public typealias AccelMapForeach = GtkAccelMapForeach


/// A function used by `gtk_assistant_set_forward_page_func()` to know which
/// is the next page given a current one. It’s called both for computing the
/// next page when the user presses the “forward” button and for handling
/// the behavior of the “last” button.
public typealias AssistantPageFunc = GtkAssistantPageFunc


/// This is the signature of a function used to connect signals.  It is used
/// by the `gtk_builder_connect_signals()` and `gtk_builder_connect_signals_full()`
/// methods.  It is mainly intended for interpreted language bindings, but
/// could be useful where the programmer wants more control over the signal
/// connection process. Note that this function can only be called once,
/// subsequent calls will do nothing.
public typealias BuilderConnectFunc = GtkBuilderConnectFunc


/// This kind of functions provide Pango markup with detail information for the
/// specified day. Examples for such details are holidays or appointments. The
/// function returns `nil` when no information is available.
public typealias CalendarDetailFunc = GtkCalendarDetailFunc


/// The type of the callback functions used for e.g. iterating over
/// the children of a container, see `gtk_container_foreach()`.
public typealias Callback = GtkCallback


/// The type of the callback functions used for iterating over the
/// cell renderers and their allocated areas inside a `GtkCellArea`,
/// see `gtk_cell_area_foreach_alloc()`.
public typealias CellAllocCallback = GtkCellAllocCallback


/// The type of the callback functions used for iterating over
/// the cell renderers of a `GtkCellArea`, see `gtk_cell_area_foreach()`.
public typealias CellCallback = GtkCellCallback


/// A function which should set the value of `cell_layout`’s cell `renderer(s)`
/// as appropriate.
public typealias CellLayoutDataFunc = GtkCellLayoutDataFunc


/// A function that will be called when the contents of the clipboard are changed
/// or cleared. Once this has called, the `user_data_or_owner` argument
/// will not be used again.
public typealias ClipboardClearFunc = GtkClipboardClearFunc


/// A function that will be called to provide the contents of the selection.
/// If multiple types of data were advertised, the requested type can
/// be determined from the `info` parameter or by checking the target field
/// of `selection_data`. If the data could successfully be converted into
/// then it should be stored into the `selection_data` object by
/// calling `gtk_selection_data_set()` (or related functions such
/// as `gtk_selection_data_set_text()`). If no data is set, the requestor
/// will be informed that the attempt to get the data failed.
public typealias ClipboardGetFunc = GtkClipboardGetFunc


/// A function to be called when the results of `gtk_clipboard_request_image()`
/// are received, or when the request fails.
public typealias ClipboardImageReceivedFunc = GtkClipboardImageReceivedFunc


/// A function to be called when the results of `gtk_clipboard_request_contents()`
/// are received, or when the request fails.
public typealias ClipboardReceivedFunc = GtkClipboardReceivedFunc


/// A function to be called when the results of
/// `gtk_clipboard_request_rich_text()` are received, or when the request
/// fails.
public typealias ClipboardRichTextReceivedFunc = GtkClipboardRichTextReceivedFunc


/// A function to be called when the results of `gtk_clipboard_request_targets()`
/// are received, or when the request fails.
public typealias ClipboardTargetsReceivedFunc = GtkClipboardTargetsReceivedFunc


/// A function to be called when the results of `gtk_clipboard_request_text()`
/// are received, or when the request fails.
public typealias ClipboardTextReceivedFunc = GtkClipboardTextReceivedFunc


/// A function to be called when the results of
/// `gtk_clipboard_request_uris()` are received, or when the request
/// fails.
public typealias ClipboardURIReceivedFunc = GtkClipboardURIReceivedFunc



///
/// **ColorSelectionChangePaletteFunc is deprecated:**
/// This method is deprecated.
public typealias ColorSelectionChangePaletteFunc = GtkColorSelectionChangePaletteFunc



///
/// **ColorSelectionChangePaletteWithScreenFunc is deprecated:**
/// This method is deprecated.
public typealias ColorSelectionChangePaletteWithScreenFunc = GtkColorSelectionChangePaletteWithScreenFunc


/// A function which decides whether the row indicated by `iter` matches
/// a given `key`, and should be displayed as a possible completion for `key`.
/// Note that `key` is normalized and case-folded (see `g_utf8_normalize()`
/// and `g_utf8_casefold()`). If this is not appropriate, match functions
/// have access to the unmodified key via
/// `gtk_entry_get_text (GTK_ENTRY (gtk_entry_completion_get_entry ()))`.
public typealias EntryCompletionMatchFunc = GtkEntryCompletionMatchFunc


/// The type of function that is used with custom filters, see
/// `gtk_file_filter_add_custom()`.
public typealias FileFilterFunc = GtkFileFilterFunc


/// Called for flow boxes that are bound to a `GListModel` with
/// `gtk_flow_box_bind_model()` for each item that gets added to the model.
public typealias FlowBoxCreateWidgetFunc = GtkFlowBoxCreateWidgetFunc


/// A function that will be called whenrever a child changes
/// or is added. It lets you control if the child should be
/// visible or not.
public typealias FlowBoxFilterFunc = GtkFlowBoxFilterFunc


/// A function used by `gtk_flow_box_selected_foreach()`.
/// It will be called on every selected child of the `box`.
public typealias FlowBoxForeachFunc = GtkFlowBoxForeachFunc


/// A function to compare two children to determine which
/// should come first.
public typealias FlowBoxSortFunc = GtkFlowBoxSortFunc


/// The type of function that is used for deciding what fonts get
/// shown in a `GtkFontChooser`. See `gtk_font_chooser_set_filter_func()`.
public typealias FontFilterFunc = GtkFontFilterFunc


/// A function used by `gtk_icon_view_selected_foreach()` to map all
/// selected rows.  It will be called on every selected row in the view.
public typealias IconViewForeachFunc = GtkIconViewForeachFunc


/// Key snooper functions are called before normal event delivery.
/// They can be used to implement custom key event handling.
public typealias KeySnoopFunc = GtkKeySnoopFunc


/// Called for list boxes that are bound to a `GListModel` with
/// `gtk_list_box_bind_model()` for each item that gets added to the model.
/// 
/// Versions of GTK+ prior to 3.18 called `gtk_widget_show_all()` on the rows
/// created by the GtkListBoxCreateWidgetFunc, but this forced all widgets
/// inside the row to be shown, and is no longer the case. Applications should
/// be updated to show the desired row widgets.
public typealias ListBoxCreateWidgetFunc = GtkListBoxCreateWidgetFunc


/// Will be called whenever the row changes or is added and lets you control
/// if the row should be visible or not.
public typealias ListBoxFilterFunc = GtkListBoxFilterFunc


/// A function used by `gtk_list_box_selected_foreach()`.
/// It will be called on every selected child of the `box`.
public typealias ListBoxForeachFunc = GtkListBoxForeachFunc


/// Compare two rows to determine which should be first.
public typealias ListBoxSortFunc = GtkListBoxSortFunc


/// Whenever `row` changes or which row is before `row` changes this
/// is called, which lets you update the header on `row`. You may
/// remove or set a new one via `gtk_list_box_row_set_header()` or
/// just change the state of the current header widget.
public typealias ListBoxUpdateHeaderFunc = GtkListBoxUpdateHeaderFunc


/// A user function supplied when calling `gtk_menu_attach_to_widget()` which
/// will be called when the menu is later detached from the widget.
public typealias MenuDetachFunc = GtkMenuDetachFunc


/// A user function supplied when calling `gtk_menu_popup()` which
/// controls the positioning of the menu when it is displayed.  The
/// function sets the `x` and `y` parameters to the coordinates where the
/// menu is to be drawn.  To make the menu appear on a different
/// monitor than the mouse pointer, `gtk_menu_set_monitor()` must be
/// called.
public typealias MenuPositionFunc = GtkMenuPositionFunc


/// A multihead-aware GTK+ module may have a `gtk_module_display_init()` function
/// with this prototype. GTK+ calls this function for each opened display.
public typealias ModuleDisplayInitFunc = GtkModuleDisplayInitFunc


/// Each GTK+ module must have a function `gtk_module_init()` with this prototype.
/// This function is called after loading the module.
public typealias ModuleInitFunc = GtkModuleInitFunc


/// The type of function that is passed to
/// `gtk_print_run_page_setup_dialog_async()`.
/// 
/// This function will be called when the page setup dialog
/// is dismissed, and also serves as destroy notify for `data`.
public typealias PageSetupDoneFunc = GtkPageSetupDoneFunc


public typealias PrintSettingsFunc = GtkPrintSettingsFunc


public typealias RcPropertyParser = GtkRcPropertyParser


/// The type of function that is used with custom filters,
/// see `gtk_recent_filter_add_custom()`.
public typealias RecentFilterFunc = GtkRecentFilterFunc


public typealias RecentSortFunc = GtkRecentSortFunc


public typealias StylePropertyParser = GtkStylePropertyParser


/// A function that is called to deserialize rich text that has been
/// serialized with `gtk_text_buffer_serialize()`, and insert it at `iter`.
public typealias TextBufferDeserializeFunc = GtkTextBufferDeserializeFunc


/// A function that is called to serialize the content of a text buffer.
/// It must return the serialized form of the content.
public typealias TextBufferSerializeFunc = GtkTextBufferSerializeFunc


public typealias TextCharPredicate = GtkTextCharPredicate


public typealias TextTagTableForeach = GtkTextTagTableForeach


/// Callback type for adding a function to update animations. See `gtk_widget_add_tick_callback()`.
public typealias TickCallback = GtkTickCallback


/// The function used to translate messages in e.g. `GtkIconFactory`
/// and `GtkActionGroup`.
///
/// **TranslateFunc is deprecated:**
/// This method is deprecated.
public typealias TranslateFunc = GtkTranslateFunc


/// A function to set the properties of a cell instead of just using the
/// straight mapping between the cell and the model.  This is useful for
/// customizing the cell renderer.  For example, a function might get an
/// integer from the `tree_model`, and render it to the “text” attribute of
/// “cell” by converting it to its written equivalent.  This is set by
/// calling `gtk_tree_view_column_set_cell_data_func()`
public typealias TreeCellDataFunc = GtkTreeCellDataFunc


public typealias TreeDestroyCountFunc = GtkTreeDestroyCountFunc


/// A GtkTreeIterCompareFunc should return a negative integer, zero, or a positive
/// integer if `a` sorts before `b`, `a` sorts with `b`, or `a` sorts after `b`
/// respectively. If two iters compare as equal, their order in the sorted model
/// is undefined. In order to ensure that the `GtkTreeSortable` behaves as
/// expected, the GtkTreeIterCompareFunc must define a partial order on
/// the model, i.e. it must be reflexive, antisymmetric and transitive.
/// 
/// For example, if `model` is a product catalogue, then a compare function
/// for the “price” column could be one which returns
/// ``price_of(@a)` - `price_of(@b)``.
public typealias TreeIterCompareFunc = GtkTreeIterCompareFunc


/// A function which calculates display values from raw values in the model.
/// It must fill `value` with the display value for the column `column` in the
/// row indicated by `iter`.
/// 
/// Since this function is called for each data access, it’s not a
/// particularly efficient operation.
public typealias TreeModelFilterModifyFunc = GtkTreeModelFilterModifyFunc


/// A function which decides whether the row indicated by `iter` is visible.
public typealias TreeModelFilterVisibleFunc = GtkTreeModelFilterVisibleFunc


/// Type of the callback passed to `gtk_tree_model_foreach()` to
/// iterate over the rows in a tree model.
public typealias TreeModelForeachFunc = GtkTreeModelForeachFunc


/// A function used by `gtk_tree_selection_selected_foreach()` to map all
/// selected rows.  It will be called on every selected row in the view.
public typealias TreeSelectionForeachFunc = GtkTreeSelectionForeachFunc


/// A function used by `gtk_tree_selection_set_select_function()` to filter
/// whether or not a row may be selected.  It is called whenever a row's
/// state might change.  A return value of `true` indicates to `selection`
/// that it is okay to change the selection.
public typealias TreeSelectionFunc = GtkTreeSelectionFunc


/// Function type for determining whether `column` can be dropped in a
/// particular spot (as determined by `prev_column` and `next_column`).  In
/// left to right locales, `prev_column` is on the left of the potential drop
/// spot, and `next_column` is on the right.  In right to left mode, this is
/// reversed.  This function should return `true` if the spot is a valid drop
/// spot.  Please note that returning `true` does not actually indicate that
/// the column drop was made, but is meant only to indicate a possible drop
/// spot to the user.
public typealias TreeViewColumnDropFunc = GtkTreeViewColumnDropFunc


/// Function used for `gtk_tree_view_map_expanded_rows()`.
public typealias TreeViewMappingFunc = GtkTreeViewMappingFunc


/// Function type for determining whether the row pointed to by `iter` should
/// be rendered as a separator. A common way to implement this is to have a
/// boolean column in the model, whose values the `GtkTreeViewRowSeparatorFunc`
/// returns.
public typealias TreeViewRowSeparatorFunc = GtkTreeViewRowSeparatorFunc


/// A function used for checking whether a row in `model` matches
/// a search key string entered by the user. Note the return value
/// is reversed from what you would normally expect, though it
/// has some similarity to `strcmp()` returning 0 for equal strings.
public typealias TreeViewSearchEqualFunc = GtkTreeViewSearchEqualFunc


public typealias TreeViewSearchPositionFunc = GtkTreeViewSearchPositionFunc
