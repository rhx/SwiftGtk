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

/// The possible values for the `GTK_ACCESSIBLE_PROPERTY_AUTOCOMPLETE`
/// accessible property.
public typealias AccessibleAutocomplete = GtkAccessibleAutocomplete

public extension AccessibleAutocomplete {
    /// Cast constructor, converting any binary integer to a
    /// `AccessibleAutocomplete`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToAccessibleAutocompleteInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToAccessibleAutocompleteInt(raw))
    }
    /// Automatic suggestions are not displayed.
    static let `none` = GTK_ACCESSIBLE_AUTOCOMPLETE_NONE // 0
    /// When a user is providing input, text
    ///    suggesting one way to complete the provided input may be dynamically
    ///    inserted after the caret.
    static let inline = GTK_ACCESSIBLE_AUTOCOMPLETE_INLINE // 1
    /// When a user is providing input, an element
    ///    containing a collection of values that could complete the provided input
    ///    may be displayed.
    static let list = GTK_ACCESSIBLE_AUTOCOMPLETE_LIST // 2
    /// When a user is providing input, an element
    ///    containing a collection of values that could complete the provided input
    ///    may be displayed. If displayed, one value in the collection is automatically
    ///    selected, and the text needed to complete the automatically selected value
    ///    appears after the caret in the input.
    static let both = GTK_ACCESSIBLE_AUTOCOMPLETE_BOTH // 3
}



/// The possible values for the `GTK_ACCESSIBLE_STATE_INVALID`
/// accessible state.
/// 
/// Note that the `GTK_ACCESSIBLE_INVALID_FALSE` and
/// `GTK_ACCESSIBLE_INVALID_TRUE` have the same values
/// as `false` and `true`.
public typealias AccessibleInvalidState = GtkAccessibleInvalidState

public extension AccessibleInvalidState {
    /// Cast constructor, converting any binary integer to a
    /// `AccessibleInvalidState`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToAccessibleInvalidStateInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToAccessibleInvalidStateInt(raw))
    }
    /// There are no detected errors in the value
    static let `false` = GTK_ACCESSIBLE_INVALID_FALSE // 0
    /// The value entered by the user has failed validation
    static let `true` = GTK_ACCESSIBLE_INVALID_TRUE // 1
    /// A grammatical error was detected
    static let grammar = GTK_ACCESSIBLE_INVALID_GRAMMAR // 2
    /// A spelling error was detected
    static let spelling = GTK_ACCESSIBLE_INVALID_SPELLING // 3
}



/// The possible accessible properties of a `GtkAccessible`.
public typealias AccessibleProperty = GtkAccessibleProperty

public extension AccessibleProperty {
    /// Cast constructor, converting any binary integer to a
    /// `AccessibleProperty`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToAccessiblePropertyInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToAccessiblePropertyInt(raw))
    }
    /// Indicates whether inputting text
    ///    could trigger display of one or more predictions of the user's intended
    ///    value for a combobox, searchbox, or textbox and specifies how predictions
    ///    would be presented if they were made. Value type: `GtkAccessibleAutocomplete`
    static let autocomplete = GTK_ACCESSIBLE_PROPERTY_AUTOCOMPLETE // 0
    /// Defines a string value that describes
    ///    or annotates the current element. Value type: string
    static let description = GTK_ACCESSIBLE_PROPERTY_DESCRIPTION // 1
    /// Indicates the availability and type of
    ///    interactive popup element, such as menu or dialog, that can be triggered
    ///    by an element.
    static let hasPopup = GTK_ACCESSIBLE_PROPERTY_HAS_POPUP // 2
    /// Indicates keyboard shortcuts that an
    ///    author has implemented to activate or give focus to an element. Value type:
    ///    string
    static let keyShortcuts = GTK_ACCESSIBLE_PROPERTY_KEY_SHORTCUTS // 3
    /// Defines a string value that labels the current
    ///    element. Value type: string
    static let label = GTK_ACCESSIBLE_PROPERTY_LABEL // 4
    /// Defines the hierarchical level of an element
    ///    within a structure. Value type: integer
    static let level = GTK_ACCESSIBLE_PROPERTY_LEVEL // 5
    /// Indicates whether an element is modal when
    ///    displayed. Value type: boolean
    static let modal = GTK_ACCESSIBLE_PROPERTY_MODAL // 6
    /// Indicates whether a text box accepts
    ///    multiple lines of input or only a single line. Value type: boolean
    static let multiLine = GTK_ACCESSIBLE_PROPERTY_MULTI_LINE // 7
    /// Indicates that the user may select
    ///    more than one item from the current selectable descendants. Value type:
    ///    boolean
    static let multiSelectable = GTK_ACCESSIBLE_PROPERTY_MULTI_SELECTABLE // 8
    /// Indicates whether the element's
    ///    orientation is horizontal, vertical, or unknown/ambiguous. Value type:
    ///    `GtkOrientation`
    static let orientation = GTK_ACCESSIBLE_PROPERTY_ORIENTATION // 9
    /// Defines a short hint (a word or short
    ///    phrase) intended to aid the user with data entry when the control has no
    ///    value. A hint could be a sample value or a brief description of the expected
    ///    format. Value type: string
    static let placeholder = GTK_ACCESSIBLE_PROPERTY_PLACEHOLDER // 10
    /// Indicates that the element is not editable,
    ///    but is otherwise operable. Value type: boolean
    static let readOnly = GTK_ACCESSIBLE_PROPERTY_READ_ONLY // 11
    /// Indicates that user input is required on
    ///    the element before a form may be submitted. Value type: boolean
    static let `required` = GTK_ACCESSIBLE_PROPERTY_REQUIRED // 12
    /// Defines a human-readable,
    ///    author-localized description for the role of an element. Value type: string
    static let roleDescription = GTK_ACCESSIBLE_PROPERTY_ROLE_DESCRIPTION // 13
    /// Indicates if items in a table or grid are
    ///    sorted in ascending or descending order. Possible property values are in
    ///    the `GtkAccessibleSort` enumeration. Value type: `GtkAccessibleSort`
    static let sort = GTK_ACCESSIBLE_PROPERTY_SORT // 14
    /// Defines the maximum allowed value for a
    ///    range widget. Value type: double
    static let valueMax = GTK_ACCESSIBLE_PROPERTY_VALUE_MAX // 15
    /// Defines the minimum allowed value for a
    ///    range widget. Value type: double
    static let valueMin = GTK_ACCESSIBLE_PROPERTY_VALUE_MIN // 16
    /// Defines the current value for a range widget.
    ///    Value type: double
    static let valueNow = GTK_ACCESSIBLE_PROPERTY_VALUE_NOW // 17
    /// Defines the human readable text alternative
    ///    of aria-valuenow for a range widget. Value type: string
    static let valueText = GTK_ACCESSIBLE_PROPERTY_VALUE_TEXT // 18
}



/// The possible accessible relations of a `GtkAccessible`.
/// Accessible relations can be references to other widgets,
/// integers or strings.
public typealias AccessibleRelation = GtkAccessibleRelation

public extension AccessibleRelation {
    /// Cast constructor, converting any binary integer to a
    /// `AccessibleRelation`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToAccessibleRelationInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToAccessibleRelationInt(raw))
    }
    /// Identifies the currently active
    ///    element when focus is on a composite widget, combobox, textbox, group,
    ///    or application. Value type: reference
    static let activeDescendant = GTK_ACCESSIBLE_RELATION_ACTIVE_DESCENDANT // 0
    /// Defines the total number of columns
    ///    in a table, grid, or treegrid. Value type: integer
    static let colCount = GTK_ACCESSIBLE_RELATION_COL_COUNT // 1
    /// Defines an element's column index or
    ///    position with respect to the total number of columns within a table,
    ///    grid, or treegrid. Value type: integer
    static let colIndex = GTK_ACCESSIBLE_RELATION_COL_INDEX // 2
    /// Defines a human readable text
    ///   alternative of `GTK_ACCESSIBLE_RELATION_COL_INDEX`. Value type: string
    static let colIndexText = GTK_ACCESSIBLE_RELATION_COL_INDEX_TEXT // 3
    /// Defines the number of columns spanned
    ///   by a cell or gridcell within a table, grid, or treegrid. Value type: integer
    static let colSpan = GTK_ACCESSIBLE_RELATION_COL_SPAN // 4
    /// Identifies the element (or elements) whose
    ///    contents or presence are controlled by the current element. Value type: reference
    static let controls = GTK_ACCESSIBLE_RELATION_CONTROLS // 5
    /// Identifies the element (or elements)
    ///    that describes the object. Value type: reference
    static let describedBy = GTK_ACCESSIBLE_RELATION_DESCRIBED_BY // 6
    /// Identifies the element (or elements) that
    ///    provide additional information related to the object. Value type: reference
    static let details = GTK_ACCESSIBLE_RELATION_DETAILS // 7
    /// Identifies the element that provides
    ///    an error message for an object. Value type: reference
    static let errorMessage = GTK_ACCESSIBLE_RELATION_ERROR_MESSAGE // 8
    /// Identifies the next element (or elements)
    ///    in an alternate reading order of content which, at the user's discretion,
    ///    allows assistive technology to override the general default of reading in
    ///    document source order. Value type: reference
    static let flowTo = GTK_ACCESSIBLE_RELATION_FLOW_TO // 9
    /// Identifies the element (or elements)
    ///    that labels the current element. Value type: reference
    static let labelledBy = GTK_ACCESSIBLE_RELATION_LABELLED_BY // 10
    /// Identifies an element (or elements) in order
    ///    to define a visual, functional, or contextual parent/child relationship
    ///    between elements where the widget hierarchy cannot be used to represent
    ///    the relationship. Value type: reference
    static let owns = GTK_ACCESSIBLE_RELATION_OWNS // 11
    /// Defines an element's number or position
    ///    in the current set of listitems or treeitems. Value type: integer
    static let posInSet = GTK_ACCESSIBLE_RELATION_POS_IN_SET // 12
    /// Defines the total number of rows in a table,
    ///    grid, or treegrid. Value type: integer
    static let rowCount = GTK_ACCESSIBLE_RELATION_ROW_COUNT // 13
    /// Defines an element's row index or position
    ///    with respect to the total number of rows within a table, grid, or treegrid.
    ///    Value type: integer
    static let rowIndex = GTK_ACCESSIBLE_RELATION_ROW_INDEX // 14
    /// Defines a human readable text
    ///    alternative of aria-rowindex. Value type: string
    static let rowIndexText = GTK_ACCESSIBLE_RELATION_ROW_INDEX_TEXT // 15
    /// Defines the number of rows spanned by a
    ///    cell or gridcell within a table, grid, or treegrid. Value type: integer
    static let rowSpan = GTK_ACCESSIBLE_RELATION_ROW_SPAN // 16
    /// Defines the number of items in the current
    ///    set of listitems or treeitems. Value type: integer
    static let setSize = GTK_ACCESSIBLE_RELATION_SET_SIZE // 17
}



/// The accessible role for a `GtkAccessible` implementation.
/// 
/// Abstract roles are only used as part of the ontology; application
/// developers must not use abstract roles in their code.
public typealias AccessibleRole = GtkAccessibleRole

public extension AccessibleRole {
    /// Cast constructor, converting any binary integer to a
    /// `AccessibleRole`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToAccessibleRoleInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToAccessibleRoleInt(raw))
    }
    /// An element with important, and usually
    ///   time-sensitive, information
    static let alert = GTK_ACCESSIBLE_ROLE_ALERT // 0
    /// A type of dialog that contains an
    ///   alert message
    static let alertDialog = GTK_ACCESSIBLE_ROLE_ALERT_DIALOG // 1
    /// Unused
    static let banner = GTK_ACCESSIBLE_ROLE_BANNER // 2
    /// An input element that allows for
    ///   user-triggered actions when clicked or pressed
    static let button = GTK_ACCESSIBLE_ROLE_BUTTON // 3
    /// Unused
    static let caption = GTK_ACCESSIBLE_ROLE_CAPTION // 4
    /// Unused
    static let cell = GTK_ACCESSIBLE_ROLE_CELL // 5
    /// A checkable input element that has
    ///   three possible values: `true`, `false`, or `mixed`
    static let checkbox = GTK_ACCESSIBLE_ROLE_CHECKBOX // 6
    /// A header in a columned list.
    static let columnHeader = GTK_ACCESSIBLE_ROLE_COLUMN_HEADER // 7
    /// An input that controls another element,
    ///   such as a list or a grid, that can dynamically pop up to help the user
    ///   set the value of the input
    static let comboBox = GTK_ACCESSIBLE_ROLE_COMBO_BOX // 8
    /// Abstract role.
    static let command = GTK_ACCESSIBLE_ROLE_COMMAND // 9
    /// Abstract role.
    static let composite = GTK_ACCESSIBLE_ROLE_COMPOSITE // 10
    /// A dialog is a window that is designed to interrupt
    ///    the current processing of an application in order to prompt the user to enter
    ///    information or require a response.
    static let dialog = GTK_ACCESSIBLE_ROLE_DIALOG // 11
    /// Unused
    static let document = GTK_ACCESSIBLE_ROLE_DOCUMENT // 12
    /// Unused
    static let feed = GTK_ACCESSIBLE_ROLE_FEED // 13
    /// Unused
    static let form = GTK_ACCESSIBLE_ROLE_FORM // 14
    /// Unused
    static let generic = GTK_ACCESSIBLE_ROLE_GENERIC // 15
    /// A grid of items.
    static let grid = GTK_ACCESSIBLE_ROLE_GRID // 16
    /// An item in a grid or tree grid.
    static let gridCell = GTK_ACCESSIBLE_ROLE_GRID_CELL // 17
    /// An element that groups multiple widgets. GTK uses
    ///   this role for various containers, like `GtkBox`, `GtkViewport`, and `GtkHeaderBar`.
    static let group = GTK_ACCESSIBLE_ROLE_GROUP // 18
    /// Unused
    static let heading = GTK_ACCESSIBLE_ROLE_HEADING // 19
    /// An image.
    static let img = GTK_ACCESSIBLE_ROLE_IMG // 20
    /// Abstract role.
    static let input = GTK_ACCESSIBLE_ROLE_INPUT // 21
    /// A visible name or caption for a user interface component.
    static let label = GTK_ACCESSIBLE_ROLE_LABEL // 22
    /// Abstract role.
    static let landmark = GTK_ACCESSIBLE_ROLE_LANDMARK // 23
    /// Unused
    static let legend = GTK_ACCESSIBLE_ROLE_LEGEND // 24
    /// A clickable link.
    static let link = GTK_ACCESSIBLE_ROLE_LINK // 25
    /// A list of items.
    static let list = GTK_ACCESSIBLE_ROLE_LIST // 26
    /// Unused.
    static let listBox = GTK_ACCESSIBLE_ROLE_LIST_BOX // 27
    /// An item in a list.
    static let listItem = GTK_ACCESSIBLE_ROLE_LIST_ITEM // 28
    /// Unused
    static let log = GTK_ACCESSIBLE_ROLE_LOG // 29
    /// Unused
    static let main = GTK_ACCESSIBLE_ROLE_MAIN // 30
    /// Unused
    static let marquee = GTK_ACCESSIBLE_ROLE_MARQUEE // 31
    /// Unused
    static let math = GTK_ACCESSIBLE_ROLE_MATH // 32
    /// An element that represents a value within a known range.
    static let meter = GTK_ACCESSIBLE_ROLE_METER // 33
    /// A menu.
    static let menu = GTK_ACCESSIBLE_ROLE_MENU // 34
    /// A menubar.
    static let menuBar = GTK_ACCESSIBLE_ROLE_MENU_BAR // 35
    /// An item in a menu.
    static let menuItem = GTK_ACCESSIBLE_ROLE_MENU_ITEM // 36
    /// A check item in a menu.
    static let menuItemCheckbox = GTK_ACCESSIBLE_ROLE_MENU_ITEM_CHECKBOX // 37
    /// A radio item in a menu.
    static let menuItemRadio = GTK_ACCESSIBLE_ROLE_MENU_ITEM_RADIO // 38
    /// Unused
    static let navigation = GTK_ACCESSIBLE_ROLE_NAVIGATION // 39
    /// An element that is not represented to accessibility technologies.
    static let `none` = GTK_ACCESSIBLE_ROLE_NONE // 40
    /// Unused
    static let note = GTK_ACCESSIBLE_ROLE_NOTE // 41
    /// Unused
    static let option = GTK_ACCESSIBLE_ROLE_OPTION // 42
    /// An element that is not represented to accessibility technologies.
    static let presentation = GTK_ACCESSIBLE_ROLE_PRESENTATION // 43
    /// An element that displays the progress
    ///    status for tasks that take a long time.
    static let progressBar = GTK_ACCESSIBLE_ROLE_PROGRESS_BAR // 44
    /// A checkable input in a group of radio roles,
    ///    only one of which can be checked at a time.
    static let radio = GTK_ACCESSIBLE_ROLE_RADIO // 45
    /// Unused
    static let radioGroup = GTK_ACCESSIBLE_ROLE_RADIO_GROUP // 46
    /// Abstract role.
    static let range = GTK_ACCESSIBLE_ROLE_RANGE // 47
    /// Unused
    static let region = GTK_ACCESSIBLE_ROLE_REGION // 48
    /// A row in a columned list.
    static let row = GTK_ACCESSIBLE_ROLE_ROW // 49
    /// Unused
    static let rowGroup = GTK_ACCESSIBLE_ROLE_ROW_GROUP // 50
    /// Unused
    static let rowHeader = GTK_ACCESSIBLE_ROLE_ROW_HEADER // 51
    /// A graphical object that controls the scrolling
    ///    of content within a viewing area, regardless of whether the content is fully
    ///    displayed within the viewing area.
    static let scrollbar = GTK_ACCESSIBLE_ROLE_SCROLLBAR // 52
    /// Unused
    static let search = GTK_ACCESSIBLE_ROLE_SEARCH // 53
    /// A type of textbox intended for specifying
    ///    search criteria.
    static let searchBox = GTK_ACCESSIBLE_ROLE_SEARCH_BOX // 54
    /// Abstract role.
    static let section = GTK_ACCESSIBLE_ROLE_SECTION // 55
    /// Abstract role.
    static let sectionHead = GTK_ACCESSIBLE_ROLE_SECTION_HEAD // 56
    /// Abstract role.
    static let select = GTK_ACCESSIBLE_ROLE_SELECT // 57
    /// A divider that separates and distinguishes
    ///    sections of content or groups of menuitems.
    static let separator = GTK_ACCESSIBLE_ROLE_SEPARATOR // 58
    /// A user input where the user selects a value
    ///    from within a given range.
    static let slider = GTK_ACCESSIBLE_ROLE_SLIDER // 59
    /// A form of range that expects the user to
    ///    select from among discrete choices.
    static let spinButton = GTK_ACCESSIBLE_ROLE_SPIN_BUTTON // 60
    /// Unused
    static let status = GTK_ACCESSIBLE_ROLE_STATUS // 61
    /// Abstract role.
    static let structure = GTK_ACCESSIBLE_ROLE_STRUCTURE // 62
    /// A type of checkbox that represents on/off values,
    ///    as opposed to checked/unchecked values.
    static let `switch` = GTK_ACCESSIBLE_ROLE_SWITCH // 63
    /// An item in a list of tab used for switching pages.
    static let tab = GTK_ACCESSIBLE_ROLE_TAB // 64
    /// Unused
    static let table = GTK_ACCESSIBLE_ROLE_TABLE // 65
    /// A list of tabs for switching pages.
    static let tabList = GTK_ACCESSIBLE_ROLE_TAB_LIST // 66
    /// A page in a notebook or stack.
    static let tabPanel = GTK_ACCESSIBLE_ROLE_TAB_PANEL // 67
    /// A type of input that allows free-form text
    ///    as its value.
    static let textBox = GTK_ACCESSIBLE_ROLE_TEXT_BOX // 68
    /// Unused
    static let time = GTK_ACCESSIBLE_ROLE_TIME // 69
    /// Unused
    static let timer = GTK_ACCESSIBLE_ROLE_TIMER // 70
    /// Unused
    static let toolbar = GTK_ACCESSIBLE_ROLE_TOOLBAR // 71
    /// Unused
    static let tooltip = GTK_ACCESSIBLE_ROLE_TOOLTIP // 72
    /// Unused
    static let tree = GTK_ACCESSIBLE_ROLE_TREE // 73
    /// A treeview-like, columned list.
    static let treeGrid = GTK_ACCESSIBLE_ROLE_TREE_GRID // 74
    /// Unused
    static let treeItem = GTK_ACCESSIBLE_ROLE_TREE_ITEM // 75
    /// An interactive component of a graphical user
    ///    interface. This is the role that GTK uses by default for widgets.
    static let widget = GTK_ACCESSIBLE_ROLE_WIDGET // 76
    /// An application window.
    static let window = GTK_ACCESSIBLE_ROLE_WINDOW // 77
}



/// The possible values for the `GTK_ACCESSIBLE_PROPERTY_SORT`
/// accessible property.
public typealias AccessibleSort = GtkAccessibleSort

public extension AccessibleSort {
    /// Cast constructor, converting any binary integer to a
    /// `AccessibleSort`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToAccessibleSortInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToAccessibleSortInt(raw))
    }
    /// There is no defined sort applied to the column.
    static let `none` = GTK_ACCESSIBLE_SORT_NONE // 0
    /// Items are sorted in ascending order by this column.
    static let ascending = GTK_ACCESSIBLE_SORT_ASCENDING // 1
    /// Items are sorted in descending order by this column.
    static let descending = GTK_ACCESSIBLE_SORT_DESCENDING // 2
    /// A sort algorithm other than ascending or
    ///    descending has been applied.
    static let other = GTK_ACCESSIBLE_SORT_OTHER // 3
}



/// The possible accessible states of a `GtkAccessible`.
public typealias AccessibleState = GtkAccessibleState

public extension AccessibleState {
    /// Cast constructor, converting any binary integer to a
    /// `AccessibleState`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToAccessibleStateInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToAccessibleStateInt(raw))
    }
    /// A “busy” state. This state has boolean values
    static let busy = GTK_ACCESSIBLE_STATE_BUSY // 0
    /// A “checked” state; indicates the current
    ///   state of a `GtkCheckButton`. Value type: `GtkAccessibleTristate`
    static let checked = GTK_ACCESSIBLE_STATE_CHECKED // 1
    /// A “disabled” state; corresponds to the
    ///   `GtkWidget:sensitive` property on `GtkWidget`. It indicates a UI element
    ///   that is perceivable, but not editable or operable. Value type: boolean
    static let disabled = GTK_ACCESSIBLE_STATE_DISABLED // 2
    /// An “expanded” state; corresponds to the
    ///   `GtkExpander:expanded` property on `GtkExpander`. Value type: boolean
    ///   or undefined
    static let expanded = GTK_ACCESSIBLE_STATE_EXPANDED // 3
    /// A “hidden” state; corresponds to the
    ///   `GtkWidget:visible` property on `GtkWidget`. You can use this state
    ///   explicitly on UI elements that should not be exposed to an assistive
    ///   technology. Value type: boolean
    ///   See also: `GTK_ACCESSIBLE_STATE_DISABLED`
    static let hidden = GTK_ACCESSIBLE_STATE_HIDDEN // 4
    /// An “invalid” state; set when a widget
    ///   is showing an error. Value type: `GtkAccessibleInvalidState`
    static let invalid = GTK_ACCESSIBLE_STATE_INVALID // 5
    /// A “pressed” state; indicates the current
    ///   state of a `GtkToggleButton`. Value type: `GtkAccessibleTristate`
    ///   enumeration
    static let pressed = GTK_ACCESSIBLE_STATE_PRESSED // 6
    /// A “selected” state; set when a widget
    ///   is selected. Value type: boolean or undefined
    static let selected = GTK_ACCESSIBLE_STATE_SELECTED // 7
}



/// The possible values for the `GTK_ACCESSIBLE_STATE_PRESSED`
/// accessible state.
/// 
/// Note that the `GTK_ACCESSIBLE_TRISTATE_FALSE` and
/// `GTK_ACCESSIBLE_TRISTATE_TRUE` have the same values
/// as `false` and `true`.
public typealias AccessibleTristate = GtkAccessibleTristate

public extension AccessibleTristate {
    /// Cast constructor, converting any binary integer to a
    /// `AccessibleTristate`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToAccessibleTristateInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToAccessibleTristateInt(raw))
    }
    /// The state is `false`
    static let `false` = GTK_ACCESSIBLE_TRISTATE_FALSE // 0
    /// The state is `true`
    static let `true` = GTK_ACCESSIBLE_TRISTATE_TRUE // 1
    /// The state is `mixed`
    static let mixed = GTK_ACCESSIBLE_TRISTATE_MIXED // 2
}



/// Controls how a widget deals with extra space in a single (x or y)
/// dimension.
/// 
/// Alignment only matters if the widget receives a “too large” allocation,
/// for example if you packed the widget with the `GtkWidget:hexpand`
/// property inside a `GtkBox`, then the widget might get extra space.
/// If you have for example a 16x16 icon inside a 32x32 space, the icon
/// could be scaled and stretched, it could be centered, or it could be
/// positioned to one side of the space.
/// 
/// Note that in horizontal context `GTK_ALIGN_START` and `GTK_ALIGN_END`
/// are interpreted relative to text direction.
/// 
/// `GTK_ALIGN_BASELINE` support is optional for containers and widgets, and
/// it is only supported for vertical alignment.  When it's not supported by
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
    /// align the widget according to the baseline. See
    ///     `GtkWidget`
    static let baseline = GTK_ALIGN_BASELINE // 4
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
    /// No arrow.
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
/// the amount of vertical space in the row is taller than the total
/// requested height of the baseline-aligned children then it can use a
/// `GtkBaselinePosition` to select where to put the baseline inside the
/// extra available space.
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
    /// Same as `GTK_BORDER_STYLE_NONE`
    static let hidden = GTK_BORDER_STYLE_HIDDEN // 1
    /// A single line segment
    static let solid = GTK_BORDER_STYLE_SOLID // 2
    /// Looks as if the content is sunken into the canvas
    static let inset = GTK_BORDER_STYLE_INSET // 3
    /// Looks as if the content is coming out of the canvas
    static let outset = GTK_BORDER_STYLE_OUTSET // 4
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
    ///  of GTK.
    static let versionMismatch = GTK_BUILDER_ERROR_VERSION_MISMATCH // 7
    /// An object id occurred twice.
    static let duplicateId = GTK_BUILDER_ERROR_DUPLICATE_ID // 8
    /// A specified object type is of the same type or
    ///  derived from the type of the composite class being extended with builder XML.
    static let objectTypeRefused = GTK_BUILDER_ERROR_OBJECT_TYPE_REFUSED // 9
    /// The wrong type was specified in a composite class’s template XML
    static let templateMismatch = GTK_BUILDER_ERROR_TEMPLATE_MISMATCH // 10
    /// The specified property is unknown for the object class.
    static let invalidProperty = GTK_BUILDER_ERROR_INVALID_PROPERTY // 11
    /// The specified signal is unknown for the object class.
    static let invalidSignal = GTK_BUILDER_ERROR_INVALID_SIGNAL // 12
    /// An object id is unknown.
    static let invalidId = GTK_BUILDER_ERROR_INVALID_ID // 13
    /// A function could not be found. This often happens
    ///     when symbols are set to be kept private. Compiling code with -rdynamic or using the
    ///     `gmodule-export-2.0` pkgconfig module can fix this problem.
    static let invalidFunction = GTK_BUILDER_ERROR_INVALID_FUNCTION // 14
}



/// Prebuilt sets of buttons for the dialog. If
/// none of these choices are appropriate, simply use `GTK_BUTTONS_NONE`
/// then call `gtk_dialog_add_buttons()`.
/// 
/// > Please note that `GTK_BUTTONS_OK`, `GTK_BUTTONS_YES_NO`
/// > and `GTK_BUTTONS_OK_CANCEL` are discouraged by the
/// > [GNOME Human Interface Guidelines](http://library.gnome.org/devel/hig-book/stable/).
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



/// Determines if the edited accelerators are GTK accelerators. If
/// they are, consumed modifiers are suppressed, only accelerators
/// accepted by GTK are allowed, and the accelerators are rendered
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
    /// GTK accelerators mode
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



/// The widget attributes that can be used when creating a `GtkConstraint`.
public typealias ConstraintAttribute = GtkConstraintAttribute

public extension ConstraintAttribute {
    /// Cast constructor, converting any binary integer to a
    /// `ConstraintAttribute`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToConstraintAttributeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToConstraintAttributeInt(raw))
    }
    /// No attribute, used for constant
    ///   relations
    static let `none` = GTK_CONSTRAINT_ATTRIBUTE_NONE // 0
    /// The left edge of a widget, regardless of
    ///   text direction
    static let `left` = GTK_CONSTRAINT_ATTRIBUTE_LEFT // 1
    /// The right edge of a widget, regardless
    ///   of text direction
    static let `right` = GTK_CONSTRAINT_ATTRIBUTE_RIGHT // 2
    /// The top edge of a widget
    static let top = GTK_CONSTRAINT_ATTRIBUTE_TOP // 3
    /// The bottom edge of a widget
    static let bottom = GTK_CONSTRAINT_ATTRIBUTE_BOTTOM // 4
    /// The leading edge of a widget, depending
    ///   on text direction; equivalent to `GTK_CONSTRAINT_ATTRIBUTE_LEFT` for LTR
    ///   languages, and `GTK_CONSTRAINT_ATTRIBUTE_RIGHT` for RTL ones
    static let start = GTK_CONSTRAINT_ATTRIBUTE_START // 5
    /// The trailing edge of a widget, depending
    ///   on text direction; equivalent to `GTK_CONSTRAINT_ATTRIBUTE_RIGHT` for LTR
    ///   languages, and `GTK_CONSTRAINT_ATTRIBUTE_LEFT` for RTL ones
    static let end = GTK_CONSTRAINT_ATTRIBUTE_END // 6
    /// The width of a widget
    static let width = GTK_CONSTRAINT_ATTRIBUTE_WIDTH // 7
    /// The height of a widget
    static let height = GTK_CONSTRAINT_ATTRIBUTE_HEIGHT // 8
    /// The center of a widget, on the
    ///   horizontal axis
    static let centerX = GTK_CONSTRAINT_ATTRIBUTE_CENTER_X // 9
    /// The center of a widget, on the
    ///   vertical axis
    static let centerY = GTK_CONSTRAINT_ATTRIBUTE_CENTER_Y // 10
    /// The baseline of a widget
    static let baseline = GTK_CONSTRAINT_ATTRIBUTE_BASELINE // 11
}



/// The relation between two terms of a constraint.
public typealias ConstraintRelation = GtkConstraintRelation

public extension ConstraintRelation {
    /// Cast constructor, converting any binary integer to a
    /// `ConstraintRelation`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToConstraintRelationInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToConstraintRelationInt(raw))
    }
    /// Less than, or equal
    static let le = GTK_CONSTRAINT_RELATION_LE // -1
    /// Equal
    static let eq = GTK_CONSTRAINT_RELATION_EQ // 0
    /// Greater than, or equal
    static let ge = GTK_CONSTRAINT_RELATION_GE // 1
}



/// The strength of a constraint, expressed as a symbolic constant.
/// 
/// The strength of a `GtkConstraint` can be expressed with any positive
/// integer; the values of this enumeration can be used for readability.
public typealias ConstraintStrength = GtkConstraintStrength

public extension ConstraintStrength {
    /// Cast constructor, converting any binary integer to a
    /// `ConstraintStrength`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToConstraintStrengthInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToConstraintStrengthInt(raw))
    }
    /// The constraint is required towards solving the layout
    static let `required` = GTK_CONSTRAINT_STRENGTH_REQUIRED // 1001001000
    /// A strong constraint
    static let strong = GTK_CONSTRAINT_STRENGTH_STRONG // 1000000000
    /// A medium constraint
    static let medium = GTK_CONSTRAINT_STRENGTH_MEDIUM // 1000
    /// A weak constraint
    static let `weak` = GTK_CONSTRAINT_STRENGTH_WEAK // 1
}



/// Domain for VFL parsing errors.
public typealias ConstraintVflParserError = GtkConstraintVflParserError

public extension ConstraintVflParserError {
    /// Cast constructor, converting any binary integer to a
    /// `ConstraintVflParserError`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToConstraintVflParserErrorInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToConstraintVflParserErrorInt(raw))
    }
    /// Invalid or unknown symbol
    static let symbol = GTK_CONSTRAINT_VFL_PARSER_ERROR_INVALID_SYMBOL // 0
    /// Invalid or unknown attribute
    static let attribute = GTK_CONSTRAINT_VFL_PARSER_ERROR_INVALID_ATTRIBUTE // 1
    /// Invalid or unknown view
    static let view = GTK_CONSTRAINT_VFL_PARSER_ERROR_INVALID_VIEW // 2
    /// Invalid or unknown metric
    static let metric = GTK_CONSTRAINT_VFL_PARSER_ERROR_INVALID_METRIC // 3
    /// Invalid or unknown priority
    static let priority = GTK_CONSTRAINT_VFL_PARSER_ERROR_INVALID_PRIORITY // 4
    /// Invalid or unknown relation
    static let relation = GTK_CONSTRAINT_VFL_PARSER_ERROR_INVALID_RELATION // 5
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



/// Errors that can occur while parsing CSS.
/// 
/// These errors are unexpected and will cause parts of the given CSS
/// to be ignored.
public typealias CssParserError = GtkCssParserError

public extension CssParserError {
    /// Cast constructor, converting any binary integer to a
    /// `CssParserError`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToCssParserErrorInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToCssParserErrorInt(raw))
    }
    /// Unknown failure.
    static let failed = GTK_CSS_PARSER_ERROR_FAILED // 0
    /// The given text does not form valid
    ///     syntax
    static let syntax = GTK_CSS_PARSER_ERROR_SYNTAX // 1
    /// Failed to import a resource
    static let `import` = GTK_CSS_PARSER_ERROR_IMPORT // 2
    /// The given name has not been defined
    static let name = GTK_CSS_PARSER_ERROR_NAME // 3
    /// The given value is not
    ///     correct
    static let unknownValue = GTK_CSS_PARSER_ERROR_UNKNOWN_VALUE // 4
}



/// Warnings that can occur while parsing CSS.
/// 
/// Unlike `GtkCssParserErrors`, warnings do not cause the parser to
/// skip any input, but they indicate issues that should be fixed.
public typealias CssParserWarning = GtkCssParserWarning

public extension CssParserWarning {
    /// Cast constructor, converting any binary integer to a
    /// `CssParserWarning`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToCssParserWarningInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToCssParserWarningInt(raw))
    }
    /// The given construct is
    ///     deprecated and will be removed in a future version
    static let deprecated = GTK_CSS_PARSER_WARNING_DEPRECATED // 0
    /// A syntax construct was used
    ///     that should be avoided
    static let syntax = GTK_CSS_PARSER_WARNING_SYNTAX // 1
    /// A feature is not
    ///     implemented
    static let unimplemented = GTK_CSS_PARSER_WARNING_UNIMPLEMENTED // 2
}



/// See also: `GtkEntry::delete`-from-cursor.
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
    ///   refers to the visible lines, with respect to the current line
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



public typealias EditableProperties = GtkEditableProperties

public extension EditableProperties {
    /// Cast constructor, converting any binary integer to a
    /// `EditableProperties`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToEditablePropertiesInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToEditablePropertiesInt(raw))
    }
    static let propText = GTK_EDITABLE_PROP_TEXT // 0
    static let propCursorPosition = GTK_EDITABLE_PROP_CURSOR_POSITION // 1
    static let propSelectionBound = GTK_EDITABLE_PROP_SELECTION_BOUND // 2
    static let propEditable = GTK_EDITABLE_PROP_EDITABLE // 3
    static let propWidthChars = GTK_EDITABLE_PROP_WIDTH_CHARS // 4
    static let propMaxWidthChars = GTK_EDITABLE_PROP_MAX_WIDTH_CHARS // 5
    static let propXalign = GTK_EDITABLE_PROP_XALIGN // 6
    static let propEnableUndo = GTK_EDITABLE_PROP_ENABLE_UNDO // 7
    static let numProperties = GTK_EDITABLE_NUM_PROPERTIES // 8
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
    /// Indicates an incomplete hostname
    ///  (e.g. "http://foo" without a slash after that).
    static let incompleteHostname = GTK_FILE_CHOOSER_ERROR_INCOMPLETE_HOSTNAME // 3
}



/// Describes changes in a filter in more detail and allows objects
/// using the filter to optimize refiltering items.
/// 
/// If you are writing an implementation and are not sure which
/// value to pass, `GTK_FILTER_CHANGE_DIFFERENT` is always a correct
/// choice.
public typealias FilterChange = GtkFilterChange

public extension FilterChange {
    /// Cast constructor, converting any binary integer to a
    /// `FilterChange`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToFilterChangeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToFilterChangeInt(raw))
    }
    /// The filter change cannot be
    ///     described with any of the other enumeration values.
    static let different = GTK_FILTER_CHANGE_DIFFERENT // 0
    /// The filter is less strict than
    ///     it was before: All items that it used to return `true` for
    ///     still return `true`, others now may, too.
    static let lessStrict = GTK_FILTER_CHANGE_LESS_STRICT // 1
    /// The filter is more strict than
    ///     it was before: All items that it used to return `false` for
    ///     still return `false`, others now may, too.
    static let moreStrict = GTK_FILTER_CHANGE_MORE_STRICT // 2
}



/// Describes the known strictness of a filter.
/// 
/// Note that for filters where the strictness is not known,
/// `GTK_FILTER_MATCH_SOME` is always an acceptable value,
/// even if a filter does match all or no items.
public typealias FilterMatch = GtkFilterMatch

public extension FilterMatch {
    /// Cast constructor, converting any binary integer to a
    /// `FilterMatch`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToFilterMatchInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToFilterMatchInt(raw))
    }
    /// The filter matches some items,
    ///     `gtk_filter_match()` may return `true` or `false`
    static let some = GTK_FILTER_MATCH_SOME // 0
    /// The filter does not match any item,
    ///     `gtk_filter_match()` will always return `false`.
    static let `none` = GTK_FILTER_MATCH_NONE // 1
    /// The filter matches all items,
    ///     `gtk_filter_match()` will alays return `true`.
    static let all = GTK_FILTER_MATCH_ALL // 2
}



/// Built-in icon sizes.
/// 
/// Icon sizes default to being inherited. Where they cannot be
/// inherited, text size is the default.
/// 
/// All widgets which use GtkIconSize set the normal-icons or large-icons
/// style classes correspondingly, and let themes determine the actual size
/// to be used with the -gtk-icon-size CSS property.
public typealias IconSize = GtkIconSize

public extension IconSize {
    /// Cast constructor, converting any binary integer to a
    /// `IconSize`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToIconSizeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToIconSizeInt(raw))
    }
    /// Keep the size of the parent element
    static let inherit = GTK_ICON_SIZE_INHERIT // 0
    /// Size similar to text size
    static let normal = GTK_ICON_SIZE_NORMAL // 1
    /// Large size, for example in an icon view
    static let large = GTK_ICON_SIZE_LARGE // 2
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
    /// dropped item is inserted to the left
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
/// `gtk_image_get_storage_type()` returns `GTK_IMAGE_PAINTABLE`, then you can
/// call `gtk_image_get_paintable()`.  For empty images, you can request any
/// storage type (call any of the "get" functions), but they will all
/// return `nil` values.
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
    /// the widget contains a named icon
    static let iconName = GTK_IMAGE_ICON_NAME // 1
    /// the widget contains a `GIcon`
    static let gicon = GTK_IMAGE_GICON // 2
    /// the widget contains a `GdkPaintable`
    static let paintable = GTK_IMAGE_PAINTABLE // 3
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



/// Used for justifying the text inside a `GtkLabel` widget.
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
    /// The GNU General Public License, version 2.0 only
    static let gpl20Only = GTK_LICENSE_GPL_2_0_ONLY // 9
    /// The GNU General Public License, version 3.0 only
    static let gpl30Only = GTK_LICENSE_GPL_3_0_ONLY // 10
    /// The GNU Lesser General Public License, version 2.1 only
    static let lgpl21Only = GTK_LICENSE_LGPL_2_1_ONLY // 11
    /// The GNU Lesser General Public License, version 3.0 only
    static let lgpl30Only = GTK_LICENSE_LGPL_3_0_ONLY // 12
    /// The GNU Affero General Public License, version 3.0 or later
    static let agpl30 = GTK_LICENSE_AGPL_3_0 // 13
    /// The GNU Affero General Public License, version 3.0 only
    static let agpl30Only = GTK_LICENSE_AGPL_3_0_ONLY // 14
    /// The 3-clause BSD licence
    static let bsd3 = GTK_LICENSE_BSD_3 // 15
    /// The Apache License, version 2.0
    static let apache20 = GTK_LICENSE_APACHE_2_0 // 16
    /// The Mozilla Public License, version 2.0
    static let mpl20 = GTK_LICENSE_MPL_2_0 // 17
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



/// The parameter used in the action signals of `GtkNotebook`.
public typealias NotebookTab = GtkNotebookTab

public extension NotebookTab {
    /// Cast constructor, converting any binary integer to a
    /// `NotebookTab`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToNotebookTabInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToNotebookTabInt(raw))
    }
    /// the first tab in the notebook
    static let first = GTK_NOTEBOOK_TAB_FIRST // 0
    /// the last tab in the notebook
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



/// Describes the way two values can be compared.
/// 
/// These values can be used with a `GCompareFunc`. However, a
/// `GCompareFunc` is allowed to return any integer values.
/// For converting such a value to a `GtkOrdering`, use
/// `gtk_ordering_from_cmpfunc()`.
public typealias Ordering = GtkOrdering

public extension Ordering {
    /// Cast constructor, converting any binary integer to a
    /// `Ordering`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToOrderingInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToOrderingInt(raw))
    }
    /// the first value is smaller than the second
    static let smaller = GTK_ORDERING_SMALLER // -1
    /// the two values are equal
    static let equal = GTK_ORDERING_EQUAL // 0
    /// the first value is larger than the second
    static let larger = GTK_ORDERING_LARGER // 1
}



/// Represents the orientation of widgets and other objects which can be switched
/// between horizontal and vertical orientation on the fly, like `GtkBox` or
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



/// Defines how content overflowing a given area should be handled, such as
/// with `gtk_widget_set_overflow()`. This property is modeled after the CSS overflow
/// property, but implements it only partially.
public typealias Overflow = GtkOverflow

public extension Overflow {
    /// Cast constructor, converting any binary integer to a
    /// `Overflow`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToOverflowInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToOverflowInt(raw))
    }
    /// No change is applied. Content is drawn at the specified
    ///     position.
    static let visible = GTK_OVERFLOW_VISIBLE // 0
    /// Content is clipped to the bounds of the area. Content
    ///     outside the area is not drawn and cannot be interacted with.
    static let hidden = GTK_OVERFLOW_HIDDEN // 1
}



/// Represents the packing location of a children in its parent.
/// See `GtkWindowControls` for example.
public typealias PackType = GtkPackType

public extension PackType {
    /// Cast constructor, converting any binary integer to a
    /// `PackType`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToPackTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToPackTypeInt(raw))
    }
    /// The child is packed into the start of the widget
    static let start = GTK_PACK_START // 0
    /// The child is packed into the end of the widget
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
    ///  scrolled windows share a scrollbar.
    static let external = GTK_POLICY_EXTERNAL // 3
}



/// Describes which edge of a widget a certain feature is positioned at, e.g.
/// the tabs of a `GtkNotebook`, or the label of a `GtkScale`.
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
/// using the GTK printing support.
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



/// Describes limits of a `GtkEventController` for handling events
/// targeting other widgets.
public typealias PropagationLimit = GtkPropagationLimit

public extension PropagationLimit {
    /// Cast constructor, converting any binary integer to a
    /// `PropagationLimit`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToPropagationLimitInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToPropagationLimitInt(raw))
    }
    /// Events are handled regardless of what their
    ///   target is.
    static let `none` = GTK_LIMIT_NONE // 0
    /// Events are only handled if their target
    ///   is in the same `GtkNative` as the event controllers widget. Note
    ///   that some event types have two targets (origin and destination).
    static let sameNative = GTK_LIMIT_SAME_NATIVE // 1
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
    /// Events are not delivered.
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
    static let invalidUri = GTK_RECENT_MANAGER_ERROR_INVALID_URI // 1
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



/// Predefined values for use as response ids in `gtk_dialog_add_button()`.
/// All predefined values are negative; GTK leaves values of 0 or greater for
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
    /// Generic response id, not used by GTK dialogs
    static let reject = GTK_RESPONSE_REJECT // -2
    /// Generic response id, not used by GTK dialogs
    static let accept = GTK_RESPONSE_ACCEPT // -3
    /// Returned if the dialog is deleted
    static let deleteEvent = GTK_RESPONSE_DELETE_EVENT // -4
    /// Returned by OK buttons in GTK dialogs
    static let ok = GTK_RESPONSE_OK // -5
    /// Returned by Cancel buttons in GTK dialogs
    static let cancel = GTK_RESPONSE_CANCEL // -6
    /// Returned by Close buttons in GTK dialogs
    static let close = GTK_RESPONSE_CLOSE // -7
    /// Returned by Yes buttons in GTK dialogs
    static let yes = GTK_RESPONSE_YES // -8
    /// Returned by No buttons in GTK dialogs
    static let no = GTK_RESPONSE_NO // -9
    /// Returned by Apply buttons in GTK dialogs
    static let apply = GTK_RESPONSE_APPLY // -10
    /// Returned by Help buttons in GTK dialogs
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
    /// Floop in from the left
    static let swingRight = GTK_REVEALER_TRANSITION_TYPE_SWING_RIGHT // 6
    /// Floop in from the right
    static let swingLeft = GTK_REVEALER_TRANSITION_TYPE_SWING_LEFT // 7
    /// Floop in from the bottom
    static let swingUp = GTK_REVEALER_TRANSITION_TYPE_SWING_UP // 8
    /// Floop in from the top
    static let swingDown = GTK_REVEALER_TRANSITION_TYPE_SWING_DOWN // 9
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



/// Determines how GTK handles the sensitivity of various controls,
/// such as combo box buttons.
public typealias SensitivityType = GtkSensitivityType

public extension SensitivityType {
    /// Cast constructor, converting any binary integer to a
    /// `SensitivityType`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToSensitivityTypeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToSensitivityTypeInt(raw))
    }
    /// The control is made insensitive if no
    ///   action can be triggered
    static let auto = GTK_SENSITIVITY_AUTO // 0
    /// The control is always sensitive
    static let on = GTK_SENSITIVITY_ON // 1
    /// The control is always insensitive
    static let off = GTK_SENSITIVITY_OFF // 2
}



/// Describes where `GtkShortcuts` added to a
/// `GtkShortcutController` get handled.
public typealias ShortcutScope = GtkShortcutScope

public extension ShortcutScope {
    /// Cast constructor, converting any binary integer to a
    /// `ShortcutScope`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToShortcutScopeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToShortcutScopeInt(raw))
    }
    /// Shortcuts are handled inside
    ///     the widget the controller belongs to.
    static let local = GTK_SHORTCUT_SCOPE_LOCAL // 0
    /// Shortcuts are handled by
    ///     the first ancestor that is a `GtkShortcutManager`
    static let managed = GTK_SHORTCUT_SCOPE_MANAGED // 1
    /// Shortcuts are handled by
    ///     the root widget.
    static let global = GTK_SHORTCUT_SCOPE_GLOBAL // 2
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
    /// The shortcut is a swipe gesture. GTK+ provides an icon and subtitle.
    static let gestureSwipeLeft = GTK_SHORTCUT_GESTURE_SWIPE_LEFT // 8
    /// The shortcut is a swipe gesture. GTK+ provides an icon and subtitle.
    static let gestureSwipeRight = GTK_SHORTCUT_GESTURE_SWIPE_RIGHT // 9
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



/// Describes changes in a sorter in more detail and allows users
/// to optimize resorting.
public typealias SorterChange = GtkSorterChange

public extension SorterChange {
    /// Cast constructor, converting any binary integer to a
    /// `SorterChange`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToSorterChangeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToSorterChangeInt(raw))
    }
    /// The sorter change cannot be described
    ///     by any of the other enumeration values
    static let different = GTK_SORTER_CHANGE_DIFFERENT // 0
    /// The sort order was inverted. Comparisons
    ///     that returned `GTK_ORDERING_SMALLER` now return `GTK_ORDERING_LARGER`
    ///     and vice versa. Other comparisons return the same values as before.
    static let inverted = GTK_SORTER_CHANGE_INVERTED // 1
    /// The sorter is less strict: Comparisons
    ///     may now return `GTK_ORDERING_EQUAL` that did not do so before.
    static let lessStrict = GTK_SORTER_CHANGE_LESS_STRICT // 2
    /// The sorter is more strict: Comparisons
    ///     that did return `GTK_ORDERING_EQUAL` may not do so anymore.
    static let moreStrict = GTK_SORTER_CHANGE_MORE_STRICT // 3
}



/// Describes the type of order that a `GtkSorter` may describe.
public typealias SorterOrder = GtkSorterOrder

public extension SorterOrder {
    /// Cast constructor, converting any binary integer to a
    /// `SorterOrder`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToSorterOrderInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToSorterOrderInt(raw))
    }
    /// A partial order. Any `GtkOrdering` is possible.
    static let partial = GTK_SORTER_ORDER_PARTIAL // 0
    /// No order, all elements are considered equal.
    ///     `gtk_sorter_compare()` will only return `GTK_ORDERING_EQUAL`.
    static let `none` = GTK_SORTER_ORDER_NONE // 1
    /// A total order. `gtk_sorter_compare()` will only
    ///     return `GTK_ORDERING_EQUAL` if an item is compared with itself. Two
    ///     different items will never cause this value to be returned.
    static let total = GTK_SORTER_ORDER_TOTAL // 2
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
    /// Cover the old page by sliding up
    static let overUp = GTK_STACK_TRANSITION_TYPE_OVER_UP // 8
    /// Cover the old page by sliding down
    static let overDown = GTK_STACK_TRANSITION_TYPE_OVER_DOWN // 9
    /// Cover the old page by sliding to the left
    static let overLeft = GTK_STACK_TRANSITION_TYPE_OVER_LEFT // 10
    /// Cover the old page by sliding to the right
    static let overRight = GTK_STACK_TRANSITION_TYPE_OVER_RIGHT // 11
    /// Uncover the new page by sliding up
    static let underUp = GTK_STACK_TRANSITION_TYPE_UNDER_UP // 12
    /// Uncover the new page by sliding down
    static let underDown = GTK_STACK_TRANSITION_TYPE_UNDER_DOWN // 13
    /// Uncover the new page by sliding to the left
    static let underLeft = GTK_STACK_TRANSITION_TYPE_UNDER_LEFT // 14
    /// Uncover the new page by sliding to the right
    static let underRight = GTK_STACK_TRANSITION_TYPE_UNDER_RIGHT // 15
    /// Cover the old page sliding up or uncover the new page sliding down, according to order
    static let overUpDown = GTK_STACK_TRANSITION_TYPE_OVER_UP_DOWN // 16
    /// Cover the old page sliding down or uncover the new page sliding up, according to order
    static let overDownUp = GTK_STACK_TRANSITION_TYPE_OVER_DOWN_UP // 17
    /// Cover the old page sliding left or uncover the new page sliding right, according to order
    static let overLeftRight = GTK_STACK_TRANSITION_TYPE_OVER_LEFT_RIGHT // 18
    /// Cover the old page sliding right or uncover the new page sliding left, according to order
    static let overRightLeft = GTK_STACK_TRANSITION_TYPE_OVER_RIGHT_LEFT // 19
    /// Pretend the pages are sides of a cube and rotate that cube to the left
    static let rotateLeft = GTK_STACK_TRANSITION_TYPE_ROTATE_LEFT // 20
    /// Pretend the pages are sides of a cube and rotate that cube to the right
    static let rotateRight = GTK_STACK_TRANSITION_TYPE_ROTATE_RIGHT // 21
    /// Pretend the pages are sides of a cube and rotate that cube to the left or right according to the children order
    static let rotateLeftRight = GTK_STACK_TRANSITION_TYPE_ROTATE_LEFT_RIGHT // 22
}



/// Specifies how search strings are matched inside text.
public typealias StringFilterMatchMode = GtkStringFilterMatchMode

public extension StringFilterMatchMode {
    /// Cast constructor, converting any binary integer to a
    /// `StringFilterMatchMode`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToStringFilterMatchModeInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToStringFilterMatchModeInt(raw))
    }
    /// The search string and
    ///     text must match exactly.
    static let exact = GTK_STRING_FILTER_MATCH_MODE_EXACT // 0
    /// The search string
    ///     must be contained as a substring inside the text.
    static let substring = GTK_STRING_FILTER_MATCH_MODE_SUBSTRING // 1
    /// The text must begin
    ///     with the search string.
    static let `prefix` = GTK_STRING_FILTER_MATCH_MODE_PREFIX // 2
}



/// Values that can be passed to the GtkWidgetClass.system_setting_changed
/// vfunc to indicate that a system setting has changed and widgets may
/// need to drop caches, or react otherwise.
/// 
/// Most of the values correspond to `GtkSettings` properties.
/// 
/// More values may be added over time.
public typealias SystemSetting = GtkSystemSetting

public extension SystemSetting {
    /// Cast constructor, converting any binary integer to a
    /// `SystemSetting`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToSystemSettingInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToSystemSettingInt(raw))
    }
    /// the `GtkSettings:gtk`-xft-dpi setting has changed
    static let dpi = GTK_SYSTEM_SETTING_DPI // 0
    /// The `GtkSettings:gtk`-font-name setting has changed
    static let fontName = GTK_SYSTEM_SETTING_FONT_NAME // 1
    /// The font configuration has changed in a way that
    ///     requires text to be redrawn. This can be any of the
    ///     `GtkSettings:gtk`-xft-antialias, `GtkSettings:gtk`-xft-hinting,
    ///     `GtkSettings:gtk`-xft-hintstyle, `GtkSettings:gtk`-xft-rgba or
    ///     `GtkSettings:gtk`-fontconfig-timestamp settings
    static let fontConfig = GTK_SYSTEM_SETTING_FONT_CONFIG // 2
    /// The display has changed
    static let display = GTK_SYSTEM_SETTING_DISPLAY // 3
    /// The icon theme has changed in a way that requires
    ///     icons to be looked up again
    static let iconTheme = GTK_SYSTEM_SETTING_ICON_THEME // 4
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
/// `GtkTextView::extend`-selection signal to customize the selection.
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
/// drawing with the `snapshot_layer` vfunc.
public typealias TextViewLayer = GtkTextViewLayer

public extension TextViewLayer {
    /// Cast constructor, converting any binary integer to a
    /// `TextViewLayer`.
    /// - Parameter raw: The raw integer value to initialise the enum from
    @inlinable init!<I: BinaryInteger>(_ raw: I) {
        func castToTextViewLayerInt<I: BinaryInteger, J: BinaryInteger>(_ param: I) -> J { J(param) }
        self.init(rawValue: castToTextViewLayerInt(raw))
    }
    /// The layer rendered below the text (but above the background).
    static let belowText = GTK_TEXT_VIEW_LAYER_BELOW_TEXT // 0
    /// The layer rendered above the text.
    static let aboveText = GTK_TEXT_VIEW_LAYER_ABOVE_TEXT // 1
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
    /// Columns resize to be the optimal size every time the model changes.
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

