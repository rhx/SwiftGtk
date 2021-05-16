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

/// Type of callback used to calculate the next page in a `GtkAssistant`.
/// 
/// It’s called both for computing the next page when the user presses the
/// “forward” button and for handling the behavior of the “last” button.
/// 
/// See [method`Gtk.Assistant.set_forward_page_func`].
public typealias AssistantPageFunc = GtkAssistantPageFunc

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

/// A function to be used by `GtkCustomLayout` to allocate a widget.
public typealias CustomAllocateFunc = GtkCustomAllocateFunc

/// User function that is called to determine if the `item` should be matched.
/// 
/// If the filter matches the item, this function must return `true`. If the
/// item should be filtered out, `false` must be returned.
public typealias CustomFilterFunc = GtkCustomFilterFunc

/// A function to be used by `GtkCustomLayout` to measure a widget.
public typealias CustomMeasureFunc = GtkCustomMeasureFunc

/// Queries a widget for its preferred size request mode.
public typealias CustomRequestModeFunc = GtkCustomRequestModeFunc

/// Whenever `drawing_area` needs to redraw, this function will be called.
/// 
/// This function should exclusively redraw the contents of the drawing area
/// and must not call any widget functions that cause changes.
public typealias DrawingAreaDrawFunc = GtkDrawingAreaDrawFunc

/// A function which decides whether the row indicated by `iter` matches
/// a given `key`, and should be displayed as a possible completion for `key`.
/// 
/// Note that `key` is normalized and case-folded (see `g_utf8_normalize()`
/// and `g_utf8_casefold()`). If this is not appropriate, match functions
/// have access to the unmodified key via
/// `gtk_editable_get_text (GTK_EDITABLE (gtk_entry_completion_get_entry ()))`.
public typealias EntryCompletionMatchFunc = GtkEntryCompletionMatchFunc

/// Callback called by `gtk_expression_watch()` when the
/// expression value changes.
public typealias ExpressionNotify = GtkExpressionNotify

/// Called for flow boxes that are bound to a `GListModel`.
/// 
/// This function is called for each item that gets added to the model.
public typealias FlowBoxCreateWidgetFunc = GtkFlowBoxCreateWidgetFunc

/// A function that will be called whenever a child changes
/// or is added.
/// 
/// It lets you control if the child should be visible or not.
public typealias FlowBoxFilterFunc = GtkFlowBoxFilterFunc

/// A function used by `gtk_flow_box_selected_foreach()`.
/// 
/// It will be called on every selected child of the `box`.
public typealias FlowBoxForeachFunc = GtkFlowBoxForeachFunc

/// A function to compare two children to determine which
/// should come first.
public typealias FlowBoxSortFunc = GtkFlowBoxSortFunc

/// The type of function that is used for deciding what fonts get
/// shown in a `GtkFontChooser`.
/// 
/// See [method`Gtk.FontChooser.set_filter_func`].
public typealias FontFilterFunc = GtkFontFilterFunc

/// A function used by `gtk_icon_view_selected_foreach()` to map all
/// selected rows.
/// 
/// It will be called on every selected row in the view.
public typealias IconViewForeachFunc = GtkIconViewForeachFunc

/// Called for list boxes that are bound to a `GListModel` with
/// `gtk_list_box_bind_model()` for each item that gets added to the model.
public typealias ListBoxCreateWidgetFunc = GtkListBoxCreateWidgetFunc

/// Will be called whenever the row changes or is added and lets you control
/// if the row should be visible or not.
public typealias ListBoxFilterFunc = GtkListBoxFilterFunc

/// A function used by `gtk_list_box_selected_foreach()`.
/// 
/// It will be called on every selected child of the `box`.
public typealias ListBoxForeachFunc = GtkListBoxForeachFunc

/// Compare two rows to determine which should be first.
public typealias ListBoxSortFunc = GtkListBoxSortFunc

/// Whenever `row` changes or which row is before `row` changes this
/// is called, which lets you update the header on `row`.
/// 
/// You may remove or set a new one via [method`Gtk.ListBoxRow.set_header`]
/// or just change the state of the current header widget.
public typealias ListBoxUpdateHeaderFunc = GtkListBoxUpdateHeaderFunc

/// User function that is called to map an `item` of the original model to
/// an item expected by the map model.
/// 
/// The returned items must conform to the item type of the model they are
/// used with.
public typealias MapListModelMapFunc = GtkMapListModelMapFunc

/// User-provided callback function to create a popup for a
/// `GtkMenuButton` on demand.
/// 
/// This function is called when the popup of `menu_button` is shown,
/// but none has been provided via [method`Gtk.MenuButton.set_popover`]
/// or [method`Gtk.MenuButton.set_menu_model`].
public typealias MenuButtonCreatePopupFunc = GtkMenuButtonCreatePopupFunc

/// The type of function that is passed to
/// `gtk_print_run_page_setup_dialog_async()`.
/// 
/// This function will be called when the page setup dialog
/// is dismissed, and also serves as destroy notify for `data`.
public typealias PageSetupDoneFunc = GtkPageSetupDoneFunc

/// The type of callback that is passed to `gtk_print_job_send()`.
/// 
/// It is called when the print job has been completely sent.
public typealias PrintJobCompleteFunc = GtkPrintJobCompleteFunc

public typealias PrintSettingsFunc = GtkPrintSettingsFunc

/// The type of function passed to `gtk_enumerate_printers()`.
/// 
/// Note that you need to ref `printer`, if you want to keep
/// a reference to it after the function has returned.
public typealias PrinterFunc = GtkPrinterFunc

public typealias ScaleFormatValueFunc = GtkScaleFormatValueFunc

/// Prototype for shortcuts based on user callbacks.
public typealias ShortcutFunc = GtkShortcutFunc

/// The predicate function used by `gtk_text_iter_forward_find_char()` and
/// `gtk_text_iter_backward_find_char()`.
public typealias TextCharPredicate = GtkTextCharPredicate

/// A function used with `gtk_text_tag_table_foreach()`,
/// to iterate over every `GtkTextTag` inside a `GtkTextTagTable`.
public typealias TextTagTableForeach = GtkTextTagTableForeach

/// Callback type for adding a function to update animations. See `gtk_widget_add_tick_callback()`.
public typealias TickCallback = GtkTickCallback

/// A function to set the properties of a cell instead of just using the
/// straight mapping between the cell and the model.
/// 
/// This function is useful for customizing the cell renderer. For example,
/// a function might get an* integer from the `tree_model`, and render it to
/// the “text” attribute of “cell” by converting it to its written equivalent.
/// 
/// See also: `gtk_tree_view_column_set_cell_data_func()`
public typealias TreeCellDataFunc = GtkTreeCellDataFunc

/// A GtkTreeIterCompareFunc should return a negative integer, zero, or a positive
/// integer if `a` sorts before `b`, `a` sorts with `b`, or `a` sorts after `b`
/// respectively.
/// 
/// If two iters compare as equal, their order in the sorted model
/// is undefined. In order to ensure that the `GtkTreeSortable` behaves as
/// expected, the GtkTreeIterCompareFunc must define a partial order on
/// the model, i.e. it must be reflexive, antisymmetric and transitive.
/// 
/// For example, if `model` is a product catalogue, then a compare function
/// for the “price” column could be one which returns
/// ``price_of(@a)` - `price_of(@b)``.
public typealias TreeIterCompareFunc = GtkTreeIterCompareFunc

/// Prototype of the function called to create new child models when
/// `gtk_tree_list_row_set_expanded()` is called.
/// 
/// This function can return `nil` to indicate that `item` is guaranteed to be
/// a leaf node and will never have children.
/// If it does not have children but may get children later, it should return
/// an empty model that is filled once children arrive.
public typealias TreeListModelCreateModelFunc = GtkTreeListModelCreateModelFunc

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
/// whether or not a row may be selected. It is called whenever a row's
/// state might change.
/// 
/// A return value of `true` indicates to `selection` that it is okay to
/// change the selection.
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

/// The type of the callback functions used for activating
/// actions installed with `gtk_widget_class_install_action()`.
/// 
/// The `parameter` must match the `parameter_type` of the action.
public typealias WidgetActionActivateFunc = GtkWidgetActionActivateFunc
