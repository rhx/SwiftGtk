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

// MARK: - RadioButton Class

/// The `RadioButtonProtocol` protocol exposes the methods and properties of an underlying `GtkRadioButton` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RadioButton`.
/// Alternatively, use `RadioButtonRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A single radio button performs the same basic function as a `GtkCheckButton`,
/// as its position in the object hierarchy reflects. It is only when multiple
/// radio buttons are grouped together that they become a different user
/// interface component in their own right.
/// 
/// Every radio button is a member of some group of radio buttons. When one is
/// selected, all other radio buttons in the same group are deselected. A
/// `GtkRadioButton` is one way of giving the user a choice from many options.
/// 
/// Radio button widgets are created with `gtk_radio_button_new()`, passing `nil`
/// as the argument if this is the first radio button in a group. In subsequent
/// calls, the group you wish to add this button to should be passed as an
/// argument. Optionally, `gtk_radio_button_new_with_label()` can be used if you
/// want a text label on the radio button.
/// 
/// Alternatively, when adding widgets to an existing group of radio buttons,
/// use `gtk_radio_button_new_from_widget()` with a `GtkRadioButton` that already
/// has a group assigned to it. The convenience function
/// `gtk_radio_button_new_with_label_from_widget()` is also provided.
/// 
/// To retrieve the group a `GtkRadioButton` is assigned to, use
/// `gtk_radio_button_get_group()`.
/// 
/// To remove a `GtkRadioButton` from one group and make it part of a new one,
/// use `gtk_radio_button_set_group()`.
/// 
/// The group list does not need to be freed, as each `GtkRadioButton` will remove
/// itself and its list item when it is destroyed.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// radiobutton
/// ├── radio
/// ╰── <child>
/// ```
/// 
/// A GtkRadioButton with indicator (see `gtk_toggle_button_set_mode()`) has a
/// main CSS node with name radiobutton and a subnode with name radio.
/// 
/// (plain Language Example):
/// ```plain
/// button.radio
/// ├── radio
/// ╰── <child>
/// ```
/// 
/// A GtkRadioButton without indicator changes the name of its main node
/// to button and adds a .radio style class to it. The subnode is invisible
/// in this case.
/// 
/// ## How to create a group of two radio buttons.
/// 
/// (C Language Example):
/// ```C
/// void create_radio_buttons (void) {
/// 
///    GtkWidget *window, *radio1, *radio2, *box, *entry;
///    window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
///    box = gtk_box_new (GTK_ORIENTATION_VERTICAL, 2);
///    gtk_box_set_homogeneous (GTK_BOX (box), TRUE);
/// 
///    // Create a radio button with a GtkEntry widget
///    radio1 = gtk_radio_button_new (NULL);
///    entry = gtk_entry_new ();
///    gtk_container_add (GTK_CONTAINER (radio1), entry);
/// 
/// 
///    // Create a radio button with a label
///    radio2 = gtk_radio_button_new_with_label_from_widget (GTK_RADIO_BUTTON (radio1),
///                                                          "I’m the second radio button.");
/// 
///    // Pack them into a box, then show all the widgets
///    gtk_box_pack_start (GTK_BOX (box), radio1);
///    gtk_box_pack_start (GTK_BOX (box), radio2);
///    gtk_container_add (GTK_CONTAINER (window), box);
///    gtk_widget_show_all (window);
///    return;
/// }
/// ```
/// 
/// When an unselected button in the group is clicked the clicked button
/// receives the `GtkToggleButton::toggled` signal, as does the previously
/// selected button.
/// Inside the `GtkToggleButton::toggled` handler, `gtk_toggle_button_get_active()`
/// can be used to determine if the button has been selected or deselected.
public protocol RadioButtonProtocol: CheckButtonProtocol {
    /// Untyped pointer to the underlying `GtkRadioButton` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRadioButton` instance.
    var radio_button_ptr: UnsafeMutablePointer<GtkRadioButton> { get }
}

/// The `RadioButtonRef` type acts as a lightweight Swift reference to an underlying `GtkRadioButton` instance.
/// It exposes methods that can operate on this data type through `RadioButtonProtocol` conformance.
/// Use `RadioButtonRef` only as an `unowned` reference to an existing `GtkRadioButton` instance.
///
/// A single radio button performs the same basic function as a `GtkCheckButton`,
/// as its position in the object hierarchy reflects. It is only when multiple
/// radio buttons are grouped together that they become a different user
/// interface component in their own right.
/// 
/// Every radio button is a member of some group of radio buttons. When one is
/// selected, all other radio buttons in the same group are deselected. A
/// `GtkRadioButton` is one way of giving the user a choice from many options.
/// 
/// Radio button widgets are created with `gtk_radio_button_new()`, passing `nil`
/// as the argument if this is the first radio button in a group. In subsequent
/// calls, the group you wish to add this button to should be passed as an
/// argument. Optionally, `gtk_radio_button_new_with_label()` can be used if you
/// want a text label on the radio button.
/// 
/// Alternatively, when adding widgets to an existing group of radio buttons,
/// use `gtk_radio_button_new_from_widget()` with a `GtkRadioButton` that already
/// has a group assigned to it. The convenience function
/// `gtk_radio_button_new_with_label_from_widget()` is also provided.
/// 
/// To retrieve the group a `GtkRadioButton` is assigned to, use
/// `gtk_radio_button_get_group()`.
/// 
/// To remove a `GtkRadioButton` from one group and make it part of a new one,
/// use `gtk_radio_button_set_group()`.
/// 
/// The group list does not need to be freed, as each `GtkRadioButton` will remove
/// itself and its list item when it is destroyed.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// radiobutton
/// ├── radio
/// ╰── <child>
/// ```
/// 
/// A GtkRadioButton with indicator (see `gtk_toggle_button_set_mode()`) has a
/// main CSS node with name radiobutton and a subnode with name radio.
/// 
/// (plain Language Example):
/// ```plain
/// button.radio
/// ├── radio
/// ╰── <child>
/// ```
/// 
/// A GtkRadioButton without indicator changes the name of its main node
/// to button and adds a .radio style class to it. The subnode is invisible
/// in this case.
/// 
/// ## How to create a group of two radio buttons.
/// 
/// (C Language Example):
/// ```C
/// void create_radio_buttons (void) {
/// 
///    GtkWidget *window, *radio1, *radio2, *box, *entry;
///    window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
///    box = gtk_box_new (GTK_ORIENTATION_VERTICAL, 2);
///    gtk_box_set_homogeneous (GTK_BOX (box), TRUE);
/// 
///    // Create a radio button with a GtkEntry widget
///    radio1 = gtk_radio_button_new (NULL);
///    entry = gtk_entry_new ();
///    gtk_container_add (GTK_CONTAINER (radio1), entry);
/// 
/// 
///    // Create a radio button with a label
///    radio2 = gtk_radio_button_new_with_label_from_widget (GTK_RADIO_BUTTON (radio1),
///                                                          "I’m the second radio button.");
/// 
///    // Pack them into a box, then show all the widgets
///    gtk_box_pack_start (GTK_BOX (box), radio1);
///    gtk_box_pack_start (GTK_BOX (box), radio2);
///    gtk_container_add (GTK_CONTAINER (window), box);
///    gtk_widget_show_all (window);
///    return;
/// }
/// ```
/// 
/// When an unselected button in the group is clicked the clicked button
/// receives the `GtkToggleButton::toggled` signal, as does the previously
/// selected button.
/// Inside the `GtkToggleButton::toggled` handler, `gtk_toggle_button_get_active()`
/// can be used to determine if the button has been selected or deselected.
public struct RadioButtonRef: RadioButtonProtocol {
    /// Untyped pointer to the underlying `GtkRadioButton` instance.
    /// For type-safe access, use the generated, typed pointer `radio_button_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RadioButtonRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRadioButton>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RadioButtonProtocol`
    init<T: RadioButtonProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkRadioButton`. To be of any practical value, a widget should
    /// then be packed into the radio button.
    init( group: SListProtocol) {
        let rv = gtk_radio_button_new(cast(group.ptr))
        self.init(cast(rv))
    }

    /// Creates a new `GtkRadioButton` with a text label.
    init(group: SListProtocol, label: UnsafePointer<gchar>) {
        let rv = gtk_radio_button_new_with_label(cast(group.ptr), label)
        self.init(cast(rv))
    }

    /// Creates a new `GtkRadioButton` containing a label, adding it to the same
    /// group as `group`. The label will be created using
    /// `gtk_label_new_with_mnemonic()`, so underscores in `label` indicate the
    /// mnemonic for the button.
    init(group: SListProtocol, mnemonic label: UnsafePointer<gchar>) {
        let rv = gtk_radio_button_new_with_mnemonic(cast(group.ptr), label)
        self.init(cast(rv))
    }
    /// Creates a new `GtkRadioButton` with a text label.
    static func newWith(group: SListProtocol, label: UnsafePointer<gchar>) -> RadioButtonRef! {
        let rv = gtk_radio_button_new_with_label(cast(group.ptr), label)
        return rv.map { RadioButtonRef(cast($0)) }
    }

    /// Creates a new `GtkRadioButton` containing a label, adding it to the same
    /// group as `group`. The label will be created using
    /// `gtk_label_new_with_mnemonic()`, so underscores in `label` indicate the
    /// mnemonic for the button.
    static func newWith(group: SListProtocol, mnemonic label: UnsafePointer<gchar>) -> RadioButtonRef! {
        let rv = gtk_radio_button_new_with_mnemonic(cast(group.ptr), label)
        return rv.map { RadioButtonRef(cast($0)) }
    }
}

/// The `RadioButton` type acts as a reference-counted owner of an underlying `GtkRadioButton` instance.
/// It provides the methods that can operate on this data type through `RadioButtonProtocol` conformance.
/// Use `RadioButton` as a strong reference or owner of a `GtkRadioButton` instance.
///
/// A single radio button performs the same basic function as a `GtkCheckButton`,
/// as its position in the object hierarchy reflects. It is only when multiple
/// radio buttons are grouped together that they become a different user
/// interface component in their own right.
/// 
/// Every radio button is a member of some group of radio buttons. When one is
/// selected, all other radio buttons in the same group are deselected. A
/// `GtkRadioButton` is one way of giving the user a choice from many options.
/// 
/// Radio button widgets are created with `gtk_radio_button_new()`, passing `nil`
/// as the argument if this is the first radio button in a group. In subsequent
/// calls, the group you wish to add this button to should be passed as an
/// argument. Optionally, `gtk_radio_button_new_with_label()` can be used if you
/// want a text label on the radio button.
/// 
/// Alternatively, when adding widgets to an existing group of radio buttons,
/// use `gtk_radio_button_new_from_widget()` with a `GtkRadioButton` that already
/// has a group assigned to it. The convenience function
/// `gtk_radio_button_new_with_label_from_widget()` is also provided.
/// 
/// To retrieve the group a `GtkRadioButton` is assigned to, use
/// `gtk_radio_button_get_group()`.
/// 
/// To remove a `GtkRadioButton` from one group and make it part of a new one,
/// use `gtk_radio_button_set_group()`.
/// 
/// The group list does not need to be freed, as each `GtkRadioButton` will remove
/// itself and its list item when it is destroyed.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// radiobutton
/// ├── radio
/// ╰── <child>
/// ```
/// 
/// A GtkRadioButton with indicator (see `gtk_toggle_button_set_mode()`) has a
/// main CSS node with name radiobutton and a subnode with name radio.
/// 
/// (plain Language Example):
/// ```plain
/// button.radio
/// ├── radio
/// ╰── <child>
/// ```
/// 
/// A GtkRadioButton without indicator changes the name of its main node
/// to button and adds a .radio style class to it. The subnode is invisible
/// in this case.
/// 
/// ## How to create a group of two radio buttons.
/// 
/// (C Language Example):
/// ```C
/// void create_radio_buttons (void) {
/// 
///    GtkWidget *window, *radio1, *radio2, *box, *entry;
///    window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
///    box = gtk_box_new (GTK_ORIENTATION_VERTICAL, 2);
///    gtk_box_set_homogeneous (GTK_BOX (box), TRUE);
/// 
///    // Create a radio button with a GtkEntry widget
///    radio1 = gtk_radio_button_new (NULL);
///    entry = gtk_entry_new ();
///    gtk_container_add (GTK_CONTAINER (radio1), entry);
/// 
/// 
///    // Create a radio button with a label
///    radio2 = gtk_radio_button_new_with_label_from_widget (GTK_RADIO_BUTTON (radio1),
///                                                          "I’m the second radio button.");
/// 
///    // Pack them into a box, then show all the widgets
///    gtk_box_pack_start (GTK_BOX (box), radio1);
///    gtk_box_pack_start (GTK_BOX (box), radio2);
///    gtk_container_add (GTK_CONTAINER (window), box);
///    gtk_widget_show_all (window);
///    return;
/// }
/// ```
/// 
/// When an unselected button in the group is clicked the clicked button
/// receives the `GtkToggleButton::toggled` signal, as does the previously
/// selected button.
/// Inside the `GtkToggleButton::toggled` handler, `gtk_toggle_button_get_active()`
/// can be used to determine if the button has been selected or deselected.
open class RadioButton: CheckButton, RadioButtonProtocol {
    /// Convenience constructor for creating a RadioButton with a text label,
    /// creating a new group.
    ///
    /// - Parameter label: the label to use for the button
    public convenience init(label: UnsafePointer<gchar>) {
        let rv = gtk_radio_button_new_with_label(nil, label)
        self.init(cast(rv))
    }

    /// Convenience constructor for creating a RadioButton with a text label
    /// that contains menomics creates a new group.  Underscores in `label`
    /// indicate the mnemonic for the button.
    ///
    /// - Parameter label: the label (including mnemonic) to use for the button
    public convenience init(mnemonic label: UnsafePointer<gchar>) {
        let rv = gtk_radio_button_new_with_mnemonic(nil, label)
        self.init(cast(rv))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RadioButton` instance.
    public init(_ op: UnsafeMutablePointer<GtkRadioButton>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `RadioButtonProtocol`
    /// Will retain `GtkRadioButton`.
    public convenience init<T: RadioButtonProtocol>(_ other: T) {
        self.init(cast(other.radio_button_ptr))
        g_object_ref(cast(radio_button_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRadioButton.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRadioButton.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRadioButton.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRadioButton>(opaquePointer))
    }

    /// Creates a new `GtkRadioButton`. To be of any practical value, a widget should
    /// then be packed into the radio button.
    public convenience init( group: SListProtocol) {
        let rv = gtk_radio_button_new(cast(group.ptr))
        self.init(cast(rv))
    }

    /// Creates a new `GtkRadioButton` with a text label.
    public convenience init(group: SListProtocol, label: UnsafePointer<gchar>) {
        let rv = gtk_radio_button_new_with_label(cast(group.ptr), label)
        self.init(cast(rv))
    }

    /// Creates a new `GtkRadioButton` containing a label, adding it to the same
    /// group as `group`. The label will be created using
    /// `gtk_label_new_with_mnemonic()`, so underscores in `label` indicate the
    /// mnemonic for the button.
    public convenience init(group: SListProtocol, mnemonic label: UnsafePointer<gchar>) {
        let rv = gtk_radio_button_new_with_mnemonic(cast(group.ptr), label)
        self.init(cast(rv))
    }

    /// Creates a new `GtkRadioButton` with a text label.
    public static func newWith(group: SListProtocol, label: UnsafePointer<gchar>) -> RadioButton! {
        let rv = gtk_radio_button_new_with_label(cast(group.ptr), label)
        return rv.map { RadioButton(cast($0)) }
    }

    /// Creates a new `GtkRadioButton` containing a label, adding it to the same
    /// group as `group`. The label will be created using
    /// `gtk_label_new_with_mnemonic()`, so underscores in `label` indicate the
    /// mnemonic for the button.
    public static func newWith(group: SListProtocol, mnemonic label: UnsafePointer<gchar>) -> RadioButton! {
        let rv = gtk_radio_button_new_with_mnemonic(cast(group.ptr), label)
        return rv.map { RadioButton(cast($0)) }
    }

}

public enum RadioButtonPropertyName: String, PropertyNameProtocol {
    case accessibleComponentLayer = "accessible-component-layer"
    case accessibleComponentMdiZorder = "accessible-component-mdi-zorder"
    case accessibleDescription = "accessible-description"
    case accessibleHypertextNlinks = "accessible-hypertext-nlinks"
    case accessibleName = "accessible-name"
    case accessibleParent = "accessible-parent"
    case accessibleRole = "accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case accessibleTableCaption = "accessible-table-caption"
    case accessibleTableCaptionObject = "accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case accessibleTableColumnDescription = "accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case accessibleTableColumnHeader = "accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case accessibleTableRowDescription = "accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case accessibleTableRowHeader = "accessible-table-row-header"
    case accessibleTableSummary = "accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case accessibleValue = "accessible-value"
    case active = "active"
    /// If `true`, the button will ignore the `GtkSettings:gtk`-button-images
    /// setting and always show the image, if available.
    /// 
    /// Use this property if the button would be useless or hard to use
    /// without the image.
    case alwaysShowImage = "always-show-image"
    case appPaintable = "app-paintable"
    case borderWidth = "border-width"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case child = "child"
    case compositeChild = "composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
    case drawIndicator = "draw-indicator"
    case events = "events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case expand = "expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case focusOnClick = "focus-on-click"
    /// Sets a new group for a radio button.
    case group = "group"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    /// The child widget to appear next to the button text.
    case image = "image"
    /// The position of the image relative to the text inside the button.
    case imagePosition = "image-position"
    case inconsistent = "inconsistent"
    case isFocus = "is-focus"
    case label = "label"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginTop = "margin-top"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case receivesDefault = "receives-default"
    case relief = "relief"
    case resizeMode = "resize-mode"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"

    ///
    /// **use-stock is deprecated:**
    /// This method is deprecated.
    case useStock = "use-stock"
    case useUnderline = "use-underline"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
    /// If the child of the button is a `GtkMisc` or `GtkAlignment`, this property
    /// can be used to control its horizontal alignment. 0.0 is left aligned,
    /// 1.0 is right aligned.
    ///
    /// **xalign is deprecated:**
    /// Access the child widget directly if you need to control
    /// its alignment.
    case xalign = "xalign"
    /// If the child of the button is a `GtkMisc` or `GtkAlignment`, this property
    /// can be used to control its vertical alignment. 0.0 is top aligned,
    /// 1.0 is bottom aligned.
    ///
    /// **yalign is deprecated:**
    /// Access the child widget directly if you need to control
    /// its alignment.
    case yalign = "yalign"
}

public extension RadioButtonProtocol {
    /// Bind a `RadioButtonPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: RadioButtonPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(radio_button_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }
}

public enum RadioButtonSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// The `activate` signal on GtkButton is an action signal and
    /// emitting it causes the button to animate press then release.
    /// Applications should never connect to this signal, but use the
    /// `GtkButton::clicked` signal.
    case activate = "activate"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    case add = "add"
    /// The `button`-press-event signal will be emitted when a button
    /// (typically from a mouse) is pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonPressEvent = "button-press-event"
    /// The `button`-release-event signal will be emitted when a button
    /// (typically from a mouse) is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonReleaseEvent = "button-release-event"
    /// Determines whether an accelerator that activates the signal
    /// identified by `signal_id` can currently be activated.
    /// This signal is present to allow applications and derived
    /// widgets to override the default `GtkWidget` handling
    /// for determining whether an accelerator can be activated.
    case canActivateAccel = "can-activate-accel"
    case checkResize = "check-resize"
    /// The `child`-notify signal is emitted for each
    /// [child property](#child-properties)  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// Emitted when the button has been activated (pressed and released).
    case clicked = "clicked"
    /// The `composited`-changed signal is emitted when the composited
    /// status of `widgets` screen changes.
    /// See `gdk_screen_is_composited()`.
    ///
    /// **composited-changed is deprecated:**
    /// Use GdkScreen::composited-changed instead.
    case compositedChanged = "composited-changed"
    /// The `configure`-event signal will be emitted when the size, position or
    /// stacking of the `widget`'s window has changed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case configureEvent = "configure-event"
    /// Emitted when a redirected window belonging to `widget` gets drawn into.
    /// The region/area members of the event shows what area of the redirected
    /// drawable was drawn into.
    case damageEvent = "damage-event"
    /// The `delete`-event signal is emitted if a user requests that
    /// a toplevel window is closed. The default handler for this signal
    /// destroys the window. Connecting `gtk_widget_hide_on_delete()` to
    /// this signal will cause the window to be hidden instead, so that
    /// it can later be shown again without reconstructing it.
    case deleteEvent = "delete-event"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The `destroy`-event signal is emitted when a `GdkWindow` is destroyed.
    /// You rarely get this signal, because most widgets disconnect themselves
    /// from their window before they destroy it, so no widget owns the
    /// window at destroy time.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case destroyEvent = "destroy-event"
    /// The `direction`-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The `drag`-begin signal is emitted on the drag source when a drag is
    /// started. A typical reason to connect to this signal is to set up a
    /// custom drag icon with e.g. `gtk_drag_source_set_icon_pixbuf()`.
    /// 
    /// Note that some widgets set up a drag icon in the default handler of
    /// this signal, so you may have to use `g_signal_connect_after()` to
    /// override what the default handler did.
    case dragBegin = "drag-begin"
    /// The `drag`-data-delete signal is emitted on the drag source when a drag
    /// with the action `GDK_ACTION_MOVE` is successfully completed. The signal
    /// handler is responsible for deleting the data that has been dropped. What
    /// "delete" means depends on the context of the drag operation.
    case dragDataDelete = "drag-data-delete"
    /// The `drag`-data-get signal is emitted on the drag source when the drop
    /// site requests the data which is dragged. It is the responsibility of
    /// the signal handler to fill `data` with the data in the format which
    /// is indicated by `info`. See `gtk_selection_data_set()` and
    /// `gtk_selection_data_set_text()`.
    case dragDataGet = "drag-data-get"
    /// The `drag`-data-received signal is emitted on the drop site when the
    /// dragged data has been received. If the data was received in order to
    /// determine whether the drop will be accepted, the handler is expected
    /// to call `gdk_drag_status()` and not finish the drag.
    /// If the data was received in response to a `GtkWidget::drag`-drop signal
    /// (and this is the last target to be received), the handler for this
    /// signal is expected to process the received data and then call
    /// `gtk_drag_finish()`, setting the `success` parameter depending on
    /// whether the data was processed successfully.
    /// 
    /// Applications must create some means to determine why the signal was emitted
    /// and therefore whether to call `gdk_drag_status()` or `gtk_drag_finish()`.
    /// 
    /// The handler may inspect the selected action with
    /// `gdk_drag_context_get_selected_action()` before calling
    /// `gtk_drag_finish()`, e.g. to implement `GDK_ACTION_ASK` as
    /// shown in the following example:
    /// (C Language Example):
    /// ```C
    /// void
    /// drag_data_received (GtkWidget          *widget,
    ///                     GdkDragContext     *context,
    ///                     gint                x,
    ///                     gint                y,
    ///                     GtkSelectionData   *data,
    ///                     guint               info,
    ///                     guint               time)
    /// {
    ///   if ((data->length >= 0) && (data->format == 8))
    ///     {
    ///       GdkDragAction action;
    /// 
    ///       // handle data here
    /// 
    ///       action = gdk_drag_context_get_selected_action (context);
    ///       if (action == GDK_ACTION_ASK)
    ///         {
    ///           GtkWidget *dialog;
    ///           gint response;
    /// 
    ///           dialog = gtk_message_dialog_new (NULL,
    ///                                            GTK_DIALOG_MODAL |
    ///                                            GTK_DIALOG_DESTROY_WITH_PARENT,
    ///                                            GTK_MESSAGE_INFO,
    ///                                            GTK_BUTTONS_YES_NO,
    ///                                            "Move the data ?\n");
    ///           response = gtk_dialog_run (GTK_DIALOG (dialog));
    ///           gtk_widget_destroy (dialog);
    /// 
    ///           if (response == GTK_RESPONSE_YES)
    ///             action = GDK_ACTION_MOVE;
    ///           else
    ///             action = GDK_ACTION_COPY;
    ///          }
    /// 
    ///       gtk_drag_finish (context, TRUE, action == GDK_ACTION_MOVE, time);
    ///     }
    ///   else
    ///     gtk_drag_finish (context, FALSE, FALSE, time);
    ///  }
    /// ```
    /// 
    case dragDataReceived = "drag-data-received"
    /// The `drag`-drop signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the cursor position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// Otherwise, the handler returns `true`. In this case, the handler must
    /// ensure that `gtk_drag_finish()` is called to let the source know that
    /// the drop is done. The call to `gtk_drag_finish()` can be done either
    /// directly or in a `GtkWidget::drag`-data-received handler which gets
    /// triggered by calling `gtk_drag_get_data()` to receive the data for one
    /// or more of the supported targets.
    case dragDrop = "drag-drop"
    /// The `drag`-end signal is emitted on the drag source when a drag is
    /// finished.  A typical reason to connect to this signal is to undo
    /// things done in `GtkWidget::drag`-begin.
    case dragEnd = "drag-end"
    /// The `drag`-failed signal is emitted on the drag source when a drag has
    /// failed. The signal handler may hook custom code to handle a failed DnD
    /// operation based on the type of error, it returns `true` is the failure has
    /// been already handled (not showing the default "drag operation failed"
    /// animation), otherwise it returns `false`.
    case dragFailed = "drag-failed"
    /// The `drag`-leave signal is emitted on the drop site when the cursor
    /// leaves the widget. A typical reason to connect to this signal is to
    /// undo things done in `GtkWidget::drag`-motion, e.g. undo highlighting
    /// with `gtk_drag_unhighlight()`.
    /// 
    /// 
    /// Likewise, the `GtkWidget::drag`-leave signal is also emitted before the
    /// `drag`-drop signal, for instance to allow cleaning up of a preview item
    /// created in the `GtkWidget::drag`-motion signal handler.
    case dragLeave = "drag-leave"
    /// The `drag`-motion signal is emitted on the drop site when the user
    /// moves the cursor over the widget during a drag. The signal handler
    /// must determine whether the cursor position is in a drop zone or not.
    /// If it is not in a drop zone, it returns `false` and no further processing
    /// is necessary. Otherwise, the handler returns `true`. In this case, the
    /// handler is responsible for providing the necessary information for
    /// displaying feedback to the user, by calling `gdk_drag_status()`.
    /// 
    /// If the decision whether the drop will be accepted or rejected can't be
    /// made based solely on the cursor position and the type of the data, the
    /// handler may inspect the dragged data by calling `gtk_drag_get_data()` and
    /// defer the `gdk_drag_status()` call to the `GtkWidget::drag`-data-received
    /// handler. Note that you must pass `GTK_DEST_DEFAULT_DROP`,
    /// `GTK_DEST_DEFAULT_MOTION` or `GTK_DEST_DEFAULT_ALL` to `gtk_drag_dest_set()`
    /// when using the drag-motion signal that way.
    /// 
    /// Also note that there is no drag-enter signal. The drag receiver has to
    /// keep track of whether he has received any drag-motion signals since the
    /// last `GtkWidget::drag`-leave and if not, treat the drag-motion signal as
    /// an "enter" signal. Upon an "enter", the handler will typically highlight
    /// the drop site with `gtk_drag_highlight()`.
    /// (C Language Example):
    /// ```C
    /// static void
    /// drag_motion (GtkWidget      *widget,
    ///              GdkDragContext *context,
    ///              gint            x,
    ///              gint            y,
    ///              guint           time)
    /// {
    ///   GdkAtom target;
    /// 
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (!private_data->drag_highlight)
    ///    {
    ///      private_data->drag_highlight = 1;
    ///      gtk_drag_highlight (widget);
    ///    }
    /// 
    ///   target = gtk_drag_dest_find_target (widget, context, NULL);
    ///   if (target == GDK_NONE)
    ///     gdk_drag_status (context, 0, time);
    ///   else
    ///    {
    ///      private_data->pending_status
    ///         = gdk_drag_context_get_suggested_action (context);
    ///      gtk_drag_get_data (widget, context, target, time);
    ///    }
    /// 
    ///   return TRUE;
    /// }
    /// 
    /// static void
    /// drag_data_received (GtkWidget        *widget,
    ///                     GdkDragContext   *context,
    ///                     gint              x,
    ///                     gint              y,
    ///                     GtkSelectionData *selection_data,
    ///                     guint             info,
    ///                     guint             time)
    /// {
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (private_data->suggested_action)
    ///    {
    ///      private_data->suggested_action = 0;
    /// 
    ///      // We are getting this data due to a request in drag_motion,
    ///      // rather than due to a request in drag_drop, so we are just
    ///      // supposed to call gdk_drag_status(), not actually paste in
    ///      // the data.
    /// 
    ///      str = gtk_selection_data_get_text (selection_data);
    ///      if (!data_is_acceptable (str))
    ///        gdk_drag_status (context, 0, time);
    ///      else
    ///        gdk_drag_status (context,
    ///                         private_data->suggested_action,
    ///                         time);
    ///    }
    ///   else
    ///    {
    ///      // accept the drop
    ///    }
    /// }
    /// ```
    /// 
    case dragMotion = "drag-motion"
    /// This signal is emitted when a widget is supposed to render itself.
    /// The `widget`'s top left corner must be painted at the origin of
    /// the passed in context and be sized to the values returned by
    /// `gtk_widget_get_allocated_width()` and
    /// `gtk_widget_get_allocated_height()`.
    /// 
    /// Signal handlers connected to this signal can modify the cairo
    /// context passed as `cr` in any way they like and don't need to
    /// restore it. The signal emission takes care of calling `cairo_save()`
    /// before and `cairo_restore()` after invoking the handler.
    /// 
    /// The signal handler will get a `cr` with a clip region already set to the
    /// widget's dirty region, i.e. to the area that needs repainting.  Complicated
    /// widgets that want to avoid redrawing themselves completely can get the full
    /// extents of the clip region with `gdk_cairo_get_clip_rectangle()`, or they can
    /// get a finer-grained representation of the dirty region with
    /// `cairo_copy_clip_rectangle_list()`.
    case draw = "draw"
    /// Emitted when the pointer enters the button.
    ///
    /// **enter is deprecated:**
    /// Use the #GtkWidget::enter-notify-event signal.
    case enter = "enter"
    /// The `enter`-notify-event will be emitted when the pointer enters
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_ENTER_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case enterNotifyEvent = "enter-notify-event"
    /// The GTK+ main loop will emit three signals for each GDK event delivered
    /// to a widget: one generic `event` signal, another, more specific,
    /// signal that matches the type of event delivered (e.g.
    /// `GtkWidget::key`-press-event) and finally a generic
    /// `GtkWidget::event`-after signal.
    case event = "event"
    /// After the emission of the `GtkWidget::event` signal and (optionally)
    /// the second more specific signal, `event`-after will be emitted
    /// regardless of the previous two signals handlers return values.
    case eventAfter = "event-after"
    case focus = "focus"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The `focus`-in-event signal will be emitted when the keyboard focus
    /// enters the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusInEvent = "focus-in-event"
    /// The `focus`-out-event signal will be emitted when the keyboard focus
    /// leaves the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusOutEvent = "focus-out-event"
    /// Emitted when a pointer or keyboard grab on a window belonging
    /// to `widget` gets broken.
    /// 
    /// On X11, this happens when the grab window becomes unviewable
    /// (i.e. it or one of its ancestors is unmapped), or if the same
    /// application grabs the pointer or keyboard again.
    case grabBrokenEvent = "grab-broken-event"
    case grabFocus = "grab-focus"
    /// The `grab`-notify signal is emitted when a widget becomes
    /// shadowed by a GTK+ grab (not a pointer or keyboard grab) on
    /// another widget, or when it becomes unshadowed due to a grab
    /// being removed.
    /// 
    /// A widget is shadowed by a `gtk_grab_add()` when the topmost
    /// grab widget in the grab stack of its window group is not
    /// its ancestor.
    case grabNotify = "grab-notify"
    /// Emitted when the group of radio buttons that a radio button belongs
    /// to changes. This is emitted when a radio button switches from
    /// being alone to being part of a group of 2 or more buttons, or
    /// vice-versa, and when a button is moved from one group of 2 or
    /// more buttons to a different one, but not when the composition
    /// of the group that a button belongs to changes.
    case groupChanged = "group-changed"
    /// The `hide` signal is emitted when `widget` is hidden, for example with
    /// `gtk_widget_hide()`.
    case hide = "hide"
    /// The `hierarchy`-changed signal is emitted when the
    /// anchored state of a widget changes. A widget is
    /// “anchored” when its toplevel
    /// ancestor is a `GtkWindow`. This signal is emitted when
    /// a widget changes from un-anchored to anchored or vice-versa.
    case hierarchyChanged = "hierarchy-changed"
    /// The `key`-press-event signal is emitted when a key is pressed. The signal
    /// emission will reoccur at the key-repeat rate when the key is kept pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyPressEvent = "key-press-event"
    /// The `key`-release-event signal is emitted when a key is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyReleaseEvent = "key-release-event"
    /// Gets emitted if keyboard navigation fails.
    /// See `gtk_widget_keynav_failed()` for details.
    case keynavFailed = "keynav-failed"
    /// Emitted when the pointer leaves the button.
    ///
    /// **leave is deprecated:**
    /// Use the #GtkWidget::leave-notify-event signal.
    case leave = "leave"
    /// The `leave`-notify-event will be emitted when the pointer leaves
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_LEAVE_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case leaveNotifyEvent = "leave-notify-event"
    /// The `map` signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// `gtk_widget_set_visible()`) and all its parents up to the toplevel widget
    /// are also visible. Once the map has occurred, `GtkWidget::map`-event will
    /// be emitted.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget::unmap`.
    case map = "map"
    /// The `map`-event signal will be emitted when the `widget`'s window is
    /// mapped. A window is mapped when it becomes visible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case mapEvent = "map-event"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// The `motion`-notify-event signal is emitted when the pointer moves
    /// over the widget's `GdkWindow`.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_POINTER_MOTION_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case motionNotifyEvent = "motion-notify-event"
    case moveFocus = "move-focus"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The `parent`-set signal is emitted when a new parent
    /// has been set on a widget.
    case parentSet = "parent-set"
    /// This signal gets emitted whenever a widget should pop up a context
    /// menu. This usually happens through the standard key binding mechanism;
    /// by pressing a certain key while a widget is focused, the user can cause
    /// the widget to pop up a menu.  For example, the `GtkEntry` widget creates
    /// a menu with clipboard commands. See the
    /// [Popup Menu Migration Checklist](#checklist-popup-menu)
    /// for an example of how to use this signal.
    case popupMenu = "popup-menu"
    /// Emitted when the button is pressed.
    ///
    /// **pressed is deprecated:**
    /// Use the #GtkWidget::button-press-event signal.
    case pressed = "pressed"
    /// The signal "property-change" is emitted when an object's property
    /// value changes. `arg1` contains an `AtkPropertyValues` with the name
    /// and the new value of the property whose value has changed. Note
    /// that, as with GObject notify, getting this signal does not
    /// guarantee that the value of the property has actually changed; it
    /// may also be emitted when the setter of the property is called to
    /// reinstate the previous value.
    /// 
    /// Toolkit implementor note: ATK implementors should use
    /// `g_object_notify()` to emit property-changed
    /// notifications. `AtkObject::property`-changed is needed by the
    /// implementation of `atk_add_global_event_listener()` because GObject
    /// notify doesn't support emission hooks.
    case propertyChange = "property-change"
    /// The `property`-notify-event signal will be emitted when a property on
    /// the `widget`'s window has been changed or deleted.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROPERTY_CHANGE_MASK` mask.
    case propertyNotifyEvent = "property-notify-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_IN_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityInEvent = "proximity-in-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_OUT_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityOutEvent = "proximity-out-event"
    /// Emitted when `GtkWidget:has`-tooltip is `true` and the hover timeout
    /// has expired with the cursor hovering "above" `widget`; or emitted when `widget` got
    /// focus in keyboard mode.
    /// 
    /// Using the given coordinates, the signal handler should determine
    /// whether a tooltip should be shown for `widget`. If this is the case
    /// `true` should be returned, `false` otherwise.  Note that if
    /// `keyboard_mode` is `true`, the values of `x` and `y` are undefined and
    /// should not be used.
    /// 
    /// The signal handler is free to manipulate `tooltip` with the therefore
    /// destined function calls.
    case queryTooltip = "query-tooltip"
    /// The `realize` signal is emitted when `widget` is associated with a
    /// `GdkWindow`, which means that `gtk_widget_realize()` has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// Emitted when the button is released.
    ///
    /// **released is deprecated:**
    /// Use the #GtkWidget::button-release-event signal.
    case released = "released"
    case remove = "remove"
    /// The `screen`-changed signal gets emitted when the
    /// screen of a widget has changed.
    case screenChanged = "screen-changed"
    /// The `scroll`-event signal is emitted when a button in the 4 to 7
    /// range is pressed. Wheel mice are usually configured to generate
    /// button press events for buttons 4 and 5 when the wheel is turned.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_SCROLL_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case scrollEvent = "scroll-event"
    /// The `selection`-clear-event signal will be emitted when the
    /// the `widget`'s window has lost ownership of a selection.
    case selectionClearEvent = "selection-clear-event"
    case selectionGet = "selection-get"
    case selectionNotifyEvent = "selection-notify-event"
    case selectionReceived = "selection-received"
    /// The `selection`-request-event signal will be emitted when
    /// another client requests ownership of the selection owned by
    /// the `widget`'s window.
    case selectionRequestEvent = "selection-request-event"
    case setFocusChild = "set-focus-child"
    /// The `show` signal is emitted when `widget` is shown, for example with
    /// `gtk_widget_show()`.
    case show = "show"
    case showHelp = "show-help"
    case sizeAllocate = "size-allocate"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The `state`-changed signal is emitted when the widget state changes.
    /// See `gtk_widget_get_state()`.
    ///
    /// **state-changed is deprecated:**
    /// Use #GtkWidget::state-flags-changed instead.
    case stateChanged = "state-changed"
    /// The `state`-flags-changed signal is emitted when the widget state
    /// changes, see `gtk_widget_get_state_flags()`.
    case stateFlagsChanged = "state-flags-changed"
    /// The `style`-set signal is emitted when a new style has been set
    /// on a widget. Note that style-modifying functions like
    /// `gtk_widget_modify_base()` also cause this signal to be emitted.
    /// 
    /// Note that this signal is emitted for changes to the deprecated
    /// `GtkStyle`. To track changes to the `GtkStyleContext` associated
    /// with a widget, use the `GtkWidget::style`-updated signal.
    ///
    /// **style-set is deprecated:**
    /// Use the #GtkWidget::style-updated signal
    case styleSet = "style-set"
    /// The `style`-updated signal is a convenience signal that is emitted when the
    /// `GtkStyleContext::changed` signal is emitted on the `widget`'s associated
    /// `GtkStyleContext` as returned by `gtk_widget_get_style_context()`.
    /// 
    /// Note that style-modifying functions like `gtk_widget_override_color()` also
    /// cause this signal to be emitted.
    case styleUpdated = "style-updated"
    /// Should be connected if you wish to perform an action whenever the
    /// `GtkToggleButton`'s state is changed.
    case toggled = "toggled"
    case touchEvent = "touch-event"
    /// The `unmap` signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The `unmap`-event signal will be emitted when the `widget`'s window is
    /// unmapped. A window is unmapped when it becomes invisible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case unmapEvent = "unmap-event"
    /// The `unrealize` signal is emitted when the `GdkWindow` associated with
    /// `widget` is destroyed, which means that `gtk_widget_unrealize()` has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
    /// The `visibility`-notify-event will be emitted when the `widget`'s
    /// window is obscured or unobscured.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_VISIBILITY_NOTIFY_MASK` mask.
    ///
    /// **visibility-notify-event is deprecated:**
    /// Modern composited windowing systems with pervasive
    ///     transparency make it impossible to track the visibility of a window
    ///     reliably, so this signal can not be guaranteed to provide useful
    ///     information.
    case visibilityNotifyEvent = "visibility-notify-event"
    /// The "visible-data-changed" signal is emitted when the visual
    /// appearance of the object changed.
    case visibleDataChanged = "visible-data-changed"
    /// The `window`-state-event will be emitted when the state of the
    /// toplevel window associated to the `widget` changes.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable
    /// this mask automatically for all new windows.
    case windowStateEvent = "window-state-event"
    case notifyAccessibleComponentLayer = "notify::accessible-component-layer"
    case notifyAccessibleComponentMdiZorder = "notify::accessible-component-mdi-zorder"
    case notifyAccessibleDescription = "notify::accessible-description"
    case notifyAccessibleHypertextNlinks = "notify::accessible-hypertext-nlinks"
    case notifyAccessibleName = "notify::accessible-name"
    case notifyAccessibleParent = "notify::accessible-parent"
    case notifyAccessibleRole = "notify::accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case notifyAccessibleTableCaption = "notify::accessible-table-caption"
    case notifyAccessibleTableCaptionObject = "notify::accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case notifyAccessibleTableColumnDescription = "notify::accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case notifyAccessibleTableColumnHeader = "notify::accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case notifyAccessibleTableRowDescription = "notify::accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case notifyAccessibleTableRowHeader = "notify::accessible-table-row-header"
    case notifyAccessibleTableSummary = "notify::accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case notifyAccessibleValue = "notify::accessible-value"
    case notifyActive = "notify::active"
    /// If `true`, the button will ignore the `GtkSettings:gtk`-button-images
    /// setting and always show the image, if available.
    /// 
    /// Use this property if the button would be useless or hard to use
    /// without the image.
    case notifyAlwaysShowImage = "notify::always-show-image"
    case notifyAppPaintable = "notify::app-paintable"
    case notifyBorderWidth = "notify::border-width"
    case notifyCanDefault = "notify::can-default"
    case notifyCanFocus = "notify::can-focus"
    case notifyChild = "notify::child"
    case notifyCompositeChild = "notify::composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case notifyDoubleBuffered = "notify::double-buffered"
    case notifyDrawIndicator = "notify::draw-indicator"
    case notifyEvents = "notify::events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case notifyExpand = "notify::expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// Sets a new group for a radio button.
    case notifyGroup = "notify::group"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case notifyHalign = "notify::halign"
    case notifyHasDefault = "notify::has-default"
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case notifyHexpandSet = "notify::hexpand-set"
    /// The child widget to appear next to the button text.
    case notifyImage = "notify::image"
    /// The position of the image relative to the text inside the button.
    case notifyImagePosition = "notify::image-position"
    case notifyInconsistent = "notify::inconsistent"
    case notifyIsFocus = "notify::is-focus"
    case notifyLabel = "notify::label"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case notifyMargin = "notify::margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case notifyMarginLeft = "notify::margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case notifyMarginRight = "notify::margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginTop = "notify::margin-top"
    case notifyName = "notify::name"
    case notifyNoShowAll = "notify::no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case notifyOpacity = "notify::opacity"
    case notifyParent = "notify::parent"
    case notifyReceivesDefault = "notify::receives-default"
    case notifyRelief = "notify::relief"
    case notifyResizeMode = "notify::resize-mode"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case notifyStyle = "notify::style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"

    ///
    /// **use-stock is deprecated:**
    /// This method is deprecated.
    case notifyUseStock = "notify::use-stock"
    case notifyUseUnderline = "notify::use-underline"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    case notifyWidthRequest = "notify::width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case notifyWindow = "notify::window"
    /// If the child of the button is a `GtkMisc` or `GtkAlignment`, this property
    /// can be used to control its horizontal alignment. 0.0 is left aligned,
    /// 1.0 is right aligned.
    ///
    /// **xalign is deprecated:**
    /// Access the child widget directly if you need to control
    /// its alignment.
    case notifyXalign = "notify::xalign"
    /// If the child of the button is a `GtkMisc` or `GtkAlignment`, this property
    /// can be used to control its vertical alignment. 0.0 is top aligned,
    /// 1.0 is bottom aligned.
    ///
    /// **yalign is deprecated:**
    /// Access the child widget directly if you need to control
    /// its alignment.
    case notifyYalign = "notify::yalign"
}

public extension RadioButtonProtocol {
    /// Connect a `RadioButtonSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: RadioButtonSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(radio_button_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension RadioButtonProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRadioButton` instance.
    var radio_button_ptr: UnsafeMutablePointer<GtkRadioButton> { return ptr.assumingMemoryBound(to: GtkRadioButton.self) }

    /// Retrieves the group assigned to a radio button.
    func getGroup() -> SListRef! {
        let rv = gtk_radio_button_get_group(cast(radio_button_ptr))
        return cast(rv.map { SListRef($0) })
    }

    /// Joins a `GtkRadioButton` object to the group of another `GtkRadioButton` object
    /// 
    /// Use this in language bindings instead of the `gtk_radio_button_get_group()`
    /// and `gtk_radio_button_set_group()` methods
    /// 
    /// A common way to set up a group of radio buttons is the following:
    /// (C Language Example):
    /// ```C
    ///   GtkRadioButton *radio_button;
    ///   GtkRadioButton *last_button;
    /// 
    ///   while (some_condition)
    ///     {
    ///        radio_button = gtk_radio_button_new (NULL);
    /// 
    ///        gtk_radio_button_join_group (radio_button, last_button);
    ///        last_button = radio_button;
    ///     }
    /// ```
    /// 
    func joinGroup(groupSource group_source: RadioButtonProtocol) {
        gtk_radio_button_join_group(cast(radio_button_ptr), cast(group_source.ptr))
    
    }

    /// Sets a `GtkRadioButton`’s group. It should be noted that this does not change
    /// the layout of your interface in any way, so if you are changing the group,
    /// it is likely you will need to re-arrange the user interface to reflect these
    /// changes.
    func set(group: SListProtocol) {
        gtk_radio_button_set_group(cast(radio_button_ptr), cast(group.ptr))
    
    }
    /// Sets a new group for a radio button.
    var group: SListRef! {
        /// Retrieves the group assigned to a radio button.
        get {
            let rv = gtk_radio_button_get_group(cast(radio_button_ptr))
            return cast(rv.map { SListRef($0) })
        }
        /// Sets a `GtkRadioButton`’s group. It should be noted that this does not change
        /// the layout of your interface in any way, so if you are changing the group,
        /// it is likely you will need to re-arrange the user interface to reflect these
        /// changes.
        nonmutating set {
            gtk_radio_button_set_group(cast(radio_button_ptr), cast(newValue.map { $0.ptr }))
        }
    }
}



// MARK: - RadioButtonAccessible Class

/// The `RadioButtonAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkRadioButtonAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RadioButtonAccessible`.
/// Alternatively, use `RadioButtonAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RadioButtonAccessibleProtocol: ToggleButtonAccessibleProtocol {
    /// Untyped pointer to the underlying `GtkRadioButtonAccessible` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRadioButtonAccessible` instance.
    var radio_button_accessible_ptr: UnsafeMutablePointer<GtkRadioButtonAccessible> { get }
}

/// The `RadioButtonAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkRadioButtonAccessible` instance.
/// It exposes methods that can operate on this data type through `RadioButtonAccessibleProtocol` conformance.
/// Use `RadioButtonAccessibleRef` only as an `unowned` reference to an existing `GtkRadioButtonAccessible` instance.
///

public struct RadioButtonAccessibleRef: RadioButtonAccessibleProtocol {
    /// Untyped pointer to the underlying `GtkRadioButtonAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `radio_button_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RadioButtonAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRadioButtonAccessible>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RadioButtonAccessibleProtocol`
    init<T: RadioButtonAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessibleProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessibleProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessibleProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessibleProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessibleProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RadioButtonAccessible` type acts as a reference-counted owner of an underlying `GtkRadioButtonAccessible` instance.
/// It provides the methods that can operate on this data type through `RadioButtonAccessibleProtocol` conformance.
/// Use `RadioButtonAccessible` as a strong reference or owner of a `GtkRadioButtonAccessible` instance.
///

open class RadioButtonAccessible: ToggleButtonAccessible, RadioButtonAccessibleProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RadioButtonAccessible` instance.
    public init(_ op: UnsafeMutablePointer<GtkRadioButtonAccessible>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `RadioButtonAccessibleProtocol`
    /// Will retain `GtkRadioButtonAccessible`.
    public convenience init<T: RadioButtonAccessibleProtocol>(_ other: T) {
        self.init(cast(other.radio_button_accessible_ptr))
        g_object_ref(cast(radio_button_accessible_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessibleProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRadioButtonAccessible.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessibleProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRadioButtonAccessible.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessibleProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRadioButtonAccessible.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessibleProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRadioButtonAccessible>(opaquePointer))
    }



}

public enum RadioButtonAccessiblePropertyName: String, PropertyNameProtocol {
    case accessibleComponentLayer = "accessible-component-layer"
    case accessibleComponentMdiZorder = "accessible-component-mdi-zorder"
    case accessibleDescription = "accessible-description"
    case accessibleHypertextNlinks = "accessible-hypertext-nlinks"
    case accessibleName = "accessible-name"
    case accessibleParent = "accessible-parent"
    case accessibleRole = "accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case accessibleTableCaption = "accessible-table-caption"
    case accessibleTableCaptionObject = "accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case accessibleTableColumnDescription = "accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case accessibleTableColumnHeader = "accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case accessibleTableRowDescription = "accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case accessibleTableRowHeader = "accessible-table-row-header"
    case accessibleTableSummary = "accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case accessibleValue = "accessible-value"
    case widget = "widget"
}

public extension RadioButtonAccessibleProtocol {
    /// Bind a `RadioButtonAccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: RadioButtonAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(radio_button_accessible_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }
}

public enum RadioButtonAccessibleSignalName: String, SignalNameProtocol {
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The signal "property-change" is emitted when an object's property
    /// value changes. `arg1` contains an `AtkPropertyValues` with the name
    /// and the new value of the property whose value has changed. Note
    /// that, as with GObject notify, getting this signal does not
    /// guarantee that the value of the property has actually changed; it
    /// may also be emitted when the setter of the property is called to
    /// reinstate the previous value.
    /// 
    /// Toolkit implementor note: ATK implementors should use
    /// `g_object_notify()` to emit property-changed
    /// notifications. `AtkObject::property`-changed is needed by the
    /// implementation of `atk_add_global_event_listener()` because GObject
    /// notify doesn't support emission hooks.
    case propertyChange = "property-change"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The "visible-data-changed" signal is emitted when the visual
    /// appearance of the object changed.
    case visibleDataChanged = "visible-data-changed"
    case notifyAccessibleComponentLayer = "notify::accessible-component-layer"
    case notifyAccessibleComponentMdiZorder = "notify::accessible-component-mdi-zorder"
    case notifyAccessibleDescription = "notify::accessible-description"
    case notifyAccessibleHypertextNlinks = "notify::accessible-hypertext-nlinks"
    case notifyAccessibleName = "notify::accessible-name"
    case notifyAccessibleParent = "notify::accessible-parent"
    case notifyAccessibleRole = "notify::accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case notifyAccessibleTableCaption = "notify::accessible-table-caption"
    case notifyAccessibleTableCaptionObject = "notify::accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case notifyAccessibleTableColumnDescription = "notify::accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case notifyAccessibleTableColumnHeader = "notify::accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case notifyAccessibleTableRowDescription = "notify::accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case notifyAccessibleTableRowHeader = "notify::accessible-table-row-header"
    case notifyAccessibleTableSummary = "notify::accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case notifyAccessibleValue = "notify::accessible-value"
    case notifyWidget = "notify::widget"
}

public extension RadioButtonAccessibleProtocol {
    /// Connect a `RadioButtonAccessibleSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: RadioButtonAccessibleSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(radio_button_accessible_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension RadioButtonAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRadioButtonAccessible` instance.
    var radio_button_accessible_ptr: UnsafeMutablePointer<GtkRadioButtonAccessible> { return ptr.assumingMemoryBound(to: GtkRadioButtonAccessible.self) }

}



// MARK: - RadioMenuItem Class

/// The `RadioMenuItemProtocol` protocol exposes the methods and properties of an underlying `GtkRadioMenuItem` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RadioMenuItem`.
/// Alternatively, use `RadioMenuItemRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A radio menu item is a check menu item that belongs to a group. At each
/// instant exactly one of the radio menu items from a group is selected.
/// 
/// The group list does not need to be freed, as each `GtkRadioMenuItem` will
/// remove itself and its list item when it is destroyed.
/// 
/// The correct way to create a group of radio menu items is approximatively
/// this:
/// 
/// ## How to create a group of radio menu items.
/// 
/// (C Language Example):
/// ```C
/// GSList *group = NULL;
/// GtkWidget *item;
/// gint i;
/// 
/// for (i = 0; i < 5; i++)
/// {
///   item = gtk_radio_menu_item_new_with_label (group, "This is an example");
///   group = gtk_radio_menu_item_get_group (GTK_RADIO_MENU_ITEM (item));
///   if (i == 1)
///     gtk_check_menu_item_set_active (GTK_CHECK_MENU_ITEM (item), TRUE);
/// }
/// ```
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// menuitem
/// ├── radio.left
/// ╰── <child>
/// ```
/// 
/// GtkRadioMenuItem has a main CSS node with name menuitem, and a subnode
/// with name radio, which gets the .left or .right style class.
public protocol RadioMenuItemProtocol: CheckMenuItemProtocol {
    /// Untyped pointer to the underlying `GtkRadioMenuItem` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRadioMenuItem` instance.
    var radio_menu_item_ptr: UnsafeMutablePointer<GtkRadioMenuItem> { get }
}

/// The `RadioMenuItemRef` type acts as a lightweight Swift reference to an underlying `GtkRadioMenuItem` instance.
/// It exposes methods that can operate on this data type through `RadioMenuItemProtocol` conformance.
/// Use `RadioMenuItemRef` only as an `unowned` reference to an existing `GtkRadioMenuItem` instance.
///
/// A radio menu item is a check menu item that belongs to a group. At each
/// instant exactly one of the radio menu items from a group is selected.
/// 
/// The group list does not need to be freed, as each `GtkRadioMenuItem` will
/// remove itself and its list item when it is destroyed.
/// 
/// The correct way to create a group of radio menu items is approximatively
/// this:
/// 
/// ## How to create a group of radio menu items.
/// 
/// (C Language Example):
/// ```C
/// GSList *group = NULL;
/// GtkWidget *item;
/// gint i;
/// 
/// for (i = 0; i < 5; i++)
/// {
///   item = gtk_radio_menu_item_new_with_label (group, "This is an example");
///   group = gtk_radio_menu_item_get_group (GTK_RADIO_MENU_ITEM (item));
///   if (i == 1)
///     gtk_check_menu_item_set_active (GTK_CHECK_MENU_ITEM (item), TRUE);
/// }
/// ```
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// menuitem
/// ├── radio.left
/// ╰── <child>
/// ```
/// 
/// GtkRadioMenuItem has a main CSS node with name menuitem, and a subnode
/// with name radio, which gets the .left or .right style class.
public struct RadioMenuItemRef: RadioMenuItemProtocol {
    /// Untyped pointer to the underlying `GtkRadioMenuItem` instance.
    /// For type-safe access, use the generated, typed pointer `radio_menu_item_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RadioMenuItemRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRadioMenuItem>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RadioMenuItemProtocol`
    init<T: RadioMenuItemProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkRadioMenuItem`.
    init( group: SListProtocol) {
        let rv = gtk_radio_menu_item_new(cast(group.ptr))
        self.init(cast(rv))
    }

    /// Creates a new `GtkRadioMenuItem` whose child is a simple `GtkLabel`.
    init(group: SListProtocol, label: UnsafePointer<gchar>) {
        let rv = gtk_radio_menu_item_new_with_label(cast(group.ptr), label)
        self.init(cast(rv))
    }

    /// Creates a new `GtkRadioMenuItem` containing a label. The label
    /// will be created using `gtk_label_new_with_mnemonic()`, so underscores
    /// in `label` indicate the mnemonic for the menu item.
    init(group: SListProtocol, mnemonic label: UnsafePointer<gchar>) {
        let rv = gtk_radio_menu_item_new_with_mnemonic(cast(group.ptr), label)
        self.init(cast(rv))
    }
    /// Creates a new `GtkRadioMenuItem` whose child is a simple `GtkLabel`.
    static func newWith(group: SListProtocol, label: UnsafePointer<gchar>) -> RadioMenuItemRef! {
        let rv = gtk_radio_menu_item_new_with_label(cast(group.ptr), label)
        return rv.map { RadioMenuItemRef(cast($0)) }
    }

    /// Creates a new `GtkRadioMenuItem` containing a label. The label
    /// will be created using `gtk_label_new_with_mnemonic()`, so underscores
    /// in `label` indicate the mnemonic for the menu item.
    static func newWith(group: SListProtocol, mnemonic label: UnsafePointer<gchar>) -> RadioMenuItemRef! {
        let rv = gtk_radio_menu_item_new_with_mnemonic(cast(group.ptr), label)
        return rv.map { RadioMenuItemRef(cast($0)) }
    }
}

/// The `RadioMenuItem` type acts as a reference-counted owner of an underlying `GtkRadioMenuItem` instance.
/// It provides the methods that can operate on this data type through `RadioMenuItemProtocol` conformance.
/// Use `RadioMenuItem` as a strong reference or owner of a `GtkRadioMenuItem` instance.
///
/// A radio menu item is a check menu item that belongs to a group. At each
/// instant exactly one of the radio menu items from a group is selected.
/// 
/// The group list does not need to be freed, as each `GtkRadioMenuItem` will
/// remove itself and its list item when it is destroyed.
/// 
/// The correct way to create a group of radio menu items is approximatively
/// this:
/// 
/// ## How to create a group of radio menu items.
/// 
/// (C Language Example):
/// ```C
/// GSList *group = NULL;
/// GtkWidget *item;
/// gint i;
/// 
/// for (i = 0; i < 5; i++)
/// {
///   item = gtk_radio_menu_item_new_with_label (group, "This is an example");
///   group = gtk_radio_menu_item_get_group (GTK_RADIO_MENU_ITEM (item));
///   if (i == 1)
///     gtk_check_menu_item_set_active (GTK_CHECK_MENU_ITEM (item), TRUE);
/// }
/// ```
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// menuitem
/// ├── radio.left
/// ╰── <child>
/// ```
/// 
/// GtkRadioMenuItem has a main CSS node with name menuitem, and a subnode
/// with name radio, which gets the .left or .right style class.
open class RadioMenuItem: CheckMenuItem, RadioMenuItemProtocol {
    /// Convenience constructor for creating a RadioMenuItem with a text label,
    /// creating a new group.
    ///
    /// - Parameter label: the label to use for the button
    public convenience init(label: UnsafePointer<gchar>) {
        let rv = gtk_radio_menu_item_new_with_label(nil, label)
        self.init(cast(rv))
    }

    /// Convenience constructor for creating a RadioMenuItem with a text label
    /// that contains menomics and creates a new group.  Underscores in `label`
    /// indicate the mnemonic for the button.
    ///
    /// - Parameter label: the label (including mnemonic) to use for the button
    public convenience init(mnemonic label: UnsafePointer<gchar>) {
        let rv = gtk_radio_menu_item_new_with_mnemonic(nil, label)
        self.init(cast(rv))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RadioMenuItem` instance.
    public init(_ op: UnsafeMutablePointer<GtkRadioMenuItem>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `RadioMenuItemProtocol`
    /// Will retain `GtkRadioMenuItem`.
    public convenience init<T: RadioMenuItemProtocol>(_ other: T) {
        self.init(cast(other.radio_menu_item_ptr))
        g_object_ref(cast(radio_menu_item_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRadioMenuItem.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRadioMenuItem.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRadioMenuItem.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRadioMenuItem>(opaquePointer))
    }

    /// Creates a new `GtkRadioMenuItem`.
    public convenience init( group: SListProtocol) {
        let rv = gtk_radio_menu_item_new(cast(group.ptr))
        self.init(cast(rv))
    }

    /// Creates a new `GtkRadioMenuItem` whose child is a simple `GtkLabel`.
    public convenience init(group: SListProtocol, label: UnsafePointer<gchar>) {
        let rv = gtk_radio_menu_item_new_with_label(cast(group.ptr), label)
        self.init(cast(rv))
    }

    /// Creates a new `GtkRadioMenuItem` containing a label. The label
    /// will be created using `gtk_label_new_with_mnemonic()`, so underscores
    /// in `label` indicate the mnemonic for the menu item.
    public convenience init(group: SListProtocol, mnemonic label: UnsafePointer<gchar>) {
        let rv = gtk_radio_menu_item_new_with_mnemonic(cast(group.ptr), label)
        self.init(cast(rv))
    }

    /// Creates a new `GtkRadioMenuItem` whose child is a simple `GtkLabel`.
    public static func newWith(group: SListProtocol, label: UnsafePointer<gchar>) -> RadioMenuItem! {
        let rv = gtk_radio_menu_item_new_with_label(cast(group.ptr), label)
        return rv.map { RadioMenuItem(cast($0)) }
    }

    /// Creates a new `GtkRadioMenuItem` containing a label. The label
    /// will be created using `gtk_label_new_with_mnemonic()`, so underscores
    /// in `label` indicate the mnemonic for the menu item.
    public static func newWith(group: SListProtocol, mnemonic label: UnsafePointer<gchar>) -> RadioMenuItem! {
        let rv = gtk_radio_menu_item_new_with_mnemonic(cast(group.ptr), label)
        return rv.map { RadioMenuItem(cast($0)) }
    }

}

public enum RadioMenuItemPropertyName: String, PropertyNameProtocol {
    /// Sets the accelerator path of the menu item, through which runtime
    /// changes of the menu item's accelerator caused by the user can be
    /// identified and saved to persistant storage.
    case accelPath = "accel-path"
    case accessibleComponentLayer = "accessible-component-layer"
    case accessibleComponentMdiZorder = "accessible-component-mdi-zorder"
    case accessibleDescription = "accessible-description"
    case accessibleHypertextNlinks = "accessible-hypertext-nlinks"
    case accessibleName = "accessible-name"
    case accessibleParent = "accessible-parent"
    case accessibleRole = "accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case accessibleTableCaption = "accessible-table-caption"
    case accessibleTableCaptionObject = "accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case accessibleTableColumnDescription = "accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case accessibleTableColumnHeader = "accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case accessibleTableRowDescription = "accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case accessibleTableRowHeader = "accessible-table-row-header"
    case accessibleTableSummary = "accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case accessibleValue = "accessible-value"
    case active = "active"
    case appPaintable = "app-paintable"
    case borderWidth = "border-width"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case child = "child"
    case compositeChild = "composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
    case drawAsRadio = "draw-as-radio"
    case events = "events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case expand = "expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case focusOnClick = "focus-on-click"
    /// The radio menu item whose group this widget belongs to.
    case group = "group"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    case inconsistent = "inconsistent"
    case isFocus = "is-focus"
    /// The text for the child label.
    case label = "label"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginTop = "margin-top"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case receivesDefault = "receives-default"
    case resizeMode = "resize-mode"
    /// Sets whether the menu item appears justified
    /// at the right side of a menu bar.
    case rightJustified = "right-justified"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    /// The submenu attached to the menu item, or `nil` if it has none.
    case submenu = "submenu"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// `true` if underlines in the text indicate mnemonics.
    case useUnderline = "use-underline"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
}

public extension RadioMenuItemProtocol {
    /// Bind a `RadioMenuItemPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: RadioMenuItemPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(radio_menu_item_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }
}

public enum RadioMenuItemSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// Emitted when the item is activated.
    case activate = "activate"
    /// Emitted when the item is activated, but also if the menu item has a
    /// submenu. For normal applications, the relevant signal is
    /// `GtkMenuItem::activate`.
    case activateItem = "activate-item"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    case add = "add"
    /// The `button`-press-event signal will be emitted when a button
    /// (typically from a mouse) is pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonPressEvent = "button-press-event"
    /// The `button`-release-event signal will be emitted when a button
    /// (typically from a mouse) is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonReleaseEvent = "button-release-event"
    /// Determines whether an accelerator that activates the signal
    /// identified by `signal_id` can currently be activated.
    /// This signal is present to allow applications and derived
    /// widgets to override the default `GtkWidget` handling
    /// for determining whether an accelerator can be activated.
    case canActivateAccel = "can-activate-accel"
    case checkResize = "check-resize"
    /// The `child`-notify signal is emitted for each
    /// [child property](#child-properties)  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// The `composited`-changed signal is emitted when the composited
    /// status of `widgets` screen changes.
    /// See `gdk_screen_is_composited()`.
    ///
    /// **composited-changed is deprecated:**
    /// Use GdkScreen::composited-changed instead.
    case compositedChanged = "composited-changed"
    /// The `configure`-event signal will be emitted when the size, position or
    /// stacking of the `widget`'s window has changed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case configureEvent = "configure-event"
    /// Emitted when a redirected window belonging to `widget` gets drawn into.
    /// The region/area members of the event shows what area of the redirected
    /// drawable was drawn into.
    case damageEvent = "damage-event"
    /// The `delete`-event signal is emitted if a user requests that
    /// a toplevel window is closed. The default handler for this signal
    /// destroys the window. Connecting `gtk_widget_hide_on_delete()` to
    /// this signal will cause the window to be hidden instead, so that
    /// it can later be shown again without reconstructing it.
    case deleteEvent = "delete-event"
    case deselect = "deselect"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The `destroy`-event signal is emitted when a `GdkWindow` is destroyed.
    /// You rarely get this signal, because most widgets disconnect themselves
    /// from their window before they destroy it, so no widget owns the
    /// window at destroy time.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case destroyEvent = "destroy-event"
    /// The `direction`-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The `drag`-begin signal is emitted on the drag source when a drag is
    /// started. A typical reason to connect to this signal is to set up a
    /// custom drag icon with e.g. `gtk_drag_source_set_icon_pixbuf()`.
    /// 
    /// Note that some widgets set up a drag icon in the default handler of
    /// this signal, so you may have to use `g_signal_connect_after()` to
    /// override what the default handler did.
    case dragBegin = "drag-begin"
    /// The `drag`-data-delete signal is emitted on the drag source when a drag
    /// with the action `GDK_ACTION_MOVE` is successfully completed. The signal
    /// handler is responsible for deleting the data that has been dropped. What
    /// "delete" means depends on the context of the drag operation.
    case dragDataDelete = "drag-data-delete"
    /// The `drag`-data-get signal is emitted on the drag source when the drop
    /// site requests the data which is dragged. It is the responsibility of
    /// the signal handler to fill `data` with the data in the format which
    /// is indicated by `info`. See `gtk_selection_data_set()` and
    /// `gtk_selection_data_set_text()`.
    case dragDataGet = "drag-data-get"
    /// The `drag`-data-received signal is emitted on the drop site when the
    /// dragged data has been received. If the data was received in order to
    /// determine whether the drop will be accepted, the handler is expected
    /// to call `gdk_drag_status()` and not finish the drag.
    /// If the data was received in response to a `GtkWidget::drag`-drop signal
    /// (and this is the last target to be received), the handler for this
    /// signal is expected to process the received data and then call
    /// `gtk_drag_finish()`, setting the `success` parameter depending on
    /// whether the data was processed successfully.
    /// 
    /// Applications must create some means to determine why the signal was emitted
    /// and therefore whether to call `gdk_drag_status()` or `gtk_drag_finish()`.
    /// 
    /// The handler may inspect the selected action with
    /// `gdk_drag_context_get_selected_action()` before calling
    /// `gtk_drag_finish()`, e.g. to implement `GDK_ACTION_ASK` as
    /// shown in the following example:
    /// (C Language Example):
    /// ```C
    /// void
    /// drag_data_received (GtkWidget          *widget,
    ///                     GdkDragContext     *context,
    ///                     gint                x,
    ///                     gint                y,
    ///                     GtkSelectionData   *data,
    ///                     guint               info,
    ///                     guint               time)
    /// {
    ///   if ((data->length >= 0) && (data->format == 8))
    ///     {
    ///       GdkDragAction action;
    /// 
    ///       // handle data here
    /// 
    ///       action = gdk_drag_context_get_selected_action (context);
    ///       if (action == GDK_ACTION_ASK)
    ///         {
    ///           GtkWidget *dialog;
    ///           gint response;
    /// 
    ///           dialog = gtk_message_dialog_new (NULL,
    ///                                            GTK_DIALOG_MODAL |
    ///                                            GTK_DIALOG_DESTROY_WITH_PARENT,
    ///                                            GTK_MESSAGE_INFO,
    ///                                            GTK_BUTTONS_YES_NO,
    ///                                            "Move the data ?\n");
    ///           response = gtk_dialog_run (GTK_DIALOG (dialog));
    ///           gtk_widget_destroy (dialog);
    /// 
    ///           if (response == GTK_RESPONSE_YES)
    ///             action = GDK_ACTION_MOVE;
    ///           else
    ///             action = GDK_ACTION_COPY;
    ///          }
    /// 
    ///       gtk_drag_finish (context, TRUE, action == GDK_ACTION_MOVE, time);
    ///     }
    ///   else
    ///     gtk_drag_finish (context, FALSE, FALSE, time);
    ///  }
    /// ```
    /// 
    case dragDataReceived = "drag-data-received"
    /// The `drag`-drop signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the cursor position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// Otherwise, the handler returns `true`. In this case, the handler must
    /// ensure that `gtk_drag_finish()` is called to let the source know that
    /// the drop is done. The call to `gtk_drag_finish()` can be done either
    /// directly or in a `GtkWidget::drag`-data-received handler which gets
    /// triggered by calling `gtk_drag_get_data()` to receive the data for one
    /// or more of the supported targets.
    case dragDrop = "drag-drop"
    /// The `drag`-end signal is emitted on the drag source when a drag is
    /// finished.  A typical reason to connect to this signal is to undo
    /// things done in `GtkWidget::drag`-begin.
    case dragEnd = "drag-end"
    /// The `drag`-failed signal is emitted on the drag source when a drag has
    /// failed. The signal handler may hook custom code to handle a failed DnD
    /// operation based on the type of error, it returns `true` is the failure has
    /// been already handled (not showing the default "drag operation failed"
    /// animation), otherwise it returns `false`.
    case dragFailed = "drag-failed"
    /// The `drag`-leave signal is emitted on the drop site when the cursor
    /// leaves the widget. A typical reason to connect to this signal is to
    /// undo things done in `GtkWidget::drag`-motion, e.g. undo highlighting
    /// with `gtk_drag_unhighlight()`.
    /// 
    /// 
    /// Likewise, the `GtkWidget::drag`-leave signal is also emitted before the
    /// `drag`-drop signal, for instance to allow cleaning up of a preview item
    /// created in the `GtkWidget::drag`-motion signal handler.
    case dragLeave = "drag-leave"
    /// The `drag`-motion signal is emitted on the drop site when the user
    /// moves the cursor over the widget during a drag. The signal handler
    /// must determine whether the cursor position is in a drop zone or not.
    /// If it is not in a drop zone, it returns `false` and no further processing
    /// is necessary. Otherwise, the handler returns `true`. In this case, the
    /// handler is responsible for providing the necessary information for
    /// displaying feedback to the user, by calling `gdk_drag_status()`.
    /// 
    /// If the decision whether the drop will be accepted or rejected can't be
    /// made based solely on the cursor position and the type of the data, the
    /// handler may inspect the dragged data by calling `gtk_drag_get_data()` and
    /// defer the `gdk_drag_status()` call to the `GtkWidget::drag`-data-received
    /// handler. Note that you must pass `GTK_DEST_DEFAULT_DROP`,
    /// `GTK_DEST_DEFAULT_MOTION` or `GTK_DEST_DEFAULT_ALL` to `gtk_drag_dest_set()`
    /// when using the drag-motion signal that way.
    /// 
    /// Also note that there is no drag-enter signal. The drag receiver has to
    /// keep track of whether he has received any drag-motion signals since the
    /// last `GtkWidget::drag`-leave and if not, treat the drag-motion signal as
    /// an "enter" signal. Upon an "enter", the handler will typically highlight
    /// the drop site with `gtk_drag_highlight()`.
    /// (C Language Example):
    /// ```C
    /// static void
    /// drag_motion (GtkWidget      *widget,
    ///              GdkDragContext *context,
    ///              gint            x,
    ///              gint            y,
    ///              guint           time)
    /// {
    ///   GdkAtom target;
    /// 
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (!private_data->drag_highlight)
    ///    {
    ///      private_data->drag_highlight = 1;
    ///      gtk_drag_highlight (widget);
    ///    }
    /// 
    ///   target = gtk_drag_dest_find_target (widget, context, NULL);
    ///   if (target == GDK_NONE)
    ///     gdk_drag_status (context, 0, time);
    ///   else
    ///    {
    ///      private_data->pending_status
    ///         = gdk_drag_context_get_suggested_action (context);
    ///      gtk_drag_get_data (widget, context, target, time);
    ///    }
    /// 
    ///   return TRUE;
    /// }
    /// 
    /// static void
    /// drag_data_received (GtkWidget        *widget,
    ///                     GdkDragContext   *context,
    ///                     gint              x,
    ///                     gint              y,
    ///                     GtkSelectionData *selection_data,
    ///                     guint             info,
    ///                     guint             time)
    /// {
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (private_data->suggested_action)
    ///    {
    ///      private_data->suggested_action = 0;
    /// 
    ///      // We are getting this data due to a request in drag_motion,
    ///      // rather than due to a request in drag_drop, so we are just
    ///      // supposed to call gdk_drag_status(), not actually paste in
    ///      // the data.
    /// 
    ///      str = gtk_selection_data_get_text (selection_data);
    ///      if (!data_is_acceptable (str))
    ///        gdk_drag_status (context, 0, time);
    ///      else
    ///        gdk_drag_status (context,
    ///                         private_data->suggested_action,
    ///                         time);
    ///    }
    ///   else
    ///    {
    ///      // accept the drop
    ///    }
    /// }
    /// ```
    /// 
    case dragMotion = "drag-motion"
    /// This signal is emitted when a widget is supposed to render itself.
    /// The `widget`'s top left corner must be painted at the origin of
    /// the passed in context and be sized to the values returned by
    /// `gtk_widget_get_allocated_width()` and
    /// `gtk_widget_get_allocated_height()`.
    /// 
    /// Signal handlers connected to this signal can modify the cairo
    /// context passed as `cr` in any way they like and don't need to
    /// restore it. The signal emission takes care of calling `cairo_save()`
    /// before and `cairo_restore()` after invoking the handler.
    /// 
    /// The signal handler will get a `cr` with a clip region already set to the
    /// widget's dirty region, i.e. to the area that needs repainting.  Complicated
    /// widgets that want to avoid redrawing themselves completely can get the full
    /// extents of the clip region with `gdk_cairo_get_clip_rectangle()`, or they can
    /// get a finer-grained representation of the dirty region with
    /// `cairo_copy_clip_rectangle_list()`.
    case draw = "draw"
    /// The `enter`-notify-event will be emitted when the pointer enters
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_ENTER_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case enterNotifyEvent = "enter-notify-event"
    /// The GTK+ main loop will emit three signals for each GDK event delivered
    /// to a widget: one generic `event` signal, another, more specific,
    /// signal that matches the type of event delivered (e.g.
    /// `GtkWidget::key`-press-event) and finally a generic
    /// `GtkWidget::event`-after signal.
    case event = "event"
    /// After the emission of the `GtkWidget::event` signal and (optionally)
    /// the second more specific signal, `event`-after will be emitted
    /// regardless of the previous two signals handlers return values.
    case eventAfter = "event-after"
    case focus = "focus"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The `focus`-in-event signal will be emitted when the keyboard focus
    /// enters the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusInEvent = "focus-in-event"
    /// The `focus`-out-event signal will be emitted when the keyboard focus
    /// leaves the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusOutEvent = "focus-out-event"
    /// Emitted when a pointer or keyboard grab on a window belonging
    /// to `widget` gets broken.
    /// 
    /// On X11, this happens when the grab window becomes unviewable
    /// (i.e. it or one of its ancestors is unmapped), or if the same
    /// application grabs the pointer or keyboard again.
    case grabBrokenEvent = "grab-broken-event"
    case grabFocus = "grab-focus"
    /// The `grab`-notify signal is emitted when a widget becomes
    /// shadowed by a GTK+ grab (not a pointer or keyboard grab) on
    /// another widget, or when it becomes unshadowed due to a grab
    /// being removed.
    /// 
    /// A widget is shadowed by a `gtk_grab_add()` when the topmost
    /// grab widget in the grab stack of its window group is not
    /// its ancestor.
    case grabNotify = "grab-notify"
    case groupChanged = "group-changed"
    /// The `hide` signal is emitted when `widget` is hidden, for example with
    /// `gtk_widget_hide()`.
    case hide = "hide"
    /// The `hierarchy`-changed signal is emitted when the
    /// anchored state of a widget changes. A widget is
    /// “anchored” when its toplevel
    /// ancestor is a `GtkWindow`. This signal is emitted when
    /// a widget changes from un-anchored to anchored or vice-versa.
    case hierarchyChanged = "hierarchy-changed"
    /// The `key`-press-event signal is emitted when a key is pressed. The signal
    /// emission will reoccur at the key-repeat rate when the key is kept pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyPressEvent = "key-press-event"
    /// The `key`-release-event signal is emitted when a key is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyReleaseEvent = "key-release-event"
    /// Gets emitted if keyboard navigation fails.
    /// See `gtk_widget_keynav_failed()` for details.
    case keynavFailed = "keynav-failed"
    /// The `leave`-notify-event will be emitted when the pointer leaves
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_LEAVE_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case leaveNotifyEvent = "leave-notify-event"
    /// The `map` signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// `gtk_widget_set_visible()`) and all its parents up to the toplevel widget
    /// are also visible. Once the map has occurred, `GtkWidget::map`-event will
    /// be emitted.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget::unmap`.
    case map = "map"
    /// The `map`-event signal will be emitted when the `widget`'s window is
    /// mapped. A window is mapped when it becomes visible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case mapEvent = "map-event"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// The `motion`-notify-event signal is emitted when the pointer moves
    /// over the widget's `GdkWindow`.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_POINTER_MOTION_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case motionNotifyEvent = "motion-notify-event"
    case moveFocus = "move-focus"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The `parent`-set signal is emitted when a new parent
    /// has been set on a widget.
    case parentSet = "parent-set"
    /// This signal gets emitted whenever a widget should pop up a context
    /// menu. This usually happens through the standard key binding mechanism;
    /// by pressing a certain key while a widget is focused, the user can cause
    /// the widget to pop up a menu.  For example, the `GtkEntry` widget creates
    /// a menu with clipboard commands. See the
    /// [Popup Menu Migration Checklist](#checklist-popup-menu)
    /// for an example of how to use this signal.
    case popupMenu = "popup-menu"
    /// The signal "property-change" is emitted when an object's property
    /// value changes. `arg1` contains an `AtkPropertyValues` with the name
    /// and the new value of the property whose value has changed. Note
    /// that, as with GObject notify, getting this signal does not
    /// guarantee that the value of the property has actually changed; it
    /// may also be emitted when the setter of the property is called to
    /// reinstate the previous value.
    /// 
    /// Toolkit implementor note: ATK implementors should use
    /// `g_object_notify()` to emit property-changed
    /// notifications. `AtkObject::property`-changed is needed by the
    /// implementation of `atk_add_global_event_listener()` because GObject
    /// notify doesn't support emission hooks.
    case propertyChange = "property-change"
    /// The `property`-notify-event signal will be emitted when a property on
    /// the `widget`'s window has been changed or deleted.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROPERTY_CHANGE_MASK` mask.
    case propertyNotifyEvent = "property-notify-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_IN_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityInEvent = "proximity-in-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_OUT_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityOutEvent = "proximity-out-event"
    /// Emitted when `GtkWidget:has`-tooltip is `true` and the hover timeout
    /// has expired with the cursor hovering "above" `widget`; or emitted when `widget` got
    /// focus in keyboard mode.
    /// 
    /// Using the given coordinates, the signal handler should determine
    /// whether a tooltip should be shown for `widget`. If this is the case
    /// `true` should be returned, `false` otherwise.  Note that if
    /// `keyboard_mode` is `true`, the values of `x` and `y` are undefined and
    /// should not be used.
    /// 
    /// The signal handler is free to manipulate `tooltip` with the therefore
    /// destined function calls.
    case queryTooltip = "query-tooltip"
    /// The `realize` signal is emitted when `widget` is associated with a
    /// `GdkWindow`, which means that `gtk_widget_realize()` has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    case remove = "remove"
    /// The `screen`-changed signal gets emitted when the
    /// screen of a widget has changed.
    case screenChanged = "screen-changed"
    /// The `scroll`-event signal is emitted when a button in the 4 to 7
    /// range is pressed. Wheel mice are usually configured to generate
    /// button press events for buttons 4 and 5 when the wheel is turned.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_SCROLL_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case scrollEvent = "scroll-event"
    case select = "select"
    /// The `selection`-clear-event signal will be emitted when the
    /// the `widget`'s window has lost ownership of a selection.
    case selectionClearEvent = "selection-clear-event"
    case selectionGet = "selection-get"
    case selectionNotifyEvent = "selection-notify-event"
    case selectionReceived = "selection-received"
    /// The `selection`-request-event signal will be emitted when
    /// another client requests ownership of the selection owned by
    /// the `widget`'s window.
    case selectionRequestEvent = "selection-request-event"
    case setFocusChild = "set-focus-child"
    /// The `show` signal is emitted when `widget` is shown, for example with
    /// `gtk_widget_show()`.
    case show = "show"
    case showHelp = "show-help"
    case sizeAllocate = "size-allocate"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The `state`-changed signal is emitted when the widget state changes.
    /// See `gtk_widget_get_state()`.
    ///
    /// **state-changed is deprecated:**
    /// Use #GtkWidget::state-flags-changed instead.
    case stateChanged = "state-changed"
    /// The `state`-flags-changed signal is emitted when the widget state
    /// changes, see `gtk_widget_get_state_flags()`.
    case stateFlagsChanged = "state-flags-changed"
    /// The `style`-set signal is emitted when a new style has been set
    /// on a widget. Note that style-modifying functions like
    /// `gtk_widget_modify_base()` also cause this signal to be emitted.
    /// 
    /// Note that this signal is emitted for changes to the deprecated
    /// `GtkStyle`. To track changes to the `GtkStyleContext` associated
    /// with a widget, use the `GtkWidget::style`-updated signal.
    ///
    /// **style-set is deprecated:**
    /// Use the #GtkWidget::style-updated signal
    case styleSet = "style-set"
    /// The `style`-updated signal is a convenience signal that is emitted when the
    /// `GtkStyleContext::changed` signal is emitted on the `widget`'s associated
    /// `GtkStyleContext` as returned by `gtk_widget_get_style_context()`.
    /// 
    /// Note that style-modifying functions like `gtk_widget_override_color()` also
    /// cause this signal to be emitted.
    case styleUpdated = "style-updated"
    case toggleSizeAllocate = "toggle-size-allocate"
    case toggleSizeRequest = "toggle-size-request"
    /// This signal is emitted when the state of the check box is changed.
    /// 
    /// A signal handler can use `gtk_check_menu_item_get_active()`
    /// to discover the new state.
    case toggled = "toggled"
    case touchEvent = "touch-event"
    /// The `unmap` signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The `unmap`-event signal will be emitted when the `widget`'s window is
    /// unmapped. A window is unmapped when it becomes invisible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case unmapEvent = "unmap-event"
    /// The `unrealize` signal is emitted when the `GdkWindow` associated with
    /// `widget` is destroyed, which means that `gtk_widget_unrealize()` has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
    /// The `visibility`-notify-event will be emitted when the `widget`'s
    /// window is obscured or unobscured.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_VISIBILITY_NOTIFY_MASK` mask.
    ///
    /// **visibility-notify-event is deprecated:**
    /// Modern composited windowing systems with pervasive
    ///     transparency make it impossible to track the visibility of a window
    ///     reliably, so this signal can not be guaranteed to provide useful
    ///     information.
    case visibilityNotifyEvent = "visibility-notify-event"
    /// The "visible-data-changed" signal is emitted when the visual
    /// appearance of the object changed.
    case visibleDataChanged = "visible-data-changed"
    /// The `window`-state-event will be emitted when the state of the
    /// toplevel window associated to the `widget` changes.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable
    /// this mask automatically for all new windows.
    case windowStateEvent = "window-state-event"
    /// Sets the accelerator path of the menu item, through which runtime
    /// changes of the menu item's accelerator caused by the user can be
    /// identified and saved to persistant storage.
    case notifyAccelPath = "notify::accel-path"
    case notifyAccessibleComponentLayer = "notify::accessible-component-layer"
    case notifyAccessibleComponentMdiZorder = "notify::accessible-component-mdi-zorder"
    case notifyAccessibleDescription = "notify::accessible-description"
    case notifyAccessibleHypertextNlinks = "notify::accessible-hypertext-nlinks"
    case notifyAccessibleName = "notify::accessible-name"
    case notifyAccessibleParent = "notify::accessible-parent"
    case notifyAccessibleRole = "notify::accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case notifyAccessibleTableCaption = "notify::accessible-table-caption"
    case notifyAccessibleTableCaptionObject = "notify::accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case notifyAccessibleTableColumnDescription = "notify::accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case notifyAccessibleTableColumnHeader = "notify::accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case notifyAccessibleTableRowDescription = "notify::accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case notifyAccessibleTableRowHeader = "notify::accessible-table-row-header"
    case notifyAccessibleTableSummary = "notify::accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case notifyAccessibleValue = "notify::accessible-value"
    case notifyActive = "notify::active"
    case notifyAppPaintable = "notify::app-paintable"
    case notifyBorderWidth = "notify::border-width"
    case notifyCanDefault = "notify::can-default"
    case notifyCanFocus = "notify::can-focus"
    case notifyChild = "notify::child"
    case notifyCompositeChild = "notify::composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case notifyDoubleBuffered = "notify::double-buffered"
    case notifyDrawAsRadio = "notify::draw-as-radio"
    case notifyEvents = "notify::events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case notifyExpand = "notify::expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// The radio menu item whose group this widget belongs to.
    case notifyGroup = "notify::group"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case notifyHalign = "notify::halign"
    case notifyHasDefault = "notify::has-default"
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case notifyHexpandSet = "notify::hexpand-set"
    case notifyInconsistent = "notify::inconsistent"
    case notifyIsFocus = "notify::is-focus"
    /// The text for the child label.
    case notifyLabel = "notify::label"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case notifyMargin = "notify::margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case notifyMarginLeft = "notify::margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case notifyMarginRight = "notify::margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginTop = "notify::margin-top"
    case notifyName = "notify::name"
    case notifyNoShowAll = "notify::no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case notifyOpacity = "notify::opacity"
    case notifyParent = "notify::parent"
    case notifyReceivesDefault = "notify::receives-default"
    case notifyResizeMode = "notify::resize-mode"
    /// Sets whether the menu item appears justified
    /// at the right side of a menu bar.
    case notifyRightJustified = "notify::right-justified"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case notifyStyle = "notify::style"
    /// The submenu attached to the menu item, or `nil` if it has none.
    case notifySubmenu = "notify::submenu"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    /// `true` if underlines in the text indicate mnemonics.
    case notifyUseUnderline = "notify::use-underline"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    case notifyWidthRequest = "notify::width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case notifyWindow = "notify::window"
}

public extension RadioMenuItemProtocol {
    /// Connect a `RadioMenuItemSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: RadioMenuItemSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(radio_menu_item_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension RadioMenuItemProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRadioMenuItem` instance.
    var radio_menu_item_ptr: UnsafeMutablePointer<GtkRadioMenuItem> { return ptr.assumingMemoryBound(to: GtkRadioMenuItem.self) }

    /// Returns the group to which the radio menu item belongs, as a `GList` of
    /// `GtkRadioMenuItem`. The list belongs to GTK+ and should not be freed.
    func getGroup() -> SListRef! {
        let rv = gtk_radio_menu_item_get_group(cast(radio_menu_item_ptr))
        return cast(rv.map { SListRef($0) })
    }

    /// Joins a `GtkRadioMenuItem` object to the group of another `GtkRadioMenuItem`
    /// object.
    /// 
    /// This function should be used by language bindings to avoid the memory
    /// manangement of the opaque `GSList` of `gtk_radio_menu_item_get_group()`
    /// and `gtk_radio_menu_item_set_group()`.
    /// 
    /// A common way to set up a group of `GtkRadioMenuItem` instances is:
    /// 
    /// ```
    ///   GtkRadioMenuItem *last_item = NULL;
    /// 
    ///   while ( ...more items to add... )
    ///     {
    ///       GtkRadioMenuItem *radio_item;
    /// 
    ///       radio_item = gtk_radio_menu_item_new (...);
    /// 
    ///       gtk_radio_menu_item_join_group (radio_item, last_item);
    ///       last_item = radio_item;
    ///     }
    /// ```
    /// 
    func joinGroup(groupSource group_source: RadioMenuItemProtocol) {
        gtk_radio_menu_item_join_group(cast(radio_menu_item_ptr), cast(group_source.ptr))
    
    }

    /// Sets the group of a radio menu item, or changes it.
    func set(group: SListProtocol) {
        gtk_radio_menu_item_set_group(cast(radio_menu_item_ptr), cast(group.ptr))
    
    }
    /// The radio menu item whose group this widget belongs to.
    var group: SListRef! {
        /// Returns the group to which the radio menu item belongs, as a `GList` of
        /// `GtkRadioMenuItem`. The list belongs to GTK+ and should not be freed.
        get {
            let rv = gtk_radio_menu_item_get_group(cast(radio_menu_item_ptr))
            return cast(rv.map { SListRef($0) })
        }
        /// Sets the group of a radio menu item, or changes it.
        nonmutating set {
            gtk_radio_menu_item_set_group(cast(radio_menu_item_ptr), cast(newValue.map { $0.ptr }))
        }
    }
}



// MARK: - RadioMenuItemAccessible Class

/// The `RadioMenuItemAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkRadioMenuItemAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RadioMenuItemAccessible`.
/// Alternatively, use `RadioMenuItemAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RadioMenuItemAccessibleProtocol: CheckMenuItemAccessibleProtocol {
    /// Untyped pointer to the underlying `GtkRadioMenuItemAccessible` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRadioMenuItemAccessible` instance.
    var radio_menu_item_accessible_ptr: UnsafeMutablePointer<GtkRadioMenuItemAccessible> { get }
}

/// The `RadioMenuItemAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkRadioMenuItemAccessible` instance.
/// It exposes methods that can operate on this data type through `RadioMenuItemAccessibleProtocol` conformance.
/// Use `RadioMenuItemAccessibleRef` only as an `unowned` reference to an existing `GtkRadioMenuItemAccessible` instance.
///

public struct RadioMenuItemAccessibleRef: RadioMenuItemAccessibleProtocol {
    /// Untyped pointer to the underlying `GtkRadioMenuItemAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `radio_menu_item_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RadioMenuItemAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRadioMenuItemAccessible>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RadioMenuItemAccessibleProtocol`
    init<T: RadioMenuItemAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessibleProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessibleProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessibleProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessibleProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessibleProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RadioMenuItemAccessible` type acts as a reference-counted owner of an underlying `GtkRadioMenuItemAccessible` instance.
/// It provides the methods that can operate on this data type through `RadioMenuItemAccessibleProtocol` conformance.
/// Use `RadioMenuItemAccessible` as a strong reference or owner of a `GtkRadioMenuItemAccessible` instance.
///

open class RadioMenuItemAccessible: CheckMenuItemAccessible, RadioMenuItemAccessibleProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RadioMenuItemAccessible` instance.
    public init(_ op: UnsafeMutablePointer<GtkRadioMenuItemAccessible>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `RadioMenuItemAccessibleProtocol`
    /// Will retain `GtkRadioMenuItemAccessible`.
    public convenience init<T: RadioMenuItemAccessibleProtocol>(_ other: T) {
        self.init(cast(other.radio_menu_item_accessible_ptr))
        g_object_ref(cast(radio_menu_item_accessible_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessibleProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRadioMenuItemAccessible.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessibleProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRadioMenuItemAccessible.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessibleProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRadioMenuItemAccessible.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessibleProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRadioMenuItemAccessible>(opaquePointer))
    }



}

public enum RadioMenuItemAccessiblePropertyName: String, PropertyNameProtocol {
    case accessibleComponentLayer = "accessible-component-layer"
    case accessibleComponentMdiZorder = "accessible-component-mdi-zorder"
    case accessibleDescription = "accessible-description"
    case accessibleHypertextNlinks = "accessible-hypertext-nlinks"
    case accessibleName = "accessible-name"
    case accessibleParent = "accessible-parent"
    case accessibleRole = "accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case accessibleTableCaption = "accessible-table-caption"
    case accessibleTableCaptionObject = "accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case accessibleTableColumnDescription = "accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case accessibleTableColumnHeader = "accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case accessibleTableRowDescription = "accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case accessibleTableRowHeader = "accessible-table-row-header"
    case accessibleTableSummary = "accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case accessibleValue = "accessible-value"
    case widget = "widget"
}

public extension RadioMenuItemAccessibleProtocol {
    /// Bind a `RadioMenuItemAccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: RadioMenuItemAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(radio_menu_item_accessible_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }
}

public enum RadioMenuItemAccessibleSignalName: String, SignalNameProtocol {
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The signal "property-change" is emitted when an object's property
    /// value changes. `arg1` contains an `AtkPropertyValues` with the name
    /// and the new value of the property whose value has changed. Note
    /// that, as with GObject notify, getting this signal does not
    /// guarantee that the value of the property has actually changed; it
    /// may also be emitted when the setter of the property is called to
    /// reinstate the previous value.
    /// 
    /// Toolkit implementor note: ATK implementors should use
    /// `g_object_notify()` to emit property-changed
    /// notifications. `AtkObject::property`-changed is needed by the
    /// implementation of `atk_add_global_event_listener()` because GObject
    /// notify doesn't support emission hooks.
    case propertyChange = "property-change"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The "visible-data-changed" signal is emitted when the visual
    /// appearance of the object changed.
    case visibleDataChanged = "visible-data-changed"
    case notifyAccessibleComponentLayer = "notify::accessible-component-layer"
    case notifyAccessibleComponentMdiZorder = "notify::accessible-component-mdi-zorder"
    case notifyAccessibleDescription = "notify::accessible-description"
    case notifyAccessibleHypertextNlinks = "notify::accessible-hypertext-nlinks"
    case notifyAccessibleName = "notify::accessible-name"
    case notifyAccessibleParent = "notify::accessible-parent"
    case notifyAccessibleRole = "notify::accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case notifyAccessibleTableCaption = "notify::accessible-table-caption"
    case notifyAccessibleTableCaptionObject = "notify::accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case notifyAccessibleTableColumnDescription = "notify::accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case notifyAccessibleTableColumnHeader = "notify::accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case notifyAccessibleTableRowDescription = "notify::accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case notifyAccessibleTableRowHeader = "notify::accessible-table-row-header"
    case notifyAccessibleTableSummary = "notify::accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case notifyAccessibleValue = "notify::accessible-value"
    case notifyWidget = "notify::widget"
}

public extension RadioMenuItemAccessibleProtocol {
    /// Connect a `RadioMenuItemAccessibleSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: RadioMenuItemAccessibleSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(radio_menu_item_accessible_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension RadioMenuItemAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRadioMenuItemAccessible` instance.
    var radio_menu_item_accessible_ptr: UnsafeMutablePointer<GtkRadioMenuItemAccessible> { return ptr.assumingMemoryBound(to: GtkRadioMenuItemAccessible.self) }

}



// MARK: - RadioToolButton Class

/// The `RadioToolButtonProtocol` protocol exposes the methods and properties of an underlying `GtkRadioToolButton` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RadioToolButton`.
/// Alternatively, use `RadioToolButtonRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GtkRadioToolButton` is a `GtkToolItem` that contains a radio button,
/// that is, a button that is part of a group of toggle buttons where only
/// one button can be active at a time.
/// 
/// Use `gtk_radio_tool_button_new()` to create a new GtkRadioToolButton. Use
/// `gtk_radio_tool_button_new_from_widget()` to create a new GtkRadioToolButton
/// that is part of the same group as an existing GtkRadioToolButton.
/// 
/// # CSS nodes
/// 
/// GtkRadioToolButton has a single CSS node with name toolbutton.
public protocol RadioToolButtonProtocol: ToggleToolButtonProtocol {
    /// Untyped pointer to the underlying `GtkRadioToolButton` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRadioToolButton` instance.
    var radio_tool_button_ptr: UnsafeMutablePointer<GtkRadioToolButton> { get }
}

/// The `RadioToolButtonRef` type acts as a lightweight Swift reference to an underlying `GtkRadioToolButton` instance.
/// It exposes methods that can operate on this data type through `RadioToolButtonProtocol` conformance.
/// Use `RadioToolButtonRef` only as an `unowned` reference to an existing `GtkRadioToolButton` instance.
///
/// A `GtkRadioToolButton` is a `GtkToolItem` that contains a radio button,
/// that is, a button that is part of a group of toggle buttons where only
/// one button can be active at a time.
/// 
/// Use `gtk_radio_tool_button_new()` to create a new GtkRadioToolButton. Use
/// `gtk_radio_tool_button_new_from_widget()` to create a new GtkRadioToolButton
/// that is part of the same group as an existing GtkRadioToolButton.
/// 
/// # CSS nodes
/// 
/// GtkRadioToolButton has a single CSS node with name toolbutton.
public struct RadioToolButtonRef: RadioToolButtonProtocol {
    /// Untyped pointer to the underlying `GtkRadioToolButton` instance.
    /// For type-safe access, use the generated, typed pointer `radio_tool_button_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RadioToolButtonRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRadioToolButton>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RadioToolButtonProtocol`
    init<T: RadioToolButtonProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioToolButtonProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioToolButtonProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioToolButtonProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioToolButtonProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioToolButtonProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkRadioToolButton`, adding it to `group`.
    init( group: SListProtocol) {
        let rv = gtk_radio_tool_button_new(cast(group.ptr))
        self.init(cast(rv))
    }

    /// Creates a new `GtkRadioToolButton`, adding it to `group`.
    /// The new `GtkRadioToolButton` will contain an icon and label from the
    /// stock item indicated by `stock_id`.
    ///
    /// **new_from_stock is deprecated:**
    /// Use gtk_radio_tool_button_new() instead.
    @available(*, deprecated) init(stock group: SListProtocol, stockID stock_id: UnsafePointer<gchar>) {
        let rv = gtk_radio_tool_button_new_from_stock(cast(group.ptr), stock_id)
        self.init(cast(rv))
    }
    /// Creates a new `GtkRadioToolButton`, adding it to `group`.
    /// The new `GtkRadioToolButton` will contain an icon and label from the
    /// stock item indicated by `stock_id`.
    ///
    /// **new_from_stock is deprecated:**
    /// Use gtk_radio_tool_button_new() instead.
    @available(*, deprecated) static func radioToolButtonNewFrom(stock group: SListProtocol, stockID stock_id: UnsafePointer<gchar>) -> RadioToolButtonRef! {
        let rv = gtk_radio_tool_button_new_from_stock(cast(group.ptr), stock_id)
        return rv.map { RadioToolButtonRef(cast($0)) }
    }
}

/// The `RadioToolButton` type acts as a reference-counted owner of an underlying `GtkRadioToolButton` instance.
/// It provides the methods that can operate on this data type through `RadioToolButtonProtocol` conformance.
/// Use `RadioToolButton` as a strong reference or owner of a `GtkRadioToolButton` instance.
///
/// A `GtkRadioToolButton` is a `GtkToolItem` that contains a radio button,
/// that is, a button that is part of a group of toggle buttons where only
/// one button can be active at a time.
/// 
/// Use `gtk_radio_tool_button_new()` to create a new GtkRadioToolButton. Use
/// `gtk_radio_tool_button_new_from_widget()` to create a new GtkRadioToolButton
/// that is part of the same group as an existing GtkRadioToolButton.
/// 
/// # CSS nodes
/// 
/// GtkRadioToolButton has a single CSS node with name toolbutton.
open class RadioToolButton: ToggleToolButton, RadioToolButtonProtocol {
    /// Convenience constructor for creating a RadioToolButton group.
    public convenience init() {
        let rv = gtk_radio_tool_button_new(nil)
        self.init(cast(rv))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RadioToolButton` instance.
    public init(_ op: UnsafeMutablePointer<GtkRadioToolButton>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `RadioToolButtonProtocol`
    /// Will retain `GtkRadioToolButton`.
    public convenience init<T: RadioToolButtonProtocol>(_ other: T) {
        self.init(cast(other.radio_tool_button_ptr))
        g_object_ref(cast(radio_tool_button_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioToolButtonProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRadioToolButton.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioToolButtonProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRadioToolButton.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioToolButtonProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRadioToolButton.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioToolButtonProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRadioToolButton>(opaquePointer))
    }

    /// Creates a new `GtkRadioToolButton`, adding it to `group`.
    public convenience init( group: SListProtocol) {
        let rv = gtk_radio_tool_button_new(cast(group.ptr))
        self.init(cast(rv))
    }

    /// Creates a new `GtkRadioToolButton`, adding it to `group`.
    /// The new `GtkRadioToolButton` will contain an icon and label from the
    /// stock item indicated by `stock_id`.
    ///
    /// **new_from_stock is deprecated:**
    /// Use gtk_radio_tool_button_new() instead.
    @available(*, deprecated) public convenience init(stock group: SListProtocol, stockID stock_id: UnsafePointer<gchar>) {
        let rv = gtk_radio_tool_button_new_from_stock(cast(group.ptr), stock_id)
        self.init(cast(rv))
    }

    /// Creates a new `GtkRadioToolButton`, adding it to `group`.
    /// The new `GtkRadioToolButton` will contain an icon and label from the
    /// stock item indicated by `stock_id`.
    ///
    /// **new_from_stock is deprecated:**
    /// Use gtk_radio_tool_button_new() instead.
    @available(*, deprecated) public static func radioToolButtonNewFrom(stock group: SListProtocol, stockID stock_id: UnsafePointer<gchar>) -> RadioToolButton! {
        let rv = gtk_radio_tool_button_new_from_stock(cast(group.ptr), stock_id)
        return rv.map { RadioToolButton(cast($0)) }
    }

}

public enum RadioToolButtonPropertyName: String, PropertyNameProtocol {
    case accessibleComponentLayer = "accessible-component-layer"
    case accessibleComponentMdiZorder = "accessible-component-mdi-zorder"
    case accessibleDescription = "accessible-description"
    case accessibleHypertextNlinks = "accessible-hypertext-nlinks"
    case accessibleName = "accessible-name"
    case accessibleParent = "accessible-parent"
    case accessibleRole = "accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case accessibleTableCaption = "accessible-table-caption"
    case accessibleTableCaptionObject = "accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case accessibleTableColumnDescription = "accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case accessibleTableColumnHeader = "accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case accessibleTableRowDescription = "accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case accessibleTableRowHeader = "accessible-table-row-header"
    case accessibleTableSummary = "accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case accessibleValue = "accessible-value"
    /// If the toggle tool button should be pressed in.
    case active = "active"
    case appPaintable = "app-paintable"
    case borderWidth = "border-width"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case child = "child"
    case compositeChild = "composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
    case events = "events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case expand = "expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case focusOnClick = "focus-on-click"
    /// Sets a new group for a radio tool button.
    case group = "group"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    /// The name of the themed icon displayed on the item.
    /// This property only has an effect if not overridden by
    /// `GtkToolButton:label`-widget, `GtkToolButton:icon`-widget or
    /// `GtkToolButton:stock`-id properties.
    case iconName = "icon-name"
    case iconWidget = "icon-widget"
    case isFocus = "is-focus"
    case isImportant = "is-important"
    case label = "label"
    case labelWidget = "label-widget"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginTop = "margin-top"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case receivesDefault = "receives-default"
    case resizeMode = "resize-mode"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"

    ///
    /// **stock-id is deprecated:**
    /// Use #GtkToolButton:icon-name instead.
    case stockID = "stock-id"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    case useUnderline = "use-underline"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case visibleHorizontal = "visible-horizontal"
    case visibleVertical = "visible-vertical"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
}

public extension RadioToolButtonProtocol {
    /// Bind a `RadioToolButtonPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: RadioToolButtonPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(radio_tool_button_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }
}

public enum RadioToolButtonSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    case add = "add"
    /// The `button`-press-event signal will be emitted when a button
    /// (typically from a mouse) is pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonPressEvent = "button-press-event"
    /// The `button`-release-event signal will be emitted when a button
    /// (typically from a mouse) is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonReleaseEvent = "button-release-event"
    /// Determines whether an accelerator that activates the signal
    /// identified by `signal_id` can currently be activated.
    /// This signal is present to allow applications and derived
    /// widgets to override the default `GtkWidget` handling
    /// for determining whether an accelerator can be activated.
    case canActivateAccel = "can-activate-accel"
    case checkResize = "check-resize"
    /// The `child`-notify signal is emitted for each
    /// [child property](#child-properties)  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// This signal is emitted when the tool button is clicked with the mouse
    /// or activated with the keyboard.
    case clicked = "clicked"
    /// The `composited`-changed signal is emitted when the composited
    /// status of `widgets` screen changes.
    /// See `gdk_screen_is_composited()`.
    ///
    /// **composited-changed is deprecated:**
    /// Use GdkScreen::composited-changed instead.
    case compositedChanged = "composited-changed"
    /// The `configure`-event signal will be emitted when the size, position or
    /// stacking of the `widget`'s window has changed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case configureEvent = "configure-event"
    /// This signal is emitted when the toolbar needs information from `tool_item`
    /// about whether the item should appear in the toolbar overflow menu. In
    /// response the tool item should either
    /// 
    /// - call `gtk_tool_item_set_proxy_menu_item()` with a `nil`
    ///   pointer and return `true` to indicate that the item should not appear
    ///   in the overflow menu
    /// 
    /// - call `gtk_tool_item_set_proxy_menu_item()` with a new menu
    ///   item and return `true`, or
    /// 
    /// - return `false` to indicate that the signal was not handled by the item.
    ///   This means that the item will not appear in the overflow menu unless
    ///   a later handler installs a menu item.
    /// 
    /// The toolbar may cache the result of this signal. When the tool item changes
    /// how it will respond to this signal it must call `gtk_tool_item_rebuild_menu()`
    /// to invalidate the cache and ensure that the toolbar rebuilds its overflow
    /// menu.
    case createMenuProxy = "create-menu-proxy"
    /// Emitted when a redirected window belonging to `widget` gets drawn into.
    /// The region/area members of the event shows what area of the redirected
    /// drawable was drawn into.
    case damageEvent = "damage-event"
    /// The `delete`-event signal is emitted if a user requests that
    /// a toplevel window is closed. The default handler for this signal
    /// destroys the window. Connecting `gtk_widget_hide_on_delete()` to
    /// this signal will cause the window to be hidden instead, so that
    /// it can later be shown again without reconstructing it.
    case deleteEvent = "delete-event"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The `destroy`-event signal is emitted when a `GdkWindow` is destroyed.
    /// You rarely get this signal, because most widgets disconnect themselves
    /// from their window before they destroy it, so no widget owns the
    /// window at destroy time.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case destroyEvent = "destroy-event"
    /// The `direction`-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The `drag`-begin signal is emitted on the drag source when a drag is
    /// started. A typical reason to connect to this signal is to set up a
    /// custom drag icon with e.g. `gtk_drag_source_set_icon_pixbuf()`.
    /// 
    /// Note that some widgets set up a drag icon in the default handler of
    /// this signal, so you may have to use `g_signal_connect_after()` to
    /// override what the default handler did.
    case dragBegin = "drag-begin"
    /// The `drag`-data-delete signal is emitted on the drag source when a drag
    /// with the action `GDK_ACTION_MOVE` is successfully completed. The signal
    /// handler is responsible for deleting the data that has been dropped. What
    /// "delete" means depends on the context of the drag operation.
    case dragDataDelete = "drag-data-delete"
    /// The `drag`-data-get signal is emitted on the drag source when the drop
    /// site requests the data which is dragged. It is the responsibility of
    /// the signal handler to fill `data` with the data in the format which
    /// is indicated by `info`. See `gtk_selection_data_set()` and
    /// `gtk_selection_data_set_text()`.
    case dragDataGet = "drag-data-get"
    /// The `drag`-data-received signal is emitted on the drop site when the
    /// dragged data has been received. If the data was received in order to
    /// determine whether the drop will be accepted, the handler is expected
    /// to call `gdk_drag_status()` and not finish the drag.
    /// If the data was received in response to a `GtkWidget::drag`-drop signal
    /// (and this is the last target to be received), the handler for this
    /// signal is expected to process the received data and then call
    /// `gtk_drag_finish()`, setting the `success` parameter depending on
    /// whether the data was processed successfully.
    /// 
    /// Applications must create some means to determine why the signal was emitted
    /// and therefore whether to call `gdk_drag_status()` or `gtk_drag_finish()`.
    /// 
    /// The handler may inspect the selected action with
    /// `gdk_drag_context_get_selected_action()` before calling
    /// `gtk_drag_finish()`, e.g. to implement `GDK_ACTION_ASK` as
    /// shown in the following example:
    /// (C Language Example):
    /// ```C
    /// void
    /// drag_data_received (GtkWidget          *widget,
    ///                     GdkDragContext     *context,
    ///                     gint                x,
    ///                     gint                y,
    ///                     GtkSelectionData   *data,
    ///                     guint               info,
    ///                     guint               time)
    /// {
    ///   if ((data->length >= 0) && (data->format == 8))
    ///     {
    ///       GdkDragAction action;
    /// 
    ///       // handle data here
    /// 
    ///       action = gdk_drag_context_get_selected_action (context);
    ///       if (action == GDK_ACTION_ASK)
    ///         {
    ///           GtkWidget *dialog;
    ///           gint response;
    /// 
    ///           dialog = gtk_message_dialog_new (NULL,
    ///                                            GTK_DIALOG_MODAL |
    ///                                            GTK_DIALOG_DESTROY_WITH_PARENT,
    ///                                            GTK_MESSAGE_INFO,
    ///                                            GTK_BUTTONS_YES_NO,
    ///                                            "Move the data ?\n");
    ///           response = gtk_dialog_run (GTK_DIALOG (dialog));
    ///           gtk_widget_destroy (dialog);
    /// 
    ///           if (response == GTK_RESPONSE_YES)
    ///             action = GDK_ACTION_MOVE;
    ///           else
    ///             action = GDK_ACTION_COPY;
    ///          }
    /// 
    ///       gtk_drag_finish (context, TRUE, action == GDK_ACTION_MOVE, time);
    ///     }
    ///   else
    ///     gtk_drag_finish (context, FALSE, FALSE, time);
    ///  }
    /// ```
    /// 
    case dragDataReceived = "drag-data-received"
    /// The `drag`-drop signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the cursor position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// Otherwise, the handler returns `true`. In this case, the handler must
    /// ensure that `gtk_drag_finish()` is called to let the source know that
    /// the drop is done. The call to `gtk_drag_finish()` can be done either
    /// directly or in a `GtkWidget::drag`-data-received handler which gets
    /// triggered by calling `gtk_drag_get_data()` to receive the data for one
    /// or more of the supported targets.
    case dragDrop = "drag-drop"
    /// The `drag`-end signal is emitted on the drag source when a drag is
    /// finished.  A typical reason to connect to this signal is to undo
    /// things done in `GtkWidget::drag`-begin.
    case dragEnd = "drag-end"
    /// The `drag`-failed signal is emitted on the drag source when a drag has
    /// failed. The signal handler may hook custom code to handle a failed DnD
    /// operation based on the type of error, it returns `true` is the failure has
    /// been already handled (not showing the default "drag operation failed"
    /// animation), otherwise it returns `false`.
    case dragFailed = "drag-failed"
    /// The `drag`-leave signal is emitted on the drop site when the cursor
    /// leaves the widget. A typical reason to connect to this signal is to
    /// undo things done in `GtkWidget::drag`-motion, e.g. undo highlighting
    /// with `gtk_drag_unhighlight()`.
    /// 
    /// 
    /// Likewise, the `GtkWidget::drag`-leave signal is also emitted before the
    /// `drag`-drop signal, for instance to allow cleaning up of a preview item
    /// created in the `GtkWidget::drag`-motion signal handler.
    case dragLeave = "drag-leave"
    /// The `drag`-motion signal is emitted on the drop site when the user
    /// moves the cursor over the widget during a drag. The signal handler
    /// must determine whether the cursor position is in a drop zone or not.
    /// If it is not in a drop zone, it returns `false` and no further processing
    /// is necessary. Otherwise, the handler returns `true`. In this case, the
    /// handler is responsible for providing the necessary information for
    /// displaying feedback to the user, by calling `gdk_drag_status()`.
    /// 
    /// If the decision whether the drop will be accepted or rejected can't be
    /// made based solely on the cursor position and the type of the data, the
    /// handler may inspect the dragged data by calling `gtk_drag_get_data()` and
    /// defer the `gdk_drag_status()` call to the `GtkWidget::drag`-data-received
    /// handler. Note that you must pass `GTK_DEST_DEFAULT_DROP`,
    /// `GTK_DEST_DEFAULT_MOTION` or `GTK_DEST_DEFAULT_ALL` to `gtk_drag_dest_set()`
    /// when using the drag-motion signal that way.
    /// 
    /// Also note that there is no drag-enter signal. The drag receiver has to
    /// keep track of whether he has received any drag-motion signals since the
    /// last `GtkWidget::drag`-leave and if not, treat the drag-motion signal as
    /// an "enter" signal. Upon an "enter", the handler will typically highlight
    /// the drop site with `gtk_drag_highlight()`.
    /// (C Language Example):
    /// ```C
    /// static void
    /// drag_motion (GtkWidget      *widget,
    ///              GdkDragContext *context,
    ///              gint            x,
    ///              gint            y,
    ///              guint           time)
    /// {
    ///   GdkAtom target;
    /// 
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (!private_data->drag_highlight)
    ///    {
    ///      private_data->drag_highlight = 1;
    ///      gtk_drag_highlight (widget);
    ///    }
    /// 
    ///   target = gtk_drag_dest_find_target (widget, context, NULL);
    ///   if (target == GDK_NONE)
    ///     gdk_drag_status (context, 0, time);
    ///   else
    ///    {
    ///      private_data->pending_status
    ///         = gdk_drag_context_get_suggested_action (context);
    ///      gtk_drag_get_data (widget, context, target, time);
    ///    }
    /// 
    ///   return TRUE;
    /// }
    /// 
    /// static void
    /// drag_data_received (GtkWidget        *widget,
    ///                     GdkDragContext   *context,
    ///                     gint              x,
    ///                     gint              y,
    ///                     GtkSelectionData *selection_data,
    ///                     guint             info,
    ///                     guint             time)
    /// {
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (private_data->suggested_action)
    ///    {
    ///      private_data->suggested_action = 0;
    /// 
    ///      // We are getting this data due to a request in drag_motion,
    ///      // rather than due to a request in drag_drop, so we are just
    ///      // supposed to call gdk_drag_status(), not actually paste in
    ///      // the data.
    /// 
    ///      str = gtk_selection_data_get_text (selection_data);
    ///      if (!data_is_acceptable (str))
    ///        gdk_drag_status (context, 0, time);
    ///      else
    ///        gdk_drag_status (context,
    ///                         private_data->suggested_action,
    ///                         time);
    ///    }
    ///   else
    ///    {
    ///      // accept the drop
    ///    }
    /// }
    /// ```
    /// 
    case dragMotion = "drag-motion"
    /// This signal is emitted when a widget is supposed to render itself.
    /// The `widget`'s top left corner must be painted at the origin of
    /// the passed in context and be sized to the values returned by
    /// `gtk_widget_get_allocated_width()` and
    /// `gtk_widget_get_allocated_height()`.
    /// 
    /// Signal handlers connected to this signal can modify the cairo
    /// context passed as `cr` in any way they like and don't need to
    /// restore it. The signal emission takes care of calling `cairo_save()`
    /// before and `cairo_restore()` after invoking the handler.
    /// 
    /// The signal handler will get a `cr` with a clip region already set to the
    /// widget's dirty region, i.e. to the area that needs repainting.  Complicated
    /// widgets that want to avoid redrawing themselves completely can get the full
    /// extents of the clip region with `gdk_cairo_get_clip_rectangle()`, or they can
    /// get a finer-grained representation of the dirty region with
    /// `cairo_copy_clip_rectangle_list()`.
    case draw = "draw"
    /// The `enter`-notify-event will be emitted when the pointer enters
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_ENTER_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case enterNotifyEvent = "enter-notify-event"
    /// The GTK+ main loop will emit three signals for each GDK event delivered
    /// to a widget: one generic `event` signal, another, more specific,
    /// signal that matches the type of event delivered (e.g.
    /// `GtkWidget::key`-press-event) and finally a generic
    /// `GtkWidget::event`-after signal.
    case event = "event"
    /// After the emission of the `GtkWidget::event` signal and (optionally)
    /// the second more specific signal, `event`-after will be emitted
    /// regardless of the previous two signals handlers return values.
    case eventAfter = "event-after"
    case focus = "focus"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The `focus`-in-event signal will be emitted when the keyboard focus
    /// enters the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusInEvent = "focus-in-event"
    /// The `focus`-out-event signal will be emitted when the keyboard focus
    /// leaves the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusOutEvent = "focus-out-event"
    /// Emitted when a pointer or keyboard grab on a window belonging
    /// to `widget` gets broken.
    /// 
    /// On X11, this happens when the grab window becomes unviewable
    /// (i.e. it or one of its ancestors is unmapped), or if the same
    /// application grabs the pointer or keyboard again.
    case grabBrokenEvent = "grab-broken-event"
    case grabFocus = "grab-focus"
    /// The `grab`-notify signal is emitted when a widget becomes
    /// shadowed by a GTK+ grab (not a pointer or keyboard grab) on
    /// another widget, or when it becomes unshadowed due to a grab
    /// being removed.
    /// 
    /// A widget is shadowed by a `gtk_grab_add()` when the topmost
    /// grab widget in the grab stack of its window group is not
    /// its ancestor.
    case grabNotify = "grab-notify"
    /// The `hide` signal is emitted when `widget` is hidden, for example with
    /// `gtk_widget_hide()`.
    case hide = "hide"
    /// The `hierarchy`-changed signal is emitted when the
    /// anchored state of a widget changes. A widget is
    /// “anchored” when its toplevel
    /// ancestor is a `GtkWindow`. This signal is emitted when
    /// a widget changes from un-anchored to anchored or vice-versa.
    case hierarchyChanged = "hierarchy-changed"
    /// The `key`-press-event signal is emitted when a key is pressed. The signal
    /// emission will reoccur at the key-repeat rate when the key is kept pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyPressEvent = "key-press-event"
    /// The `key`-release-event signal is emitted when a key is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyReleaseEvent = "key-release-event"
    /// Gets emitted if keyboard navigation fails.
    /// See `gtk_widget_keynav_failed()` for details.
    case keynavFailed = "keynav-failed"
    /// The `leave`-notify-event will be emitted when the pointer leaves
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_LEAVE_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case leaveNotifyEvent = "leave-notify-event"
    /// The `map` signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// `gtk_widget_set_visible()`) and all its parents up to the toplevel widget
    /// are also visible. Once the map has occurred, `GtkWidget::map`-event will
    /// be emitted.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget::unmap`.
    case map = "map"
    /// The `map`-event signal will be emitted when the `widget`'s window is
    /// mapped. A window is mapped when it becomes visible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case mapEvent = "map-event"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// The `motion`-notify-event signal is emitted when the pointer moves
    /// over the widget's `GdkWindow`.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_POINTER_MOTION_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case motionNotifyEvent = "motion-notify-event"
    case moveFocus = "move-focus"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The `parent`-set signal is emitted when a new parent
    /// has been set on a widget.
    case parentSet = "parent-set"
    /// This signal gets emitted whenever a widget should pop up a context
    /// menu. This usually happens through the standard key binding mechanism;
    /// by pressing a certain key while a widget is focused, the user can cause
    /// the widget to pop up a menu.  For example, the `GtkEntry` widget creates
    /// a menu with clipboard commands. See the
    /// [Popup Menu Migration Checklist](#checklist-popup-menu)
    /// for an example of how to use this signal.
    case popupMenu = "popup-menu"
    /// The signal "property-change" is emitted when an object's property
    /// value changes. `arg1` contains an `AtkPropertyValues` with the name
    /// and the new value of the property whose value has changed. Note
    /// that, as with GObject notify, getting this signal does not
    /// guarantee that the value of the property has actually changed; it
    /// may also be emitted when the setter of the property is called to
    /// reinstate the previous value.
    /// 
    /// Toolkit implementor note: ATK implementors should use
    /// `g_object_notify()` to emit property-changed
    /// notifications. `AtkObject::property`-changed is needed by the
    /// implementation of `atk_add_global_event_listener()` because GObject
    /// notify doesn't support emission hooks.
    case propertyChange = "property-change"
    /// The `property`-notify-event signal will be emitted when a property on
    /// the `widget`'s window has been changed or deleted.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROPERTY_CHANGE_MASK` mask.
    case propertyNotifyEvent = "property-notify-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_IN_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityInEvent = "proximity-in-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_OUT_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityOutEvent = "proximity-out-event"
    /// Emitted when `GtkWidget:has`-tooltip is `true` and the hover timeout
    /// has expired with the cursor hovering "above" `widget`; or emitted when `widget` got
    /// focus in keyboard mode.
    /// 
    /// Using the given coordinates, the signal handler should determine
    /// whether a tooltip should be shown for `widget`. If this is the case
    /// `true` should be returned, `false` otherwise.  Note that if
    /// `keyboard_mode` is `true`, the values of `x` and `y` are undefined and
    /// should not be used.
    /// 
    /// The signal handler is free to manipulate `tooltip` with the therefore
    /// destined function calls.
    case queryTooltip = "query-tooltip"
    /// The `realize` signal is emitted when `widget` is associated with a
    /// `GdkWindow`, which means that `gtk_widget_realize()` has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    case remove = "remove"
    /// The `screen`-changed signal gets emitted when the
    /// screen of a widget has changed.
    case screenChanged = "screen-changed"
    /// The `scroll`-event signal is emitted when a button in the 4 to 7
    /// range is pressed. Wheel mice are usually configured to generate
    /// button press events for buttons 4 and 5 when the wheel is turned.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_SCROLL_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case scrollEvent = "scroll-event"
    /// The `selection`-clear-event signal will be emitted when the
    /// the `widget`'s window has lost ownership of a selection.
    case selectionClearEvent = "selection-clear-event"
    case selectionGet = "selection-get"
    case selectionNotifyEvent = "selection-notify-event"
    case selectionReceived = "selection-received"
    /// The `selection`-request-event signal will be emitted when
    /// another client requests ownership of the selection owned by
    /// the `widget`'s window.
    case selectionRequestEvent = "selection-request-event"
    case setFocusChild = "set-focus-child"
    /// The `show` signal is emitted when `widget` is shown, for example with
    /// `gtk_widget_show()`.
    case show = "show"
    case showHelp = "show-help"
    case sizeAllocate = "size-allocate"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The `state`-changed signal is emitted when the widget state changes.
    /// See `gtk_widget_get_state()`.
    ///
    /// **state-changed is deprecated:**
    /// Use #GtkWidget::state-flags-changed instead.
    case stateChanged = "state-changed"
    /// The `state`-flags-changed signal is emitted when the widget state
    /// changes, see `gtk_widget_get_state_flags()`.
    case stateFlagsChanged = "state-flags-changed"
    /// The `style`-set signal is emitted when a new style has been set
    /// on a widget. Note that style-modifying functions like
    /// `gtk_widget_modify_base()` also cause this signal to be emitted.
    /// 
    /// Note that this signal is emitted for changes to the deprecated
    /// `GtkStyle`. To track changes to the `GtkStyleContext` associated
    /// with a widget, use the `GtkWidget::style`-updated signal.
    ///
    /// **style-set is deprecated:**
    /// Use the #GtkWidget::style-updated signal
    case styleSet = "style-set"
    /// The `style`-updated signal is a convenience signal that is emitted when the
    /// `GtkStyleContext::changed` signal is emitted on the `widget`'s associated
    /// `GtkStyleContext` as returned by `gtk_widget_get_style_context()`.
    /// 
    /// Note that style-modifying functions like `gtk_widget_override_color()` also
    /// cause this signal to be emitted.
    case styleUpdated = "style-updated"
    /// Emitted whenever the toggle tool button changes state.
    case toggled = "toggled"
    /// This signal is emitted when some property of the toolbar that the
    /// item is a child of changes. For custom subclasses of `GtkToolItem`,
    /// the default handler of this signal use the functions
    /// - `gtk_tool_shell_get_orientation()`
    /// - `gtk_tool_shell_get_style()`
    /// - `gtk_tool_shell_get_icon_size()`
    /// - `gtk_tool_shell_get_relief_style()`
    /// to find out what the toolbar should look like and change
    /// themselves accordingly.
    case toolbarReconfigured = "toolbar-reconfigured"
    case touchEvent = "touch-event"
    /// The `unmap` signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The `unmap`-event signal will be emitted when the `widget`'s window is
    /// unmapped. A window is unmapped when it becomes invisible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case unmapEvent = "unmap-event"
    /// The `unrealize` signal is emitted when the `GdkWindow` associated with
    /// `widget` is destroyed, which means that `gtk_widget_unrealize()` has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
    /// The `visibility`-notify-event will be emitted when the `widget`'s
    /// window is obscured or unobscured.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_VISIBILITY_NOTIFY_MASK` mask.
    ///
    /// **visibility-notify-event is deprecated:**
    /// Modern composited windowing systems with pervasive
    ///     transparency make it impossible to track the visibility of a window
    ///     reliably, so this signal can not be guaranteed to provide useful
    ///     information.
    case visibilityNotifyEvent = "visibility-notify-event"
    /// The "visible-data-changed" signal is emitted when the visual
    /// appearance of the object changed.
    case visibleDataChanged = "visible-data-changed"
    /// The `window`-state-event will be emitted when the state of the
    /// toplevel window associated to the `widget` changes.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable
    /// this mask automatically for all new windows.
    case windowStateEvent = "window-state-event"
    case notifyAccessibleComponentLayer = "notify::accessible-component-layer"
    case notifyAccessibleComponentMdiZorder = "notify::accessible-component-mdi-zorder"
    case notifyAccessibleDescription = "notify::accessible-description"
    case notifyAccessibleHypertextNlinks = "notify::accessible-hypertext-nlinks"
    case notifyAccessibleName = "notify::accessible-name"
    case notifyAccessibleParent = "notify::accessible-parent"
    case notifyAccessibleRole = "notify::accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case notifyAccessibleTableCaption = "notify::accessible-table-caption"
    case notifyAccessibleTableCaptionObject = "notify::accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case notifyAccessibleTableColumnDescription = "notify::accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case notifyAccessibleTableColumnHeader = "notify::accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case notifyAccessibleTableRowDescription = "notify::accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case notifyAccessibleTableRowHeader = "notify::accessible-table-row-header"
    case notifyAccessibleTableSummary = "notify::accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case notifyAccessibleValue = "notify::accessible-value"
    /// If the toggle tool button should be pressed in.
    case notifyActive = "notify::active"
    case notifyAppPaintable = "notify::app-paintable"
    case notifyBorderWidth = "notify::border-width"
    case notifyCanDefault = "notify::can-default"
    case notifyCanFocus = "notify::can-focus"
    case notifyChild = "notify::child"
    case notifyCompositeChild = "notify::composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case notifyDoubleBuffered = "notify::double-buffered"
    case notifyEvents = "notify::events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case notifyExpand = "notify::expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// Sets a new group for a radio tool button.
    case notifyGroup = "notify::group"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case notifyHalign = "notify::halign"
    case notifyHasDefault = "notify::has-default"
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case notifyHexpandSet = "notify::hexpand-set"
    /// The name of the themed icon displayed on the item.
    /// This property only has an effect if not overridden by
    /// `GtkToolButton:label`-widget, `GtkToolButton:icon`-widget or
    /// `GtkToolButton:stock`-id properties.
    case notifyIconName = "notify::icon-name"
    case notifyIconWidget = "notify::icon-widget"
    case notifyIsFocus = "notify::is-focus"
    case notifyIsImportant = "notify::is-important"
    case notifyLabel = "notify::label"
    case notifyLabelWidget = "notify::label-widget"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case notifyMargin = "notify::margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case notifyMarginLeft = "notify::margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case notifyMarginRight = "notify::margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginTop = "notify::margin-top"
    case notifyName = "notify::name"
    case notifyNoShowAll = "notify::no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case notifyOpacity = "notify::opacity"
    case notifyParent = "notify::parent"
    case notifyReceivesDefault = "notify::receives-default"
    case notifyResizeMode = "notify::resize-mode"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"

    ///
    /// **stock-id is deprecated:**
    /// Use #GtkToolButton:icon-name instead.
    case notifyStockID = "notify::stock-id"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case notifyStyle = "notify::style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    case notifyUseUnderline = "notify::use-underline"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    case notifyVisibleHorizontal = "notify::visible-horizontal"
    case notifyVisibleVertical = "notify::visible-vertical"
    case notifyWidthRequest = "notify::width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case notifyWindow = "notify::window"
}

public extension RadioToolButtonProtocol {
    /// Connect a `RadioToolButtonSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: RadioToolButtonSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(radio_tool_button_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension RadioToolButtonProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRadioToolButton` instance.
    var radio_tool_button_ptr: UnsafeMutablePointer<GtkRadioToolButton> { return ptr.assumingMemoryBound(to: GtkRadioToolButton.self) }

    /// Returns the radio button group `button` belongs to.
    func getGroup() -> SListRef! {
        let rv = gtk_radio_tool_button_get_group(cast(radio_tool_button_ptr))
        return cast(rv.map { SListRef($0) })
    }

    /// Adds `button` to `group`, removing it from the group it belonged to before.
    func set(group: SListProtocol) {
        gtk_radio_tool_button_set_group(cast(radio_tool_button_ptr), cast(group.ptr))
    
    }
    /// Sets a new group for a radio tool button.
    var group: SListRef! {
        /// Returns the radio button group `button` belongs to.
        get {
            let rv = gtk_radio_tool_button_get_group(cast(radio_tool_button_ptr))
            return cast(rv.map { SListRef($0) })
        }
        /// Adds `button` to `group`, removing it from the group it belonged to before.
        nonmutating set {
            gtk_radio_tool_button_set_group(cast(radio_tool_button_ptr), cast(newValue.map { $0.ptr }))
        }
    }
}



// MARK: - Range Class

/// The `RangeProtocol` protocol exposes the methods and properties of an underlying `GtkRange` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Range`.
/// Alternatively, use `RangeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkRange` is the common base class for widgets which visualize an
/// adjustment, e.g `GtkScale` or `GtkScrollbar`.
/// 
/// Apart from signals for monitoring the parameters of the adjustment,
/// `GtkRange` provides properties and methods for influencing the sensitivity
/// of the “steppers”. It also provides properties and methods for setting a
/// “fill level” on range widgets. See `gtk_range_set_fill_level()`.
public protocol RangeProtocol: WidgetProtocol, OrientableProtocol {
    /// Untyped pointer to the underlying `GtkRange` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRange` instance.
    var range_ptr: UnsafeMutablePointer<GtkRange> { get }
}

/// The `RangeRef` type acts as a lightweight Swift reference to an underlying `GtkRange` instance.
/// It exposes methods that can operate on this data type through `RangeProtocol` conformance.
/// Use `RangeRef` only as an `unowned` reference to an existing `GtkRange` instance.
///
/// `GtkRange` is the common base class for widgets which visualize an
/// adjustment, e.g `GtkScale` or `GtkScrollbar`.
/// 
/// Apart from signals for monitoring the parameters of the adjustment,
/// `GtkRange` provides properties and methods for influencing the sensitivity
/// of the “steppers”. It also provides properties and methods for setting a
/// “fill level” on range widgets. See `gtk_range_set_fill_level()`.
public struct RangeRef: RangeProtocol {
    /// Untyped pointer to the underlying `GtkRange` instance.
    /// For type-safe access, use the generated, typed pointer `range_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RangeRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRange>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RangeProtocol`
    init<T: RangeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Range` type acts as a reference-counted owner of an underlying `GtkRange` instance.
/// It provides the methods that can operate on this data type through `RangeProtocol` conformance.
/// Use `Range` as a strong reference or owner of a `GtkRange` instance.
///
/// `GtkRange` is the common base class for widgets which visualize an
/// adjustment, e.g `GtkScale` or `GtkScrollbar`.
/// 
/// Apart from signals for monitoring the parameters of the adjustment,
/// `GtkRange` provides properties and methods for influencing the sensitivity
/// of the “steppers”. It also provides properties and methods for setting a
/// “fill level” on range widgets. See `gtk_range_set_fill_level()`.
open class Range: Widget, RangeProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Range` instance.
    public init(_ op: UnsafeMutablePointer<GtkRange>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `RangeProtocol`
    /// Will retain `GtkRange`.
    public convenience init<T: RangeProtocol>(_ other: T) {
        self.init(cast(other.range_ptr))
        g_object_ref(cast(range_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRange.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRange.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRange.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRange>(opaquePointer))
    }



}

public enum RangePropertyName: String, PropertyNameProtocol {
    case accessibleComponentLayer = "accessible-component-layer"
    case accessibleComponentMdiZorder = "accessible-component-mdi-zorder"
    case accessibleDescription = "accessible-description"
    case accessibleHypertextNlinks = "accessible-hypertext-nlinks"
    case accessibleName = "accessible-name"
    case accessibleParent = "accessible-parent"
    case accessibleRole = "accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case accessibleTableCaption = "accessible-table-caption"
    case accessibleTableCaptionObject = "accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case accessibleTableColumnDescription = "accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case accessibleTableColumnHeader = "accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case accessibleTableRowDescription = "accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case accessibleTableRowHeader = "accessible-table-row-header"
    case accessibleTableSummary = "accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case accessibleValue = "accessible-value"
    case adjustment = "adjustment"
    case appPaintable = "app-paintable"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case compositeChild = "composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
    case events = "events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case expand = "expand"
    /// The fill level (e.g. prebuffering of a network stream).
    /// See `gtk_range_set_fill_level()`.
    case fillLevel = "fill-level"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case focusOnClick = "focus-on-click"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    case inverted = "inverted"
    case isFocus = "is-focus"
    case lowerStepperSensitivity = "lower-stepper-sensitivity"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginTop = "margin-top"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case receivesDefault = "receives-default"
    /// The restrict-to-fill-level property controls whether slider
    /// movement is restricted to an upper boundary set by the
    /// fill level. See `gtk_range_set_restrict_to_fill_level()`.
    case restrictToFillLevel = "restrict-to-fill-level"
    /// The number of digits to round the value to when
    /// it changes, or -1. See `GtkRange::change`-value.
    case roundDigits = "round-digits"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// The show-fill-level property controls whether fill level indicator
    /// graphics are displayed on the trough. See
    /// `gtk_range_set_show_fill_level()`.
    case showFillLevel = "show-fill-level"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    case upperStepperSensitivity = "upper-stepper-sensitivity"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
}

public extension RangeProtocol {
    /// Bind a `RangePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: RangePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(range_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }
}

public enum RangeSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    /// Emitted before clamping a value, to give the application a
    /// chance to adjust the bounds.
    case adjustBounds = "adjust-bounds"
    /// The `button`-press-event signal will be emitted when a button
    /// (typically from a mouse) is pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonPressEvent = "button-press-event"
    /// The `button`-release-event signal will be emitted when a button
    /// (typically from a mouse) is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonReleaseEvent = "button-release-event"
    /// Determines whether an accelerator that activates the signal
    /// identified by `signal_id` can currently be activated.
    /// This signal is present to allow applications and derived
    /// widgets to override the default `GtkWidget` handling
    /// for determining whether an accelerator can be activated.
    case canActivateAccel = "can-activate-accel"
    /// The `GtkRange::change`-value signal is emitted when a scroll action is
    /// performed on a range.  It allows an application to determine the
    /// type of scroll event that occurred and the resultant new value.
    /// The application can handle the event itself and return `true` to
    /// prevent further processing.  Or, by returning `false`, it can pass
    /// the event to other handlers until the default GTK+ handler is
    /// reached.
    /// 
    /// The value parameter is unrounded.  An application that overrides
    /// the GtkRange`change`-value signal is responsible for clamping the
    /// value to the desired number of decimal digits; the default GTK+
    /// handler clamps the value based on `GtkRange:round`-digits.
    case changeValue = "change-value"
    /// The `child`-notify signal is emitted for each
    /// [child property](#child-properties)  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// The `composited`-changed signal is emitted when the composited
    /// status of `widgets` screen changes.
    /// See `gdk_screen_is_composited()`.
    ///
    /// **composited-changed is deprecated:**
    /// Use GdkScreen::composited-changed instead.
    case compositedChanged = "composited-changed"
    /// The `configure`-event signal will be emitted when the size, position or
    /// stacking of the `widget`'s window has changed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case configureEvent = "configure-event"
    /// Emitted when a redirected window belonging to `widget` gets drawn into.
    /// The region/area members of the event shows what area of the redirected
    /// drawable was drawn into.
    case damageEvent = "damage-event"
    /// The `delete`-event signal is emitted if a user requests that
    /// a toplevel window is closed. The default handler for this signal
    /// destroys the window. Connecting `gtk_widget_hide_on_delete()` to
    /// this signal will cause the window to be hidden instead, so that
    /// it can later be shown again without reconstructing it.
    case deleteEvent = "delete-event"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The `destroy`-event signal is emitted when a `GdkWindow` is destroyed.
    /// You rarely get this signal, because most widgets disconnect themselves
    /// from their window before they destroy it, so no widget owns the
    /// window at destroy time.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case destroyEvent = "destroy-event"
    /// The `direction`-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The `drag`-begin signal is emitted on the drag source when a drag is
    /// started. A typical reason to connect to this signal is to set up a
    /// custom drag icon with e.g. `gtk_drag_source_set_icon_pixbuf()`.
    /// 
    /// Note that some widgets set up a drag icon in the default handler of
    /// this signal, so you may have to use `g_signal_connect_after()` to
    /// override what the default handler did.
    case dragBegin = "drag-begin"
    /// The `drag`-data-delete signal is emitted on the drag source when a drag
    /// with the action `GDK_ACTION_MOVE` is successfully completed. The signal
    /// handler is responsible for deleting the data that has been dropped. What
    /// "delete" means depends on the context of the drag operation.
    case dragDataDelete = "drag-data-delete"
    /// The `drag`-data-get signal is emitted on the drag source when the drop
    /// site requests the data which is dragged. It is the responsibility of
    /// the signal handler to fill `data` with the data in the format which
    /// is indicated by `info`. See `gtk_selection_data_set()` and
    /// `gtk_selection_data_set_text()`.
    case dragDataGet = "drag-data-get"
    /// The `drag`-data-received signal is emitted on the drop site when the
    /// dragged data has been received. If the data was received in order to
    /// determine whether the drop will be accepted, the handler is expected
    /// to call `gdk_drag_status()` and not finish the drag.
    /// If the data was received in response to a `GtkWidget::drag`-drop signal
    /// (and this is the last target to be received), the handler for this
    /// signal is expected to process the received data and then call
    /// `gtk_drag_finish()`, setting the `success` parameter depending on
    /// whether the data was processed successfully.
    /// 
    /// Applications must create some means to determine why the signal was emitted
    /// and therefore whether to call `gdk_drag_status()` or `gtk_drag_finish()`.
    /// 
    /// The handler may inspect the selected action with
    /// `gdk_drag_context_get_selected_action()` before calling
    /// `gtk_drag_finish()`, e.g. to implement `GDK_ACTION_ASK` as
    /// shown in the following example:
    /// (C Language Example):
    /// ```C
    /// void
    /// drag_data_received (GtkWidget          *widget,
    ///                     GdkDragContext     *context,
    ///                     gint                x,
    ///                     gint                y,
    ///                     GtkSelectionData   *data,
    ///                     guint               info,
    ///                     guint               time)
    /// {
    ///   if ((data->length >= 0) && (data->format == 8))
    ///     {
    ///       GdkDragAction action;
    /// 
    ///       // handle data here
    /// 
    ///       action = gdk_drag_context_get_selected_action (context);
    ///       if (action == GDK_ACTION_ASK)
    ///         {
    ///           GtkWidget *dialog;
    ///           gint response;
    /// 
    ///           dialog = gtk_message_dialog_new (NULL,
    ///                                            GTK_DIALOG_MODAL |
    ///                                            GTK_DIALOG_DESTROY_WITH_PARENT,
    ///                                            GTK_MESSAGE_INFO,
    ///                                            GTK_BUTTONS_YES_NO,
    ///                                            "Move the data ?\n");
    ///           response = gtk_dialog_run (GTK_DIALOG (dialog));
    ///           gtk_widget_destroy (dialog);
    /// 
    ///           if (response == GTK_RESPONSE_YES)
    ///             action = GDK_ACTION_MOVE;
    ///           else
    ///             action = GDK_ACTION_COPY;
    ///          }
    /// 
    ///       gtk_drag_finish (context, TRUE, action == GDK_ACTION_MOVE, time);
    ///     }
    ///   else
    ///     gtk_drag_finish (context, FALSE, FALSE, time);
    ///  }
    /// ```
    /// 
    case dragDataReceived = "drag-data-received"
    /// The `drag`-drop signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the cursor position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// Otherwise, the handler returns `true`. In this case, the handler must
    /// ensure that `gtk_drag_finish()` is called to let the source know that
    /// the drop is done. The call to `gtk_drag_finish()` can be done either
    /// directly or in a `GtkWidget::drag`-data-received handler which gets
    /// triggered by calling `gtk_drag_get_data()` to receive the data for one
    /// or more of the supported targets.
    case dragDrop = "drag-drop"
    /// The `drag`-end signal is emitted on the drag source when a drag is
    /// finished.  A typical reason to connect to this signal is to undo
    /// things done in `GtkWidget::drag`-begin.
    case dragEnd = "drag-end"
    /// The `drag`-failed signal is emitted on the drag source when a drag has
    /// failed. The signal handler may hook custom code to handle a failed DnD
    /// operation based on the type of error, it returns `true` is the failure has
    /// been already handled (not showing the default "drag operation failed"
    /// animation), otherwise it returns `false`.
    case dragFailed = "drag-failed"
    /// The `drag`-leave signal is emitted on the drop site when the cursor
    /// leaves the widget. A typical reason to connect to this signal is to
    /// undo things done in `GtkWidget::drag`-motion, e.g. undo highlighting
    /// with `gtk_drag_unhighlight()`.
    /// 
    /// 
    /// Likewise, the `GtkWidget::drag`-leave signal is also emitted before the
    /// `drag`-drop signal, for instance to allow cleaning up of a preview item
    /// created in the `GtkWidget::drag`-motion signal handler.
    case dragLeave = "drag-leave"
    /// The `drag`-motion signal is emitted on the drop site when the user
    /// moves the cursor over the widget during a drag. The signal handler
    /// must determine whether the cursor position is in a drop zone or not.
    /// If it is not in a drop zone, it returns `false` and no further processing
    /// is necessary. Otherwise, the handler returns `true`. In this case, the
    /// handler is responsible for providing the necessary information for
    /// displaying feedback to the user, by calling `gdk_drag_status()`.
    /// 
    /// If the decision whether the drop will be accepted or rejected can't be
    /// made based solely on the cursor position and the type of the data, the
    /// handler may inspect the dragged data by calling `gtk_drag_get_data()` and
    /// defer the `gdk_drag_status()` call to the `GtkWidget::drag`-data-received
    /// handler. Note that you must pass `GTK_DEST_DEFAULT_DROP`,
    /// `GTK_DEST_DEFAULT_MOTION` or `GTK_DEST_DEFAULT_ALL` to `gtk_drag_dest_set()`
    /// when using the drag-motion signal that way.
    /// 
    /// Also note that there is no drag-enter signal. The drag receiver has to
    /// keep track of whether he has received any drag-motion signals since the
    /// last `GtkWidget::drag`-leave and if not, treat the drag-motion signal as
    /// an "enter" signal. Upon an "enter", the handler will typically highlight
    /// the drop site with `gtk_drag_highlight()`.
    /// (C Language Example):
    /// ```C
    /// static void
    /// drag_motion (GtkWidget      *widget,
    ///              GdkDragContext *context,
    ///              gint            x,
    ///              gint            y,
    ///              guint           time)
    /// {
    ///   GdkAtom target;
    /// 
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (!private_data->drag_highlight)
    ///    {
    ///      private_data->drag_highlight = 1;
    ///      gtk_drag_highlight (widget);
    ///    }
    /// 
    ///   target = gtk_drag_dest_find_target (widget, context, NULL);
    ///   if (target == GDK_NONE)
    ///     gdk_drag_status (context, 0, time);
    ///   else
    ///    {
    ///      private_data->pending_status
    ///         = gdk_drag_context_get_suggested_action (context);
    ///      gtk_drag_get_data (widget, context, target, time);
    ///    }
    /// 
    ///   return TRUE;
    /// }
    /// 
    /// static void
    /// drag_data_received (GtkWidget        *widget,
    ///                     GdkDragContext   *context,
    ///                     gint              x,
    ///                     gint              y,
    ///                     GtkSelectionData *selection_data,
    ///                     guint             info,
    ///                     guint             time)
    /// {
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (private_data->suggested_action)
    ///    {
    ///      private_data->suggested_action = 0;
    /// 
    ///      // We are getting this data due to a request in drag_motion,
    ///      // rather than due to a request in drag_drop, so we are just
    ///      // supposed to call gdk_drag_status(), not actually paste in
    ///      // the data.
    /// 
    ///      str = gtk_selection_data_get_text (selection_data);
    ///      if (!data_is_acceptable (str))
    ///        gdk_drag_status (context, 0, time);
    ///      else
    ///        gdk_drag_status (context,
    ///                         private_data->suggested_action,
    ///                         time);
    ///    }
    ///   else
    ///    {
    ///      // accept the drop
    ///    }
    /// }
    /// ```
    /// 
    case dragMotion = "drag-motion"
    /// This signal is emitted when a widget is supposed to render itself.
    /// The `widget`'s top left corner must be painted at the origin of
    /// the passed in context and be sized to the values returned by
    /// `gtk_widget_get_allocated_width()` and
    /// `gtk_widget_get_allocated_height()`.
    /// 
    /// Signal handlers connected to this signal can modify the cairo
    /// context passed as `cr` in any way they like and don't need to
    /// restore it. The signal emission takes care of calling `cairo_save()`
    /// before and `cairo_restore()` after invoking the handler.
    /// 
    /// The signal handler will get a `cr` with a clip region already set to the
    /// widget's dirty region, i.e. to the area that needs repainting.  Complicated
    /// widgets that want to avoid redrawing themselves completely can get the full
    /// extents of the clip region with `gdk_cairo_get_clip_rectangle()`, or they can
    /// get a finer-grained representation of the dirty region with
    /// `cairo_copy_clip_rectangle_list()`.
    case draw = "draw"
    /// The `enter`-notify-event will be emitted when the pointer enters
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_ENTER_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case enterNotifyEvent = "enter-notify-event"
    /// The GTK+ main loop will emit three signals for each GDK event delivered
    /// to a widget: one generic `event` signal, another, more specific,
    /// signal that matches the type of event delivered (e.g.
    /// `GtkWidget::key`-press-event) and finally a generic
    /// `GtkWidget::event`-after signal.
    case event = "event"
    /// After the emission of the `GtkWidget::event` signal and (optionally)
    /// the second more specific signal, `event`-after will be emitted
    /// regardless of the previous two signals handlers return values.
    case eventAfter = "event-after"
    case focus = "focus"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The `focus`-in-event signal will be emitted when the keyboard focus
    /// enters the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusInEvent = "focus-in-event"
    /// The `focus`-out-event signal will be emitted when the keyboard focus
    /// leaves the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusOutEvent = "focus-out-event"
    /// Emitted when a pointer or keyboard grab on a window belonging
    /// to `widget` gets broken.
    /// 
    /// On X11, this happens when the grab window becomes unviewable
    /// (i.e. it or one of its ancestors is unmapped), or if the same
    /// application grabs the pointer or keyboard again.
    case grabBrokenEvent = "grab-broken-event"
    case grabFocus = "grab-focus"
    /// The `grab`-notify signal is emitted when a widget becomes
    /// shadowed by a GTK+ grab (not a pointer or keyboard grab) on
    /// another widget, or when it becomes unshadowed due to a grab
    /// being removed.
    /// 
    /// A widget is shadowed by a `gtk_grab_add()` when the topmost
    /// grab widget in the grab stack of its window group is not
    /// its ancestor.
    case grabNotify = "grab-notify"
    /// The `hide` signal is emitted when `widget` is hidden, for example with
    /// `gtk_widget_hide()`.
    case hide = "hide"
    /// The `hierarchy`-changed signal is emitted when the
    /// anchored state of a widget changes. A widget is
    /// “anchored” when its toplevel
    /// ancestor is a `GtkWindow`. This signal is emitted when
    /// a widget changes from un-anchored to anchored or vice-versa.
    case hierarchyChanged = "hierarchy-changed"
    /// The `key`-press-event signal is emitted when a key is pressed. The signal
    /// emission will reoccur at the key-repeat rate when the key is kept pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyPressEvent = "key-press-event"
    /// The `key`-release-event signal is emitted when a key is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyReleaseEvent = "key-release-event"
    /// Gets emitted if keyboard navigation fails.
    /// See `gtk_widget_keynav_failed()` for details.
    case keynavFailed = "keynav-failed"
    /// The `leave`-notify-event will be emitted when the pointer leaves
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_LEAVE_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case leaveNotifyEvent = "leave-notify-event"
    /// The `map` signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// `gtk_widget_set_visible()`) and all its parents up to the toplevel widget
    /// are also visible. Once the map has occurred, `GtkWidget::map`-event will
    /// be emitted.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget::unmap`.
    case map = "map"
    /// The `map`-event signal will be emitted when the `widget`'s window is
    /// mapped. A window is mapped when it becomes visible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case mapEvent = "map-event"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// The `motion`-notify-event signal is emitted when the pointer moves
    /// over the widget's `GdkWindow`.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_POINTER_MOTION_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case motionNotifyEvent = "motion-notify-event"
    case moveFocus = "move-focus"
    /// Virtual function that moves the slider. Used for keybindings.
    case moveSlider = "move-slider"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The `parent`-set signal is emitted when a new parent
    /// has been set on a widget.
    case parentSet = "parent-set"
    /// This signal gets emitted whenever a widget should pop up a context
    /// menu. This usually happens through the standard key binding mechanism;
    /// by pressing a certain key while a widget is focused, the user can cause
    /// the widget to pop up a menu.  For example, the `GtkEntry` widget creates
    /// a menu with clipboard commands. See the
    /// [Popup Menu Migration Checklist](#checklist-popup-menu)
    /// for an example of how to use this signal.
    case popupMenu = "popup-menu"
    /// The signal "property-change" is emitted when an object's property
    /// value changes. `arg1` contains an `AtkPropertyValues` with the name
    /// and the new value of the property whose value has changed. Note
    /// that, as with GObject notify, getting this signal does not
    /// guarantee that the value of the property has actually changed; it
    /// may also be emitted when the setter of the property is called to
    /// reinstate the previous value.
    /// 
    /// Toolkit implementor note: ATK implementors should use
    /// `g_object_notify()` to emit property-changed
    /// notifications. `AtkObject::property`-changed is needed by the
    /// implementation of `atk_add_global_event_listener()` because GObject
    /// notify doesn't support emission hooks.
    case propertyChange = "property-change"
    /// The `property`-notify-event signal will be emitted when a property on
    /// the `widget`'s window has been changed or deleted.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROPERTY_CHANGE_MASK` mask.
    case propertyNotifyEvent = "property-notify-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_IN_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityInEvent = "proximity-in-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_OUT_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityOutEvent = "proximity-out-event"
    /// Emitted when `GtkWidget:has`-tooltip is `true` and the hover timeout
    /// has expired with the cursor hovering "above" `widget`; or emitted when `widget` got
    /// focus in keyboard mode.
    /// 
    /// Using the given coordinates, the signal handler should determine
    /// whether a tooltip should be shown for `widget`. If this is the case
    /// `true` should be returned, `false` otherwise.  Note that if
    /// `keyboard_mode` is `true`, the values of `x` and `y` are undefined and
    /// should not be used.
    /// 
    /// The signal handler is free to manipulate `tooltip` with the therefore
    /// destined function calls.
    case queryTooltip = "query-tooltip"
    /// The `realize` signal is emitted when `widget` is associated with a
    /// `GdkWindow`, which means that `gtk_widget_realize()` has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// The `screen`-changed signal gets emitted when the
    /// screen of a widget has changed.
    case screenChanged = "screen-changed"
    /// The `scroll`-event signal is emitted when a button in the 4 to 7
    /// range is pressed. Wheel mice are usually configured to generate
    /// button press events for buttons 4 and 5 when the wheel is turned.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_SCROLL_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case scrollEvent = "scroll-event"
    /// The `selection`-clear-event signal will be emitted when the
    /// the `widget`'s window has lost ownership of a selection.
    case selectionClearEvent = "selection-clear-event"
    case selectionGet = "selection-get"
    case selectionNotifyEvent = "selection-notify-event"
    case selectionReceived = "selection-received"
    /// The `selection`-request-event signal will be emitted when
    /// another client requests ownership of the selection owned by
    /// the `widget`'s window.
    case selectionRequestEvent = "selection-request-event"
    /// The `show` signal is emitted when `widget` is shown, for example with
    /// `gtk_widget_show()`.
    case show = "show"
    case showHelp = "show-help"
    case sizeAllocate = "size-allocate"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The `state`-changed signal is emitted when the widget state changes.
    /// See `gtk_widget_get_state()`.
    ///
    /// **state-changed is deprecated:**
    /// Use #GtkWidget::state-flags-changed instead.
    case stateChanged = "state-changed"
    /// The `state`-flags-changed signal is emitted when the widget state
    /// changes, see `gtk_widget_get_state_flags()`.
    case stateFlagsChanged = "state-flags-changed"
    /// The `style`-set signal is emitted when a new style has been set
    /// on a widget. Note that style-modifying functions like
    /// `gtk_widget_modify_base()` also cause this signal to be emitted.
    /// 
    /// Note that this signal is emitted for changes to the deprecated
    /// `GtkStyle`. To track changes to the `GtkStyleContext` associated
    /// with a widget, use the `GtkWidget::style`-updated signal.
    ///
    /// **style-set is deprecated:**
    /// Use the #GtkWidget::style-updated signal
    case styleSet = "style-set"
    /// The `style`-updated signal is a convenience signal that is emitted when the
    /// `GtkStyleContext::changed` signal is emitted on the `widget`'s associated
    /// `GtkStyleContext` as returned by `gtk_widget_get_style_context()`.
    /// 
    /// Note that style-modifying functions like `gtk_widget_override_color()` also
    /// cause this signal to be emitted.
    case styleUpdated = "style-updated"
    case touchEvent = "touch-event"
    /// The `unmap` signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The `unmap`-event signal will be emitted when the `widget`'s window is
    /// unmapped. A window is unmapped when it becomes invisible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case unmapEvent = "unmap-event"
    /// The `unrealize` signal is emitted when the `GdkWindow` associated with
    /// `widget` is destroyed, which means that `gtk_widget_unrealize()` has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
    /// Emitted when the range value changes.
    case valueChanged = "value-changed"
    /// The `visibility`-notify-event will be emitted when the `widget`'s
    /// window is obscured or unobscured.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_VISIBILITY_NOTIFY_MASK` mask.
    ///
    /// **visibility-notify-event is deprecated:**
    /// Modern composited windowing systems with pervasive
    ///     transparency make it impossible to track the visibility of a window
    ///     reliably, so this signal can not be guaranteed to provide useful
    ///     information.
    case visibilityNotifyEvent = "visibility-notify-event"
    /// The "visible-data-changed" signal is emitted when the visual
    /// appearance of the object changed.
    case visibleDataChanged = "visible-data-changed"
    /// The `window`-state-event will be emitted when the state of the
    /// toplevel window associated to the `widget` changes.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable
    /// this mask automatically for all new windows.
    case windowStateEvent = "window-state-event"
    case notifyAccessibleComponentLayer = "notify::accessible-component-layer"
    case notifyAccessibleComponentMdiZorder = "notify::accessible-component-mdi-zorder"
    case notifyAccessibleDescription = "notify::accessible-description"
    case notifyAccessibleHypertextNlinks = "notify::accessible-hypertext-nlinks"
    case notifyAccessibleName = "notify::accessible-name"
    case notifyAccessibleParent = "notify::accessible-parent"
    case notifyAccessibleRole = "notify::accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case notifyAccessibleTableCaption = "notify::accessible-table-caption"
    case notifyAccessibleTableCaptionObject = "notify::accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case notifyAccessibleTableColumnDescription = "notify::accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case notifyAccessibleTableColumnHeader = "notify::accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case notifyAccessibleTableRowDescription = "notify::accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case notifyAccessibleTableRowHeader = "notify::accessible-table-row-header"
    case notifyAccessibleTableSummary = "notify::accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case notifyAccessibleValue = "notify::accessible-value"
    case notifyAdjustment = "notify::adjustment"
    case notifyAppPaintable = "notify::app-paintable"
    case notifyCanDefault = "notify::can-default"
    case notifyCanFocus = "notify::can-focus"
    case notifyCompositeChild = "notify::composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case notifyDoubleBuffered = "notify::double-buffered"
    case notifyEvents = "notify::events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case notifyExpand = "notify::expand"
    /// The fill level (e.g. prebuffering of a network stream).
    /// See `gtk_range_set_fill_level()`.
    case notifyFillLevel = "notify::fill-level"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case notifyHalign = "notify::halign"
    case notifyHasDefault = "notify::has-default"
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case notifyHexpandSet = "notify::hexpand-set"
    case notifyInverted = "notify::inverted"
    case notifyIsFocus = "notify::is-focus"
    case notifyLowerStepperSensitivity = "notify::lower-stepper-sensitivity"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case notifyMargin = "notify::margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case notifyMarginLeft = "notify::margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case notifyMarginRight = "notify::margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginTop = "notify::margin-top"
    case notifyName = "notify::name"
    case notifyNoShowAll = "notify::no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case notifyOpacity = "notify::opacity"
    case notifyParent = "notify::parent"
    case notifyReceivesDefault = "notify::receives-default"
    /// The restrict-to-fill-level property controls whether slider
    /// movement is restricted to an upper boundary set by the
    /// fill level. See `gtk_range_set_restrict_to_fill_level()`.
    case notifyRestrictToFillLevel = "notify::restrict-to-fill-level"
    /// The number of digits to round the value to when
    /// it changes, or -1. See `GtkRange::change`-value.
    case notifyRoundDigits = "notify::round-digits"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
    /// The show-fill-level property controls whether fill level indicator
    /// graphics are displayed on the trough. See
    /// `gtk_range_set_show_fill_level()`.
    case notifyShowFillLevel = "notify::show-fill-level"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case notifyStyle = "notify::style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    case notifyUpperStepperSensitivity = "notify::upper-stepper-sensitivity"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    case notifyWidthRequest = "notify::width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case notifyWindow = "notify::window"
}

public extension RangeProtocol {
    /// Connect a `RangeSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: RangeSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(range_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension RangeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRange` instance.
    var range_ptr: UnsafeMutablePointer<GtkRange> { return ptr.assumingMemoryBound(to: GtkRange.self) }

    /// Get the `GtkAdjustment` which is the “model” object for `GtkRange`.
    /// See `gtk_range_set_adjustment()` for details.
    /// The return value does not have a reference added, so should not
    /// be unreferenced.
    func getAdjustment() -> UnsafeMutablePointer<GtkAdjustment>! {
        let rv = gtk_range_get_adjustment(cast(range_ptr))
        return cast(rv)
    }

    /// Gets the current position of the fill level indicator.
    func getFillLevel() -> gdouble {
        let rv = gtk_range_get_fill_level(cast(range_ptr))
        return rv
    }

    /// Gets the value set by `gtk_range_set_flippable()`.
    func getFlippable() -> Bool {
        let rv = gtk_range_get_flippable(cast(range_ptr))
        return Bool(rv != 0)
    }

    /// Gets the value set by `gtk_range_set_inverted()`.
    func getInverted() -> Bool {
        let rv = gtk_range_get_inverted(cast(range_ptr))
        return Bool(rv != 0)
    }

    /// Gets the sensitivity policy for the stepper that points to the
    /// 'lower' end of the GtkRange’s adjustment.
    func getLowerStepperSensitivity() -> GtkSensitivityType {
        let rv = gtk_range_get_lower_stepper_sensitivity(cast(range_ptr))
        return rv
    }

    /// This function is useful mainly for `GtkRange` subclasses.
    /// 
    /// See `gtk_range_set_min_slider_size()`.
    ///
    /// **get_min_slider_size is deprecated:**
    /// Use the min-height/min-width CSS properties on the slider
    ///   node.
    @available(*, deprecated) func getMinSliderSize() -> CInt {
        let rv = gtk_range_get_min_slider_size(cast(range_ptr))
        return CInt(rv)
    }

    /// This function returns the area that contains the range’s trough
    /// and its steppers, in widget->window coordinates.
    /// 
    /// This function is useful mainly for `GtkRange` subclasses.
    func get(rangeRect range_rect: Gdk.RectangleProtocol) {
        gtk_range_get_range_rect(cast(range_ptr), cast(range_rect.ptr))
    
    }

    /// Gets whether the range is restricted to the fill level.
    func getRestrictToFillLevel() -> Bool {
        let rv = gtk_range_get_restrict_to_fill_level(cast(range_ptr))
        return Bool(rv != 0)
    }

    /// Gets the number of digits to round the value to when
    /// it changes. See `GtkRange::change`-value.
    func getRoundDigits() -> CInt {
        let rv = gtk_range_get_round_digits(cast(range_ptr))
        return CInt(rv)
    }

    /// Gets whether the range displays the fill level graphically.
    func getShowFillLevel() -> Bool {
        let rv = gtk_range_get_show_fill_level(cast(range_ptr))
        return Bool(rv != 0)
    }

    /// This function returns sliders range along the long dimension,
    /// in widget->window coordinates.
    /// 
    /// This function is useful mainly for `GtkRange` subclasses.
    func getSliderRange(sliderStart slider_start: UnsafeMutablePointer<CInt>, sliderEnd slider_end: UnsafeMutablePointer<CInt>) {
        gtk_range_get_slider_range(cast(range_ptr), cast(slider_start), cast(slider_end))
    
    }

    /// This function is useful mainly for `GtkRange` subclasses.
    /// 
    /// See `gtk_range_set_slider_size_fixed()`.
    func getSliderSizeFixed() -> Bool {
        let rv = gtk_range_get_slider_size_fixed(cast(range_ptr))
        return Bool(rv != 0)
    }

    /// Gets the sensitivity policy for the stepper that points to the
    /// 'upper' end of the GtkRange’s adjustment.
    func getUpperStepperSensitivity() -> GtkSensitivityType {
        let rv = gtk_range_get_upper_stepper_sensitivity(cast(range_ptr))
        return rv
    }

    /// Gets the current value of the range.
    func getValue() -> gdouble {
        let rv = gtk_range_get_value(cast(range_ptr))
        return rv
    }

    /// Sets the adjustment to be used as the “model” object for this range
    /// widget. The adjustment indicates the current range value, the
    /// minimum and maximum range values, the step/page increments used
    /// for keybindings and scrolling, and the page size. The page size
    /// is normally 0 for `GtkScale` and nonzero for `GtkScrollbar`, and
    /// indicates the size of the visible area of the widget being scrolled.
    /// The page size affects the size of the scrollbar slider.
    func set(adjustment: AdjustmentProtocol) {
        gtk_range_set_adjustment(cast(range_ptr), cast(adjustment.ptr))
    
    }

    /// Set the new position of the fill level indicator.
    /// 
    /// The “fill level” is probably best described by its most prominent
    /// use case, which is an indicator for the amount of pre-buffering in
    /// a streaming media player. In that use case, the value of the range
    /// would indicate the current play position, and the fill level would
    /// be the position up to which the file/stream has been downloaded.
    /// 
    /// This amount of prebuffering can be displayed on the range’s trough
    /// and is themeable separately from the trough. To enable fill level
    /// display, use `gtk_range_set_show_fill_level()`. The range defaults
    /// to not showing the fill level.
    /// 
    /// Additionally, it’s possible to restrict the range’s slider position
    /// to values which are smaller than the fill level. This is controller
    /// by `gtk_range_set_restrict_to_fill_level()` and is by default
    /// enabled.
    func set(fillLevel fill_level: gdouble) {
        gtk_range_set_fill_level(cast(range_ptr), fill_level)
    
    }

    /// If a range is flippable, it will switch its direction if it is
    /// horizontal and its direction is `GTK_TEXT_DIR_RTL`.
    /// 
    /// See `gtk_widget_get_direction()`.
    func set(flippable: Bool) {
        gtk_range_set_flippable(cast(range_ptr), gboolean(flippable ? 1 : 0))
    
    }

    /// Sets the step and page sizes for the range.
    /// The step size is used when the user clicks the `GtkScrollbar`
    /// arrows or moves `GtkScale` via arrow keys. The page size
    /// is used for example when moving via Page Up or Page Down keys.
    func setIncrements(step: gdouble, page: gdouble) {
        gtk_range_set_increments(cast(range_ptr), step, page)
    
    }

    /// Ranges normally move from lower to higher values as the
    /// slider moves from top to bottom or left to right. Inverted
    /// ranges have higher values at the top or on the right rather than
    /// on the bottom or left.
    func setInverted(setting: Bool) {
        gtk_range_set_inverted(cast(range_ptr), gboolean(setting ? 1 : 0))
    
    }

    /// Sets the sensitivity policy for the stepper that points to the
    /// 'lower' end of the GtkRange’s adjustment.
    func setLowerStepper(sensitivity: SensitivityType) {
        gtk_range_set_lower_stepper_sensitivity(cast(range_ptr), sensitivity)
    
    }

    /// Sets the minimum size of the range’s slider.
    /// 
    /// This function is useful mainly for `GtkRange` subclasses.
    ///
    /// **set_min_slider_size is deprecated:**
    /// Use the min-height/min-width CSS properties on the slider
    ///   node.
    @available(*, deprecated) func setMinSliderSize(minSize min_size: CInt) {
        gtk_range_set_min_slider_size(cast(range_ptr), gint(min_size))
    
    }

    /// Sets the allowable values in the `GtkRange`, and clamps the range
    /// value to be between `min` and `max`. (If the range has a non-zero
    /// page size, it is clamped between `min` and `max` - page-size.)
    func setRange(min: gdouble, max: gdouble) {
        gtk_range_set_range(cast(range_ptr), min, max)
    
    }

    /// Sets whether the slider is restricted to the fill level. See
    /// `gtk_range_set_fill_level()` for a general description of the fill
    /// level concept.
    func set(restrictToFillLevel restrict_to_fill_level: Bool) {
        gtk_range_set_restrict_to_fill_level(cast(range_ptr), gboolean(restrict_to_fill_level ? 1 : 0))
    
    }

    /// Sets the number of digits to round the value to when
    /// it changes. See `GtkRange::change`-value.
    func set(roundDigits round_digits: CInt) {
        gtk_range_set_round_digits(cast(range_ptr), gint(round_digits))
    
    }

    /// Sets whether a graphical fill level is show on the trough. See
    /// `gtk_range_set_fill_level()` for a general description of the fill
    /// level concept.
    func set(showFillLevel show_fill_level: Bool) {
        gtk_range_set_show_fill_level(cast(range_ptr), gboolean(show_fill_level ? 1 : 0))
    
    }

    /// Sets whether the range’s slider has a fixed size, or a size that
    /// depends on its adjustment’s page size.
    /// 
    /// This function is useful mainly for `GtkRange` subclasses.
    func setSlider(sizeFixed size_fixed: Bool) {
        gtk_range_set_slider_size_fixed(cast(range_ptr), gboolean(size_fixed ? 1 : 0))
    
    }

    /// Sets the sensitivity policy for the stepper that points to the
    /// 'upper' end of the GtkRange’s adjustment.
    func setUpperStepper(sensitivity: SensitivityType) {
        gtk_range_set_upper_stepper_sensitivity(cast(range_ptr), sensitivity)
    
    }

    /// Sets the current value of the range; if the value is outside the
    /// minimum or maximum range values, it will be clamped to fit inside
    /// them. The range emits the `GtkRange::value`-changed signal if the
    /// value changes.
    func set(value: gdouble) {
        gtk_range_set_value(cast(range_ptr), value)
    
    }
    var adjustment: UnsafeMutablePointer<GtkAdjustment>! {
        /// Get the `GtkAdjustment` which is the “model” object for `GtkRange`.
        /// See `gtk_range_set_adjustment()` for details.
        /// The return value does not have a reference added, so should not
        /// be unreferenced.
        get {
            let rv = gtk_range_get_adjustment(cast(range_ptr))
            return cast(rv)
        }
        /// Sets the adjustment to be used as the “model” object for this range
        /// widget. The adjustment indicates the current range value, the
        /// minimum and maximum range values, the step/page increments used
        /// for keybindings and scrolling, and the page size. The page size
        /// is normally 0 for `GtkScale` and nonzero for `GtkScrollbar`, and
        /// indicates the size of the visible area of the widget being scrolled.
        /// The page size affects the size of the scrollbar slider.
        nonmutating set {
            gtk_range_set_adjustment(cast(range_ptr), cast(newValue))
        }
    }

    /// Gets the current position of the fill level indicator.
    var fillLevel: gdouble {
        /// Gets the current position of the fill level indicator.
        get {
            let rv = gtk_range_get_fill_level(cast(range_ptr))
            return rv
        }
        /// Set the new position of the fill level indicator.
        /// 
        /// The “fill level” is probably best described by its most prominent
        /// use case, which is an indicator for the amount of pre-buffering in
        /// a streaming media player. In that use case, the value of the range
        /// would indicate the current play position, and the fill level would
        /// be the position up to which the file/stream has been downloaded.
        /// 
        /// This amount of prebuffering can be displayed on the range’s trough
        /// and is themeable separately from the trough. To enable fill level
        /// display, use `gtk_range_set_show_fill_level()`. The range defaults
        /// to not showing the fill level.
        /// 
        /// Additionally, it’s possible to restrict the range’s slider position
        /// to values which are smaller than the fill level. This is controller
        /// by `gtk_range_set_restrict_to_fill_level()` and is by default
        /// enabled.
        nonmutating set {
            gtk_range_set_fill_level(cast(range_ptr), newValue)
        }
    }

    /// Gets the value set by `gtk_range_set_flippable()`.
    var flippable: Bool {
        /// Gets the value set by `gtk_range_set_flippable()`.
        get {
            let rv = gtk_range_get_flippable(cast(range_ptr))
            return Bool(rv != 0)
        }
        /// If a range is flippable, it will switch its direction if it is
        /// horizontal and its direction is `GTK_TEXT_DIR_RTL`.
        /// 
        /// See `gtk_widget_get_direction()`.
        nonmutating set {
            gtk_range_set_flippable(cast(range_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    var inverted: Bool {
        /// Gets the value set by `gtk_range_set_inverted()`.
        get {
            let rv = gtk_range_get_inverted(cast(range_ptr))
            return Bool(rv != 0)
        }
        /// Ranges normally move from lower to higher values as the
        /// slider moves from top to bottom or left to right. Inverted
        /// ranges have higher values at the top or on the right rather than
        /// on the bottom or left.
        nonmutating set {
            gtk_range_set_inverted(cast(range_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Gets the sensitivity policy for the stepper that points to the
    /// 'lower' end of the GtkRange’s adjustment.
    var lowerStepperSensitivity: GtkSensitivityType {
        /// Gets the sensitivity policy for the stepper that points to the
        /// 'lower' end of the GtkRange’s adjustment.
        get {
            let rv = gtk_range_get_lower_stepper_sensitivity(cast(range_ptr))
            return rv
        }
        /// Sets the sensitivity policy for the stepper that points to the
        /// 'lower' end of the GtkRange’s adjustment.
        nonmutating set {
            gtk_range_set_lower_stepper_sensitivity(cast(range_ptr), newValue)
        }
    }

    /// This function is useful mainly for `GtkRange` subclasses.
    /// 
    /// See `gtk_range_set_min_slider_size()`.
    ///
    /// **get_min_slider_size is deprecated:**
    /// Use the min-height/min-width CSS properties on the slider
    ///   node.
    var minSliderSize: CInt {
        /// This function is useful mainly for `GtkRange` subclasses.
        /// 
        /// See `gtk_range_set_min_slider_size()`.
        ///
        /// **get_min_slider_size is deprecated:**
        /// Use the min-height/min-width CSS properties on the slider
        ///   node.
        @available(*, deprecated) get {
            let rv = gtk_range_get_min_slider_size(cast(range_ptr))
            return CInt(rv)
        }
        /// Sets the minimum size of the range’s slider.
        /// 
        /// This function is useful mainly for `GtkRange` subclasses.
        ///
        /// **set_min_slider_size is deprecated:**
        /// Use the min-height/min-width CSS properties on the slider
        ///   node.
        @available(*, deprecated) nonmutating set {
            gtk_range_set_min_slider_size(cast(range_ptr), gint(newValue))
        }
    }

    /// Gets whether the range is restricted to the fill level.
    var restrictToFillLevel: Bool {
        /// Gets whether the range is restricted to the fill level.
        get {
            let rv = gtk_range_get_restrict_to_fill_level(cast(range_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether the slider is restricted to the fill level. See
        /// `gtk_range_set_fill_level()` for a general description of the fill
        /// level concept.
        nonmutating set {
            gtk_range_set_restrict_to_fill_level(cast(range_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Gets the number of digits to round the value to when
    /// it changes. See `GtkRange::change`-value.
    var roundDigits: CInt {
        /// Gets the number of digits to round the value to when
        /// it changes. See `GtkRange::change`-value.
        get {
            let rv = gtk_range_get_round_digits(cast(range_ptr))
            return CInt(rv)
        }
        /// Sets the number of digits to round the value to when
        /// it changes. See `GtkRange::change`-value.
        nonmutating set {
            gtk_range_set_round_digits(cast(range_ptr), gint(newValue))
        }
    }

    /// Gets whether the range displays the fill level graphically.
    var showFillLevel: Bool {
        /// Gets whether the range displays the fill level graphically.
        get {
            let rv = gtk_range_get_show_fill_level(cast(range_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether a graphical fill level is show on the trough. See
        /// `gtk_range_set_fill_level()` for a general description of the fill
        /// level concept.
        nonmutating set {
            gtk_range_set_show_fill_level(cast(range_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// This function is useful mainly for `GtkRange` subclasses.
    /// 
    /// See `gtk_range_set_slider_size_fixed()`.
    var sliderSizeFixed: Bool {
        /// This function is useful mainly for `GtkRange` subclasses.
        /// 
        /// See `gtk_range_set_slider_size_fixed()`.
        get {
            let rv = gtk_range_get_slider_size_fixed(cast(range_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether the range’s slider has a fixed size, or a size that
        /// depends on its adjustment’s page size.
        /// 
        /// This function is useful mainly for `GtkRange` subclasses.
        nonmutating set {
            gtk_range_set_slider_size_fixed(cast(range_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Gets the sensitivity policy for the stepper that points to the
    /// 'upper' end of the GtkRange’s adjustment.
    var upperStepperSensitivity: GtkSensitivityType {
        /// Gets the sensitivity policy for the stepper that points to the
        /// 'upper' end of the GtkRange’s adjustment.
        get {
            let rv = gtk_range_get_upper_stepper_sensitivity(cast(range_ptr))
            return rv
        }
        /// Sets the sensitivity policy for the stepper that points to the
        /// 'upper' end of the GtkRange’s adjustment.
        nonmutating set {
            gtk_range_set_upper_stepper_sensitivity(cast(range_ptr), newValue)
        }
    }

    /// Gets the current value of the range.
    var value: gdouble {
        /// Gets the current value of the range.
        get {
            let rv = gtk_range_get_value(cast(range_ptr))
            return rv
        }
        /// Sets the current value of the range; if the value is outside the
        /// minimum or maximum range values, it will be clamped to fit inside
        /// them. The range emits the `GtkRange::value`-changed signal if the
        /// value changes.
        nonmutating set {
            gtk_range_set_value(cast(range_ptr), newValue)
        }
    }
}



// MARK: - RangeAccessible Class

/// The `RangeAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkRangeAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RangeAccessible`.
/// Alternatively, use `RangeAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RangeAccessibleProtocol: WidgetAccessibleProtocol, Atk.ValueProtocol {
    /// Untyped pointer to the underlying `GtkRangeAccessible` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRangeAccessible` instance.
    var range_accessible_ptr: UnsafeMutablePointer<GtkRangeAccessible> { get }
}

/// The `RangeAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkRangeAccessible` instance.
/// It exposes methods that can operate on this data type through `RangeAccessibleProtocol` conformance.
/// Use `RangeAccessibleRef` only as an `unowned` reference to an existing `GtkRangeAccessible` instance.
///

public struct RangeAccessibleRef: RangeAccessibleProtocol {
    /// Untyped pointer to the underlying `GtkRangeAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `range_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RangeAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRangeAccessible>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RangeAccessibleProtocol`
    init<T: RangeAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessibleProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessibleProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessibleProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessibleProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessibleProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RangeAccessible` type acts as a reference-counted owner of an underlying `GtkRangeAccessible` instance.
/// It provides the methods that can operate on this data type through `RangeAccessibleProtocol` conformance.
/// Use `RangeAccessible` as a strong reference or owner of a `GtkRangeAccessible` instance.
///

open class RangeAccessible: WidgetAccessible, RangeAccessibleProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RangeAccessible` instance.
    public init(_ op: UnsafeMutablePointer<GtkRangeAccessible>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `RangeAccessibleProtocol`
    /// Will retain `GtkRangeAccessible`.
    public convenience init<T: RangeAccessibleProtocol>(_ other: T) {
        self.init(cast(other.range_accessible_ptr))
        g_object_ref(cast(range_accessible_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessibleProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRangeAccessible.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessibleProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRangeAccessible.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessibleProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRangeAccessible.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessibleProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRangeAccessible>(opaquePointer))
    }



}

public enum RangeAccessiblePropertyName: String, PropertyNameProtocol {
    case accessibleComponentLayer = "accessible-component-layer"
    case accessibleComponentMdiZorder = "accessible-component-mdi-zorder"
    case accessibleDescription = "accessible-description"
    case accessibleHypertextNlinks = "accessible-hypertext-nlinks"
    case accessibleName = "accessible-name"
    case accessibleParent = "accessible-parent"
    case accessibleRole = "accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case accessibleTableCaption = "accessible-table-caption"
    case accessibleTableCaptionObject = "accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case accessibleTableColumnDescription = "accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case accessibleTableColumnHeader = "accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case accessibleTableRowDescription = "accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case accessibleTableRowHeader = "accessible-table-row-header"
    case accessibleTableSummary = "accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case accessibleValue = "accessible-value"
    case widget = "widget"
}

public extension RangeAccessibleProtocol {
    /// Bind a `RangeAccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: RangeAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(range_accessible_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }
}

public enum RangeAccessibleSignalName: String, SignalNameProtocol {
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The signal "property-change" is emitted when an object's property
    /// value changes. `arg1` contains an `AtkPropertyValues` with the name
    /// and the new value of the property whose value has changed. Note
    /// that, as with GObject notify, getting this signal does not
    /// guarantee that the value of the property has actually changed; it
    /// may also be emitted when the setter of the property is called to
    /// reinstate the previous value.
    /// 
    /// Toolkit implementor note: ATK implementors should use
    /// `g_object_notify()` to emit property-changed
    /// notifications. `AtkObject::property`-changed is needed by the
    /// implementation of `atk_add_global_event_listener()` because GObject
    /// notify doesn't support emission hooks.
    case propertyChange = "property-change"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The "visible-data-changed" signal is emitted when the visual
    /// appearance of the object changed.
    case visibleDataChanged = "visible-data-changed"
    case notifyAccessibleComponentLayer = "notify::accessible-component-layer"
    case notifyAccessibleComponentMdiZorder = "notify::accessible-component-mdi-zorder"
    case notifyAccessibleDescription = "notify::accessible-description"
    case notifyAccessibleHypertextNlinks = "notify::accessible-hypertext-nlinks"
    case notifyAccessibleName = "notify::accessible-name"
    case notifyAccessibleParent = "notify::accessible-parent"
    case notifyAccessibleRole = "notify::accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case notifyAccessibleTableCaption = "notify::accessible-table-caption"
    case notifyAccessibleTableCaptionObject = "notify::accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case notifyAccessibleTableColumnDescription = "notify::accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case notifyAccessibleTableColumnHeader = "notify::accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case notifyAccessibleTableRowDescription = "notify::accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case notifyAccessibleTableRowHeader = "notify::accessible-table-row-header"
    case notifyAccessibleTableSummary = "notify::accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case notifyAccessibleValue = "notify::accessible-value"
    case notifyWidget = "notify::widget"
}

public extension RangeAccessibleProtocol {
    /// Connect a `RangeAccessibleSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: RangeAccessibleSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(range_accessible_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension RangeAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRangeAccessible` instance.
    var range_accessible_ptr: UnsafeMutablePointer<GtkRangeAccessible> { return ptr.assumingMemoryBound(to: GtkRangeAccessible.self) }

}



// MARK: - RcStyle Class

/// The `RcStyleProtocol` protocol exposes the methods and properties of an underlying `GtkRcStyle` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RcStyle`.
/// Alternatively, use `RcStyleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkRcStyle`-struct is used to represent a set
/// of information about the appearance of a widget.
/// This can later be composited together with other
/// `GtkRcStyle`-struct<!-- -->s to form a `GtkStyle`.
public protocol RcStyleProtocol: GLibObject.ObjectProtocol {
    /// Untyped pointer to the underlying `GtkRcStyle` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRcStyle` instance.
    var rc_style_ptr: UnsafeMutablePointer<GtkRcStyle> { get }
}

/// The `RcStyleRef` type acts as a lightweight Swift reference to an underlying `GtkRcStyle` instance.
/// It exposes methods that can operate on this data type through `RcStyleProtocol` conformance.
/// Use `RcStyleRef` only as an `unowned` reference to an existing `GtkRcStyle` instance.
///
/// The `GtkRcStyle`-struct is used to represent a set
/// of information about the appearance of a widget.
/// This can later be composited together with other
/// `GtkRcStyle`-struct<!-- -->s to form a `GtkStyle`.
public struct RcStyleRef: RcStyleProtocol {
    /// Untyped pointer to the underlying `GtkRcStyle` instance.
    /// For type-safe access, use the generated, typed pointer `rc_style_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RcStyleRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRcStyle>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RcStyleProtocol`
    init<T: RcStyleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcStyleProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcStyleProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcStyleProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcStyleProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcStyleProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkRcStyle` with no fields set and
    /// a reference count of 1.
    ///
    /// **new is deprecated:**
    /// Use #GtkCssProvider instead.
    @available(*, deprecated) init() {
        let rv = gtk_rc_style_new()
        self.init(cast(rv))
    }
}

/// The `RcStyle` type acts as a reference-counted owner of an underlying `GtkRcStyle` instance.
/// It provides the methods that can operate on this data type through `RcStyleProtocol` conformance.
/// Use `RcStyle` as a strong reference or owner of a `GtkRcStyle` instance.
///
/// The `GtkRcStyle`-struct is used to represent a set
/// of information about the appearance of a widget.
/// This can later be composited together with other
/// `GtkRcStyle`-struct<!-- -->s to form a `GtkStyle`.
open class RcStyle: GLibObject.Object, RcStyleProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RcStyle` instance.
    public init(_ op: UnsafeMutablePointer<GtkRcStyle>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `RcStyleProtocol`
    /// Will retain `GtkRcStyle`.
    public convenience init<T: RcStyleProtocol>(_ other: T) {
        self.init(cast(other.rc_style_ptr))
        g_object_ref(cast(rc_style_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcStyleProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRcStyle.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcStyleProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRcStyle.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcStyleProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRcStyle.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcStyleProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRcStyle>(opaquePointer))
    }

    /// Creates a new `GtkRcStyle` with no fields set and
    /// a reference count of 1.
    ///
    /// **new is deprecated:**
    /// Use #GtkCssProvider instead.
    @available(*, deprecated) public convenience init() {
        let rv = gtk_rc_style_new()
        self.init(cast(rv))
    }


}

// MARK: - no RcStyle properties

public enum RcStyleSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"

}

public extension RcStyleProtocol {
    /// Connect a `RcStyleSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: RcStyleSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(rc_style_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension RcStyleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRcStyle` instance.
    var rc_style_ptr: UnsafeMutablePointer<GtkRcStyle> { return ptr.assumingMemoryBound(to: GtkRcStyle.self) }

    /// Makes a copy of the specified `GtkRcStyle`. This function
    /// will correctly copy an RC style that is a member of a class
    /// derived from `GtkRcStyle`.
    ///
    /// **copy is deprecated:**
    /// Use #GtkCssProvider instead.
    @available(*, deprecated) func copy() -> UnsafeMutablePointer<GtkRcStyle>! {
        let rv = gtk_rc_style_copy(cast(rc_style_ptr))
        return cast(rv)
    }

    /// Parses a color in the format expected
    /// in a RC file. If `style` is not `nil`, it will be consulted to resolve
    /// references to symbolic colors.
    ///
    /// **rc_parse_color_full is deprecated:**
    /// Use #GtkCssProvider instead
    @available(*, deprecated) func rcParseColorFull(scanner: ScannerProtocol, color: Gdk.ColorProtocol) -> CUnsignedInt {
        let rv = gtk_rc_parse_color_full(cast(scanner.ptr), cast(rc_style_ptr), cast(color.ptr))
        return CUnsignedInt(rv)
    }
}



// MARK: - RecentAction Class

/// The `RecentActionProtocol` protocol exposes the methods and properties of an underlying `GtkRecentAction` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RecentAction`.
/// Alternatively, use `RecentActionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GtkRecentAction` represents a list of recently used files, which
/// can be shown by widgets such as `GtkRecentChooserDialog` or
/// `GtkRecentChooserMenu`.
/// 
/// To construct a submenu showing recently used files, use a `GtkRecentAction`
/// as the action for a <menuitem>. To construct a menu toolbutton showing
/// the recently used files in the popup menu, use a `GtkRecentAction` as the
/// action for a <toolitem> element.
public protocol RecentActionProtocol: ActionProtocol, RecentChooserProtocol {
    /// Untyped pointer to the underlying `GtkRecentAction` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRecentAction` instance.
    var recent_action_ptr: UnsafeMutablePointer<GtkRecentAction> { get }
}

/// The `RecentActionRef` type acts as a lightweight Swift reference to an underlying `GtkRecentAction` instance.
/// It exposes methods that can operate on this data type through `RecentActionProtocol` conformance.
/// Use `RecentActionRef` only as an `unowned` reference to an existing `GtkRecentAction` instance.
///
/// A `GtkRecentAction` represents a list of recently used files, which
/// can be shown by widgets such as `GtkRecentChooserDialog` or
/// `GtkRecentChooserMenu`.
/// 
/// To construct a submenu showing recently used files, use a `GtkRecentAction`
/// as the action for a <menuitem>. To construct a menu toolbutton showing
/// the recently used files in the popup menu, use a `GtkRecentAction` as the
/// action for a <toolitem> element.
public struct RecentActionRef: RecentActionProtocol {
    /// Untyped pointer to the underlying `GtkRecentAction` instance.
    /// For type-safe access, use the generated, typed pointer `recent_action_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RecentActionRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRecentAction>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RecentActionProtocol`
    init<T: RecentActionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkRecentAction` object. To add the action to
    /// a `GtkActionGroup` and set the accelerator for the action,
    /// call `gtk_action_group_add_action_with_accel()`.
    ///
    /// **new is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) init( name: UnsafePointer<gchar>, label: UnsafePointer<gchar>, tooltip: UnsafePointer<gchar>, stockID stock_id: UnsafePointer<gchar>) {
        let rv = gtk_recent_action_new(name, label, tooltip, stock_id)
        self.init(cast(rv))
    }

    /// Creates a new `GtkRecentAction` object. To add the action to
    /// a `GtkActionGroup` and set the accelerator for the action,
    /// call `gtk_action_group_add_action_with_accel()`.
    ///
    /// **new_for_manager is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) init(manager name: UnsafePointer<gchar>, label: UnsafePointer<gchar>, tooltip: UnsafePointer<gchar>, stockID stock_id: UnsafePointer<gchar>, manager: RecentManagerProtocol) {
        let rv = gtk_recent_action_new_for_manager(name, label, tooltip, stock_id, cast(manager.ptr))
        self.init(cast(rv))
    }
    /// Creates a new `GtkRecentAction` object. To add the action to
    /// a `GtkActionGroup` and set the accelerator for the action,
    /// call `gtk_action_group_add_action_with_accel()`.
    ///
    /// **new_for_manager is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) static func newFor(manager name: UnsafePointer<gchar>, label: UnsafePointer<gchar>, tooltip: UnsafePointer<gchar>, stockID stock_id: UnsafePointer<gchar>, manager: RecentManagerProtocol) -> RecentActionRef! {
        let rv = gtk_recent_action_new_for_manager(name, label, tooltip, stock_id, cast(manager.ptr))
        return rv.map { RecentActionRef(cast($0)) }
    }
}

/// The `RecentAction` type acts as a reference-counted owner of an underlying `GtkRecentAction` instance.
/// It provides the methods that can operate on this data type through `RecentActionProtocol` conformance.
/// Use `RecentAction` as a strong reference or owner of a `GtkRecentAction` instance.
///
/// A `GtkRecentAction` represents a list of recently used files, which
/// can be shown by widgets such as `GtkRecentChooserDialog` or
/// `GtkRecentChooserMenu`.
/// 
/// To construct a submenu showing recently used files, use a `GtkRecentAction`
/// as the action for a <menuitem>. To construct a menu toolbutton showing
/// the recently used files in the popup menu, use a `GtkRecentAction` as the
/// action for a <toolitem> element.
open class RecentAction: Action, RecentActionProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RecentAction` instance.
    public init(_ op: UnsafeMutablePointer<GtkRecentAction>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `RecentActionProtocol`
    /// Will retain `GtkRecentAction`.
    public convenience init<T: RecentActionProtocol>(_ other: T) {
        self.init(cast(other.recent_action_ptr))
        g_object_ref(cast(recent_action_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRecentAction.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRecentAction.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRecentAction.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRecentAction>(opaquePointer))
    }

    /// Creates a new `GtkRecentAction` object. To add the action to
    /// a `GtkActionGroup` and set the accelerator for the action,
    /// call `gtk_action_group_add_action_with_accel()`.
    ///
    /// **new is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) public convenience init( name: UnsafePointer<gchar>, label: UnsafePointer<gchar>, tooltip: UnsafePointer<gchar>, stockID stock_id: UnsafePointer<gchar>) {
        let rv = gtk_recent_action_new(name, label, tooltip, stock_id)
        self.init(cast(rv))
    }

    /// Creates a new `GtkRecentAction` object. To add the action to
    /// a `GtkActionGroup` and set the accelerator for the action,
    /// call `gtk_action_group_add_action_with_accel()`.
    ///
    /// **new_for_manager is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) public convenience init(manager name: UnsafePointer<gchar>, label: UnsafePointer<gchar>, tooltip: UnsafePointer<gchar>, stockID stock_id: UnsafePointer<gchar>, manager: RecentManagerProtocol) {
        let rv = gtk_recent_action_new_for_manager(name, label, tooltip, stock_id, cast(manager.ptr))
        self.init(cast(rv))
    }

    /// Creates a new `GtkRecentAction` object. To add the action to
    /// a `GtkActionGroup` and set the accelerator for the action,
    /// call `gtk_action_group_add_action_with_accel()`.
    ///
    /// **new_for_manager is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) public static func newFor(manager name: UnsafePointer<gchar>, label: UnsafePointer<gchar>, tooltip: UnsafePointer<gchar>, stockID stock_id: UnsafePointer<gchar>, manager: RecentManagerProtocol) -> RecentAction! {
        let rv = gtk_recent_action_new_for_manager(name, label, tooltip, stock_id, cast(manager.ptr))
        return rv.map { RecentAction(cast($0)) }
    }

}

public enum RecentActionPropertyName: String, PropertyNameProtocol {
    /// The GtkActionGroup this GtkAction is associated with, or NULL
    /// (for internal use).
    ///
    /// **action-group is deprecated:**
    /// Lookup the #GAction using g_action_map_lookup_action()
    /// instead
    case actionGroup = "action-group"
    /// If `true`, the action's menu item proxies will ignore the `GtkSettings:gtk`-menu-images
    /// setting and always show their image, if available.
    /// 
    /// Use this property if the menu item would be useless or hard to use
    /// without their image.
    ///
    /// **always-show-image is deprecated:**
    /// There is no corresponding replacement when using
    /// #GAction
    case alwaysShowImage = "always-show-image"
    /// The `GIcon` displayed in the `GtkAction`.
    /// 
    /// Note that the stock icon is preferred, if the `GtkAction:stock`-id
    /// property holds the id of an existing stock icon.
    /// 
    /// This is an appearance property and thus only applies if
    /// `GtkActivatable:use`-action-appearance is `true`.
    ///
    /// **gicon is deprecated:**
    /// Use the "icon" attribute on a #GMenuItem instead
    case gicon = "gicon"
    /// When TRUE, empty menu proxies for this action are hidden.
    ///
    /// **hide-if-empty is deprecated:**
    /// There is no corresponding replacement when using
    /// #GAction
    case hideIfEmpty = "hide-if-empty"
    /// The name of the icon from the icon theme.
    /// 
    /// Note that the stock icon is preferred, if the `GtkAction:stock`-id
    /// property holds the id of an existing stock icon, and the `GIcon` is
    /// preferred if the `GtkAction:gicon` property is set.
    /// 
    /// This is an appearance property and thus only applies if
    /// `GtkActivatable:use`-action-appearance is `true`.
    ///
    /// **icon-name is deprecated:**
    /// Use the "icon" attribute on a #GMenuItem instead
    case iconName = "icon-name"
    /// Whether the action is considered important. When TRUE, toolitem
    /// proxies for this action show text in GTK_TOOLBAR_BOTH_HORIZ mode.
    ///
    /// **is-important is deprecated:**
    /// There is no corresponding replacement when using
    /// #GAction
    case isImportant = "is-important"
    /// The label used for menu items and buttons that activate
    /// this action. If the label is `nil`, GTK+ uses the stock
    /// label specified via the stock-id property.
    /// 
    /// This is an appearance property and thus only applies if
    /// `GtkActivatable:use`-action-appearance is `true`.
    ///
    /// **label is deprecated:**
    /// Use the "label" attribute on #GMenuItem instead
    case label = "label"
    /// A unique name for the action.
    ///
    /// **name is deprecated:**
    /// Use #GAction:name instead
    case name = "name"
    /// Whether the action is enabled.
    ///
    /// **sensitive is deprecated:**
    /// Use #GAction:enabled and #GSimpleAction:enabled
    /// instead
    case sensitive = "sensitive"
    /// A shorter label that may be used on toolbar buttons.
    /// 
    /// This is an appearance property and thus only applies if
    /// `GtkActivatable:use`-action-appearance is `true`.
    ///
    /// **short-label is deprecated:**
    /// There is no corresponding replacement when using
    /// #GAction
    case shortLabel = "short-label"
    /// Whether the items should be displayed with a number.
    ///
    /// **show-numbers is deprecated:**
    /// This method is deprecated.
    case showNumbers = "show-numbers"
    /// The stock icon displayed in widgets representing this action.
    /// 
    /// This is an appearance property and thus only applies if
    /// `GtkActivatable:use`-action-appearance is `true`.
    ///
    /// **stock-id is deprecated:**
    /// There is no corresponding replacement when using
    /// #GAction
    case stockID = "stock-id"
    /// A tooltip for this action.
    ///
    /// **tooltip is deprecated:**
    /// Use gtk_widget_set_tooltip_text() instead
    case tooltip = "tooltip"
    /// Whether the action is visible.
    ///
    /// **visible is deprecated:**
    /// There is no corresponding replacement when using
    /// #GAction
    case visible = "visible"
    /// Whether the toolbar item is visible when the toolbar is in a horizontal orientation.
    ///
    /// **visible-horizontal is deprecated:**
    /// There is no corresponding replacement when using
    /// #GAction
    case visibleHorizontal = "visible-horizontal"
    /// When `true`, toolitem proxies for this action are represented in the
    /// toolbar overflow menu.
    ///
    /// **visible-overflown is deprecated:**
    /// There is no corresponding replacement when using
    /// #GAction
    case visibleOverflown = "visible-overflown"
    /// Whether the toolbar item is visible when the toolbar is in a vertical orientation.
    ///
    /// **visible-vertical is deprecated:**
    /// There is no corresponding replacement when using
    /// #GAction
    case visibleVertical = "visible-vertical"
}

public extension RecentActionProtocol {
    /// Bind a `RecentActionPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: RecentActionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(recent_action_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }
}

public enum RecentActionSignalName: String, SignalNameProtocol {
    /// The "activate" signal is emitted when the action is activated.
    ///
    /// **activate is deprecated:**
    /// Use #GSimpleAction::activate instead
    case activate = "activate"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The GtkActionGroup this GtkAction is associated with, or NULL
    /// (for internal use).
    ///
    /// **action-group is deprecated:**
    /// Lookup the #GAction using g_action_map_lookup_action()
    /// instead
    case notifyActionGroup = "notify::action-group"
    /// If `true`, the action's menu item proxies will ignore the `GtkSettings:gtk`-menu-images
    /// setting and always show their image, if available.
    /// 
    /// Use this property if the menu item would be useless or hard to use
    /// without their image.
    ///
    /// **always-show-image is deprecated:**
    /// There is no corresponding replacement when using
    /// #GAction
    case notifyAlwaysShowImage = "notify::always-show-image"
    /// The `GIcon` displayed in the `GtkAction`.
    /// 
    /// Note that the stock icon is preferred, if the `GtkAction:stock`-id
    /// property holds the id of an existing stock icon.
    /// 
    /// This is an appearance property and thus only applies if
    /// `GtkActivatable:use`-action-appearance is `true`.
    ///
    /// **gicon is deprecated:**
    /// Use the "icon" attribute on a #GMenuItem instead
    case notifyIcon = "notify::gicon"
    /// When TRUE, empty menu proxies for this action are hidden.
    ///
    /// **hide-if-empty is deprecated:**
    /// There is no corresponding replacement when using
    /// #GAction
    case notifyHideIfEmpty = "notify::hide-if-empty"
    /// The name of the icon from the icon theme.
    /// 
    /// Note that the stock icon is preferred, if the `GtkAction:stock`-id
    /// property holds the id of an existing stock icon, and the `GIcon` is
    /// preferred if the `GtkAction:gicon` property is set.
    /// 
    /// This is an appearance property and thus only applies if
    /// `GtkActivatable:use`-action-appearance is `true`.
    ///
    /// **icon-name is deprecated:**
    /// Use the "icon" attribute on a #GMenuItem instead
    case notifyIconName = "notify::icon-name"
    /// Whether the action is considered important. When TRUE, toolitem
    /// proxies for this action show text in GTK_TOOLBAR_BOTH_HORIZ mode.
    ///
    /// **is-important is deprecated:**
    /// There is no corresponding replacement when using
    /// #GAction
    case notifyIsImportant = "notify::is-important"
    /// The label used for menu items and buttons that activate
    /// this action. If the label is `nil`, GTK+ uses the stock
    /// label specified via the stock-id property.
    /// 
    /// This is an appearance property and thus only applies if
    /// `GtkActivatable:use`-action-appearance is `true`.
    ///
    /// **label is deprecated:**
    /// Use the "label" attribute on #GMenuItem instead
    case notifyLabel = "notify::label"
    /// A unique name for the action.
    ///
    /// **name is deprecated:**
    /// Use #GAction:name instead
    case notifyName = "notify::name"
    /// Whether the action is enabled.
    ///
    /// **sensitive is deprecated:**
    /// Use #GAction:enabled and #GSimpleAction:enabled
    /// instead
    case notifySensitive = "notify::sensitive"
    /// A shorter label that may be used on toolbar buttons.
    /// 
    /// This is an appearance property and thus only applies if
    /// `GtkActivatable:use`-action-appearance is `true`.
    ///
    /// **short-label is deprecated:**
    /// There is no corresponding replacement when using
    /// #GAction
    case notifyShortLabel = "notify::short-label"
    /// Whether the items should be displayed with a number.
    ///
    /// **show-numbers is deprecated:**
    /// This method is deprecated.
    case notifyShowNumbers = "notify::show-numbers"
    /// The stock icon displayed in widgets representing this action.
    /// 
    /// This is an appearance property and thus only applies if
    /// `GtkActivatable:use`-action-appearance is `true`.
    ///
    /// **stock-id is deprecated:**
    /// There is no corresponding replacement when using
    /// #GAction
    case notifyStockID = "notify::stock-id"
    /// A tooltip for this action.
    ///
    /// **tooltip is deprecated:**
    /// Use gtk_widget_set_tooltip_text() instead
    case notifyTooltip = "notify::tooltip"
    /// Whether the action is visible.
    ///
    /// **visible is deprecated:**
    /// There is no corresponding replacement when using
    /// #GAction
    case notifyVisible = "notify::visible"
    /// Whether the toolbar item is visible when the toolbar is in a horizontal orientation.
    ///
    /// **visible-horizontal is deprecated:**
    /// There is no corresponding replacement when using
    /// #GAction
    case notifyVisibleHorizontal = "notify::visible-horizontal"
    /// When `true`, toolitem proxies for this action are represented in the
    /// toolbar overflow menu.
    ///
    /// **visible-overflown is deprecated:**
    /// There is no corresponding replacement when using
    /// #GAction
    case notifyVisibleOverflown = "notify::visible-overflown"
    /// Whether the toolbar item is visible when the toolbar is in a vertical orientation.
    ///
    /// **visible-vertical is deprecated:**
    /// There is no corresponding replacement when using
    /// #GAction
    case notifyVisibleVertical = "notify::visible-vertical"
}

public extension RecentActionProtocol {
    /// Connect a `RecentActionSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: RecentActionSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(recent_action_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension RecentActionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRecentAction` instance.
    var recent_action_ptr: UnsafeMutablePointer<GtkRecentAction> { return ptr.assumingMemoryBound(to: GtkRecentAction.self) }

    /// Returns the value set by `gtk_recent_chooser_menu_set_show_numbers()`.
    ///
    /// **get_show_numbers is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) func getShowNumbers() -> Bool {
        let rv = gtk_recent_action_get_show_numbers(cast(recent_action_ptr))
        return Bool(rv != 0)
    }

    /// Sets whether a number should be added to the items shown by the
    /// widgets representing `action`. The numbers are shown to provide
    /// a unique character for a mnemonic to be used inside the menu item's
    /// label. Only the first ten items get a number to avoid clashes.
    ///
    /// **set_show_numbers is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated) func set(showNumbers show_numbers: Bool) {
        gtk_recent_action_set_show_numbers(cast(recent_action_ptr), gboolean(show_numbers ? 1 : 0))
    
    }
    /// Returns the value set by `gtk_recent_chooser_menu_set_show_numbers()`.
    ///
    /// **get_show_numbers is deprecated:**
    /// This method is deprecated.
    var showNumbers: Bool {
        /// Returns the value set by `gtk_recent_chooser_menu_set_show_numbers()`.
        ///
        /// **get_show_numbers is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated) get {
            let rv = gtk_recent_action_get_show_numbers(cast(recent_action_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether a number should be added to the items shown by the
        /// widgets representing `action`. The numbers are shown to provide
        /// a unique character for a mnemonic to be used inside the menu item's
        /// label. Only the first ten items get a number to avoid clashes.
        ///
        /// **set_show_numbers is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated) nonmutating set {
            gtk_recent_action_set_show_numbers(cast(recent_action_ptr), gboolean(newValue ? 1 : 0))
        }
    }
}



// MARK: - RecentChooserDialog Class

/// The `RecentChooserDialogProtocol` protocol exposes the methods and properties of an underlying `GtkRecentChooserDialog` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RecentChooserDialog`.
/// Alternatively, use `RecentChooserDialogRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkRecentChooserDialog` is a dialog box suitable for displaying the recently
/// used documents.  This widgets works by putting a `GtkRecentChooserWidget` inside
/// a `GtkDialog`.  It exposes the `GtkRecentChooserIface` interface, so you can use
/// all the `GtkRecentChooser` functions on the recent chooser dialog as well as
/// those for `GtkDialog`.
/// 
/// Note that `GtkRecentChooserDialog` does not have any methods of its own.
/// Instead, you should use the functions that work on a `GtkRecentChooser`.
/// 
/// ## Typical usage ## <a name="gtkrecentchooser-typical-usage"></a>
/// 
/// In the simplest of cases, you can use the following code to use
/// a `GtkRecentChooserDialog` to select a recently used file:
/// 
/// (C Language Example):
/// ```C
/// GtkWidget *dialog;
/// gint res;
/// 
/// dialog = gtk_recent_chooser_dialog_new ("Recent Documents",
///                                         parent_window,
///                                         _("_Cancel"),
///                                         GTK_RESPONSE_CANCEL,
///                                         _("_Open"),
///                                         GTK_RESPONSE_ACCEPT,
///                                         NULL);
/// 
/// res = gtk_dialog_run (GTK_DIALOG (dialog));
/// if (res == GTK_RESPONSE_ACCEPT)
///   {
///     GtkRecentInfo *info;
///     GtkRecentChooser *chooser = GTK_RECENT_CHOOSER (dialog);
/// 
///     info = gtk_recent_chooser_get_current_item (chooser);
///     open_file (gtk_recent_info_get_uri (info));
///     gtk_recent_info_unref (info);
///   }
/// 
/// gtk_widget_destroy (dialog);
/// ```
/// 
/// Recently used files are supported since GTK+ 2.10.
public protocol RecentChooserDialogProtocol: DialogProtocol, RecentChooserProtocol {
    /// Untyped pointer to the underlying `GtkRecentChooserDialog` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRecentChooserDialog` instance.
    var recent_chooser_dialog_ptr: UnsafeMutablePointer<GtkRecentChooserDialog> { get }
}

/// The `RecentChooserDialogRef` type acts as a lightweight Swift reference to an underlying `GtkRecentChooserDialog` instance.
/// It exposes methods that can operate on this data type through `RecentChooserDialogProtocol` conformance.
/// Use `RecentChooserDialogRef` only as an `unowned` reference to an existing `GtkRecentChooserDialog` instance.
///
/// `GtkRecentChooserDialog` is a dialog box suitable for displaying the recently
/// used documents.  This widgets works by putting a `GtkRecentChooserWidget` inside
/// a `GtkDialog`.  It exposes the `GtkRecentChooserIface` interface, so you can use
/// all the `GtkRecentChooser` functions on the recent chooser dialog as well as
/// those for `GtkDialog`.
/// 
/// Note that `GtkRecentChooserDialog` does not have any methods of its own.
/// Instead, you should use the functions that work on a `GtkRecentChooser`.
/// 
/// ## Typical usage ## <a name="gtkrecentchooser-typical-usage"></a>
/// 
/// In the simplest of cases, you can use the following code to use
/// a `GtkRecentChooserDialog` to select a recently used file:
/// 
/// (C Language Example):
/// ```C
/// GtkWidget *dialog;
/// gint res;
/// 
/// dialog = gtk_recent_chooser_dialog_new ("Recent Documents",
///                                         parent_window,
///                                         _("_Cancel"),
///                                         GTK_RESPONSE_CANCEL,
///                                         _("_Open"),
///                                         GTK_RESPONSE_ACCEPT,
///                                         NULL);
/// 
/// res = gtk_dialog_run (GTK_DIALOG (dialog));
/// if (res == GTK_RESPONSE_ACCEPT)
///   {
///     GtkRecentInfo *info;
///     GtkRecentChooser *chooser = GTK_RECENT_CHOOSER (dialog);
/// 
///     info = gtk_recent_chooser_get_current_item (chooser);
///     open_file (gtk_recent_info_get_uri (info));
///     gtk_recent_info_unref (info);
///   }
/// 
/// gtk_widget_destroy (dialog);
/// ```
/// 
/// Recently used files are supported since GTK+ 2.10.
public struct RecentChooserDialogRef: RecentChooserDialogProtocol {
    /// Untyped pointer to the underlying `GtkRecentChooserDialog` instance.
    /// For type-safe access, use the generated, typed pointer `recent_chooser_dialog_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RecentChooserDialogRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRecentChooserDialog>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RecentChooserDialogProtocol`
    init<T: RecentChooserDialogProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    
    // *** new() is not available because it has a varargs (...) parameter!



    // *** newForManager() is not available because it has a varargs (...) parameter!


    // *** newForManager() is not available because it has a varargs (...) parameter!

}

/// The `RecentChooserDialog` type acts as a reference-counted owner of an underlying `GtkRecentChooserDialog` instance.
/// It provides the methods that can operate on this data type through `RecentChooserDialogProtocol` conformance.
/// Use `RecentChooserDialog` as a strong reference or owner of a `GtkRecentChooserDialog` instance.
///
/// `GtkRecentChooserDialog` is a dialog box suitable for displaying the recently
/// used documents.  This widgets works by putting a `GtkRecentChooserWidget` inside
/// a `GtkDialog`.  It exposes the `GtkRecentChooserIface` interface, so you can use
/// all the `GtkRecentChooser` functions on the recent chooser dialog as well as
/// those for `GtkDialog`.
/// 
/// Note that `GtkRecentChooserDialog` does not have any methods of its own.
/// Instead, you should use the functions that work on a `GtkRecentChooser`.
/// 
/// ## Typical usage ## <a name="gtkrecentchooser-typical-usage"></a>
/// 
/// In the simplest of cases, you can use the following code to use
/// a `GtkRecentChooserDialog` to select a recently used file:
/// 
/// (C Language Example):
/// ```C
/// GtkWidget *dialog;
/// gint res;
/// 
/// dialog = gtk_recent_chooser_dialog_new ("Recent Documents",
///                                         parent_window,
///                                         _("_Cancel"),
///                                         GTK_RESPONSE_CANCEL,
///                                         _("_Open"),
///                                         GTK_RESPONSE_ACCEPT,
///                                         NULL);
/// 
/// res = gtk_dialog_run (GTK_DIALOG (dialog));
/// if (res == GTK_RESPONSE_ACCEPT)
///   {
///     GtkRecentInfo *info;
///     GtkRecentChooser *chooser = GTK_RECENT_CHOOSER (dialog);
/// 
///     info = gtk_recent_chooser_get_current_item (chooser);
///     open_file (gtk_recent_info_get_uri (info));
///     gtk_recent_info_unref (info);
///   }
/// 
/// gtk_widget_destroy (dialog);
/// ```
/// 
/// Recently used files are supported since GTK+ 2.10.
open class RecentChooserDialog: Dialog, RecentChooserDialogProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RecentChooserDialog` instance.
    public init(_ op: UnsafeMutablePointer<GtkRecentChooserDialog>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `RecentChooserDialogProtocol`
    /// Will retain `GtkRecentChooserDialog`.
    public convenience init<T: RecentChooserDialogProtocol>(_ other: T) {
        self.init(cast(other.recent_chooser_dialog_ptr))
        g_object_ref(cast(recent_chooser_dialog_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRecentChooserDialog.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRecentChooserDialog.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRecentChooserDialog.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRecentChooserDialog>(opaquePointer))
    }


    // *** new() is not available because it has a varargs (...) parameter!



    // *** newForManager() is not available because it has a varargs (...) parameter!



    // *** newForManager() is not available because it has a varargs (...) parameter!


}

public enum RecentChooserDialogPropertyName: String, PropertyNameProtocol {
    /// Whether the window should receive the input focus.
    case acceptFocus = "accept-focus"
    case accessibleComponentLayer = "accessible-component-layer"
    case accessibleComponentMdiZorder = "accessible-component-mdi-zorder"
    case accessibleDescription = "accessible-description"
    case accessibleHypertextNlinks = "accessible-hypertext-nlinks"
    case accessibleName = "accessible-name"
    case accessibleParent = "accessible-parent"
    case accessibleRole = "accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case accessibleTableCaption = "accessible-table-caption"
    case accessibleTableCaptionObject = "accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case accessibleTableColumnDescription = "accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case accessibleTableColumnHeader = "accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case accessibleTableRowDescription = "accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case accessibleTableRowHeader = "accessible-table-row-header"
    case accessibleTableSummary = "accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case accessibleValue = "accessible-value"
    case appPaintable = "app-paintable"
    /// The `GtkApplication` associated with the window.
    /// 
    /// The application will be kept alive for at least as long as it
    /// has any windows associated with it (see `g_application_hold()`
    /// for a way to keep it alive without windows).
    /// 
    /// Normally, the connection between the application and the window
    /// will remain until the window is destroyed, but you can explicitly
    /// remove it by setting the :application property to `nil`.
    case application = "application"
    /// The widget to which this window is attached.
    /// See `gtk_window_set_attached_to()`.
    /// 
    /// Examples of places where specifying this relation is useful are
    /// for instance a `GtkMenu` created by a `GtkComboBox`, a completion
    /// popup window created by `GtkEntry` or a typeahead search entry
    /// created by `GtkTreeView`.
    case attachedTo = "attached-to"
    case borderWidth = "border-width"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case child = "child"
    case compositeChild = "composite-child"
    /// Whether the window should be decorated by the window manager.
    case decorated = "decorated"
    case defaultHeight = "default-height"
    case defaultWidth = "default-width"
    /// Whether the window frame should have a close button.
    case deletable = "deletable"
    case destroyWithParent = "destroy-with-parent"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
    case events = "events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case expand = "expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case focusOnClick = "focus-on-click"
    /// Whether the window should receive the input focus when mapped.
    case focusOnMap = "focus-on-map"
    /// Whether 'focus rectangles' are currently visible in this window.
    /// 
    /// This property is maintained by GTK+ based on user input
    /// and should not be set by applications.
    case focusVisible = "focus-visible"
    /// The window gravity of the window. See `gtk_window_move()` and `GdkGravity` for
    /// more details about window gravity.
    case gravity = "gravity"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Whether the window has a corner resize grip.
    /// 
    /// Note that the resize grip is only shown if the window is
    /// actually resizable and not maximized. Use
    /// `GtkWindow:resize`-grip-visible to find out if the resize
    /// grip is currently shown.
    ///
    /// **has-resize-grip is deprecated:**
    /// Resize grips have been removed.
    case hasResizeGrip = "has-resize-grip"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case hasToplevelFocus = "has-toplevel-focus"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    /// Whether the titlebar should be hidden during maximization.
    case hideTitlebarWhenMaximized = "hide-titlebar-when-maximized"
    case icon = "icon"
    /// The :icon-name property specifies the name of the themed icon to
    /// use as the window icon. See `GtkIconTheme` for more details.
    case iconName = "icon-name"
    case isActive = "is-active"
    case isFocus = "is-focus"
    case isMaximized = "is-maximized"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginTop = "margin-top"
    /// Whether mnemonics are currently visible in this window.
    /// 
    /// This property is maintained by GTK+ based on user input,
    /// and should not be set by applications.
    case mnemonicsVisible = "mnemonics-visible"
    case modal = "modal"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case receivesDefault = "receives-default"
    case resizable = "resizable"
    /// Whether a corner resize grip is currently shown.
    ///
    /// **resize-grip-visible is deprecated:**
    /// Resize grips have been removed.
    case resizeGripVisible = "resize-grip-visible"
    case resizeMode = "resize-mode"
    case role = "role"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case screen = "screen"
    case sensitive = "sensitive"
    case skipPagerHint = "skip-pager-hint"
    case skipTaskbarHint = "skip-taskbar-hint"
    /// The :startup-id is a write-only property for setting window's
    /// startup notification identifier. See `gtk_window_set_startup_id()`
    /// for more details.
    case startupID = "startup-id"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    case title = "title"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// The transient parent of the window. See `gtk_window_set_transient_for()` for
    /// more details about transient windows.
    case transientFor = "transient-for"
    case type = "type"
    case typeHint = "type-hint"
    case urgencyHint = "urgency-hint"
    /// `true` if the dialog uses a `GtkHeaderBar` for action buttons
    /// instead of the action-area.
    /// 
    /// For technical reasons, this property is declared as an integer
    /// property, but you should only set it to `true` or `false`.
    case useHeaderBar = "use-header-bar"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
    case windowPosition = "window-position"
}

public extension RecentChooserDialogProtocol {
    /// Bind a `RecentChooserDialogPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: RecentChooserDialogPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(recent_chooser_dialog_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }
}

public enum RecentChooserDialogSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// The `activate`-default signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user activates the default widget
    /// of `window`.
    case activateDefault = "activate-default"
    /// The `activate`-focus signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user activates the currently
    /// focused widget of `window`.
    case activateFocus = "activate-focus"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    case add = "add"
    /// The `button`-press-event signal will be emitted when a button
    /// (typically from a mouse) is pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonPressEvent = "button-press-event"
    /// The `button`-release-event signal will be emitted when a button
    /// (typically from a mouse) is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonReleaseEvent = "button-release-event"
    /// Determines whether an accelerator that activates the signal
    /// identified by `signal_id` can currently be activated.
    /// This signal is present to allow applications and derived
    /// widgets to override the default `GtkWidget` handling
    /// for determining whether an accelerator can be activated.
    case canActivateAccel = "can-activate-accel"
    case checkResize = "check-resize"
    /// The `child`-notify signal is emitted for each
    /// [child property](#child-properties)  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// The `close` signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user uses a keybinding to close
    /// the dialog.
    /// 
    /// The default binding for this signal is the Escape key.
    case close = "close"
    /// The `composited`-changed signal is emitted when the composited
    /// status of `widgets` screen changes.
    /// See `gdk_screen_is_composited()`.
    ///
    /// **composited-changed is deprecated:**
    /// Use GdkScreen::composited-changed instead.
    case compositedChanged = "composited-changed"
    /// The `configure`-event signal will be emitted when the size, position or
    /// stacking of the `widget`'s window has changed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case configureEvent = "configure-event"
    /// Emitted when a redirected window belonging to `widget` gets drawn into.
    /// The region/area members of the event shows what area of the redirected
    /// drawable was drawn into.
    case damageEvent = "damage-event"
    /// The `delete`-event signal is emitted if a user requests that
    /// a toplevel window is closed. The default handler for this signal
    /// destroys the window. Connecting `gtk_widget_hide_on_delete()` to
    /// this signal will cause the window to be hidden instead, so that
    /// it can later be shown again without reconstructing it.
    case deleteEvent = "delete-event"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The `destroy`-event signal is emitted when a `GdkWindow` is destroyed.
    /// You rarely get this signal, because most widgets disconnect themselves
    /// from their window before they destroy it, so no widget owns the
    /// window at destroy time.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case destroyEvent = "destroy-event"
    /// The `direction`-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The `drag`-begin signal is emitted on the drag source when a drag is
    /// started. A typical reason to connect to this signal is to set up a
    /// custom drag icon with e.g. `gtk_drag_source_set_icon_pixbuf()`.
    /// 
    /// Note that some widgets set up a drag icon in the default handler of
    /// this signal, so you may have to use `g_signal_connect_after()` to
    /// override what the default handler did.
    case dragBegin = "drag-begin"
    /// The `drag`-data-delete signal is emitted on the drag source when a drag
    /// with the action `GDK_ACTION_MOVE` is successfully completed. The signal
    /// handler is responsible for deleting the data that has been dropped. What
    /// "delete" means depends on the context of the drag operation.
    case dragDataDelete = "drag-data-delete"
    /// The `drag`-data-get signal is emitted on the drag source when the drop
    /// site requests the data which is dragged. It is the responsibility of
    /// the signal handler to fill `data` with the data in the format which
    /// is indicated by `info`. See `gtk_selection_data_set()` and
    /// `gtk_selection_data_set_text()`.
    case dragDataGet = "drag-data-get"
    /// The `drag`-data-received signal is emitted on the drop site when the
    /// dragged data has been received. If the data was received in order to
    /// determine whether the drop will be accepted, the handler is expected
    /// to call `gdk_drag_status()` and not finish the drag.
    /// If the data was received in response to a `GtkWidget::drag`-drop signal
    /// (and this is the last target to be received), the handler for this
    /// signal is expected to process the received data and then call
    /// `gtk_drag_finish()`, setting the `success` parameter depending on
    /// whether the data was processed successfully.
    /// 
    /// Applications must create some means to determine why the signal was emitted
    /// and therefore whether to call `gdk_drag_status()` or `gtk_drag_finish()`.
    /// 
    /// The handler may inspect the selected action with
    /// `gdk_drag_context_get_selected_action()` before calling
    /// `gtk_drag_finish()`, e.g. to implement `GDK_ACTION_ASK` as
    /// shown in the following example:
    /// (C Language Example):
    /// ```C
    /// void
    /// drag_data_received (GtkWidget          *widget,
    ///                     GdkDragContext     *context,
    ///                     gint                x,
    ///                     gint                y,
    ///                     GtkSelectionData   *data,
    ///                     guint               info,
    ///                     guint               time)
    /// {
    ///   if ((data->length >= 0) && (data->format == 8))
    ///     {
    ///       GdkDragAction action;
    /// 
    ///       // handle data here
    /// 
    ///       action = gdk_drag_context_get_selected_action (context);
    ///       if (action == GDK_ACTION_ASK)
    ///         {
    ///           GtkWidget *dialog;
    ///           gint response;
    /// 
    ///           dialog = gtk_message_dialog_new (NULL,
    ///                                            GTK_DIALOG_MODAL |
    ///                                            GTK_DIALOG_DESTROY_WITH_PARENT,
    ///                                            GTK_MESSAGE_INFO,
    ///                                            GTK_BUTTONS_YES_NO,
    ///                                            "Move the data ?\n");
    ///           response = gtk_dialog_run (GTK_DIALOG (dialog));
    ///           gtk_widget_destroy (dialog);
    /// 
    ///           if (response == GTK_RESPONSE_YES)
    ///             action = GDK_ACTION_MOVE;
    ///           else
    ///             action = GDK_ACTION_COPY;
    ///          }
    /// 
    ///       gtk_drag_finish (context, TRUE, action == GDK_ACTION_MOVE, time);
    ///     }
    ///   else
    ///     gtk_drag_finish (context, FALSE, FALSE, time);
    ///  }
    /// ```
    /// 
    case dragDataReceived = "drag-data-received"
    /// The `drag`-drop signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the cursor position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// Otherwise, the handler returns `true`. In this case, the handler must
    /// ensure that `gtk_drag_finish()` is called to let the source know that
    /// the drop is done. The call to `gtk_drag_finish()` can be done either
    /// directly or in a `GtkWidget::drag`-data-received handler which gets
    /// triggered by calling `gtk_drag_get_data()` to receive the data for one
    /// or more of the supported targets.
    case dragDrop = "drag-drop"
    /// The `drag`-end signal is emitted on the drag source when a drag is
    /// finished.  A typical reason to connect to this signal is to undo
    /// things done in `GtkWidget::drag`-begin.
    case dragEnd = "drag-end"
    /// The `drag`-failed signal is emitted on the drag source when a drag has
    /// failed. The signal handler may hook custom code to handle a failed DnD
    /// operation based on the type of error, it returns `true` is the failure has
    /// been already handled (not showing the default "drag operation failed"
    /// animation), otherwise it returns `false`.
    case dragFailed = "drag-failed"
    /// The `drag`-leave signal is emitted on the drop site when the cursor
    /// leaves the widget. A typical reason to connect to this signal is to
    /// undo things done in `GtkWidget::drag`-motion, e.g. undo highlighting
    /// with `gtk_drag_unhighlight()`.
    /// 
    /// 
    /// Likewise, the `GtkWidget::drag`-leave signal is also emitted before the
    /// `drag`-drop signal, for instance to allow cleaning up of a preview item
    /// created in the `GtkWidget::drag`-motion signal handler.
    case dragLeave = "drag-leave"
    /// The `drag`-motion signal is emitted on the drop site when the user
    /// moves the cursor over the widget during a drag. The signal handler
    /// must determine whether the cursor position is in a drop zone or not.
    /// If it is not in a drop zone, it returns `false` and no further processing
    /// is necessary. Otherwise, the handler returns `true`. In this case, the
    /// handler is responsible for providing the necessary information for
    /// displaying feedback to the user, by calling `gdk_drag_status()`.
    /// 
    /// If the decision whether the drop will be accepted or rejected can't be
    /// made based solely on the cursor position and the type of the data, the
    /// handler may inspect the dragged data by calling `gtk_drag_get_data()` and
    /// defer the `gdk_drag_status()` call to the `GtkWidget::drag`-data-received
    /// handler. Note that you must pass `GTK_DEST_DEFAULT_DROP`,
    /// `GTK_DEST_DEFAULT_MOTION` or `GTK_DEST_DEFAULT_ALL` to `gtk_drag_dest_set()`
    /// when using the drag-motion signal that way.
    /// 
    /// Also note that there is no drag-enter signal. The drag receiver has to
    /// keep track of whether he has received any drag-motion signals since the
    /// last `GtkWidget::drag`-leave and if not, treat the drag-motion signal as
    /// an "enter" signal. Upon an "enter", the handler will typically highlight
    /// the drop site with `gtk_drag_highlight()`.
    /// (C Language Example):
    /// ```C
    /// static void
    /// drag_motion (GtkWidget      *widget,
    ///              GdkDragContext *context,
    ///              gint            x,
    ///              gint            y,
    ///              guint           time)
    /// {
    ///   GdkAtom target;
    /// 
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (!private_data->drag_highlight)
    ///    {
    ///      private_data->drag_highlight = 1;
    ///      gtk_drag_highlight (widget);
    ///    }
    /// 
    ///   target = gtk_drag_dest_find_target (widget, context, NULL);
    ///   if (target == GDK_NONE)
    ///     gdk_drag_status (context, 0, time);
    ///   else
    ///    {
    ///      private_data->pending_status
    ///         = gdk_drag_context_get_suggested_action (context);
    ///      gtk_drag_get_data (widget, context, target, time);
    ///    }
    /// 
    ///   return TRUE;
    /// }
    /// 
    /// static void
    /// drag_data_received (GtkWidget        *widget,
    ///                     GdkDragContext   *context,
    ///                     gint              x,
    ///                     gint              y,
    ///                     GtkSelectionData *selection_data,
    ///                     guint             info,
    ///                     guint             time)
    /// {
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (private_data->suggested_action)
    ///    {
    ///      private_data->suggested_action = 0;
    /// 
    ///      // We are getting this data due to a request in drag_motion,
    ///      // rather than due to a request in drag_drop, so we are just
    ///      // supposed to call gdk_drag_status(), not actually paste in
    ///      // the data.
    /// 
    ///      str = gtk_selection_data_get_text (selection_data);
    ///      if (!data_is_acceptable (str))
    ///        gdk_drag_status (context, 0, time);
    ///      else
    ///        gdk_drag_status (context,
    ///                         private_data->suggested_action,
    ///                         time);
    ///    }
    ///   else
    ///    {
    ///      // accept the drop
    ///    }
    /// }
    /// ```
    /// 
    case dragMotion = "drag-motion"
    /// This signal is emitted when a widget is supposed to render itself.
    /// The `widget`'s top left corner must be painted at the origin of
    /// the passed in context and be sized to the values returned by
    /// `gtk_widget_get_allocated_width()` and
    /// `gtk_widget_get_allocated_height()`.
    /// 
    /// Signal handlers connected to this signal can modify the cairo
    /// context passed as `cr` in any way they like and don't need to
    /// restore it. The signal emission takes care of calling `cairo_save()`
    /// before and `cairo_restore()` after invoking the handler.
    /// 
    /// The signal handler will get a `cr` with a clip region already set to the
    /// widget's dirty region, i.e. to the area that needs repainting.  Complicated
    /// widgets that want to avoid redrawing themselves completely can get the full
    /// extents of the clip region with `gdk_cairo_get_clip_rectangle()`, or they can
    /// get a finer-grained representation of the dirty region with
    /// `cairo_copy_clip_rectangle_list()`.
    case draw = "draw"
    /// The `enable`-debugging signal is a [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user enables or disables interactive
    /// debugging. When `toggle` is `true`, interactive debugging is toggled
    /// on or off, when it is `false`, the debugger will be pointed at the
    /// widget under the pointer.
    /// 
    /// The default bindings for this signal are Ctrl-Shift-I
    /// and Ctrl-Shift-D.
    case enableDebugging = "enable-debugging"
    /// The `enter`-notify-event will be emitted when the pointer enters
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_ENTER_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case enterNotifyEvent = "enter-notify-event"
    /// The GTK+ main loop will emit three signals for each GDK event delivered
    /// to a widget: one generic `event` signal, another, more specific,
    /// signal that matches the type of event delivered (e.g.
    /// `GtkWidget::key`-press-event) and finally a generic
    /// `GtkWidget::event`-after signal.
    case event = "event"
    /// After the emission of the `GtkWidget::event` signal and (optionally)
    /// the second more specific signal, `event`-after will be emitted
    /// regardless of the previous two signals handlers return values.
    case eventAfter = "event-after"
    case focus = "focus"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The `focus`-in-event signal will be emitted when the keyboard focus
    /// enters the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusInEvent = "focus-in-event"
    /// The `focus`-out-event signal will be emitted when the keyboard focus
    /// leaves the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusOutEvent = "focus-out-event"
    /// Emitted when a pointer or keyboard grab on a window belonging
    /// to `widget` gets broken.
    /// 
    /// On X11, this happens when the grab window becomes unviewable
    /// (i.e. it or one of its ancestors is unmapped), or if the same
    /// application grabs the pointer or keyboard again.
    case grabBrokenEvent = "grab-broken-event"
    case grabFocus = "grab-focus"
    /// The `grab`-notify signal is emitted when a widget becomes
    /// shadowed by a GTK+ grab (not a pointer or keyboard grab) on
    /// another widget, or when it becomes unshadowed due to a grab
    /// being removed.
    /// 
    /// A widget is shadowed by a `gtk_grab_add()` when the topmost
    /// grab widget in the grab stack of its window group is not
    /// its ancestor.
    case grabNotify = "grab-notify"
    /// The `hide` signal is emitted when `widget` is hidden, for example with
    /// `gtk_widget_hide()`.
    case hide = "hide"
    /// The `hierarchy`-changed signal is emitted when the
    /// anchored state of a widget changes. A widget is
    /// “anchored” when its toplevel
    /// ancestor is a `GtkWindow`. This signal is emitted when
    /// a widget changes from un-anchored to anchored or vice-versa.
    case hierarchyChanged = "hierarchy-changed"
    /// The `key`-press-event signal is emitted when a key is pressed. The signal
    /// emission will reoccur at the key-repeat rate when the key is kept pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyPressEvent = "key-press-event"
    /// The `key`-release-event signal is emitted when a key is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyReleaseEvent = "key-release-event"
    /// Gets emitted if keyboard navigation fails.
    /// See `gtk_widget_keynav_failed()` for details.
    case keynavFailed = "keynav-failed"
    /// The `keys`-changed signal gets emitted when the set of accelerators
    /// or mnemonics that are associated with `window` changes.
    case keysChanged = "keys-changed"
    /// The `leave`-notify-event will be emitted when the pointer leaves
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_LEAVE_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case leaveNotifyEvent = "leave-notify-event"
    /// The `map` signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// `gtk_widget_set_visible()`) and all its parents up to the toplevel widget
    /// are also visible. Once the map has occurred, `GtkWidget::map`-event will
    /// be emitted.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget::unmap`.
    case map = "map"
    /// The `map`-event signal will be emitted when the `widget`'s window is
    /// mapped. A window is mapped when it becomes visible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case mapEvent = "map-event"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// The `motion`-notify-event signal is emitted when the pointer moves
    /// over the widget's `GdkWindow`.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_POINTER_MOTION_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case motionNotifyEvent = "motion-notify-event"
    case moveFocus = "move-focus"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The `parent`-set signal is emitted when a new parent
    /// has been set on a widget.
    case parentSet = "parent-set"
    /// This signal gets emitted whenever a widget should pop up a context
    /// menu. This usually happens through the standard key binding mechanism;
    /// by pressing a certain key while a widget is focused, the user can cause
    /// the widget to pop up a menu.  For example, the `GtkEntry` widget creates
    /// a menu with clipboard commands. See the
    /// [Popup Menu Migration Checklist](#checklist-popup-menu)
    /// for an example of how to use this signal.
    case popupMenu = "popup-menu"
    /// The signal "property-change" is emitted when an object's property
    /// value changes. `arg1` contains an `AtkPropertyValues` with the name
    /// and the new value of the property whose value has changed. Note
    /// that, as with GObject notify, getting this signal does not
    /// guarantee that the value of the property has actually changed; it
    /// may also be emitted when the setter of the property is called to
    /// reinstate the previous value.
    /// 
    /// Toolkit implementor note: ATK implementors should use
    /// `g_object_notify()` to emit property-changed
    /// notifications. `AtkObject::property`-changed is needed by the
    /// implementation of `atk_add_global_event_listener()` because GObject
    /// notify doesn't support emission hooks.
    case propertyChange = "property-change"
    /// The `property`-notify-event signal will be emitted when a property on
    /// the `widget`'s window has been changed or deleted.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROPERTY_CHANGE_MASK` mask.
    case propertyNotifyEvent = "property-notify-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_IN_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityInEvent = "proximity-in-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_OUT_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityOutEvent = "proximity-out-event"
    /// Emitted when `GtkWidget:has`-tooltip is `true` and the hover timeout
    /// has expired with the cursor hovering "above" `widget`; or emitted when `widget` got
    /// focus in keyboard mode.
    /// 
    /// Using the given coordinates, the signal handler should determine
    /// whether a tooltip should be shown for `widget`. If this is the case
    /// `true` should be returned, `false` otherwise.  Note that if
    /// `keyboard_mode` is `true`, the values of `x` and `y` are undefined and
    /// should not be used.
    /// 
    /// The signal handler is free to manipulate `tooltip` with the therefore
    /// destined function calls.
    case queryTooltip = "query-tooltip"
    /// The `realize` signal is emitted when `widget` is associated with a
    /// `GdkWindow`, which means that `gtk_widget_realize()` has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    case remove = "remove"
    /// Emitted when an action widget is clicked, the dialog receives a
    /// delete event, or the application programmer calls `gtk_dialog_response()`.
    /// On a delete event, the response ID is `GTK_RESPONSE_DELETE_EVENT`.
    /// Otherwise, it depends on which action widget was clicked.
    case response = "response"
    /// The `screen`-changed signal gets emitted when the
    /// screen of a widget has changed.
    case screenChanged = "screen-changed"
    /// The `scroll`-event signal is emitted when a button in the 4 to 7
    /// range is pressed. Wheel mice are usually configured to generate
    /// button press events for buttons 4 and 5 when the wheel is turned.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_SCROLL_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case scrollEvent = "scroll-event"
    /// The `selection`-clear-event signal will be emitted when the
    /// the `widget`'s window has lost ownership of a selection.
    case selectionClearEvent = "selection-clear-event"
    case selectionGet = "selection-get"
    case selectionNotifyEvent = "selection-notify-event"
    case selectionReceived = "selection-received"
    /// The `selection`-request-event signal will be emitted when
    /// another client requests ownership of the selection owned by
    /// the `widget`'s window.
    case selectionRequestEvent = "selection-request-event"
    case setFocus = "set-focus"
    case setFocusChild = "set-focus-child"
    /// The `show` signal is emitted when `widget` is shown, for example with
    /// `gtk_widget_show()`.
    case show = "show"
    case showHelp = "show-help"
    case sizeAllocate = "size-allocate"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The `state`-changed signal is emitted when the widget state changes.
    /// See `gtk_widget_get_state()`.
    ///
    /// **state-changed is deprecated:**
    /// Use #GtkWidget::state-flags-changed instead.
    case stateChanged = "state-changed"
    /// The `state`-flags-changed signal is emitted when the widget state
    /// changes, see `gtk_widget_get_state_flags()`.
    case stateFlagsChanged = "state-flags-changed"
    /// The `style`-set signal is emitted when a new style has been set
    /// on a widget. Note that style-modifying functions like
    /// `gtk_widget_modify_base()` also cause this signal to be emitted.
    /// 
    /// Note that this signal is emitted for changes to the deprecated
    /// `GtkStyle`. To track changes to the `GtkStyleContext` associated
    /// with a widget, use the `GtkWidget::style`-updated signal.
    ///
    /// **style-set is deprecated:**
    /// Use the #GtkWidget::style-updated signal
    case styleSet = "style-set"
    /// The `style`-updated signal is a convenience signal that is emitted when the
    /// `GtkStyleContext::changed` signal is emitted on the `widget`'s associated
    /// `GtkStyleContext` as returned by `gtk_widget_get_style_context()`.
    /// 
    /// Note that style-modifying functions like `gtk_widget_override_color()` also
    /// cause this signal to be emitted.
    case styleUpdated = "style-updated"
    case touchEvent = "touch-event"
    /// The `unmap` signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The `unmap`-event signal will be emitted when the `widget`'s window is
    /// unmapped. A window is unmapped when it becomes invisible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case unmapEvent = "unmap-event"
    /// The `unrealize` signal is emitted when the `GdkWindow` associated with
    /// `widget` is destroyed, which means that `gtk_widget_unrealize()` has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
    /// The `visibility`-notify-event will be emitted when the `widget`'s
    /// window is obscured or unobscured.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_VISIBILITY_NOTIFY_MASK` mask.
    ///
    /// **visibility-notify-event is deprecated:**
    /// Modern composited windowing systems with pervasive
    ///     transparency make it impossible to track the visibility of a window
    ///     reliably, so this signal can not be guaranteed to provide useful
    ///     information.
    case visibilityNotifyEvent = "visibility-notify-event"
    /// The "visible-data-changed" signal is emitted when the visual
    /// appearance of the object changed.
    case visibleDataChanged = "visible-data-changed"
    /// The `window`-state-event will be emitted when the state of the
    /// toplevel window associated to the `widget` changes.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable
    /// this mask automatically for all new windows.
    case windowStateEvent = "window-state-event"
    /// Whether the window should receive the input focus.
    case notifyAcceptFocus = "notify::accept-focus"
    case notifyAccessibleComponentLayer = "notify::accessible-component-layer"
    case notifyAccessibleComponentMdiZorder = "notify::accessible-component-mdi-zorder"
    case notifyAccessibleDescription = "notify::accessible-description"
    case notifyAccessibleHypertextNlinks = "notify::accessible-hypertext-nlinks"
    case notifyAccessibleName = "notify::accessible-name"
    case notifyAccessibleParent = "notify::accessible-parent"
    case notifyAccessibleRole = "notify::accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case notifyAccessibleTableCaption = "notify::accessible-table-caption"
    case notifyAccessibleTableCaptionObject = "notify::accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case notifyAccessibleTableColumnDescription = "notify::accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case notifyAccessibleTableColumnHeader = "notify::accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case notifyAccessibleTableRowDescription = "notify::accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case notifyAccessibleTableRowHeader = "notify::accessible-table-row-header"
    case notifyAccessibleTableSummary = "notify::accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case notifyAccessibleValue = "notify::accessible-value"
    case notifyAppPaintable = "notify::app-paintable"
    /// The `GtkApplication` associated with the window.
    /// 
    /// The application will be kept alive for at least as long as it
    /// has any windows associated with it (see `g_application_hold()`
    /// for a way to keep it alive without windows).
    /// 
    /// Normally, the connection between the application and the window
    /// will remain until the window is destroyed, but you can explicitly
    /// remove it by setting the :application property to `nil`.
    case notifyApplication = "notify::application"
    /// The widget to which this window is attached.
    /// See `gtk_window_set_attached_to()`.
    /// 
    /// Examples of places where specifying this relation is useful are
    /// for instance a `GtkMenu` created by a `GtkComboBox`, a completion
    /// popup window created by `GtkEntry` or a typeahead search entry
    /// created by `GtkTreeView`.
    case notifyAttachedTo = "notify::attached-to"
    case notifyBorderWidth = "notify::border-width"
    case notifyCanDefault = "notify::can-default"
    case notifyCanFocus = "notify::can-focus"
    case notifyChild = "notify::child"
    case notifyCompositeChild = "notify::composite-child"
    /// Whether the window should be decorated by the window manager.
    case notifyDecorated = "notify::decorated"
    case notifyDefaultHeight = "notify::default-height"
    case notifyDefaultWidth = "notify::default-width"
    /// Whether the window frame should have a close button.
    case notifyDeletable = "notify::deletable"
    case notifyDestroyWithParent = "notify::destroy-with-parent"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case notifyDoubleBuffered = "notify::double-buffered"
    case notifyEvents = "notify::events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case notifyExpand = "notify::expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// Whether the window should receive the input focus when mapped.
    case notifyFocusOnMap = "notify::focus-on-map"
    /// Whether 'focus rectangles' are currently visible in this window.
    /// 
    /// This property is maintained by GTK+ based on user input
    /// and should not be set by applications.
    case notifyFocusVisible = "notify::focus-visible"
    /// The window gravity of the window. See `gtk_window_move()` and `GdkGravity` for
    /// more details about window gravity.
    case notifyGravity = "notify::gravity"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case notifyHalign = "notify::halign"
    case notifyHasDefault = "notify::has-default"
    case notifyHasFocus = "notify::has-focus"
    /// Whether the window has a corner resize grip.
    /// 
    /// Note that the resize grip is only shown if the window is
    /// actually resizable and not maximized. Use
    /// `GtkWindow:resize`-grip-visible to find out if the resize
    /// grip is currently shown.
    ///
    /// **has-resize-grip is deprecated:**
    /// Resize grips have been removed.
    case notifyHasResizeGrip = "notify::has-resize-grip"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHasToplevelFocus = "notify::has-toplevel-focus"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case notifyHexpandSet = "notify::hexpand-set"
    /// Whether the titlebar should be hidden during maximization.
    case notifyHideTitlebarWhenMaximized = "notify::hide-titlebar-when-maximized"
    case notifyIcon = "notify::icon"
    /// The :icon-name property specifies the name of the themed icon to
    /// use as the window icon. See `GtkIconTheme` for more details.
    case notifyIconName = "notify::icon-name"
    case notifyIsActive = "notify::is-active"
    case notifyIsFocus = "notify::is-focus"
    case notifyIsMaximized = "notify::is-maximized"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case notifyMargin = "notify::margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case notifyMarginLeft = "notify::margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case notifyMarginRight = "notify::margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginTop = "notify::margin-top"
    /// Whether mnemonics are currently visible in this window.
    /// 
    /// This property is maintained by GTK+ based on user input,
    /// and should not be set by applications.
    case notifyMnemonicsVisible = "notify::mnemonics-visible"
    case notifyModal = "notify::modal"
    case notifyName = "notify::name"
    case notifyNoShowAll = "notify::no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case notifyOpacity = "notify::opacity"
    case notifyParent = "notify::parent"
    case notifyReceivesDefault = "notify::receives-default"
    case notifyResizable = "notify::resizable"
    /// Whether a corner resize grip is currently shown.
    ///
    /// **resize-grip-visible is deprecated:**
    /// Resize grips have been removed.
    case notifyResizeGripVisible = "notify::resize-grip-visible"
    case notifyResizeMode = "notify::resize-mode"
    case notifyRole = "notify::role"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifyScreen = "notify::screen"
    case notifySensitive = "notify::sensitive"
    case notifySkipPagerHint = "notify::skip-pager-hint"
    case notifySkipTaskbarHint = "notify::skip-taskbar-hint"
    /// The :startup-id is a write-only property for setting window's
    /// startup notification identifier. See `gtk_window_set_startup_id()`
    /// for more details.
    case notifyStartupID = "notify::startup-id"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case notifyStyle = "notify::style"
    case notifyTitle = "notify::title"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    /// The transient parent of the window. See `gtk_window_set_transient_for()` for
    /// more details about transient windows.
    case notifyTransientFor = "notify::transient-for"
    case notifyType_ = "notify::type"
    case notifyTypeHint = "notify::type-hint"
    case notifyUrgencyHint = "notify::urgency-hint"
    /// `true` if the dialog uses a `GtkHeaderBar` for action buttons
    /// instead of the action-area.
    /// 
    /// For technical reasons, this property is declared as an integer
    /// property, but you should only set it to `true` or `false`.
    case notifyUseHeaderBar = "notify::use-header-bar"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    case notifyWidthRequest = "notify::width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case notifyWindow = "notify::window"
    case notifyWindowPosition = "notify::window-position"
}

public extension RecentChooserDialogProtocol {
    /// Connect a `RecentChooserDialogSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: RecentChooserDialogSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(recent_chooser_dialog_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension RecentChooserDialogProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRecentChooserDialog` instance.
    var recent_chooser_dialog_ptr: UnsafeMutablePointer<GtkRecentChooserDialog> { return ptr.assumingMemoryBound(to: GtkRecentChooserDialog.self) }

}



// MARK: - RecentChooserMenu Class

/// The `RecentChooserMenuProtocol` protocol exposes the methods and properties of an underlying `GtkRecentChooserMenu` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RecentChooserMenu`.
/// Alternatively, use `RecentChooserMenuRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkRecentChooserMenu` is a widget suitable for displaying recently used files
/// inside a menu.  It can be used to set a sub-menu of a `GtkMenuItem` using
/// `gtk_menu_item_set_submenu()`, or as the menu of a `GtkMenuToolButton`.
/// 
/// Note that `GtkRecentChooserMenu` does not have any methods of its own. Instead,
/// you should use the functions that work on a `GtkRecentChooser`.
/// 
/// Note also that `GtkRecentChooserMenu` does not support multiple filters, as it
/// has no way to let the user choose between them as the `GtkRecentChooserWidget`
/// and `GtkRecentChooserDialog` widgets do. Thus using `gtk_recent_chooser_add_filter()`
/// on a `GtkRecentChooserMenu` widget will yield the same effects as using
/// `gtk_recent_chooser_set_filter()`, replacing any currently set filter
/// with the supplied filter; `gtk_recent_chooser_remove_filter()` will remove
/// any currently set `GtkRecentFilter` object and will unset the current filter;
/// `gtk_recent_chooser_list_filters()` will return a list containing a single
/// `GtkRecentFilter` object.
/// 
/// Recently used files are supported since GTK+ 2.10.
public protocol RecentChooserMenuProtocol: MenuProtocol, ActivatableProtocol, RecentChooserProtocol {
    /// Untyped pointer to the underlying `GtkRecentChooserMenu` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRecentChooserMenu` instance.
    var recent_chooser_menu_ptr: UnsafeMutablePointer<GtkRecentChooserMenu> { get }
}

/// The `RecentChooserMenuRef` type acts as a lightweight Swift reference to an underlying `GtkRecentChooserMenu` instance.
/// It exposes methods that can operate on this data type through `RecentChooserMenuProtocol` conformance.
/// Use `RecentChooserMenuRef` only as an `unowned` reference to an existing `GtkRecentChooserMenu` instance.
///
/// `GtkRecentChooserMenu` is a widget suitable for displaying recently used files
/// inside a menu.  It can be used to set a sub-menu of a `GtkMenuItem` using
/// `gtk_menu_item_set_submenu()`, or as the menu of a `GtkMenuToolButton`.
/// 
/// Note that `GtkRecentChooserMenu` does not have any methods of its own. Instead,
/// you should use the functions that work on a `GtkRecentChooser`.
/// 
/// Note also that `GtkRecentChooserMenu` does not support multiple filters, as it
/// has no way to let the user choose between them as the `GtkRecentChooserWidget`
/// and `GtkRecentChooserDialog` widgets do. Thus using `gtk_recent_chooser_add_filter()`
/// on a `GtkRecentChooserMenu` widget will yield the same effects as using
/// `gtk_recent_chooser_set_filter()`, replacing any currently set filter
/// with the supplied filter; `gtk_recent_chooser_remove_filter()` will remove
/// any currently set `GtkRecentFilter` object and will unset the current filter;
/// `gtk_recent_chooser_list_filters()` will return a list containing a single
/// `GtkRecentFilter` object.
/// 
/// Recently used files are supported since GTK+ 2.10.
public struct RecentChooserMenuRef: RecentChooserMenuProtocol {
    /// Untyped pointer to the underlying `GtkRecentChooserMenu` instance.
    /// For type-safe access, use the generated, typed pointer `recent_chooser_menu_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RecentChooserMenuRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRecentChooserMenu>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RecentChooserMenuProtocol`
    init<T: RecentChooserMenuProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkRecentChooserMenu` widget.
    /// 
    /// This kind of widget shows the list of recently used resources as
    /// a menu, each item as a menu item.  Each item inside the menu might
    /// have an icon, representing its MIME type, and a number, for mnemonic
    /// access.
    /// 
    /// This widget implements the `GtkRecentChooser` interface.
    /// 
    /// This widget creates its own `GtkRecentManager` object.  See the
    /// `gtk_recent_chooser_menu_new_for_manager()` function to know how to create
    /// a `GtkRecentChooserMenu` widget bound to another `GtkRecentManager` object.
    init() {
        let rv = gtk_recent_chooser_menu_new()
        self.init(cast(rv))
    }

    /// Creates a new `GtkRecentChooserMenu` widget using `manager` as
    /// the underlying recently used resources manager.
    /// 
    /// This is useful if you have implemented your own recent manager,
    /// or if you have a customized instance of a `GtkRecentManager`
    /// object or if you wish to share a common `GtkRecentManager` object
    /// among multiple `GtkRecentChooser` widgets.
    init(manager: RecentManagerProtocol) {
        let rv = gtk_recent_chooser_menu_new_for_manager(cast(manager.ptr))
        self.init(cast(rv))
    }
    /// Creates a new `GtkRecentChooserMenu` widget using `manager` as
    /// the underlying recently used resources manager.
    /// 
    /// This is useful if you have implemented your own recent manager,
    /// or if you have a customized instance of a `GtkRecentManager`
    /// object or if you wish to share a common `GtkRecentManager` object
    /// among multiple `GtkRecentChooser` widgets.
    static func newFor(manager: RecentManagerProtocol) -> RecentChooserMenuRef! {
        let rv = gtk_recent_chooser_menu_new_for_manager(cast(manager.ptr))
        return rv.map { RecentChooserMenuRef(cast($0)) }
    }
}

/// The `RecentChooserMenu` type acts as a reference-counted owner of an underlying `GtkRecentChooserMenu` instance.
/// It provides the methods that can operate on this data type through `RecentChooserMenuProtocol` conformance.
/// Use `RecentChooserMenu` as a strong reference or owner of a `GtkRecentChooserMenu` instance.
///
/// `GtkRecentChooserMenu` is a widget suitable for displaying recently used files
/// inside a menu.  It can be used to set a sub-menu of a `GtkMenuItem` using
/// `gtk_menu_item_set_submenu()`, or as the menu of a `GtkMenuToolButton`.
/// 
/// Note that `GtkRecentChooserMenu` does not have any methods of its own. Instead,
/// you should use the functions that work on a `GtkRecentChooser`.
/// 
/// Note also that `GtkRecentChooserMenu` does not support multiple filters, as it
/// has no way to let the user choose between them as the `GtkRecentChooserWidget`
/// and `GtkRecentChooserDialog` widgets do. Thus using `gtk_recent_chooser_add_filter()`
/// on a `GtkRecentChooserMenu` widget will yield the same effects as using
/// `gtk_recent_chooser_set_filter()`, replacing any currently set filter
/// with the supplied filter; `gtk_recent_chooser_remove_filter()` will remove
/// any currently set `GtkRecentFilter` object and will unset the current filter;
/// `gtk_recent_chooser_list_filters()` will return a list containing a single
/// `GtkRecentFilter` object.
/// 
/// Recently used files are supported since GTK+ 2.10.
open class RecentChooserMenu: Menu, RecentChooserMenuProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RecentChooserMenu` instance.
    public init(_ op: UnsafeMutablePointer<GtkRecentChooserMenu>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `RecentChooserMenuProtocol`
    /// Will retain `GtkRecentChooserMenu`.
    public convenience init<T: RecentChooserMenuProtocol>(_ other: T) {
        self.init(cast(other.recent_chooser_menu_ptr))
        g_object_ref(cast(recent_chooser_menu_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRecentChooserMenu.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRecentChooserMenu.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRecentChooserMenu.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRecentChooserMenu>(opaquePointer))
    }

    /// Creates a new `GtkRecentChooserMenu` widget.
    /// 
    /// This kind of widget shows the list of recently used resources as
    /// a menu, each item as a menu item.  Each item inside the menu might
    /// have an icon, representing its MIME type, and a number, for mnemonic
    /// access.
    /// 
    /// This widget implements the `GtkRecentChooser` interface.
    /// 
    /// This widget creates its own `GtkRecentManager` object.  See the
    /// `gtk_recent_chooser_menu_new_for_manager()` function to know how to create
    /// a `GtkRecentChooserMenu` widget bound to another `GtkRecentManager` object.
    public convenience init() {
        let rv = gtk_recent_chooser_menu_new()
        self.init(cast(rv))
    }

    /// Creates a new `GtkRecentChooserMenu` widget using `manager` as
    /// the underlying recently used resources manager.
    /// 
    /// This is useful if you have implemented your own recent manager,
    /// or if you have a customized instance of a `GtkRecentManager`
    /// object or if you wish to share a common `GtkRecentManager` object
    /// among multiple `GtkRecentChooser` widgets.
    public convenience init(manager: RecentManagerProtocol) {
        let rv = gtk_recent_chooser_menu_new_for_manager(cast(manager.ptr))
        self.init(cast(rv))
    }

    /// Creates a new `GtkRecentChooserMenu` widget using `manager` as
    /// the underlying recently used resources manager.
    /// 
    /// This is useful if you have implemented your own recent manager,
    /// or if you have a customized instance of a `GtkRecentManager`
    /// object or if you wish to share a common `GtkRecentManager` object
    /// among multiple `GtkRecentChooser` widgets.
    public static func newFor(manager: RecentManagerProtocol) -> RecentChooserMenu! {
        let rv = gtk_recent_chooser_menu_new_for_manager(cast(manager.ptr))
        return rv.map { RecentChooserMenu(cast($0)) }
    }

}

public enum RecentChooserMenuPropertyName: String, PropertyNameProtocol {
    /// The accel group holding accelerators for the menu.
    case accelGroup = "accel-group"
    /// An accel path used to conveniently construct accel paths of child items.
    case accelPath = "accel-path"
    case accessibleComponentLayer = "accessible-component-layer"
    case accessibleComponentMdiZorder = "accessible-component-mdi-zorder"
    case accessibleDescription = "accessible-description"
    case accessibleHypertextNlinks = "accessible-hypertext-nlinks"
    case accessibleName = "accessible-name"
    case accessibleParent = "accessible-parent"
    case accessibleRole = "accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case accessibleTableCaption = "accessible-table-caption"
    case accessibleTableCaptionObject = "accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case accessibleTableColumnDescription = "accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case accessibleTableColumnHeader = "accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case accessibleTableRowDescription = "accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case accessibleTableRowHeader = "accessible-table-row-header"
    case accessibleTableSummary = "accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case accessibleValue = "accessible-value"
    /// The index of the currently selected menu item, or -1 if no
    /// menu item is selected.
    case active = "active"
    /// Positioning hints for aligning the menu relative to a rectangle.
    /// 
    /// These hints determine how the menu should be positioned in the case that
    /// the menu would fall off-screen if placed in its ideal position.
    /// 
    /// ![](popup-flip.png)
    /// 
    /// For example, `GDK_ANCHOR_FLIP_Y` will replace `GDK_GRAVITY_NORTH_WEST` with
    /// `GDK_GRAVITY_SOUTH_WEST` and vice versa if the menu extends beyond the
    /// bottom edge of the monitor.
    /// 
    /// See gtk_menu_popup_at_rect (), gtk_menu_popup_at_widget (),
    /// gtk_menu_popup_at_pointer (), `GtkMenu:rect`-anchor-dx,
    /// `GtkMenu:rect`-anchor-dy, `GtkMenu:menu`-type-hint, and `GtkMenu::popped`-up.
    case anchorHints = "anchor-hints"
    case appPaintable = "app-paintable"
    /// The widget the menu is attached to. Setting this property attaches
    /// the menu without a `GtkMenuDetachFunc`. If you need to use a detacher,
    /// use `gtk_menu_attach_to_widget()` directly.
    case attachWidget = "attach-widget"
    case borderWidth = "border-width"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case child = "child"
    case compositeChild = "composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
    case events = "events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case expand = "expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case focusOnClick = "focus-on-click"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    case isFocus = "is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginTop = "margin-top"
    /// The `GdkWindowTypeHint` to use for the menu's `GdkWindow`.
    /// 
    /// See gtk_menu_popup_at_rect (), gtk_menu_popup_at_widget (),
    /// gtk_menu_popup_at_pointer (), `GtkMenu:anchor`-hints,
    /// `GtkMenu:rect`-anchor-dx, `GtkMenu:rect`-anchor-dy, and `GtkMenu::popped`-up.
    case menuTypeHint = "menu-type-hint"
    /// The monitor the menu will be popped up on.
    case monitor = "monitor"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case receivesDefault = "receives-default"
    /// Horizontal offset to apply to the menu, i.e. the rectangle or widget
    /// anchor.
    /// 
    /// See gtk_menu_popup_at_rect (), gtk_menu_popup_at_widget (),
    /// gtk_menu_popup_at_pointer (), `GtkMenu:anchor`-hints,
    /// `GtkMenu:rect`-anchor-dy, `GtkMenu:menu`-type-hint, and `GtkMenu::popped`-up.
    case rectAnchorDx = "rect-anchor-dx"
    /// Vertical offset to apply to the menu, i.e. the rectangle or widget anchor.
    /// 
    /// See gtk_menu_popup_at_rect (), gtk_menu_popup_at_widget (),
    /// gtk_menu_popup_at_pointer (), `GtkMenu:anchor`-hints,
    /// `GtkMenu:rect`-anchor-dx, `GtkMenu:menu`-type-hint, and `GtkMenu::popped`-up.
    case rectAnchorDy = "rect-anchor-dy"
    /// A boolean that indicates whether the menu reserves space for
    /// toggles and icons, regardless of their actual presence.
    /// 
    /// This property should only be changed from its default value
    /// for special-purposes such as tabular menus. Regular menus that
    /// are connected to a menu bar or context menus should reserve
    /// toggle space for consistency.
    case reserveToggleSize = "reserve-toggle-size"
    case resizeMode = "resize-mode"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// Whether the first ten items in the menu should be prepended by
    /// a number acting as a unique mnemonic.
    case showNumbers = "show-numbers"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    /// A boolean that determines whether the menu and its submenus grab the
    /// keyboard focus. See `gtk_menu_shell_set_take_focus()` and
    /// `gtk_menu_shell_get_take_focus()`.
    case takeFocus = "take-focus"
    /// A boolean that indicates whether the menu is torn-off.
    ///
    /// **tearoff-state is deprecated:**
    /// This method is deprecated.
    case tearoffState = "tearoff-state"
    /// A title that may be displayed by the window manager when this
    /// menu is torn-off.
    ///
    /// **tearoff-title is deprecated:**
    /// This method is deprecated.
    case tearoffTitle = "tearoff-title"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
}

public extension RecentChooserMenuProtocol {
    /// Bind a `RecentChooserMenuPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: RecentChooserMenuPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(recent_chooser_menu_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }
}

public enum RecentChooserMenuSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// An action signal that activates the current menu item within
    /// the menu shell.
    case activateCurrent = "activate-current"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    case add = "add"
    /// The `button`-press-event signal will be emitted when a button
    /// (typically from a mouse) is pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonPressEvent = "button-press-event"
    /// The `button`-release-event signal will be emitted when a button
    /// (typically from a mouse) is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonReleaseEvent = "button-release-event"
    /// Determines whether an accelerator that activates the signal
    /// identified by `signal_id` can currently be activated.
    /// This signal is present to allow applications and derived
    /// widgets to override the default `GtkWidget` handling
    /// for determining whether an accelerator can be activated.
    case canActivateAccel = "can-activate-accel"
    /// An action signal which cancels the selection within the menu shell.
    /// Causes the `GtkMenuShell::selection`-done signal to be emitted.
    case cancel = "cancel"
    case checkResize = "check-resize"
    /// The `child`-notify signal is emitted for each
    /// [child property](#child-properties)  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// The `composited`-changed signal is emitted when the composited
    /// status of `widgets` screen changes.
    /// See `gdk_screen_is_composited()`.
    ///
    /// **composited-changed is deprecated:**
    /// Use GdkScreen::composited-changed instead.
    case compositedChanged = "composited-changed"
    /// The `configure`-event signal will be emitted when the size, position or
    /// stacking of the `widget`'s window has changed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case configureEvent = "configure-event"
    /// A keybinding signal which moves the focus in the
    /// given `direction`.
    case cycleFocus = "cycle-focus"
    /// Emitted when a redirected window belonging to `widget` gets drawn into.
    /// The region/area members of the event shows what area of the redirected
    /// drawable was drawn into.
    case damageEvent = "damage-event"
    /// This signal is emitted when a menu shell is deactivated.
    case deactivate = "deactivate"
    /// The `delete`-event signal is emitted if a user requests that
    /// a toplevel window is closed. The default handler for this signal
    /// destroys the window. Connecting `gtk_widget_hide_on_delete()` to
    /// this signal will cause the window to be hidden instead, so that
    /// it can later be shown again without reconstructing it.
    case deleteEvent = "delete-event"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The `destroy`-event signal is emitted when a `GdkWindow` is destroyed.
    /// You rarely get this signal, because most widgets disconnect themselves
    /// from their window before they destroy it, so no widget owns the
    /// window at destroy time.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case destroyEvent = "destroy-event"
    /// The `direction`-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The `drag`-begin signal is emitted on the drag source when a drag is
    /// started. A typical reason to connect to this signal is to set up a
    /// custom drag icon with e.g. `gtk_drag_source_set_icon_pixbuf()`.
    /// 
    /// Note that some widgets set up a drag icon in the default handler of
    /// this signal, so you may have to use `g_signal_connect_after()` to
    /// override what the default handler did.
    case dragBegin = "drag-begin"
    /// The `drag`-data-delete signal is emitted on the drag source when a drag
    /// with the action `GDK_ACTION_MOVE` is successfully completed. The signal
    /// handler is responsible for deleting the data that has been dropped. What
    /// "delete" means depends on the context of the drag operation.
    case dragDataDelete = "drag-data-delete"
    /// The `drag`-data-get signal is emitted on the drag source when the drop
    /// site requests the data which is dragged. It is the responsibility of
    /// the signal handler to fill `data` with the data in the format which
    /// is indicated by `info`. See `gtk_selection_data_set()` and
    /// `gtk_selection_data_set_text()`.
    case dragDataGet = "drag-data-get"
    /// The `drag`-data-received signal is emitted on the drop site when the
    /// dragged data has been received. If the data was received in order to
    /// determine whether the drop will be accepted, the handler is expected
    /// to call `gdk_drag_status()` and not finish the drag.
    /// If the data was received in response to a `GtkWidget::drag`-drop signal
    /// (and this is the last target to be received), the handler for this
    /// signal is expected to process the received data and then call
    /// `gtk_drag_finish()`, setting the `success` parameter depending on
    /// whether the data was processed successfully.
    /// 
    /// Applications must create some means to determine why the signal was emitted
    /// and therefore whether to call `gdk_drag_status()` or `gtk_drag_finish()`.
    /// 
    /// The handler may inspect the selected action with
    /// `gdk_drag_context_get_selected_action()` before calling
    /// `gtk_drag_finish()`, e.g. to implement `GDK_ACTION_ASK` as
    /// shown in the following example:
    /// (C Language Example):
    /// ```C
    /// void
    /// drag_data_received (GtkWidget          *widget,
    ///                     GdkDragContext     *context,
    ///                     gint                x,
    ///                     gint                y,
    ///                     GtkSelectionData   *data,
    ///                     guint               info,
    ///                     guint               time)
    /// {
    ///   if ((data->length >= 0) && (data->format == 8))
    ///     {
    ///       GdkDragAction action;
    /// 
    ///       // handle data here
    /// 
    ///       action = gdk_drag_context_get_selected_action (context);
    ///       if (action == GDK_ACTION_ASK)
    ///         {
    ///           GtkWidget *dialog;
    ///           gint response;
    /// 
    ///           dialog = gtk_message_dialog_new (NULL,
    ///                                            GTK_DIALOG_MODAL |
    ///                                            GTK_DIALOG_DESTROY_WITH_PARENT,
    ///                                            GTK_MESSAGE_INFO,
    ///                                            GTK_BUTTONS_YES_NO,
    ///                                            "Move the data ?\n");
    ///           response = gtk_dialog_run (GTK_DIALOG (dialog));
    ///           gtk_widget_destroy (dialog);
    /// 
    ///           if (response == GTK_RESPONSE_YES)
    ///             action = GDK_ACTION_MOVE;
    ///           else
    ///             action = GDK_ACTION_COPY;
    ///          }
    /// 
    ///       gtk_drag_finish (context, TRUE, action == GDK_ACTION_MOVE, time);
    ///     }
    ///   else
    ///     gtk_drag_finish (context, FALSE, FALSE, time);
    ///  }
    /// ```
    /// 
    case dragDataReceived = "drag-data-received"
    /// The `drag`-drop signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the cursor position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// Otherwise, the handler returns `true`. In this case, the handler must
    /// ensure that `gtk_drag_finish()` is called to let the source know that
    /// the drop is done. The call to `gtk_drag_finish()` can be done either
    /// directly or in a `GtkWidget::drag`-data-received handler which gets
    /// triggered by calling `gtk_drag_get_data()` to receive the data for one
    /// or more of the supported targets.
    case dragDrop = "drag-drop"
    /// The `drag`-end signal is emitted on the drag source when a drag is
    /// finished.  A typical reason to connect to this signal is to undo
    /// things done in `GtkWidget::drag`-begin.
    case dragEnd = "drag-end"
    /// The `drag`-failed signal is emitted on the drag source when a drag has
    /// failed. The signal handler may hook custom code to handle a failed DnD
    /// operation based on the type of error, it returns `true` is the failure has
    /// been already handled (not showing the default "drag operation failed"
    /// animation), otherwise it returns `false`.
    case dragFailed = "drag-failed"
    /// The `drag`-leave signal is emitted on the drop site when the cursor
    /// leaves the widget. A typical reason to connect to this signal is to
    /// undo things done in `GtkWidget::drag`-motion, e.g. undo highlighting
    /// with `gtk_drag_unhighlight()`.
    /// 
    /// 
    /// Likewise, the `GtkWidget::drag`-leave signal is also emitted before the
    /// `drag`-drop signal, for instance to allow cleaning up of a preview item
    /// created in the `GtkWidget::drag`-motion signal handler.
    case dragLeave = "drag-leave"
    /// The `drag`-motion signal is emitted on the drop site when the user
    /// moves the cursor over the widget during a drag. The signal handler
    /// must determine whether the cursor position is in a drop zone or not.
    /// If it is not in a drop zone, it returns `false` and no further processing
    /// is necessary. Otherwise, the handler returns `true`. In this case, the
    /// handler is responsible for providing the necessary information for
    /// displaying feedback to the user, by calling `gdk_drag_status()`.
    /// 
    /// If the decision whether the drop will be accepted or rejected can't be
    /// made based solely on the cursor position and the type of the data, the
    /// handler may inspect the dragged data by calling `gtk_drag_get_data()` and
    /// defer the `gdk_drag_status()` call to the `GtkWidget::drag`-data-received
    /// handler. Note that you must pass `GTK_DEST_DEFAULT_DROP`,
    /// `GTK_DEST_DEFAULT_MOTION` or `GTK_DEST_DEFAULT_ALL` to `gtk_drag_dest_set()`
    /// when using the drag-motion signal that way.
    /// 
    /// Also note that there is no drag-enter signal. The drag receiver has to
    /// keep track of whether he has received any drag-motion signals since the
    /// last `GtkWidget::drag`-leave and if not, treat the drag-motion signal as
    /// an "enter" signal. Upon an "enter", the handler will typically highlight
    /// the drop site with `gtk_drag_highlight()`.
    /// (C Language Example):
    /// ```C
    /// static void
    /// drag_motion (GtkWidget      *widget,
    ///              GdkDragContext *context,
    ///              gint            x,
    ///              gint            y,
    ///              guint           time)
    /// {
    ///   GdkAtom target;
    /// 
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (!private_data->drag_highlight)
    ///    {
    ///      private_data->drag_highlight = 1;
    ///      gtk_drag_highlight (widget);
    ///    }
    /// 
    ///   target = gtk_drag_dest_find_target (widget, context, NULL);
    ///   if (target == GDK_NONE)
    ///     gdk_drag_status (context, 0, time);
    ///   else
    ///    {
    ///      private_data->pending_status
    ///         = gdk_drag_context_get_suggested_action (context);
    ///      gtk_drag_get_data (widget, context, target, time);
    ///    }
    /// 
    ///   return TRUE;
    /// }
    /// 
    /// static void
    /// drag_data_received (GtkWidget        *widget,
    ///                     GdkDragContext   *context,
    ///                     gint              x,
    ///                     gint              y,
    ///                     GtkSelectionData *selection_data,
    ///                     guint             info,
    ///                     guint             time)
    /// {
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (private_data->suggested_action)
    ///    {
    ///      private_data->suggested_action = 0;
    /// 
    ///      // We are getting this data due to a request in drag_motion,
    ///      // rather than due to a request in drag_drop, so we are just
    ///      // supposed to call gdk_drag_status(), not actually paste in
    ///      // the data.
    /// 
    ///      str = gtk_selection_data_get_text (selection_data);
    ///      if (!data_is_acceptable (str))
    ///        gdk_drag_status (context, 0, time);
    ///      else
    ///        gdk_drag_status (context,
    ///                         private_data->suggested_action,
    ///                         time);
    ///    }
    ///   else
    ///    {
    ///      // accept the drop
    ///    }
    /// }
    /// ```
    /// 
    case dragMotion = "drag-motion"
    /// This signal is emitted when a widget is supposed to render itself.
    /// The `widget`'s top left corner must be painted at the origin of
    /// the passed in context and be sized to the values returned by
    /// `gtk_widget_get_allocated_width()` and
    /// `gtk_widget_get_allocated_height()`.
    /// 
    /// Signal handlers connected to this signal can modify the cairo
    /// context passed as `cr` in any way they like and don't need to
    /// restore it. The signal emission takes care of calling `cairo_save()`
    /// before and `cairo_restore()` after invoking the handler.
    /// 
    /// The signal handler will get a `cr` with a clip region already set to the
    /// widget's dirty region, i.e. to the area that needs repainting.  Complicated
    /// widgets that want to avoid redrawing themselves completely can get the full
    /// extents of the clip region with `gdk_cairo_get_clip_rectangle()`, or they can
    /// get a finer-grained representation of the dirty region with
    /// `cairo_copy_clip_rectangle_list()`.
    case draw = "draw"
    /// The `enter`-notify-event will be emitted when the pointer enters
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_ENTER_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case enterNotifyEvent = "enter-notify-event"
    /// The GTK+ main loop will emit three signals for each GDK event delivered
    /// to a widget: one generic `event` signal, another, more specific,
    /// signal that matches the type of event delivered (e.g.
    /// `GtkWidget::key`-press-event) and finally a generic
    /// `GtkWidget::event`-after signal.
    case event = "event"
    /// After the emission of the `GtkWidget::event` signal and (optionally)
    /// the second more specific signal, `event`-after will be emitted
    /// regardless of the previous two signals handlers return values.
    case eventAfter = "event-after"
    case focus = "focus"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The `focus`-in-event signal will be emitted when the keyboard focus
    /// enters the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusInEvent = "focus-in-event"
    /// The `focus`-out-event signal will be emitted when the keyboard focus
    /// leaves the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusOutEvent = "focus-out-event"
    /// Emitted when a pointer or keyboard grab on a window belonging
    /// to `widget` gets broken.
    /// 
    /// On X11, this happens when the grab window becomes unviewable
    /// (i.e. it or one of its ancestors is unmapped), or if the same
    /// application grabs the pointer or keyboard again.
    case grabBrokenEvent = "grab-broken-event"
    case grabFocus = "grab-focus"
    /// The `grab`-notify signal is emitted when a widget becomes
    /// shadowed by a GTK+ grab (not a pointer or keyboard grab) on
    /// another widget, or when it becomes unshadowed due to a grab
    /// being removed.
    /// 
    /// A widget is shadowed by a `gtk_grab_add()` when the topmost
    /// grab widget in the grab stack of its window group is not
    /// its ancestor.
    case grabNotify = "grab-notify"
    /// The `hide` signal is emitted when `widget` is hidden, for example with
    /// `gtk_widget_hide()`.
    case hide = "hide"
    /// The `hierarchy`-changed signal is emitted when the
    /// anchored state of a widget changes. A widget is
    /// “anchored” when its toplevel
    /// ancestor is a `GtkWindow`. This signal is emitted when
    /// a widget changes from un-anchored to anchored or vice-versa.
    case hierarchyChanged = "hierarchy-changed"
    /// The `insert` signal is emitted when a new `GtkMenuItem` is added to
    /// a `GtkMenuShell`.  A separate signal is used instead of
    /// GtkContainer`add` because of the need for an additional position
    /// parameter.
    /// 
    /// The inverse of this signal is the GtkContainer`removed` signal.
    case insert = "insert"
    /// The `key`-press-event signal is emitted when a key is pressed. The signal
    /// emission will reoccur at the key-repeat rate when the key is kept pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyPressEvent = "key-press-event"
    /// The `key`-release-event signal is emitted when a key is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyReleaseEvent = "key-release-event"
    /// Gets emitted if keyboard navigation fails.
    /// See `gtk_widget_keynav_failed()` for details.
    case keynavFailed = "keynav-failed"
    /// The `leave`-notify-event will be emitted when the pointer leaves
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_LEAVE_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case leaveNotifyEvent = "leave-notify-event"
    /// The `map` signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// `gtk_widget_set_visible()`) and all its parents up to the toplevel widget
    /// are also visible. Once the map has occurred, `GtkWidget::map`-event will
    /// be emitted.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget::unmap`.
    case map = "map"
    /// The `map`-event signal will be emitted when the `widget`'s window is
    /// mapped. A window is mapped when it becomes visible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case mapEvent = "map-event"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// The `motion`-notify-event signal is emitted when the pointer moves
    /// over the widget's `GdkWindow`.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_POINTER_MOTION_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case motionNotifyEvent = "motion-notify-event"
    /// An keybinding signal which moves the current menu item
    /// in the direction specified by `direction`.
    case moveCurrent = "move-current"
    case moveFocus = "move-focus"
    case moveScroll = "move-scroll"
    /// The `move`-selected signal is emitted to move the selection to
    /// another item.
    case moveSelected = "move-selected"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The `parent`-set signal is emitted when a new parent
    /// has been set on a widget.
    case parentSet = "parent-set"
    /// Emitted when the position of `menu` is finalized after being popped up
    /// using gtk_menu_popup_at_rect (), gtk_menu_popup_at_widget (), or
    /// gtk_menu_popup_at_pointer ().
    /// 
    /// `menu` might be flipped over the anchor rectangle in order to keep it
    /// on-screen, in which case `flipped_x` and `flipped_y` will be set to `true`
    /// accordingly.
    /// 
    /// `flipped_rect` is the ideal position of `menu` after any possible flipping,
    /// but before any possible sliding. `final_rect` is `flipped_rect`, but possibly
    /// translated in the case that flipping is still ineffective in keeping `menu`
    /// on-screen.
    /// 
    /// ![](popup-slide.png)
    /// 
    /// The blue menu is `menu`'s ideal position, the green menu is `flipped_rect`,
    /// and the red menu is `final_rect`.
    /// 
    /// See gtk_menu_popup_at_rect (), gtk_menu_popup_at_widget (),
    /// gtk_menu_popup_at_pointer (), `GtkMenu:anchor`-hints,
    /// `GtkMenu:rect`-anchor-dx, `GtkMenu:rect`-anchor-dy, and
    /// `GtkMenu:menu`-type-hint.
    case poppedUp = "popped-up"
    /// This signal gets emitted whenever a widget should pop up a context
    /// menu. This usually happens through the standard key binding mechanism;
    /// by pressing a certain key while a widget is focused, the user can cause
    /// the widget to pop up a menu.  For example, the `GtkEntry` widget creates
    /// a menu with clipboard commands. See the
    /// [Popup Menu Migration Checklist](#checklist-popup-menu)
    /// for an example of how to use this signal.
    case popupMenu = "popup-menu"
    /// The signal "property-change" is emitted when an object's property
    /// value changes. `arg1` contains an `AtkPropertyValues` with the name
    /// and the new value of the property whose value has changed. Note
    /// that, as with GObject notify, getting this signal does not
    /// guarantee that the value of the property has actually changed; it
    /// may also be emitted when the setter of the property is called to
    /// reinstate the previous value.
    /// 
    /// Toolkit implementor note: ATK implementors should use
    /// `g_object_notify()` to emit property-changed
    /// notifications. `AtkObject::property`-changed is needed by the
    /// implementation of `atk_add_global_event_listener()` because GObject
    /// notify doesn't support emission hooks.
    case propertyChange = "property-change"
    /// The `property`-notify-event signal will be emitted when a property on
    /// the `widget`'s window has been changed or deleted.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROPERTY_CHANGE_MASK` mask.
    case propertyNotifyEvent = "property-notify-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_IN_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityInEvent = "proximity-in-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_OUT_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityOutEvent = "proximity-out-event"
    /// Emitted when `GtkWidget:has`-tooltip is `true` and the hover timeout
    /// has expired with the cursor hovering "above" `widget`; or emitted when `widget` got
    /// focus in keyboard mode.
    /// 
    /// Using the given coordinates, the signal handler should determine
    /// whether a tooltip should be shown for `widget`. If this is the case
    /// `true` should be returned, `false` otherwise.  Note that if
    /// `keyboard_mode` is `true`, the values of `x` and `y` are undefined and
    /// should not be used.
    /// 
    /// The signal handler is free to manipulate `tooltip` with the therefore
    /// destined function calls.
    case queryTooltip = "query-tooltip"
    /// The `realize` signal is emitted when `widget` is associated with a
    /// `GdkWindow`, which means that `gtk_widget_realize()` has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    case remove = "remove"
    /// The `screen`-changed signal gets emitted when the
    /// screen of a widget has changed.
    case screenChanged = "screen-changed"
    /// The `scroll`-event signal is emitted when a button in the 4 to 7
    /// range is pressed. Wheel mice are usually configured to generate
    /// button press events for buttons 4 and 5 when the wheel is turned.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_SCROLL_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case scrollEvent = "scroll-event"
    /// The `selection`-clear-event signal will be emitted when the
    /// the `widget`'s window has lost ownership of a selection.
    case selectionClearEvent = "selection-clear-event"
    /// This signal is emitted when a selection has been
    /// completed within a menu shell.
    case selectionDone = "selection-done"
    case selectionGet = "selection-get"
    case selectionNotifyEvent = "selection-notify-event"
    case selectionReceived = "selection-received"
    /// The `selection`-request-event signal will be emitted when
    /// another client requests ownership of the selection owned by
    /// the `widget`'s window.
    case selectionRequestEvent = "selection-request-event"
    case setFocusChild = "set-focus-child"
    /// The `show` signal is emitted when `widget` is shown, for example with
    /// `gtk_widget_show()`.
    case show = "show"
    case showHelp = "show-help"
    case sizeAllocate = "size-allocate"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The `state`-changed signal is emitted when the widget state changes.
    /// See `gtk_widget_get_state()`.
    ///
    /// **state-changed is deprecated:**
    /// Use #GtkWidget::state-flags-changed instead.
    case stateChanged = "state-changed"
    /// The `state`-flags-changed signal is emitted when the widget state
    /// changes, see `gtk_widget_get_state_flags()`.
    case stateFlagsChanged = "state-flags-changed"
    /// The `style`-set signal is emitted when a new style has been set
    /// on a widget. Note that style-modifying functions like
    /// `gtk_widget_modify_base()` also cause this signal to be emitted.
    /// 
    /// Note that this signal is emitted for changes to the deprecated
    /// `GtkStyle`. To track changes to the `GtkStyleContext` associated
    /// with a widget, use the `GtkWidget::style`-updated signal.
    ///
    /// **style-set is deprecated:**
    /// Use the #GtkWidget::style-updated signal
    case styleSet = "style-set"
    /// The `style`-updated signal is a convenience signal that is emitted when the
    /// `GtkStyleContext::changed` signal is emitted on the `widget`'s associated
    /// `GtkStyleContext` as returned by `gtk_widget_get_style_context()`.
    /// 
    /// Note that style-modifying functions like `gtk_widget_override_color()` also
    /// cause this signal to be emitted.
    case styleUpdated = "style-updated"
    case touchEvent = "touch-event"
    /// The `unmap` signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The `unmap`-event signal will be emitted when the `widget`'s window is
    /// unmapped. A window is unmapped when it becomes invisible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case unmapEvent = "unmap-event"
    /// The `unrealize` signal is emitted when the `GdkWindow` associated with
    /// `widget` is destroyed, which means that `gtk_widget_unrealize()` has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
    /// The `visibility`-notify-event will be emitted when the `widget`'s
    /// window is obscured or unobscured.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_VISIBILITY_NOTIFY_MASK` mask.
    ///
    /// **visibility-notify-event is deprecated:**
    /// Modern composited windowing systems with pervasive
    ///     transparency make it impossible to track the visibility of a window
    ///     reliably, so this signal can not be guaranteed to provide useful
    ///     information.
    case visibilityNotifyEvent = "visibility-notify-event"
    /// The "visible-data-changed" signal is emitted when the visual
    /// appearance of the object changed.
    case visibleDataChanged = "visible-data-changed"
    /// The `window`-state-event will be emitted when the state of the
    /// toplevel window associated to the `widget` changes.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable
    /// this mask automatically for all new windows.
    case windowStateEvent = "window-state-event"
    /// The accel group holding accelerators for the menu.
    case notifyAccelGroup = "notify::accel-group"
    /// An accel path used to conveniently construct accel paths of child items.
    case notifyAccelPath = "notify::accel-path"
    case notifyAccessibleComponentLayer = "notify::accessible-component-layer"
    case notifyAccessibleComponentMdiZorder = "notify::accessible-component-mdi-zorder"
    case notifyAccessibleDescription = "notify::accessible-description"
    case notifyAccessibleHypertextNlinks = "notify::accessible-hypertext-nlinks"
    case notifyAccessibleName = "notify::accessible-name"
    case notifyAccessibleParent = "notify::accessible-parent"
    case notifyAccessibleRole = "notify::accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case notifyAccessibleTableCaption = "notify::accessible-table-caption"
    case notifyAccessibleTableCaptionObject = "notify::accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case notifyAccessibleTableColumnDescription = "notify::accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case notifyAccessibleTableColumnHeader = "notify::accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case notifyAccessibleTableRowDescription = "notify::accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case notifyAccessibleTableRowHeader = "notify::accessible-table-row-header"
    case notifyAccessibleTableSummary = "notify::accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case notifyAccessibleValue = "notify::accessible-value"
    /// The index of the currently selected menu item, or -1 if no
    /// menu item is selected.
    case notifyActive = "notify::active"
    /// Positioning hints for aligning the menu relative to a rectangle.
    /// 
    /// These hints determine how the menu should be positioned in the case that
    /// the menu would fall off-screen if placed in its ideal position.
    /// 
    /// ![](popup-flip.png)
    /// 
    /// For example, `GDK_ANCHOR_FLIP_Y` will replace `GDK_GRAVITY_NORTH_WEST` with
    /// `GDK_GRAVITY_SOUTH_WEST` and vice versa if the menu extends beyond the
    /// bottom edge of the monitor.
    /// 
    /// See gtk_menu_popup_at_rect (), gtk_menu_popup_at_widget (),
    /// gtk_menu_popup_at_pointer (), `GtkMenu:rect`-anchor-dx,
    /// `GtkMenu:rect`-anchor-dy, `GtkMenu:menu`-type-hint, and `GtkMenu::popped`-up.
    case notifyAnchorHints = "notify::anchor-hints"
    case notifyAppPaintable = "notify::app-paintable"
    /// The widget the menu is attached to. Setting this property attaches
    /// the menu without a `GtkMenuDetachFunc`. If you need to use a detacher,
    /// use `gtk_menu_attach_to_widget()` directly.
    case notifyAttachWidget = "notify::attach-widget"
    case notifyBorderWidth = "notify::border-width"
    case notifyCanDefault = "notify::can-default"
    case notifyCanFocus = "notify::can-focus"
    case notifyChild = "notify::child"
    case notifyCompositeChild = "notify::composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case notifyDoubleBuffered = "notify::double-buffered"
    case notifyEvents = "notify::events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case notifyExpand = "notify::expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case notifyHalign = "notify::halign"
    case notifyHasDefault = "notify::has-default"
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case notifyHexpandSet = "notify::hexpand-set"
    case notifyIsFocus = "notify::is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case notifyMargin = "notify::margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case notifyMarginLeft = "notify::margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case notifyMarginRight = "notify::margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginTop = "notify::margin-top"
    /// The `GdkWindowTypeHint` to use for the menu's `GdkWindow`.
    /// 
    /// See gtk_menu_popup_at_rect (), gtk_menu_popup_at_widget (),
    /// gtk_menu_popup_at_pointer (), `GtkMenu:anchor`-hints,
    /// `GtkMenu:rect`-anchor-dx, `GtkMenu:rect`-anchor-dy, and `GtkMenu::popped`-up.
    case notifyMenuTypeHint = "notify::menu-type-hint"
    /// The monitor the menu will be popped up on.
    case notifyMonitor = "notify::monitor"
    case notifyName = "notify::name"
    case notifyNoShowAll = "notify::no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case notifyOpacity = "notify::opacity"
    case notifyParent = "notify::parent"
    case notifyReceivesDefault = "notify::receives-default"
    /// Horizontal offset to apply to the menu, i.e. the rectangle or widget
    /// anchor.
    /// 
    /// See gtk_menu_popup_at_rect (), gtk_menu_popup_at_widget (),
    /// gtk_menu_popup_at_pointer (), `GtkMenu:anchor`-hints,
    /// `GtkMenu:rect`-anchor-dy, `GtkMenu:menu`-type-hint, and `GtkMenu::popped`-up.
    case notifyRectAnchorDx = "notify::rect-anchor-dx"
    /// Vertical offset to apply to the menu, i.e. the rectangle or widget anchor.
    /// 
    /// See gtk_menu_popup_at_rect (), gtk_menu_popup_at_widget (),
    /// gtk_menu_popup_at_pointer (), `GtkMenu:anchor`-hints,
    /// `GtkMenu:rect`-anchor-dx, `GtkMenu:menu`-type-hint, and `GtkMenu::popped`-up.
    case notifyRectAnchorDy = "notify::rect-anchor-dy"
    /// A boolean that indicates whether the menu reserves space for
    /// toggles and icons, regardless of their actual presence.
    /// 
    /// This property should only be changed from its default value
    /// for special-purposes such as tabular menus. Regular menus that
    /// are connected to a menu bar or context menus should reserve
    /// toggle space for consistency.
    case notifyReserveToggleSize = "notify::reserve-toggle-size"
    case notifyResizeMode = "notify::resize-mode"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
    /// Whether the first ten items in the menu should be prepended by
    /// a number acting as a unique mnemonic.
    case notifyShowNumbers = "notify::show-numbers"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case notifyStyle = "notify::style"
    /// A boolean that determines whether the menu and its submenus grab the
    /// keyboard focus. See `gtk_menu_shell_set_take_focus()` and
    /// `gtk_menu_shell_get_take_focus()`.
    case notifyTakeFocus = "notify::take-focus"
    /// A boolean that indicates whether the menu is torn-off.
    ///
    /// **tearoff-state is deprecated:**
    /// This method is deprecated.
    case notifyTearoffState = "notify::tearoff-state"
    /// A title that may be displayed by the window manager when this
    /// menu is torn-off.
    ///
    /// **tearoff-title is deprecated:**
    /// This method is deprecated.
    case notifyTearoffTitle = "notify::tearoff-title"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    case notifyWidthRequest = "notify::width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case notifyWindow = "notify::window"
}

public extension RecentChooserMenuProtocol {
    /// Connect a `RecentChooserMenuSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: RecentChooserMenuSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(recent_chooser_menu_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension RecentChooserMenuProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRecentChooserMenu` instance.
    var recent_chooser_menu_ptr: UnsafeMutablePointer<GtkRecentChooserMenu> { return ptr.assumingMemoryBound(to: GtkRecentChooserMenu.self) }

    /// Returns the value set by `gtk_recent_chooser_menu_set_show_numbers()`.
    func getShowNumbers() -> Bool {
        let rv = gtk_recent_chooser_menu_get_show_numbers(cast(recent_chooser_menu_ptr))
        return Bool(rv != 0)
    }

    /// Sets whether a number should be added to the items of `menu`.  The
    /// numbers are shown to provide a unique character for a mnemonic to
    /// be used inside ten menu item’s label.  Only the first the items
    /// get a number to avoid clashes.
    func set(showNumbers show_numbers: Bool) {
        gtk_recent_chooser_menu_set_show_numbers(cast(recent_chooser_menu_ptr), gboolean(show_numbers ? 1 : 0))
    
    }
    /// Returns the value set by `gtk_recent_chooser_menu_set_show_numbers()`.
    var showNumbers: Bool {
        /// Returns the value set by `gtk_recent_chooser_menu_set_show_numbers()`.
        get {
            let rv = gtk_recent_chooser_menu_get_show_numbers(cast(recent_chooser_menu_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether a number should be added to the items of `menu`.  The
        /// numbers are shown to provide a unique character for a mnemonic to
        /// be used inside ten menu item’s label.  Only the first the items
        /// get a number to avoid clashes.
        nonmutating set {
            gtk_recent_chooser_menu_set_show_numbers(cast(recent_chooser_menu_ptr), gboolean(newValue ? 1 : 0))
        }
    }
}



// MARK: - RecentChooserWidget Class

/// The `RecentChooserWidgetProtocol` protocol exposes the methods and properties of an underlying `GtkRecentChooserWidget` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RecentChooserWidget`.
/// Alternatively, use `RecentChooserWidgetRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkRecentChooserWidget` is a widget suitable for selecting recently used
/// files.  It is the main building block of a `GtkRecentChooserDialog`.  Most
/// applications will only need to use the latter; you can use
/// `GtkRecentChooserWidget` as part of a larger window if you have special needs.
/// 
/// Note that `GtkRecentChooserWidget` does not have any methods of its own.
/// Instead, you should use the functions that work on a `GtkRecentChooser`.
/// 
/// Recently used files are supported since GTK+ 2.10.
public protocol RecentChooserWidgetProtocol: BoxProtocol, RecentChooserProtocol {
    /// Untyped pointer to the underlying `GtkRecentChooserWidget` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRecentChooserWidget` instance.
    var recent_chooser_widget_ptr: UnsafeMutablePointer<GtkRecentChooserWidget> { get }
}

/// The `RecentChooserWidgetRef` type acts as a lightweight Swift reference to an underlying `GtkRecentChooserWidget` instance.
/// It exposes methods that can operate on this data type through `RecentChooserWidgetProtocol` conformance.
/// Use `RecentChooserWidgetRef` only as an `unowned` reference to an existing `GtkRecentChooserWidget` instance.
///
/// `GtkRecentChooserWidget` is a widget suitable for selecting recently used
/// files.  It is the main building block of a `GtkRecentChooserDialog`.  Most
/// applications will only need to use the latter; you can use
/// `GtkRecentChooserWidget` as part of a larger window if you have special needs.
/// 
/// Note that `GtkRecentChooserWidget` does not have any methods of its own.
/// Instead, you should use the functions that work on a `GtkRecentChooser`.
/// 
/// Recently used files are supported since GTK+ 2.10.
public struct RecentChooserWidgetRef: RecentChooserWidgetProtocol {
    /// Untyped pointer to the underlying `GtkRecentChooserWidget` instance.
    /// For type-safe access, use the generated, typed pointer `recent_chooser_widget_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RecentChooserWidgetRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRecentChooserWidget>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RecentChooserWidgetProtocol`
    init<T: RecentChooserWidgetProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkRecentChooserWidget` object.  This is an embeddable widget
    /// used to access the recently used resources list.
    init() {
        let rv = gtk_recent_chooser_widget_new()
        self.init(cast(rv))
    }

    /// Creates a new `GtkRecentChooserWidget` with a specified recent manager.
    /// 
    /// This is useful if you have implemented your own recent manager, or if you
    /// have a customized instance of a `GtkRecentManager` object.
    init(manager: RecentManagerProtocol) {
        let rv = gtk_recent_chooser_widget_new_for_manager(cast(manager.ptr))
        self.init(cast(rv))
    }
    /// Creates a new `GtkRecentChooserWidget` with a specified recent manager.
    /// 
    /// This is useful if you have implemented your own recent manager, or if you
    /// have a customized instance of a `GtkRecentManager` object.
    static func newFor(manager: RecentManagerProtocol) -> RecentChooserWidgetRef! {
        let rv = gtk_recent_chooser_widget_new_for_manager(cast(manager.ptr))
        return rv.map { RecentChooserWidgetRef(cast($0)) }
    }
}

/// The `RecentChooserWidget` type acts as a reference-counted owner of an underlying `GtkRecentChooserWidget` instance.
/// It provides the methods that can operate on this data type through `RecentChooserWidgetProtocol` conformance.
/// Use `RecentChooserWidget` as a strong reference or owner of a `GtkRecentChooserWidget` instance.
///
/// `GtkRecentChooserWidget` is a widget suitable for selecting recently used
/// files.  It is the main building block of a `GtkRecentChooserDialog`.  Most
/// applications will only need to use the latter; you can use
/// `GtkRecentChooserWidget` as part of a larger window if you have special needs.
/// 
/// Note that `GtkRecentChooserWidget` does not have any methods of its own.
/// Instead, you should use the functions that work on a `GtkRecentChooser`.
/// 
/// Recently used files are supported since GTK+ 2.10.
open class RecentChooserWidget: Box, RecentChooserWidgetProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RecentChooserWidget` instance.
    public init(_ op: UnsafeMutablePointer<GtkRecentChooserWidget>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `RecentChooserWidgetProtocol`
    /// Will retain `GtkRecentChooserWidget`.
    public convenience init<T: RecentChooserWidgetProtocol>(_ other: T) {
        self.init(cast(other.recent_chooser_widget_ptr))
        g_object_ref(cast(recent_chooser_widget_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRecentChooserWidget.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRecentChooserWidget.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRecentChooserWidget.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRecentChooserWidget>(opaquePointer))
    }

    /// Creates a new `GtkRecentChooserWidget` object.  This is an embeddable widget
    /// used to access the recently used resources list.
    public convenience init() {
        let rv = gtk_recent_chooser_widget_new()
        self.init(cast(rv))
    }

    /// Creates a new `GtkRecentChooserWidget` with a specified recent manager.
    /// 
    /// This is useful if you have implemented your own recent manager, or if you
    /// have a customized instance of a `GtkRecentManager` object.
    public convenience init(manager: RecentManagerProtocol) {
        let rv = gtk_recent_chooser_widget_new_for_manager(cast(manager.ptr))
        self.init(cast(rv))
    }

    /// Creates a new `GtkRecentChooserWidget` with a specified recent manager.
    /// 
    /// This is useful if you have implemented your own recent manager, or if you
    /// have a customized instance of a `GtkRecentManager` object.
    public static func newFor(manager: RecentManagerProtocol) -> RecentChooserWidget! {
        let rv = gtk_recent_chooser_widget_new_for_manager(cast(manager.ptr))
        return rv.map { RecentChooserWidget(cast($0)) }
    }

}

public enum RecentChooserWidgetPropertyName: String, PropertyNameProtocol {
    case accessibleComponentLayer = "accessible-component-layer"
    case accessibleComponentMdiZorder = "accessible-component-mdi-zorder"
    case accessibleDescription = "accessible-description"
    case accessibleHypertextNlinks = "accessible-hypertext-nlinks"
    case accessibleName = "accessible-name"
    case accessibleParent = "accessible-parent"
    case accessibleRole = "accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case accessibleTableCaption = "accessible-table-caption"
    case accessibleTableCaptionObject = "accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case accessibleTableColumnDescription = "accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case accessibleTableColumnHeader = "accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case accessibleTableRowDescription = "accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case accessibleTableRowHeader = "accessible-table-row-header"
    case accessibleTableSummary = "accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case accessibleValue = "accessible-value"
    case appPaintable = "app-paintable"
    case baselinePosition = "baseline-position"
    case borderWidth = "border-width"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case child = "child"
    case compositeChild = "composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
    case events = "events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case expand = "expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case focusOnClick = "focus-on-click"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    case homogeneous = "homogeneous"
    case isFocus = "is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginTop = "margin-top"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case receivesDefault = "receives-default"
    case resizeMode = "resize-mode"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    case spacing = "spacing"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
}

public extension RecentChooserWidgetProtocol {
    /// Bind a `RecentChooserWidgetPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: RecentChooserWidgetPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(recent_chooser_widget_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }
}

public enum RecentChooserWidgetSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    case add = "add"
    /// The `button`-press-event signal will be emitted when a button
    /// (typically from a mouse) is pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonPressEvent = "button-press-event"
    /// The `button`-release-event signal will be emitted when a button
    /// (typically from a mouse) is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonReleaseEvent = "button-release-event"
    /// Determines whether an accelerator that activates the signal
    /// identified by `signal_id` can currently be activated.
    /// This signal is present to allow applications and derived
    /// widgets to override the default `GtkWidget` handling
    /// for determining whether an accelerator can be activated.
    case canActivateAccel = "can-activate-accel"
    case checkResize = "check-resize"
    /// The `child`-notify signal is emitted for each
    /// [child property](#child-properties)  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// The `composited`-changed signal is emitted when the composited
    /// status of `widgets` screen changes.
    /// See `gdk_screen_is_composited()`.
    ///
    /// **composited-changed is deprecated:**
    /// Use GdkScreen::composited-changed instead.
    case compositedChanged = "composited-changed"
    /// The `configure`-event signal will be emitted when the size, position or
    /// stacking of the `widget`'s window has changed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case configureEvent = "configure-event"
    /// Emitted when a redirected window belonging to `widget` gets drawn into.
    /// The region/area members of the event shows what area of the redirected
    /// drawable was drawn into.
    case damageEvent = "damage-event"
    /// The `delete`-event signal is emitted if a user requests that
    /// a toplevel window is closed. The default handler for this signal
    /// destroys the window. Connecting `gtk_widget_hide_on_delete()` to
    /// this signal will cause the window to be hidden instead, so that
    /// it can later be shown again without reconstructing it.
    case deleteEvent = "delete-event"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The `destroy`-event signal is emitted when a `GdkWindow` is destroyed.
    /// You rarely get this signal, because most widgets disconnect themselves
    /// from their window before they destroy it, so no widget owns the
    /// window at destroy time.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case destroyEvent = "destroy-event"
    /// The `direction`-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The `drag`-begin signal is emitted on the drag source when a drag is
    /// started. A typical reason to connect to this signal is to set up a
    /// custom drag icon with e.g. `gtk_drag_source_set_icon_pixbuf()`.
    /// 
    /// Note that some widgets set up a drag icon in the default handler of
    /// this signal, so you may have to use `g_signal_connect_after()` to
    /// override what the default handler did.
    case dragBegin = "drag-begin"
    /// The `drag`-data-delete signal is emitted on the drag source when a drag
    /// with the action `GDK_ACTION_MOVE` is successfully completed. The signal
    /// handler is responsible for deleting the data that has been dropped. What
    /// "delete" means depends on the context of the drag operation.
    case dragDataDelete = "drag-data-delete"
    /// The `drag`-data-get signal is emitted on the drag source when the drop
    /// site requests the data which is dragged. It is the responsibility of
    /// the signal handler to fill `data` with the data in the format which
    /// is indicated by `info`. See `gtk_selection_data_set()` and
    /// `gtk_selection_data_set_text()`.
    case dragDataGet = "drag-data-get"
    /// The `drag`-data-received signal is emitted on the drop site when the
    /// dragged data has been received. If the data was received in order to
    /// determine whether the drop will be accepted, the handler is expected
    /// to call `gdk_drag_status()` and not finish the drag.
    /// If the data was received in response to a `GtkWidget::drag`-drop signal
    /// (and this is the last target to be received), the handler for this
    /// signal is expected to process the received data and then call
    /// `gtk_drag_finish()`, setting the `success` parameter depending on
    /// whether the data was processed successfully.
    /// 
    /// Applications must create some means to determine why the signal was emitted
    /// and therefore whether to call `gdk_drag_status()` or `gtk_drag_finish()`.
    /// 
    /// The handler may inspect the selected action with
    /// `gdk_drag_context_get_selected_action()` before calling
    /// `gtk_drag_finish()`, e.g. to implement `GDK_ACTION_ASK` as
    /// shown in the following example:
    /// (C Language Example):
    /// ```C
    /// void
    /// drag_data_received (GtkWidget          *widget,
    ///                     GdkDragContext     *context,
    ///                     gint                x,
    ///                     gint                y,
    ///                     GtkSelectionData   *data,
    ///                     guint               info,
    ///                     guint               time)
    /// {
    ///   if ((data->length >= 0) && (data->format == 8))
    ///     {
    ///       GdkDragAction action;
    /// 
    ///       // handle data here
    /// 
    ///       action = gdk_drag_context_get_selected_action (context);
    ///       if (action == GDK_ACTION_ASK)
    ///         {
    ///           GtkWidget *dialog;
    ///           gint response;
    /// 
    ///           dialog = gtk_message_dialog_new (NULL,
    ///                                            GTK_DIALOG_MODAL |
    ///                                            GTK_DIALOG_DESTROY_WITH_PARENT,
    ///                                            GTK_MESSAGE_INFO,
    ///                                            GTK_BUTTONS_YES_NO,
    ///                                            "Move the data ?\n");
    ///           response = gtk_dialog_run (GTK_DIALOG (dialog));
    ///           gtk_widget_destroy (dialog);
    /// 
    ///           if (response == GTK_RESPONSE_YES)
    ///             action = GDK_ACTION_MOVE;
    ///           else
    ///             action = GDK_ACTION_COPY;
    ///          }
    /// 
    ///       gtk_drag_finish (context, TRUE, action == GDK_ACTION_MOVE, time);
    ///     }
    ///   else
    ///     gtk_drag_finish (context, FALSE, FALSE, time);
    ///  }
    /// ```
    /// 
    case dragDataReceived = "drag-data-received"
    /// The `drag`-drop signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the cursor position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// Otherwise, the handler returns `true`. In this case, the handler must
    /// ensure that `gtk_drag_finish()` is called to let the source know that
    /// the drop is done. The call to `gtk_drag_finish()` can be done either
    /// directly or in a `GtkWidget::drag`-data-received handler which gets
    /// triggered by calling `gtk_drag_get_data()` to receive the data for one
    /// or more of the supported targets.
    case dragDrop = "drag-drop"
    /// The `drag`-end signal is emitted on the drag source when a drag is
    /// finished.  A typical reason to connect to this signal is to undo
    /// things done in `GtkWidget::drag`-begin.
    case dragEnd = "drag-end"
    /// The `drag`-failed signal is emitted on the drag source when a drag has
    /// failed. The signal handler may hook custom code to handle a failed DnD
    /// operation based on the type of error, it returns `true` is the failure has
    /// been already handled (not showing the default "drag operation failed"
    /// animation), otherwise it returns `false`.
    case dragFailed = "drag-failed"
    /// The `drag`-leave signal is emitted on the drop site when the cursor
    /// leaves the widget. A typical reason to connect to this signal is to
    /// undo things done in `GtkWidget::drag`-motion, e.g. undo highlighting
    /// with `gtk_drag_unhighlight()`.
    /// 
    /// 
    /// Likewise, the `GtkWidget::drag`-leave signal is also emitted before the
    /// `drag`-drop signal, for instance to allow cleaning up of a preview item
    /// created in the `GtkWidget::drag`-motion signal handler.
    case dragLeave = "drag-leave"
    /// The `drag`-motion signal is emitted on the drop site when the user
    /// moves the cursor over the widget during a drag. The signal handler
    /// must determine whether the cursor position is in a drop zone or not.
    /// If it is not in a drop zone, it returns `false` and no further processing
    /// is necessary. Otherwise, the handler returns `true`. In this case, the
    /// handler is responsible for providing the necessary information for
    /// displaying feedback to the user, by calling `gdk_drag_status()`.
    /// 
    /// If the decision whether the drop will be accepted or rejected can't be
    /// made based solely on the cursor position and the type of the data, the
    /// handler may inspect the dragged data by calling `gtk_drag_get_data()` and
    /// defer the `gdk_drag_status()` call to the `GtkWidget::drag`-data-received
    /// handler. Note that you must pass `GTK_DEST_DEFAULT_DROP`,
    /// `GTK_DEST_DEFAULT_MOTION` or `GTK_DEST_DEFAULT_ALL` to `gtk_drag_dest_set()`
    /// when using the drag-motion signal that way.
    /// 
    /// Also note that there is no drag-enter signal. The drag receiver has to
    /// keep track of whether he has received any drag-motion signals since the
    /// last `GtkWidget::drag`-leave and if not, treat the drag-motion signal as
    /// an "enter" signal. Upon an "enter", the handler will typically highlight
    /// the drop site with `gtk_drag_highlight()`.
    /// (C Language Example):
    /// ```C
    /// static void
    /// drag_motion (GtkWidget      *widget,
    ///              GdkDragContext *context,
    ///              gint            x,
    ///              gint            y,
    ///              guint           time)
    /// {
    ///   GdkAtom target;
    /// 
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (!private_data->drag_highlight)
    ///    {
    ///      private_data->drag_highlight = 1;
    ///      gtk_drag_highlight (widget);
    ///    }
    /// 
    ///   target = gtk_drag_dest_find_target (widget, context, NULL);
    ///   if (target == GDK_NONE)
    ///     gdk_drag_status (context, 0, time);
    ///   else
    ///    {
    ///      private_data->pending_status
    ///         = gdk_drag_context_get_suggested_action (context);
    ///      gtk_drag_get_data (widget, context, target, time);
    ///    }
    /// 
    ///   return TRUE;
    /// }
    /// 
    /// static void
    /// drag_data_received (GtkWidget        *widget,
    ///                     GdkDragContext   *context,
    ///                     gint              x,
    ///                     gint              y,
    ///                     GtkSelectionData *selection_data,
    ///                     guint             info,
    ///                     guint             time)
    /// {
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (private_data->suggested_action)
    ///    {
    ///      private_data->suggested_action = 0;
    /// 
    ///      // We are getting this data due to a request in drag_motion,
    ///      // rather than due to a request in drag_drop, so we are just
    ///      // supposed to call gdk_drag_status(), not actually paste in
    ///      // the data.
    /// 
    ///      str = gtk_selection_data_get_text (selection_data);
    ///      if (!data_is_acceptable (str))
    ///        gdk_drag_status (context, 0, time);
    ///      else
    ///        gdk_drag_status (context,
    ///                         private_data->suggested_action,
    ///                         time);
    ///    }
    ///   else
    ///    {
    ///      // accept the drop
    ///    }
    /// }
    /// ```
    /// 
    case dragMotion = "drag-motion"
    /// This signal is emitted when a widget is supposed to render itself.
    /// The `widget`'s top left corner must be painted at the origin of
    /// the passed in context and be sized to the values returned by
    /// `gtk_widget_get_allocated_width()` and
    /// `gtk_widget_get_allocated_height()`.
    /// 
    /// Signal handlers connected to this signal can modify the cairo
    /// context passed as `cr` in any way they like and don't need to
    /// restore it. The signal emission takes care of calling `cairo_save()`
    /// before and `cairo_restore()` after invoking the handler.
    /// 
    /// The signal handler will get a `cr` with a clip region already set to the
    /// widget's dirty region, i.e. to the area that needs repainting.  Complicated
    /// widgets that want to avoid redrawing themselves completely can get the full
    /// extents of the clip region with `gdk_cairo_get_clip_rectangle()`, or they can
    /// get a finer-grained representation of the dirty region with
    /// `cairo_copy_clip_rectangle_list()`.
    case draw = "draw"
    /// The `enter`-notify-event will be emitted when the pointer enters
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_ENTER_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case enterNotifyEvent = "enter-notify-event"
    /// The GTK+ main loop will emit three signals for each GDK event delivered
    /// to a widget: one generic `event` signal, another, more specific,
    /// signal that matches the type of event delivered (e.g.
    /// `GtkWidget::key`-press-event) and finally a generic
    /// `GtkWidget::event`-after signal.
    case event = "event"
    /// After the emission of the `GtkWidget::event` signal and (optionally)
    /// the second more specific signal, `event`-after will be emitted
    /// regardless of the previous two signals handlers return values.
    case eventAfter = "event-after"
    case focus = "focus"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The `focus`-in-event signal will be emitted when the keyboard focus
    /// enters the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusInEvent = "focus-in-event"
    /// The `focus`-out-event signal will be emitted when the keyboard focus
    /// leaves the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusOutEvent = "focus-out-event"
    /// Emitted when a pointer or keyboard grab on a window belonging
    /// to `widget` gets broken.
    /// 
    /// On X11, this happens when the grab window becomes unviewable
    /// (i.e. it or one of its ancestors is unmapped), or if the same
    /// application grabs the pointer or keyboard again.
    case grabBrokenEvent = "grab-broken-event"
    case grabFocus = "grab-focus"
    /// The `grab`-notify signal is emitted when a widget becomes
    /// shadowed by a GTK+ grab (not a pointer or keyboard grab) on
    /// another widget, or when it becomes unshadowed due to a grab
    /// being removed.
    /// 
    /// A widget is shadowed by a `gtk_grab_add()` when the topmost
    /// grab widget in the grab stack of its window group is not
    /// its ancestor.
    case grabNotify = "grab-notify"
    /// The `hide` signal is emitted when `widget` is hidden, for example with
    /// `gtk_widget_hide()`.
    case hide = "hide"
    /// The `hierarchy`-changed signal is emitted when the
    /// anchored state of a widget changes. A widget is
    /// “anchored” when its toplevel
    /// ancestor is a `GtkWindow`. This signal is emitted when
    /// a widget changes from un-anchored to anchored or vice-versa.
    case hierarchyChanged = "hierarchy-changed"
    /// The `key`-press-event signal is emitted when a key is pressed. The signal
    /// emission will reoccur at the key-repeat rate when the key is kept pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyPressEvent = "key-press-event"
    /// The `key`-release-event signal is emitted when a key is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyReleaseEvent = "key-release-event"
    /// Gets emitted if keyboard navigation fails.
    /// See `gtk_widget_keynav_failed()` for details.
    case keynavFailed = "keynav-failed"
    /// The `leave`-notify-event will be emitted when the pointer leaves
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_LEAVE_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case leaveNotifyEvent = "leave-notify-event"
    /// The `map` signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// `gtk_widget_set_visible()`) and all its parents up to the toplevel widget
    /// are also visible. Once the map has occurred, `GtkWidget::map`-event will
    /// be emitted.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget::unmap`.
    case map = "map"
    /// The `map`-event signal will be emitted when the `widget`'s window is
    /// mapped. A window is mapped when it becomes visible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case mapEvent = "map-event"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// The `motion`-notify-event signal is emitted when the pointer moves
    /// over the widget's `GdkWindow`.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_POINTER_MOTION_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case motionNotifyEvent = "motion-notify-event"
    case moveFocus = "move-focus"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The `parent`-set signal is emitted when a new parent
    /// has been set on a widget.
    case parentSet = "parent-set"
    /// This signal gets emitted whenever a widget should pop up a context
    /// menu. This usually happens through the standard key binding mechanism;
    /// by pressing a certain key while a widget is focused, the user can cause
    /// the widget to pop up a menu.  For example, the `GtkEntry` widget creates
    /// a menu with clipboard commands. See the
    /// [Popup Menu Migration Checklist](#checklist-popup-menu)
    /// for an example of how to use this signal.
    case popupMenu = "popup-menu"
    /// The signal "property-change" is emitted when an object's property
    /// value changes. `arg1` contains an `AtkPropertyValues` with the name
    /// and the new value of the property whose value has changed. Note
    /// that, as with GObject notify, getting this signal does not
    /// guarantee that the value of the property has actually changed; it
    /// may also be emitted when the setter of the property is called to
    /// reinstate the previous value.
    /// 
    /// Toolkit implementor note: ATK implementors should use
    /// `g_object_notify()` to emit property-changed
    /// notifications. `AtkObject::property`-changed is needed by the
    /// implementation of `atk_add_global_event_listener()` because GObject
    /// notify doesn't support emission hooks.
    case propertyChange = "property-change"
    /// The `property`-notify-event signal will be emitted when a property on
    /// the `widget`'s window has been changed or deleted.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROPERTY_CHANGE_MASK` mask.
    case propertyNotifyEvent = "property-notify-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_IN_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityInEvent = "proximity-in-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_OUT_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityOutEvent = "proximity-out-event"
    /// Emitted when `GtkWidget:has`-tooltip is `true` and the hover timeout
    /// has expired with the cursor hovering "above" `widget`; or emitted when `widget` got
    /// focus in keyboard mode.
    /// 
    /// Using the given coordinates, the signal handler should determine
    /// whether a tooltip should be shown for `widget`. If this is the case
    /// `true` should be returned, `false` otherwise.  Note that if
    /// `keyboard_mode` is `true`, the values of `x` and `y` are undefined and
    /// should not be used.
    /// 
    /// The signal handler is free to manipulate `tooltip` with the therefore
    /// destined function calls.
    case queryTooltip = "query-tooltip"
    /// The `realize` signal is emitted when `widget` is associated with a
    /// `GdkWindow`, which means that `gtk_widget_realize()` has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    case remove = "remove"
    /// The `screen`-changed signal gets emitted when the
    /// screen of a widget has changed.
    case screenChanged = "screen-changed"
    /// The `scroll`-event signal is emitted when a button in the 4 to 7
    /// range is pressed. Wheel mice are usually configured to generate
    /// button press events for buttons 4 and 5 when the wheel is turned.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_SCROLL_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case scrollEvent = "scroll-event"
    /// The `selection`-clear-event signal will be emitted when the
    /// the `widget`'s window has lost ownership of a selection.
    case selectionClearEvent = "selection-clear-event"
    case selectionGet = "selection-get"
    case selectionNotifyEvent = "selection-notify-event"
    case selectionReceived = "selection-received"
    /// The `selection`-request-event signal will be emitted when
    /// another client requests ownership of the selection owned by
    /// the `widget`'s window.
    case selectionRequestEvent = "selection-request-event"
    case setFocusChild = "set-focus-child"
    /// The `show` signal is emitted when `widget` is shown, for example with
    /// `gtk_widget_show()`.
    case show = "show"
    case showHelp = "show-help"
    case sizeAllocate = "size-allocate"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The `state`-changed signal is emitted when the widget state changes.
    /// See `gtk_widget_get_state()`.
    ///
    /// **state-changed is deprecated:**
    /// Use #GtkWidget::state-flags-changed instead.
    case stateChanged = "state-changed"
    /// The `state`-flags-changed signal is emitted when the widget state
    /// changes, see `gtk_widget_get_state_flags()`.
    case stateFlagsChanged = "state-flags-changed"
    /// The `style`-set signal is emitted when a new style has been set
    /// on a widget. Note that style-modifying functions like
    /// `gtk_widget_modify_base()` also cause this signal to be emitted.
    /// 
    /// Note that this signal is emitted for changes to the deprecated
    /// `GtkStyle`. To track changes to the `GtkStyleContext` associated
    /// with a widget, use the `GtkWidget::style`-updated signal.
    ///
    /// **style-set is deprecated:**
    /// Use the #GtkWidget::style-updated signal
    case styleSet = "style-set"
    /// The `style`-updated signal is a convenience signal that is emitted when the
    /// `GtkStyleContext::changed` signal is emitted on the `widget`'s associated
    /// `GtkStyleContext` as returned by `gtk_widget_get_style_context()`.
    /// 
    /// Note that style-modifying functions like `gtk_widget_override_color()` also
    /// cause this signal to be emitted.
    case styleUpdated = "style-updated"
    case touchEvent = "touch-event"
    /// The `unmap` signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The `unmap`-event signal will be emitted when the `widget`'s window is
    /// unmapped. A window is unmapped when it becomes invisible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case unmapEvent = "unmap-event"
    /// The `unrealize` signal is emitted when the `GdkWindow` associated with
    /// `widget` is destroyed, which means that `gtk_widget_unrealize()` has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
    /// The `visibility`-notify-event will be emitted when the `widget`'s
    /// window is obscured or unobscured.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_VISIBILITY_NOTIFY_MASK` mask.
    ///
    /// **visibility-notify-event is deprecated:**
    /// Modern composited windowing systems with pervasive
    ///     transparency make it impossible to track the visibility of a window
    ///     reliably, so this signal can not be guaranteed to provide useful
    ///     information.
    case visibilityNotifyEvent = "visibility-notify-event"
    /// The "visible-data-changed" signal is emitted when the visual
    /// appearance of the object changed.
    case visibleDataChanged = "visible-data-changed"
    /// The `window`-state-event will be emitted when the state of the
    /// toplevel window associated to the `widget` changes.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable
    /// this mask automatically for all new windows.
    case windowStateEvent = "window-state-event"
    case notifyAccessibleComponentLayer = "notify::accessible-component-layer"
    case notifyAccessibleComponentMdiZorder = "notify::accessible-component-mdi-zorder"
    case notifyAccessibleDescription = "notify::accessible-description"
    case notifyAccessibleHypertextNlinks = "notify::accessible-hypertext-nlinks"
    case notifyAccessibleName = "notify::accessible-name"
    case notifyAccessibleParent = "notify::accessible-parent"
    case notifyAccessibleRole = "notify::accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case notifyAccessibleTableCaption = "notify::accessible-table-caption"
    case notifyAccessibleTableCaptionObject = "notify::accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case notifyAccessibleTableColumnDescription = "notify::accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case notifyAccessibleTableColumnHeader = "notify::accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case notifyAccessibleTableRowDescription = "notify::accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case notifyAccessibleTableRowHeader = "notify::accessible-table-row-header"
    case notifyAccessibleTableSummary = "notify::accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case notifyAccessibleValue = "notify::accessible-value"
    case notifyAppPaintable = "notify::app-paintable"
    case notifyBaselinePosition = "notify::baseline-position"
    case notifyBorderWidth = "notify::border-width"
    case notifyCanDefault = "notify::can-default"
    case notifyCanFocus = "notify::can-focus"
    case notifyChild = "notify::child"
    case notifyCompositeChild = "notify::composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case notifyDoubleBuffered = "notify::double-buffered"
    case notifyEvents = "notify::events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case notifyExpand = "notify::expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case notifyHalign = "notify::halign"
    case notifyHasDefault = "notify::has-default"
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case notifyHexpandSet = "notify::hexpand-set"
    case notifyHomogeneous = "notify::homogeneous"
    case notifyIsFocus = "notify::is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case notifyMargin = "notify::margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case notifyMarginLeft = "notify::margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case notifyMarginRight = "notify::margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginTop = "notify::margin-top"
    case notifyName = "notify::name"
    case notifyNoShowAll = "notify::no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case notifyOpacity = "notify::opacity"
    case notifyParent = "notify::parent"
    case notifyReceivesDefault = "notify::receives-default"
    case notifyResizeMode = "notify::resize-mode"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
    case notifySpacing = "notify::spacing"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case notifyStyle = "notify::style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    case notifyWidthRequest = "notify::width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case notifyWindow = "notify::window"
}

public extension RecentChooserWidgetProtocol {
    /// Connect a `RecentChooserWidgetSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: RecentChooserWidgetSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(recent_chooser_widget_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension RecentChooserWidgetProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRecentChooserWidget` instance.
    var recent_chooser_widget_ptr: UnsafeMutablePointer<GtkRecentChooserWidget> { return ptr.assumingMemoryBound(to: GtkRecentChooserWidget.self) }

}



// MARK: - RecentFilter Class

/// The `RecentFilterProtocol` protocol exposes the methods and properties of an underlying `GtkRecentFilter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RecentFilter`.
/// Alternatively, use `RecentFilterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GtkRecentFilter` can be used to restrict the files being shown
/// in a `GtkRecentChooser`.  Files can be filtered based on their name
/// (with `gtk_recent_filter_add_pattern()`), on their mime type (with
/// `gtk_file_filter_add_mime_type()`), on the application that has
/// registered them (with `gtk_recent_filter_add_application()`), or by
/// a custom filter function (with `gtk_recent_filter_add_custom()`).
/// 
/// Filtering by mime type handles aliasing and subclassing of mime
/// types; e.g. a filter for text/plain also matches a file with mime
/// type application/rtf, since application/rtf is a subclass of text/plain.
/// Note that `GtkRecentFilter` allows wildcards for the subtype of a
/// mime type, so you can e.g. filter for image/\*.
/// 
/// Normally, filters are used by adding them to a `GtkRecentChooser`,
/// see `gtk_recent_chooser_add_filter()`, but it is also possible to
/// manually use a filter on a file with `gtk_recent_filter_filter()`.
/// 
/// Recently used files are supported since GTK+ 2.10.
/// 
/// ## GtkRecentFilter as GtkBuildable
/// 
/// The GtkRecentFilter implementation of the GtkBuildable interface
/// supports adding rules using the <mime-types>, <patterns> and
/// <applications> elements and listing the rules within. Specifying
/// a <mime-type>, <pattern> or <application> has the same effect as
/// calling `gtk_recent_filter_add_mime_type()`,
/// `gtk_recent_filter_add_pattern()` or `gtk_recent_filter_add_application()`.
/// 
/// An example of a UI definition fragment specifying GtkRecentFilter rules:
/// ```
/// <object class="GtkRecentFilter">
///   <mime-types>
///     <mime-type>text/plain</mime-type>
///     <mime-type>image/png</mime-type>
///   </mime-types>
///   <patterns>
///     <pattern>*.txt</pattern>
///     <pattern>*.png</pattern>
///   </patterns>
///   <applications>
///     <application>gimp</application>
///     <application>gedit</application>
///     <application>glade</application>
///   </applications>
/// </object>
/// ```
/// 
public protocol RecentFilterProtocol: InitiallyUnownedProtocol, BuildableProtocol {
    /// Untyped pointer to the underlying `GtkRecentFilter` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRecentFilter` instance.
    var recent_filter_ptr: UnsafeMutablePointer<GtkRecentFilter> { get }
}

/// The `RecentFilterRef` type acts as a lightweight Swift reference to an underlying `GtkRecentFilter` instance.
/// It exposes methods that can operate on this data type through `RecentFilterProtocol` conformance.
/// Use `RecentFilterRef` only as an `unowned` reference to an existing `GtkRecentFilter` instance.
///
/// A `GtkRecentFilter` can be used to restrict the files being shown
/// in a `GtkRecentChooser`.  Files can be filtered based on their name
/// (with `gtk_recent_filter_add_pattern()`), on their mime type (with
/// `gtk_file_filter_add_mime_type()`), on the application that has
/// registered them (with `gtk_recent_filter_add_application()`), or by
/// a custom filter function (with `gtk_recent_filter_add_custom()`).
/// 
/// Filtering by mime type handles aliasing and subclassing of mime
/// types; e.g. a filter for text/plain also matches a file with mime
/// type application/rtf, since application/rtf is a subclass of text/plain.
/// Note that `GtkRecentFilter` allows wildcards for the subtype of a
/// mime type, so you can e.g. filter for image/\*.
/// 
/// Normally, filters are used by adding them to a `GtkRecentChooser`,
/// see `gtk_recent_chooser_add_filter()`, but it is also possible to
/// manually use a filter on a file with `gtk_recent_filter_filter()`.
/// 
/// Recently used files are supported since GTK+ 2.10.
/// 
/// ## GtkRecentFilter as GtkBuildable
/// 
/// The GtkRecentFilter implementation of the GtkBuildable interface
/// supports adding rules using the <mime-types>, <patterns> and
/// <applications> elements and listing the rules within. Specifying
/// a <mime-type>, <pattern> or <application> has the same effect as
/// calling `gtk_recent_filter_add_mime_type()`,
/// `gtk_recent_filter_add_pattern()` or `gtk_recent_filter_add_application()`.
/// 
/// An example of a UI definition fragment specifying GtkRecentFilter rules:
/// ```
/// <object class="GtkRecentFilter">
///   <mime-types>
///     <mime-type>text/plain</mime-type>
///     <mime-type>image/png</mime-type>
///   </mime-types>
///   <patterns>
///     <pattern>*.txt</pattern>
///     <pattern>*.png</pattern>
///   </patterns>
///   <applications>
///     <application>gimp</application>
///     <application>gedit</application>
///     <application>glade</application>
///   </applications>
/// </object>
/// ```
/// 
public struct RecentFilterRef: RecentFilterProtocol {
    /// Untyped pointer to the underlying `GtkRecentFilter` instance.
    /// For type-safe access, use the generated, typed pointer `recent_filter_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RecentFilterRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRecentFilter>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RecentFilterProtocol`
    init<T: RecentFilterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkRecentFilter` with no rules added to it.
    /// Such filter does not accept any recently used resources, so is not
    /// particularly useful until you add rules with
    /// `gtk_recent_filter_add_pattern()`, `gtk_recent_filter_add_mime_type()`,
    /// `gtk_recent_filter_add_application()`, `gtk_recent_filter_add_age()`.
    /// To create a filter that accepts any recently used resource, use:
    /// (C Language Example):
    /// ```C
    /// GtkRecentFilter *filter = gtk_recent_filter_new ();
    /// gtk_recent_filter_add_pattern (filter, "*");
    /// ```
    /// 
    init() {
        let rv = gtk_recent_filter_new()
        self.init(cast(rv))
    }
}

/// The `RecentFilter` type acts as a reference-counted owner of an underlying `GtkRecentFilter` instance.
/// It provides the methods that can operate on this data type through `RecentFilterProtocol` conformance.
/// Use `RecentFilter` as a strong reference or owner of a `GtkRecentFilter` instance.
///
/// A `GtkRecentFilter` can be used to restrict the files being shown
/// in a `GtkRecentChooser`.  Files can be filtered based on their name
/// (with `gtk_recent_filter_add_pattern()`), on their mime type (with
/// `gtk_file_filter_add_mime_type()`), on the application that has
/// registered them (with `gtk_recent_filter_add_application()`), or by
/// a custom filter function (with `gtk_recent_filter_add_custom()`).
/// 
/// Filtering by mime type handles aliasing and subclassing of mime
/// types; e.g. a filter for text/plain also matches a file with mime
/// type application/rtf, since application/rtf is a subclass of text/plain.
/// Note that `GtkRecentFilter` allows wildcards for the subtype of a
/// mime type, so you can e.g. filter for image/\*.
/// 
/// Normally, filters are used by adding them to a `GtkRecentChooser`,
/// see `gtk_recent_chooser_add_filter()`, but it is also possible to
/// manually use a filter on a file with `gtk_recent_filter_filter()`.
/// 
/// Recently used files are supported since GTK+ 2.10.
/// 
/// ## GtkRecentFilter as GtkBuildable
/// 
/// The GtkRecentFilter implementation of the GtkBuildable interface
/// supports adding rules using the <mime-types>, <patterns> and
/// <applications> elements and listing the rules within. Specifying
/// a <mime-type>, <pattern> or <application> has the same effect as
/// calling `gtk_recent_filter_add_mime_type()`,
/// `gtk_recent_filter_add_pattern()` or `gtk_recent_filter_add_application()`.
/// 
/// An example of a UI definition fragment specifying GtkRecentFilter rules:
/// ```
/// <object class="GtkRecentFilter">
///   <mime-types>
///     <mime-type>text/plain</mime-type>
///     <mime-type>image/png</mime-type>
///   </mime-types>
///   <patterns>
///     <pattern>*.txt</pattern>
///     <pattern>*.png</pattern>
///   </patterns>
///   <applications>
///     <application>gimp</application>
///     <application>gedit</application>
///     <application>glade</application>
///   </applications>
/// </object>
/// ```
/// 
open class RecentFilter: InitiallyUnowned, RecentFilterProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RecentFilter` instance.
    public init(_ op: UnsafeMutablePointer<GtkRecentFilter>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `RecentFilterProtocol`
    /// Will retain `GtkRecentFilter`.
    public convenience init<T: RecentFilterProtocol>(_ other: T) {
        self.init(cast(other.recent_filter_ptr))
        g_object_ref(cast(recent_filter_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRecentFilter.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRecentFilter.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRecentFilter.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRecentFilter>(opaquePointer))
    }

    /// Creates a new `GtkRecentFilter` with no rules added to it.
    /// Such filter does not accept any recently used resources, so is not
    /// particularly useful until you add rules with
    /// `gtk_recent_filter_add_pattern()`, `gtk_recent_filter_add_mime_type()`,
    /// `gtk_recent_filter_add_application()`, `gtk_recent_filter_add_age()`.
    /// To create a filter that accepts any recently used resource, use:
    /// (C Language Example):
    /// ```C
    /// GtkRecentFilter *filter = gtk_recent_filter_new ();
    /// gtk_recent_filter_add_pattern (filter, "*");
    /// ```
    /// 
    public convenience init() {
        let rv = gtk_recent_filter_new()
        self.init(cast(rv))
    }


}

public enum RecentFilterPropertyName: String, PropertyNameProtocol {
    case accessibleComponentLayer = "accessible-component-layer"
    case accessibleComponentMdiZorder = "accessible-component-mdi-zorder"
    case accessibleDescription = "accessible-description"
    case accessibleHypertextNlinks = "accessible-hypertext-nlinks"
    case accessibleName = "accessible-name"
    case accessibleParent = "accessible-parent"
    case accessibleRole = "accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case accessibleTableCaption = "accessible-table-caption"
    case accessibleTableCaptionObject = "accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case accessibleTableColumnDescription = "accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case accessibleTableColumnHeader = "accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case accessibleTableRowDescription = "accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case accessibleTableRowHeader = "accessible-table-row-header"
    case accessibleTableSummary = "accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case accessibleValue = "accessible-value"
}

public extension RecentFilterProtocol {
    /// Bind a `RecentFilterPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: RecentFilterPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(recent_filter_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }
}

public enum RecentFilterSignalName: String, SignalNameProtocol {
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The signal "property-change" is emitted when an object's property
    /// value changes. `arg1` contains an `AtkPropertyValues` with the name
    /// and the new value of the property whose value has changed. Note
    /// that, as with GObject notify, getting this signal does not
    /// guarantee that the value of the property has actually changed; it
    /// may also be emitted when the setter of the property is called to
    /// reinstate the previous value.
    /// 
    /// Toolkit implementor note: ATK implementors should use
    /// `g_object_notify()` to emit property-changed
    /// notifications. `AtkObject::property`-changed is needed by the
    /// implementation of `atk_add_global_event_listener()` because GObject
    /// notify doesn't support emission hooks.
    case propertyChange = "property-change"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The "visible-data-changed" signal is emitted when the visual
    /// appearance of the object changed.
    case visibleDataChanged = "visible-data-changed"
    case notifyAccessibleComponentLayer = "notify::accessible-component-layer"
    case notifyAccessibleComponentMdiZorder = "notify::accessible-component-mdi-zorder"
    case notifyAccessibleDescription = "notify::accessible-description"
    case notifyAccessibleHypertextNlinks = "notify::accessible-hypertext-nlinks"
    case notifyAccessibleName = "notify::accessible-name"
    case notifyAccessibleParent = "notify::accessible-parent"
    case notifyAccessibleRole = "notify::accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case notifyAccessibleTableCaption = "notify::accessible-table-caption"
    case notifyAccessibleTableCaptionObject = "notify::accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case notifyAccessibleTableColumnDescription = "notify::accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case notifyAccessibleTableColumnHeader = "notify::accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case notifyAccessibleTableRowDescription = "notify::accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case notifyAccessibleTableRowHeader = "notify::accessible-table-row-header"
    case notifyAccessibleTableSummary = "notify::accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case notifyAccessibleValue = "notify::accessible-value"
}

public extension RecentFilterProtocol {
    /// Connect a `RecentFilterSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: RecentFilterSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(recent_filter_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension RecentFilterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRecentFilter` instance.
    var recent_filter_ptr: UnsafeMutablePointer<GtkRecentFilter> { return ptr.assumingMemoryBound(to: GtkRecentFilter.self) }

    /// Adds a rule that allows resources based on their age - that is, the number
    /// of days elapsed since they were last modified.
    func addAge(days: CInt) {
        gtk_recent_filter_add_age(cast(recent_filter_ptr), gint(days))
    
    }

    /// Adds a rule that allows resources based on the name of the application
    /// that has registered them.
    func add(application: UnsafePointer<gchar>) {
        gtk_recent_filter_add_application(cast(recent_filter_ptr), application)
    
    }

    /// Adds a rule to a filter that allows resources based on a custom callback
    /// function. The bitfield `needed` which is passed in provides information
    /// about what sorts of information that the filter function needs;
    /// this allows GTK+ to avoid retrieving expensive information when
    /// it isn’t needed by the filter.
    func addCustom(needed: RecentFilterFlags, func_: @escaping RecentFilterFunc, data: UnsafeMutableRawPointer, dataDestroy data_destroy: @escaping GLib.DestroyNotify) {
        gtk_recent_filter_add_custom(cast(recent_filter_ptr), needed, func_, cast(data), data_destroy)
    
    }

    /// Adds a rule that allows resources based on the name of the group
    /// to which they belong
    func add(group: UnsafePointer<gchar>) {
        gtk_recent_filter_add_group(cast(recent_filter_ptr), group)
    
    }

    /// Adds a rule that allows resources based on their registered MIME type.
    func add(mimeType mime_type: UnsafePointer<gchar>) {
        gtk_recent_filter_add_mime_type(cast(recent_filter_ptr), mime_type)
    
    }

    /// Adds a rule that allows resources based on a pattern matching their
    /// display name.
    func add(pattern: UnsafePointer<gchar>) {
        gtk_recent_filter_add_pattern(cast(recent_filter_ptr), pattern)
    
    }

    /// Adds a rule allowing image files in the formats supported
    /// by GdkPixbuf.
    func addPixbufFormats() {
        gtk_recent_filter_add_pixbuf_formats(cast(recent_filter_ptr))
    
    }

    /// Tests whether a file should be displayed according to `filter`.
    /// The `GtkRecentFilterInfo` `filter_info` should include
    /// the fields returned from `gtk_recent_filter_get_needed()`, and
    /// must set the `GtkRecentFilterInfo.contains` field of `filter_info`
    /// to indicate which fields have been set.
    /// 
    /// This function will not typically be used by applications; it
    /// is intended principally for use in the implementation of
    /// `GtkRecentChooser`.
    func filter(filterInfo filter_info: RecentFilterInfoProtocol) -> Bool {
        let rv = gtk_recent_filter_filter(cast(recent_filter_ptr), cast(filter_info.ptr))
        return Bool(rv != 0)
    }

    /// Gets the human-readable name for the filter.
    /// See `gtk_recent_filter_set_name()`.
    func getName() -> String! {
        let rv = gtk_recent_filter_get_name(cast(recent_filter_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the fields that need to be filled in for the `GtkRecentFilterInfo`
    /// passed to `gtk_recent_filter_filter()`
    /// 
    /// This function will not typically be used by applications; it
    /// is intended principally for use in the implementation of
    /// `GtkRecentChooser`.
    func getNeeded() -> GtkRecentFilterFlags {
        let rv = gtk_recent_filter_get_needed(cast(recent_filter_ptr))
        return rv
    }

    /// Sets the human-readable name of the filter; this is the string
    /// that will be displayed in the recently used resources selector
    /// user interface if there is a selectable list of filters.
    func set(name: UnsafePointer<gchar>) {
        gtk_recent_filter_set_name(cast(recent_filter_ptr), name)
    
    }
    /// Gets the human-readable name for the filter.
    /// See `gtk_recent_filter_set_name()`.
    var name: String! {
        /// Gets the human-readable name for the filter.
        /// See `gtk_recent_filter_set_name()`.
        get {
            let rv = gtk_recent_filter_get_name(cast(recent_filter_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Sets the human-readable name of the filter; this is the string
        /// that will be displayed in the recently used resources selector
        /// user interface if there is a selectable list of filters.
        nonmutating set {
            gtk_recent_filter_set_name(cast(recent_filter_ptr), newValue)
        }
    }

    /// Gets the fields that need to be filled in for the `GtkRecentFilterInfo`
    /// passed to `gtk_recent_filter_filter()`
    /// 
    /// This function will not typically be used by applications; it
    /// is intended principally for use in the implementation of
    /// `GtkRecentChooser`.
    var needed: GtkRecentFilterFlags {
        /// Gets the fields that need to be filled in for the `GtkRecentFilterInfo`
        /// passed to `gtk_recent_filter_filter()`
        /// 
        /// This function will not typically be used by applications; it
        /// is intended principally for use in the implementation of
        /// `GtkRecentChooser`.
        get {
            let rv = gtk_recent_filter_get_needed(cast(recent_filter_ptr))
            return rv
        }
    }
}



// MARK: - RecentManager Class

/// The `RecentManagerProtocol` protocol exposes the methods and properties of an underlying `GtkRecentManager` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RecentManager`.
/// Alternatively, use `RecentManagerRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkRecentManager` provides a facility for adding, removing and
/// looking up recently used files. Each recently used file is
/// identified by its URI, and has meta-data associated to it, like
/// the names and command lines of the applications that have
/// registered it, the number of time each application has registered
/// the same file, the mime type of the file and whether the file
/// should be displayed only by the applications that have
/// registered it.
/// 
/// The recently used files list is per user.
/// 
/// The `GtkRecentManager` acts like a database of all the recently
/// used files. You can create new `GtkRecentManager` objects, but
/// it is more efficient to use the default manager created by GTK+.
/// 
/// Adding a new recently used file is as simple as:
/// 
/// (C Language Example):
/// ```C
/// GtkRecentManager *manager;
/// 
/// manager = gtk_recent_manager_get_default ();
/// gtk_recent_manager_add_item (manager, file_uri);
/// ```
/// 
/// The `GtkRecentManager` will try to gather all the needed information
/// from the file itself through GIO.
/// 
/// Looking up the meta-data associated with a recently used file
/// given its URI requires calling `gtk_recent_manager_lookup_item()`:
/// 
/// (C Language Example):
/// ```C
/// GtkRecentManager *manager;
/// GtkRecentInfo *info;
/// GError *error = NULL;
/// 
/// manager = gtk_recent_manager_get_default ();
/// info = gtk_recent_manager_lookup_item (manager, file_uri, &error);
/// if (error)
///   {
///     g_warning ("Could not find the file: %s", error->message);
///     g_error_free (error);
///   }
/// else
///  {
///    // Use the info object
///    gtk_recent_info_unref (info);
///  }
/// ```
/// 
/// In order to retrieve the list of recently used files, you can use
/// `gtk_recent_manager_get_items()`, which returns a list of `GtkRecentInfo`-structs.
/// 
/// A `GtkRecentManager` is the model used to populate the contents of
/// one, or more `GtkRecentChooser` implementations.
/// 
/// Note that the maximum age of the recently used files list is
/// controllable through the `GtkSettings:gtk`-recent-files-max-age
/// property.
/// 
/// Recently used files are supported since GTK+ 2.10.
public protocol RecentManagerProtocol: GLibObject.ObjectProtocol {
    /// Untyped pointer to the underlying `GtkRecentManager` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRecentManager` instance.
    var recent_manager_ptr: UnsafeMutablePointer<GtkRecentManager> { get }
}

/// The `RecentManagerRef` type acts as a lightweight Swift reference to an underlying `GtkRecentManager` instance.
/// It exposes methods that can operate on this data type through `RecentManagerProtocol` conformance.
/// Use `RecentManagerRef` only as an `unowned` reference to an existing `GtkRecentManager` instance.
///
/// `GtkRecentManager` provides a facility for adding, removing and
/// looking up recently used files. Each recently used file is
/// identified by its URI, and has meta-data associated to it, like
/// the names and command lines of the applications that have
/// registered it, the number of time each application has registered
/// the same file, the mime type of the file and whether the file
/// should be displayed only by the applications that have
/// registered it.
/// 
/// The recently used files list is per user.
/// 
/// The `GtkRecentManager` acts like a database of all the recently
/// used files. You can create new `GtkRecentManager` objects, but
/// it is more efficient to use the default manager created by GTK+.
/// 
/// Adding a new recently used file is as simple as:
/// 
/// (C Language Example):
/// ```C
/// GtkRecentManager *manager;
/// 
/// manager = gtk_recent_manager_get_default ();
/// gtk_recent_manager_add_item (manager, file_uri);
/// ```
/// 
/// The `GtkRecentManager` will try to gather all the needed information
/// from the file itself through GIO.
/// 
/// Looking up the meta-data associated with a recently used file
/// given its URI requires calling `gtk_recent_manager_lookup_item()`:
/// 
/// (C Language Example):
/// ```C
/// GtkRecentManager *manager;
/// GtkRecentInfo *info;
/// GError *error = NULL;
/// 
/// manager = gtk_recent_manager_get_default ();
/// info = gtk_recent_manager_lookup_item (manager, file_uri, &error);
/// if (error)
///   {
///     g_warning ("Could not find the file: %s", error->message);
///     g_error_free (error);
///   }
/// else
///  {
///    // Use the info object
///    gtk_recent_info_unref (info);
///  }
/// ```
/// 
/// In order to retrieve the list of recently used files, you can use
/// `gtk_recent_manager_get_items()`, which returns a list of `GtkRecentInfo`-structs.
/// 
/// A `GtkRecentManager` is the model used to populate the contents of
/// one, or more `GtkRecentChooser` implementations.
/// 
/// Note that the maximum age of the recently used files list is
/// controllable through the `GtkSettings:gtk`-recent-files-max-age
/// property.
/// 
/// Recently used files are supported since GTK+ 2.10.
public struct RecentManagerRef: RecentManagerProtocol {
    /// Untyped pointer to the underlying `GtkRecentManager` instance.
    /// For type-safe access, use the generated, typed pointer `recent_manager_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RecentManagerRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRecentManager>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RecentManagerProtocol`
    init<T: RecentManagerProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new recent manager object. Recent manager objects are used to
    /// handle the list of recently used resources. A `GtkRecentManager` object
    /// monitors the recently used resources list, and emits the “changed” signal
    /// each time something inside the list changes.
    /// 
    /// `GtkRecentManager` objects are expensive: be sure to create them only when
    /// needed. You should use `gtk_recent_manager_get_default()` instead.
    init() {
        let rv = gtk_recent_manager_new()
        self.init(cast(rv))
    }
    /// Gets a unique instance of `GtkRecentManager`, that you can share
    /// in your application without caring about memory management.
    static func getDefault() -> RecentManagerRef! {
        let rv = gtk_recent_manager_get_default()
        return rv.map { RecentManagerRef(cast($0)) }
    }
}

/// The `RecentManager` type acts as a reference-counted owner of an underlying `GtkRecentManager` instance.
/// It provides the methods that can operate on this data type through `RecentManagerProtocol` conformance.
/// Use `RecentManager` as a strong reference or owner of a `GtkRecentManager` instance.
///
/// `GtkRecentManager` provides a facility for adding, removing and
/// looking up recently used files. Each recently used file is
/// identified by its URI, and has meta-data associated to it, like
/// the names and command lines of the applications that have
/// registered it, the number of time each application has registered
/// the same file, the mime type of the file and whether the file
/// should be displayed only by the applications that have
/// registered it.
/// 
/// The recently used files list is per user.
/// 
/// The `GtkRecentManager` acts like a database of all the recently
/// used files. You can create new `GtkRecentManager` objects, but
/// it is more efficient to use the default manager created by GTK+.
/// 
/// Adding a new recently used file is as simple as:
/// 
/// (C Language Example):
/// ```C
/// GtkRecentManager *manager;
/// 
/// manager = gtk_recent_manager_get_default ();
/// gtk_recent_manager_add_item (manager, file_uri);
/// ```
/// 
/// The `GtkRecentManager` will try to gather all the needed information
/// from the file itself through GIO.
/// 
/// Looking up the meta-data associated with a recently used file
/// given its URI requires calling `gtk_recent_manager_lookup_item()`:
/// 
/// (C Language Example):
/// ```C
/// GtkRecentManager *manager;
/// GtkRecentInfo *info;
/// GError *error = NULL;
/// 
/// manager = gtk_recent_manager_get_default ();
/// info = gtk_recent_manager_lookup_item (manager, file_uri, &error);
/// if (error)
///   {
///     g_warning ("Could not find the file: %s", error->message);
///     g_error_free (error);
///   }
/// else
///  {
///    // Use the info object
///    gtk_recent_info_unref (info);
///  }
/// ```
/// 
/// In order to retrieve the list of recently used files, you can use
/// `gtk_recent_manager_get_items()`, which returns a list of `GtkRecentInfo`-structs.
/// 
/// A `GtkRecentManager` is the model used to populate the contents of
/// one, or more `GtkRecentChooser` implementations.
/// 
/// Note that the maximum age of the recently used files list is
/// controllable through the `GtkSettings:gtk`-recent-files-max-age
/// property.
/// 
/// Recently used files are supported since GTK+ 2.10.
open class RecentManager: GLibObject.Object, RecentManagerProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RecentManager` instance.
    public init(_ op: UnsafeMutablePointer<GtkRecentManager>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `RecentManagerProtocol`
    /// Will retain `GtkRecentManager`.
    public convenience init<T: RecentManagerProtocol>(_ other: T) {
        self.init(cast(other.recent_manager_ptr))
        g_object_ref(cast(recent_manager_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRecentManager.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRecentManager.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRecentManager.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRecentManager>(opaquePointer))
    }

    /// Creates a new recent manager object. Recent manager objects are used to
    /// handle the list of recently used resources. A `GtkRecentManager` object
    /// monitors the recently used resources list, and emits the “changed” signal
    /// each time something inside the list changes.
    /// 
    /// `GtkRecentManager` objects are expensive: be sure to create them only when
    /// needed. You should use `gtk_recent_manager_get_default()` instead.
    public convenience init() {
        let rv = gtk_recent_manager_new()
        self.init(cast(rv))
    }

    /// Gets a unique instance of `GtkRecentManager`, that you can share
    /// in your application without caring about memory management.
    public static func getDefault() -> RecentManager! {
        let rv = gtk_recent_manager_get_default()
        return rv.map { RecentManager(cast($0)) }
    }

}

public enum RecentManagerPropertyName: String, PropertyNameProtocol {
    /// The full path to the file to be used to store and read the
    /// recently used resources list
    case String = "filename"
    /// The size of the recently used resources list.
    case size = "size"
}

public extension RecentManagerProtocol {
    /// Bind a `RecentManagerPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: RecentManagerPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(recent_manager_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }
}

public enum RecentManagerSignalName: String, SignalNameProtocol {
    /// Emitted when the current recently used resources manager changes
    /// its contents, either by calling `gtk_recent_manager_add_item()` or
    /// by another application.
    case changed = "changed"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The full path to the file to be used to store and read the
    /// recently used resources list
    case notifyFilename = "notify::filename"
    /// The size of the recently used resources list.
    case notifySize = "notify::size"
}

public extension RecentManagerProtocol {
    /// Connect a `RecentManagerSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: RecentManagerSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(recent_manager_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension RecentManagerProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRecentManager` instance.
    var recent_manager_ptr: UnsafeMutablePointer<GtkRecentManager> { return ptr.assumingMemoryBound(to: GtkRecentManager.self) }

    /// Adds a new resource, pointed by `uri`, into the recently used
    /// resources list, using the metadata specified inside the
    /// `GtkRecentData`-struct passed in `recent_data`.
    /// 
    /// The passed URI will be used to identify this resource inside the
    /// list.
    /// 
    /// In order to register the new recently used resource, metadata about
    /// the resource must be passed as well as the URI; the metadata is
    /// stored in a `GtkRecentData`-struct, which must contain the MIME
    /// type of the resource pointed by the URI; the name of the application
    /// that is registering the item, and a command line to be used when
    /// launching the item.
    /// 
    /// Optionally, a `GtkRecentData`-struct might contain a UTF-8 string
    /// to be used when viewing the item instead of the last component of
    /// the URI; a short description of the item; whether the item should
    /// be considered private - that is, should be displayed only by the
    /// applications that have registered it.
    func addFull(uri: UnsafePointer<gchar>, recentData recent_data: RecentDataProtocol) -> Bool {
        let rv = gtk_recent_manager_add_full(cast(recent_manager_ptr), uri, cast(recent_data.ptr))
        return Bool(rv != 0)
    }

    /// Adds a new resource, pointed by `uri`, into the recently used
    /// resources list.
    /// 
    /// This function automatically retrieves some of the needed
    /// metadata and setting other metadata to common default values;
    /// it then feeds the data to `gtk_recent_manager_add_full()`.
    /// 
    /// See `gtk_recent_manager_add_full()` if you want to explicitly
    /// define the metadata for the resource pointed by `uri`.
    func addItem(uri: UnsafePointer<gchar>) -> Bool {
        let rv = gtk_recent_manager_add_item(cast(recent_manager_ptr), uri)
        return Bool(rv != 0)
    }

    /// Gets the list of recently used resources.
    func getItems() -> UnsafeMutablePointer<GList>! {
        let rv = gtk_recent_manager_get_items(cast(recent_manager_ptr))
        return cast(rv)
    }

    /// Checks whether there is a recently used resource registered
    /// with `uri` inside the recent manager.
    func hasItem(uri: UnsafePointer<gchar>) -> Bool {
        let rv = gtk_recent_manager_has_item(cast(recent_manager_ptr), uri)
        return Bool(rv != 0)
    }

    /// Searches for a URI inside the recently used resources list, and
    /// returns a `GtkRecentInfo`-struct containing informations about the resource
    /// like its MIME type, or its display name.
    func lookupItem(uri: UnsafePointer<gchar>) throws -> UnsafeMutablePointer<GtkRecentInfo>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_recent_manager_lookup_item(cast(recent_manager_ptr), uri, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Changes the location of a recently used resource from `uri` to `new_uri`.
    /// 
    /// Please note that this function will not affect the resource pointed
    /// by the URIs, but only the URI used in the recently used resources list.
    func moveItem(uri: UnsafePointer<gchar>, newURI new_uri: UnsafePointer<gchar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_recent_manager_move_item(cast(recent_manager_ptr), uri, new_uri, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Purges every item from the recently used resources list.
    func purgeItems() throws -> CInt {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_recent_manager_purge_items(cast(recent_manager_ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return CInt(rv)
    }

    /// Removes a resource pointed by `uri` from the recently used resources
    /// list handled by a recent manager.
    func removeItem(uri: UnsafePointer<gchar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_recent_manager_remove_item(cast(recent_manager_ptr), uri, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }
    /// Gets the list of recently used resources.
    var items: UnsafeMutablePointer<GList>! {
        /// Gets the list of recently used resources.
        get {
            let rv = gtk_recent_manager_get_items(cast(recent_manager_ptr))
            return cast(rv)
        }
    }
}



// MARK: - RendererCellAccessible Class

/// The `RendererCellAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkRendererCellAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RendererCellAccessible`.
/// Alternatively, use `RendererCellAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RendererCellAccessibleProtocol: CellAccessibleProtocol {
    /// Untyped pointer to the underlying `GtkRendererCellAccessible` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRendererCellAccessible` instance.
    var renderer_cell_accessible_ptr: UnsafeMutablePointer<GtkRendererCellAccessible> { get }
}

/// The `RendererCellAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkRendererCellAccessible` instance.
/// It exposes methods that can operate on this data type through `RendererCellAccessibleProtocol` conformance.
/// Use `RendererCellAccessibleRef` only as an `unowned` reference to an existing `GtkRendererCellAccessible` instance.
///

public struct RendererCellAccessibleRef: RendererCellAccessibleProtocol {
    /// Untyped pointer to the underlying `GtkRendererCellAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `renderer_cell_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RendererCellAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRendererCellAccessible>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RendererCellAccessibleProtocol`
    init<T: RendererCellAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessibleProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessibleProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessibleProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessibleProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessibleProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        init( renderer: CellRendererProtocol) {
        let rv = gtk_renderer_cell_accessible_new(cast(renderer.ptr))
        self.init(cast(rv))
    }
}

/// The `RendererCellAccessible` type acts as a reference-counted owner of an underlying `GtkRendererCellAccessible` instance.
/// It provides the methods that can operate on this data type through `RendererCellAccessibleProtocol` conformance.
/// Use `RendererCellAccessible` as a strong reference or owner of a `GtkRendererCellAccessible` instance.
///

open class RendererCellAccessible: CellAccessible, RendererCellAccessibleProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `RendererCellAccessible` instance.
    public init(_ op: UnsafeMutablePointer<GtkRendererCellAccessible>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `RendererCellAccessibleProtocol`
    /// Will retain `GtkRendererCellAccessible`.
    public convenience init<T: RendererCellAccessibleProtocol>(_ other: T) {
        self.init(cast(other.renderer_cell_accessible_ptr))
        g_object_ref(cast(renderer_cell_accessible_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessibleProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRendererCellAccessible.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessibleProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRendererCellAccessible.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessibleProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRendererCellAccessible.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessibleProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRendererCellAccessible>(opaquePointer))
    }

    public convenience init( renderer: CellRendererProtocol) {
        let rv = gtk_renderer_cell_accessible_new(cast(renderer.ptr))
        self.init(cast(rv))
    }


}

public enum RendererCellAccessiblePropertyName: String, PropertyNameProtocol {
    case accessibleComponentLayer = "accessible-component-layer"
    case accessibleComponentMdiZorder = "accessible-component-mdi-zorder"
    case accessibleDescription = "accessible-description"
    case accessibleHypertextNlinks = "accessible-hypertext-nlinks"
    case accessibleName = "accessible-name"
    case accessibleParent = "accessible-parent"
    case accessibleRole = "accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case accessibleTableCaption = "accessible-table-caption"
    case accessibleTableCaptionObject = "accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case accessibleTableColumnDescription = "accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case accessibleTableColumnHeader = "accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case accessibleTableRowDescription = "accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case accessibleTableRowHeader = "accessible-table-row-header"
    case accessibleTableSummary = "accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case accessibleValue = "accessible-value"
    case renderer = "renderer"
    case widget = "widget"
}

public extension RendererCellAccessibleProtocol {
    /// Bind a `RendererCellAccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: RendererCellAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(renderer_cell_accessible_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }
}

public enum RendererCellAccessibleSignalName: String, SignalNameProtocol {
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The signal "property-change" is emitted when an object's property
    /// value changes. `arg1` contains an `AtkPropertyValues` with the name
    /// and the new value of the property whose value has changed. Note
    /// that, as with GObject notify, getting this signal does not
    /// guarantee that the value of the property has actually changed; it
    /// may also be emitted when the setter of the property is called to
    /// reinstate the previous value.
    /// 
    /// Toolkit implementor note: ATK implementors should use
    /// `g_object_notify()` to emit property-changed
    /// notifications. `AtkObject::property`-changed is needed by the
    /// implementation of `atk_add_global_event_listener()` because GObject
    /// notify doesn't support emission hooks.
    case propertyChange = "property-change"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The "visible-data-changed" signal is emitted when the visual
    /// appearance of the object changed.
    case visibleDataChanged = "visible-data-changed"
    case notifyAccessibleComponentLayer = "notify::accessible-component-layer"
    case notifyAccessibleComponentMdiZorder = "notify::accessible-component-mdi-zorder"
    case notifyAccessibleDescription = "notify::accessible-description"
    case notifyAccessibleHypertextNlinks = "notify::accessible-hypertext-nlinks"
    case notifyAccessibleName = "notify::accessible-name"
    case notifyAccessibleParent = "notify::accessible-parent"
    case notifyAccessibleRole = "notify::accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case notifyAccessibleTableCaption = "notify::accessible-table-caption"
    case notifyAccessibleTableCaptionObject = "notify::accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case notifyAccessibleTableColumnDescription = "notify::accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case notifyAccessibleTableColumnHeader = "notify::accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case notifyAccessibleTableRowDescription = "notify::accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case notifyAccessibleTableRowHeader = "notify::accessible-table-row-header"
    case notifyAccessibleTableSummary = "notify::accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case notifyAccessibleValue = "notify::accessible-value"
    case notifyRenderer = "notify::renderer"
    case notifyWidget = "notify::widget"
}

public extension RendererCellAccessibleProtocol {
    /// Connect a `RendererCellAccessibleSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: RendererCellAccessibleSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(renderer_cell_accessible_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension RendererCellAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRendererCellAccessible` instance.
    var renderer_cell_accessible_ptr: UnsafeMutablePointer<GtkRendererCellAccessible> { return ptr.assumingMemoryBound(to: GtkRendererCellAccessible.self) }

}



// MARK: - Revealer Class

/// The `RevealerProtocol` protocol exposes the methods and properties of an underlying `GtkRevealer` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Revealer`.
/// Alternatively, use `RevealerRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The GtkRevealer widget is a container which animates
/// the transition of its child from invisible to visible.
/// 
/// The style of transition can be controlled with
/// `gtk_revealer_set_transition_type()`.
/// 
/// These animations respect the `GtkSettings:gtk`-enable-animations
/// setting.
/// 
/// # CSS nodes
/// 
/// GtkRevealer has a single CSS node with name revealer.
/// 
/// The GtkRevealer widget was added in GTK+ 3.10.
public protocol RevealerProtocol: BinProtocol {
    /// Untyped pointer to the underlying `GtkRevealer` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkRevealer` instance.
    var revealer_ptr: UnsafeMutablePointer<GtkRevealer> { get }
}

/// The `RevealerRef` type acts as a lightweight Swift reference to an underlying `GtkRevealer` instance.
/// It exposes methods that can operate on this data type through `RevealerProtocol` conformance.
/// Use `RevealerRef` only as an `unowned` reference to an existing `GtkRevealer` instance.
///
/// The GtkRevealer widget is a container which animates
/// the transition of its child from invisible to visible.
/// 
/// The style of transition can be controlled with
/// `gtk_revealer_set_transition_type()`.
/// 
/// These animations respect the `GtkSettings:gtk`-enable-animations
/// setting.
/// 
/// # CSS nodes
/// 
/// GtkRevealer has a single CSS node with name revealer.
/// 
/// The GtkRevealer widget was added in GTK+ 3.10.
public struct RevealerRef: RevealerProtocol {
    /// Untyped pointer to the underlying `GtkRevealer` instance.
    /// For type-safe access, use the generated, typed pointer `revealer_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RevealerRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkRevealer>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RevealerProtocol`
    init<T: RevealerProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RevealerProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RevealerProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RevealerProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RevealerProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RevealerProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkRevealer`.
    init() {
        let rv = gtk_revealer_new()
        self.init(cast(rv))
    }
}

/// The `Revealer` type acts as a reference-counted owner of an underlying `GtkRevealer` instance.
/// It provides the methods that can operate on this data type through `RevealerProtocol` conformance.
/// Use `Revealer` as a strong reference or owner of a `GtkRevealer` instance.
///
/// The GtkRevealer widget is a container which animates
/// the transition of its child from invisible to visible.
/// 
/// The style of transition can be controlled with
/// `gtk_revealer_set_transition_type()`.
/// 
/// These animations respect the `GtkSettings:gtk`-enable-animations
/// setting.
/// 
/// # CSS nodes
/// 
/// GtkRevealer has a single CSS node with name revealer.
/// 
/// The GtkRevealer widget was added in GTK+ 3.10.
open class Revealer: Bin, RevealerProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Revealer` instance.
    public init(_ op: UnsafeMutablePointer<GtkRevealer>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `RevealerProtocol`
    /// Will retain `GtkRevealer`.
    public convenience init<T: RevealerProtocol>(_ other: T) {
        self.init(cast(other.revealer_ptr))
        g_object_ref(cast(revealer_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RevealerProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkRevealer.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RevealerProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkRevealer.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RevealerProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkRevealer.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RevealerProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkRevealer>(opaquePointer))
    }

    /// Creates a new `GtkRevealer`.
    public convenience init() {
        let rv = gtk_revealer_new()
        self.init(cast(rv))
    }


}

public enum RevealerPropertyName: String, PropertyNameProtocol {
    case accessibleComponentLayer = "accessible-component-layer"
    case accessibleComponentMdiZorder = "accessible-component-mdi-zorder"
    case accessibleDescription = "accessible-description"
    case accessibleHypertextNlinks = "accessible-hypertext-nlinks"
    case accessibleName = "accessible-name"
    case accessibleParent = "accessible-parent"
    case accessibleRole = "accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case accessibleTableCaption = "accessible-table-caption"
    case accessibleTableCaptionObject = "accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case accessibleTableColumnDescription = "accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case accessibleTableColumnHeader = "accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case accessibleTableRowDescription = "accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case accessibleTableRowHeader = "accessible-table-row-header"
    case accessibleTableSummary = "accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case accessibleValue = "accessible-value"
    case appPaintable = "app-paintable"
    case borderWidth = "border-width"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case child = "child"
    case childRevealed = "child-revealed"
    case compositeChild = "composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
    case events = "events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case expand = "expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case focusOnClick = "focus-on-click"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    case isFocus = "is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginTop = "margin-top"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case receivesDefault = "receives-default"
    case resizeMode = "resize-mode"
    case revealChild = "reveal-child"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    case transitionDuration = "transition-duration"
    case transitionType = "transition-type"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
}

public extension RevealerProtocol {
    /// Bind a `RevealerPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: RevealerPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(revealer_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }
}

public enum RevealerSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    case add = "add"
    /// The `button`-press-event signal will be emitted when a button
    /// (typically from a mouse) is pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonPressEvent = "button-press-event"
    /// The `button`-release-event signal will be emitted when a button
    /// (typically from a mouse) is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonReleaseEvent = "button-release-event"
    /// Determines whether an accelerator that activates the signal
    /// identified by `signal_id` can currently be activated.
    /// This signal is present to allow applications and derived
    /// widgets to override the default `GtkWidget` handling
    /// for determining whether an accelerator can be activated.
    case canActivateAccel = "can-activate-accel"
    case checkResize = "check-resize"
    /// The `child`-notify signal is emitted for each
    /// [child property](#child-properties)  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// The `composited`-changed signal is emitted when the composited
    /// status of `widgets` screen changes.
    /// See `gdk_screen_is_composited()`.
    ///
    /// **composited-changed is deprecated:**
    /// Use GdkScreen::composited-changed instead.
    case compositedChanged = "composited-changed"
    /// The `configure`-event signal will be emitted when the size, position or
    /// stacking of the `widget`'s window has changed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case configureEvent = "configure-event"
    /// Emitted when a redirected window belonging to `widget` gets drawn into.
    /// The region/area members of the event shows what area of the redirected
    /// drawable was drawn into.
    case damageEvent = "damage-event"
    /// The `delete`-event signal is emitted if a user requests that
    /// a toplevel window is closed. The default handler for this signal
    /// destroys the window. Connecting `gtk_widget_hide_on_delete()` to
    /// this signal will cause the window to be hidden instead, so that
    /// it can later be shown again without reconstructing it.
    case deleteEvent = "delete-event"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The `destroy`-event signal is emitted when a `GdkWindow` is destroyed.
    /// You rarely get this signal, because most widgets disconnect themselves
    /// from their window before they destroy it, so no widget owns the
    /// window at destroy time.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case destroyEvent = "destroy-event"
    /// The `direction`-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The `drag`-begin signal is emitted on the drag source when a drag is
    /// started. A typical reason to connect to this signal is to set up a
    /// custom drag icon with e.g. `gtk_drag_source_set_icon_pixbuf()`.
    /// 
    /// Note that some widgets set up a drag icon in the default handler of
    /// this signal, so you may have to use `g_signal_connect_after()` to
    /// override what the default handler did.
    case dragBegin = "drag-begin"
    /// The `drag`-data-delete signal is emitted on the drag source when a drag
    /// with the action `GDK_ACTION_MOVE` is successfully completed. The signal
    /// handler is responsible for deleting the data that has been dropped. What
    /// "delete" means depends on the context of the drag operation.
    case dragDataDelete = "drag-data-delete"
    /// The `drag`-data-get signal is emitted on the drag source when the drop
    /// site requests the data which is dragged. It is the responsibility of
    /// the signal handler to fill `data` with the data in the format which
    /// is indicated by `info`. See `gtk_selection_data_set()` and
    /// `gtk_selection_data_set_text()`.
    case dragDataGet = "drag-data-get"
    /// The `drag`-data-received signal is emitted on the drop site when the
    /// dragged data has been received. If the data was received in order to
    /// determine whether the drop will be accepted, the handler is expected
    /// to call `gdk_drag_status()` and not finish the drag.
    /// If the data was received in response to a `GtkWidget::drag`-drop signal
    /// (and this is the last target to be received), the handler for this
    /// signal is expected to process the received data and then call
    /// `gtk_drag_finish()`, setting the `success` parameter depending on
    /// whether the data was processed successfully.
    /// 
    /// Applications must create some means to determine why the signal was emitted
    /// and therefore whether to call `gdk_drag_status()` or `gtk_drag_finish()`.
    /// 
    /// The handler may inspect the selected action with
    /// `gdk_drag_context_get_selected_action()` before calling
    /// `gtk_drag_finish()`, e.g. to implement `GDK_ACTION_ASK` as
    /// shown in the following example:
    /// (C Language Example):
    /// ```C
    /// void
    /// drag_data_received (GtkWidget          *widget,
    ///                     GdkDragContext     *context,
    ///                     gint                x,
    ///                     gint                y,
    ///                     GtkSelectionData   *data,
    ///                     guint               info,
    ///                     guint               time)
    /// {
    ///   if ((data->length >= 0) && (data->format == 8))
    ///     {
    ///       GdkDragAction action;
    /// 
    ///       // handle data here
    /// 
    ///       action = gdk_drag_context_get_selected_action (context);
    ///       if (action == GDK_ACTION_ASK)
    ///         {
    ///           GtkWidget *dialog;
    ///           gint response;
    /// 
    ///           dialog = gtk_message_dialog_new (NULL,
    ///                                            GTK_DIALOG_MODAL |
    ///                                            GTK_DIALOG_DESTROY_WITH_PARENT,
    ///                                            GTK_MESSAGE_INFO,
    ///                                            GTK_BUTTONS_YES_NO,
    ///                                            "Move the data ?\n");
    ///           response = gtk_dialog_run (GTK_DIALOG (dialog));
    ///           gtk_widget_destroy (dialog);
    /// 
    ///           if (response == GTK_RESPONSE_YES)
    ///             action = GDK_ACTION_MOVE;
    ///           else
    ///             action = GDK_ACTION_COPY;
    ///          }
    /// 
    ///       gtk_drag_finish (context, TRUE, action == GDK_ACTION_MOVE, time);
    ///     }
    ///   else
    ///     gtk_drag_finish (context, FALSE, FALSE, time);
    ///  }
    /// ```
    /// 
    case dragDataReceived = "drag-data-received"
    /// The `drag`-drop signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the cursor position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// Otherwise, the handler returns `true`. In this case, the handler must
    /// ensure that `gtk_drag_finish()` is called to let the source know that
    /// the drop is done. The call to `gtk_drag_finish()` can be done either
    /// directly or in a `GtkWidget::drag`-data-received handler which gets
    /// triggered by calling `gtk_drag_get_data()` to receive the data for one
    /// or more of the supported targets.
    case dragDrop = "drag-drop"
    /// The `drag`-end signal is emitted on the drag source when a drag is
    /// finished.  A typical reason to connect to this signal is to undo
    /// things done in `GtkWidget::drag`-begin.
    case dragEnd = "drag-end"
    /// The `drag`-failed signal is emitted on the drag source when a drag has
    /// failed. The signal handler may hook custom code to handle a failed DnD
    /// operation based on the type of error, it returns `true` is the failure has
    /// been already handled (not showing the default "drag operation failed"
    /// animation), otherwise it returns `false`.
    case dragFailed = "drag-failed"
    /// The `drag`-leave signal is emitted on the drop site when the cursor
    /// leaves the widget. A typical reason to connect to this signal is to
    /// undo things done in `GtkWidget::drag`-motion, e.g. undo highlighting
    /// with `gtk_drag_unhighlight()`.
    /// 
    /// 
    /// Likewise, the `GtkWidget::drag`-leave signal is also emitted before the
    /// `drag`-drop signal, for instance to allow cleaning up of a preview item
    /// created in the `GtkWidget::drag`-motion signal handler.
    case dragLeave = "drag-leave"
    /// The `drag`-motion signal is emitted on the drop site when the user
    /// moves the cursor over the widget during a drag. The signal handler
    /// must determine whether the cursor position is in a drop zone or not.
    /// If it is not in a drop zone, it returns `false` and no further processing
    /// is necessary. Otherwise, the handler returns `true`. In this case, the
    /// handler is responsible for providing the necessary information for
    /// displaying feedback to the user, by calling `gdk_drag_status()`.
    /// 
    /// If the decision whether the drop will be accepted or rejected can't be
    /// made based solely on the cursor position and the type of the data, the
    /// handler may inspect the dragged data by calling `gtk_drag_get_data()` and
    /// defer the `gdk_drag_status()` call to the `GtkWidget::drag`-data-received
    /// handler. Note that you must pass `GTK_DEST_DEFAULT_DROP`,
    /// `GTK_DEST_DEFAULT_MOTION` or `GTK_DEST_DEFAULT_ALL` to `gtk_drag_dest_set()`
    /// when using the drag-motion signal that way.
    /// 
    /// Also note that there is no drag-enter signal. The drag receiver has to
    /// keep track of whether he has received any drag-motion signals since the
    /// last `GtkWidget::drag`-leave and if not, treat the drag-motion signal as
    /// an "enter" signal. Upon an "enter", the handler will typically highlight
    /// the drop site with `gtk_drag_highlight()`.
    /// (C Language Example):
    /// ```C
    /// static void
    /// drag_motion (GtkWidget      *widget,
    ///              GdkDragContext *context,
    ///              gint            x,
    ///              gint            y,
    ///              guint           time)
    /// {
    ///   GdkAtom target;
    /// 
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (!private_data->drag_highlight)
    ///    {
    ///      private_data->drag_highlight = 1;
    ///      gtk_drag_highlight (widget);
    ///    }
    /// 
    ///   target = gtk_drag_dest_find_target (widget, context, NULL);
    ///   if (target == GDK_NONE)
    ///     gdk_drag_status (context, 0, time);
    ///   else
    ///    {
    ///      private_data->pending_status
    ///         = gdk_drag_context_get_suggested_action (context);
    ///      gtk_drag_get_data (widget, context, target, time);
    ///    }
    /// 
    ///   return TRUE;
    /// }
    /// 
    /// static void
    /// drag_data_received (GtkWidget        *widget,
    ///                     GdkDragContext   *context,
    ///                     gint              x,
    ///                     gint              y,
    ///                     GtkSelectionData *selection_data,
    ///                     guint             info,
    ///                     guint             time)
    /// {
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (private_data->suggested_action)
    ///    {
    ///      private_data->suggested_action = 0;
    /// 
    ///      // We are getting this data due to a request in drag_motion,
    ///      // rather than due to a request in drag_drop, so we are just
    ///      // supposed to call gdk_drag_status(), not actually paste in
    ///      // the data.
    /// 
    ///      str = gtk_selection_data_get_text (selection_data);
    ///      if (!data_is_acceptable (str))
    ///        gdk_drag_status (context, 0, time);
    ///      else
    ///        gdk_drag_status (context,
    ///                         private_data->suggested_action,
    ///                         time);
    ///    }
    ///   else
    ///    {
    ///      // accept the drop
    ///    }
    /// }
    /// ```
    /// 
    case dragMotion = "drag-motion"
    /// This signal is emitted when a widget is supposed to render itself.
    /// The `widget`'s top left corner must be painted at the origin of
    /// the passed in context and be sized to the values returned by
    /// `gtk_widget_get_allocated_width()` and
    /// `gtk_widget_get_allocated_height()`.
    /// 
    /// Signal handlers connected to this signal can modify the cairo
    /// context passed as `cr` in any way they like and don't need to
    /// restore it. The signal emission takes care of calling `cairo_save()`
    /// before and `cairo_restore()` after invoking the handler.
    /// 
    /// The signal handler will get a `cr` with a clip region already set to the
    /// widget's dirty region, i.e. to the area that needs repainting.  Complicated
    /// widgets that want to avoid redrawing themselves completely can get the full
    /// extents of the clip region with `gdk_cairo_get_clip_rectangle()`, or they can
    /// get a finer-grained representation of the dirty region with
    /// `cairo_copy_clip_rectangle_list()`.
    case draw = "draw"
    /// The `enter`-notify-event will be emitted when the pointer enters
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_ENTER_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case enterNotifyEvent = "enter-notify-event"
    /// The GTK+ main loop will emit three signals for each GDK event delivered
    /// to a widget: one generic `event` signal, another, more specific,
    /// signal that matches the type of event delivered (e.g.
    /// `GtkWidget::key`-press-event) and finally a generic
    /// `GtkWidget::event`-after signal.
    case event = "event"
    /// After the emission of the `GtkWidget::event` signal and (optionally)
    /// the second more specific signal, `event`-after will be emitted
    /// regardless of the previous two signals handlers return values.
    case eventAfter = "event-after"
    case focus = "focus"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The `focus`-in-event signal will be emitted when the keyboard focus
    /// enters the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusInEvent = "focus-in-event"
    /// The `focus`-out-event signal will be emitted when the keyboard focus
    /// leaves the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusOutEvent = "focus-out-event"
    /// Emitted when a pointer or keyboard grab on a window belonging
    /// to `widget` gets broken.
    /// 
    /// On X11, this happens when the grab window becomes unviewable
    /// (i.e. it or one of its ancestors is unmapped), or if the same
    /// application grabs the pointer or keyboard again.
    case grabBrokenEvent = "grab-broken-event"
    case grabFocus = "grab-focus"
    /// The `grab`-notify signal is emitted when a widget becomes
    /// shadowed by a GTK+ grab (not a pointer or keyboard grab) on
    /// another widget, or when it becomes unshadowed due to a grab
    /// being removed.
    /// 
    /// A widget is shadowed by a `gtk_grab_add()` when the topmost
    /// grab widget in the grab stack of its window group is not
    /// its ancestor.
    case grabNotify = "grab-notify"
    /// The `hide` signal is emitted when `widget` is hidden, for example with
    /// `gtk_widget_hide()`.
    case hide = "hide"
    /// The `hierarchy`-changed signal is emitted when the
    /// anchored state of a widget changes. A widget is
    /// “anchored” when its toplevel
    /// ancestor is a `GtkWindow`. This signal is emitted when
    /// a widget changes from un-anchored to anchored or vice-versa.
    case hierarchyChanged = "hierarchy-changed"
    /// The `key`-press-event signal is emitted when a key is pressed. The signal
    /// emission will reoccur at the key-repeat rate when the key is kept pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyPressEvent = "key-press-event"
    /// The `key`-release-event signal is emitted when a key is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyReleaseEvent = "key-release-event"
    /// Gets emitted if keyboard navigation fails.
    /// See `gtk_widget_keynav_failed()` for details.
    case keynavFailed = "keynav-failed"
    /// The `leave`-notify-event will be emitted when the pointer leaves
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_LEAVE_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case leaveNotifyEvent = "leave-notify-event"
    /// The `map` signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// `gtk_widget_set_visible()`) and all its parents up to the toplevel widget
    /// are also visible. Once the map has occurred, `GtkWidget::map`-event will
    /// be emitted.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget::unmap`.
    case map = "map"
    /// The `map`-event signal will be emitted when the `widget`'s window is
    /// mapped. A window is mapped when it becomes visible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case mapEvent = "map-event"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// The `motion`-notify-event signal is emitted when the pointer moves
    /// over the widget's `GdkWindow`.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_POINTER_MOTION_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case motionNotifyEvent = "motion-notify-event"
    case moveFocus = "move-focus"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The `parent`-set signal is emitted when a new parent
    /// has been set on a widget.
    case parentSet = "parent-set"
    /// This signal gets emitted whenever a widget should pop up a context
    /// menu. This usually happens through the standard key binding mechanism;
    /// by pressing a certain key while a widget is focused, the user can cause
    /// the widget to pop up a menu.  For example, the `GtkEntry` widget creates
    /// a menu with clipboard commands. See the
    /// [Popup Menu Migration Checklist](#checklist-popup-menu)
    /// for an example of how to use this signal.
    case popupMenu = "popup-menu"
    /// The signal "property-change" is emitted when an object's property
    /// value changes. `arg1` contains an `AtkPropertyValues` with the name
    /// and the new value of the property whose value has changed. Note
    /// that, as with GObject notify, getting this signal does not
    /// guarantee that the value of the property has actually changed; it
    /// may also be emitted when the setter of the property is called to
    /// reinstate the previous value.
    /// 
    /// Toolkit implementor note: ATK implementors should use
    /// `g_object_notify()` to emit property-changed
    /// notifications. `AtkObject::property`-changed is needed by the
    /// implementation of `atk_add_global_event_listener()` because GObject
    /// notify doesn't support emission hooks.
    case propertyChange = "property-change"
    /// The `property`-notify-event signal will be emitted when a property on
    /// the `widget`'s window has been changed or deleted.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROPERTY_CHANGE_MASK` mask.
    case propertyNotifyEvent = "property-notify-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_IN_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityInEvent = "proximity-in-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_OUT_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityOutEvent = "proximity-out-event"
    /// Emitted when `GtkWidget:has`-tooltip is `true` and the hover timeout
    /// has expired with the cursor hovering "above" `widget`; or emitted when `widget` got
    /// focus in keyboard mode.
    /// 
    /// Using the given coordinates, the signal handler should determine
    /// whether a tooltip should be shown for `widget`. If this is the case
    /// `true` should be returned, `false` otherwise.  Note that if
    /// `keyboard_mode` is `true`, the values of `x` and `y` are undefined and
    /// should not be used.
    /// 
    /// The signal handler is free to manipulate `tooltip` with the therefore
    /// destined function calls.
    case queryTooltip = "query-tooltip"
    /// The `realize` signal is emitted when `widget` is associated with a
    /// `GdkWindow`, which means that `gtk_widget_realize()` has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    case remove = "remove"
    /// The `screen`-changed signal gets emitted when the
    /// screen of a widget has changed.
    case screenChanged = "screen-changed"
    /// The `scroll`-event signal is emitted when a button in the 4 to 7
    /// range is pressed. Wheel mice are usually configured to generate
    /// button press events for buttons 4 and 5 when the wheel is turned.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_SCROLL_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case scrollEvent = "scroll-event"
    /// The `selection`-clear-event signal will be emitted when the
    /// the `widget`'s window has lost ownership of a selection.
    case selectionClearEvent = "selection-clear-event"
    case selectionGet = "selection-get"
    case selectionNotifyEvent = "selection-notify-event"
    case selectionReceived = "selection-received"
    /// The `selection`-request-event signal will be emitted when
    /// another client requests ownership of the selection owned by
    /// the `widget`'s window.
    case selectionRequestEvent = "selection-request-event"
    case setFocusChild = "set-focus-child"
    /// The `show` signal is emitted when `widget` is shown, for example with
    /// `gtk_widget_show()`.
    case show = "show"
    case showHelp = "show-help"
    case sizeAllocate = "size-allocate"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The `state`-changed signal is emitted when the widget state changes.
    /// See `gtk_widget_get_state()`.
    ///
    /// **state-changed is deprecated:**
    /// Use #GtkWidget::state-flags-changed instead.
    case stateChanged = "state-changed"
    /// The `state`-flags-changed signal is emitted when the widget state
    /// changes, see `gtk_widget_get_state_flags()`.
    case stateFlagsChanged = "state-flags-changed"
    /// The `style`-set signal is emitted when a new style has been set
    /// on a widget. Note that style-modifying functions like
    /// `gtk_widget_modify_base()` also cause this signal to be emitted.
    /// 
    /// Note that this signal is emitted for changes to the deprecated
    /// `GtkStyle`. To track changes to the `GtkStyleContext` associated
    /// with a widget, use the `GtkWidget::style`-updated signal.
    ///
    /// **style-set is deprecated:**
    /// Use the #GtkWidget::style-updated signal
    case styleSet = "style-set"
    /// The `style`-updated signal is a convenience signal that is emitted when the
    /// `GtkStyleContext::changed` signal is emitted on the `widget`'s associated
    /// `GtkStyleContext` as returned by `gtk_widget_get_style_context()`.
    /// 
    /// Note that style-modifying functions like `gtk_widget_override_color()` also
    /// cause this signal to be emitted.
    case styleUpdated = "style-updated"
    case touchEvent = "touch-event"
    /// The `unmap` signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The `unmap`-event signal will be emitted when the `widget`'s window is
    /// unmapped. A window is unmapped when it becomes invisible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case unmapEvent = "unmap-event"
    /// The `unrealize` signal is emitted when the `GdkWindow` associated with
    /// `widget` is destroyed, which means that `gtk_widget_unrealize()` has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
    /// The `visibility`-notify-event will be emitted when the `widget`'s
    /// window is obscured or unobscured.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_VISIBILITY_NOTIFY_MASK` mask.
    ///
    /// **visibility-notify-event is deprecated:**
    /// Modern composited windowing systems with pervasive
    ///     transparency make it impossible to track the visibility of a window
    ///     reliably, so this signal can not be guaranteed to provide useful
    ///     information.
    case visibilityNotifyEvent = "visibility-notify-event"
    /// The "visible-data-changed" signal is emitted when the visual
    /// appearance of the object changed.
    case visibleDataChanged = "visible-data-changed"
    /// The `window`-state-event will be emitted when the state of the
    /// toplevel window associated to the `widget` changes.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable
    /// this mask automatically for all new windows.
    case windowStateEvent = "window-state-event"
    case notifyAccessibleComponentLayer = "notify::accessible-component-layer"
    case notifyAccessibleComponentMdiZorder = "notify::accessible-component-mdi-zorder"
    case notifyAccessibleDescription = "notify::accessible-description"
    case notifyAccessibleHypertextNlinks = "notify::accessible-hypertext-nlinks"
    case notifyAccessibleName = "notify::accessible-name"
    case notifyAccessibleParent = "notify::accessible-parent"
    case notifyAccessibleRole = "notify::accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case notifyAccessibleTableCaption = "notify::accessible-table-caption"
    case notifyAccessibleTableCaptionObject = "notify::accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case notifyAccessibleTableColumnDescription = "notify::accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case notifyAccessibleTableColumnHeader = "notify::accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case notifyAccessibleTableRowDescription = "notify::accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case notifyAccessibleTableRowHeader = "notify::accessible-table-row-header"
    case notifyAccessibleTableSummary = "notify::accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case notifyAccessibleValue = "notify::accessible-value"
    case notifyAppPaintable = "notify::app-paintable"
    case notifyBorderWidth = "notify::border-width"
    case notifyCanDefault = "notify::can-default"
    case notifyCanFocus = "notify::can-focus"
    case notifyChild = "notify::child"
    case notifyChildRevealed = "notify::child-revealed"
    case notifyCompositeChild = "notify::composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case notifyDoubleBuffered = "notify::double-buffered"
    case notifyEvents = "notify::events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case notifyExpand = "notify::expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case notifyHalign = "notify::halign"
    case notifyHasDefault = "notify::has-default"
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case notifyHexpandSet = "notify::hexpand-set"
    case notifyIsFocus = "notify::is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case notifyMargin = "notify::margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case notifyMarginLeft = "notify::margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case notifyMarginRight = "notify::margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginTop = "notify::margin-top"
    case notifyName = "notify::name"
    case notifyNoShowAll = "notify::no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case notifyOpacity = "notify::opacity"
    case notifyParent = "notify::parent"
    case notifyReceivesDefault = "notify::receives-default"
    case notifyResizeMode = "notify::resize-mode"
    case notifyRevealChild = "notify::reveal-child"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case notifyStyle = "notify::style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    case notifyTransitionDuration = "notify::transition-duration"
    case notifyTransitionType = "notify::transition-type"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    case notifyWidthRequest = "notify::width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case notifyWindow = "notify::window"
}

public extension RevealerProtocol {
    /// Connect a `RevealerSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: RevealerSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(revealer_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension RevealerProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRevealer` instance.
    var revealer_ptr: UnsafeMutablePointer<GtkRevealer> { return ptr.assumingMemoryBound(to: GtkRevealer.self) }

    /// Returns whether the child is fully revealed, in other words whether
    /// the transition to the revealed state is completed.
    func getChildRevealed() -> Bool {
        let rv = gtk_revealer_get_child_revealed(cast(revealer_ptr))
        return Bool(rv != 0)
    }

    /// Returns whether the child is currently
    /// revealed. See `gtk_revealer_set_reveal_child()`.
    /// 
    /// This function returns `true` as soon as the transition
    /// is to the revealed state is started. To learn whether
    /// the child is fully revealed (ie the transition is completed),
    /// use `gtk_revealer_get_child_revealed()`.
    func getRevealChild() -> Bool {
        let rv = gtk_revealer_get_reveal_child(cast(revealer_ptr))
        return Bool(rv != 0)
    }

    /// Returns the amount of time (in milliseconds) that
    /// transitions will take.
    func getTransitionDuration() -> CUnsignedInt {
        let rv = gtk_revealer_get_transition_duration(cast(revealer_ptr))
        return CUnsignedInt(rv)
    }

    /// Gets the type of animation that will be used
    /// for transitions in `revealer`.
    func getTransitionType() -> GtkRevealerTransitionType {
        let rv = gtk_revealer_get_transition_type(cast(revealer_ptr))
        return rv
    }

    /// Tells the `GtkRevealer` to reveal or conceal its child.
    /// 
    /// The transition will be animated with the current
    /// transition type of `revealer`.
    func set(revealChild reveal_child: Bool) {
        gtk_revealer_set_reveal_child(cast(revealer_ptr), gboolean(reveal_child ? 1 : 0))
    
    }

    /// Sets the duration that transitions will take.
    func setTransition(duration: CUnsignedInt) {
        gtk_revealer_set_transition_duration(cast(revealer_ptr), guint(duration))
    
    }

    /// Sets the type of animation that will be used for
    /// transitions in `revealer`. Available types include
    /// various kinds of fades and slides.
    func setTransitionType(transition: RevealerTransitionType) {
        gtk_revealer_set_transition_type(cast(revealer_ptr), transition)
    
    }
    /// Returns whether the child is fully revealed, in other words whether
    /// the transition to the revealed state is completed.
    var childRevealed: Bool {
        /// Returns whether the child is fully revealed, in other words whether
        /// the transition to the revealed state is completed.
        get {
            let rv = gtk_revealer_get_child_revealed(cast(revealer_ptr))
            return Bool(rv != 0)
        }
    }

    /// Returns whether the child is currently
    /// revealed. See `gtk_revealer_set_reveal_child()`.
    /// 
    /// This function returns `true` as soon as the transition
    /// is to the revealed state is started. To learn whether
    /// the child is fully revealed (ie the transition is completed),
    /// use `gtk_revealer_get_child_revealed()`.
    var revealChild: Bool {
        /// Returns whether the child is currently
        /// revealed. See `gtk_revealer_set_reveal_child()`.
        /// 
        /// This function returns `true` as soon as the transition
        /// is to the revealed state is started. To learn whether
        /// the child is fully revealed (ie the transition is completed),
        /// use `gtk_revealer_get_child_revealed()`.
        get {
            let rv = gtk_revealer_get_reveal_child(cast(revealer_ptr))
            return Bool(rv != 0)
        }
        /// Tells the `GtkRevealer` to reveal or conceal its child.
        /// 
        /// The transition will be animated with the current
        /// transition type of `revealer`.
        nonmutating set {
            gtk_revealer_set_reveal_child(cast(revealer_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Returns the amount of time (in milliseconds) that
    /// transitions will take.
    var transitionDuration: CUnsignedInt {
        /// Returns the amount of time (in milliseconds) that
        /// transitions will take.
        get {
            let rv = gtk_revealer_get_transition_duration(cast(revealer_ptr))
            return CUnsignedInt(rv)
        }
        /// Sets the duration that transitions will take.
        nonmutating set {
            gtk_revealer_set_transition_duration(cast(revealer_ptr), guint(newValue))
        }
    }

    /// Gets the type of animation that will be used
    /// for transitions in `revealer`.
    var transitionType: GtkRevealerTransitionType {
        /// Gets the type of animation that will be used
        /// for transitions in `revealer`.
        get {
            let rv = gtk_revealer_get_transition_type(cast(revealer_ptr))
            return rv
        }
        /// Sets the type of animation that will be used for
        /// transitions in `revealer`. Available types include
        /// various kinds of fades and slides.
        nonmutating set {
            gtk_revealer_set_transition_type(cast(revealer_ptr), newValue)
        }
    }
}



// MARK: - Scale Class

/// The `ScaleProtocol` protocol exposes the methods and properties of an underlying `GtkScale` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Scale`.
/// Alternatively, use `ScaleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A GtkScale is a slider control used to select a numeric value.
/// To use it, you’ll probably want to investigate the methods on
/// its base class, `GtkRange`, in addition to the methods for GtkScale itself.
/// To set the value of a scale, you would normally use `gtk_range_set_value()`.
/// To detect changes to the value, you would normally use the
/// `GtkRange::value`-changed signal.
/// 
/// Note that using the same upper and lower bounds for the `GtkScale` (through
/// the `GtkRange` methods) will hide the slider itself. This is useful for
/// applications that want to show an undeterminate value on the scale, without
/// changing the layout of the application (such as movie or music players).
/// 
/// # GtkScale as GtkBuildable
/// 
/// GtkScale supports a custom <marks> element, which can contain multiple
/// <mark> elements. The “value” and “position” attributes have the same
/// meaning as `gtk_scale_add_mark()` parameters of the same name. If the
/// element is not empty, its content is taken as the markup to show at
/// the mark. It can be translated with the usual ”translatable” and
/// “context” attributes.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// scale[.fine-tune][.marks-before][.marks-after]
/// ├── marks.top
/// │   ├── mark
/// │   ┊    ├── [label]
/// │   ┊    ╰── indicator
/// ┊   ┊
/// │   ╰── mark
/// ├── [value]
/// ├── contents
/// │   ╰── trough
/// │       ├── slider
/// │       ├── [highlight]
/// │       ╰── [fill]
/// ╰── marks.bottom
///     ├── mark
///     ┊    ├── indicator
///     ┊    ╰── [label]
///     ╰── mark
/// ```
/// 
/// GtkScale has a main CSS node with name scale and a subnode for its contents,
/// with subnodes named trough and slider.
/// 
/// The main node gets the style class .fine-tune added when the scale is in
/// 'fine-tuning' mode.
/// 
/// If the scale has an origin (see `gtk_scale_set_has_origin()`), there is a
/// subnode with name highlight below the trough node that is used for rendering
/// the highlighted part of the trough.
/// 
/// If the scale is showing a fill level (see `gtk_range_set_show_fill_level()`),
/// there is a subnode with name fill below the trough node that is used for
/// rendering the filled in part of the trough.
/// 
/// If marks are present, there is a marks subnode before or after the contents
/// node, below which each mark gets a node with name mark. The marks nodes get
/// either the .top or .bottom style class.
/// 
/// The mark node has a subnode named indicator. If the mark has text, it also
/// has a subnode named label. When the mark is either above or left of the
/// scale, the label subnode is the first when present. Otherwise, the indicator
/// subnode is the first.
/// 
/// The main CSS node gets the 'marks-before' and/or 'marks-after' style classes
/// added depending on what marks are present.
/// 
/// If the scale is displaying the value (see `GtkScale:draw`-value), there is
/// subnode with name value.
public protocol ScaleProtocol: RangeProtocol {
    /// Untyped pointer to the underlying `GtkScale` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkScale` instance.
    var scale_ptr: UnsafeMutablePointer<GtkScale> { get }
}

/// The `ScaleRef` type acts as a lightweight Swift reference to an underlying `GtkScale` instance.
/// It exposes methods that can operate on this data type through `ScaleProtocol` conformance.
/// Use `ScaleRef` only as an `unowned` reference to an existing `GtkScale` instance.
///
/// A GtkScale is a slider control used to select a numeric value.
/// To use it, you’ll probably want to investigate the methods on
/// its base class, `GtkRange`, in addition to the methods for GtkScale itself.
/// To set the value of a scale, you would normally use `gtk_range_set_value()`.
/// To detect changes to the value, you would normally use the
/// `GtkRange::value`-changed signal.
/// 
/// Note that using the same upper and lower bounds for the `GtkScale` (through
/// the `GtkRange` methods) will hide the slider itself. This is useful for
/// applications that want to show an undeterminate value on the scale, without
/// changing the layout of the application (such as movie or music players).
/// 
/// # GtkScale as GtkBuildable
/// 
/// GtkScale supports a custom <marks> element, which can contain multiple
/// <mark> elements. The “value” and “position” attributes have the same
/// meaning as `gtk_scale_add_mark()` parameters of the same name. If the
/// element is not empty, its content is taken as the markup to show at
/// the mark. It can be translated with the usual ”translatable” and
/// “context” attributes.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// scale[.fine-tune][.marks-before][.marks-after]
/// ├── marks.top
/// │   ├── mark
/// │   ┊    ├── [label]
/// │   ┊    ╰── indicator
/// ┊   ┊
/// │   ╰── mark
/// ├── [value]
/// ├── contents
/// │   ╰── trough
/// │       ├── slider
/// │       ├── [highlight]
/// │       ╰── [fill]
/// ╰── marks.bottom
///     ├── mark
///     ┊    ├── indicator
///     ┊    ╰── [label]
///     ╰── mark
/// ```
/// 
/// GtkScale has a main CSS node with name scale and a subnode for its contents,
/// with subnodes named trough and slider.
/// 
/// The main node gets the style class .fine-tune added when the scale is in
/// 'fine-tuning' mode.
/// 
/// If the scale has an origin (see `gtk_scale_set_has_origin()`), there is a
/// subnode with name highlight below the trough node that is used for rendering
/// the highlighted part of the trough.
/// 
/// If the scale is showing a fill level (see `gtk_range_set_show_fill_level()`),
/// there is a subnode with name fill below the trough node that is used for
/// rendering the filled in part of the trough.
/// 
/// If marks are present, there is a marks subnode before or after the contents
/// node, below which each mark gets a node with name mark. The marks nodes get
/// either the .top or .bottom style class.
/// 
/// The mark node has a subnode named indicator. If the mark has text, it also
/// has a subnode named label. When the mark is either above or left of the
/// scale, the label subnode is the first when present. Otherwise, the indicator
/// subnode is the first.
/// 
/// The main CSS node gets the 'marks-before' and/or 'marks-after' style classes
/// added depending on what marks are present.
/// 
/// If the scale is displaying the value (see `GtkScale:draw`-value), there is
/// subnode with name value.
public struct ScaleRef: ScaleProtocol {
    /// Untyped pointer to the underlying `GtkScale` instance.
    /// For type-safe access, use the generated, typed pointer `scale_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ScaleRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkScale>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ScaleProtocol`
    init<T: ScaleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkScale`.
    init( orientation: Orientation, adjustment: AdjustmentProtocol) {
        let rv = gtk_scale_new(orientation, cast(adjustment.ptr))
        self.init(cast(rv))
    }

    /// Creates a new scale widget with the given orientation that lets the
    /// user input a number between `min` and `max` (including `min` and `max`)
    /// with the increment `step`.  `step` must be nonzero; it’s the distance
    /// the slider moves when using the arrow keys to adjust the scale
    /// value.
    /// 
    /// Note that the way in which the precision is derived works best if `step`
    /// is a power of ten. If the resulting precision is not suitable for your
    /// needs, use `gtk_scale_set_digits()` to correct it.
    init(range orientation: Orientation, min: gdouble, max: gdouble, step: gdouble) {
        let rv = gtk_scale_new_with_range(orientation, min, max, step)
        self.init(cast(rv))
    }
    /// Creates a new scale widget with the given orientation that lets the
    /// user input a number between `min` and `max` (including `min` and `max`)
    /// with the increment `step`.  `step` must be nonzero; it’s the distance
    /// the slider moves when using the arrow keys to adjust the scale
    /// value.
    /// 
    /// Note that the way in which the precision is derived works best if `step`
    /// is a power of ten. If the resulting precision is not suitable for your
    /// needs, use `gtk_scale_set_digits()` to correct it.
    static func newWith(range orientation: Orientation, min: gdouble, max: gdouble, step: gdouble) -> ScaleRef! {
        let rv = gtk_scale_new_with_range(orientation, min, max, step)
        return rv.map { ScaleRef(cast($0)) }
    }
}

/// The `Scale` type acts as a reference-counted owner of an underlying `GtkScale` instance.
/// It provides the methods that can operate on this data type through `ScaleProtocol` conformance.
/// Use `Scale` as a strong reference or owner of a `GtkScale` instance.
///
/// A GtkScale is a slider control used to select a numeric value.
/// To use it, you’ll probably want to investigate the methods on
/// its base class, `GtkRange`, in addition to the methods for GtkScale itself.
/// To set the value of a scale, you would normally use `gtk_range_set_value()`.
/// To detect changes to the value, you would normally use the
/// `GtkRange::value`-changed signal.
/// 
/// Note that using the same upper and lower bounds for the `GtkScale` (through
/// the `GtkRange` methods) will hide the slider itself. This is useful for
/// applications that want to show an undeterminate value on the scale, without
/// changing the layout of the application (such as movie or music players).
/// 
/// # GtkScale as GtkBuildable
/// 
/// GtkScale supports a custom <marks> element, which can contain multiple
/// <mark> elements. The “value” and “position” attributes have the same
/// meaning as `gtk_scale_add_mark()` parameters of the same name. If the
/// element is not empty, its content is taken as the markup to show at
/// the mark. It can be translated with the usual ”translatable” and
/// “context” attributes.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// scale[.fine-tune][.marks-before][.marks-after]
/// ├── marks.top
/// │   ├── mark
/// │   ┊    ├── [label]
/// │   ┊    ╰── indicator
/// ┊   ┊
/// │   ╰── mark
/// ├── [value]
/// ├── contents
/// │   ╰── trough
/// │       ├── slider
/// │       ├── [highlight]
/// │       ╰── [fill]
/// ╰── marks.bottom
///     ├── mark
///     ┊    ├── indicator
///     ┊    ╰── [label]
///     ╰── mark
/// ```
/// 
/// GtkScale has a main CSS node with name scale and a subnode for its contents,
/// with subnodes named trough and slider.
/// 
/// The main node gets the style class .fine-tune added when the scale is in
/// 'fine-tuning' mode.
/// 
/// If the scale has an origin (see `gtk_scale_set_has_origin()`), there is a
/// subnode with name highlight below the trough node that is used for rendering
/// the highlighted part of the trough.
/// 
/// If the scale is showing a fill level (see `gtk_range_set_show_fill_level()`),
/// there is a subnode with name fill below the trough node that is used for
/// rendering the filled in part of the trough.
/// 
/// If marks are present, there is a marks subnode before or after the contents
/// node, below which each mark gets a node with name mark. The marks nodes get
/// either the .top or .bottom style class.
/// 
/// The mark node has a subnode named indicator. If the mark has text, it also
/// has a subnode named label. When the mark is either above or left of the
/// scale, the label subnode is the first when present. Otherwise, the indicator
/// subnode is the first.
/// 
/// The main CSS node gets the 'marks-before' and/or 'marks-after' style classes
/// added depending on what marks are present.
/// 
/// If the scale is displaying the value (see `GtkScale:draw`-value), there is
/// subnode with name value.
open class Scale: Range, ScaleProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Scale` instance.
    public init(_ op: UnsafeMutablePointer<GtkScale>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `ScaleProtocol`
    /// Will retain `GtkScale`.
    public convenience init<T: ScaleProtocol>(_ other: T) {
        self.init(cast(other.scale_ptr))
        g_object_ref(cast(scale_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkScale.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkScale.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkScale.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkScale>(opaquePointer))
    }

    /// Creates a new `GtkScale`.
    public convenience init( orientation: Orientation, adjustment: AdjustmentProtocol) {
        let rv = gtk_scale_new(orientation, cast(adjustment.ptr))
        self.init(cast(rv))
    }

    /// Creates a new scale widget with the given orientation that lets the
    /// user input a number between `min` and `max` (including `min` and `max`)
    /// with the increment `step`.  `step` must be nonzero; it’s the distance
    /// the slider moves when using the arrow keys to adjust the scale
    /// value.
    /// 
    /// Note that the way in which the precision is derived works best if `step`
    /// is a power of ten. If the resulting precision is not suitable for your
    /// needs, use `gtk_scale_set_digits()` to correct it.
    public convenience init(range orientation: Orientation, min: gdouble, max: gdouble, step: gdouble) {
        let rv = gtk_scale_new_with_range(orientation, min, max, step)
        self.init(cast(rv))
    }

    /// Creates a new scale widget with the given orientation that lets the
    /// user input a number between `min` and `max` (including `min` and `max`)
    /// with the increment `step`.  `step` must be nonzero; it’s the distance
    /// the slider moves when using the arrow keys to adjust the scale
    /// value.
    /// 
    /// Note that the way in which the precision is derived works best if `step`
    /// is a power of ten. If the resulting precision is not suitable for your
    /// needs, use `gtk_scale_set_digits()` to correct it.
    public static func newWith(range orientation: Orientation, min: gdouble, max: gdouble, step: gdouble) -> Scale! {
        let rv = gtk_scale_new_with_range(orientation, min, max, step)
        return rv.map { Scale(cast($0)) }
    }

}

public enum ScalePropertyName: String, PropertyNameProtocol {
    case accessibleComponentLayer = "accessible-component-layer"
    case accessibleComponentMdiZorder = "accessible-component-mdi-zorder"
    case accessibleDescription = "accessible-description"
    case accessibleHypertextNlinks = "accessible-hypertext-nlinks"
    case accessibleName = "accessible-name"
    case accessibleParent = "accessible-parent"
    case accessibleRole = "accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case accessibleTableCaption = "accessible-table-caption"
    case accessibleTableCaptionObject = "accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case accessibleTableColumnDescription = "accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case accessibleTableColumnHeader = "accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case accessibleTableRowDescription = "accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case accessibleTableRowHeader = "accessible-table-row-header"
    case accessibleTableSummary = "accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case accessibleValue = "accessible-value"
    case adjustment = "adjustment"
    case appPaintable = "app-paintable"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case compositeChild = "composite-child"
    case digits = "digits"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
    case drawValue = "draw-value"
    case events = "events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case expand = "expand"
    /// The fill level (e.g. prebuffering of a network stream).
    /// See `gtk_range_set_fill_level()`.
    case fillLevel = "fill-level"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case focusOnClick = "focus-on-click"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    case hasOrigin = "has-origin"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    case inverted = "inverted"
    case isFocus = "is-focus"
    case lowerStepperSensitivity = "lower-stepper-sensitivity"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginTop = "margin-top"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case receivesDefault = "receives-default"
    /// The restrict-to-fill-level property controls whether slider
    /// movement is restricted to an upper boundary set by the
    /// fill level. See `gtk_range_set_restrict_to_fill_level()`.
    case restrictToFillLevel = "restrict-to-fill-level"
    /// The number of digits to round the value to when
    /// it changes, or -1. See `GtkRange::change`-value.
    case roundDigits = "round-digits"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// The show-fill-level property controls whether fill level indicator
    /// graphics are displayed on the trough. See
    /// `gtk_range_set_show_fill_level()`.
    case showFillLevel = "show-fill-level"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    case upperStepperSensitivity = "upper-stepper-sensitivity"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    case valuePos = "value-pos"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
}

public extension ScaleProtocol {
    /// Bind a `ScalePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ScalePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(scale_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }
}

public enum ScaleSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    /// Emitted before clamping a value, to give the application a
    /// chance to adjust the bounds.
    case adjustBounds = "adjust-bounds"
    /// The `button`-press-event signal will be emitted when a button
    /// (typically from a mouse) is pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonPressEvent = "button-press-event"
    /// The `button`-release-event signal will be emitted when a button
    /// (typically from a mouse) is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonReleaseEvent = "button-release-event"
    /// Determines whether an accelerator that activates the signal
    /// identified by `signal_id` can currently be activated.
    /// This signal is present to allow applications and derived
    /// widgets to override the default `GtkWidget` handling
    /// for determining whether an accelerator can be activated.
    case canActivateAccel = "can-activate-accel"
    /// The `GtkRange::change`-value signal is emitted when a scroll action is
    /// performed on a range.  It allows an application to determine the
    /// type of scroll event that occurred and the resultant new value.
    /// The application can handle the event itself and return `true` to
    /// prevent further processing.  Or, by returning `false`, it can pass
    /// the event to other handlers until the default GTK+ handler is
    /// reached.
    /// 
    /// The value parameter is unrounded.  An application that overrides
    /// the GtkRange`change`-value signal is responsible for clamping the
    /// value to the desired number of decimal digits; the default GTK+
    /// handler clamps the value based on `GtkRange:round`-digits.
    case changeValue = "change-value"
    /// The `child`-notify signal is emitted for each
    /// [child property](#child-properties)  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// The `composited`-changed signal is emitted when the composited
    /// status of `widgets` screen changes.
    /// See `gdk_screen_is_composited()`.
    ///
    /// **composited-changed is deprecated:**
    /// Use GdkScreen::composited-changed instead.
    case compositedChanged = "composited-changed"
    /// The `configure`-event signal will be emitted when the size, position or
    /// stacking of the `widget`'s window has changed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case configureEvent = "configure-event"
    /// Emitted when a redirected window belonging to `widget` gets drawn into.
    /// The region/area members of the event shows what area of the redirected
    /// drawable was drawn into.
    case damageEvent = "damage-event"
    /// The `delete`-event signal is emitted if a user requests that
    /// a toplevel window is closed. The default handler for this signal
    /// destroys the window. Connecting `gtk_widget_hide_on_delete()` to
    /// this signal will cause the window to be hidden instead, so that
    /// it can later be shown again without reconstructing it.
    case deleteEvent = "delete-event"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The `destroy`-event signal is emitted when a `GdkWindow` is destroyed.
    /// You rarely get this signal, because most widgets disconnect themselves
    /// from their window before they destroy it, so no widget owns the
    /// window at destroy time.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case destroyEvent = "destroy-event"
    /// The `direction`-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The `drag`-begin signal is emitted on the drag source when a drag is
    /// started. A typical reason to connect to this signal is to set up a
    /// custom drag icon with e.g. `gtk_drag_source_set_icon_pixbuf()`.
    /// 
    /// Note that some widgets set up a drag icon in the default handler of
    /// this signal, so you may have to use `g_signal_connect_after()` to
    /// override what the default handler did.
    case dragBegin = "drag-begin"
    /// The `drag`-data-delete signal is emitted on the drag source when a drag
    /// with the action `GDK_ACTION_MOVE` is successfully completed. The signal
    /// handler is responsible for deleting the data that has been dropped. What
    /// "delete" means depends on the context of the drag operation.
    case dragDataDelete = "drag-data-delete"
    /// The `drag`-data-get signal is emitted on the drag source when the drop
    /// site requests the data which is dragged. It is the responsibility of
    /// the signal handler to fill `data` with the data in the format which
    /// is indicated by `info`. See `gtk_selection_data_set()` and
    /// `gtk_selection_data_set_text()`.
    case dragDataGet = "drag-data-get"
    /// The `drag`-data-received signal is emitted on the drop site when the
    /// dragged data has been received. If the data was received in order to
    /// determine whether the drop will be accepted, the handler is expected
    /// to call `gdk_drag_status()` and not finish the drag.
    /// If the data was received in response to a `GtkWidget::drag`-drop signal
    /// (and this is the last target to be received), the handler for this
    /// signal is expected to process the received data and then call
    /// `gtk_drag_finish()`, setting the `success` parameter depending on
    /// whether the data was processed successfully.
    /// 
    /// Applications must create some means to determine why the signal was emitted
    /// and therefore whether to call `gdk_drag_status()` or `gtk_drag_finish()`.
    /// 
    /// The handler may inspect the selected action with
    /// `gdk_drag_context_get_selected_action()` before calling
    /// `gtk_drag_finish()`, e.g. to implement `GDK_ACTION_ASK` as
    /// shown in the following example:
    /// (C Language Example):
    /// ```C
    /// void
    /// drag_data_received (GtkWidget          *widget,
    ///                     GdkDragContext     *context,
    ///                     gint                x,
    ///                     gint                y,
    ///                     GtkSelectionData   *data,
    ///                     guint               info,
    ///                     guint               time)
    /// {
    ///   if ((data->length >= 0) && (data->format == 8))
    ///     {
    ///       GdkDragAction action;
    /// 
    ///       // handle data here
    /// 
    ///       action = gdk_drag_context_get_selected_action (context);
    ///       if (action == GDK_ACTION_ASK)
    ///         {
    ///           GtkWidget *dialog;
    ///           gint response;
    /// 
    ///           dialog = gtk_message_dialog_new (NULL,
    ///                                            GTK_DIALOG_MODAL |
    ///                                            GTK_DIALOG_DESTROY_WITH_PARENT,
    ///                                            GTK_MESSAGE_INFO,
    ///                                            GTK_BUTTONS_YES_NO,
    ///                                            "Move the data ?\n");
    ///           response = gtk_dialog_run (GTK_DIALOG (dialog));
    ///           gtk_widget_destroy (dialog);
    /// 
    ///           if (response == GTK_RESPONSE_YES)
    ///             action = GDK_ACTION_MOVE;
    ///           else
    ///             action = GDK_ACTION_COPY;
    ///          }
    /// 
    ///       gtk_drag_finish (context, TRUE, action == GDK_ACTION_MOVE, time);
    ///     }
    ///   else
    ///     gtk_drag_finish (context, FALSE, FALSE, time);
    ///  }
    /// ```
    /// 
    case dragDataReceived = "drag-data-received"
    /// The `drag`-drop signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the cursor position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// Otherwise, the handler returns `true`. In this case, the handler must
    /// ensure that `gtk_drag_finish()` is called to let the source know that
    /// the drop is done. The call to `gtk_drag_finish()` can be done either
    /// directly or in a `GtkWidget::drag`-data-received handler which gets
    /// triggered by calling `gtk_drag_get_data()` to receive the data for one
    /// or more of the supported targets.
    case dragDrop = "drag-drop"
    /// The `drag`-end signal is emitted on the drag source when a drag is
    /// finished.  A typical reason to connect to this signal is to undo
    /// things done in `GtkWidget::drag`-begin.
    case dragEnd = "drag-end"
    /// The `drag`-failed signal is emitted on the drag source when a drag has
    /// failed. The signal handler may hook custom code to handle a failed DnD
    /// operation based on the type of error, it returns `true` is the failure has
    /// been already handled (not showing the default "drag operation failed"
    /// animation), otherwise it returns `false`.
    case dragFailed = "drag-failed"
    /// The `drag`-leave signal is emitted on the drop site when the cursor
    /// leaves the widget. A typical reason to connect to this signal is to
    /// undo things done in `GtkWidget::drag`-motion, e.g. undo highlighting
    /// with `gtk_drag_unhighlight()`.
    /// 
    /// 
    /// Likewise, the `GtkWidget::drag`-leave signal is also emitted before the
    /// `drag`-drop signal, for instance to allow cleaning up of a preview item
    /// created in the `GtkWidget::drag`-motion signal handler.
    case dragLeave = "drag-leave"
    /// The `drag`-motion signal is emitted on the drop site when the user
    /// moves the cursor over the widget during a drag. The signal handler
    /// must determine whether the cursor position is in a drop zone or not.
    /// If it is not in a drop zone, it returns `false` and no further processing
    /// is necessary. Otherwise, the handler returns `true`. In this case, the
    /// handler is responsible for providing the necessary information for
    /// displaying feedback to the user, by calling `gdk_drag_status()`.
    /// 
    /// If the decision whether the drop will be accepted or rejected can't be
    /// made based solely on the cursor position and the type of the data, the
    /// handler may inspect the dragged data by calling `gtk_drag_get_data()` and
    /// defer the `gdk_drag_status()` call to the `GtkWidget::drag`-data-received
    /// handler. Note that you must pass `GTK_DEST_DEFAULT_DROP`,
    /// `GTK_DEST_DEFAULT_MOTION` or `GTK_DEST_DEFAULT_ALL` to `gtk_drag_dest_set()`
    /// when using the drag-motion signal that way.
    /// 
    /// Also note that there is no drag-enter signal. The drag receiver has to
    /// keep track of whether he has received any drag-motion signals since the
    /// last `GtkWidget::drag`-leave and if not, treat the drag-motion signal as
    /// an "enter" signal. Upon an "enter", the handler will typically highlight
    /// the drop site with `gtk_drag_highlight()`.
    /// (C Language Example):
    /// ```C
    /// static void
    /// drag_motion (GtkWidget      *widget,
    ///              GdkDragContext *context,
    ///              gint            x,
    ///              gint            y,
    ///              guint           time)
    /// {
    ///   GdkAtom target;
    /// 
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (!private_data->drag_highlight)
    ///    {
    ///      private_data->drag_highlight = 1;
    ///      gtk_drag_highlight (widget);
    ///    }
    /// 
    ///   target = gtk_drag_dest_find_target (widget, context, NULL);
    ///   if (target == GDK_NONE)
    ///     gdk_drag_status (context, 0, time);
    ///   else
    ///    {
    ///      private_data->pending_status
    ///         = gdk_drag_context_get_suggested_action (context);
    ///      gtk_drag_get_data (widget, context, target, time);
    ///    }
    /// 
    ///   return TRUE;
    /// }
    /// 
    /// static void
    /// drag_data_received (GtkWidget        *widget,
    ///                     GdkDragContext   *context,
    ///                     gint              x,
    ///                     gint              y,
    ///                     GtkSelectionData *selection_data,
    ///                     guint             info,
    ///                     guint             time)
    /// {
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (private_data->suggested_action)
    ///    {
    ///      private_data->suggested_action = 0;
    /// 
    ///      // We are getting this data due to a request in drag_motion,
    ///      // rather than due to a request in drag_drop, so we are just
    ///      // supposed to call gdk_drag_status(), not actually paste in
    ///      // the data.
    /// 
    ///      str = gtk_selection_data_get_text (selection_data);
    ///      if (!data_is_acceptable (str))
    ///        gdk_drag_status (context, 0, time);
    ///      else
    ///        gdk_drag_status (context,
    ///                         private_data->suggested_action,
    ///                         time);
    ///    }
    ///   else
    ///    {
    ///      // accept the drop
    ///    }
    /// }
    /// ```
    /// 
    case dragMotion = "drag-motion"
    /// This signal is emitted when a widget is supposed to render itself.
    /// The `widget`'s top left corner must be painted at the origin of
    /// the passed in context and be sized to the values returned by
    /// `gtk_widget_get_allocated_width()` and
    /// `gtk_widget_get_allocated_height()`.
    /// 
    /// Signal handlers connected to this signal can modify the cairo
    /// context passed as `cr` in any way they like and don't need to
    /// restore it. The signal emission takes care of calling `cairo_save()`
    /// before and `cairo_restore()` after invoking the handler.
    /// 
    /// The signal handler will get a `cr` with a clip region already set to the
    /// widget's dirty region, i.e. to the area that needs repainting.  Complicated
    /// widgets that want to avoid redrawing themselves completely can get the full
    /// extents of the clip region with `gdk_cairo_get_clip_rectangle()`, or they can
    /// get a finer-grained representation of the dirty region with
    /// `cairo_copy_clip_rectangle_list()`.
    case draw = "draw"
    /// The `enter`-notify-event will be emitted when the pointer enters
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_ENTER_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case enterNotifyEvent = "enter-notify-event"
    /// The GTK+ main loop will emit three signals for each GDK event delivered
    /// to a widget: one generic `event` signal, another, more specific,
    /// signal that matches the type of event delivered (e.g.
    /// `GtkWidget::key`-press-event) and finally a generic
    /// `GtkWidget::event`-after signal.
    case event = "event"
    /// After the emission of the `GtkWidget::event` signal and (optionally)
    /// the second more specific signal, `event`-after will be emitted
    /// regardless of the previous two signals handlers return values.
    case eventAfter = "event-after"
    case focus = "focus"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The `focus`-in-event signal will be emitted when the keyboard focus
    /// enters the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusInEvent = "focus-in-event"
    /// The `focus`-out-event signal will be emitted when the keyboard focus
    /// leaves the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusOutEvent = "focus-out-event"
    /// Signal which allows you to change how the scale value is displayed.
    /// Connect a signal handler which returns an allocated string representing
    /// `value`. That string will then be used to display the scale's value.
    /// 
    /// If no user-provided handlers are installed, the value will be displayed on
    /// its own, rounded according to the value of the `GtkScale:digits` property.
    /// 
    /// Here's an example signal handler which displays a value 1.0 as
    /// with "-->1.0<--".
    /// (C Language Example):
    /// ```C
    /// static gchar*
    /// format_value_callback (GtkScale *scale,
    ///                        gdouble   value)
    /// {
    ///   return g_strdup_printf ("-->\%0.*g<--",
    ///                           gtk_scale_get_digits (scale), value);
    ///  }
    /// ```
    /// 
    case formatValue = "format-value"
    /// Emitted when a pointer or keyboard grab on a window belonging
    /// to `widget` gets broken.
    /// 
    /// On X11, this happens when the grab window becomes unviewable
    /// (i.e. it or one of its ancestors is unmapped), or if the same
    /// application grabs the pointer or keyboard again.
    case grabBrokenEvent = "grab-broken-event"
    case grabFocus = "grab-focus"
    /// The `grab`-notify signal is emitted when a widget becomes
    /// shadowed by a GTK+ grab (not a pointer or keyboard grab) on
    /// another widget, or when it becomes unshadowed due to a grab
    /// being removed.
    /// 
    /// A widget is shadowed by a `gtk_grab_add()` when the topmost
    /// grab widget in the grab stack of its window group is not
    /// its ancestor.
    case grabNotify = "grab-notify"
    /// The `hide` signal is emitted when `widget` is hidden, for example with
    /// `gtk_widget_hide()`.
    case hide = "hide"
    /// The `hierarchy`-changed signal is emitted when the
    /// anchored state of a widget changes. A widget is
    /// “anchored” when its toplevel
    /// ancestor is a `GtkWindow`. This signal is emitted when
    /// a widget changes from un-anchored to anchored or vice-versa.
    case hierarchyChanged = "hierarchy-changed"
    /// The `key`-press-event signal is emitted when a key is pressed. The signal
    /// emission will reoccur at the key-repeat rate when the key is kept pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyPressEvent = "key-press-event"
    /// The `key`-release-event signal is emitted when a key is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyReleaseEvent = "key-release-event"
    /// Gets emitted if keyboard navigation fails.
    /// See `gtk_widget_keynav_failed()` for details.
    case keynavFailed = "keynav-failed"
    /// The `leave`-notify-event will be emitted when the pointer leaves
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_LEAVE_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case leaveNotifyEvent = "leave-notify-event"
    /// The `map` signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// `gtk_widget_set_visible()`) and all its parents up to the toplevel widget
    /// are also visible. Once the map has occurred, `GtkWidget::map`-event will
    /// be emitted.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget::unmap`.
    case map = "map"
    /// The `map`-event signal will be emitted when the `widget`'s window is
    /// mapped. A window is mapped when it becomes visible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case mapEvent = "map-event"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// The `motion`-notify-event signal is emitted when the pointer moves
    /// over the widget's `GdkWindow`.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_POINTER_MOTION_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case motionNotifyEvent = "motion-notify-event"
    case moveFocus = "move-focus"
    /// Virtual function that moves the slider. Used for keybindings.
    case moveSlider = "move-slider"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The `parent`-set signal is emitted when a new parent
    /// has been set on a widget.
    case parentSet = "parent-set"
    /// This signal gets emitted whenever a widget should pop up a context
    /// menu. This usually happens through the standard key binding mechanism;
    /// by pressing a certain key while a widget is focused, the user can cause
    /// the widget to pop up a menu.  For example, the `GtkEntry` widget creates
    /// a menu with clipboard commands. See the
    /// [Popup Menu Migration Checklist](#checklist-popup-menu)
    /// for an example of how to use this signal.
    case popupMenu = "popup-menu"
    /// The signal "property-change" is emitted when an object's property
    /// value changes. `arg1` contains an `AtkPropertyValues` with the name
    /// and the new value of the property whose value has changed. Note
    /// that, as with GObject notify, getting this signal does not
    /// guarantee that the value of the property has actually changed; it
    /// may also be emitted when the setter of the property is called to
    /// reinstate the previous value.
    /// 
    /// Toolkit implementor note: ATK implementors should use
    /// `g_object_notify()` to emit property-changed
    /// notifications. `AtkObject::property`-changed is needed by the
    /// implementation of `atk_add_global_event_listener()` because GObject
    /// notify doesn't support emission hooks.
    case propertyChange = "property-change"
    /// The `property`-notify-event signal will be emitted when a property on
    /// the `widget`'s window has been changed or deleted.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROPERTY_CHANGE_MASK` mask.
    case propertyNotifyEvent = "property-notify-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_IN_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityInEvent = "proximity-in-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_OUT_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityOutEvent = "proximity-out-event"
    /// Emitted when `GtkWidget:has`-tooltip is `true` and the hover timeout
    /// has expired with the cursor hovering "above" `widget`; or emitted when `widget` got
    /// focus in keyboard mode.
    /// 
    /// Using the given coordinates, the signal handler should determine
    /// whether a tooltip should be shown for `widget`. If this is the case
    /// `true` should be returned, `false` otherwise.  Note that if
    /// `keyboard_mode` is `true`, the values of `x` and `y` are undefined and
    /// should not be used.
    /// 
    /// The signal handler is free to manipulate `tooltip` with the therefore
    /// destined function calls.
    case queryTooltip = "query-tooltip"
    /// The `realize` signal is emitted when `widget` is associated with a
    /// `GdkWindow`, which means that `gtk_widget_realize()` has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// The `screen`-changed signal gets emitted when the
    /// screen of a widget has changed.
    case screenChanged = "screen-changed"
    /// The `scroll`-event signal is emitted when a button in the 4 to 7
    /// range is pressed. Wheel mice are usually configured to generate
    /// button press events for buttons 4 and 5 when the wheel is turned.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_SCROLL_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case scrollEvent = "scroll-event"
    /// The `selection`-clear-event signal will be emitted when the
    /// the `widget`'s window has lost ownership of a selection.
    case selectionClearEvent = "selection-clear-event"
    case selectionGet = "selection-get"
    case selectionNotifyEvent = "selection-notify-event"
    case selectionReceived = "selection-received"
    /// The `selection`-request-event signal will be emitted when
    /// another client requests ownership of the selection owned by
    /// the `widget`'s window.
    case selectionRequestEvent = "selection-request-event"
    /// The `show` signal is emitted when `widget` is shown, for example with
    /// `gtk_widget_show()`.
    case show = "show"
    case showHelp = "show-help"
    case sizeAllocate = "size-allocate"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The `state`-changed signal is emitted when the widget state changes.
    /// See `gtk_widget_get_state()`.
    ///
    /// **state-changed is deprecated:**
    /// Use #GtkWidget::state-flags-changed instead.
    case stateChanged = "state-changed"
    /// The `state`-flags-changed signal is emitted when the widget state
    /// changes, see `gtk_widget_get_state_flags()`.
    case stateFlagsChanged = "state-flags-changed"
    /// The `style`-set signal is emitted when a new style has been set
    /// on a widget. Note that style-modifying functions like
    /// `gtk_widget_modify_base()` also cause this signal to be emitted.
    /// 
    /// Note that this signal is emitted for changes to the deprecated
    /// `GtkStyle`. To track changes to the `GtkStyleContext` associated
    /// with a widget, use the `GtkWidget::style`-updated signal.
    ///
    /// **style-set is deprecated:**
    /// Use the #GtkWidget::style-updated signal
    case styleSet = "style-set"
    /// The `style`-updated signal is a convenience signal that is emitted when the
    /// `GtkStyleContext::changed` signal is emitted on the `widget`'s associated
    /// `GtkStyleContext` as returned by `gtk_widget_get_style_context()`.
    /// 
    /// Note that style-modifying functions like `gtk_widget_override_color()` also
    /// cause this signal to be emitted.
    case styleUpdated = "style-updated"
    case touchEvent = "touch-event"
    /// The `unmap` signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The `unmap`-event signal will be emitted when the `widget`'s window is
    /// unmapped. A window is unmapped when it becomes invisible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case unmapEvent = "unmap-event"
    /// The `unrealize` signal is emitted when the `GdkWindow` associated with
    /// `widget` is destroyed, which means that `gtk_widget_unrealize()` has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
    /// Emitted when the range value changes.
    case valueChanged = "value-changed"
    /// The `visibility`-notify-event will be emitted when the `widget`'s
    /// window is obscured or unobscured.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_VISIBILITY_NOTIFY_MASK` mask.
    ///
    /// **visibility-notify-event is deprecated:**
    /// Modern composited windowing systems with pervasive
    ///     transparency make it impossible to track the visibility of a window
    ///     reliably, so this signal can not be guaranteed to provide useful
    ///     information.
    case visibilityNotifyEvent = "visibility-notify-event"
    /// The "visible-data-changed" signal is emitted when the visual
    /// appearance of the object changed.
    case visibleDataChanged = "visible-data-changed"
    /// The `window`-state-event will be emitted when the state of the
    /// toplevel window associated to the `widget` changes.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable
    /// this mask automatically for all new windows.
    case windowStateEvent = "window-state-event"
    case notifyAccessibleComponentLayer = "notify::accessible-component-layer"
    case notifyAccessibleComponentMdiZorder = "notify::accessible-component-mdi-zorder"
    case notifyAccessibleDescription = "notify::accessible-description"
    case notifyAccessibleHypertextNlinks = "notify::accessible-hypertext-nlinks"
    case notifyAccessibleName = "notify::accessible-name"
    case notifyAccessibleParent = "notify::accessible-parent"
    case notifyAccessibleRole = "notify::accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case notifyAccessibleTableCaption = "notify::accessible-table-caption"
    case notifyAccessibleTableCaptionObject = "notify::accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case notifyAccessibleTableColumnDescription = "notify::accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case notifyAccessibleTableColumnHeader = "notify::accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case notifyAccessibleTableRowDescription = "notify::accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case notifyAccessibleTableRowHeader = "notify::accessible-table-row-header"
    case notifyAccessibleTableSummary = "notify::accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case notifyAccessibleValue = "notify::accessible-value"
    case notifyAdjustment = "notify::adjustment"
    case notifyAppPaintable = "notify::app-paintable"
    case notifyCanDefault = "notify::can-default"
    case notifyCanFocus = "notify::can-focus"
    case notifyCompositeChild = "notify::composite-child"
    case notifyDigits = "notify::digits"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case notifyDoubleBuffered = "notify::double-buffered"
    case notifyDrawValue = "notify::draw-value"
    case notifyEvents = "notify::events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case notifyExpand = "notify::expand"
    /// The fill level (e.g. prebuffering of a network stream).
    /// See `gtk_range_set_fill_level()`.
    case notifyFillLevel = "notify::fill-level"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case notifyHalign = "notify::halign"
    case notifyHasDefault = "notify::has-default"
    case notifyHasFocus = "notify::has-focus"
    case notifyHasOrigin = "notify::has-origin"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case notifyHexpandSet = "notify::hexpand-set"
    case notifyInverted = "notify::inverted"
    case notifyIsFocus = "notify::is-focus"
    case notifyLowerStepperSensitivity = "notify::lower-stepper-sensitivity"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case notifyMargin = "notify::margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case notifyMarginLeft = "notify::margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case notifyMarginRight = "notify::margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginTop = "notify::margin-top"
    case notifyName = "notify::name"
    case notifyNoShowAll = "notify::no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case notifyOpacity = "notify::opacity"
    case notifyParent = "notify::parent"
    case notifyReceivesDefault = "notify::receives-default"
    /// The restrict-to-fill-level property controls whether slider
    /// movement is restricted to an upper boundary set by the
    /// fill level. See `gtk_range_set_restrict_to_fill_level()`.
    case notifyRestrictToFillLevel = "notify::restrict-to-fill-level"
    /// The number of digits to round the value to when
    /// it changes, or -1. See `GtkRange::change`-value.
    case notifyRoundDigits = "notify::round-digits"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
    /// The show-fill-level property controls whether fill level indicator
    /// graphics are displayed on the trough. See
    /// `gtk_range_set_show_fill_level()`.
    case notifyShowFillLevel = "notify::show-fill-level"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case notifyStyle = "notify::style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    case notifyUpperStepperSensitivity = "notify::upper-stepper-sensitivity"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    case notifyValuePos = "notify::value-pos"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    case notifyWidthRequest = "notify::width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case notifyWindow = "notify::window"
}

public extension ScaleProtocol {
    /// Connect a `ScaleSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: ScaleSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(scale_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension ScaleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkScale` instance.
    var scale_ptr: UnsafeMutablePointer<GtkScale> { return ptr.assumingMemoryBound(to: GtkScale.self) }

    /// Adds a mark at `value`.
    /// 
    /// A mark is indicated visually by drawing a tick mark next to the scale,
    /// and GTK+ makes it easy for the user to position the scale exactly at the
    /// marks value.
    /// 
    /// If `markup` is not `nil`, text is shown next to the tick mark.
    /// 
    /// To remove marks from a scale, use `gtk_scale_clear_marks()`.
    func addMark(value: gdouble, position: PositionType, markup: UnsafePointer<gchar>) {
        gtk_scale_add_mark(cast(scale_ptr), value, position, markup)
    
    }

    /// Removes any marks that have been added with `gtk_scale_add_mark()`.
    func clearMarks() {
        gtk_scale_clear_marks(cast(scale_ptr))
    
    }

    /// Gets the number of decimal places that are displayed in the value.
    func getDigits() -> CInt {
        let rv = gtk_scale_get_digits(cast(scale_ptr))
        return CInt(rv)
    }

    /// Returns whether the current value is displayed as a string
    /// next to the slider.
    func getDrawValue() -> Bool {
        let rv = gtk_scale_get_draw_value(cast(scale_ptr))
        return Bool(rv != 0)
    }

    /// Returns whether the scale has an origin.
    func getHasOrigin() -> Bool {
        let rv = gtk_scale_get_has_origin(cast(scale_ptr))
        return Bool(rv != 0)
    }

    /// Gets the `PangoLayout` used to display the scale. The returned
    /// object is owned by the scale so does not need to be freed by
    /// the caller.
    func getLayout() -> UnsafeMutablePointer<PangoLayout>! {
        let rv = gtk_scale_get_layout(cast(scale_ptr))
        return cast(rv)
    }

    /// Obtains the coordinates where the scale will draw the
    /// `PangoLayout` representing the text in the scale. Remember
    /// when using the `PangoLayout` function you need to convert to
    /// and from pixels using `PANGO_PIXELS()` or `PANGO_SCALE`.
    /// 
    /// If the `GtkScale:draw`-value property is `false`, the return
    /// values are undefined.
    func getLayoutOffsets(x: UnsafeMutablePointer<CInt>, y: UnsafeMutablePointer<CInt>) {
        gtk_scale_get_layout_offsets(cast(scale_ptr), cast(x), cast(y))
    
    }

    /// Gets the position in which the current value is displayed.
    func getValuePos() -> GtkPositionType {
        let rv = gtk_scale_get_value_pos(cast(scale_ptr))
        return rv
    }

    /// Sets the number of decimal places that are displayed in the value. Also
    /// causes the value of the adjustment to be rounded to this number of digits,
    /// so the retrieved value matches the displayed one, if `GtkScale:draw`-value is
    /// `true` when the value changes. If you want to enforce rounding the value when
    /// `GtkScale:draw`-value is `false`, you can set `GtkRange:round`-digits instead.
    /// 
    /// Note that rounding to a small number of digits can interfere with
    /// the smooth autoscrolling that is built into `GtkScale`. As an alternative,
    /// you can use the `GtkScale::format`-value signal to format the displayed
    /// value yourself.
    func set(digits: CInt) {
        gtk_scale_set_digits(cast(scale_ptr), gint(digits))
    
    }

    /// Specifies whether the current value is displayed as a string next
    /// to the slider.
    func set(drawValue draw_value: Bool) {
        gtk_scale_set_draw_value(cast(scale_ptr), gboolean(draw_value ? 1 : 0))
    
    }

    /// If `GtkScale:has`-origin is set to `true` (the default), the scale will
    /// highlight the part of the trough between the origin (bottom or left side)
    /// and the current value.
    func set(hasOrigin has_origin: Bool) {
        gtk_scale_set_has_origin(cast(scale_ptr), gboolean(has_origin ? 1 : 0))
    
    }

    /// Sets the position in which the current value is displayed.
    func setValue(pos: PositionType) {
        gtk_scale_set_value_pos(cast(scale_ptr), pos)
    
    }
    var digits: CInt {
        /// Gets the number of decimal places that are displayed in the value.
        get {
            let rv = gtk_scale_get_digits(cast(scale_ptr))
            return CInt(rv)
        }
        /// Sets the number of decimal places that are displayed in the value. Also
        /// causes the value of the adjustment to be rounded to this number of digits,
        /// so the retrieved value matches the displayed one, if `GtkScale:draw`-value is
        /// `true` when the value changes. If you want to enforce rounding the value when
        /// `GtkScale:draw`-value is `false`, you can set `GtkRange:round`-digits instead.
        /// 
        /// Note that rounding to a small number of digits can interfere with
        /// the smooth autoscrolling that is built into `GtkScale`. As an alternative,
        /// you can use the `GtkScale::format`-value signal to format the displayed
        /// value yourself.
        nonmutating set {
            gtk_scale_set_digits(cast(scale_ptr), gint(newValue))
        }
    }

    /// Returns whether the current value is displayed as a string
    /// next to the slider.
    var drawValue: Bool {
        /// Returns whether the current value is displayed as a string
        /// next to the slider.
        get {
            let rv = gtk_scale_get_draw_value(cast(scale_ptr))
            return Bool(rv != 0)
        }
        /// Specifies whether the current value is displayed as a string next
        /// to the slider.
        nonmutating set {
            gtk_scale_set_draw_value(cast(scale_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Returns whether the scale has an origin.
    var hasOrigin: Bool {
        /// Returns whether the scale has an origin.
        get {
            let rv = gtk_scale_get_has_origin(cast(scale_ptr))
            return Bool(rv != 0)
        }
        /// If `GtkScale:has`-origin is set to `true` (the default), the scale will
        /// highlight the part of the trough between the origin (bottom or left side)
        /// and the current value.
        nonmutating set {
            gtk_scale_set_has_origin(cast(scale_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Gets the `PangoLayout` used to display the scale. The returned
    /// object is owned by the scale so does not need to be freed by
    /// the caller.
    var layout: UnsafeMutablePointer<PangoLayout>! {
        /// Gets the `PangoLayout` used to display the scale. The returned
        /// object is owned by the scale so does not need to be freed by
        /// the caller.
        get {
            let rv = gtk_scale_get_layout(cast(scale_ptr))
            return cast(rv)
        }
    }

    /// Gets the position in which the current value is displayed.
    var valuePos: GtkPositionType {
        /// Gets the position in which the current value is displayed.
        get {
            let rv = gtk_scale_get_value_pos(cast(scale_ptr))
            return rv
        }
        /// Sets the position in which the current value is displayed.
        nonmutating set {
            gtk_scale_set_value_pos(cast(scale_ptr), newValue)
        }
    }
}



