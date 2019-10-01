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

/// Accelerator flags used with gtk_accel_group_connect().
public typealias AccelFlags = GtkAccelFlags

public extension AccelFlags {
    /// Accelerator is visible
    static let visible = GTK_ACCEL_VISIBLE /* 1 */
    /// Accelerator not removable
    static let locked = GTK_ACCEL_LOCKED /* 2 */
    /// Mask
    static let mask = GTK_ACCEL_MASK /* 7 */
}

/// Types of user actions that may be blocked by gtk_application_inhibit().
public typealias ApplicationInhibitFlags = GtkApplicationInhibitFlags

public extension ApplicationInhibitFlags {
    /// Inhibit ending the user session
    ///     by logging out or by shutting down the computer
    static let logout = GTK_APPLICATION_INHIBIT_LOGOUT /* 1 */
    /// Inhibit user switching
    static let switch_ = GTK_APPLICATION_INHIBIT_SWITCH /* 2 */
    /// Inhibit suspending the
    ///     session or computer
    static let suspend = GTK_APPLICATION_INHIBIT_SUSPEND /* 4 */
    /// Inhibit the session being
    ///     marked as idle (and possibly locked)
    static let idle = GTK_APPLICATION_INHIBIT_IDLE /* 8 */
}

/// Denotes the expansion properties that a widget will have when it (or its
/// parent) is resized.
public typealias AttachOptions = GtkAttachOptions

public extension AttachOptions {
    /// the widget should expand to take up any extra space in its
    /// container that has been allocated.
    static let expand = GTK_EXPAND /* 1 */
    /// the widget should shrink as and when possible.
    static let shrink = GTK_SHRINK /* 2 */
    /// the widget should fill the space allocated to it.
    static let fill = GTK_FILL /* 4 */
}

/// These options can be used to influence the display and behaviour of a `GtkCalendar`.
public typealias CalendarDisplayOptions = GtkCalendarDisplayOptions

public extension CalendarDisplayOptions {
    /// Specifies that the month and year should be displayed.
    static let show_heading = GTK_CALENDAR_SHOW_HEADING /* 1 */
    /// Specifies that three letter day descriptions should be present.
    static let show_day_names = GTK_CALENDAR_SHOW_DAY_NAMES /* 2 */
    /// Prevents the user from switching months with the calendar.
    static let no_month_change = GTK_CALENDAR_NO_MONTH_CHANGE /* 4 */
    /// Displays each week numbers of the current year, down the
    /// left side of the calendar.
    static let show_week_numbers = GTK_CALENDAR_SHOW_WEEK_NUMBERS /* 8 */
    /// Just show an indicator, not the full details
    /// text when details are provided. See gtk_calendar_set_detail_func().
    static let show_details = GTK_CALENDAR_SHOW_DETAILS /* 32 */
}

/// Tells how a cell is to be rendered.
public typealias CellRendererState = GtkCellRendererState

public extension CellRendererState {
    /// The cell is currently selected, and
    ///  probably has a selection colored background to render to.
    static let selected = GTK_CELL_RENDERER_SELECTED /* 1 */
    /// The mouse is hovering over the cell.
    static let prelit = GTK_CELL_RENDERER_PRELIT /* 2 */
    /// The cell is drawn in an insensitive manner
    static let insensitive = GTK_CELL_RENDERER_INSENSITIVE /* 4 */
    /// The cell is in a sorted row
    static let sorted = GTK_CELL_RENDERER_SORTED /* 8 */
    /// The cell is in the focus row.
    static let focused = GTK_CELL_RENDERER_FOCUSED /* 16 */
    /// The cell is in a row that can be expanded. Since 3.4
    static let expandable = GTK_CELL_RENDERER_EXPANDABLE /* 32 */
    /// The cell is in a row that is expanded. Since 3.4
    static let expanded = GTK_CELL_RENDERER_EXPANDED /* 64 */
}

public typealias DebugFlag = GtkDebugFlag

public extension DebugFlag {
    static let misc = GTK_DEBUG_MISC /* 1 */
    static let plugsocket = GTK_DEBUG_PLUGSOCKET /* 2 */
    static let text = GTK_DEBUG_TEXT /* 4 */
    static let tree = GTK_DEBUG_TREE /* 8 */
    static let updates = GTK_DEBUG_UPDATES /* 16 */
    static let keybindings = GTK_DEBUG_KEYBINDINGS /* 32 */
    static let multihead = GTK_DEBUG_MULTIHEAD /* 64 */
    static let modules = GTK_DEBUG_MODULES /* 128 */
    static let geometry = GTK_DEBUG_GEOMETRY /* 256 */
    static let icontheme = GTK_DEBUG_ICONTHEME /* 512 */
    static let printing = GTK_DEBUG_PRINTING /* 1024 */
    static let builder = GTK_DEBUG_BUILDER /* 2048 */
    static let size_request = GTK_DEBUG_SIZE_REQUEST /* 4096 */
    static let no_css_cache = GTK_DEBUG_NO_CSS_CACHE /* 8192 */
    static let baselines = GTK_DEBUG_BASELINES /* 16384 */
    static let pixel_cache = GTK_DEBUG_PIXEL_CACHE /* 32768 */
    static let no_pixel_cache = GTK_DEBUG_NO_PIXEL_CACHE /* 65536 */
    static let interactive = GTK_DEBUG_INTERACTIVE /* 131072 */
    static let touchscreen = GTK_DEBUG_TOUCHSCREEN /* 262144 */
    static let actions = GTK_DEBUG_ACTIONS /* 524288 */
    static let resize = GTK_DEBUG_RESIZE /* 1048576 */
    static let layout = GTK_DEBUG_LAYOUT /* 2097152 */
}

/// The `GtkDestDefaults` enumeration specifies the various
/// types of action that will be taken on behalf
/// of the user for a drag destination site.
public typealias DestDefaults = GtkDestDefaults

public extension DestDefaults {
    /// If set for a widget, GTK+, during a drag over this
    ///   widget will check if the drag matches this widget’s list of possible targets
    ///   and actions.
    ///   GTK+ will then call gdk_drag_status() as appropriate.
    static let motion = GTK_DEST_DEFAULT_MOTION /* 1 */
    /// If set for a widget, GTK+ will draw a highlight on
    ///   this widget as long as a drag is over this widget and the widget drag format
    ///   and action are acceptable.
    static let highlight = GTK_DEST_DEFAULT_HIGHLIGHT /* 2 */
    /// If set for a widget, when a drop occurs, GTK+ will
    ///   will check if the drag matches this widget’s list of possible targets and
    ///   actions. If so, GTK+ will call gtk_drag_get_data() on behalf of the widget.
    ///   Whether or not the drop is successful, GTK+ will call gtk_drag_finish(). If
    ///   the action was a move, then if the drag was successful, then `true` will be
    ///   passed for the `delete` parameter to gtk_drag_finish().
    static let drop = GTK_DEST_DEFAULT_DROP /* 4 */
    /// If set, specifies that all default actions should
    ///   be taken.
    static let all = GTK_DEST_DEFAULT_ALL /* 7 */
}

/// Flags used to influence dialog construction.
public typealias DialogFlags = GtkDialogFlags

public extension DialogFlags {
    /// Make the constructed dialog modal,
    ///     see gtk_window_set_modal()
    static let modal = GTK_DIALOG_MODAL /* 1 */
    /// Destroy the dialog when its
    ///     parent is destroyed, see gtk_window_set_destroy_with_parent()
    static let destroy_with_parent = GTK_DIALOG_DESTROY_WITH_PARENT /* 2 */
    /// Create dialog with actions in header
    ///     bar instead of action area. Since 3.12.
    static let use_header_bar = GTK_DIALOG_USE_HEADER_BAR /* 4 */
}

/// Describes the behavior of a `GtkEventControllerScroll`.
public typealias EventControllerScrollFlags = GtkEventControllerScrollFlags

public extension EventControllerScrollFlags {
    /// Don't emit scroll.
    static let none_ = GTK_EVENT_CONTROLLER_SCROLL_NONE /* 0 */
    /// Emit scroll with vertical deltas.
    static let vertical = GTK_EVENT_CONTROLLER_SCROLL_VERTICAL /* 1 */
    /// Emit scroll with horizontal deltas.
    static let horizontal = GTK_EVENT_CONTROLLER_SCROLL_HORIZONTAL /* 2 */
    /// Only emit deltas that are multiples of 1.
    static let discrete = GTK_EVENT_CONTROLLER_SCROLL_DISCRETE /* 4 */
    /// Emit `GtkEventControllerScroll`::decelerate
    ///   after continuous scroll finishes.
    static let kinetic = GTK_EVENT_CONTROLLER_SCROLL_KINETIC /* 8 */
    /// Emit scroll on both axes.
    static let both_axes = GTK_EVENT_CONTROLLER_SCROLL_BOTH_AXES /* 3 */
}

/// These flags indicate what parts of a `GtkFileFilterInfo` struct
/// are filled or need to be filled.
public typealias FileFilterFlags = GtkFileFilterFlags

public extension FileFilterFlags {
    /// the filename of the file being tested
    static let filename = GTK_FILE_FILTER_FILENAME /* 1 */
    /// the URI for the file being tested
    static let uri = GTK_FILE_FILTER_URI /* 2 */
    /// the string that will be used to
    ///   display the file in the file chooser
    static let display_name = GTK_FILE_FILTER_DISPLAY_NAME /* 4 */
    /// the mime type of the file
    static let mime_type = GTK_FILE_FILTER_MIME_TYPE /* 8 */
}

/// This enumeration specifies the granularity of font selection
/// that is desired in a font chooser.
/// 
/// This enumeration may be extended in the future; applications should
/// ignore unknown values.
public typealias FontChooserLevel = GtkFontChooserLevel

public extension FontChooserLevel {
    /// Allow selecting a font family
    static let family = GTK_FONT_CHOOSER_LEVEL_FAMILY /* 0 */
    /// Allow selecting a specific font face
    static let style = GTK_FONT_CHOOSER_LEVEL_STYLE /* 1 */
    /// Allow selecting a specific font size
    static let size = GTK_FONT_CHOOSER_LEVEL_SIZE /* 2 */
    static let variations = GTK_FONT_CHOOSER_LEVEL_VARIATIONS /* 4 */
    /// Allow selecting specific OpenType font features
    static let features = GTK_FONT_CHOOSER_LEVEL_FEATURES /* 8 */
}

/// Used to specify options for gtk_icon_theme_lookup_icon()
public typealias IconLookupFlags = GtkIconLookupFlags

public extension IconLookupFlags {
    /// Never get SVG icons, even if gdk-pixbuf
    ///   supports them. Cannot be used together with `GTK_ICON_LOOKUP_FORCE_SVG`.
    static let no_svg = GTK_ICON_LOOKUP_NO_SVG /* 1 */
    /// Get SVG icons, even if gdk-pixbuf
    ///   doesn’t support them.
    ///   Cannot be used together with `GTK_ICON_LOOKUP_NO_SVG`.
    static let force_svg = GTK_ICON_LOOKUP_FORCE_SVG /* 2 */
    /// When passed to
    ///   gtk_icon_theme_lookup_icon() includes builtin icons
    ///   as well as files. For a builtin icon, gtk_icon_info_get_filename()
    ///   is `nil` and you need to call gtk_icon_info_get_builtin_pixbuf().
    static let use_builtin = GTK_ICON_LOOKUP_USE_BUILTIN /* 4 */
    /// Try to shorten icon name at '-'
    ///   characters before looking at inherited themes. This flag is only
    ///   supported in functions that take a single icon name. For more general
    ///   fallback, see gtk_icon_theme_choose_icon(). Since 2.12.
    static let generic_fallback = GTK_ICON_LOOKUP_GENERIC_FALLBACK /* 8 */
    /// Always get the icon scaled to the
    ///   requested size. Since 2.14.
    static let force_size = GTK_ICON_LOOKUP_FORCE_SIZE /* 16 */
    /// Try to always load regular icons, even
    ///   when symbolic icon names are given. Since 3.14.
    static let force_regular = GTK_ICON_LOOKUP_FORCE_REGULAR /* 32 */
    /// Try to always load symbolic icons, even
    ///   when regular icon names are given. Since 3.14.
    static let force_symbolic = GTK_ICON_LOOKUP_FORCE_SYMBOLIC /* 64 */
    /// Try to load a variant of the icon for left-to-right
    ///   text direction. Since 3.14.
    static let dir_ltr = GTK_ICON_LOOKUP_DIR_LTR /* 128 */
    /// Try to load a variant of the icon for right-to-left
    ///   text direction. Since 3.14.
    static let dir_rtl = GTK_ICON_LOOKUP_DIR_RTL /* 256 */
}

/// Describes hints that might be taken into account by input methods
/// or applications. Note that input methods may already tailor their
/// behaviour according to the `GtkInputPurpose` of the entry.
/// 
/// Some common sense is expected when using these flags - mixing
/// `GTK_INPUT_HINT_LOWERCASE` with any of the uppercase hints makes no sense.
/// 
/// This enumeration may be extended in the future; input methods should
/// ignore unknown values.
public typealias InputHints = GtkInputHints

public extension InputHints {
    /// No special behaviour suggested
    static let none_ = GTK_INPUT_HINT_NONE /* 0 */
    /// Suggest checking for typos
    static let spellcheck = GTK_INPUT_HINT_SPELLCHECK /* 1 */
    /// Suggest not checking for typos
    static let no_spellcheck = GTK_INPUT_HINT_NO_SPELLCHECK /* 2 */
    /// Suggest word completion
    static let word_completion = GTK_INPUT_HINT_WORD_COMPLETION /* 4 */
    /// Suggest to convert all text to lowercase
    static let lowercase = GTK_INPUT_HINT_LOWERCASE /* 8 */
    /// Suggest to capitalize all text
    static let uppercase_chars = GTK_INPUT_HINT_UPPERCASE_CHARS /* 16 */
    /// Suggest to capitalize the first
    ///     character of each word
    static let uppercase_words = GTK_INPUT_HINT_UPPERCASE_WORDS /* 32 */
    /// Suggest to capitalize the
    ///     first word of each sentence
    static let uppercase_sentences = GTK_INPUT_HINT_UPPERCASE_SENTENCES /* 64 */
    /// Suggest to not show an onscreen keyboard
    ///     (e.g for a calculator that already has all the keys).
    static let inhibit_osk = GTK_INPUT_HINT_INHIBIT_OSK /* 128 */
    /// The text is vertical. Since 3.18
    static let vertical_writing = GTK_INPUT_HINT_VERTICAL_WRITING /* 256 */
    /// Suggest offering Emoji support. Since 3.22.20
    static let emoji = GTK_INPUT_HINT_EMOJI /* 512 */
    /// Suggest not offering Emoji support. Since 3.22.20
    static let no_emoji = GTK_INPUT_HINT_NO_EMOJI /* 1024 */
}

/// Describes how a rendered element connects to adjacent elements.
public typealias JunctionSides = GtkJunctionSides

public extension JunctionSides {
    /// No junctions.
    static let none_ = GTK_JUNCTION_NONE /* 0 */
    /// Element connects on the top-left corner.
    static let corner_topleft = GTK_JUNCTION_CORNER_TOPLEFT /* 1 */
    /// Element connects on the top-right corner.
    static let corner_topright = GTK_JUNCTION_CORNER_TOPRIGHT /* 2 */
    /// Element connects on the bottom-left corner.
    static let corner_bottomleft = GTK_JUNCTION_CORNER_BOTTOMLEFT /* 4 */
    /// Element connects on the bottom-right corner.
    static let corner_bottomright = GTK_JUNCTION_CORNER_BOTTOMRIGHT /* 8 */
    /// Element connects on the top side.
    static let top = GTK_JUNCTION_TOP /* 3 */
    /// Element connects on the bottom side.
    static let bottom = GTK_JUNCTION_BOTTOM /* 12 */
    /// Element connects on the left side.
    static let left_ = GTK_JUNCTION_LEFT /* 5 */
    /// Element connects on the right side.
    static let right_ = GTK_JUNCTION_RIGHT /* 10 */
}

/// These flags serve two purposes.  First, the application can call gtk_places_sidebar_set_open_flags()
/// using these flags as a bitmask.  This tells the sidebar that the application is able to open
/// folders selected from the sidebar in various ways, for example, in new tabs or in new windows in
/// addition to the normal mode.
/// 
/// Second, when one of these values gets passed back to the application in the
/// `GtkPlacesSidebar`::open-location signal, it means that the application should
/// open the selected location in the normal way, in a new tab, or in a new
/// window.  The sidebar takes care of determining the desired way to open the location,
/// based on the modifier keys that the user is pressing at the time the selection is made.
/// 
/// If the application never calls gtk_places_sidebar_set_open_flags(), then the sidebar will only
/// use `GTK_PLACES_OPEN_NORMAL` in the `GtkPlacesSidebar`::open-location signal.  This is the
/// default mode of operation.
public typealias PlacesOpenFlags = GtkPlacesOpenFlags

public extension PlacesOpenFlags {
    /// This is the default mode that `GtkPlacesSidebar` uses if no other flags
    ///  are specified.  It indicates that the calling application should open the selected location
    ///  in the normal way, for example, in the folder view beside the sidebar.
    static let normal = GTK_PLACES_OPEN_NORMAL /* 1 */
    /// When passed to gtk_places_sidebar_set_open_flags(), this indicates
    ///  that the application can open folders selected from the sidebar in new tabs.  This value
    ///  will be passed to the `GtkPlacesSidebar`::open-location signal when the user selects
    ///  that a location be opened in a new tab instead of in the standard fashion.
    static let new_tab = GTK_PLACES_OPEN_NEW_TAB /* 2 */
    /// Similar to `GTK_PLACES_OPEN_NEW_TAB`, but indicates that the application
    ///  can open folders in new windows.
    static let new_window = GTK_PLACES_OPEN_NEW_WINDOW /* 4 */
}

/// Deprecated
public typealias RcFlags = GtkRcFlags

public extension RcFlags {
    /// Deprecated
    static let fg = GTK_RC_FG /* 1 */
    /// Deprecated
    static let bg = GTK_RC_BG /* 2 */
    /// Deprecated
    static let text = GTK_RC_TEXT /* 4 */
    /// Deprecated
    static let base = GTK_RC_BASE /* 8 */
}

/// These flags indicate what parts of a `GtkRecentFilterInfo` struct
/// are filled or need to be filled.
public typealias RecentFilterFlags = GtkRecentFilterFlags

public extension RecentFilterFlags {
    /// the URI of the file being tested
    static let uri = GTK_RECENT_FILTER_URI /* 1 */
    /// the string that will be used to
    ///  display the file in the recent chooser
    static let display_name = GTK_RECENT_FILTER_DISPLAY_NAME /* 2 */
    /// the mime type of the file
    static let mime_type = GTK_RECENT_FILTER_MIME_TYPE /* 4 */
    /// the list of applications that have
    ///  registered the file
    static let application = GTK_RECENT_FILTER_APPLICATION /* 8 */
    /// the groups to which the file belongs to
    static let group = GTK_RECENT_FILTER_GROUP /* 16 */
    /// the number of days elapsed since the file
    ///  has been registered
    static let age = GTK_RECENT_FILTER_AGE /* 32 */
}

/// Describes a region within a widget.
public typealias RegionFlags = GtkRegionFlags

public extension RegionFlags {
    /// Region has an even number within a set.
    static let even = GTK_REGION_EVEN /* 1 */
    /// Region has an odd number within a set.
    static let odd = GTK_REGION_ODD /* 2 */
    /// Region is the first one within a set.
    static let first = GTK_REGION_FIRST /* 4 */
    /// Region is the last one within a set.
    static let last = GTK_REGION_LAST /* 8 */
    /// Region is the only one within a set.
    static let only = GTK_REGION_ONLY /* 16 */
    /// Region is part of a sorted area.
    static let sorted = GTK_REGION_SORTED /* 32 */
}

/// Describes a widget state. Widget states are used to match the widget
/// against CSS pseudo-classes. Note that GTK extends the regular CSS
/// classes and sometimes uses different names.
public typealias StateFlags = GtkStateFlags

public extension StateFlags {
    /// State during normal operation.
    static let normal = GTK_STATE_FLAG_NORMAL /* 0 */
    /// Widget is active.
    static let active = GTK_STATE_FLAG_ACTIVE /* 1 */
    /// Widget has a mouse pointer over it.
    static let prelight = GTK_STATE_FLAG_PRELIGHT /* 2 */
    /// Widget is selected.
    static let selected = GTK_STATE_FLAG_SELECTED /* 4 */
    /// Widget is insensitive.
    static let insensitive = GTK_STATE_FLAG_INSENSITIVE /* 8 */
    /// Widget is inconsistent.
    static let inconsistent = GTK_STATE_FLAG_INCONSISTENT /* 16 */
    /// Widget has the keyboard focus.
    static let focused = GTK_STATE_FLAG_FOCUSED /* 32 */
    /// Widget is in a background toplevel window.
    static let backdrop = GTK_STATE_FLAG_BACKDROP /* 64 */
    /// Widget is in left-to-right text direction. Since 3.8
    static let dir_ltr = GTK_STATE_FLAG_DIR_LTR /* 128 */
    /// Widget is in right-to-left text direction. Since 3.8
    static let dir_rtl = GTK_STATE_FLAG_DIR_RTL /* 256 */
    /// Widget is a link. Since 3.12
    static let link = GTK_STATE_FLAG_LINK /* 512 */
    /// The location the widget points to has already been visited. Since 3.12
    static let visited = GTK_STATE_FLAG_VISITED /* 1024 */
    /// Widget is checked. Since 3.14
    static let checked = GTK_STATE_FLAG_CHECKED /* 2048 */
    /// Widget is highlighted as a drop target for DND. Since 3.20
    static let drop_active = GTK_STATE_FLAG_DROP_ACTIVE /* 4096 */
}

/// Flags that modify the behavior of gtk_style_context_to_string().
/// New values may be added to this enumeration.
public typealias StyleContextPrintFlags = GtkStyleContextPrintFlags

public extension StyleContextPrintFlags {
    static let none_ = GTK_STYLE_CONTEXT_PRINT_NONE /* 0 */
    /// Print the entire tree of
    ///     CSS nodes starting at the style context's node
    static let recurse = GTK_STYLE_CONTEXT_PRINT_RECURSE /* 1 */
    /// Show the values of the
    ///     CSS properties for each node
    static let show_style = GTK_STYLE_CONTEXT_PRINT_SHOW_STYLE /* 2 */
}

/// The `GtkTargetFlags` enumeration is used to specify
/// constraints on a `GtkTargetEntry`.
public typealias TargetFlags = GtkTargetFlags

public extension TargetFlags {
    /// If this is set, the target will only be selected
    ///   for drags within a single application.
    static let same_app = GTK_TARGET_SAME_APP /* 1 */
    /// If this is set, the target will only be selected
    ///   for drags within a single widget.
    static let same_widget = GTK_TARGET_SAME_WIDGET /* 2 */
    /// If this is set, the target will not be selected
    ///   for drags within a single application.
    static let other_app = GTK_TARGET_OTHER_APP /* 4 */
    /// If this is set, the target will not be selected
    ///   for drags withing a single widget.
    static let other_widget = GTK_TARGET_OTHER_WIDGET /* 8 */
}

/// Flags affecting how a search is done.
/// 
/// If neither `GTK_TEXT_SEARCH_VISIBLE_ONLY` nor `GTK_TEXT_SEARCH_TEXT_ONLY` are
/// enabled, the match must be exact; the special 0xFFFC character will match
/// embedded pixbufs or child widgets.
public typealias TextSearchFlags = GtkTextSearchFlags

public extension TextSearchFlags {
    /// Search only visible data. A search match may
    /// have invisible text interspersed.
    static let visible_only = GTK_TEXT_SEARCH_VISIBLE_ONLY /* 1 */
    /// Search only text. A match may have pixbufs or
    /// child widgets mixed inside the matched range.
    static let text_only = GTK_TEXT_SEARCH_TEXT_ONLY /* 2 */
    /// The text will be matched regardless of
    /// what case it is in.
    static let case_insensitive = GTK_TEXT_SEARCH_CASE_INSENSITIVE /* 4 */
}

/// Flags used to specify the supported drag targets.
public typealias ToolPaletteDragTargets = GtkToolPaletteDragTargets

public extension ToolPaletteDragTargets {
    /// Support drag of items.
    static let items = GTK_TOOL_PALETTE_DRAG_ITEMS /* 1 */
    /// Support drag of groups.
    static let groups = GTK_TOOL_PALETTE_DRAG_GROUPS /* 2 */
}

/// These flags indicate various properties of a `GtkTreeModel`.
/// 
/// They are returned by gtk_tree_model_get_flags(), and must be
/// static for the lifetime of the object. A more complete description
/// of `GTK_TREE_MODEL_ITERS_PERSIST` can be found in the overview of
/// this section.
public typealias TreeModelFlags = GtkTreeModelFlags

public extension TreeModelFlags {
    /// iterators survive all signals
    ///     emitted by the tree
    static let iters_persist = GTK_TREE_MODEL_ITERS_PERSIST /* 1 */
    /// the model is a list only, and never
    ///     has children
    static let list_only = GTK_TREE_MODEL_LIST_ONLY /* 2 */
}

/// These enumeration values are used by gtk_ui_manager_add_ui() to determine
/// what UI element to create.
///
/// **UIManagerItemType is deprecated:**
/// This method is deprecated.
public typealias UIManagerItemType = GtkUIManagerItemType

public extension UIManagerItemType {
    /// Pick the type of the UI element according to context.
    static let auto = GTK_UI_MANAGER_AUTO /* 0 */
    /// Create a menubar.
    static let menubar = GTK_UI_MANAGER_MENUBAR /* 1 */
    /// Create a menu.
    static let menu = GTK_UI_MANAGER_MENU /* 2 */
    /// Create a toolbar.
    static let toolbar = GTK_UI_MANAGER_TOOLBAR /* 4 */
    /// Insert a placeholder.
    static let placeholder = GTK_UI_MANAGER_PLACEHOLDER /* 8 */
    /// Create a popup menu.
    static let popup = GTK_UI_MANAGER_POPUP /* 16 */
    /// Create a menuitem.
    static let menuitem = GTK_UI_MANAGER_MENUITEM /* 32 */
    /// Create a toolitem.
    static let toolitem = GTK_UI_MANAGER_TOOLITEM /* 64 */
    /// Create a separator.
    static let separator = GTK_UI_MANAGER_SEPARATOR /* 128 */
    /// Install an accelerator.
    static let accelerator = GTK_UI_MANAGER_ACCELERATOR /* 256 */
    /// Same as `GTK_UI_MANAGER_POPUP`, but the
    ///   actions’ accelerators are shown.
    static let popup_with_accels = GTK_UI_MANAGER_POPUP_WITH_ACCELS /* 512 */
}
