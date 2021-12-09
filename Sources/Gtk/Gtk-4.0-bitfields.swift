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

/// Types of user actions that may be blocked by `GtkApplication`.
/// 
/// See [method`Gtk.Application.inhibit`].
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
    ///   by logging out or by shutting down the computer
    public static let logout = ApplicationInhibitFlags(1) // GTK_APPLICATION_INHIBIT_LOGOUT

    /// Inhibit user switching
    public static let `switch` = ApplicationInhibitFlags(2) // GTK_APPLICATION_INHIBIT_SWITCH

    /// Inhibit suspending the
    ///   session or computer
    public static let suspend = ApplicationInhibitFlags(4) // GTK_APPLICATION_INHIBIT_SUSPEND

    /// Inhibit the session being
    ///   marked as idle (and possibly locked)
    public static let idle = ApplicationInhibitFlags(8) // GTK_APPLICATION_INHIBIT_IDLE

}



/// The list of flags that can be passed to `gtk_builder_create_closure()`.
/// 
/// New values may be added in the future for new features, so external
/// implementations of [iface`Gtk.BuilderScope`] should test the flags
/// for unknown values and raise a `GTK_BUILDER_ERROR_INVALID_ATTRIBUTE` error
/// when they encounter one.
public struct BuilderClosureFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GtkBuilderClosureFlags` enum value
    @inlinable public var value: GtkBuilderClosureFlags {
        get {
            func castToGtkBuilderClosureFlagsInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GtkBuilderClosureFlags(rawValue: castToGtkBuilderClosureFlagsInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GtkBuilderClosureFlags` enum value
    @inlinable public init(_ enumValue: GtkBuilderClosureFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// The closure should be created swapped. See
    ///   `g_cclosure_new_swap()` for details.
    public static let swapped = BuilderClosureFlags(1) // GTK_BUILDER_CLOSURE_SWAPPED

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

    /// The cell is in a row that can be expanded
    public static let expandable = CellRendererState(32) // GTK_CELL_RENDERER_EXPANDABLE

    /// The cell is in a row that is expanded
    public static let expanded = CellRendererState(64) // GTK_CELL_RENDERER_EXPANDED

}



/// Flags to use with `gtk_set_debug_flags()`.
/// 
/// Settings these flags causes GTK to print out different
/// types of debugging information. Some of these flags are
/// only available when GTK has been configured with `-Ddebug=true`.
public struct DebugFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GtkDebugFlags` enum value
    @inlinable public var value: GtkDebugFlags {
        get {
            func castToGtkDebugFlagsInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GtkDebugFlags(rawValue: castToGtkDebugFlagsInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GtkDebugFlags` enum value
    @inlinable public init(_ enumValue: GtkDebugFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// Information about GtkTextView
    public static let text = DebugFlags(1) // GTK_DEBUG_TEXT

    /// Information about GtkTreeView
    public static let tree = DebugFlags(2) // GTK_DEBUG_TREE

    /// Information about keyboard shortcuts
    public static let keybindings = DebugFlags(4) // GTK_DEBUG_KEYBINDINGS

    /// Information about modules and extensions
    public static let modules = DebugFlags(8) // GTK_DEBUG_MODULES

    /// Information about size allocation
    public static let geometry = DebugFlags(16) // GTK_DEBUG_GEOMETRY

    /// Information about icon themes
    public static let icontheme = DebugFlags(32) // GTK_DEBUG_ICONTHEME

    /// Information about printing
    public static let printing = DebugFlags(64) // GTK_DEBUG_PRINTING

    /// Trace GtkBuilder operation
    public static let builder = DebugFlags(128) // GTK_DEBUG_BUILDER

    /// Information about size requests
    public static let sizeRequest = DebugFlags(256) // GTK_DEBUG_SIZE_REQUEST

    /// Disable the style property cache
    public static let noCssCache = DebugFlags(512) // GTK_DEBUG_NO_CSS_CACHE

    /// Open the GTK inspector
    public static let interactive = DebugFlags(1024) // GTK_DEBUG_INTERACTIVE

    /// Pretend the pointer is a touchscreen
    public static let touchscreen = DebugFlags(2048) // GTK_DEBUG_TOUCHSCREEN

    /// Information about actions and menu models
    public static let actions = DebugFlags(4096) // GTK_DEBUG_ACTIONS

    /// Information from layout managers
    public static let layout = DebugFlags(8192) // GTK_DEBUG_LAYOUT

    /// Include debug render nodes in the generated snapshots
    public static let snapshot = DebugFlags(16384) // GTK_DEBUG_SNAPSHOT

    /// Information from the constraints solver
    public static let constraints = DebugFlags(32768) // GTK_DEBUG_CONSTRAINTS

    /// Log unused GtkBuilder objects
    public static let builderObjects = DebugFlags(65536) // GTK_DEBUG_BUILDER_OBJECTS

    /// Information about accessibility state changes
    public static let a11y = DebugFlags(131072) // GTK_DEBUG_A11Y

    /// Information about icon fallback. Since: 4.2
    public static let iconfallback = DebugFlags(262144) // GTK_DEBUG_ICONFALLBACK

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

    /// Make the constructed dialog modal
    public static let modal = DialogFlags(1) // GTK_DIALOG_MODAL

    /// Destroy the dialog when its parent is destroyed
    public static let destroyWithParent = DialogFlags(2) // GTK_DIALOG_DESTROY_WITH_PARENT

    /// Create dialog with actions in header
    ///   bar instead of action area
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

    /// Emit `decelerate` after continuous scroll finishes.
    public static let kinetic = EventControllerScrollFlags(8) // GTK_EVENT_CONTROLLER_SCROLL_KINETIC

    /// Emit scroll on both axes.
    public static let bothAxes = EventControllerScrollFlags(3) // GTK_EVENT_CONTROLLER_SCROLL_BOTH_AXES

}



/// Specifies the granularity of font selection
/// that is desired in a `GtkFontChooser`.
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

    /// Allow changing OpenType font variation axes
    public static let variations = FontChooserLevel(4) // GTK_FONT_CHOOSER_LEVEL_VARIATIONS

    /// Allow selecting specific OpenType font features
    public static let features = FontChooserLevel(8) // GTK_FONT_CHOOSER_LEVEL_FEATURES

}



/// Used to specify options for `gtk_icon_theme_lookup_icon()`.
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

    /// Try to always load regular icons, even
    ///   when symbolic icon names are given
    public static let forceRegular = IconLookupFlags(1) // GTK_ICON_LOOKUP_FORCE_REGULAR

    /// Try to always load symbolic icons, even
    ///   when regular icon names are given
    public static let forceSymbolic = IconLookupFlags(2) // GTK_ICON_LOOKUP_FORCE_SYMBOLIC

    /// Starts loading the texture in the background
    ///   so it is ready when later needed.
    public static let preload = IconLookupFlags(4) // GTK_ICON_LOOKUP_PRELOAD

}



/// Describes hints that might be taken into account by input methods
/// or applications.
/// 
/// Note that input methods may already tailor their behaviour according
/// to the `GtkInputPurpose` of the entry.
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
    ///   character of each word
    public static let uppercaseWords = InputHints(32) // GTK_INPUT_HINT_UPPERCASE_WORDS

    /// Suggest to capitalize the
    ///   first word of each sentence
    public static let uppercaseSentences = InputHints(64) // GTK_INPUT_HINT_UPPERCASE_SENTENCES

    /// Suggest to not show an onscreen keyboard
    ///   (e.g for a calculator that already has all the keys).
    public static let inhibitOsk = InputHints(128) // GTK_INPUT_HINT_INHIBIT_OSK

    /// The text is vertical
    public static let verticalWriting = InputHints(256) // GTK_INPUT_HINT_VERTICAL_WRITING

    /// Suggest offering Emoji support
    public static let emoji = InputHints(512) // GTK_INPUT_HINT_EMOJI

    /// Suggest not offering Emoji support
    public static let noEmoji = InputHints(1024) // GTK_INPUT_HINT_NO_EMOJI

    /// Request that the input method should not
    ///    update personalized data (like typing history)
    public static let `private` = InputHints(2048) // GTK_INPUT_HINT_PRIVATE

}



/// Flags that influence the behavior of `gtk_widget_pick()`.
public struct PickFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GtkPickFlags` enum value
    @inlinable public var value: GtkPickFlags {
        get {
            func castToGtkPickFlagsInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GtkPickFlags(rawValue: castToGtkPickFlagsInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GtkPickFlags` enum value
    @inlinable public init(_ enumValue: GtkPickFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// The default behavior, include widgets that are receiving events
    public static let `default` = PickFlags(0) // GTK_PICK_DEFAULT

    /// Include widgets that are insensitive
    public static let insensitive = PickFlags(1) // GTK_PICK_INSENSITIVE

    /// Include widgets that are marked as non-targetable. See `GtkWidget:can-target`
    public static let nonTargetable = PickFlags(2) // GTK_PICK_NON_TARGETABLE

}



/// Flags that affect how popover menus are created from
/// a menu model.
public struct PopoverMenuFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GtkPopoverMenuFlags` enum value
    @inlinable public var value: GtkPopoverMenuFlags {
        get {
            func castToGtkPopoverMenuFlagsInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GtkPopoverMenuFlags(rawValue: castToGtkPopoverMenuFlagsInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GtkPopoverMenuFlags` enum value
    @inlinable public init(_ enumValue: GtkPopoverMenuFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// Create submenus as nested
    ///    popovers. Without this flag, submenus are created as
    ///    sliding pages that replace the main menu.
    public static let nested = PopoverMenuFlags(1) // GTK_POPOVER_MENU_NESTED

}



/// Specifies which features the print dialog should offer.
/// 
/// If neither `GTK_PRINT_CAPABILITY_GENERATE_PDF` nor
/// `GTK_PRINT_CAPABILITY_GENERATE_PS` is specified, GTK assumes that all
/// formats are supported.
public struct PrintCapabilities: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GtkPrintCapabilities` enum value
    @inlinable public var value: GtkPrintCapabilities {
        get {
            func castToGtkPrintCapabilitiesInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GtkPrintCapabilities(rawValue: castToGtkPrintCapabilitiesInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GtkPrintCapabilities` enum value
    @inlinable public init(_ enumValue: GtkPrintCapabilities) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// Print dialog will offer printing even/odd pages.
    public static let pageSet = PrintCapabilities(1) // GTK_PRINT_CAPABILITY_PAGE_SET

    /// Print dialog will allow to print multiple copies.
    public static let copies = PrintCapabilities(2) // GTK_PRINT_CAPABILITY_COPIES

    /// Print dialog will allow to collate multiple copies.
    public static let collate = PrintCapabilities(4) // GTK_PRINT_CAPABILITY_COLLATE

    /// Print dialog will allow to print pages in reverse order.
    public static let reverse = PrintCapabilities(8) // GTK_PRINT_CAPABILITY_REVERSE

    /// Print dialog will allow to scale the output.
    public static let scale = PrintCapabilities(16) // GTK_PRINT_CAPABILITY_SCALE

    /// The program will send the document to
    ///   the printer in PDF format
    public static let generatePdf = PrintCapabilities(32) // GTK_PRINT_CAPABILITY_GENERATE_PDF

    /// The program will send the document to
    ///   the printer in Postscript format
    public static let generatePs = PrintCapabilities(64) // GTK_PRINT_CAPABILITY_GENERATE_PS

    /// Print dialog will offer a preview
    public static let preview = PrintCapabilities(128) // GTK_PRINT_CAPABILITY_PREVIEW

    /// Print dialog will offer printing multiple
    ///   pages per sheet
    public static let numberUp = PrintCapabilities(256) // GTK_PRINT_CAPABILITY_NUMBER_UP

    /// Print dialog will allow to rearrange
    ///   pages when printing multiple pages per sheet
    public static let numberUpLayout = PrintCapabilities(512) // GTK_PRINT_CAPABILITY_NUMBER_UP_LAYOUT

}



/// List of flags that can be passed to action activation.
/// 
/// More flags may be added in the future.
public struct ShortcutActionFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    @inlinable public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    @inlinable public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GtkShortcutActionFlags` enum value
    @inlinable public var value: GtkShortcutActionFlags {
        get {
            func castToGtkShortcutActionFlagsInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
            return GtkShortcutActionFlags(rawValue: castToGtkShortcutActionFlagsInt(rawValue))
        }
        set { rawValue = UInt32(newValue.rawValue) }
    }

    /// Creates a new instance with the specified raw value
    @inlinable public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GtkShortcutActionFlags` enum value
    @inlinable public init(_ enumValue: GtkShortcutActionFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    @inlinable public init<I: BinaryInteger>(_ intValue: I) { self.rawValue = UInt32(intValue)  }

    /// The action is the only
    ///   action that can be activated. If this flag is not set,
    ///   a future activation may select a different action.
    public static let exclusive = ShortcutActionFlags(1) // GTK_SHORTCUT_ACTION_EXCLUSIVE

}



/// Describes a widget state.
/// 
/// Widget states are used to match the widget against CSS pseudo-classes.
/// Note that GTK extends the regular CSS classes and sometimes uses
/// different names.
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

    /// State during normal operation
    public static let normal = StateFlags(0) // GTK_STATE_FLAG_NORMAL

    /// Widget is active
    public static let active = StateFlags(1) // GTK_STATE_FLAG_ACTIVE

    /// Widget has a mouse pointer over it
    public static let prelight = StateFlags(2) // GTK_STATE_FLAG_PRELIGHT

    /// Widget is selected
    public static let selected = StateFlags(4) // GTK_STATE_FLAG_SELECTED

    /// Widget is insensitive
    public static let insensitive = StateFlags(8) // GTK_STATE_FLAG_INSENSITIVE

    /// Widget is inconsistent
    public static let inconsistent = StateFlags(16) // GTK_STATE_FLAG_INCONSISTENT

    /// Widget has the keyboard focus
    public static let focused = StateFlags(32) // GTK_STATE_FLAG_FOCUSED

    /// Widget is in a background toplevel window
    public static let backdrop = StateFlags(64) // GTK_STATE_FLAG_BACKDROP

    /// Widget is in left-to-right text direction
    public static let dirLtr = StateFlags(128) // GTK_STATE_FLAG_DIR_LTR

    /// Widget is in right-to-left text direction
    public static let dirRtl = StateFlags(256) // GTK_STATE_FLAG_DIR_RTL

    /// Widget is a link
    public static let link = StateFlags(512) // GTK_STATE_FLAG_LINK

    /// The location the widget points to has already been visited
    public static let visited = StateFlags(1024) // GTK_STATE_FLAG_VISITED

    /// Widget is checked
    public static let checked = StateFlags(2048) // GTK_STATE_FLAG_CHECKED

    /// Widget is highlighted as a drop target for DND
    public static let dropActive = StateFlags(4096) // GTK_STATE_FLAG_DROP_ACTIVE

    /// Widget has the visible focus
    public static let focusVisible = StateFlags(8192) // GTK_STATE_FLAG_FOCUS_VISIBLE

    /// Widget contains the keyboard focus
    public static let focusWithin = StateFlags(16384) // GTK_STATE_FLAG_FOCUS_WITHIN

}



/// Flags that modify the behavior of `gtk_style_context_to_string()`.
/// 
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

    /// Default value.
    public static let `none` = StyleContextPrintFlags(0) // GTK_STYLE_CONTEXT_PRINT_NONE

    /// Print the entire tree of
    ///   CSS nodes starting at the style context's node
    public static let recurse = StyleContextPrintFlags(1) // GTK_STYLE_CONTEXT_PRINT_RECURSE

    /// Show the values of the
    ///   CSS properties for each node
    public static let showStyle = StyleContextPrintFlags(2) // GTK_STYLE_CONTEXT_PRINT_SHOW_STYLE

    /// Show information about
    ///   what changes affect the styles
    public static let showChange = StyleContextPrintFlags(4) // GTK_STYLE_CONTEXT_PRINT_SHOW_CHANGE

}



/// Flags affecting how a search is done.
/// 
/// If neither `GTK_TEXT_SEARCH_VISIBLE_ONLY` nor `GTK_TEXT_SEARCH_TEXT_ONLY` are
/// enabled, the match must be exact; the special 0xFFFC character will match
/// embedded paintables or child widgets.
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

    /// Search only text. A match may have paintables or
    /// child widgets mixed inside the matched range.
    public static let textOnly = TextSearchFlags(2) // GTK_TEXT_SEARCH_TEXT_ONLY

    /// The text will be matched regardless of
    /// what case it is in.
    public static let caseInsensitive = TextSearchFlags(4) // GTK_TEXT_SEARCH_CASE_INSENSITIVE

}



/// These flags indicate various properties of a `GtkTreeModel`.
/// 
/// They are returned by [method`Gtk.TreeModel.get_flags`], and must be
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
    ///   emitted by the tree
    public static let itersPersist = TreeModelFlags(1) // GTK_TREE_MODEL_ITERS_PERSIST

    /// the model is a list only, and never
    ///   has children
    public static let listOnly = TreeModelFlags(2) // GTK_TREE_MODEL_LIST_ONLY

}

