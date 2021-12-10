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

/// Controls how a widget deals with extra space in a single (x or y)
/// dimension.
/// 
/// Alignment only matters if the widget receives a “too large” allocation,
/// for example if you packed the widget with the `GtkWidget:expand`
/// flag inside a `GtkBox`, then the widget might get extra space.  If
/// you have for example a 16x16 icon inside a 32x32 space, the icon
/// could be scaled and stretched, it could be centered, or it could be
/// positioned to one side of the space.
/// 
/// Note that in horizontal context `GTK_ALIGN_START` and `GTK_ALIGN_END`
/// are interpreted relative to text direction.
/// 
/// GTK_ALIGN_BASELINE support for it is optional for containers and widgets, and
/// it is only supported for vertical alignment.  When its not supported by
/// a child or a container it is treated as `GTK_ALIGN_FILL`.
public typealias Align = GtkAlign


public extension Align {
    /// Cast constructor, converting any binary integer to a
    /// `Align`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToAlignInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToAlignInt(raw))
    }
    /// stretch to fill all space if possible, center if
    ///     no meaningful way to stretch
    static let fill = GTK_ALIGN_FILL // 0

    /// snap to left or top side, leaving space on right
    ///     or bottom
    static let start = GTK_ALIGN_START // 1

    /// snap to right or bottom side, leaving space on left
    ///     or top
    static let end = GTK_ALIGN_END // 2

    /// center natural width of widget inside the
    ///     allocation
    static let center = GTK_ALIGN_CENTER // 3

    /// align the widget according to the baseline. Since 3.10.
    static let baseline = GTK_ALIGN_BASELINE // 4

}



/// Used to specify the placement of scroll arrows in scrolling menus.
public typealias ArrowPlacement = GtkArrowPlacement


public extension ArrowPlacement {
    /// Cast constructor, converting any binary integer to a
    /// `ArrowPlacement`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToArrowPlacementInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToArrowPlacementInt(raw))
    }
    /// Place one arrow on each end of the menu.
    static let both = GTK_ARROWS_BOTH // 0

    /// Place both arrows at the top of the menu.
    static let start = GTK_ARROWS_START // 1

    /// Place both arrows at the bottom of the menu.
    static let end = GTK_ARROWS_END // 2

}



/// Used to indicate the direction in which an arrow should point.
public typealias ArrowType = GtkArrowType


public extension ArrowType {
    /// Cast constructor, converting any binary integer to a
    /// `ArrowType`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToArrowTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToArrowTypeInt(raw))
    }
    /// Represents an upward pointing arrow.
    static let up = GTK_ARROW_UP // 0

    /// Represents a downward pointing arrow.
    static let down = GTK_ARROW_DOWN // 1

    /// Represents a left pointing arrow.
    static let `left` = GTK_ARROW_LEFT // 2

    /// Represents a right pointing arrow.
    static let `right` = GTK_ARROW_RIGHT // 3

    /// No arrow. Since 2.10.
    static let `none` = GTK_ARROW_NONE // 4

}



/// An enum for determining the page role inside the `GtkAssistant`. It's
/// used to handle buttons sensitivity and visibility.
/// 
/// Note that an assistant needs to end its page flow with a page of type
/// `GTK_ASSISTANT_PAGE_CONFIRM`, `GTK_ASSISTANT_PAGE_SUMMARY` or
/// `GTK_ASSISTANT_PAGE_PROGRESS` to be correct.
/// 
/// The Cancel button will only be shown if the page isn’t “committed”.
/// See `gtk_assistant_commit()` for details.
public typealias AssistantPageType = GtkAssistantPageType


public extension AssistantPageType {
    /// Cast constructor, converting any binary integer to a
    /// `AssistantPageType`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToAssistantPageTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToAssistantPageTypeInt(raw))
    }
    /// The page has regular contents. Both the
    ///  Back and forward buttons will be shown.
    static let content = GTK_ASSISTANT_PAGE_CONTENT // 0

    /// The page contains an introduction to the
    ///  assistant task. Only the Forward button will be shown if there is a
    ///   next page.
    static let intro = GTK_ASSISTANT_PAGE_INTRO // 1

    /// The page lets the user confirm or deny the
    ///  changes. The Back and Apply buttons will be shown.
    static let confirm = GTK_ASSISTANT_PAGE_CONFIRM // 2

    /// The page informs the user of the changes
    ///  done. Only the Close button will be shown.
    static let summary = GTK_ASSISTANT_PAGE_SUMMARY // 3

    /// Used for tasks that take a long time to
    ///  complete, blocks the assistant until the page is marked as complete.
    ///   Only the back button will be shown.
    static let progress = GTK_ASSISTANT_PAGE_PROGRESS // 4

    /// Used for when other page types are not
    ///  appropriate. No buttons will be shown, and the application must
    ///  add its own buttons through `gtk_assistant_add_action_widget()`.
    static let custom = GTK_ASSISTANT_PAGE_CUSTOM // 5

}



/// Whenever a container has some form of natural row it may align
/// children in that row along a common typographical baseline. If
/// the amount of verical space in the row is taller than the total
/// requested height of the baseline-aligned children then it can use a
/// `GtkBaselinePosition` to select where to put the baseline inside the
/// extra availible space.
public typealias BaselinePosition = GtkBaselinePosition


public extension BaselinePosition {
    /// Cast constructor, converting any binary integer to a
    /// `BaselinePosition`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToBaselinePositionInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToBaselinePositionInt(raw))
    }
    /// Align the baseline at the top
    static let top = GTK_BASELINE_POSITION_TOP // 0

    /// Center the baseline
    static let center = GTK_BASELINE_POSITION_CENTER // 1

    /// Align the baseline at the bottom
    static let bottom = GTK_BASELINE_POSITION_BOTTOM // 2

}



/// Describes how the border of a UI element should be rendered.
public typealias BorderStyle = GtkBorderStyle


public extension BorderStyle {
    /// Cast constructor, converting any binary integer to a
    /// `BorderStyle`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToBorderStyleInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToBorderStyleInt(raw))
    }
    /// No visible border
    static let `none` = GTK_BORDER_STYLE_NONE // 0

    /// A single line segment
    static let solid = GTK_BORDER_STYLE_SOLID // 1

    /// Looks as if the content is sunken into the canvas
    static let inset = GTK_BORDER_STYLE_INSET // 2

    /// Looks as if the content is coming out of the canvas
    static let outset = GTK_BORDER_STYLE_OUTSET // 3

    /// Same as `GTK_BORDER_STYLE_NONE`
    static let hidden = GTK_BORDER_STYLE_HIDDEN // 4

    /// A series of round dots
    static let dotted = GTK_BORDER_STYLE_DOTTED // 5

    /// A series of square-ended dashes
    static let dashed = GTK_BORDER_STYLE_DASHED // 6

    /// Two parallel lines with some space between them
    static let double = GTK_BORDER_STYLE_DOUBLE // 7

    /// Looks as if it were carved in the canvas
    static let groove = GTK_BORDER_STYLE_GROOVE // 8

    /// Looks as if it were coming out of the canvas
    static let ridge = GTK_BORDER_STYLE_RIDGE // 9

}



/// Error codes that identify various errors that can occur while using
/// `GtkBuilder`.
public typealias BuilderError = GtkBuilderError


public extension BuilderError {
    /// Cast constructor, converting any binary integer to a
    /// `BuilderError`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToBuilderErrorInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToBuilderErrorInt(raw))
    }
    /// A type-func attribute didn’t name
    ///  a function that returns a `GType`.
    static let invalidTypeFunction = GTK_BUILDER_ERROR_INVALID_TYPE_FUNCTION // 0

    /// The input contained a tag that `GtkBuilder`
    ///  can’t handle.
    static let unhandledTag = GTK_BUILDER_ERROR_UNHANDLED_TAG // 1

    /// An attribute that is required by
    ///  `GtkBuilder` was missing.
    static let missingAttribute = GTK_BUILDER_ERROR_MISSING_ATTRIBUTE // 2

    /// `GtkBuilder` found an attribute that
    ///  it doesn’t understand.
    static let invalidAttribute = GTK_BUILDER_ERROR_INVALID_ATTRIBUTE // 3

    /// `GtkBuilder` found a tag that
    ///  it doesn’t understand.
    static let invalidTag = GTK_BUILDER_ERROR_INVALID_TAG // 4

    /// A required property value was
    ///  missing.
    static let missingPropertyValue = GTK_BUILDER_ERROR_MISSING_PROPERTY_VALUE // 5

    /// `GtkBuilder` couldn’t parse
    ///  some attribute value.
    static let invalidValue = GTK_BUILDER_ERROR_INVALID_VALUE // 6

    /// The input file requires a newer version
    ///  of GTK+.
    static let versionMismatch = GTK_BUILDER_ERROR_VERSION_MISMATCH // 7

    /// An object id occurred twice.
    static let duplicateID = GTK_BUILDER_ERROR_DUPLICATE_ID // 8

    /// A specified object type is of the same type or
    ///  derived from the type of the composite class being extended with builder XML.
    static let objectTypeRefused = GTK_BUILDER_ERROR_OBJECT_TYPE_REFUSED // 9

    /// The wrong type was specified in a composite class’s template XML
    static let templateMismatch = GTK_BUILDER_ERROR_TEMPLATE_MISMATCH // 10

    /// The specified property is unknown for the object class.
    static let invalidProperty = GTK_BUILDER_ERROR_INVALID_PROPERTY // 11

    /// The specified signal is unknown for the object class.
    static let invalidSignal = GTK_BUILDER_ERROR_INVALID_SIGNAL // 12

    /// An object id is unknown
    static let invalidID = GTK_BUILDER_ERROR_INVALID_ID // 13

}



/// Used to dictate the style that a `GtkButtonBox` uses to layout the buttons it
/// contains.
public typealias ButtonBoxStyle = GtkButtonBoxStyle


public extension ButtonBoxStyle {
    /// Cast constructor, converting any binary integer to a
    /// `ButtonBoxStyle`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToButtonBoxStyleInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToButtonBoxStyleInt(raw))
    }
    /// Buttons are evenly spread across the box.
    static let spread = GTK_BUTTONBOX_SPREAD // 1

    /// Buttons are placed at the edges of the box.
    static let edge = GTK_BUTTONBOX_EDGE // 2

    /// Buttons are grouped towards the start of the box,
    ///   (on the left for a HBox, or the top for a VBox).
    static let start = GTK_BUTTONBOX_START // 3

    /// Buttons are grouped towards the end of the box,
    ///   (on the right for a HBox, or the bottom for a VBox).
    static let end = GTK_BUTTONBOX_END // 4

    /// Buttons are centered in the box. Since 2.12.
    static let center = GTK_BUTTONBOX_CENTER // 5

    /// Buttons expand to fill the box. This entails giving
    ///   buttons a "linked" appearance, making button sizes homogeneous, and
    ///   setting spacing to 0 (same as calling `gtk_box_set_homogeneous()` and
    ///   `gtk_box_set_spacing()` manually). Since 3.12.
    static let expand = GTK_BUTTONBOX_EXPAND // 6

}



/// The role specifies the desired appearance of a `GtkModelButton`.
public typealias ButtonRole = GtkButtonRole


public extension ButtonRole {
    /// Cast constructor, converting any binary integer to a
    /// `ButtonRole`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToButtonRoleInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToButtonRoleInt(raw))
    }
    /// A plain button
    static let normal = GTK_BUTTON_ROLE_NORMAL // 0

    /// A check button
    static let check = GTK_BUTTON_ROLE_CHECK // 1

    /// A radio button
    static let radio = GTK_BUTTON_ROLE_RADIO // 2

}



/// Prebuilt sets of buttons for the dialog. If
/// none of these choices are appropriate, simply use `GTK_BUTTONS_NONE`
/// then call `gtk_dialog_add_buttons()`.
/// 
/// &gt; Please note that `GTK_BUTTONS_OK`, `GTK_BUTTONS_YES_NO`
/// &gt; and `GTK_BUTTONS_OK_CANCEL` are discouraged by the
/// &gt; [GNOME Human Interface Guidelines](http://library.gnome.org/devel/hig-book/stable/).
public typealias ButtonsType = GtkButtonsType


public extension ButtonsType {
    /// Cast constructor, converting any binary integer to a
    /// `ButtonsType`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToButtonsTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToButtonsTypeInt(raw))
    }
    /// no buttons at all
    static let `none` = GTK_BUTTONS_NONE // 0

    /// an OK button
    static let ok = GTK_BUTTONS_OK // 1

    /// a Close button
    static let close = GTK_BUTTONS_CLOSE // 2

    /// a Cancel button
    static let cancel = GTK_BUTTONS_CANCEL // 3

    /// Yes and No buttons
    static let yesNo = GTK_BUTTONS_YES_NO // 4

    /// OK and Cancel buttons
    static let okCancel = GTK_BUTTONS_OK_CANCEL // 5

}



/// Determines if the edited accelerators are GTK+ accelerators. If
/// they are, consumed modifiers are suppressed, only accelerators
/// accepted by GTK+ are allowed, and the accelerators are rendered
/// in the same way as they are in menus.
public typealias CellRendererAccelMode = GtkCellRendererAccelMode


public extension CellRendererAccelMode {
    /// Cast constructor, converting any binary integer to a
    /// `CellRendererAccelMode`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToCellRendererAccelModeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToCellRendererAccelModeInt(raw))
    }
    /// GTK+ accelerators mode
    static let gtk = GTK_CELL_RENDERER_ACCEL_MODE_GTK // 0

    /// Other accelerator mode
    static let other = GTK_CELL_RENDERER_ACCEL_MODE_OTHER // 1

}



/// Identifies how the user can interact with a particular cell.
public typealias CellRendererMode = GtkCellRendererMode


public extension CellRendererMode {
    /// Cast constructor, converting any binary integer to a
    /// `CellRendererMode`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToCellRendererModeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToCellRendererModeInt(raw))
    }
    /// The cell is just for display
    ///  and cannot be interacted with.  Note that this doesn’t mean that eg. the
    ///  row being drawn can’t be selected -- just that a particular element of
    ///  it cannot be individually modified.
    static let inert = GTK_CELL_RENDERER_MODE_INERT // 0

    /// The cell can be clicked.
    static let activatable = GTK_CELL_RENDERER_MODE_ACTIVATABLE // 1

    /// The cell can be edited or otherwise modified.
    static let editable = GTK_CELL_RENDERER_MODE_EDITABLE // 2

}



/// Specifies which corner a child widget should be placed in when packed into
/// a `GtkScrolledWindow`. This is effectively the opposite of where the scroll
/// bars are placed.
public typealias CornerType = GtkCornerType


public extension CornerType {
    /// Cast constructor, converting any binary integer to a
    /// `CornerType`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToCornerTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToCornerTypeInt(raw))
    }
    /// Place the scrollbars on the right and bottom of the
    ///  widget (default behaviour).
    static let topLeft = GTK_CORNER_TOP_LEFT // 0

    /// Place the scrollbars on the top and right of the
    ///  widget.
    static let bottomLeft = GTK_CORNER_BOTTOM_LEFT // 1

    /// Place the scrollbars on the left and bottom of the
    ///  widget.
    static let topRight = GTK_CORNER_TOP_RIGHT // 2

    /// Place the scrollbars on the top and left of the
    ///  widget.
    static let bottomRight = GTK_CORNER_BOTTOM_RIGHT // 3

}



/// Error codes for `GTK_CSS_PROVIDER_ERROR`.
public typealias CssProviderError = GtkCssProviderError


public extension CssProviderError {
    /// Cast constructor, converting any binary integer to a
    /// `CssProviderError`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToCssProviderErrorInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToCssProviderErrorInt(raw))
    }
    /// Failed.
    static let failed = GTK_CSS_PROVIDER_ERROR_FAILED // 0

    /// Syntax error.
    static let syntax = GTK_CSS_PROVIDER_ERROR_SYNTAX // 1

    /// Import error.
    static let `import` = GTK_CSS_PROVIDER_ERROR_IMPORT // 2

    /// Name error.
    static let name = GTK_CSS_PROVIDER_ERROR_NAME // 3

    /// Deprecation error.
    static let deprecated = GTK_CSS_PROVIDER_ERROR_DEPRECATED // 4

    /// Unknown value.
    static let unknownValue = GTK_CSS_PROVIDER_ERROR_UNKNOWN_VALUE // 5

}



/// The different types of sections indicate parts of a CSS document as
/// parsed by GTK’s CSS parser. They are oriented towards the
/// [CSS Grammar](http://www.w3.org/TR/CSS21/grammar.html),
/// but may contain extensions.
/// 
/// More types might be added in the future as the parser incorporates
/// more features.
public typealias CssSectionType = GtkCssSectionType


public extension CssSectionType {
    /// Cast constructor, converting any binary integer to a
    /// `CssSectionType`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToCssSectionTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToCssSectionTypeInt(raw))
    }
    /// The section describes a complete document.
    ///   This section time is the only one where `gtk_css_section_get_parent()`
    ///   might return `nil`.
    static let document = GTK_CSS_SECTION_DOCUMENT // 0

    /// The section defines an import rule.
    static let `import` = GTK_CSS_SECTION_IMPORT // 1

    /// The section defines a color. This
    ///   is a GTK extension to CSS.
    static let colorDefinition = GTK_CSS_SECTION_COLOR_DEFINITION // 2

    /// The section defines a binding set. This
    ///   is a GTK extension to CSS.
    static let bindingSet = GTK_CSS_SECTION_BINDING_SET // 3

    /// The section defines a CSS ruleset.
    static let ruleset = GTK_CSS_SECTION_RULESET // 4

    /// The section defines a CSS selector.
    static let selector = GTK_CSS_SECTION_SELECTOR // 5

    /// The section defines the declaration of
    ///   a CSS variable.
    static let declaration = GTK_CSS_SECTION_DECLARATION // 6

    /// The section defines the value of a CSS declaration.
    static let value = GTK_CSS_SECTION_VALUE // 7

    /// The section defines keyframes. See [CSS
    ///   Animations](http://dev.w3.org/csswg/css3-animations/`keyframes`) for details. Since 3.6
    static let keyframes = GTK_CSS_SECTION_KEYFRAMES // 8

}



/// See also: `GtkEntry::delete-from-cursor`.
public typealias DeleteType = GtkDeleteType


public extension DeleteType {
    /// Cast constructor, converting any binary integer to a
    /// `DeleteType`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToDeleteTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToDeleteTypeInt(raw))
    }
    /// Delete characters.
    static let chars = GTK_DELETE_CHARS // 0

    /// Delete only the portion of the word to the
    ///   left/right of cursor if we’re in the middle of a word.
    static let wordEnds = GTK_DELETE_WORD_ENDS // 1

    /// Delete words.
    static let words = GTK_DELETE_WORDS // 2

    /// Delete display-lines. Display-lines
    ///   refers to the visible lines, with respect to to the current line
    ///   breaks. As opposed to paragraphs, which are defined by line
    ///   breaks in the input.
    static let displayLines = GTK_DELETE_DISPLAY_LINES // 3

    /// Delete only the portion of the
    ///   display-line to the left/right of cursor.
    static let displayLineEnds = GTK_DELETE_DISPLAY_LINE_ENDS // 4

    /// Delete to the end of the
    ///   paragraph. Like C-k in Emacs (or its reverse).
    static let paragraphEnds = GTK_DELETE_PARAGRAPH_ENDS // 5

    /// Delete entire line. Like C-k in pico.
    static let paragraphs = GTK_DELETE_PARAGRAPHS // 6

    /// Delete only whitespace. Like M-\ in Emacs.
    static let whitespace = GTK_DELETE_WHITESPACE // 7

}



/// Focus movement types.
public typealias DirectionType = GtkDirectionType


public extension DirectionType {
    /// Cast constructor, converting any binary integer to a
    /// `DirectionType`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToDirectionTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToDirectionTypeInt(raw))
    }
    /// Move forward.
    static let tabForward = GTK_DIR_TAB_FORWARD // 0

    /// Move backward.
    static let tabBackward = GTK_DIR_TAB_BACKWARD // 1

    /// Move up.
    static let up = GTK_DIR_UP // 2

    /// Move down.
    static let down = GTK_DIR_DOWN // 3

    /// Move left.
    static let `left` = GTK_DIR_LEFT // 4

    /// Move right.
    static let `right` = GTK_DIR_RIGHT // 5

}



/// Gives an indication why a drag operation failed.
/// The value can by obtained by connecting to the
/// `GtkWidget::drag-failed` signal.
public typealias DragResult = GtkDragResult


public extension DragResult {
    /// Cast constructor, converting any binary integer to a
    /// `DragResult`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToDragResultInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToDragResultInt(raw))
    }
    /// The drag operation was successful.
    static let success = GTK_DRAG_RESULT_SUCCESS // 0

    /// No suitable drag target.
    static let noTarget = GTK_DRAG_RESULT_NO_TARGET // 1

    /// The user cancelled the drag operation.
    static let userCancelled = GTK_DRAG_RESULT_USER_CANCELLED // 2

    /// The drag operation timed out.
    static let timeoutExpired = GTK_DRAG_RESULT_TIMEOUT_EXPIRED // 3

    /// The pointer or keyboard grab used
    ///  for the drag operation was broken.
    static let grabBroken = GTK_DRAG_RESULT_GRAB_BROKEN // 4

    /// The drag operation failed due to some
    ///  unspecified error.
    static let error = GTK_DRAG_RESULT_ERROR // 5

}



/// Specifies the side of the entry at which an icon is placed.
public typealias EntryIconPosition = GtkEntryIconPosition


public extension EntryIconPosition {
    /// Cast constructor, converting any binary integer to a
    /// `EntryIconPosition`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToEntryIconPositionInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToEntryIconPositionInt(raw))
    }
    /// At the beginning of the entry (depending on the text direction).
    static let primary = GTK_ENTRY_ICON_PRIMARY // 0

    /// At the end of the entry (depending on the text direction).
    static let secondary = GTK_ENTRY_ICON_SECONDARY // 1

}



/// Describes the state of a `GdkEventSequence` in a `GtkGesture`.
public typealias EventSequenceState = GtkEventSequenceState


public extension EventSequenceState {
    /// Cast constructor, converting any binary integer to a
    /// `EventSequenceState`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToEventSequenceStateInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToEventSequenceStateInt(raw))
    }
    /// The sequence is handled, but not grabbed.
    static let `none` = GTK_EVENT_SEQUENCE_NONE // 0

    /// The sequence is handled and grabbed.
    static let claimed = GTK_EVENT_SEQUENCE_CLAIMED // 1

    /// The sequence is denied.
    static let denied = GTK_EVENT_SEQUENCE_DENIED // 2

}



/// Used to specify the style of the expanders drawn by a `GtkTreeView`.
public typealias ExpanderStyle = GtkExpanderStyle


public extension ExpanderStyle {
    /// Cast constructor, converting any binary integer to a
    /// `ExpanderStyle`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToExpanderStyleInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToExpanderStyleInt(raw))
    }
    /// The style used for a collapsed subtree.
    static let collapsed = GTK_EXPANDER_COLLAPSED // 0

    /// Intermediate style used during animation.
    static let semiCollapsed = GTK_EXPANDER_SEMI_COLLAPSED // 1

    /// Intermediate style used during animation.
    static let semiExpanded = GTK_EXPANDER_SEMI_EXPANDED // 2

    /// The style used for an expanded subtree.
    static let expanded = GTK_EXPANDER_EXPANDED // 3

}



/// Describes whether a `GtkFileChooser` is being used to open existing files
/// or to save to a possibly new file.
public typealias FileChooserAction = GtkFileChooserAction


public extension FileChooserAction {
    /// Cast constructor, converting any binary integer to a
    /// `FileChooserAction`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToFileChooserActionInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToFileChooserActionInt(raw))
    }
    /// Indicates open mode.  The file chooser
    ///  will only let the user pick an existing file.
    static let open = GTK_FILE_CHOOSER_ACTION_OPEN // 0

    /// Indicates save mode.  The file chooser
    ///  will let the user pick an existing file, or type in a new
    ///  filename.
    static let save = GTK_FILE_CHOOSER_ACTION_SAVE // 1

    /// Indicates an Open mode for
    ///  selecting folders.  The file chooser will let the user pick an
    ///  existing folder.
    static let selectFolder = GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER // 2

    /// Indicates a mode for creating a
    ///  new folder.  The file chooser will let the user name an existing or
    ///  new folder.
    static let createFolder = GTK_FILE_CHOOSER_ACTION_CREATE_FOLDER // 3

}



/// Used as a return value of handlers for the
/// `GtkFileChooser::confirm-overwrite` signal of a `GtkFileChooser`. This
/// value determines whether the file chooser will present the stock
/// confirmation dialog, accept the user’s choice of a filename, or
/// let the user choose another filename.
public typealias FileChooserConfirmation = GtkFileChooserConfirmation


public extension FileChooserConfirmation {
    /// Cast constructor, converting any binary integer to a
    /// `FileChooserConfirmation`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToFileChooserConfirmationInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToFileChooserConfirmationInt(raw))
    }
    /// The file chooser will present
    ///  its stock dialog to confirm about overwriting an existing file.
    static let confirm = GTK_FILE_CHOOSER_CONFIRMATION_CONFIRM // 0

    /// The file chooser will
    ///  terminate and accept the user’s choice of a file name.
    static let acceptFilename = GTK_FILE_CHOOSER_CONFIRMATION_ACCEPT_FILENAME // 1

    /// The file chooser will
    ///  continue running, so as to let the user select another file name.
    static let selectAgain = GTK_FILE_CHOOSER_CONFIRMATION_SELECT_AGAIN // 2

}



/// These identify the various errors that can occur while calling
/// `GtkFileChooser` functions.
public typealias FileChooserError = GtkFileChooserError


public extension FileChooserError {
    /// Cast constructor, converting any binary integer to a
    /// `FileChooserError`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToFileChooserErrorInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToFileChooserErrorInt(raw))
    }
    /// Indicates that a file does not exist.
    static let nonexistent = GTK_FILE_CHOOSER_ERROR_NONEXISTENT // 0

    /// Indicates a malformed filename.
    static let badFilename = GTK_FILE_CHOOSER_ERROR_BAD_FILENAME // 1

    /// Indicates a duplicate path (e.g. when
    ///  adding a bookmark).
    static let alreadyExists = GTK_FILE_CHOOSER_ERROR_ALREADY_EXISTS // 2

    /// Indicates an incomplete hostname (e.g. "http://foo" without a slash after that).
    static let incompleteHostname = GTK_FILE_CHOOSER_ERROR_INCOMPLETE_HOSTNAME // 3

}



/// Style for input method preedit. See also
/// `GtkSettings:gtk-im-preedit-style`
///
/// **IMPreeditStyle is deprecated:**
/// This method is deprecated.
public typealias IMPreeditStyle = GtkIMPreeditStyle


public extension IMPreeditStyle {
    /// Cast constructor, converting any binary integer to a
    /// `IMPreeditStyle`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToIMPreeditStyleInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToIMPreeditStyleInt(raw))
    }
    /// Deprecated
    static let nothing = GTK_IM_PREEDIT_NOTHING // 0

    /// Deprecated
    static let callback = GTK_IM_PREEDIT_CALLBACK // 1

    /// Deprecated
    static let `none` = GTK_IM_PREEDIT_NONE // 2

}



/// Style for input method status. See also
/// `GtkSettings:gtk-im-status-style`
///
/// **IMStatusStyle is deprecated:**
/// This method is deprecated.
public typealias IMStatusStyle = GtkIMStatusStyle


public extension IMStatusStyle {
    /// Cast constructor, converting any binary integer to a
    /// `IMStatusStyle`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToIMStatusStyleInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToIMStatusStyleInt(raw))
    }
    /// Deprecated
    static let nothing = GTK_IM_STATUS_NOTHING // 0

    /// Deprecated
    static let callback = GTK_IM_STATUS_CALLBACK // 1

    /// Deprecated
    static let `none` = GTK_IM_STATUS_NONE // 2

}



/// Built-in stock icon sizes.
public typealias IconSize = GtkIconSize


public extension IconSize {
    /// Cast constructor, converting any binary integer to a
    /// `IconSize`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToIconSizeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToIconSizeInt(raw))
    }
    /// Invalid size.
    static let invalid = GTK_ICON_SIZE_INVALID // 0

    /// Size appropriate for menus (16px).
    static let menu = GTK_ICON_SIZE_MENU // 1

    /// Size appropriate for small toolbars (16px).
    static let smallToolbar = GTK_ICON_SIZE_SMALL_TOOLBAR // 2

    /// Size appropriate for large toolbars (24px)
    static let largeToolbar = GTK_ICON_SIZE_LARGE_TOOLBAR // 3

    /// Size appropriate for buttons (16px)
    static let button = GTK_ICON_SIZE_BUTTON // 4

    /// Size appropriate for drag and drop (32px)
    static let dnd = GTK_ICON_SIZE_DND // 5

    /// Size appropriate for dialogs (48px)
    static let dialog = GTK_ICON_SIZE_DIALOG // 6

}



/// Error codes for GtkIconTheme operations.
public typealias IconThemeError = GtkIconThemeError


public extension IconThemeError {
    /// Cast constructor, converting any binary integer to a
    /// `IconThemeError`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToIconThemeErrorInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToIconThemeErrorInt(raw))
    }
    /// The icon specified does not exist in the theme
    static let notFound = GTK_ICON_THEME_NOT_FOUND // 0

    /// An unspecified error occurred.
    static let failed = GTK_ICON_THEME_FAILED // 1

}



/// An enum for determining where a dropped item goes.
public typealias IconViewDropPosition = GtkIconViewDropPosition


public extension IconViewDropPosition {
    /// Cast constructor, converting any binary integer to a
    /// `IconViewDropPosition`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToIconViewDropPositionInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToIconViewDropPositionInt(raw))
    }
    /// no drop possible
    static let noDrop = GTK_ICON_VIEW_NO_DROP // 0

    /// dropped item replaces the item
    static let dropInto = GTK_ICON_VIEW_DROP_INTO // 1

    /// droppped item is inserted to the left
    static let dropLeft = GTK_ICON_VIEW_DROP_LEFT // 2

    /// dropped item is inserted to the right
    static let dropRight = GTK_ICON_VIEW_DROP_RIGHT // 3

    /// dropped item is inserted above
    static let dropAbove = GTK_ICON_VIEW_DROP_ABOVE // 4

    /// dropped item is inserted below
    static let dropBelow = GTK_ICON_VIEW_DROP_BELOW // 5

}



/// Describes the image data representation used by a `GtkImage`. If you
/// want to get the image from the widget, you can only get the
/// currently-stored representation. e.g.  if the
/// `gtk_image_get_storage_type()` returns `GTK_IMAGE_PIXBUF`, then you can
/// call `gtk_image_get_pixbuf()` but not `gtk_image_get_stock()`.  For empty
/// images, you can request any storage type (call any of the "get"
/// functions), but they will all return `nil` values.
public typealias ImageType = GtkImageType


public extension ImageType {
    /// Cast constructor, converting any binary integer to a
    /// `ImageType`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToImageTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToImageTypeInt(raw))
    }
    /// there is no image displayed by the widget
    static let empty = GTK_IMAGE_EMPTY // 0

    /// the widget contains a `GdkPixbuf`
    static let pixbuf = GTK_IMAGE_PIXBUF // 1

    /// the widget contains a [stock item name](#gtkstock)
    static let stock = GTK_IMAGE_STOCK // 2

    /// the widget contains a `GtkIconSet`
    static let iconSet = GTK_IMAGE_ICON_SET // 3

    /// the widget contains a `GdkPixbufAnimation`
    static let animation = GTK_IMAGE_ANIMATION // 4

    /// the widget contains a named icon.
    ///  This image type was added in GTK+ 2.6
    static let iconName = GTK_IMAGE_ICON_NAME // 5

    /// the widget contains a `GIcon`.
    ///  This image type was added in GTK+ 2.14
    static let gicon = GTK_IMAGE_GICON // 6

    /// the widget contains a `cairo_surface_t`.
    ///  This image type was added in GTK+ 3.10
    static let surface = GTK_IMAGE_SURFACE // 7

}



/// Describes primary purpose of the input widget. This information is
/// useful for on-screen keyboards and similar input methods to decide
/// which keys should be presented to the user.
/// 
/// Note that the purpose is not meant to impose a totally strict rule
/// about allowed characters, and does not replace input validation.
/// It is fine for an on-screen keyboard to let the user override the
/// character set restriction that is expressed by the purpose. The
/// application is expected to validate the entry contents, even if
/// it specified a purpose.
/// 
/// The difference between `GTK_INPUT_PURPOSE_DIGITS` and
/// `GTK_INPUT_PURPOSE_NUMBER` is that the former accepts only digits
/// while the latter also some punctuation (like commas or points, plus,
/// minus) and “e” or “E” as in 3.14E+000.
/// 
/// This enumeration may be extended in the future; input methods should
/// interpret unknown values as “free form”.
public typealias InputPurpose = GtkInputPurpose


public extension InputPurpose {
    /// Cast constructor, converting any binary integer to a
    /// `InputPurpose`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToInputPurposeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToInputPurposeInt(raw))
    }
    /// Allow any character
    static let freeForm = GTK_INPUT_PURPOSE_FREE_FORM // 0

    /// Allow only alphabetic characters
    static let alpha = GTK_INPUT_PURPOSE_ALPHA // 1

    /// Allow only digits
    static let digits = GTK_INPUT_PURPOSE_DIGITS // 2

    /// Edited field expects numbers
    static let number = GTK_INPUT_PURPOSE_NUMBER // 3

    /// Edited field expects phone number
    static let phone = GTK_INPUT_PURPOSE_PHONE // 4

    /// Edited field expects URL
    static let url = GTK_INPUT_PURPOSE_URL // 5

    /// Edited field expects email address
    static let email = GTK_INPUT_PURPOSE_EMAIL // 6

    /// Edited field expects the name of a person
    static let name = GTK_INPUT_PURPOSE_NAME // 7

    /// Like `GTK_INPUT_PURPOSE_FREE_FORM`, but characters are hidden
    static let password = GTK_INPUT_PURPOSE_PASSWORD // 8

    /// Like `GTK_INPUT_PURPOSE_DIGITS`, but characters are hidden
    static let pin = GTK_INPUT_PURPOSE_PIN // 9

    /// Allow any character, in addition to control codes
    static let terminal = GTK_INPUT_PURPOSE_TERMINAL // 10

}



/// Used for justifying the text inside a `GtkLabel` widget. (See also
/// `GtkAlignment`).
public typealias Justification = GtkJustification


public extension Justification {
    /// Cast constructor, converting any binary integer to a
    /// `Justification`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToJustificationInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToJustificationInt(raw))
    }
    /// The text is placed at the left edge of the label.
    static let `left` = GTK_JUSTIFY_LEFT // 0

    /// The text is placed at the right edge of the label.
    static let `right` = GTK_JUSTIFY_RIGHT // 1

    /// The text is placed in the center of the label.
    static let center = GTK_JUSTIFY_CENTER // 2

    /// The text is placed is distributed across the label.
    static let fill = GTK_JUSTIFY_FILL // 3

}



/// Describes how `GtkLevelBar` contents should be rendered.
/// Note that this enumeration could be extended with additional modes
/// in the future.
public typealias LevelBarMode = GtkLevelBarMode


public extension LevelBarMode {
    /// Cast constructor, converting any binary integer to a
    /// `LevelBarMode`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToLevelBarModeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToLevelBarModeInt(raw))
    }
    /// the bar has a continuous mode
    static let continuous = GTK_LEVEL_BAR_MODE_CONTINUOUS // 0

    /// the bar has a discrete mode
    static let discrete = GTK_LEVEL_BAR_MODE_DISCRETE // 1

}



/// The type of license for an application.
/// 
/// This enumeration can be expanded at later date.
public typealias License = GtkLicense


public extension License {
    /// Cast constructor, converting any binary integer to a
    /// `License`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToLicenseInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToLicenseInt(raw))
    }
    /// No license specified
    static let unknown = GTK_LICENSE_UNKNOWN // 0

    /// A license text is going to be specified by the
    ///   developer
    static let custom = GTK_LICENSE_CUSTOM // 1

    /// The GNU General Public License, version 2.0 or later
    static let gpl20 = GTK_LICENSE_GPL_2_0 // 2

    /// The GNU General Public License, version 3.0 or later
    static let gpl30 = GTK_LICENSE_GPL_3_0 // 3

    /// The GNU Lesser General Public License, version 2.1 or later
    static let lgpl21 = GTK_LICENSE_LGPL_2_1 // 4

    /// The GNU Lesser General Public License, version 3.0 or later
    static let lgpl30 = GTK_LICENSE_LGPL_3_0 // 5

    /// The BSD standard license
    static let bsd = GTK_LICENSE_BSD // 6

    /// The MIT/X11 standard license
    static let mitX11 = GTK_LICENSE_MIT_X11 // 7

    /// The Artistic License, version 2.0
    static let artistic = GTK_LICENSE_ARTISTIC // 8

    /// The GNU General Public License, version 2.0 only. Since 3.12.
    static let gpl20Only = GTK_LICENSE_GPL_2_0_ONLY // 9

    /// The GNU General Public License, version 3.0 only. Since 3.12.
    static let gpl30Only = GTK_LICENSE_GPL_3_0_ONLY // 10

    /// The GNU Lesser General Public License, version 2.1 only. Since 3.12.
    static let lgpl21Only = GTK_LICENSE_LGPL_2_1_ONLY // 11

    /// The GNU Lesser General Public License, version 3.0 only. Since 3.12.
    static let lgpl30Only = GTK_LICENSE_LGPL_3_0_ONLY // 12

    /// The GNU Affero General Public License, version 3.0 or later. Since: 3.22.
    static let agpl30 = GTK_LICENSE_AGPL_3_0 // 13

    /// The GNU Affero General Public License, version 3.0 only. Since: 3.22.27.
    static let agpl30Only = GTK_LICENSE_AGPL_3_0_ONLY // 14

    /// The 3-clause BSD licence. Since: 3.24.20.
    static let bsd3 = GTK_LICENSE_BSD_3 // 15

    /// The Apache License, version 2.0. Since: 3.24.20.
    static let apache20 = GTK_LICENSE_APACHE_2_0 // 16

    /// The Mozilla Public License, version 2.0. Since: 3.24.20.
    static let mpl20 = GTK_LICENSE_MPL_2_0 // 17

}



/// An enumeration representing directional movements within a menu.
public typealias MenuDirectionType = GtkMenuDirectionType


public extension MenuDirectionType {
    /// Cast constructor, converting any binary integer to a
    /// `MenuDirectionType`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToMenuDirectionTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToMenuDirectionTypeInt(raw))
    }
    /// To the parent menu shell
    static let parent = GTK_MENU_DIR_PARENT // 0

    /// To the submenu, if any, associated with the item
    static let child = GTK_MENU_DIR_CHILD // 1

    /// To the next menu item
    static let next = GTK_MENU_DIR_NEXT // 2

    /// To the previous menu item
    static let prev = GTK_MENU_DIR_PREV // 3

}



/// The type of message being displayed in the dialog.
public typealias MessageType = GtkMessageType


public extension MessageType {
    /// Cast constructor, converting any binary integer to a
    /// `MessageType`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToMessageTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToMessageTypeInt(raw))
    }
    /// Informational message
    static let info = GTK_MESSAGE_INFO // 0

    /// Non-fatal warning message
    static let warning = GTK_MESSAGE_WARNING // 1

    /// Question requiring a choice
    static let question = GTK_MESSAGE_QUESTION // 2

    /// Fatal error message
    static let error = GTK_MESSAGE_ERROR // 3

    /// None of the above
    static let other = GTK_MESSAGE_OTHER // 4

}



public typealias MovementStep = GtkMovementStep


public extension MovementStep {
    /// Cast constructor, converting any binary integer to a
    /// `MovementStep`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToMovementStepInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToMovementStepInt(raw))
    }
    /// Move forward or back by graphemes
    static let logicalPositions = GTK_MOVEMENT_LOGICAL_POSITIONS // 0

    /// Move left or right by graphemes
    static let visualPositions = GTK_MOVEMENT_VISUAL_POSITIONS // 1

    /// Move forward or back by words
    static let words = GTK_MOVEMENT_WORDS // 2

    /// Move up or down lines (wrapped lines)
    static let displayLines = GTK_MOVEMENT_DISPLAY_LINES // 3

    /// Move to either end of a line
    static let displayLineEnds = GTK_MOVEMENT_DISPLAY_LINE_ENDS // 4

    /// Move up or down paragraphs (newline-ended lines)
    static let paragraphs = GTK_MOVEMENT_PARAGRAPHS // 5

    /// Move to either end of a paragraph
    static let paragraphEnds = GTK_MOVEMENT_PARAGRAPH_ENDS // 6

    /// Move by pages
    static let pages = GTK_MOVEMENT_PAGES // 7

    /// Move to ends of the buffer
    static let bufferEnds = GTK_MOVEMENT_BUFFER_ENDS // 8

    /// Move horizontally by pages
    static let horizontalPages = GTK_MOVEMENT_HORIZONTAL_PAGES // 9

}



public typealias NotebookTab = GtkNotebookTab


public extension NotebookTab {
    /// Cast constructor, converting any binary integer to a
    /// `NotebookTab`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToNotebookTabInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToNotebookTabInt(raw))
    }
    static let first = GTK_NOTEBOOK_TAB_FIRST // 0

    static let last = GTK_NOTEBOOK_TAB_LAST // 1

}



/// Used to determine the layout of pages on a sheet when printing
/// multiple pages per sheet.
public typealias NumberUpLayout = GtkNumberUpLayout


public extension NumberUpLayout {
    /// Cast constructor, converting any binary integer to a
    /// `NumberUpLayout`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToNumberUpLayoutInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToNumberUpLayoutInt(raw))
    }
    /// ![](layout-lrtb.png)
    static let lrtb = GTK_NUMBER_UP_LAYOUT_LEFT_TO_RIGHT_TOP_TO_BOTTOM // 0

    /// ![](layout-lrbt.png)
    static let lrbt = GTK_NUMBER_UP_LAYOUT_LEFT_TO_RIGHT_BOTTOM_TO_TOP // 1

    /// ![](layout-rltb.png)
    static let rltb = GTK_NUMBER_UP_LAYOUT_RIGHT_TO_LEFT_TOP_TO_BOTTOM // 2

    /// ![](layout-rlbt.png)
    static let rlbt = GTK_NUMBER_UP_LAYOUT_RIGHT_TO_LEFT_BOTTOM_TO_TOP // 3

    /// ![](layout-tblr.png)
    static let tblr = GTK_NUMBER_UP_LAYOUT_TOP_TO_BOTTOM_LEFT_TO_RIGHT // 4

    /// ![](layout-tbrl.png)
    static let tbrl = GTK_NUMBER_UP_LAYOUT_TOP_TO_BOTTOM_RIGHT_TO_LEFT // 5

    /// ![](layout-btlr.png)
    static let btlr = GTK_NUMBER_UP_LAYOUT_BOTTOM_TO_TOP_LEFT_TO_RIGHT // 6

    /// ![](layout-btrl.png)
    static let btrl = GTK_NUMBER_UP_LAYOUT_BOTTOM_TO_TOP_RIGHT_TO_LEFT // 7

}



/// Represents the orientation of widgets and other objects which can be switched
/// between horizontal and vertical orientation on the fly, like `GtkToolbar` or
/// `GtkGesturePan`.
public typealias Orientation = GtkOrientation


public extension Orientation {
    /// Cast constructor, converting any binary integer to a
    /// `Orientation`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToOrientationInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToOrientationInt(raw))
    }
    /// The element is in horizontal orientation.
    static let horizontal = GTK_ORIENTATION_HORIZONTAL // 0

    /// The element is in vertical orientation.
    static let vertical = GTK_ORIENTATION_VERTICAL // 1

}



/// Determines how widgets should be packed inside menubars
/// and menuitems contained in menubars.
public typealias PackDirection = GtkPackDirection


public extension PackDirection {
    /// Cast constructor, converting any binary integer to a
    /// `PackDirection`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToPackDirectionInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToPackDirectionInt(raw))
    }
    /// Widgets are packed left-to-right
    static let ltr = GTK_PACK_DIRECTION_LTR // 0

    /// Widgets are packed right-to-left
    static let rtl = GTK_PACK_DIRECTION_RTL // 1

    /// Widgets are packed top-to-bottom
    static let ttb = GTK_PACK_DIRECTION_TTB // 2

    /// Widgets are packed bottom-to-top
    static let btt = GTK_PACK_DIRECTION_BTT // 3

}



/// Represents the packing location `GtkBox` children. (See: `GtkVBox`,
/// `GtkHBox`, and `GtkButtonBox`).
public typealias PackType = GtkPackType


public extension PackType {
    /// Cast constructor, converting any binary integer to a
    /// `PackType`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToPackTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToPackTypeInt(raw))
    }
    /// The child is packed into the start of the box
    static let start = GTK_PACK_START // 0

    /// The child is packed into the end of the box
    static let end = GTK_PACK_END // 1

}



/// The type of a pad action.
public typealias PadActionType = GtkPadActionType


public extension PadActionType {
    /// Cast constructor, converting any binary integer to a
    /// `PadActionType`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToPadActionTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToPadActionTypeInt(raw))
    }
    /// Action is triggered by a pad button
    static let button = GTK_PAD_ACTION_BUTTON // 0

    /// Action is triggered by a pad ring
    static let ring = GTK_PAD_ACTION_RING // 1

    /// Action is triggered by a pad strip
    static let strip = GTK_PAD_ACTION_STRIP // 2

}



/// See also `gtk_print_settings_set_orientation()`.
public typealias PageOrientation = GtkPageOrientation


public extension PageOrientation {
    /// Cast constructor, converting any binary integer to a
    /// `PageOrientation`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToPageOrientationInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToPageOrientationInt(raw))
    }
    /// Portrait mode.
    static let portrait = GTK_PAGE_ORIENTATION_PORTRAIT // 0

    /// Landscape mode.
    static let landscape = GTK_PAGE_ORIENTATION_LANDSCAPE // 1

    /// Reverse portrait mode.
    static let reversePortrait = GTK_PAGE_ORIENTATION_REVERSE_PORTRAIT // 2

    /// Reverse landscape mode.
    static let reverseLandscape = GTK_PAGE_ORIENTATION_REVERSE_LANDSCAPE // 3

}



/// See also `gtk_print_job_set_page_set()`.
public typealias PageSet = GtkPageSet


public extension PageSet {
    /// Cast constructor, converting any binary integer to a
    /// `PageSet`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToPageSetInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToPageSetInt(raw))
    }
    /// All pages.
    static let all = GTK_PAGE_SET_ALL // 0

    /// Even pages.
    static let even = GTK_PAGE_SET_EVEN // 1

    /// Odd pages.
    static let odd = GTK_PAGE_SET_ODD // 2

}



/// Describes the panning direction of a `GtkGesturePan`
public typealias PanDirection = GtkPanDirection


public extension PanDirection {
    /// Cast constructor, converting any binary integer to a
    /// `PanDirection`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToPanDirectionInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToPanDirectionInt(raw))
    }
    /// panned towards the left
    static let `left` = GTK_PAN_DIRECTION_LEFT // 0

    /// panned towards the right
    static let `right` = GTK_PAN_DIRECTION_RIGHT // 1

    /// panned upwards
    static let up = GTK_PAN_DIRECTION_UP // 2

    /// panned downwards
    static let down = GTK_PAN_DIRECTION_DOWN // 3

}



/// Priorities for path lookups.
/// See also `gtk_binding_set_add_path()`.
///
/// **PathPriorityType is deprecated:**
/// This method is deprecated.
public typealias PathPriorityType = GtkPathPriorityType


public extension PathPriorityType {
    /// Cast constructor, converting any binary integer to a
    /// `PathPriorityType`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToPathPriorityTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToPathPriorityTypeInt(raw))
    }
    /// Deprecated
    static let lowest = GTK_PATH_PRIO_LOWEST // 0

    /// Deprecated
    static let gtk = GTK_PATH_PRIO_GTK // 4

    /// Deprecated
    static let application = GTK_PATH_PRIO_APPLICATION // 8

    /// Deprecated
    static let theme = GTK_PATH_PRIO_THEME // 10

    /// Deprecated
    static let rc = GTK_PATH_PRIO_RC // 12

    /// Deprecated
    static let highest = GTK_PATH_PRIO_HIGHEST // 15

}



/// Widget path types.
/// See also `gtk_binding_set_add_path()`.
///
/// **PathType is deprecated:**
/// This method is deprecated.
public typealias PathType = GtkPathType


public extension PathType {
    /// Cast constructor, converting any binary integer to a
    /// `PathType`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToPathTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToPathTypeInt(raw))
    }
    /// Deprecated
    static let widget = GTK_PATH_WIDGET // 0

    /// Deprecated
    static let widgetClass = GTK_PATH_WIDGET_CLASS // 1

    /// Deprecated
    static let `class` = GTK_PATH_CLASS // 2

}



/// Determines how the size should be computed to achieve the one of the
/// visibility mode for the scrollbars.
public typealias PolicyType = GtkPolicyType


public extension PolicyType {
    /// Cast constructor, converting any binary integer to a
    /// `PolicyType`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToPolicyTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToPolicyTypeInt(raw))
    }
    /// The scrollbar is always visible. The view size is
    ///  independent of the content.
    static let always = GTK_POLICY_ALWAYS // 0

    /// The scrollbar will appear and disappear as necessary.
    ///  For example, when all of a `GtkTreeView` can not be seen.
    static let automatic = GTK_POLICY_AUTOMATIC // 1

    /// The scrollbar should never appear. In this mode the
    ///  content determines the size.
    static let never = GTK_POLICY_NEVER // 2

    /// Don't show a scrollbar, but don't force the
    ///  size to follow the content. This can be used e.g. to make multiple
    ///  scrolled windows share a scrollbar. Since: 3.16
    static let external = GTK_POLICY_EXTERNAL // 3

}



/// Describes constraints to positioning of popovers. More values
/// may be added to this enumeration in the future.
public typealias PopoverConstraint = GtkPopoverConstraint


public extension PopoverConstraint {
    /// Cast constructor, converting any binary integer to a
    /// `PopoverConstraint`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToPopoverConstraintInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToPopoverConstraintInt(raw))
    }
    /// Don't constrain the popover position
    ///   beyond what is imposed by the implementation
    static let `none` = GTK_POPOVER_CONSTRAINT_NONE // 0

    /// Constrain the popover to the boundaries
    ///   of the window that it is attached to
    static let window = GTK_POPOVER_CONSTRAINT_WINDOW // 1

}



/// Describes which edge of a widget a certain feature is positioned at, e.g. the
/// tabs of a `GtkNotebook`, the handle of a `GtkHandleBox` or the label of a
/// `GtkScale`.
public typealias PositionType = GtkPositionType


public extension PositionType {
    /// Cast constructor, converting any binary integer to a
    /// `PositionType`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToPositionTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToPositionTypeInt(raw))
    }
    /// The feature is at the left edge.
    static let `left` = GTK_POS_LEFT // 0

    /// The feature is at the right edge.
    static let `right` = GTK_POS_RIGHT // 1

    /// The feature is at the top edge.
    static let top = GTK_POS_TOP // 2

    /// The feature is at the bottom edge.
    static let bottom = GTK_POS_BOTTOM // 3

}



/// See also `gtk_print_settings_set_duplex()`.
public typealias PrintDuplex = GtkPrintDuplex


public extension PrintDuplex {
    /// Cast constructor, converting any binary integer to a
    /// `PrintDuplex`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToPrintDuplexInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToPrintDuplexInt(raw))
    }
    /// No duplex.
    static let simplex = GTK_PRINT_DUPLEX_SIMPLEX // 0

    /// Horizontal duplex.
    static let horizontal = GTK_PRINT_DUPLEX_HORIZONTAL // 1

    /// Vertical duplex.
    static let vertical = GTK_PRINT_DUPLEX_VERTICAL // 2

}



/// Error codes that identify various errors that can occur while
/// using the GTK+ printing support.
public typealias PrintError = GtkPrintError


public extension PrintError {
    /// Cast constructor, converting any binary integer to a
    /// `PrintError`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToPrintErrorInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToPrintErrorInt(raw))
    }
    /// An unspecified error occurred.
    static let general = GTK_PRINT_ERROR_GENERAL // 0

    /// An internal error occurred.
    static let internalError = GTK_PRINT_ERROR_INTERNAL_ERROR // 1

    /// A memory allocation failed.
    static let nomem = GTK_PRINT_ERROR_NOMEM // 2

    /// An error occurred while loading a page setup
    ///     or paper size from a key file.
    static let invalidFile = GTK_PRINT_ERROR_INVALID_FILE // 3

}



/// The `action` parameter to `gtk_print_operation_run()`
/// determines what action the print operation should perform.
public typealias PrintOperationAction = GtkPrintOperationAction


public extension PrintOperationAction {
    /// Cast constructor, converting any binary integer to a
    /// `PrintOperationAction`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToPrintOperationActionInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToPrintOperationActionInt(raw))
    }
    /// Show the print dialog.
    static let printDialog = GTK_PRINT_OPERATION_ACTION_PRINT_DIALOG // 0

    /// Start to print without showing
    ///     the print dialog, based on the current print settings.
    static let print = GTK_PRINT_OPERATION_ACTION_PRINT // 1

    /// Show the print preview.
    static let preview = GTK_PRINT_OPERATION_ACTION_PREVIEW // 2

    /// Export to a file. This requires
    ///     the export-filename property to be set.
    static let export = GTK_PRINT_OPERATION_ACTION_EXPORT // 3

}



/// A value of this type is returned by `gtk_print_operation_run()`.
public typealias PrintOperationResult = GtkPrintOperationResult


public extension PrintOperationResult {
    /// Cast constructor, converting any binary integer to a
    /// `PrintOperationResult`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToPrintOperationResultInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToPrintOperationResultInt(raw))
    }
    /// An error has occurred.
    static let error = GTK_PRINT_OPERATION_RESULT_ERROR // 0

    /// The print settings should be stored.
    static let apply = GTK_PRINT_OPERATION_RESULT_APPLY // 1

    /// The print operation has been canceled,
    ///     the print settings should not be stored.
    static let cancel = GTK_PRINT_OPERATION_RESULT_CANCEL // 2

    /// The print operation is not complete
    ///     yet. This value will only be returned when running asynchronously.
    static let inProgress = GTK_PRINT_OPERATION_RESULT_IN_PROGRESS // 3

}



/// See also `gtk_print_job_set_pages()`
public typealias PrintPages = GtkPrintPages


public extension PrintPages {
    /// Cast constructor, converting any binary integer to a
    /// `PrintPages`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToPrintPagesInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToPrintPagesInt(raw))
    }
    /// All pages.
    static let all = GTK_PRINT_PAGES_ALL // 0

    /// Current page.
    static let current = GTK_PRINT_PAGES_CURRENT // 1

    /// Range of pages.
    static let ranges = GTK_PRINT_PAGES_RANGES // 2

    /// Selected pages.
    static let selection = GTK_PRINT_PAGES_SELECTION // 3

}



/// See also `gtk_print_settings_set_quality()`.
public typealias PrintQuality = GtkPrintQuality


public extension PrintQuality {
    /// Cast constructor, converting any binary integer to a
    /// `PrintQuality`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToPrintQualityInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToPrintQualityInt(raw))
    }
    /// Low quality.
    static let low = GTK_PRINT_QUALITY_LOW // 0

    /// Normal quality.
    static let normal = GTK_PRINT_QUALITY_NORMAL // 1

    /// High quality.
    static let high = GTK_PRINT_QUALITY_HIGH // 2

    /// Draft quality.
    static let draft = GTK_PRINT_QUALITY_DRAFT // 3

}



/// The status gives a rough indication of the completion of a running
/// print operation.
public typealias PrintStatus = GtkPrintStatus


public extension PrintStatus {
    /// Cast constructor, converting any binary integer to a
    /// `PrintStatus`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToPrintStatusInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToPrintStatusInt(raw))
    }
    /// The printing has not started yet; this
    ///     status is set initially, and while the print dialog is shown.
    static let initial = GTK_PRINT_STATUS_INITIAL // 0

    /// This status is set while the begin-print
    ///     signal is emitted and during pagination.
    static let preparing = GTK_PRINT_STATUS_PREPARING // 1

    /// This status is set while the
    ///     pages are being rendered.
    static let generatingData = GTK_PRINT_STATUS_GENERATING_DATA // 2

    /// The print job is being sent off to the
    ///     printer.
    static let sendingData = GTK_PRINT_STATUS_SENDING_DATA // 3

    /// The print job has been sent to the printer,
    ///     but is not printed for some reason, e.g. the printer may be stopped.
    static let pending = GTK_PRINT_STATUS_PENDING // 4

    /// Some problem has occurred during
    ///     printing, e.g. a paper jam.
    static let pendingIssue = GTK_PRINT_STATUS_PENDING_ISSUE // 5

    /// The printer is processing the print job.
    static let printing = GTK_PRINT_STATUS_PRINTING // 6

    /// The printing has been completed successfully.
    static let finished = GTK_PRINT_STATUS_FINISHED // 7

    /// The printing has been aborted.
    static let finishedAborted = GTK_PRINT_STATUS_FINISHED_ABORTED // 8

}



/// Describes the stage at which events are fed into a `GtkEventController`.
public typealias PropagationPhase = GtkPropagationPhase


public extension PropagationPhase {
    /// Cast constructor, converting any binary integer to a
    /// `PropagationPhase`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToPropagationPhaseInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToPropagationPhaseInt(raw))
    }
    /// Events are not delivered automatically. Those can be
    ///   manually fed through `gtk_event_controller_handle_event()`. This should
    ///   only be used when full control about when, or whether the controller
    ///   handles the event is needed.
    static let `none` = GTK_PHASE_NONE // 0

    /// Events are delivered in the capture phase. The
    ///   capture phase happens before the bubble phase, runs from the toplevel down
    ///   to the event widget. This option should only be used on containers that
    ///   might possibly handle events before their children do.
    static let capture = GTK_PHASE_CAPTURE // 1

    /// Events are delivered in the bubble phase. The bubble
    ///   phase happens after the capture phase, and before the default handlers
    ///   are run. This phase runs from the event widget, up to the toplevel.
    static let bubble = GTK_PHASE_BUBBLE // 2

    /// Events are delivered in the default widget event handlers,
    ///   note that widget implementations must chain up on button, motion, touch and
    ///   grab broken handlers for controllers in this phase to be run.
    static let target = GTK_PHASE_TARGET // 3

}



/// The `GtkRcTokenType` enumeration represents the tokens
/// in the RC file. It is exposed so that theme engines
/// can reuse these tokens when parsing the theme-engine
/// specific portions of a RC file.
///
/// **RcTokenType is deprecated:**
/// Use #GtkCssProvider instead.
public typealias RcTokenType = GtkRcTokenType


public extension RcTokenType {
    /// Cast constructor, converting any binary integer to a
    /// `RcTokenType`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToRcTokenTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToRcTokenTypeInt(raw))
    }
    /// Deprecated
    static let invalid = GTK_RC_TOKEN_INVALID // 270

    /// Deprecated
    static let include = GTK_RC_TOKEN_INCLUDE // 271

    /// Deprecated
    static let normal = GTK_RC_TOKEN_NORMAL // 272

    /// Deprecated
    static let active = GTK_RC_TOKEN_ACTIVE // 273

    /// Deprecated
    static let prelight = GTK_RC_TOKEN_PRELIGHT // 274

    /// Deprecated
    static let selected = GTK_RC_TOKEN_SELECTED // 275

    /// Deprecated
    static let insensitive = GTK_RC_TOKEN_INSENSITIVE // 276

    /// Deprecated
    static let fg = GTK_RC_TOKEN_FG // 277

    /// Deprecated
    static let bg = GTK_RC_TOKEN_BG // 278

    /// Deprecated
    static let text = GTK_RC_TOKEN_TEXT // 279

    /// Deprecated
    static let base = GTK_RC_TOKEN_BASE // 280

    /// Deprecated
    static let xthickness = GTK_RC_TOKEN_XTHICKNESS // 281

    /// Deprecated
    static let ythickness = GTK_RC_TOKEN_YTHICKNESS // 282

    /// Deprecated
    static let font = GTK_RC_TOKEN_FONT // 283

    /// Deprecated
    static let fontset = GTK_RC_TOKEN_FONTSET // 284

    /// Deprecated
    static let fontName = GTK_RC_TOKEN_FONT_NAME // 285

    /// Deprecated
    static let bgPixmap = GTK_RC_TOKEN_BG_PIXMAP // 286

    /// Deprecated
    static let pixmapPath = GTK_RC_TOKEN_PIXMAP_PATH // 287

    /// Deprecated
    static let style = GTK_RC_TOKEN_STYLE // 288

    /// Deprecated
    static let binding = GTK_RC_TOKEN_BINDING // 289

    /// Deprecated
    static let bind = GTK_RC_TOKEN_BIND // 290

    /// Deprecated
    static let widget = GTK_RC_TOKEN_WIDGET // 291

    /// Deprecated
    static let widgetClass = GTK_RC_TOKEN_WIDGET_CLASS // 292

    /// Deprecated
    static let `class` = GTK_RC_TOKEN_CLASS // 293

    /// Deprecated
    static let lowest = GTK_RC_TOKEN_LOWEST // 294

    /// Deprecated
    static let gtk = GTK_RC_TOKEN_GTK // 295

    /// Deprecated
    static let application = GTK_RC_TOKEN_APPLICATION // 296

    /// Deprecated
    static let theme = GTK_RC_TOKEN_THEME // 297

    /// Deprecated
    static let rc = GTK_RC_TOKEN_RC // 298

    /// Deprecated
    static let highest = GTK_RC_TOKEN_HIGHEST // 299

    /// Deprecated
    static let engine = GTK_RC_TOKEN_ENGINE // 300

    /// Deprecated
    static let modulePath = GTK_RC_TOKEN_MODULE_PATH // 301

    /// Deprecated
    static let imModulePath = GTK_RC_TOKEN_IM_MODULE_PATH // 302

    /// Deprecated
    static let imModuleFile = GTK_RC_TOKEN_IM_MODULE_FILE // 303

    /// Deprecated
    static let stock = GTK_RC_TOKEN_STOCK // 304

    /// Deprecated
    static let ltr = GTK_RC_TOKEN_LTR // 305

    /// Deprecated
    static let rtl = GTK_RC_TOKEN_RTL // 306

    /// Deprecated
    static let color = GTK_RC_TOKEN_COLOR // 307

    /// Deprecated
    static let unbind = GTK_RC_TOKEN_UNBIND // 308

    /// Deprecated
    static let last = GTK_RC_TOKEN_LAST // 309

}



/// These identify the various errors that can occur while calling
/// `GtkRecentChooser` functions.
public typealias RecentChooserError = GtkRecentChooserError


public extension RecentChooserError {
    /// Cast constructor, converting any binary integer to a
    /// `RecentChooserError`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToRecentChooserErrorInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToRecentChooserErrorInt(raw))
    }
    /// Indicates that a file does not exist
    static let notFound = GTK_RECENT_CHOOSER_ERROR_NOT_FOUND // 0

    /// Indicates a malformed URI
    static let invalidURI = GTK_RECENT_CHOOSER_ERROR_INVALID_URI // 1

}



/// Error codes for `GtkRecentManager` operations
public typealias RecentManagerError = GtkRecentManagerError


public extension RecentManagerError {
    /// Cast constructor, converting any binary integer to a
    /// `RecentManagerError`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToRecentManagerErrorInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToRecentManagerErrorInt(raw))
    }
    /// the URI specified does not exists in
    ///   the recently used resources list.
    static let notFound = GTK_RECENT_MANAGER_ERROR_NOT_FOUND // 0

    /// the URI specified is not valid.
    static let invalidURI = GTK_RECENT_MANAGER_ERROR_INVALID_URI // 1

    /// the supplied string is not
    ///   UTF-8 encoded.
    static let invalidEncoding = GTK_RECENT_MANAGER_ERROR_INVALID_ENCODING // 2

    /// no application has registered
    ///   the specified item.
    static let notRegistered = GTK_RECENT_MANAGER_ERROR_NOT_REGISTERED // 3

    /// failure while reading the recently used
    ///   resources file.
    static let read = GTK_RECENT_MANAGER_ERROR_READ // 4

    /// failure while writing the recently used
    ///   resources file.
    static let write = GTK_RECENT_MANAGER_ERROR_WRITE // 5

    /// unspecified error.
    static let unknown = GTK_RECENT_MANAGER_ERROR_UNKNOWN // 6

}



/// Used to specify the sorting method to be applyed to the recently
/// used resource list.
public typealias RecentSortType = GtkRecentSortType


public extension RecentSortType {
    /// Cast constructor, converting any binary integer to a
    /// `RecentSortType`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToRecentSortTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToRecentSortTypeInt(raw))
    }
    /// Do not sort the returned list of recently used
    ///   resources.
    static let `none` = GTK_RECENT_SORT_NONE // 0

    /// Sort the returned list with the most recently used
    ///   items first.
    static let mru = GTK_RECENT_SORT_MRU // 1

    /// Sort the returned list with the least recently used
    ///   items first.
    static let lru = GTK_RECENT_SORT_LRU // 2

    /// Sort the returned list using a custom sorting
    ///   function passed using `gtk_recent_chooser_set_sort_func()`.
    static let custom = GTK_RECENT_SORT_CUSTOM // 3

}



/// Indicated the relief to be drawn around a `GtkButton`.
public typealias ReliefStyle = GtkReliefStyle


public extension ReliefStyle {
    /// Cast constructor, converting any binary integer to a
    /// `ReliefStyle`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToReliefStyleInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToReliefStyleInt(raw))
    }
    /// Draw a normal relief.
    static let normal = GTK_RELIEF_NORMAL // 0

    /// A half relief. Deprecated in 3.14, does the same as `GTK_RELIEF_NORMAL`
    static let half = GTK_RELIEF_HALF // 1

    /// No relief.
    static let `none` = GTK_RELIEF_NONE // 2

}



public typealias ResizeMode = GtkResizeMode


public extension ResizeMode {
    /// Cast constructor, converting any binary integer to a
    /// `ResizeMode`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToResizeModeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToResizeModeInt(raw))
    }
    /// Pass resize request to the parent
    static let parent = GTK_RESIZE_PARENT // 0

    /// Queue resizes on this widget
    static let queue = GTK_RESIZE_QUEUE // 1

    /// Resize immediately. Deprecated.
    static let immediate = GTK_RESIZE_IMMEDIATE // 2

}



/// Predefined values for use as response ids in `gtk_dialog_add_button()`.
/// All predefined values are negative; GTK+ leaves values of 0 or greater for
/// application-defined response ids.
public typealias ResponseType = GtkResponseType


public extension ResponseType {
    /// Cast constructor, converting any binary integer to a
    /// `ResponseType`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToResponseTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToResponseTypeInt(raw))
    }
    /// Returned if an action widget has no response id,
    ///     or if the dialog gets programmatically hidden or destroyed
    static let `none` = GTK_RESPONSE_NONE // -1

    /// Generic response id, not used by GTK+ dialogs
    static let reject = GTK_RESPONSE_REJECT // -2

    /// Generic response id, not used by GTK+ dialogs
    static let accept = GTK_RESPONSE_ACCEPT // -3

    /// Returned if the dialog is deleted
    static let deleteEvent = GTK_RESPONSE_DELETE_EVENT // -4

    /// Returned by OK buttons in GTK+ dialogs
    static let ok = GTK_RESPONSE_OK // -5

    /// Returned by Cancel buttons in GTK+ dialogs
    static let cancel = GTK_RESPONSE_CANCEL // -6

    /// Returned by Close buttons in GTK+ dialogs
    static let close = GTK_RESPONSE_CLOSE // -7

    /// Returned by Yes buttons in GTK+ dialogs
    static let yes = GTK_RESPONSE_YES // -8

    /// Returned by No buttons in GTK+ dialogs
    static let no = GTK_RESPONSE_NO // -9

    /// Returned by Apply buttons in GTK+ dialogs
    static let apply = GTK_RESPONSE_APPLY // -10

    /// Returned by Help buttons in GTK+ dialogs
    static let help = GTK_RESPONSE_HELP // -11

}



/// These enumeration values describe the possible transitions
/// when the child of a `GtkRevealer` widget is shown or hidden.
public typealias RevealerTransitionType = GtkRevealerTransitionType


public extension RevealerTransitionType {
    /// Cast constructor, converting any binary integer to a
    /// `RevealerTransitionType`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToRevealerTransitionTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToRevealerTransitionTypeInt(raw))
    }
    /// No transition
    static let `none` = GTK_REVEALER_TRANSITION_TYPE_NONE // 0

    /// Fade in
    static let crossfade = GTK_REVEALER_TRANSITION_TYPE_CROSSFADE // 1

    /// Slide in from the left
    static let slideRight = GTK_REVEALER_TRANSITION_TYPE_SLIDE_RIGHT // 2

    /// Slide in from the right
    static let slideLeft = GTK_REVEALER_TRANSITION_TYPE_SLIDE_LEFT // 3

    /// Slide in from the bottom
    static let slideUp = GTK_REVEALER_TRANSITION_TYPE_SLIDE_UP // 4

    /// Slide in from the top
    static let slideDown = GTK_REVEALER_TRANSITION_TYPE_SLIDE_DOWN // 5

}



public typealias ScrollStep = GtkScrollStep


public extension ScrollStep {
    /// Cast constructor, converting any binary integer to a
    /// `ScrollStep`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToScrollStepInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToScrollStepInt(raw))
    }
    /// Scroll in steps.
    static let steps = GTK_SCROLL_STEPS // 0

    /// Scroll by pages.
    static let pages = GTK_SCROLL_PAGES // 1

    /// Scroll to ends.
    static let ends = GTK_SCROLL_ENDS // 2

    /// Scroll in horizontal steps.
    static let horizontalSteps = GTK_SCROLL_HORIZONTAL_STEPS // 3

    /// Scroll by horizontal pages.
    static let horizontalPages = GTK_SCROLL_HORIZONTAL_PAGES // 4

    /// Scroll to the horizontal ends.
    static let horizontalEnds = GTK_SCROLL_HORIZONTAL_ENDS // 5

}



/// Scrolling types.
public typealias ScrollType = GtkScrollType


public extension ScrollType {
    /// Cast constructor, converting any binary integer to a
    /// `ScrollType`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToScrollTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToScrollTypeInt(raw))
    }
    /// No scrolling.
    static let `none` = GTK_SCROLL_NONE // 0

    /// Jump to new location.
    static let jump = GTK_SCROLL_JUMP // 1

    /// Step backward.
    static let stepBackward = GTK_SCROLL_STEP_BACKWARD // 2

    /// Step forward.
    static let stepForward = GTK_SCROLL_STEP_FORWARD // 3

    /// Page backward.
    static let pageBackward = GTK_SCROLL_PAGE_BACKWARD // 4

    /// Page forward.
    static let pageForward = GTK_SCROLL_PAGE_FORWARD // 5

    /// Step up.
    static let stepUp = GTK_SCROLL_STEP_UP // 6

    /// Step down.
    static let stepDown = GTK_SCROLL_STEP_DOWN // 7

    /// Page up.
    static let pageUp = GTK_SCROLL_PAGE_UP // 8

    /// Page down.
    static let pageDown = GTK_SCROLL_PAGE_DOWN // 9

    /// Step to the left.
    static let stepLeft = GTK_SCROLL_STEP_LEFT // 10

    /// Step to the right.
    static let stepRight = GTK_SCROLL_STEP_RIGHT // 11

    /// Page to the left.
    static let pageLeft = GTK_SCROLL_PAGE_LEFT // 12

    /// Page to the right.
    static let pageRight = GTK_SCROLL_PAGE_RIGHT // 13

    /// Scroll to start.
    static let start = GTK_SCROLL_START // 14

    /// Scroll to end.
    static let end = GTK_SCROLL_END // 15

}



/// Defines the policy to be used in a scrollable widget when updating
/// the scrolled window adjustments in a given orientation.
public typealias ScrollablePolicy = GtkScrollablePolicy


public extension ScrollablePolicy {
    /// Cast constructor, converting any binary integer to a
    /// `ScrollablePolicy`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToScrollablePolicyInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToScrollablePolicyInt(raw))
    }
    /// Scrollable adjustments are based on the minimum size
    static let minimum = GTK_SCROLL_MINIMUM // 0

    /// Scrollable adjustments are based on the natural size
    static let natural = GTK_SCROLL_NATURAL // 1

}



/// Used to control what selections users are allowed to make.
public typealias SelectionMode = GtkSelectionMode


public extension SelectionMode {
    /// Cast constructor, converting any binary integer to a
    /// `SelectionMode`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToSelectionModeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToSelectionModeInt(raw))
    }
    /// No selection is possible.
    static let `none` = GTK_SELECTION_NONE // 0

    /// Zero or one element may be selected.
    static let single = GTK_SELECTION_SINGLE // 1

    /// Exactly one element is selected.
    ///     In some circumstances, such as initially or during a search
    ///     operation, it’s possible for no element to be selected with
    ///     `GTK_SELECTION_BROWSE`. What is really enforced is that the user
    ///     can’t deselect a currently selected element except by selecting
    ///     another element.
    static let browse = GTK_SELECTION_BROWSE // 2

    /// Any number of elements may be selected.
    ///      The Ctrl key may be used to enlarge the selection, and Shift
    ///      key to select between the focus and the child pointed to.
    ///      Some widgets may also allow Click-drag to select a range of elements.
    static let multiple = GTK_SELECTION_MULTIPLE // 3

}



/// Determines how GTK+ handles the sensitivity of stepper arrows
/// at the end of range widgets.
public typealias SensitivityType = GtkSensitivityType


public extension SensitivityType {
    /// Cast constructor, converting any binary integer to a
    /// `SensitivityType`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToSensitivityTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToSensitivityTypeInt(raw))
    }
    /// The arrow is made insensitive if the
    ///   thumb is at the end
    static let auto = GTK_SENSITIVITY_AUTO // 0

    /// The arrow is always sensitive
    static let on = GTK_SENSITIVITY_ON // 1

    /// The arrow is always insensitive
    static let off = GTK_SENSITIVITY_OFF // 2

}



/// Used to change the appearance of an outline typically provided by a `GtkFrame`.
/// 
/// Note that many themes do not differentiate the appearance of the
/// various shadow types: Either their is no visible shadow (`GTK_SHADOW_NONE`),
/// or there is (any other value).
public typealias ShadowType = GtkShadowType


public extension ShadowType {
    /// Cast constructor, converting any binary integer to a
    /// `ShadowType`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToShadowTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToShadowTypeInt(raw))
    }
    /// No outline.
    static let `none` = GTK_SHADOW_NONE // 0

    /// The outline is bevelled inwards.
    static let `in` = GTK_SHADOW_IN // 1

    /// The outline is bevelled outwards like a button.
    static let out = GTK_SHADOW_OUT // 2

    /// The outline has a sunken 3d appearance.
    static let etchedIn = GTK_SHADOW_ETCHED_IN // 3

    /// The outline has a raised 3d appearance.
    static let etchedOut = GTK_SHADOW_ETCHED_OUT // 4

}



/// GtkShortcutType specifies the kind of shortcut that is being described.
/// More values may be added to this enumeration over time.
public typealias ShortcutType = GtkShortcutType


public extension ShortcutType {
    /// Cast constructor, converting any binary integer to a
    /// `ShortcutType`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToShortcutTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToShortcutTypeInt(raw))
    }
    /// The shortcut is a keyboard accelerator. The `GtkShortcutsShortcut:accelerator`
    ///   property will be used.
    static let accelerator = GTK_SHORTCUT_ACCELERATOR // 0

    /// The shortcut is a pinch gesture. GTK+ provides an icon and subtitle.
    static let gesturePinch = GTK_SHORTCUT_GESTURE_PINCH // 1

    /// The shortcut is a stretch gesture. GTK+ provides an icon and subtitle.
    static let gestureStretch = GTK_SHORTCUT_GESTURE_STRETCH // 2

    /// The shortcut is a clockwise rotation gesture. GTK+ provides an icon and subtitle.
    static let gestureRotateClockwise = GTK_SHORTCUT_GESTURE_ROTATE_CLOCKWISE // 3

    /// The shortcut is a counterclockwise rotation gesture. GTK+ provides an icon and subtitle.
    static let gestureRotateCounterclockwise = GTK_SHORTCUT_GESTURE_ROTATE_COUNTERCLOCKWISE // 4

    /// The shortcut is a two-finger swipe gesture. GTK+ provides an icon and subtitle.
    static let gestureTwoFingerSwipeLeft = GTK_SHORTCUT_GESTURE_TWO_FINGER_SWIPE_LEFT // 5

    /// The shortcut is a two-finger swipe gesture. GTK+ provides an icon and subtitle.
    static let gestureTwoFingerSwipeRight = GTK_SHORTCUT_GESTURE_TWO_FINGER_SWIPE_RIGHT // 6

    /// The shortcut is a gesture. The `GtkShortcutsShortcut:icon` property will be
    ///   used.
    static let gesture = GTK_SHORTCUT_GESTURE // 7

}



/// The mode of the size group determines the directions in which the size
/// group affects the requested sizes of its component widgets.
public typealias SizeGroupMode = GtkSizeGroupMode


public extension SizeGroupMode {
    /// Cast constructor, converting any binary integer to a
    /// `SizeGroupMode`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToSizeGroupModeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToSizeGroupModeInt(raw))
    }
    /// group has no effect
    static let `none` = GTK_SIZE_GROUP_NONE // 0

    /// group affects horizontal requisition
    static let horizontal = GTK_SIZE_GROUP_HORIZONTAL // 1

    /// group affects vertical requisition
    static let vertical = GTK_SIZE_GROUP_VERTICAL // 2

    /// group affects both horizontal and vertical requisition
    static let both = GTK_SIZE_GROUP_BOTH // 3

}



/// Specifies a preference for height-for-width or
/// width-for-height geometry management.
public typealias SizeRequestMode = GtkSizeRequestMode


public extension SizeRequestMode {
    /// Cast constructor, converting any binary integer to a
    /// `SizeRequestMode`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToSizeRequestModeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToSizeRequestModeInt(raw))
    }
    /// Prefer height-for-width geometry management
    static let heightForWidth = GTK_SIZE_REQUEST_HEIGHT_FOR_WIDTH // 0

    /// Prefer width-for-height geometry management
    static let widthForHeight = GTK_SIZE_REQUEST_WIDTH_FOR_HEIGHT // 1

    /// Don’t trade height-for-width or width-for-height
    static let constantSize = GTK_SIZE_REQUEST_CONSTANT_SIZE // 2

}



/// Determines the direction of a sort.
public typealias SortType = GtkSortType


public extension SortType {
    /// Cast constructor, converting any binary integer to a
    /// `SortType`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToSortTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToSortTypeInt(raw))
    }
    /// Sorting is in ascending order.
    static let ascending = GTK_SORT_ASCENDING // 0

    /// Sorting is in descending order.
    static let descending = GTK_SORT_DESCENDING // 1

}



/// The spin button update policy determines whether the spin button displays
/// values even if they are outside the bounds of its adjustment.
/// See `gtk_spin_button_set_update_policy()`.
public typealias SpinButtonUpdatePolicy = GtkSpinButtonUpdatePolicy


public extension SpinButtonUpdatePolicy {
    /// Cast constructor, converting any binary integer to a
    /// `SpinButtonUpdatePolicy`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToSpinButtonUpdatePolicyInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToSpinButtonUpdatePolicyInt(raw))
    }
    /// When refreshing your `GtkSpinButton`, the value is
    ///     always displayed
    static let always = GTK_UPDATE_ALWAYS // 0

    /// When refreshing your `GtkSpinButton`, the value is
    ///     only displayed if it is valid within the bounds of the spin button's
    ///     adjustment
    static let ifValid = GTK_UPDATE_IF_VALID // 1

}



/// The values of the GtkSpinType enumeration are used to specify the
/// change to make in `gtk_spin_button_spin()`.
public typealias SpinType = GtkSpinType


public extension SpinType {
    /// Cast constructor, converting any binary integer to a
    /// `SpinType`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToSpinTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToSpinTypeInt(raw))
    }
    /// Increment by the adjustments step increment.
    static let stepForward = GTK_SPIN_STEP_FORWARD // 0

    /// Decrement by the adjustments step increment.
    static let stepBackward = GTK_SPIN_STEP_BACKWARD // 1

    /// Increment by the adjustments page increment.
    static let pageForward = GTK_SPIN_PAGE_FORWARD // 2

    /// Decrement by the adjustments page increment.
    static let pageBackward = GTK_SPIN_PAGE_BACKWARD // 3

    /// Go to the adjustments lower bound.
    static let home = GTK_SPIN_HOME // 4

    /// Go to the adjustments upper bound.
    static let end = GTK_SPIN_END // 5

    /// Change by a specified amount.
    static let userDefined = GTK_SPIN_USER_DEFINED // 6

}



/// These enumeration values describe the possible transitions
/// between pages in a `GtkStack` widget.
/// 
/// New values may be added to this enumeration over time.
public typealias StackTransitionType = GtkStackTransitionType


public extension StackTransitionType {
    /// Cast constructor, converting any binary integer to a
    /// `StackTransitionType`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToStackTransitionTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToStackTransitionTypeInt(raw))
    }
    /// No transition
    static let `none` = GTK_STACK_TRANSITION_TYPE_NONE // 0

    /// A cross-fade
    static let crossfade = GTK_STACK_TRANSITION_TYPE_CROSSFADE // 1

    /// Slide from left to right
    static let slideRight = GTK_STACK_TRANSITION_TYPE_SLIDE_RIGHT // 2

    /// Slide from right to left
    static let slideLeft = GTK_STACK_TRANSITION_TYPE_SLIDE_LEFT // 3

    /// Slide from bottom up
    static let slideUp = GTK_STACK_TRANSITION_TYPE_SLIDE_UP // 4

    /// Slide from top down
    static let slideDown = GTK_STACK_TRANSITION_TYPE_SLIDE_DOWN // 5

    /// Slide from left or right according to the children order
    static let slideLeftRight = GTK_STACK_TRANSITION_TYPE_SLIDE_LEFT_RIGHT // 6

    /// Slide from top down or bottom up according to the order
    static let slideUpDown = GTK_STACK_TRANSITION_TYPE_SLIDE_UP_DOWN // 7

    /// Cover the old page by sliding up. Since 3.12
    static let overUp = GTK_STACK_TRANSITION_TYPE_OVER_UP // 8

    /// Cover the old page by sliding down. Since: 3.12
    static let overDown = GTK_STACK_TRANSITION_TYPE_OVER_DOWN // 9

    /// Cover the old page by sliding to the left. Since: 3.12
    static let overLeft = GTK_STACK_TRANSITION_TYPE_OVER_LEFT // 10

    /// Cover the old page by sliding to the right. Since: 3.12
    static let overRight = GTK_STACK_TRANSITION_TYPE_OVER_RIGHT // 11

    /// Uncover the new page by sliding up. Since 3.12
    static let underUp = GTK_STACK_TRANSITION_TYPE_UNDER_UP // 12

    /// Uncover the new page by sliding down. Since: 3.12
    static let underDown = GTK_STACK_TRANSITION_TYPE_UNDER_DOWN // 13

    /// Uncover the new page by sliding to the left. Since: 3.12
    static let underLeft = GTK_STACK_TRANSITION_TYPE_UNDER_LEFT // 14

    /// Uncover the new page by sliding to the right. Since: 3.12
    static let underRight = GTK_STACK_TRANSITION_TYPE_UNDER_RIGHT // 15

    /// Cover the old page sliding up or uncover the new page sliding down, according to order. Since: 3.12
    static let overUpDown = GTK_STACK_TRANSITION_TYPE_OVER_UP_DOWN // 16

    /// Cover the old page sliding down or uncover the new page sliding up, according to order. Since: 3.14
    static let overDownUp = GTK_STACK_TRANSITION_TYPE_OVER_DOWN_UP // 17

    /// Cover the old page sliding left or uncover the new page sliding right, according to order. Since: 3.14
    static let overLeftRight = GTK_STACK_TRANSITION_TYPE_OVER_LEFT_RIGHT // 18

    /// Cover the old page sliding right or uncover the new page sliding left, according to order. Since: 3.14
    static let overRightLeft = GTK_STACK_TRANSITION_TYPE_OVER_RIGHT_LEFT // 19

}



/// This type indicates the current state of a widget; the state determines how
/// the widget is drawn. The `GtkStateType` enumeration is also used to
/// identify different colors in a `GtkStyle` for drawing, so states can be
/// used for subparts of a widget as well as entire widgets.
///
/// **StateType is deprecated:**
/// All APIs that are using this enumeration have been deprecated
///     in favor of alternatives using #GtkStateFlags.
public typealias StateType = GtkStateType


public extension StateType {
    /// Cast constructor, converting any binary integer to a
    /// `StateType`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToStateTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToStateTypeInt(raw))
    }
    /// State during normal operation.
    static let normal = GTK_STATE_NORMAL // 0

    /// State of a currently active widget, such as a depressed button.
    static let active = GTK_STATE_ACTIVE // 1

    /// State indicating that the mouse pointer is over
    ///                      the widget and the widget will respond to mouse clicks.
    static let prelight = GTK_STATE_PRELIGHT // 2

    /// State of a selected item, such the selected row in a list.
    static let selected = GTK_STATE_SELECTED // 3

    /// State indicating that the widget is
    ///                         unresponsive to user actions.
    static let insensitive = GTK_STATE_INSENSITIVE // 4

    /// The widget is inconsistent, such as checkbuttons
    ///                          or radiobuttons that aren’t either set to `true` nor `false`,
    ///                          or buttons requiring the user attention.
    static let inconsistent = GTK_STATE_INCONSISTENT // 5

    /// The widget has the keyboard focus.
    static let focused = GTK_STATE_FOCUSED // 6

}



/// These values are used as “info” for the targets contained in the
/// lists returned by `gtk_text_buffer_get_copy_target_list()` and
/// `gtk_text_buffer_get_paste_target_list()`.
/// 
/// The values counts down from `-1` to avoid clashes
/// with application added drag destinations which usually start at 0.
public typealias TextBufferTargetInfo = GtkTextBufferTargetInfo


public extension TextBufferTargetInfo {
    /// Cast constructor, converting any binary integer to a
    /// `TextBufferTargetInfo`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToTextBufferTargetInfoInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToTextBufferTargetInfoInt(raw))
    }
    /// Buffer contents
    static let bufferContents = GTK_TEXT_BUFFER_TARGET_INFO_BUFFER_CONTENTS // -1

    /// Rich text
    static let richText = GTK_TEXT_BUFFER_TARGET_INFO_RICH_TEXT // -2

    /// Text
    static let text = GTK_TEXT_BUFFER_TARGET_INFO_TEXT // -3

}



/// Reading directions for text.
public typealias TextDirection = GtkTextDirection


public extension TextDirection {
    /// Cast constructor, converting any binary integer to a
    /// `TextDirection`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToTextDirectionInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToTextDirectionInt(raw))
    }
    /// No direction.
    static let `none` = GTK_TEXT_DIR_NONE // 0

    /// Left to right text direction.
    static let ltr = GTK_TEXT_DIR_LTR // 1

    /// Right to left text direction.
    static let rtl = GTK_TEXT_DIR_RTL // 2

}



/// Granularity types that extend the text selection. Use the
/// `GtkTextView::extend-selection` signal to customize the selection.
public typealias TextExtendSelection = GtkTextExtendSelection


public extension TextExtendSelection {
    /// Cast constructor, converting any binary integer to a
    /// `TextExtendSelection`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToTextExtendSelectionInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToTextExtendSelectionInt(raw))
    }
    /// Selects the current word. It is triggered by
    ///   a double-click for example.
    static let word = GTK_TEXT_EXTEND_SELECTION_WORD // 0

    /// Selects the current line. It is triggered by
    ///   a triple-click for example.
    static let line = GTK_TEXT_EXTEND_SELECTION_LINE // 1

}



/// Used to reference the layers of `GtkTextView` for the purpose of customized
/// drawing with the `draw_layer` vfunc.
public typealias TextViewLayer = GtkTextViewLayer


public extension TextViewLayer {
    /// Cast constructor, converting any binary integer to a
    /// `TextViewLayer`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToTextViewLayerInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToTextViewLayerInt(raw))
    }
    /// Old deprecated layer, use `GTK_TEXT_VIEW_LAYER_BELOW_TEXT` instead
    static let below = GTK_TEXT_VIEW_LAYER_BELOW // 0

    /// Old deprecated layer, use `GTK_TEXT_VIEW_LAYER_ABOVE_TEXT` instead
    static let above = GTK_TEXT_VIEW_LAYER_ABOVE // 1

    /// The layer rendered below the text (but above the background).  Since: 3.20
    static let belowText = GTK_TEXT_VIEW_LAYER_BELOW_TEXT // 2

    /// The layer rendered above the text.  Since: 3.20
    static let aboveText = GTK_TEXT_VIEW_LAYER_ABOVE_TEXT // 3

}



/// Used to reference the parts of `GtkTextView`.
public typealias TextWindowType = GtkTextWindowType


public extension TextWindowType {
    /// Cast constructor, converting any binary integer to a
    /// `TextWindowType`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToTextWindowTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToTextWindowTypeInt(raw))
    }
    /// Invalid value, used as a marker
    static let `private` = GTK_TEXT_WINDOW_PRIVATE // 0

    /// Window that floats over scrolling areas.
    static let widget = GTK_TEXT_WINDOW_WIDGET // 1

    /// Scrollable text window.
    static let text = GTK_TEXT_WINDOW_TEXT // 2

    /// Left side border window.
    static let `left` = GTK_TEXT_WINDOW_LEFT // 3

    /// Right side border window.
    static let `right` = GTK_TEXT_WINDOW_RIGHT // 4

    /// Top border window.
    static let top = GTK_TEXT_WINDOW_TOP // 5

    /// Bottom border window.
    static let bottom = GTK_TEXT_WINDOW_BOTTOM // 6

}



/// Whether spacers are vertical lines or just blank.
///
/// **ToolbarSpaceStyle is deprecated:**
/// This method is deprecated.
public typealias ToolbarSpaceStyle = GtkToolbarSpaceStyle


public extension ToolbarSpaceStyle {
    /// Cast constructor, converting any binary integer to a
    /// `ToolbarSpaceStyle`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToToolbarSpaceStyleInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToToolbarSpaceStyleInt(raw))
    }
    /// Use blank spacers.
    static let empty = GTK_TOOLBAR_SPACE_EMPTY // 0

    /// Use vertical lines for spacers.
    static let line = GTK_TOOLBAR_SPACE_LINE // 1

}



/// Used to customize the appearance of a `GtkToolbar`. Note that
/// setting the toolbar style overrides the user’s preferences
/// for the default toolbar style.  Note that if the button has only
/// a label set and GTK_TOOLBAR_ICONS is used, the label will be
/// visible, and vice versa.
public typealias ToolbarStyle = GtkToolbarStyle


public extension ToolbarStyle {
    /// Cast constructor, converting any binary integer to a
    /// `ToolbarStyle`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToToolbarStyleInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToToolbarStyleInt(raw))
    }
    /// Buttons display only icons in the toolbar.
    static let icons = GTK_TOOLBAR_ICONS // 0

    /// Buttons display only text labels in the toolbar.
    static let text = GTK_TOOLBAR_TEXT // 1

    /// Buttons display text and icons in the toolbar.
    static let both = GTK_TOOLBAR_BOTH // 2

    /// Buttons display icons and text alongside each
    ///  other, rather than vertically stacked
    static let bothHoriz = GTK_TOOLBAR_BOTH_HORIZ // 3

}



/// The sizing method the column uses to determine its width.  Please note
/// that `GTK_TREE_VIEW_COLUMN_AUTOSIZE` are inefficient for large views, and
/// can make columns appear choppy.
public typealias TreeViewColumnSizing = GtkTreeViewColumnSizing


public extension TreeViewColumnSizing {
    /// Cast constructor, converting any binary integer to a
    /// `TreeViewColumnSizing`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToTreeViewColumnSizingInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToTreeViewColumnSizingInt(raw))
    }
    /// Columns only get bigger in reaction to changes in the model
    static let growOnly = GTK_TREE_VIEW_COLUMN_GROW_ONLY // 0

    /// Columns resize to be the optimal size everytime the model changes.
    static let autosize = GTK_TREE_VIEW_COLUMN_AUTOSIZE // 1

    /// Columns are a fixed numbers of pixels wide.
    static let fixed = GTK_TREE_VIEW_COLUMN_FIXED // 2

}



/// An enum for determining where a dropped row goes.
public typealias TreeViewDropPosition = GtkTreeViewDropPosition


public extension TreeViewDropPosition {
    /// Cast constructor, converting any binary integer to a
    /// `TreeViewDropPosition`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToTreeViewDropPositionInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToTreeViewDropPositionInt(raw))
    }
    /// dropped row is inserted before
    static let before = GTK_TREE_VIEW_DROP_BEFORE // 0

    /// dropped row is inserted after
    static let after = GTK_TREE_VIEW_DROP_AFTER // 1

    /// dropped row becomes a child or is inserted before
    static let intoOrBefore = GTK_TREE_VIEW_DROP_INTO_OR_BEFORE // 2

    /// dropped row becomes a child or is inserted after
    static let intoOrAfter = GTK_TREE_VIEW_DROP_INTO_OR_AFTER // 3

}



/// Used to indicate which grid lines to draw in a tree view.
public typealias TreeViewGridLines = GtkTreeViewGridLines


public extension TreeViewGridLines {
    /// Cast constructor, converting any binary integer to a
    /// `TreeViewGridLines`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToTreeViewGridLinesInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToTreeViewGridLinesInt(raw))
    }
    /// No grid lines.
    static let `none` = GTK_TREE_VIEW_GRID_LINES_NONE // 0

    /// Horizontal grid lines.
    static let horizontal = GTK_TREE_VIEW_GRID_LINES_HORIZONTAL // 1

    /// Vertical grid lines.
    static let vertical = GTK_TREE_VIEW_GRID_LINES_VERTICAL // 2

    /// Horizontal and vertical grid lines.
    static let both = GTK_TREE_VIEW_GRID_LINES_BOTH // 3

}



/// See also `gtk_print_settings_set_paper_width()`.
public typealias Unit = GtkUnit


public extension Unit {
    /// Cast constructor, converting any binary integer to a
    /// `Unit`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToUnitInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToUnitInt(raw))
    }
    /// No units.
    static let `none` = GTK_UNIT_NONE // 0

    /// Dimensions in points.
    static let points = GTK_UNIT_POINTS // 1

    /// Dimensions in inches.
    static let inch = GTK_UNIT_INCH // 2

    /// Dimensions in millimeters
    static let mm = GTK_UNIT_MM // 3

}



/// Kinds of widget-specific help. Used by the `show-help` signal.
public typealias WidgetHelpType = GtkWidgetHelpType


public extension WidgetHelpType {
    /// Cast constructor, converting any binary integer to a
    /// `WidgetHelpType`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToWidgetHelpTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToWidgetHelpTypeInt(raw))
    }
    /// Tooltip.
    static let tooltip = GTK_WIDGET_HELP_TOOLTIP // 0

    /// What’s this.
    static let whatsThis = GTK_WIDGET_HELP_WHATS_THIS // 1

}



/// Window placement can be influenced using this enumeration. Note that
/// using `GTK_WIN_POS_CENTER_ALWAYS` is almost always a bad idea.
/// It won’t necessarily work well with all window managers or on all windowing systems.
public typealias WindowPosition = GtkWindowPosition


public extension WindowPosition {
    /// Cast constructor, converting any binary integer to a
    /// `WindowPosition`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToWindowPositionInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToWindowPositionInt(raw))
    }
    /// No influence is made on placement.
    static let `none` = GTK_WIN_POS_NONE // 0

    /// Windows should be placed in the center of the screen.
    static let center = GTK_WIN_POS_CENTER // 1

    /// Windows should be placed at the current mouse position.
    static let mouse = GTK_WIN_POS_MOUSE // 2

    /// Keep window centered as it changes size, etc.
    static let centerAlways = GTK_WIN_POS_CENTER_ALWAYS // 3

    /// Center the window on its transient
    ///  parent (see `gtk_window_set_transient_for()`).
    static let centerOnParent = GTK_WIN_POS_CENTER_ON_PARENT // 4

}



/// A `GtkWindow` can be one of these types. Most things you’d consider a
/// “window” should have type `GTK_WINDOW_TOPLEVEL`; windows with this type
/// are managed by the window manager and have a frame by default (call
/// `gtk_window_set_decorated()` to toggle the frame).  Windows with type
/// `GTK_WINDOW_POPUP` are ignored by the window manager; window manager
/// keybindings won’t work on them, the window manager won’t decorate the
/// window with a frame, many GTK+ features that rely on the window
/// manager will not work (e.g. resize grips and
/// maximization/minimization). `GTK_WINDOW_POPUP` is used to implement
/// widgets such as `GtkMenu` or tooltips that you normally don’t think of
/// as windows per se. Nearly all windows should be `GTK_WINDOW_TOPLEVEL`.
/// In particular, do not use `GTK_WINDOW_POPUP` just to turn off
/// the window borders; use `gtk_window_set_decorated()` for that.
public typealias WindowType = GtkWindowType


public extension WindowType {
    /// Cast constructor, converting any binary integer to a
    /// `WindowType`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToWindowTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToWindowTypeInt(raw))
    }
    /// A regular window, such as a dialog.
    static let toplevel = GTK_WINDOW_TOPLEVEL // 0

    /// A special window such as a tooltip.
    static let popup = GTK_WINDOW_POPUP // 1

}



/// Describes a type of line wrapping.
public typealias WrapMode = GtkWrapMode


public extension WrapMode {
    /// Cast constructor, converting any binary integer to a
    /// `WrapMode`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToWrapModeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToWrapModeInt(raw))
    }
    /// do not wrap lines; just make the text area wider
    static let `none` = GTK_WRAP_NONE // 0

    /// wrap text, breaking lines anywhere the cursor can
    ///     appear (between characters, usually - if you want to be technical,
    ///     between graphemes, see `pango_get_log_attrs()`)
    static let char = GTK_WRAP_CHAR // 1

    /// wrap text, breaking lines in between words
    static let word = GTK_WRAP_WORD // 2

    /// wrap text, breaking lines in between words, or if
    ///     that is not enough, also between graphemes
    static let wordChar = GTK_WRAP_WORD_CHAR // 3

}

