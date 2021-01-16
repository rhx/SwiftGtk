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

/// Accelerator flags used with `gtk_accel_group_connect()`.
public struct AccelFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GtkAccelFlags` enum value
    @inlinable public var value: GtkAccelFlags {
        get {
            func castToGtkAccelFlagsInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GtkAccelFlags(rawValue: castToGtkAccelFlagsInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GtkAccelFlags` enum value
    @inlinable public init(_ enumValue: GtkAccelFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// Accelerator is visible
    public static let visible = AccelFlags(1) // GTK_ACCEL_VISIBLE
    /// Accelerator not removable
    public static let locked = AccelFlags(2) // GTK_ACCEL_LOCKED
    /// Mask
    public static let mask = AccelFlags(7) // GTK_ACCEL_MASK
}



/// Types of user actions that may be blocked by `gtk_application_inhibit()`.
public struct ApplicationInhibitFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GtkApplicationInhibitFlags` enum value
    @inlinable public var value: GtkApplicationInhibitFlags {
        get {
            func castToGtkApplicationInhibitFlagsInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GtkApplicationInhibitFlags(rawValue: castToGtkApplicationInhibitFlagsInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GtkApplicationInhibitFlags` enum value
    @inlinable public init(_ enumValue: GtkApplicationInhibitFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// Inhibit ending the user session
    ///     by logging out or by shutting down the computer
    public static let logout = ApplicationInhibitFlags(1) // GTK_APPLICATION_INHIBIT_LOGOUT
    /// Inhibit user switching
    public static let `switch` = ApplicationInhibitFlags(2) // GTK_APPLICATION_INHIBIT_SWITCH
    /// Inhibit suspending the
    ///     session or computer
    public static let suspend = ApplicationInhibitFlags(4) // GTK_APPLICATION_INHIBIT_SUSPEND
    /// Inhibit the session being
    ///     marked as idle (and possibly locked)
    public static let idle = ApplicationInhibitFlags(8) // GTK_APPLICATION_INHIBIT_IDLE
}



/// Denotes the expansion properties that a widget will have when it (or its
/// parent) is resized.
public struct AttachOptions: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GtkAttachOptions` enum value
    @inlinable public var value: GtkAttachOptions {
        get {
            func castToGtkAttachOptionsInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GtkAttachOptions(rawValue: castToGtkAttachOptionsInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GtkAttachOptions` enum value
    @inlinable public init(_ enumValue: GtkAttachOptions) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// the widget should expand to take up any extra space in its
    /// container that has been allocated.
    public static let expand = AttachOptions(1) // GTK_EXPAND
    /// the widget should shrink as and when possible.
    public static let shrink = AttachOptions(2) // GTK_SHRINK
    /// the widget should fill the space allocated to it.
    public static let fill = AttachOptions(4) // GTK_FILL
}



/// These options can be used to influence the display and behaviour of a `GtkCalendar`.
public struct CalendarDisplayOptions: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GtkCalendarDisplayOptions` enum value
    @inlinable public var value: GtkCalendarDisplayOptions {
        get {
            func castToGtkCalendarDisplayOptionsInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GtkCalendarDisplayOptions(rawValue: castToGtkCalendarDisplayOptionsInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GtkCalendarDisplayOptions` enum value
    @inlinable public init(_ enumValue: GtkCalendarDisplayOptions) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// Specifies that the month and year should be displayed.
    public static let showHeading = CalendarDisplayOptions(1) // GTK_CALENDAR_SHOW_HEADING
    /// Specifies that three letter day descriptions should be present.
    public static let showDayNames = CalendarDisplayOptions(2) // GTK_CALENDAR_SHOW_DAY_NAMES
    /// Prevents the user from switching months with the calendar.
    public static let noMonthChange = CalendarDisplayOptions(4) // GTK_CALENDAR_NO_MONTH_CHANGE
    /// Displays each week numbers of the current year, down the
    /// left side of the calendar.
    public static let showWeekNumbers = CalendarDisplayOptions(8) // GTK_CALENDAR_SHOW_WEEK_NUMBERS
    /// Just show an indicator, not the full details
    /// text when details are provided. See `gtk_calendar_set_detail_func()`.
    public static let showDetails = CalendarDisplayOptions(32) // GTK_CALENDAR_SHOW_DETAILS
}



/// Tells how a cell is to be rendered.
public struct CellRendererState: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GtkCellRendererState` enum value
    @inlinable public var value: GtkCellRendererState {
        get {
            func castToGtkCellRendererStateInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GtkCellRendererState(rawValue: castToGtkCellRendererStateInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GtkCellRendererState` enum value
    @inlinable public init(_ enumValue: GtkCellRendererState) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// The cell is currently selected, and
    ///  probably has a selection colored background to render to.
    public static let selected = CellRendererState(1) // GTK_CELL_RENDERER_SELECTED
    /// The mouse is hovering over the cell.
    public static let prelit = CellRendererState(2) // GTK_CELL_RENDERER_PRELIT
    /// The cell is drawn in an insensitive manner
    public static let insensitive = CellRendererState(4) // GTK_CELL_RENDERER_INSENSITIVE
    /// The cell is in a sorted row
    public static let sorted = CellRendererState(8) // GTK_CELL_RENDERER_SORTED
    /// The cell is in the focus row.
    public static let focused = CellRendererState(16) // GTK_CELL_RENDERER_FOCUSED
    /// The cell is in a row that can be expanded. Since 3.4
    public static let expandable = CellRendererState(32) // GTK_CELL_RENDERER_EXPANDABLE
    /// The cell is in a row that is expanded. Since 3.4
    public static let expanded = CellRendererState(64) // GTK_CELL_RENDERER_EXPANDED
}



public struct DebugFlag: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GtkDebugFlag` enum value
    @inlinable public var value: GtkDebugFlag {
        get {
            func castToGtkDebugFlagInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GtkDebugFlag(rawValue: castToGtkDebugFlagInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GtkDebugFlag` enum value
    @inlinable public init(_ enumValue: GtkDebugFlag) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    public static let misc = DebugFlag(1) // GTK_DEBUG_MISC
    public static let plugsocket = DebugFlag(2) // GTK_DEBUG_PLUGSOCKET
    public static let text = DebugFlag(4) // GTK_DEBUG_TEXT
    public static let tree = DebugFlag(8) // GTK_DEBUG_TREE
    public static let updates = DebugFlag(16) // GTK_DEBUG_UPDATES
    public static let keybindings = DebugFlag(32) // GTK_DEBUG_KEYBINDINGS
    public static let multihead = DebugFlag(64) // GTK_DEBUG_MULTIHEAD
    public static let modules = DebugFlag(128) // GTK_DEBUG_MODULES
    public static let geometry = DebugFlag(256) // GTK_DEBUG_GEOMETRY
    public static let icontheme = DebugFlag(512) // GTK_DEBUG_ICONTHEME
    public static let printing = DebugFlag(1024) // GTK_DEBUG_PRINTING
    public static let builder = DebugFlag(2048) // GTK_DEBUG_BUILDER
    public static let sizeRequest = DebugFlag(4096) // GTK_DEBUG_SIZE_REQUEST
    public static let noCssCache = DebugFlag(8192) // GTK_DEBUG_NO_CSS_CACHE
    public static let baselines = DebugFlag(16384) // GTK_DEBUG_BASELINES
    public static let pixelCache = DebugFlag(32768) // GTK_DEBUG_PIXEL_CACHE
    public static let noPixelCache = DebugFlag(65536) // GTK_DEBUG_NO_PIXEL_CACHE
    public static let interactive = DebugFlag(131072) // GTK_DEBUG_INTERACTIVE
    public static let touchscreen = DebugFlag(262144) // GTK_DEBUG_TOUCHSCREEN
    public static let actions = DebugFlag(524288) // GTK_DEBUG_ACTIONS
    public static let resize = DebugFlag(1048576) // GTK_DEBUG_RESIZE
    public static let layout = DebugFlag(2097152) // GTK_DEBUG_LAYOUT
}



/// The `GtkDestDefaults` enumeration specifies the various
/// types of action that will be taken on behalf
/// of the user for a drag destination site.
public struct DestDefaults: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GtkDestDefaults` enum value
    @inlinable public var value: GtkDestDefaults {
        get {
            func castToGtkDestDefaultsInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GtkDestDefaults(rawValue: castToGtkDestDefaultsInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GtkDestDefaults` enum value
    @inlinable public init(_ enumValue: GtkDestDefaults) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// If set for a widget, GTK+, during a drag over this
    ///   widget will check if the drag matches this widget’s list of possible targets
    ///   and actions.
    ///   GTK+ will then call `gdk_drag_status()` as appropriate.
    public static let motion = DestDefaults(1) // GTK_DEST_DEFAULT_MOTION
    /// If set for a widget, GTK+ will draw a highlight on
    ///   this widget as long as a drag is over this widget and the widget drag format
    ///   and action are acceptable.
    public static let highlight = DestDefaults(2) // GTK_DEST_DEFAULT_HIGHLIGHT
    /// If set for a widget, when a drop occurs, GTK+ will
    ///   will check if the drag matches this widget’s list of possible targets and
    ///   actions. If so, GTK+ will call `gtk_drag_get_data()` on behalf of the widget.
    ///   Whether or not the drop is successful, GTK+ will call `gtk_drag_finish()`. If
    ///   the action was a move, then if the drag was successful, then `true` will be
    ///   passed for the `delete` parameter to `gtk_drag_finish()`.
    public static let drop = DestDefaults(4) // GTK_DEST_DEFAULT_DROP
    /// If set, specifies that all default actions should
    ///   be taken.
    public static let all = DestDefaults(7) // GTK_DEST_DEFAULT_ALL
}



/// Flags used to influence dialog construction.
public struct DialogFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GtkDialogFlags` enum value
    @inlinable public var value: GtkDialogFlags {
        get {
            func castToGtkDialogFlagsInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GtkDialogFlags(rawValue: castToGtkDialogFlagsInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GtkDialogFlags` enum value
    @inlinable public init(_ enumValue: GtkDialogFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// Make the constructed dialog modal,
    ///     see `gtk_window_set_modal()`
    public static let modal = DialogFlags(1) // GTK_DIALOG_MODAL
    /// Destroy the dialog when its
    ///     parent is destroyed, see `gtk_window_set_destroy_with_parent()`
    public static let destroyWithParent = DialogFlags(2) // GTK_DIALOG_DESTROY_WITH_PARENT
    /// Create dialog with actions in header
    ///     bar instead of action area. Since 3.12.
    public static let useHeaderBar = DialogFlags(4) // GTK_DIALOG_USE_HEADER_BAR
}



/// Describes the behavior of a `GtkEventControllerScroll`.
public struct EventControllerScrollFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GtkEventControllerScrollFlags` enum value
    @inlinable public var value: GtkEventControllerScrollFlags {
        get {
            func castToGtkEventControllerScrollFlagsInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GtkEventControllerScrollFlags(rawValue: castToGtkEventControllerScrollFlagsInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GtkEventControllerScrollFlags` enum value
    @inlinable public init(_ enumValue: GtkEventControllerScrollFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// Don't emit scroll.
    public static let `none` = EventControllerScrollFlags(0) // GTK_EVENT_CONTROLLER_SCROLL_NONE
    /// Emit scroll with vertical deltas.
    public static let vertical = EventControllerScrollFlags(1) // GTK_EVENT_CONTROLLER_SCROLL_VERTICAL
    /// Emit scroll with horizontal deltas.
    public static let horizontal = EventControllerScrollFlags(2) // GTK_EVENT_CONTROLLER_SCROLL_HORIZONTAL
    /// Only emit deltas that are multiples of 1.
    public static let discrete = EventControllerScrollFlags(4) // GTK_EVENT_CONTROLLER_SCROLL_DISCRETE
    /// Emit `GtkEventControllerScroll::decelerate`
    ///   after continuous scroll finishes.
    public static let kinetic = EventControllerScrollFlags(8) // GTK_EVENT_CONTROLLER_SCROLL_KINETIC
    /// Emit scroll on both axes.
    public static let bothAxes = EventControllerScrollFlags(3) // GTK_EVENT_CONTROLLER_SCROLL_BOTH_AXES
}



/// These flags indicate what parts of a `GtkFileFilterInfo` struct
/// are filled or need to be filled.
public struct FileFilterFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GtkFileFilterFlags` enum value
    @inlinable public var value: GtkFileFilterFlags {
        get {
            func castToGtkFileFilterFlagsInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GtkFileFilterFlags(rawValue: castToGtkFileFilterFlagsInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GtkFileFilterFlags` enum value
    @inlinable public init(_ enumValue: GtkFileFilterFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// the filename of the file being tested
    public static let filename = FileFilterFlags(1) // GTK_FILE_FILTER_FILENAME
    /// the URI for the file being tested
    public static let uri = FileFilterFlags(2) // GTK_FILE_FILTER_URI
    /// the string that will be used to
    ///   display the file in the file chooser
    public static let displayName = FileFilterFlags(4) // GTK_FILE_FILTER_DISPLAY_NAME
    /// the mime type of the file
    public static let mimeType = FileFilterFlags(8) // GTK_FILE_FILTER_MIME_TYPE
}



/// This enumeration specifies the granularity of font selection
/// that is desired in a font chooser.
/// 
/// This enumeration may be extended in the future; applications should
/// ignore unknown values.
public struct FontChooserLevel: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GtkFontChooserLevel` enum value
    @inlinable public var value: GtkFontChooserLevel {
        get {
            func castToGtkFontChooserLevelInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GtkFontChooserLevel(rawValue: castToGtkFontChooserLevelInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GtkFontChooserLevel` enum value
    @inlinable public init(_ enumValue: GtkFontChooserLevel) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// Allow selecting a font family
    public static let family = FontChooserLevel(0) // GTK_FONT_CHOOSER_LEVEL_FAMILY
    /// Allow selecting a specific font face
    public static let style = FontChooserLevel(1) // GTK_FONT_CHOOSER_LEVEL_STYLE
    /// Allow selecting a specific font size
    public static let size = FontChooserLevel(2) // GTK_FONT_CHOOSER_LEVEL_SIZE
    public static let variations = FontChooserLevel(4) // GTK_FONT_CHOOSER_LEVEL_VARIATIONS
    /// Allow selecting specific OpenType font features
    public static let features = FontChooserLevel(8) // GTK_FONT_CHOOSER_LEVEL_FEATURES
}



/// Used to specify options for `gtk_icon_theme_lookup_icon()`
public struct IconLookupFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GtkIconLookupFlags` enum value
    @inlinable public var value: GtkIconLookupFlags {
        get {
            func castToGtkIconLookupFlagsInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GtkIconLookupFlags(rawValue: castToGtkIconLookupFlagsInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GtkIconLookupFlags` enum value
    @inlinable public init(_ enumValue: GtkIconLookupFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// Never get SVG icons, even if gdk-pixbuf
    ///   supports them. Cannot be used together with `GTK_ICON_LOOKUP_FORCE_SVG`.
    public static let noSvg = IconLookupFlags(1) // GTK_ICON_LOOKUP_NO_SVG
    /// Get SVG icons, even if gdk-pixbuf
    ///   doesn’t support them.
    ///   Cannot be used together with `GTK_ICON_LOOKUP_NO_SVG`.
    public static let forceSvg = IconLookupFlags(2) // GTK_ICON_LOOKUP_FORCE_SVG
    /// When passed to
    ///   `gtk_icon_theme_lookup_icon()` includes builtin icons
    ///   as well as files. For a builtin icon, `gtk_icon_info_get_filename()`
    ///   is `nil` and you need to call `gtk_icon_info_get_builtin_pixbuf()`.
    public static let useBuiltin = IconLookupFlags(4) // GTK_ICON_LOOKUP_USE_BUILTIN
    /// Try to shorten icon name at '-'
    ///   characters before looking at inherited themes. This flag is only
    ///   supported in functions that take a single icon name. For more general
    ///   fallback, see `gtk_icon_theme_choose_icon()`. Since 2.12.
    public static let genericFallback = IconLookupFlags(8) // GTK_ICON_LOOKUP_GENERIC_FALLBACK
    /// Always get the icon scaled to the
    ///   requested size. Since 2.14.
    public static let forceSize = IconLookupFlags(16) // GTK_ICON_LOOKUP_FORCE_SIZE
    /// Try to always load regular icons, even
    ///   when symbolic icon names are given. Since 3.14.
    public static let forceRegular = IconLookupFlags(32) // GTK_ICON_LOOKUP_FORCE_REGULAR
    /// Try to always load symbolic icons, even
    ///   when regular icon names are given. Since 3.14.
    public static let forceSymbolic = IconLookupFlags(64) // GTK_ICON_LOOKUP_FORCE_SYMBOLIC
    /// Try to load a variant of the icon for left-to-right
    ///   text direction. Since 3.14.
    public static let dirLtr = IconLookupFlags(128) // GTK_ICON_LOOKUP_DIR_LTR
    /// Try to load a variant of the icon for right-to-left
    ///   text direction. Since 3.14.
    public static let dirRtl = IconLookupFlags(256) // GTK_ICON_LOOKUP_DIR_RTL
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
public struct InputHints: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GtkInputHints` enum value
    @inlinable public var value: GtkInputHints {
        get {
            func castToGtkInputHintsInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GtkInputHints(rawValue: castToGtkInputHintsInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GtkInputHints` enum value
    @inlinable public init(_ enumValue: GtkInputHints) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// No special behaviour suggested
    public static let `none` = InputHints(0) // GTK_INPUT_HINT_NONE
    /// Suggest checking for typos
    public static let spellcheck = InputHints(1) // GTK_INPUT_HINT_SPELLCHECK
    /// Suggest not checking for typos
    public static let noSpellcheck = InputHints(2) // GTK_INPUT_HINT_NO_SPELLCHECK
    /// Suggest word completion
    public static let wordCompletion = InputHints(4) // GTK_INPUT_HINT_WORD_COMPLETION
    /// Suggest to convert all text to lowercase
    public static let lowercase = InputHints(8) // GTK_INPUT_HINT_LOWERCASE
    /// Suggest to capitalize all text
    public static let uppercaseChars = InputHints(16) // GTK_INPUT_HINT_UPPERCASE_CHARS
    /// Suggest to capitalize the first
    ///     character of each word
    public static let uppercaseWords = InputHints(32) // GTK_INPUT_HINT_UPPERCASE_WORDS
    /// Suggest to capitalize the
    ///     first word of each sentence
    public static let uppercaseSentences = InputHints(64) // GTK_INPUT_HINT_UPPERCASE_SENTENCES
    /// Suggest to not show an onscreen keyboard
    ///     (e.g for a calculator that already has all the keys).
    public static let inhibitOsk = InputHints(128) // GTK_INPUT_HINT_INHIBIT_OSK
    /// The text is vertical. Since 3.18
    public static let verticalWriting = InputHints(256) // GTK_INPUT_HINT_VERTICAL_WRITING
    /// Suggest offering Emoji support. Since 3.22.20
    public static let emoji = InputHints(512) // GTK_INPUT_HINT_EMOJI
    /// Suggest not offering Emoji support. Since 3.22.20
    public static let noEmoji = InputHints(1024) // GTK_INPUT_HINT_NO_EMOJI
}



/// Describes how a rendered element connects to adjacent elements.
public struct JunctionSides: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GtkJunctionSides` enum value
    @inlinable public var value: GtkJunctionSides {
        get {
            func castToGtkJunctionSidesInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GtkJunctionSides(rawValue: castToGtkJunctionSidesInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GtkJunctionSides` enum value
    @inlinable public init(_ enumValue: GtkJunctionSides) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// No junctions.
    public static let `none` = JunctionSides(0) // GTK_JUNCTION_NONE
    /// Element connects on the top-left corner.
    public static let cornerTopleft = JunctionSides(1) // GTK_JUNCTION_CORNER_TOPLEFT
    /// Element connects on the top-right corner.
    public static let cornerTopright = JunctionSides(2) // GTK_JUNCTION_CORNER_TOPRIGHT
    /// Element connects on the bottom-left corner.
    public static let cornerBottomleft = JunctionSides(4) // GTK_JUNCTION_CORNER_BOTTOMLEFT
    /// Element connects on the bottom-right corner.
    public static let cornerBottomright = JunctionSides(8) // GTK_JUNCTION_CORNER_BOTTOMRIGHT
    /// Element connects on the top side.
    public static let top = JunctionSides(3) // GTK_JUNCTION_TOP
    /// Element connects on the bottom side.
    public static let bottom = JunctionSides(12) // GTK_JUNCTION_BOTTOM
    /// Element connects on the left side.
    public static let `left` = JunctionSides(5) // GTK_JUNCTION_LEFT
    /// Element connects on the right side.
    public static let `right` = JunctionSides(10) // GTK_JUNCTION_RIGHT
}



/// These flags serve two purposes.  First, the application can call `gtk_places_sidebar_set_open_flags()`
/// using these flags as a bitmask.  This tells the sidebar that the application is able to open
/// folders selected from the sidebar in various ways, for example, in new tabs or in new windows in
/// addition to the normal mode.
/// 
/// Second, when one of these values gets passed back to the application in the
/// `GtkPlacesSidebar::open`-location signal, it means that the application should
/// open the selected location in the normal way, in a new tab, or in a new
/// window.  The sidebar takes care of determining the desired way to open the location,
/// based on the modifier keys that the user is pressing at the time the selection is made.
/// 
/// If the application never calls `gtk_places_sidebar_set_open_flags()`, then the sidebar will only
/// use `GTK_PLACES_OPEN_NORMAL` in the `GtkPlacesSidebar::open`-location signal.  This is the
/// default mode of operation.
public struct PlacesOpenFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GtkPlacesOpenFlags` enum value
    @inlinable public var value: GtkPlacesOpenFlags {
        get {
            func castToGtkPlacesOpenFlagsInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GtkPlacesOpenFlags(rawValue: castToGtkPlacesOpenFlagsInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GtkPlacesOpenFlags` enum value
    @inlinable public init(_ enumValue: GtkPlacesOpenFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// This is the default mode that `GtkPlacesSidebar` uses if no other flags
    ///  are specified.  It indicates that the calling application should open the selected location
    ///  in the normal way, for example, in the folder view beside the sidebar.
    public static let normal = PlacesOpenFlags(1) // GTK_PLACES_OPEN_NORMAL
    /// When passed to `gtk_places_sidebar_set_open_flags()`, this indicates
    ///  that the application can open folders selected from the sidebar in new tabs.  This value
    ///  will be passed to the `GtkPlacesSidebar::open`-location signal when the user selects
    ///  that a location be opened in a new tab instead of in the standard fashion.
    public static let newTab = PlacesOpenFlags(2) // GTK_PLACES_OPEN_NEW_TAB
    /// Similar to `GTK_PLACES_OPEN_NEW_TAB`, but indicates that the application
    ///  can open folders in new windows.
    public static let newWindow = PlacesOpenFlags(4) // GTK_PLACES_OPEN_NEW_WINDOW
}



/// Deprecated
public struct RcFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GtkRcFlags` enum value
    @inlinable public var value: GtkRcFlags {
        get {
            func castToGtkRcFlagsInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GtkRcFlags(rawValue: castToGtkRcFlagsInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GtkRcFlags` enum value
    @inlinable public init(_ enumValue: GtkRcFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// Deprecated
    public static let fg = RcFlags(1) // GTK_RC_FG
    /// Deprecated
    public static let bg = RcFlags(2) // GTK_RC_BG
    /// Deprecated
    public static let text = RcFlags(4) // GTK_RC_TEXT
    /// Deprecated
    public static let base = RcFlags(8) // GTK_RC_BASE
}



/// These flags indicate what parts of a `GtkRecentFilterInfo` struct
/// are filled or need to be filled.
public struct RecentFilterFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GtkRecentFilterFlags` enum value
    @inlinable public var value: GtkRecentFilterFlags {
        get {
            func castToGtkRecentFilterFlagsInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GtkRecentFilterFlags(rawValue: castToGtkRecentFilterFlagsInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GtkRecentFilterFlags` enum value
    @inlinable public init(_ enumValue: GtkRecentFilterFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// the URI of the file being tested
    public static let uri = RecentFilterFlags(1) // GTK_RECENT_FILTER_URI
    /// the string that will be used to
    ///  display the file in the recent chooser
    public static let displayName = RecentFilterFlags(2) // GTK_RECENT_FILTER_DISPLAY_NAME
    /// the mime type of the file
    public static let mimeType = RecentFilterFlags(4) // GTK_RECENT_FILTER_MIME_TYPE
    /// the list of applications that have
    ///  registered the file
    public static let application = RecentFilterFlags(8) // GTK_RECENT_FILTER_APPLICATION
    /// the groups to which the file belongs to
    public static let group = RecentFilterFlags(16) // GTK_RECENT_FILTER_GROUP
    /// the number of days elapsed since the file
    ///  has been registered
    public static let age = RecentFilterFlags(32) // GTK_RECENT_FILTER_AGE
}



/// Describes a region within a widget.
public struct RegionFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GtkRegionFlags` enum value
    @inlinable public var value: GtkRegionFlags {
        get {
            func castToGtkRegionFlagsInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GtkRegionFlags(rawValue: castToGtkRegionFlagsInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GtkRegionFlags` enum value
    @inlinable public init(_ enumValue: GtkRegionFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// Region has an even number within a set.
    public static let even = RegionFlags(1) // GTK_REGION_EVEN
    /// Region has an odd number within a set.
    public static let odd = RegionFlags(2) // GTK_REGION_ODD
    /// Region is the first one within a set.
    public static let first = RegionFlags(4) // GTK_REGION_FIRST
    /// Region is the last one within a set.
    public static let last = RegionFlags(8) // GTK_REGION_LAST
    /// Region is the only one within a set.
    public static let only = RegionFlags(16) // GTK_REGION_ONLY
    /// Region is part of a sorted area.
    public static let sorted = RegionFlags(32) // GTK_REGION_SORTED
}



/// Describes a widget state. Widget states are used to match the widget
/// against CSS pseudo-classes. Note that GTK extends the regular CSS
/// classes and sometimes uses different names.
public struct StateFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GtkStateFlags` enum value
    @inlinable public var value: GtkStateFlags {
        get {
            func castToGtkStateFlagsInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GtkStateFlags(rawValue: castToGtkStateFlagsInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GtkStateFlags` enum value
    @inlinable public init(_ enumValue: GtkStateFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// State during normal operation.
    public static let normal = StateFlags(0) // GTK_STATE_FLAG_NORMAL
    /// Widget is active.
    public static let active = StateFlags(1) // GTK_STATE_FLAG_ACTIVE
    /// Widget has a mouse pointer over it.
    public static let prelight = StateFlags(2) // GTK_STATE_FLAG_PRELIGHT
    /// Widget is selected.
    public static let selected = StateFlags(4) // GTK_STATE_FLAG_SELECTED
    /// Widget is insensitive.
    public static let insensitive = StateFlags(8) // GTK_STATE_FLAG_INSENSITIVE
    /// Widget is inconsistent.
    public static let inconsistent = StateFlags(16) // GTK_STATE_FLAG_INCONSISTENT
    /// Widget has the keyboard focus.
    public static let focused = StateFlags(32) // GTK_STATE_FLAG_FOCUSED
    /// Widget is in a background toplevel window.
    public static let backdrop = StateFlags(64) // GTK_STATE_FLAG_BACKDROP
    /// Widget is in left-to-right text direction. Since 3.8
    public static let dirLtr = StateFlags(128) // GTK_STATE_FLAG_DIR_LTR
    /// Widget is in right-to-left text direction. Since 3.8
    public static let dirRtl = StateFlags(256) // GTK_STATE_FLAG_DIR_RTL
    /// Widget is a link. Since 3.12
    public static let link = StateFlags(512) // GTK_STATE_FLAG_LINK
    /// The location the widget points to has already been visited. Since 3.12
    public static let visited = StateFlags(1024) // GTK_STATE_FLAG_VISITED
    /// Widget is checked. Since 3.14
    public static let checked = StateFlags(2048) // GTK_STATE_FLAG_CHECKED
    /// Widget is highlighted as a drop target for DND. Since 3.20
    public static let dropActive = StateFlags(4096) // GTK_STATE_FLAG_DROP_ACTIVE
}



/// Flags that modify the behavior of `gtk_style_context_to_string()`.
/// New values may be added to this enumeration.
public struct StyleContextPrintFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GtkStyleContextPrintFlags` enum value
    @inlinable public var value: GtkStyleContextPrintFlags {
        get {
            func castToGtkStyleContextPrintFlagsInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GtkStyleContextPrintFlags(rawValue: castToGtkStyleContextPrintFlagsInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GtkStyleContextPrintFlags` enum value
    @inlinable public init(_ enumValue: GtkStyleContextPrintFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    public static let `none` = StyleContextPrintFlags(0) // GTK_STYLE_CONTEXT_PRINT_NONE
    /// Print the entire tree of
    ///     CSS nodes starting at the style context's node
    public static let recurse = StyleContextPrintFlags(1) // GTK_STYLE_CONTEXT_PRINT_RECURSE
    /// Show the values of the
    ///     CSS properties for each node
    public static let showStyle = StyleContextPrintFlags(2) // GTK_STYLE_CONTEXT_PRINT_SHOW_STYLE
}



/// The `GtkTargetFlags` enumeration is used to specify
/// constraints on a `GtkTargetEntry`.
public struct TargetFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GtkTargetFlags` enum value
    @inlinable public var value: GtkTargetFlags {
        get {
            func castToGtkTargetFlagsInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GtkTargetFlags(rawValue: castToGtkTargetFlagsInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GtkTargetFlags` enum value
    @inlinable public init(_ enumValue: GtkTargetFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// If this is set, the target will only be selected
    ///   for drags within a single application.
    public static let sameApp = TargetFlags(1) // GTK_TARGET_SAME_APP
    /// If this is set, the target will only be selected
    ///   for drags within a single widget.
    public static let sameWidget = TargetFlags(2) // GTK_TARGET_SAME_WIDGET
    /// If this is set, the target will not be selected
    ///   for drags within a single application.
    public static let otherApp = TargetFlags(4) // GTK_TARGET_OTHER_APP
    /// If this is set, the target will not be selected
    ///   for drags withing a single widget.
    public static let otherWidget = TargetFlags(8) // GTK_TARGET_OTHER_WIDGET
}



/// Flags affecting how a search is done.
/// 
/// If neither `GTK_TEXT_SEARCH_VISIBLE_ONLY` nor `GTK_TEXT_SEARCH_TEXT_ONLY` are
/// enabled, the match must be exact; the special 0xFFFC character will match
/// embedded pixbufs or child widgets.
public struct TextSearchFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GtkTextSearchFlags` enum value
    @inlinable public var value: GtkTextSearchFlags {
        get {
            func castToGtkTextSearchFlagsInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GtkTextSearchFlags(rawValue: castToGtkTextSearchFlagsInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GtkTextSearchFlags` enum value
    @inlinable public init(_ enumValue: GtkTextSearchFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// Search only visible data. A search match may
    /// have invisible text interspersed.
    public static let visibleOnly = TextSearchFlags(1) // GTK_TEXT_SEARCH_VISIBLE_ONLY
    /// Search only text. A match may have pixbufs or
    /// child widgets mixed inside the matched range.
    public static let textOnly = TextSearchFlags(2) // GTK_TEXT_SEARCH_TEXT_ONLY
    /// The text will be matched regardless of
    /// what case it is in.
    public static let caseInsensitive = TextSearchFlags(4) // GTK_TEXT_SEARCH_CASE_INSENSITIVE
}



/// Flags used to specify the supported drag targets.
public struct ToolPaletteDragTargets: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GtkToolPaletteDragTargets` enum value
    @inlinable public var value: GtkToolPaletteDragTargets {
        get {
            func castToGtkToolPaletteDragTargetsInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GtkToolPaletteDragTargets(rawValue: castToGtkToolPaletteDragTargetsInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GtkToolPaletteDragTargets` enum value
    @inlinable public init(_ enumValue: GtkToolPaletteDragTargets) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// Support drag of items.
    public static let items = ToolPaletteDragTargets(1) // GTK_TOOL_PALETTE_DRAG_ITEMS
    /// Support drag of groups.
    public static let groups = ToolPaletteDragTargets(2) // GTK_TOOL_PALETTE_DRAG_GROUPS
}



/// These flags indicate various properties of a `GtkTreeModel`.
/// 
/// They are returned by `gtk_tree_model_get_flags()`, and must be
/// static for the lifetime of the object. A more complete description
/// of `GTK_TREE_MODEL_ITERS_PERSIST` can be found in the overview of
/// this section.
public struct TreeModelFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GtkTreeModelFlags` enum value
    @inlinable public var value: GtkTreeModelFlags {
        get {
            func castToGtkTreeModelFlagsInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GtkTreeModelFlags(rawValue: castToGtkTreeModelFlagsInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GtkTreeModelFlags` enum value
    @inlinable public init(_ enumValue: GtkTreeModelFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// iterators survive all signals
    ///     emitted by the tree
    public static let itersPersist = TreeModelFlags(1) // GTK_TREE_MODEL_ITERS_PERSIST
    /// the model is a list only, and never
    ///     has children
    public static let listOnly = TreeModelFlags(2) // GTK_TREE_MODEL_LIST_ONLY
}



/// These enumeration values are used by `gtk_ui_manager_add_ui()` to determine
/// what UI element to create.
///
/// **UIManagerItemType is deprecated:**
/// This method is deprecated.
public struct UIManagerItemType: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GtkUIManagerItemType` enum value
    @inlinable public var value: GtkUIManagerItemType {
        get {
            func castToGtkUIManagerItemTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GtkUIManagerItemType(rawValue: castToGtkUIManagerItemTypeInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GtkUIManagerItemType` enum value
    @inlinable public init(_ enumValue: GtkUIManagerItemType) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// Pick the type of the UI element according to context.
    public static let auto = UIManagerItemType(0) // GTK_UI_MANAGER_AUTO
    /// Create a menubar.
    public static let menubar = UIManagerItemType(1) // GTK_UI_MANAGER_MENUBAR
    /// Create a menu.
    public static let menu = UIManagerItemType(2) // GTK_UI_MANAGER_MENU
    /// Create a toolbar.
    public static let toolbar = UIManagerItemType(4) // GTK_UI_MANAGER_TOOLBAR
    /// Insert a placeholder.
    public static let placeholder = UIManagerItemType(8) // GTK_UI_MANAGER_PLACEHOLDER
    /// Create a popup menu.
    public static let popup = UIManagerItemType(16) // GTK_UI_MANAGER_POPUP
    /// Create a menuitem.
    public static let menuitem = UIManagerItemType(32) // GTK_UI_MANAGER_MENUITEM
    /// Create a toolitem.
    public static let toolitem = UIManagerItemType(64) // GTK_UI_MANAGER_TOOLITEM
    /// Create a separator.
    public static let separator = UIManagerItemType(128) // GTK_UI_MANAGER_SEPARATOR
    /// Install an accelerator.
    public static let accelerator = UIManagerItemType(256) // GTK_UI_MANAGER_ACCELERATOR
    /// Same as `GTK_UI_MANAGER_POPUP`, but the
    ///   actions’ accelerators are shown.
    public static let popupWithAccels = UIManagerItemType(512) // GTK_UI_MANAGER_POPUP_WITH_ACCELS
}

