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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRadioButton` instance.
    var radio_button_ptr: UnsafeMutablePointer<GtkRadioButton>! { get }

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
public struct RadioButtonRef: RadioButtonProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkRadioButton` instance.
    /// For type-safe access, use the generated, typed pointer `radio_button_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RadioButtonRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRadioButton>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRadioButton>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRadioButton>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRadioButton>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `RadioButtonProtocol`
    @inlinable init<T: RadioButtonProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: RadioButtonProtocol>(_ other: T) -> RadioButtonRef { RadioButtonRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkRadioButton`. To be of any practical value, a widget should
    /// then be packed into the radio button.
    @inlinable init<SListT: GLib.SListProtocol>( group: SListT?) {
        let rv = gtk_radio_button_new(group?._ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkRadioButton` with a text label.
    @inlinable init<SListT: GLib.SListProtocol>(group: SListT?, label: UnsafePointer<gchar>!) {
        let rv = gtk_radio_button_new_with_label(group?._ptr, label)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkRadioButton` containing a label, adding it to the same
    /// group as `group`. The label will be created using
    /// `gtk_label_new_with_mnemonic()`, so underscores in `label` indicate the
    /// mnemonic for the button.
    @inlinable init<SListT: GLib.SListProtocol>(group: SListT?, mnemonic label: UnsafePointer<gchar>!) {
        let rv = gtk_radio_button_new_with_mnemonic(group?._ptr, label)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GtkRadioButton` with a text label.
    @inlinable static func newWith<SListT: GLib.SListProtocol>(group: SListT?, label: UnsafePointer<gchar>!) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_radio_button_new_with_label(group?._ptr, label))) else { return nil }
        return rv
    }

    /// Creates a new `GtkRadioButton` containing a label, adding it to the same
    /// group as `group`. The label will be created using
    /// `gtk_label_new_with_mnemonic()`, so underscores in `label` indicate the
    /// mnemonic for the button.
    @inlinable static func newWith<SListT: GLib.SListProtocol>(group: SListT?, mnemonic label: UnsafePointer<gchar>!) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_radio_button_new_with_mnemonic(group?._ptr, label))) else { return nil }
        return rv
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
    /// Constructor for creating a RadioButton with a text label,
    /// creating a new group.
    ///
    /// - Parameter label: the label to use for the button
    @inlinable public override init(label: UnsafePointer<gchar>!) {
        let rv = gtk_radio_button_new_with_label(nil, label)
        super.init(gpointer: gpointer(rv))
    }

    /// Constructor for creating a RadioButton with a text label
    /// that contains menomics creates a new group.  Underscores in `label`
    /// indicate the mnemonic for the button.
    ///
    /// - Parameter label: the label (including mnemonic) to use for the button
    @inlinable public override init(mnemonic label: UnsafePointer<gchar>!) {
        let rv = gtk_radio_button_new_with_mnemonic(nil, label)
        super.init(gpointer: gpointer(rv))
    }

        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RadioButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkRadioButton>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RadioButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkRadioButton>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RadioButton` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RadioButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RadioButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkRadioButton>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RadioButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkRadioButton>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkRadioButton`.
    /// i.e., ownership is transferred to the `RadioButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkRadioButton>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `RadioButtonProtocol`
    /// Will retain `GtkRadioButton`.
    /// - Parameter other: an instance of a related type that implements `RadioButtonProtocol`
    @inlinable public init<T: RadioButtonProtocol>(radioButton other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkRadioButton`. To be of any practical value, a widget should
    /// then be packed into the radio button.
    @inlinable public init<SListT: GLib.SListProtocol>( group: SListT?) {
        let rv = gtk_radio_button_new(group?._ptr)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkRadioButton` with a text label.
    @inlinable public init<SListT: GLib.SListProtocol>(group: SListT?, label: UnsafePointer<gchar>!) {
        let rv = gtk_radio_button_new_with_label(group?._ptr, label)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkRadioButton` containing a label, adding it to the same
    /// group as `group`. The label will be created using
    /// `gtk_label_new_with_mnemonic()`, so underscores in `label` indicate the
    /// mnemonic for the button.
    @inlinable public init<SListT: GLib.SListProtocol>(group: SListT?, mnemonic label: UnsafePointer<gchar>!) {
        let rv = gtk_radio_button_new_with_mnemonic(group?._ptr, label)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkRadioButton` with a text label.
    @inlinable public static func newWith<SListT: GLib.SListProtocol>(group: SListT?, label: UnsafePointer<gchar>!) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_radio_button_new_with_label(group?._ptr, label))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Creates a new `GtkRadioButton` containing a label, adding it to the same
    /// group as `group`. The label will be created using
    /// `gtk_label_new_with_mnemonic()`, so underscores in `label` indicate the
    /// mnemonic for the button.
    @inlinable public static func newWith<SListT: GLib.SListProtocol>(group: SListT?, mnemonic label: UnsafePointer<gchar>!) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_radio_button_new_with_mnemonic(group?._ptr, label))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum RadioButtonPropertyName: String, PropertyNameProtocol {
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: RadioButtonPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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

    /// Get the value of a RadioButton property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: RadioButtonPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a RadioButton property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: RadioButtonPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of RadioButton
public extension RadioButtonProtocol {
    /// Emitted when the group of radio buttons that a radio button belongs
    /// to changes. This is emitted when a radio button switches from
    /// being alone to being part of a group of 2 or more buttons, or
    /// vice-versa, and when a button is moved from one group of 2 or
    /// more buttons to a different one, but not when the composition
    /// of the group that a button belongs to changes.
    /// - Note: Representation of signal named `group-changed`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onGroupChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: RadioButtonRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<RadioButtonRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(RadioButtonRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "group-changed", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::group`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyGroup(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: RadioButtonRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<RadioButtonRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(RadioButtonRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::group", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: RadioButton Class: RadioButtonProtocol extension (methods and fields)
public extension RadioButtonProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRadioButton` instance.
    @inlinable var radio_button_ptr: UnsafeMutablePointer<GtkRadioButton>! { return ptr?.assumingMemoryBound(to: GtkRadioButton.self) }

    /// Retrieves the group assigned to a radio button.
    @inlinable func getGroup() -> GLib.SListRef! {
        let rv = GLib.SListRef(gtk_radio_button_get_group(radio_button_ptr))
        return rv
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
    @inlinable func joinGroup(groupSource: RadioButtonRef? = nil) {
        gtk_radio_button_join_group(radio_button_ptr, groupSource?.radio_button_ptr)
    
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
    @inlinable func joinGroup<RadioButtonT: RadioButtonProtocol>(groupSource: RadioButtonT?) {
        gtk_radio_button_join_group(radio_button_ptr, groupSource?.radio_button_ptr)
    
    }

    /// Sets a `GtkRadioButton`’s group. It should be noted that this does not change
    /// the layout of your interface in any way, so if you are changing the group,
    /// it is likely you will need to re-arrange the user interface to reflect these
    /// changes.
    @inlinable func set(group: GLib.SListRef? = nil) {
        gtk_radio_button_set_group(radio_button_ptr, group?._ptr)
    
    }
    /// Sets a `GtkRadioButton`’s group. It should be noted that this does not change
    /// the layout of your interface in any way, so if you are changing the group,
    /// it is likely you will need to re-arrange the user interface to reflect these
    /// changes.
    @inlinable func set<SListT: GLib.SListProtocol>(group: SListT?) {
        gtk_radio_button_set_group(radio_button_ptr, group?._ptr)
    
    }
    /// Sets a new group for a radio button.
    @inlinable var group: GLib.SListRef! {
        /// Retrieves the group assigned to a radio button.
        get {
            let rv = GLib.SListRef(gtk_radio_button_get_group(radio_button_ptr))
            return rv
        }
        /// Sets a `GtkRadioButton`’s group. It should be noted that this does not change
        /// the layout of your interface in any way, so if you are changing the group,
        /// it is likely you will need to re-arrange the user interface to reflect these
        /// changes.
        nonmutating set {
            gtk_radio_button_set_group(radio_button_ptr, UnsafeMutablePointer<GSList>(newValue?._ptr))
        }
    }

    @inlinable var checkButton: GtkCheckButton {
        get {
            let rv = radio_button_ptr.pointee.check_button
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - RadioButtonAccessible Class

/// The `RadioButtonAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkRadioButtonAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RadioButtonAccessible`.
/// Alternatively, use `RadioButtonAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RadioButtonAccessibleProtocol: ToggleButtonAccessibleProtocol {
        /// Untyped pointer to the underlying `GtkRadioButtonAccessible` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRadioButtonAccessible` instance.
    var radio_button_accessible_ptr: UnsafeMutablePointer<GtkRadioButtonAccessible>! { get }

}

/// The `RadioButtonAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkRadioButtonAccessible` instance.
/// It exposes methods that can operate on this data type through `RadioButtonAccessibleProtocol` conformance.
/// Use `RadioButtonAccessibleRef` only as an `unowned` reference to an existing `GtkRadioButtonAccessible` instance.
///

public struct RadioButtonAccessibleRef: RadioButtonAccessibleProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkRadioButtonAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `radio_button_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RadioButtonAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRadioButtonAccessible>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRadioButtonAccessible>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRadioButtonAccessible>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRadioButtonAccessible>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `RadioButtonAccessibleProtocol`
    @inlinable init<T: RadioButtonAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: RadioButtonAccessibleProtocol>(_ other: T) -> RadioButtonAccessibleRef { RadioButtonAccessibleRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessibleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessibleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessibleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessibleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessibleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RadioButtonAccessible` type acts as a reference-counted owner of an underlying `GtkRadioButtonAccessible` instance.
/// It provides the methods that can operate on this data type through `RadioButtonAccessibleProtocol` conformance.
/// Use `RadioButtonAccessible` as a strong reference or owner of a `GtkRadioButtonAccessible` instance.
///

open class RadioButtonAccessible: ToggleButtonAccessible, RadioButtonAccessibleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RadioButtonAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkRadioButtonAccessible>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RadioButtonAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkRadioButtonAccessible>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RadioButtonAccessible` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RadioButtonAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RadioButtonAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkRadioButtonAccessible>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RadioButtonAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkRadioButtonAccessible>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkRadioButtonAccessible`.
    /// i.e., ownership is transferred to the `RadioButtonAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkRadioButtonAccessible>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `RadioButtonAccessibleProtocol`
    /// Will retain `GtkRadioButtonAccessible`.
    /// - Parameter other: an instance of a related type that implements `RadioButtonAccessibleProtocol`
    @inlinable public init<T: RadioButtonAccessibleProtocol>(radioButtonAccessible other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessibleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessibleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessibleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessibleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: RadioButtonAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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

    /// Get the value of a RadioButtonAccessible property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: RadioButtonAccessiblePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a RadioButtonAccessible property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: RadioButtonAccessiblePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: RadioButtonAccessible has no signals// MARK: RadioButtonAccessible Class: RadioButtonAccessibleProtocol extension (methods and fields)
public extension RadioButtonAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRadioButtonAccessible` instance.
    @inlinable var radio_button_accessible_ptr: UnsafeMutablePointer<GtkRadioButtonAccessible>! { return ptr?.assumingMemoryBound(to: GtkRadioButtonAccessible.self) }


    @inlinable var parent: GtkToggleButtonAccessible {
        get {
            let rv = radio_button_accessible_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRadioMenuItem` instance.
    var radio_menu_item_ptr: UnsafeMutablePointer<GtkRadioMenuItem>! { get }

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
public struct RadioMenuItemRef: RadioMenuItemProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkRadioMenuItem` instance.
    /// For type-safe access, use the generated, typed pointer `radio_menu_item_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RadioMenuItemRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRadioMenuItem>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRadioMenuItem>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRadioMenuItem>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRadioMenuItem>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `RadioMenuItemProtocol`
    @inlinable init<T: RadioMenuItemProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: RadioMenuItemProtocol>(_ other: T) -> RadioMenuItemRef { RadioMenuItemRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkRadioMenuItem`.
    @inlinable init<SListT: GLib.SListProtocol>( group: SListT?) {
        let rv = gtk_radio_menu_item_new(group?._ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkRadioMenuItem` whose child is a simple `GtkLabel`.
    @inlinable init<SListT: GLib.SListProtocol>(group: SListT?, label: UnsafePointer<gchar>!) {
        let rv = gtk_radio_menu_item_new_with_label(group?._ptr, label)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkRadioMenuItem` containing a label. The label
    /// will be created using `gtk_label_new_with_mnemonic()`, so underscores
    /// in `label` indicate the mnemonic for the menu item.
    @inlinable init<SListT: GLib.SListProtocol>(group: SListT?, mnemonic label: UnsafePointer<gchar>!) {
        let rv = gtk_radio_menu_item_new_with_mnemonic(group?._ptr, label)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GtkRadioMenuItem` whose child is a simple `GtkLabel`.
    @inlinable static func newWith<SListT: GLib.SListProtocol>(group: SListT?, label: UnsafePointer<gchar>!) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_radio_menu_item_new_with_label(group?._ptr, label))) else { return nil }
        return rv
    }

    /// Creates a new `GtkRadioMenuItem` containing a label. The label
    /// will be created using `gtk_label_new_with_mnemonic()`, so underscores
    /// in `label` indicate the mnemonic for the menu item.
    @inlinable static func newWith<SListT: GLib.SListProtocol>(group: SListT?, mnemonic label: UnsafePointer<gchar>!) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_radio_menu_item_new_with_mnemonic(group?._ptr, label))) else { return nil }
        return rv
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
    /// Constructor for creating a RadioMenuItem with a text label,
    /// creating a new group.
    ///
    /// - Parameter label: the label to use for the button
    @inlinable public override init(label: UnsafePointer<gchar>!) {
        let rv = gtk_radio_menu_item_new_with_label(nil, label)
        super.init(gpointer: gpointer(rv))
    }

    /// Constructor for creating a RadioMenuItem with a text label
    /// that contains menomics and creates a new group.  Underscores in `label`
    /// indicate the mnemonic for the button.
    ///
    /// - Parameter label: the label (including mnemonic) to use for the button
    @inlinable public override init(mnemonic label: UnsafePointer<gchar>!) {
        let rv = gtk_radio_menu_item_new_with_mnemonic(nil, label)
        super.init(gpointer: gpointer(rv))
    }

        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RadioMenuItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkRadioMenuItem>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RadioMenuItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkRadioMenuItem>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RadioMenuItem` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RadioMenuItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RadioMenuItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkRadioMenuItem>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RadioMenuItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkRadioMenuItem>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkRadioMenuItem`.
    /// i.e., ownership is transferred to the `RadioMenuItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkRadioMenuItem>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `RadioMenuItemProtocol`
    /// Will retain `GtkRadioMenuItem`.
    /// - Parameter other: an instance of a related type that implements `RadioMenuItemProtocol`
    @inlinable public init<T: RadioMenuItemProtocol>(radioMenuItem other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkRadioMenuItem`.
    @inlinable public init<SListT: GLib.SListProtocol>( group: SListT?) {
        let rv = gtk_radio_menu_item_new(group?._ptr)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkRadioMenuItem` whose child is a simple `GtkLabel`.
    @inlinable public init<SListT: GLib.SListProtocol>(group: SListT?, label: UnsafePointer<gchar>!) {
        let rv = gtk_radio_menu_item_new_with_label(group?._ptr, label)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkRadioMenuItem` containing a label. The label
    /// will be created using `gtk_label_new_with_mnemonic()`, so underscores
    /// in `label` indicate the mnemonic for the menu item.
    @inlinable public init<SListT: GLib.SListProtocol>(group: SListT?, mnemonic label: UnsafePointer<gchar>!) {
        let rv = gtk_radio_menu_item_new_with_mnemonic(group?._ptr, label)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkRadioMenuItem` whose child is a simple `GtkLabel`.
    @inlinable public static func newWith<SListT: GLib.SListProtocol>(group: SListT?, label: UnsafePointer<gchar>!) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_radio_menu_item_new_with_label(group?._ptr, label))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Creates a new `GtkRadioMenuItem` containing a label. The label
    /// will be created using `gtk_label_new_with_mnemonic()`, so underscores
    /// in `label` indicate the mnemonic for the menu item.
    @inlinable public static func newWith<SListT: GLib.SListProtocol>(group: SListT?, mnemonic label: UnsafePointer<gchar>!) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_radio_menu_item_new_with_mnemonic(group?._ptr, label))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum RadioMenuItemPropertyName: String, PropertyNameProtocol {
    /// Sets the accelerator path of the menu item, through which runtime
    /// changes of the menu item's accelerator caused by the user can be
    /// identified and saved to persistant storage.
    case accelPath = "accel-path"
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: RadioMenuItemPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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

    /// Get the value of a RadioMenuItem property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: RadioMenuItemPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a RadioMenuItem property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: RadioMenuItemPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of RadioMenuItem
public extension RadioMenuItemProtocol {
    /// - Note: Representation of signal named `group-changed`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onGroupChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: RadioMenuItemRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<RadioMenuItemRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(RadioMenuItemRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "group-changed", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::group`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyGroup(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: RadioMenuItemRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<RadioMenuItemRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(RadioMenuItemRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::group", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: RadioMenuItem Class: RadioMenuItemProtocol extension (methods and fields)
public extension RadioMenuItemProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRadioMenuItem` instance.
    @inlinable var radio_menu_item_ptr: UnsafeMutablePointer<GtkRadioMenuItem>! { return ptr?.assumingMemoryBound(to: GtkRadioMenuItem.self) }

    /// Returns the group to which the radio menu item belongs, as a `GList` of
    /// `GtkRadioMenuItem`. The list belongs to GTK+ and should not be freed.
    @inlinable func getGroup() -> GLib.SListRef! {
        let rv = GLib.SListRef(gtk_radio_menu_item_get_group(radio_menu_item_ptr))
        return rv
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
    @inlinable func joinGroup(groupSource: RadioMenuItemRef? = nil) {
        gtk_radio_menu_item_join_group(radio_menu_item_ptr, groupSource?.radio_menu_item_ptr)
    
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
    @inlinable func joinGroup<RadioMenuItemT: RadioMenuItemProtocol>(groupSource: RadioMenuItemT?) {
        gtk_radio_menu_item_join_group(radio_menu_item_ptr, groupSource?.radio_menu_item_ptr)
    
    }

    /// Sets the group of a radio menu item, or changes it.
    @inlinable func set(group: GLib.SListRef? = nil) {
        gtk_radio_menu_item_set_group(radio_menu_item_ptr, group?._ptr)
    
    }
    /// Sets the group of a radio menu item, or changes it.
    @inlinable func set<SListT: GLib.SListProtocol>(group: SListT?) {
        gtk_radio_menu_item_set_group(radio_menu_item_ptr, group?._ptr)
    
    }
    /// The radio menu item whose group this widget belongs to.
    @inlinable var group: GLib.SListRef! {
        /// Returns the group to which the radio menu item belongs, as a `GList` of
        /// `GtkRadioMenuItem`. The list belongs to GTK+ and should not be freed.
        get {
            let rv = GLib.SListRef(gtk_radio_menu_item_get_group(radio_menu_item_ptr))
            return rv
        }
        /// Sets the group of a radio menu item, or changes it.
        nonmutating set {
            gtk_radio_menu_item_set_group(radio_menu_item_ptr, UnsafeMutablePointer<GSList>(newValue?._ptr))
        }
    }

    @inlinable var checkMenuItem: GtkCheckMenuItem {
        get {
            let rv = radio_menu_item_ptr.pointee.check_menu_item
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - RadioMenuItemAccessible Class

/// The `RadioMenuItemAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkRadioMenuItemAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RadioMenuItemAccessible`.
/// Alternatively, use `RadioMenuItemAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RadioMenuItemAccessibleProtocol: CheckMenuItemAccessibleProtocol {
        /// Untyped pointer to the underlying `GtkRadioMenuItemAccessible` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRadioMenuItemAccessible` instance.
    var radio_menu_item_accessible_ptr: UnsafeMutablePointer<GtkRadioMenuItemAccessible>! { get }

}

/// The `RadioMenuItemAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkRadioMenuItemAccessible` instance.
/// It exposes methods that can operate on this data type through `RadioMenuItemAccessibleProtocol` conformance.
/// Use `RadioMenuItemAccessibleRef` only as an `unowned` reference to an existing `GtkRadioMenuItemAccessible` instance.
///

public struct RadioMenuItemAccessibleRef: RadioMenuItemAccessibleProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkRadioMenuItemAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `radio_menu_item_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RadioMenuItemAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRadioMenuItemAccessible>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRadioMenuItemAccessible>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRadioMenuItemAccessible>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRadioMenuItemAccessible>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `RadioMenuItemAccessibleProtocol`
    @inlinable init<T: RadioMenuItemAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: RadioMenuItemAccessibleProtocol>(_ other: T) -> RadioMenuItemAccessibleRef { RadioMenuItemAccessibleRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessibleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessibleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessibleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessibleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessibleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RadioMenuItemAccessible` type acts as a reference-counted owner of an underlying `GtkRadioMenuItemAccessible` instance.
/// It provides the methods that can operate on this data type through `RadioMenuItemAccessibleProtocol` conformance.
/// Use `RadioMenuItemAccessible` as a strong reference or owner of a `GtkRadioMenuItemAccessible` instance.
///

open class RadioMenuItemAccessible: CheckMenuItemAccessible, RadioMenuItemAccessibleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RadioMenuItemAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkRadioMenuItemAccessible>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RadioMenuItemAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkRadioMenuItemAccessible>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RadioMenuItemAccessible` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RadioMenuItemAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RadioMenuItemAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkRadioMenuItemAccessible>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RadioMenuItemAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkRadioMenuItemAccessible>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkRadioMenuItemAccessible`.
    /// i.e., ownership is transferred to the `RadioMenuItemAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkRadioMenuItemAccessible>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `RadioMenuItemAccessibleProtocol`
    /// Will retain `GtkRadioMenuItemAccessible`.
    /// - Parameter other: an instance of a related type that implements `RadioMenuItemAccessibleProtocol`
    @inlinable public init<T: RadioMenuItemAccessibleProtocol>(radioMenuItemAccessible other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessibleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessibleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessibleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessibleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: RadioMenuItemAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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

    /// Get the value of a RadioMenuItemAccessible property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: RadioMenuItemAccessiblePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a RadioMenuItemAccessible property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: RadioMenuItemAccessiblePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: RadioMenuItemAccessible has no signals// MARK: RadioMenuItemAccessible Class: RadioMenuItemAccessibleProtocol extension (methods and fields)
public extension RadioMenuItemAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRadioMenuItemAccessible` instance.
    @inlinable var radio_menu_item_accessible_ptr: UnsafeMutablePointer<GtkRadioMenuItemAccessible>! { return ptr?.assumingMemoryBound(to: GtkRadioMenuItemAccessible.self) }


    @inlinable var parent: GtkCheckMenuItemAccessible {
        get {
            let rv = radio_menu_item_accessible_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRadioToolButton` instance.
    var radio_tool_button_ptr: UnsafeMutablePointer<GtkRadioToolButton>! { get }

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
public struct RadioToolButtonRef: RadioToolButtonProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkRadioToolButton` instance.
    /// For type-safe access, use the generated, typed pointer `radio_tool_button_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RadioToolButtonRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRadioToolButton>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRadioToolButton>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRadioToolButton>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRadioToolButton>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `RadioToolButtonProtocol`
    @inlinable init<T: RadioToolButtonProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: RadioToolButtonProtocol>(_ other: T) -> RadioToolButtonRef { RadioToolButtonRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioToolButtonProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioToolButtonProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioToolButtonProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioToolButtonProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioToolButtonProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkRadioToolButton`, adding it to `group`.
    @inlinable init<SListT: GLib.SListProtocol>( group: SListT?) {
        let rv = gtk_radio_tool_button_new(group?._ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkRadioToolButton`, adding it to `group`.
    /// The new `GtkRadioToolButton` will contain an icon and label from the
    /// stock item indicated by `stock_id`.
    ///
    /// **new_from_stock is deprecated:**
    /// Use gtk_radio_tool_button_new() instead.
    @available(*, deprecated)
    @inlinable init<SListT: GLib.SListProtocol>(stock group: SListT?, stockID: UnsafePointer<gchar>!) {
        let rv = gtk_radio_tool_button_new_from_stock(group?._ptr, stockID)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GtkRadioToolButton`, adding it to `group`.
    /// The new `GtkRadioToolButton` will contain an icon and label from the
    /// stock item indicated by `stock_id`.
    ///
    /// **new_from_stock is deprecated:**
    /// Use gtk_radio_tool_button_new() instead.
    @available(*, deprecated)
    @inlinable static func radioToolButtonNewFrom<SListT: GLib.SListProtocol>(stock group: SListT?, stockID: UnsafePointer<gchar>!) -> ToolItemRef! {
        guard let rv = ToolItemRef(gconstpointer: gconstpointer(gtk_radio_tool_button_new_from_stock(group?._ptr, stockID))) else { return nil }
        return rv
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
    @inlinable public override init() {
        let rv = gtk_radio_tool_button_new(nil)
        super.init(gpointer: gpointer(rv))
    }

        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RadioToolButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkRadioToolButton>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RadioToolButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkRadioToolButton>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RadioToolButton` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RadioToolButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RadioToolButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkRadioToolButton>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RadioToolButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkRadioToolButton>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkRadioToolButton`.
    /// i.e., ownership is transferred to the `RadioToolButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkRadioToolButton>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `RadioToolButtonProtocol`
    /// Will retain `GtkRadioToolButton`.
    /// - Parameter other: an instance of a related type that implements `RadioToolButtonProtocol`
    @inlinable public init<T: RadioToolButtonProtocol>(radioToolButton other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioToolButtonProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioToolButtonProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioToolButtonProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioToolButtonProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioToolButtonProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioToolButtonProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioToolButtonProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioToolButtonProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkRadioToolButton`, adding it to `group`.
    @inlinable public init<SListT: GLib.SListProtocol>( group: SListT?) {
        let rv = gtk_radio_tool_button_new(group?._ptr)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkRadioToolButton`, adding it to `group`.
    /// The new `GtkRadioToolButton` will contain an icon and label from the
    /// stock item indicated by `stock_id`.
    ///
    /// **new_from_stock is deprecated:**
    /// Use gtk_radio_tool_button_new() instead.
    @available(*, deprecated)
    @inlinable public init<SListT: GLib.SListProtocol>(stock group: SListT?, stockID: UnsafePointer<gchar>!) {
        let rv = gtk_radio_tool_button_new_from_stock(group?._ptr, stockID)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkRadioToolButton`, adding it to `group`.
    /// The new `GtkRadioToolButton` will contain an icon and label from the
    /// stock item indicated by `stock_id`.
    ///
    /// **new_from_stock is deprecated:**
    /// Use gtk_radio_tool_button_new() instead.
    @available(*, deprecated)
    @inlinable public static func radioToolButtonNewFrom<SListT: GLib.SListProtocol>(stock group: SListT?, stockID: UnsafePointer<gchar>!) -> ToolItem! {
        guard let rv = ToolItem(gconstpointer: gconstpointer(gtk_radio_tool_button_new_from_stock(group?._ptr, stockID))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum RadioToolButtonPropertyName: String, PropertyNameProtocol {
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: RadioToolButtonPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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

    /// Get the value of a RadioToolButton property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: RadioToolButtonPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a RadioToolButton property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: RadioToolButtonPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: RadioToolButton has no signals// MARK: RadioToolButton Class: RadioToolButtonProtocol extension (methods and fields)
public extension RadioToolButtonProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRadioToolButton` instance.
    @inlinable var radio_tool_button_ptr: UnsafeMutablePointer<GtkRadioToolButton>! { return ptr?.assumingMemoryBound(to: GtkRadioToolButton.self) }

    /// Returns the radio button group `button` belongs to.
    @inlinable func getGroup() -> GLib.SListRef! {
        let rv = GLib.SListRef(gtk_radio_tool_button_get_group(radio_tool_button_ptr))
        return rv
    }

    /// Adds `button` to `group`, removing it from the group it belonged to before.
    @inlinable func set(group: GLib.SListRef? = nil) {
        gtk_radio_tool_button_set_group(radio_tool_button_ptr, group?._ptr)
    
    }
    /// Adds `button` to `group`, removing it from the group it belonged to before.
    @inlinable func set<SListT: GLib.SListProtocol>(group: SListT?) {
        gtk_radio_tool_button_set_group(radio_tool_button_ptr, group?._ptr)
    
    }
    /// Sets a new group for a radio tool button.
    @inlinable var group: GLib.SListRef! {
        /// Returns the radio button group `button` belongs to.
        get {
            let rv = GLib.SListRef(gtk_radio_tool_button_get_group(radio_tool_button_ptr))
            return rv
        }
        /// Adds `button` to `group`, removing it from the group it belonged to before.
        nonmutating set {
            gtk_radio_tool_button_set_group(radio_tool_button_ptr, UnsafeMutablePointer<GSList>(newValue?._ptr))
        }
    }

    @inlinable var parent: GtkToggleToolButton {
        get {
            let rv = radio_tool_button_ptr.pointee.parent
            return rv
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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRange` instance.
    var range_ptr: UnsafeMutablePointer<GtkRange>! { get }

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
public struct RangeRef: RangeProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkRange` instance.
    /// For type-safe access, use the generated, typed pointer `range_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RangeRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRange>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRange>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRange>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRange>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `RangeProtocol`
    @inlinable init<T: RangeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: RangeProtocol>(_ other: T) -> RangeRef { RangeRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
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
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Range` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkRange>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Range` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkRange>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Range` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Range` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Range` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkRange>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Range` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkRange>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkRange`.
    /// i.e., ownership is transferred to the `Range` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkRange>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `RangeProtocol`
    /// Will retain `GtkRange`.
    /// - Parameter other: an instance of a related type that implements `RangeProtocol`
    @inlinable public init<T: RangeProtocol>(range other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum RangePropertyName: String, PropertyNameProtocol {
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: RangePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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

    /// Get the value of a Range property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: RangePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Range property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: RangePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of Range
public extension RangeProtocol {
    /// Emitted before clamping a value, to give the application a
    /// chance to adjust the bounds.
    /// - Note: Representation of signal named `adjust-bounds`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter value: the value before we clamp
    @discardableResult
    func onAdjustBounds(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: RangeRef, _ value: Double) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<RangeRef, Double, Void>
        let cCallback: @convention(c) (gpointer, gdouble, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(RangeRef(raw: unownedSelf), Double(arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "adjust-bounds", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `change-value`
    /// - Parameter flags: Flags
    /// - Parameter handler: `true` to prevent other handlers from being invoked for     the signal, `false` to propagate the signal further
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter scroll: the type of scroll action that was performed
    /// - Parameter value: the new value resulting from the scroll action
    @discardableResult
    func onChangeValue(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: RangeRef, _ scroll: ScrollType, _ value: Double) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<RangeRef, ScrollType, Double, Bool>
        let cCallback: @convention(c) (gpointer, UInt32, gdouble, gpointer) -> gboolean = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(RangeRef(raw: unownedSelf), ScrollType(arg1), Double(arg2))
            return gboolean((output) ? 1 : 0)
        }
        return signalConnectData(
            detailedSignal: "change-value", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// Virtual function that moves the slider. Used for keybindings.
    /// - Note: Representation of signal named `move-slider`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter step: how to move the slider
    @discardableResult
    func onMoveSlider(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: RangeRef, _ step: ScrollType) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<RangeRef, ScrollType, Void>
        let cCallback: @convention(c) (gpointer, UInt32, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(RangeRef(raw: unownedSelf), ScrollType(arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "move-slider", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// Emitted when the range value changes.
    /// - Note: Representation of signal named `value-changed`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onValueChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: RangeRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<RangeRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(RangeRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "value-changed", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::adjustment`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyAdjustment(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: RangeRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<RangeRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(RangeRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::adjustment", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::fill-level`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyFillLevel(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: RangeRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<RangeRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(RangeRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::fill-level", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::inverted`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyInverted(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: RangeRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<RangeRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(RangeRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::inverted", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::lower-stepper-sensitivity`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyLowerStepperSensitivity(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: RangeRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<RangeRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(RangeRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::lower-stepper-sensitivity", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::restrict-to-fill-level`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyRestrictToFillLevel(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: RangeRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<RangeRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(RangeRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::restrict-to-fill-level", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::round-digits`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyRoundDigits(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: RangeRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<RangeRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(RangeRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::round-digits", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::show-fill-level`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyShowFillLevel(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: RangeRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<RangeRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(RangeRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::show-fill-level", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::upper-stepper-sensitivity`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyUpperStepperSensitivity(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: RangeRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<RangeRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(RangeRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::upper-stepper-sensitivity", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: Range Class: RangeProtocol extension (methods and fields)
public extension RangeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRange` instance.
    @inlinable var range_ptr: UnsafeMutablePointer<GtkRange>! { return ptr?.assumingMemoryBound(to: GtkRange.self) }

    /// Get the `GtkAdjustment` which is the “model” object for `GtkRange`.
    /// See `gtk_range_set_adjustment()` for details.
    /// The return value does not have a reference added, so should not
    /// be unreferenced.
    @inlinable func getAdjustment() -> AdjustmentRef! {
        let rv = AdjustmentRef(gconstpointer: gconstpointer(gtk_range_get_adjustment(range_ptr)))
        return rv
    }

    /// Gets the current position of the fill level indicator.
    @inlinable func getFillLevel() -> Double {
        let rv = Double(gtk_range_get_fill_level(range_ptr))
        return rv
    }

    /// Gets the value set by `gtk_range_set_flippable()`.
    @inlinable func getFlippable() -> Bool {
        let rv = ((gtk_range_get_flippable(range_ptr)) != 0)
        return rv
    }

    /// Gets the value set by `gtk_range_set_inverted()`.
    @inlinable func getInverted() -> Bool {
        let rv = ((gtk_range_get_inverted(range_ptr)) != 0)
        return rv
    }

    /// Gets the sensitivity policy for the stepper that points to the
    /// 'lower' end of the GtkRange’s adjustment.
    @inlinable func getLowerStepperSensitivity() -> GtkSensitivityType {
        let rv = gtk_range_get_lower_stepper_sensitivity(range_ptr)
        return rv
    }

    /// This function is useful mainly for `GtkRange` subclasses.
    /// 
    /// See `gtk_range_set_min_slider_size()`.
    ///
    /// **get_min_slider_size is deprecated:**
    /// Use the min-height/min-width CSS properties on the slider
    ///   node.
    @available(*, deprecated)
    @inlinable func getMinSliderSize() -> Int {
        let rv = Int(gtk_range_get_min_slider_size(range_ptr))
        return rv
    }

    /// This function returns the area that contains the range’s trough
    /// and its steppers, in widget->window coordinates.
    /// 
    /// This function is useful mainly for `GtkRange` subclasses.
    @inlinable func get<RectangleT: Gdk.RectangleProtocol>(rangeRect: RectangleT) {
        gtk_range_get_range_rect(range_ptr, rangeRect.rectangle_ptr)
    
    }

    /// Gets whether the range is restricted to the fill level.
    @inlinable func getRestrictToFillLevel() -> Bool {
        let rv = ((gtk_range_get_restrict_to_fill_level(range_ptr)) != 0)
        return rv
    }

    /// Gets the number of digits to round the value to when
    /// it changes. See `GtkRange::change`-value.
    @inlinable func getRoundDigits() -> Int {
        let rv = Int(gtk_range_get_round_digits(range_ptr))
        return rv
    }

    /// Gets whether the range displays the fill level graphically.
    @inlinable func getShowFillLevel() -> Bool {
        let rv = ((gtk_range_get_show_fill_level(range_ptr)) != 0)
        return rv
    }

    /// This function returns sliders range along the long dimension,
    /// in widget->window coordinates.
    /// 
    /// This function is useful mainly for `GtkRange` subclasses.
    @inlinable func getSliderRange(sliderStart: UnsafeMutablePointer<gint>! = nil, sliderEnd: UnsafeMutablePointer<gint>! = nil) {
        gtk_range_get_slider_range(range_ptr, sliderStart, sliderEnd)
    
    }

    /// This function is useful mainly for `GtkRange` subclasses.
    /// 
    /// See `gtk_range_set_slider_size_fixed()`.
    @inlinable func getSliderSizeFixed() -> Bool {
        let rv = ((gtk_range_get_slider_size_fixed(range_ptr)) != 0)
        return rv
    }

    /// Gets the sensitivity policy for the stepper that points to the
    /// 'upper' end of the GtkRange’s adjustment.
    @inlinable func getUpperStepperSensitivity() -> GtkSensitivityType {
        let rv = gtk_range_get_upper_stepper_sensitivity(range_ptr)
        return rv
    }

    /// Gets the current value of the range.
    @inlinable func getValue() -> Double {
        let rv = Double(gtk_range_get_value(range_ptr))
        return rv
    }

    /// Sets the adjustment to be used as the “model” object for this range
    /// widget. The adjustment indicates the current range value, the
    /// minimum and maximum range values, the step/page increments used
    /// for keybindings and scrolling, and the page size. The page size
    /// is normally 0 for `GtkScale` and nonzero for `GtkScrollbar`, and
    /// indicates the size of the visible area of the widget being scrolled.
    /// The page size affects the size of the scrollbar slider.
    @inlinable func set<AdjustmentT: AdjustmentProtocol>(adjustment: AdjustmentT) {
        gtk_range_set_adjustment(range_ptr, adjustment.adjustment_ptr)
    
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
    @inlinable func set(fillLevel: Double) {
        gtk_range_set_fill_level(range_ptr, gdouble(fillLevel))
    
    }

    /// If a range is flippable, it will switch its direction if it is
    /// horizontal and its direction is `GTK_TEXT_DIR_RTL`.
    /// 
    /// See `gtk_widget_get_direction()`.
    @inlinable func set(flippable: Bool) {
        gtk_range_set_flippable(range_ptr, gboolean((flippable) ? 1 : 0))
    
    }

    /// Sets the step and page sizes for the range.
    /// The step size is used when the user clicks the `GtkScrollbar`
    /// arrows or moves `GtkScale` via arrow keys. The page size
    /// is used for example when moving via Page Up or Page Down keys.
    @inlinable func setIncrements(step: Double, page: Double) {
        gtk_range_set_increments(range_ptr, gdouble(step), gdouble(page))
    
    }

    /// Ranges normally move from lower to higher values as the
    /// slider moves from top to bottom or left to right. Inverted
    /// ranges have higher values at the top or on the right rather than
    /// on the bottom or left.
    @inlinable func setInverted(setting: Bool) {
        gtk_range_set_inverted(range_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Sets the sensitivity policy for the stepper that points to the
    /// 'lower' end of the GtkRange’s adjustment.
    @inlinable func setLowerStepper(sensitivity: GtkSensitivityType) {
        gtk_range_set_lower_stepper_sensitivity(range_ptr, sensitivity)
    
    }

    /// Sets the minimum size of the range’s slider.
    /// 
    /// This function is useful mainly for `GtkRange` subclasses.
    ///
    /// **set_min_slider_size is deprecated:**
    /// Use the min-height/min-width CSS properties on the slider
    ///   node.
    @available(*, deprecated)
    @inlinable func setMinSliderSize(minSize: Int) {
        gtk_range_set_min_slider_size(range_ptr, gint(minSize))
    
    }

    /// Sets the allowable values in the `GtkRange`, and clamps the range
    /// value to be between `min` and `max`. (If the range has a non-zero
    /// page size, it is clamped between `min` and `max` - page-size.)
    @inlinable func setRange(min: Double, max: Double) {
        gtk_range_set_range(range_ptr, gdouble(min), gdouble(max))
    
    }

    /// Sets whether the slider is restricted to the fill level. See
    /// `gtk_range_set_fill_level()` for a general description of the fill
    /// level concept.
    @inlinable func set(restrictToFillLevel: Bool) {
        gtk_range_set_restrict_to_fill_level(range_ptr, gboolean((restrictToFillLevel) ? 1 : 0))
    
    }

    /// Sets the number of digits to round the value to when
    /// it changes. See `GtkRange::change`-value.
    @inlinable func set(roundDigits: Int) {
        gtk_range_set_round_digits(range_ptr, gint(roundDigits))
    
    }

    /// Sets whether a graphical fill level is show on the trough. See
    /// `gtk_range_set_fill_level()` for a general description of the fill
    /// level concept.
    @inlinable func set(showFillLevel: Bool) {
        gtk_range_set_show_fill_level(range_ptr, gboolean((showFillLevel) ? 1 : 0))
    
    }

    /// Sets whether the range’s slider has a fixed size, or a size that
    /// depends on its adjustment’s page size.
    /// 
    /// This function is useful mainly for `GtkRange` subclasses.
    @inlinable func setSlider(sizeFixed: Bool) {
        gtk_range_set_slider_size_fixed(range_ptr, gboolean((sizeFixed) ? 1 : 0))
    
    }

    /// Sets the sensitivity policy for the stepper that points to the
    /// 'upper' end of the GtkRange’s adjustment.
    @inlinable func setUpperStepper(sensitivity: GtkSensitivityType) {
        gtk_range_set_upper_stepper_sensitivity(range_ptr, sensitivity)
    
    }

    /// Sets the current value of the range; if the value is outside the
    /// minimum or maximum range values, it will be clamped to fit inside
    /// them. The range emits the `GtkRange::value`-changed signal if the
    /// value changes.
    @inlinable func set(value: Double) {
        gtk_range_set_value(range_ptr, gdouble(value))
    
    }
    @inlinable var adjustment: AdjustmentRef! {
        /// Get the `GtkAdjustment` which is the “model” object for `GtkRange`.
        /// See `gtk_range_set_adjustment()` for details.
        /// The return value does not have a reference added, so should not
        /// be unreferenced.
        get {
            let rv = AdjustmentRef(gconstpointer: gconstpointer(gtk_range_get_adjustment(range_ptr)))
            return rv
        }
        /// Sets the adjustment to be used as the “model” object for this range
        /// widget. The adjustment indicates the current range value, the
        /// minimum and maximum range values, the step/page increments used
        /// for keybindings and scrolling, and the page size. The page size
        /// is normally 0 for `GtkScale` and nonzero for `GtkScrollbar`, and
        /// indicates the size of the visible area of the widget being scrolled.
        /// The page size affects the size of the scrollbar slider.
        nonmutating set {
            gtk_range_set_adjustment(range_ptr, UnsafeMutablePointer<GtkAdjustment>(newValue?.adjustment_ptr))
        }
    }

    /// Gets the current position of the fill level indicator.
    @inlinable var fillLevel: Double {
        /// Gets the current position of the fill level indicator.
        get {
            let rv = Double(gtk_range_get_fill_level(range_ptr))
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
            gtk_range_set_fill_level(range_ptr, gdouble(newValue))
        }
    }

    /// Gets the value set by `gtk_range_set_flippable()`.
    @inlinable var flippable: Bool {
        /// Gets the value set by `gtk_range_set_flippable()`.
        get {
            let rv = ((gtk_range_get_flippable(range_ptr)) != 0)
            return rv
        }
        /// If a range is flippable, it will switch its direction if it is
        /// horizontal and its direction is `GTK_TEXT_DIR_RTL`.
        /// 
        /// See `gtk_widget_get_direction()`.
        nonmutating set {
            gtk_range_set_flippable(range_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    @inlinable var inverted: Bool {
        /// Gets the value set by `gtk_range_set_inverted()`.
        get {
            let rv = ((gtk_range_get_inverted(range_ptr)) != 0)
            return rv
        }
        /// Ranges normally move from lower to higher values as the
        /// slider moves from top to bottom or left to right. Inverted
        /// ranges have higher values at the top or on the right rather than
        /// on the bottom or left.
        nonmutating set {
            gtk_range_set_inverted(range_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the sensitivity policy for the stepper that points to the
    /// 'lower' end of the GtkRange’s adjustment.
    @inlinable var lowerStepperSensitivity: GtkSensitivityType {
        /// Gets the sensitivity policy for the stepper that points to the
        /// 'lower' end of the GtkRange’s adjustment.
        get {
            let rv = gtk_range_get_lower_stepper_sensitivity(range_ptr)
            return rv
        }
        /// Sets the sensitivity policy for the stepper that points to the
        /// 'lower' end of the GtkRange’s adjustment.
        nonmutating set {
            gtk_range_set_lower_stepper_sensitivity(range_ptr, newValue)
        }
    }

    /// This function is useful mainly for `GtkRange` subclasses.
    /// 
    /// See `gtk_range_set_min_slider_size()`.
    ///
    /// **get_min_slider_size is deprecated:**
    /// Use the min-height/min-width CSS properties on the slider
    ///   node.
    @inlinable var minSliderSize: Int {
        /// This function is useful mainly for `GtkRange` subclasses.
        /// 
        /// See `gtk_range_set_min_slider_size()`.
        ///
        /// **get_min_slider_size is deprecated:**
        /// Use the min-height/min-width CSS properties on the slider
        ///   node.
        @available(*, deprecated)
    get {
            let rv = Int(gtk_range_get_min_slider_size(range_ptr))
            return rv
        }
        /// Sets the minimum size of the range’s slider.
        /// 
        /// This function is useful mainly for `GtkRange` subclasses.
        ///
        /// **set_min_slider_size is deprecated:**
        /// Use the min-height/min-width CSS properties on the slider
        ///   node.
        @available(*, deprecated)
    nonmutating set {
            gtk_range_set_min_slider_size(range_ptr, gint(newValue))
        }
    }

    /// Gets whether the range is restricted to the fill level.
    @inlinable var restrictToFillLevel: Bool {
        /// Gets whether the range is restricted to the fill level.
        get {
            let rv = ((gtk_range_get_restrict_to_fill_level(range_ptr)) != 0)
            return rv
        }
        /// Sets whether the slider is restricted to the fill level. See
        /// `gtk_range_set_fill_level()` for a general description of the fill
        /// level concept.
        nonmutating set {
            gtk_range_set_restrict_to_fill_level(range_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the number of digits to round the value to when
    /// it changes. See `GtkRange::change`-value.
    @inlinable var roundDigits: Int {
        /// Gets the number of digits to round the value to when
        /// it changes. See `GtkRange::change`-value.
        get {
            let rv = Int(gtk_range_get_round_digits(range_ptr))
            return rv
        }
        /// Sets the number of digits to round the value to when
        /// it changes. See `GtkRange::change`-value.
        nonmutating set {
            gtk_range_set_round_digits(range_ptr, gint(newValue))
        }
    }

    /// Gets whether the range displays the fill level graphically.
    @inlinable var showFillLevel: Bool {
        /// Gets whether the range displays the fill level graphically.
        get {
            let rv = ((gtk_range_get_show_fill_level(range_ptr)) != 0)
            return rv
        }
        /// Sets whether a graphical fill level is show on the trough. See
        /// `gtk_range_set_fill_level()` for a general description of the fill
        /// level concept.
        nonmutating set {
            gtk_range_set_show_fill_level(range_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// This function is useful mainly for `GtkRange` subclasses.
    /// 
    /// See `gtk_range_set_slider_size_fixed()`.
    @inlinable var sliderSizeFixed: Bool {
        /// This function is useful mainly for `GtkRange` subclasses.
        /// 
        /// See `gtk_range_set_slider_size_fixed()`.
        get {
            let rv = ((gtk_range_get_slider_size_fixed(range_ptr)) != 0)
            return rv
        }
        /// Sets whether the range’s slider has a fixed size, or a size that
        /// depends on its adjustment’s page size.
        /// 
        /// This function is useful mainly for `GtkRange` subclasses.
        nonmutating set {
            gtk_range_set_slider_size_fixed(range_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the sensitivity policy for the stepper that points to the
    /// 'upper' end of the GtkRange’s adjustment.
    @inlinable var upperStepperSensitivity: GtkSensitivityType {
        /// Gets the sensitivity policy for the stepper that points to the
        /// 'upper' end of the GtkRange’s adjustment.
        get {
            let rv = gtk_range_get_upper_stepper_sensitivity(range_ptr)
            return rv
        }
        /// Sets the sensitivity policy for the stepper that points to the
        /// 'upper' end of the GtkRange’s adjustment.
        nonmutating set {
            gtk_range_set_upper_stepper_sensitivity(range_ptr, newValue)
        }
    }

    /// Gets the current value of the range.
    @inlinable var value: Double {
        /// Gets the current value of the range.
        get {
            let rv = Double(gtk_range_get_value(range_ptr))
            return rv
        }
        /// Sets the current value of the range; if the value is outside the
        /// minimum or maximum range values, it will be clamped to fit inside
        /// them. The range emits the `GtkRange::value`-changed signal if the
        /// value changes.
        nonmutating set {
            gtk_range_set_value(range_ptr, gdouble(newValue))
        }
    }

    @inlinable var widget: GtkWidget {
        get {
            let rv = range_ptr.pointee.widget
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - RangeAccessible Class

/// The `RangeAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkRangeAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RangeAccessible`.
/// Alternatively, use `RangeAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RangeAccessibleProtocol: WidgetAccessibleProtocol, Atk.ValueProtocol {
        /// Untyped pointer to the underlying `GtkRangeAccessible` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRangeAccessible` instance.
    var range_accessible_ptr: UnsafeMutablePointer<GtkRangeAccessible>! { get }

}

/// The `RangeAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkRangeAccessible` instance.
/// It exposes methods that can operate on this data type through `RangeAccessibleProtocol` conformance.
/// Use `RangeAccessibleRef` only as an `unowned` reference to an existing `GtkRangeAccessible` instance.
///

public struct RangeAccessibleRef: RangeAccessibleProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkRangeAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `range_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RangeAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRangeAccessible>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRangeAccessible>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRangeAccessible>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRangeAccessible>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `RangeAccessibleProtocol`
    @inlinable init<T: RangeAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: RangeAccessibleProtocol>(_ other: T) -> RangeAccessibleRef { RangeAccessibleRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessibleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessibleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessibleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessibleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessibleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RangeAccessible` type acts as a reference-counted owner of an underlying `GtkRangeAccessible` instance.
/// It provides the methods that can operate on this data type through `RangeAccessibleProtocol` conformance.
/// Use `RangeAccessible` as a strong reference or owner of a `GtkRangeAccessible` instance.
///

open class RangeAccessible: WidgetAccessible, RangeAccessibleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RangeAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkRangeAccessible>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RangeAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkRangeAccessible>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RangeAccessible` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RangeAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RangeAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkRangeAccessible>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RangeAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkRangeAccessible>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkRangeAccessible`.
    /// i.e., ownership is transferred to the `RangeAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkRangeAccessible>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `RangeAccessibleProtocol`
    /// Will retain `GtkRangeAccessible`.
    /// - Parameter other: an instance of a related type that implements `RangeAccessibleProtocol`
    @inlinable public init<T: RangeAccessibleProtocol>(rangeAccessible other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessibleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessibleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessibleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessibleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: RangeAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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

    /// Get the value of a RangeAccessible property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: RangeAccessiblePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a RangeAccessible property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: RangeAccessiblePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: RangeAccessible has no signals// MARK: RangeAccessible Class: RangeAccessibleProtocol extension (methods and fields)
public extension RangeAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRangeAccessible` instance.
    @inlinable var range_accessible_ptr: UnsafeMutablePointer<GtkRangeAccessible>! { return ptr?.assumingMemoryBound(to: GtkRangeAccessible.self) }


    @inlinable var parent: GtkWidgetAccessible {
        get {
            let rv = range_accessible_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRcStyle` instance.
    var rc_style_ptr: UnsafeMutablePointer<GtkRcStyle>! { get }

}

/// The `RcStyleRef` type acts as a lightweight Swift reference to an underlying `GtkRcStyle` instance.
/// It exposes methods that can operate on this data type through `RcStyleProtocol` conformance.
/// Use `RcStyleRef` only as an `unowned` reference to an existing `GtkRcStyle` instance.
///
/// The `GtkRcStyle`-struct is used to represent a set
/// of information about the appearance of a widget.
/// This can later be composited together with other
/// `GtkRcStyle`-struct<!-- -->s to form a `GtkStyle`.
public struct RcStyleRef: RcStyleProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkRcStyle` instance.
    /// For type-safe access, use the generated, typed pointer `rc_style_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RcStyleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRcStyle>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRcStyle>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRcStyle>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRcStyle>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `RcStyleProtocol`
    @inlinable init<T: RcStyleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: RcStyleProtocol>(_ other: T) -> RcStyleRef { RcStyleRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcStyleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcStyleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcStyleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcStyleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcStyleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkRcStyle` with no fields set and
    /// a reference count of 1.
    ///
    /// **new is deprecated:**
    /// Use #GtkCssProvider instead.
    @available(*, deprecated)
    @inlinable init() {
        let rv = gtk_rc_style_new()
        ptr = UnsafeMutableRawPointer(rv)
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
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RcStyle` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkRcStyle>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RcStyle` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkRcStyle>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RcStyle` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RcStyle` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RcStyle` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkRcStyle>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RcStyle` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkRcStyle>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkRcStyle`.
    /// i.e., ownership is transferred to the `RcStyle` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkRcStyle>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `RcStyleProtocol`
    /// Will retain `GtkRcStyle`.
    /// - Parameter other: an instance of a related type that implements `RcStyleProtocol`
    @inlinable public init<T: RcStyleProtocol>(rcStyle other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcStyleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcStyleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcStyleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcStyleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcStyleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcStyleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcStyleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcStyleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkRcStyle` with no fields set and
    /// a reference count of 1.
    ///
    /// **new is deprecated:**
    /// Use #GtkCssProvider instead.
    @available(*, deprecated)
    @inlinable public init() {
        let rv = gtk_rc_style_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

// MARK: no RcStyle properties

// MARK: RcStyle has no signals// MARK: RcStyle Class: RcStyleProtocol extension (methods and fields)
public extension RcStyleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRcStyle` instance.
    @inlinable var rc_style_ptr: UnsafeMutablePointer<GtkRcStyle>! { return ptr?.assumingMemoryBound(to: GtkRcStyle.self) }

    /// Makes a copy of the specified `GtkRcStyle`. This function
    /// will correctly copy an RC style that is a member of a class
    /// derived from `GtkRcStyle`.
    ///
    /// **copy is deprecated:**
    /// Use #GtkCssProvider instead.
    @available(*, deprecated)
    @inlinable func copy() -> RcStyleRef! {
        guard let rv = RcStyleRef(gconstpointer: gconstpointer(gtk_rc_style_copy(rc_style_ptr))) else { return nil }
        return rv
    }

    /// Parses a color in the format expected
    /// in a RC file. If `style` is not `nil`, it will be consulted to resolve
    /// references to symbolic colors.
    ///
    /// **rc_parse_color_full is deprecated:**
    /// Use #GtkCssProvider instead
    @available(*, deprecated)
    @inlinable func rcParseColorFull<ColorT: Gdk.ColorProtocol, ScannerT: GLib.ScannerProtocol>(scanner: ScannerT, color: ColorT) -> Int {
        let rv = Int(gtk_rc_parse_color_full(scanner._ptr, rc_style_ptr, color.color_ptr))
        return rv
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = rc_style_ptr.pointee.parent_instance
            return rv
        }
    }

    /// Name
    @inlinable var name: UnsafeMutablePointer<gchar>! {
        /// Name
        get {
            let rv = rc_style_ptr.pointee.name
            return rv
        }
    }

    /// Pixmap name
    @inlinable var bgPixmapName: (UnsafeMutablePointer<gchar>?, UnsafeMutablePointer<gchar>?, UnsafeMutablePointer<gchar>?, UnsafeMutablePointer<gchar>?, UnsafeMutablePointer<gchar>?) {
        /// Pixmap name
        get {
            let rv = rc_style_ptr.pointee.bg_pixmap_name
            return rv
        }
    }

    /// A `PangoFontDescription`
    @inlinable var fontDesc: FontDescriptionRef! {
        /// A `PangoFontDescription`
        get {
            let rv = FontDescriptionRef(gconstpointer: gconstpointer(rc_style_ptr.pointee.font_desc))
            return rv
        }
    }

    /// `GtkRcFlags`
    @inlinable var colorFlags: (GtkRcFlags, GtkRcFlags, GtkRcFlags, GtkRcFlags, GtkRcFlags) {
        /// `GtkRcFlags`
        get {
            let rv = rc_style_ptr.pointee.color_flags
            return rv
        }
    }

    /// Foreground colors
    @inlinable var fg: (GdkColor, GdkColor, GdkColor, GdkColor, GdkColor) {
        /// Foreground colors
        get {
            let rv = rc_style_ptr.pointee.fg
            return rv
        }
    }

    /// Background colors
    @inlinable var bg: (GdkColor, GdkColor, GdkColor, GdkColor, GdkColor) {
        /// Background colors
        get {
            let rv = rc_style_ptr.pointee.bg
            return rv
        }
    }

    /// Text colors
    @inlinable var text: (GdkColor, GdkColor, GdkColor, GdkColor, GdkColor) {
        /// Text colors
        get {
            let rv = rc_style_ptr.pointee.text
            return rv
        }
    }

    /// Base colors
    @inlinable var base: (GdkColor, GdkColor, GdkColor, GdkColor, GdkColor) {
        /// Base colors
        get {
            let rv = rc_style_ptr.pointee.base
            return rv
        }
    }

    /// X thickness
    @inlinable var xthickness: gint {
        /// X thickness
        get {
            let rv = rc_style_ptr.pointee.xthickness
            return rv
        }
    }

    /// Y thickness
    @inlinable var ythickness: gint {
        /// Y thickness
        get {
            let rv = rc_style_ptr.pointee.ythickness
            return rv
        }
    }

    // var rcProperties is unavailable because rc_properties is private

    // var rcStyleLists is unavailable because rc_style_lists is private

    // var iconFactories is unavailable because icon_factories is private

    // var engineSpecified is unavailable because engine_specified is private

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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRecentAction` instance.
    var recent_action_ptr: UnsafeMutablePointer<GtkRecentAction>! { get }

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
public struct RecentActionRef: RecentActionProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkRecentAction` instance.
    /// For type-safe access, use the generated, typed pointer `recent_action_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RecentActionRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRecentAction>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRecentAction>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRecentAction>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRecentAction>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `RecentActionProtocol`
    @inlinable init<T: RecentActionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: RecentActionProtocol>(_ other: T) -> RecentActionRef { RecentActionRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkRecentAction` object. To add the action to
    /// a `GtkActionGroup` and set the accelerator for the action,
    /// call `gtk_action_group_add_action_with_accel()`.
    ///
    /// **new is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable init( name: UnsafePointer<gchar>!, label: UnsafePointer<gchar>? = nil, tooltip: UnsafePointer<gchar>? = nil, stockID: UnsafePointer<gchar>? = nil) {
        let rv = gtk_recent_action_new(name, label, tooltip, stockID)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkRecentAction` object. To add the action to
    /// a `GtkActionGroup` and set the accelerator for the action,
    /// call `gtk_action_group_add_action_with_accel()`.
    ///
    /// **new_for_manager is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable init<RecentManagerT: RecentManagerProtocol>(manager name: UnsafePointer<gchar>!, label: UnsafePointer<gchar>? = nil, tooltip: UnsafePointer<gchar>? = nil, stockID: UnsafePointer<gchar>? = nil, manager: RecentManagerT?) {
        let rv = gtk_recent_action_new_for_manager(name, label, tooltip, stockID, manager?.recent_manager_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GtkRecentAction` object. To add the action to
    /// a `GtkActionGroup` and set the accelerator for the action,
    /// call `gtk_action_group_add_action_with_accel()`.
    ///
    /// **new_for_manager is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable static func newFor<RecentManagerT: RecentManagerProtocol>(manager name: UnsafePointer<gchar>!, label: UnsafePointer<gchar>? = nil, tooltip: UnsafePointer<gchar>? = nil, stockID: UnsafePointer<gchar>? = nil, manager: RecentManagerT?) -> ActionRef! {
        guard let rv = ActionRef(gconstpointer: gconstpointer(gtk_recent_action_new_for_manager(name, label, tooltip, stockID, manager?.recent_manager_ptr))) else { return nil }
        return rv
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
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentAction` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkRecentAction>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentAction` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkRecentAction>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentAction` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentAction` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentAction` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkRecentAction>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentAction` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkRecentAction>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkRecentAction`.
    /// i.e., ownership is transferred to the `RecentAction` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkRecentAction>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `RecentActionProtocol`
    /// Will retain `GtkRecentAction`.
    /// - Parameter other: an instance of a related type that implements `RecentActionProtocol`
    @inlinable public init<T: RecentActionProtocol>(recentAction other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkRecentAction` object. To add the action to
    /// a `GtkActionGroup` and set the accelerator for the action,
    /// call `gtk_action_group_add_action_with_accel()`.
    ///
    /// **new is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable override public init( name: UnsafePointer<gchar>!, label: UnsafePointer<gchar>? = nil, tooltip: UnsafePointer<gchar>? = nil, stockID: UnsafePointer<gchar>? = nil) {
        let rv = gtk_recent_action_new(name, label, tooltip, stockID)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkRecentAction` object. To add the action to
    /// a `GtkActionGroup` and set the accelerator for the action,
    /// call `gtk_action_group_add_action_with_accel()`.
    ///
    /// **new_for_manager is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable public init<RecentManagerT: RecentManagerProtocol>(manager name: UnsafePointer<gchar>!, label: UnsafePointer<gchar>? = nil, tooltip: UnsafePointer<gchar>? = nil, stockID: UnsafePointer<gchar>? = nil, manager: RecentManagerT?) {
        let rv = gtk_recent_action_new_for_manager(name, label, tooltip, stockID, manager?.recent_manager_ptr)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkRecentAction` object. To add the action to
    /// a `GtkActionGroup` and set the accelerator for the action,
    /// call `gtk_action_group_add_action_with_accel()`.
    ///
    /// **new_for_manager is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable public static func newFor<RecentManagerT: RecentManagerProtocol>(manager name: UnsafePointer<gchar>!, label: UnsafePointer<gchar>? = nil, tooltip: UnsafePointer<gchar>? = nil, stockID: UnsafePointer<gchar>? = nil, manager: RecentManagerT?) -> Action! {
        guard let rv = Action(gconstpointer: gconstpointer(gtk_recent_action_new_for_manager(name, label, tooltip, stockID, manager?.recent_manager_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: RecentActionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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

    /// Get the value of a RecentAction property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: RecentActionPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a RecentAction property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: RecentActionPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: RecentAction has no signals// MARK: RecentAction Class: RecentActionProtocol extension (methods and fields)
public extension RecentActionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRecentAction` instance.
    @inlinable var recent_action_ptr: UnsafeMutablePointer<GtkRecentAction>! { return ptr?.assumingMemoryBound(to: GtkRecentAction.self) }

    /// Returns the value set by `gtk_recent_chooser_menu_set_show_numbers()`.
    ///
    /// **get_show_numbers is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func getShowNumbers() -> Bool {
        let rv = ((gtk_recent_action_get_show_numbers(recent_action_ptr)) != 0)
        return rv
    }

    /// Sets whether a number should be added to the items shown by the
    /// widgets representing `action`. The numbers are shown to provide
    /// a unique character for a mnemonic to be used inside the menu item's
    /// label. Only the first ten items get a number to avoid clashes.
    ///
    /// **set_show_numbers is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func set(showNumbers: Bool) {
        gtk_recent_action_set_show_numbers(recent_action_ptr, gboolean((showNumbers) ? 1 : 0))
    
    }
    /// Returns the value set by `gtk_recent_chooser_menu_set_show_numbers()`.
    ///
    /// **get_show_numbers is deprecated:**
    /// This method is deprecated.
    @inlinable var showNumbers: Bool {
        /// Returns the value set by `gtk_recent_chooser_menu_set_show_numbers()`.
        ///
        /// **get_show_numbers is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated)
    get {
            let rv = ((gtk_recent_action_get_show_numbers(recent_action_ptr)) != 0)
            return rv
        }
        /// Sets whether a number should be added to the items shown by the
        /// widgets representing `action`. The numbers are shown to provide
        /// a unique character for a mnemonic to be used inside the menu item's
        /// label. Only the first ten items get a number to avoid clashes.
        ///
        /// **set_show_numbers is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated)
    nonmutating set {
            gtk_recent_action_set_show_numbers(recent_action_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    @inlinable var parentInstance: GtkAction {
        get {
            let rv = recent_action_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRecentChooserDialog` instance.
    var recent_chooser_dialog_ptr: UnsafeMutablePointer<GtkRecentChooserDialog>! { get }

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
public struct RecentChooserDialogRef: RecentChooserDialogProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkRecentChooserDialog` instance.
    /// For type-safe access, use the generated, typed pointer `recent_chooser_dialog_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RecentChooserDialogRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRecentChooserDialog>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRecentChooserDialog>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRecentChooserDialog>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRecentChooserDialog>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `RecentChooserDialogProtocol`
    @inlinable init<T: RecentChooserDialogProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: RecentChooserDialogProtocol>(_ other: T) -> RecentChooserDialogRef { RecentChooserDialogRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
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
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentChooserDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkRecentChooserDialog>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentChooserDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkRecentChooserDialog>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentChooserDialog` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentChooserDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentChooserDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkRecentChooserDialog>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentChooserDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkRecentChooserDialog>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkRecentChooserDialog`.
    /// i.e., ownership is transferred to the `RecentChooserDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkRecentChooserDialog>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `RecentChooserDialogProtocol`
    /// Will retain `GtkRecentChooserDialog`.
    /// - Parameter other: an instance of a related type that implements `RecentChooserDialogProtocol`
    @inlinable public init<T: RecentChooserDialogProtocol>(recentChooserDialog other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }


    // *** new() is not available because it has a varargs (...) parameter!



    // *** newForManager() is not available because it has a varargs (...) parameter!



    // *** newForManager() is not available because it has a varargs (...) parameter!


}

public enum RecentChooserDialogPropertyName: String, PropertyNameProtocol {
    /// Whether the window should receive the input focus.
    case acceptFocus = "accept-focus"
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: RecentChooserDialogPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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

    /// Get the value of a RecentChooserDialog property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: RecentChooserDialogPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a RecentChooserDialog property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: RecentChooserDialogPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: RecentChooserDialog has no signals// MARK: RecentChooserDialog Class: RecentChooserDialogProtocol extension (methods and fields)
public extension RecentChooserDialogProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRecentChooserDialog` instance.
    @inlinable var recent_chooser_dialog_ptr: UnsafeMutablePointer<GtkRecentChooserDialog>! { return ptr?.assumingMemoryBound(to: GtkRecentChooserDialog.self) }


    @inlinable var parentInstance: GtkDialog {
        get {
            let rv = recent_chooser_dialog_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRecentChooserMenu` instance.
    var recent_chooser_menu_ptr: UnsafeMutablePointer<GtkRecentChooserMenu>! { get }

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
public struct RecentChooserMenuRef: RecentChooserMenuProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkRecentChooserMenu` instance.
    /// For type-safe access, use the generated, typed pointer `recent_chooser_menu_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RecentChooserMenuRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRecentChooserMenu>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRecentChooserMenu>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRecentChooserMenu>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRecentChooserMenu>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `RecentChooserMenuProtocol`
    @inlinable init<T: RecentChooserMenuProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: RecentChooserMenuProtocol>(_ other: T) -> RecentChooserMenuRef { RecentChooserMenuRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
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
    @inlinable init() {
        let rv = gtk_recent_chooser_menu_new()
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkRecentChooserMenu` widget using `manager` as
    /// the underlying recently used resources manager.
    /// 
    /// This is useful if you have implemented your own recent manager,
    /// or if you have a customized instance of a `GtkRecentManager`
    /// object or if you wish to share a common `GtkRecentManager` object
    /// among multiple `GtkRecentChooser` widgets.
    @inlinable init<RecentManagerT: RecentManagerProtocol>(manager: RecentManagerT) {
        let rv = gtk_recent_chooser_menu_new_for_manager(manager.recent_manager_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GtkRecentChooserMenu` widget using `manager` as
    /// the underlying recently used resources manager.
    /// 
    /// This is useful if you have implemented your own recent manager,
    /// or if you have a customized instance of a `GtkRecentManager`
    /// object or if you wish to share a common `GtkRecentManager` object
    /// among multiple `GtkRecentChooser` widgets.
    @inlinable static func newFor<RecentManagerT: RecentManagerProtocol>(manager: RecentManagerT) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_recent_chooser_menu_new_for_manager(manager.recent_manager_ptr))) else { return nil }
        return rv
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
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentChooserMenu` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkRecentChooserMenu>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentChooserMenu` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkRecentChooserMenu>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentChooserMenu` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentChooserMenu` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentChooserMenu` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkRecentChooserMenu>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentChooserMenu` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkRecentChooserMenu>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkRecentChooserMenu`.
    /// i.e., ownership is transferred to the `RecentChooserMenu` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkRecentChooserMenu>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `RecentChooserMenuProtocol`
    /// Will retain `GtkRecentChooserMenu`.
    /// - Parameter other: an instance of a related type that implements `RecentChooserMenuProtocol`
    @inlinable public init<T: RecentChooserMenuProtocol>(recentChooserMenu other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
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
    @inlinable override public init() {
        let rv = gtk_recent_chooser_menu_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkRecentChooserMenu` widget using `manager` as
    /// the underlying recently used resources manager.
    /// 
    /// This is useful if you have implemented your own recent manager,
    /// or if you have a customized instance of a `GtkRecentManager`
    /// object or if you wish to share a common `GtkRecentManager` object
    /// among multiple `GtkRecentChooser` widgets.
    @inlinable public init<RecentManagerT: RecentManagerProtocol>(manager: RecentManagerT) {
        let rv = gtk_recent_chooser_menu_new_for_manager(manager.recent_manager_ptr)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkRecentChooserMenu` widget using `manager` as
    /// the underlying recently used resources manager.
    /// 
    /// This is useful if you have implemented your own recent manager,
    /// or if you have a customized instance of a `GtkRecentManager`
    /// object or if you wish to share a common `GtkRecentManager` object
    /// among multiple `GtkRecentChooser` widgets.
    @inlinable public static func newFor<RecentManagerT: RecentManagerProtocol>(manager: RecentManagerT) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_recent_chooser_menu_new_for_manager(manager.recent_manager_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum RecentChooserMenuPropertyName: String, PropertyNameProtocol {
    /// The accel group holding accelerators for the menu.
    case accelGroup = "accel-group"
    /// An accel path used to conveniently construct accel paths of child items.
    case accelPath = "accel-path"
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: RecentChooserMenuPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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

    /// Get the value of a RecentChooserMenu property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: RecentChooserMenuPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a RecentChooserMenu property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: RecentChooserMenuPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: RecentChooserMenu has no signals// MARK: RecentChooserMenu Class: RecentChooserMenuProtocol extension (methods and fields)
public extension RecentChooserMenuProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRecentChooserMenu` instance.
    @inlinable var recent_chooser_menu_ptr: UnsafeMutablePointer<GtkRecentChooserMenu>! { return ptr?.assumingMemoryBound(to: GtkRecentChooserMenu.self) }

    /// Returns the value set by `gtk_recent_chooser_menu_set_show_numbers()`.
    @inlinable func getShowNumbers() -> Bool {
        let rv = ((gtk_recent_chooser_menu_get_show_numbers(recent_chooser_menu_ptr)) != 0)
        return rv
    }

    /// Sets whether a number should be added to the items of `menu`.  The
    /// numbers are shown to provide a unique character for a mnemonic to
    /// be used inside ten menu item’s label.  Only the first the items
    /// get a number to avoid clashes.
    @inlinable func set(showNumbers: Bool) {
        gtk_recent_chooser_menu_set_show_numbers(recent_chooser_menu_ptr, gboolean((showNumbers) ? 1 : 0))
    
    }
    /// Returns the value set by `gtk_recent_chooser_menu_set_show_numbers()`.
    @inlinable var showNumbers: Bool {
        /// Returns the value set by `gtk_recent_chooser_menu_set_show_numbers()`.
        get {
            let rv = ((gtk_recent_chooser_menu_get_show_numbers(recent_chooser_menu_ptr)) != 0)
            return rv
        }
        /// Sets whether a number should be added to the items of `menu`.  The
        /// numbers are shown to provide a unique character for a mnemonic to
        /// be used inside ten menu item’s label.  Only the first the items
        /// get a number to avoid clashes.
        nonmutating set {
            gtk_recent_chooser_menu_set_show_numbers(recent_chooser_menu_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    @inlinable var parentInstance: GtkMenu {
        get {
            let rv = recent_chooser_menu_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRecentChooserWidget` instance.
    var recent_chooser_widget_ptr: UnsafeMutablePointer<GtkRecentChooserWidget>! { get }

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
public struct RecentChooserWidgetRef: RecentChooserWidgetProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkRecentChooserWidget` instance.
    /// For type-safe access, use the generated, typed pointer `recent_chooser_widget_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RecentChooserWidgetRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRecentChooserWidget>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRecentChooserWidget>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRecentChooserWidget>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRecentChooserWidget>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `RecentChooserWidgetProtocol`
    @inlinable init<T: RecentChooserWidgetProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: RecentChooserWidgetProtocol>(_ other: T) -> RecentChooserWidgetRef { RecentChooserWidgetRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkRecentChooserWidget` object.  This is an embeddable widget
    /// used to access the recently used resources list.
    @inlinable init() {
        let rv = gtk_recent_chooser_widget_new()
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkRecentChooserWidget` with a specified recent manager.
    /// 
    /// This is useful if you have implemented your own recent manager, or if you
    /// have a customized instance of a `GtkRecentManager` object.
    @inlinable init<RecentManagerT: RecentManagerProtocol>(manager: RecentManagerT) {
        let rv = gtk_recent_chooser_widget_new_for_manager(manager.recent_manager_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GtkRecentChooserWidget` with a specified recent manager.
    /// 
    /// This is useful if you have implemented your own recent manager, or if you
    /// have a customized instance of a `GtkRecentManager` object.
    @inlinable static func newFor<RecentManagerT: RecentManagerProtocol>(manager: RecentManagerT) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_recent_chooser_widget_new_for_manager(manager.recent_manager_ptr))) else { return nil }
        return rv
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
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentChooserWidget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkRecentChooserWidget>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentChooserWidget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkRecentChooserWidget>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentChooserWidget` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentChooserWidget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentChooserWidget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkRecentChooserWidget>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentChooserWidget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkRecentChooserWidget>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkRecentChooserWidget`.
    /// i.e., ownership is transferred to the `RecentChooserWidget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkRecentChooserWidget>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `RecentChooserWidgetProtocol`
    /// Will retain `GtkRecentChooserWidget`.
    /// - Parameter other: an instance of a related type that implements `RecentChooserWidgetProtocol`
    @inlinable public init<T: RecentChooserWidgetProtocol>(recentChooserWidget other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkRecentChooserWidget` object.  This is an embeddable widget
    /// used to access the recently used resources list.
    @inlinable public init() {
        let rv = gtk_recent_chooser_widget_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkRecentChooserWidget` with a specified recent manager.
    /// 
    /// This is useful if you have implemented your own recent manager, or if you
    /// have a customized instance of a `GtkRecentManager` object.
    @inlinable public init<RecentManagerT: RecentManagerProtocol>(manager: RecentManagerT) {
        let rv = gtk_recent_chooser_widget_new_for_manager(manager.recent_manager_ptr)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkRecentChooserWidget` with a specified recent manager.
    /// 
    /// This is useful if you have implemented your own recent manager, or if you
    /// have a customized instance of a `GtkRecentManager` object.
    @inlinable public static func newFor<RecentManagerT: RecentManagerProtocol>(manager: RecentManagerT) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_recent_chooser_widget_new_for_manager(manager.recent_manager_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum RecentChooserWidgetPropertyName: String, PropertyNameProtocol {
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: RecentChooserWidgetPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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

    /// Get the value of a RecentChooserWidget property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: RecentChooserWidgetPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a RecentChooserWidget property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: RecentChooserWidgetPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: RecentChooserWidget has no signals// MARK: RecentChooserWidget Class: RecentChooserWidgetProtocol extension (methods and fields)
public extension RecentChooserWidgetProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRecentChooserWidget` instance.
    @inlinable var recent_chooser_widget_ptr: UnsafeMutablePointer<GtkRecentChooserWidget>! { return ptr?.assumingMemoryBound(to: GtkRecentChooserWidget.self) }


    @inlinable var parentInstance: GtkBox {
        get {
            let rv = recent_chooser_widget_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

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
public protocol RecentFilterProtocol: GLibObject.InitiallyUnownedProtocol, BuildableProtocol {
        /// Untyped pointer to the underlying `GtkRecentFilter` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRecentFilter` instance.
    var recent_filter_ptr: UnsafeMutablePointer<GtkRecentFilter>! { get }

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
public struct RecentFilterRef: RecentFilterProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkRecentFilter` instance.
    /// For type-safe access, use the generated, typed pointer `recent_filter_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RecentFilterRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRecentFilter>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRecentFilter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRecentFilter>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRecentFilter>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `RecentFilterProtocol`
    @inlinable init<T: RecentFilterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: RecentFilterProtocol>(_ other: T) -> RecentFilterRef { RecentFilterRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
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
    @inlinable init() {
        let rv = gtk_recent_filter_new()
        ptr = UnsafeMutableRawPointer(rv)
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
open class RecentFilter: GLibObject.InitiallyUnowned, RecentFilterProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentFilter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkRecentFilter>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentFilter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkRecentFilter>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentFilter` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentFilter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentFilter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkRecentFilter>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentFilter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkRecentFilter>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkRecentFilter`.
    /// i.e., ownership is transferred to the `RecentFilter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkRecentFilter>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `RecentFilterProtocol`
    /// Will retain `GtkRecentFilter`.
    /// - Parameter other: an instance of a related type that implements `RecentFilterProtocol`
    @inlinable public init<T: RecentFilterProtocol>(recentFilter other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
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
    @inlinable public init() {
        let rv = gtk_recent_filter_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

// MARK: no RecentFilter properties

// MARK: RecentFilter has no signals// MARK: RecentFilter Class: RecentFilterProtocol extension (methods and fields)
public extension RecentFilterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRecentFilter` instance.
    @inlinable var recent_filter_ptr: UnsafeMutablePointer<GtkRecentFilter>! { return ptr?.assumingMemoryBound(to: GtkRecentFilter.self) }

    /// Adds a rule that allows resources based on their age - that is, the number
    /// of days elapsed since they were last modified.
    @inlinable func addAge(days: Int) {
        gtk_recent_filter_add_age(recent_filter_ptr, gint(days))
    
    }

    /// Adds a rule that allows resources based on the name of the application
    /// that has registered them.
    @inlinable func add(application: UnsafePointer<gchar>!) {
        gtk_recent_filter_add_application(recent_filter_ptr, application)
    
    }

    /// Adds a rule to a filter that allows resources based on a custom callback
    /// function. The bitfield `needed` which is passed in provides information
    /// about what sorts of information that the filter function needs;
    /// this allows GTK+ to avoid retrieving expensive information when
    /// it isn’t needed by the filter.
    @inlinable func addCustom(needed: RecentFilterFlags, `func`: GtkRecentFilterFunc?, data: gpointer! = nil, dataDestroy: GDestroyNotify?) {
        gtk_recent_filter_add_custom(recent_filter_ptr, needed.value, `func`, data, dataDestroy)
    
    }

    /// Adds a rule that allows resources based on the name of the group
    /// to which they belong
    @inlinable func add(group: UnsafePointer<gchar>!) {
        gtk_recent_filter_add_group(recent_filter_ptr, group)
    
    }

    /// Adds a rule that allows resources based on their registered MIME type.
    @inlinable func add(mimeType: UnsafePointer<gchar>!) {
        gtk_recent_filter_add_mime_type(recent_filter_ptr, mimeType)
    
    }

    /// Adds a rule that allows resources based on a pattern matching their
    /// display name.
    @inlinable func add(pattern: UnsafePointer<gchar>!) {
        gtk_recent_filter_add_pattern(recent_filter_ptr, pattern)
    
    }

    /// Adds a rule allowing image files in the formats supported
    /// by GdkPixbuf.
    @inlinable func addPixbufFormats() {
        gtk_recent_filter_add_pixbuf_formats(recent_filter_ptr)
    
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
    @inlinable func filter<RecentFilterInfoT: RecentFilterInfoProtocol>(filterInfo: RecentFilterInfoT) -> Bool {
        let rv = ((gtk_recent_filter_filter(recent_filter_ptr, filterInfo._ptr)) != 0)
        return rv
    }

    /// Gets the human-readable name for the filter.
    /// See `gtk_recent_filter_set_name()`.
    @inlinable func getName() -> String! {
        let rv = gtk_recent_filter_get_name(recent_filter_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the fields that need to be filled in for the `GtkRecentFilterInfo`
    /// passed to `gtk_recent_filter_filter()`
    /// 
    /// This function will not typically be used by applications; it
    /// is intended principally for use in the implementation of
    /// `GtkRecentChooser`.
    @inlinable func getNeeded() -> RecentFilterFlags {
        let rv = RecentFilterFlags(gtk_recent_filter_get_needed(recent_filter_ptr))
        return rv
    }

    /// Sets the human-readable name of the filter; this is the string
    /// that will be displayed in the recently used resources selector
    /// user interface if there is a selectable list of filters.
    @inlinable func set(name: UnsafePointer<gchar>!) {
        gtk_recent_filter_set_name(recent_filter_ptr, name)
    
    }
    /// Gets the human-readable name for the filter.
    /// See `gtk_recent_filter_set_name()`.
    @inlinable var name: String! {
        /// Gets the human-readable name for the filter.
        /// See `gtk_recent_filter_set_name()`.
        get {
            let rv = gtk_recent_filter_get_name(recent_filter_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the human-readable name of the filter; this is the string
        /// that will be displayed in the recently used resources selector
        /// user interface if there is a selectable list of filters.
        nonmutating set {
            gtk_recent_filter_set_name(recent_filter_ptr, newValue)
        }
    }

    /// Gets the fields that need to be filled in for the `GtkRecentFilterInfo`
    /// passed to `gtk_recent_filter_filter()`
    /// 
    /// This function will not typically be used by applications; it
    /// is intended principally for use in the implementation of
    /// `GtkRecentChooser`.
    @inlinable var needed: RecentFilterFlags {
        /// Gets the fields that need to be filled in for the `GtkRecentFilterInfo`
        /// passed to `gtk_recent_filter_filter()`
        /// 
        /// This function will not typically be used by applications; it
        /// is intended principally for use in the implementation of
        /// `GtkRecentChooser`.
        get {
            let rv = RecentFilterFlags(gtk_recent_filter_get_needed(recent_filter_ptr))
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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRecentManager` instance.
    var recent_manager_ptr: UnsafeMutablePointer<GtkRecentManager>! { get }

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
public struct RecentManagerRef: RecentManagerProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkRecentManager` instance.
    /// For type-safe access, use the generated, typed pointer `recent_manager_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RecentManagerRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRecentManager>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRecentManager>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRecentManager>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRecentManager>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `RecentManagerProtocol`
    @inlinable init<T: RecentManagerProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: RecentManagerProtocol>(_ other: T) -> RecentManagerRef { RecentManagerRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new recent manager object. Recent manager objects are used to
    /// handle the list of recently used resources. A `GtkRecentManager` object
    /// monitors the recently used resources list, and emits the “changed” signal
    /// each time something inside the list changes.
    /// 
    /// `GtkRecentManager` objects are expensive: be sure to create them only when
    /// needed. You should use `gtk_recent_manager_get_default()` instead.
    @inlinable init() {
        let rv = gtk_recent_manager_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Gets a unique instance of `GtkRecentManager`, that you can share
    /// in your application without caring about memory management.
    @inlinable static func getDefault() -> RecentManagerRef! {
        guard let rv = RecentManagerRef(gconstpointer: gconstpointer(gtk_recent_manager_get_default())) else { return nil }
        return rv
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
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkRecentManager>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkRecentManager>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentManager` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkRecentManager>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkRecentManager>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkRecentManager`.
    /// i.e., ownership is transferred to the `RecentManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkRecentManager>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `RecentManagerProtocol`
    /// Will retain `GtkRecentManager`.
    /// - Parameter other: an instance of a related type that implements `RecentManagerProtocol`
    @inlinable public init<T: RecentManagerProtocol>(recentManager other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new recent manager object. Recent manager objects are used to
    /// handle the list of recently used resources. A `GtkRecentManager` object
    /// monitors the recently used resources list, and emits the “changed” signal
    /// each time something inside the list changes.
    /// 
    /// `GtkRecentManager` objects are expensive: be sure to create them only when
    /// needed. You should use `gtk_recent_manager_get_default()` instead.
    @inlinable public init() {
        let rv = gtk_recent_manager_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Gets a unique instance of `GtkRecentManager`, that you can share
    /// in your application without caring about memory management.
    @inlinable public static func getDefault() -> RecentManager! {
        guard let rv = RecentManager(gconstpointer: gconstpointer(gtk_recent_manager_get_default())) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: RecentManagerPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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

    /// Get the value of a RecentManager property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: RecentManagerPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a RecentManager property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: RecentManagerPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of RecentManager
public extension RecentManagerProtocol {
    /// Emitted when the current recently used resources manager changes
    /// its contents, either by calling `gtk_recent_manager_add_item()` or
    /// by another application.
    /// - Note: Representation of signal named `changed`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: RecentManagerRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<RecentManagerRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(RecentManagerRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "changed", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::filename`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyFilename(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: RecentManagerRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<RecentManagerRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(RecentManagerRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::filename", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::size`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifySize(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: RecentManagerRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<RecentManagerRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(RecentManagerRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::size", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: RecentManager Class: RecentManagerProtocol extension (methods and fields)
public extension RecentManagerProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRecentManager` instance.
    @inlinable var recent_manager_ptr: UnsafeMutablePointer<GtkRecentManager>! { return ptr?.assumingMemoryBound(to: GtkRecentManager.self) }

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
    @inlinable func addFull<RecentDataT: RecentDataProtocol>(uri: UnsafePointer<gchar>!, recentData: RecentDataT) -> Bool {
        let rv = ((gtk_recent_manager_add_full(recent_manager_ptr, uri, recentData._ptr)) != 0)
        return rv
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
    @inlinable func addItem(uri: UnsafePointer<gchar>!) -> Bool {
        let rv = ((gtk_recent_manager_add_item(recent_manager_ptr, uri)) != 0)
        return rv
    }

    /// Gets the list of recently used resources.
    @inlinable func getItems() -> GLib.ListRef! {
        let rv = GLib.ListRef(gtk_recent_manager_get_items(recent_manager_ptr))
        return rv
    }

    /// Checks whether there is a recently used resource registered
    /// with `uri` inside the recent manager.
    @inlinable func hasItem(uri: UnsafePointer<gchar>!) -> Bool {
        let rv = ((gtk_recent_manager_has_item(recent_manager_ptr, uri)) != 0)
        return rv
    }

    /// Searches for a URI inside the recently used resources list, and
    /// returns a `GtkRecentInfo`-struct containing informations about the resource
    /// like its MIME type, or its display name.
    @inlinable func lookupItem(uri: UnsafePointer<gchar>!) throws -> RecentInfoRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = RecentInfoRef(gconstpointer: gconstpointer(gtk_recent_manager_lookup_item(recent_manager_ptr, uri, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Changes the location of a recently used resource from `uri` to `new_uri`.
    /// 
    /// Please note that this function will not affect the resource pointed
    /// by the URIs, but only the URI used in the recently used resources list.
    @inlinable func moveItem(uri: UnsafePointer<gchar>!, newURI: UnsafePointer<gchar>? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gtk_recent_manager_move_item(recent_manager_ptr, uri, newURI, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Purges every item from the recently used resources list.
    @inlinable func purgeItems() throws -> Int {
        var error: UnsafeMutablePointer<GError>?
        let rv = Int(gtk_recent_manager_purge_items(recent_manager_ptr, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Removes a resource pointed by `uri` from the recently used resources
    /// list handled by a recent manager.
    @inlinable func removeItem(uri: UnsafePointer<gchar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gtk_recent_manager_remove_item(recent_manager_ptr, uri, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Gets the list of recently used resources.
    @inlinable var items: GLib.ListRef! {
        /// Gets the list of recently used resources.
        get {
            let rv = GLib.ListRef(gtk_recent_manager_get_items(recent_manager_ptr))
            return rv
        }
    }

    // var parentInstance is unavailable because parent_instance is private

    // var priv is unavailable because priv is private

}



// MARK: - RendererCellAccessible Class

/// The `RendererCellAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkRendererCellAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RendererCellAccessible`.
/// Alternatively, use `RendererCellAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol RendererCellAccessibleProtocol: CellAccessibleProtocol {
        /// Untyped pointer to the underlying `GtkRendererCellAccessible` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRendererCellAccessible` instance.
    var renderer_cell_accessible_ptr: UnsafeMutablePointer<GtkRendererCellAccessible>! { get }

}

/// The `RendererCellAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkRendererCellAccessible` instance.
/// It exposes methods that can operate on this data type through `RendererCellAccessibleProtocol` conformance.
/// Use `RendererCellAccessibleRef` only as an `unowned` reference to an existing `GtkRendererCellAccessible` instance.
///

public struct RendererCellAccessibleRef: RendererCellAccessibleProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkRendererCellAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `renderer_cell_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RendererCellAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRendererCellAccessible>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRendererCellAccessible>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRendererCellAccessible>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRendererCellAccessible>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `RendererCellAccessibleProtocol`
    @inlinable init<T: RendererCellAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: RendererCellAccessibleProtocol>(_ other: T) -> RendererCellAccessibleRef { RendererCellAccessibleRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessibleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessibleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessibleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessibleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessibleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RendererCellAccessible` type acts as a reference-counted owner of an underlying `GtkRendererCellAccessible` instance.
/// It provides the methods that can operate on this data type through `RendererCellAccessibleProtocol` conformance.
/// Use `RendererCellAccessible` as a strong reference or owner of a `GtkRendererCellAccessible` instance.
///

open class RendererCellAccessible: CellAccessible, RendererCellAccessibleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RendererCellAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkRendererCellAccessible>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RendererCellAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkRendererCellAccessible>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RendererCellAccessible` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RendererCellAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RendererCellAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkRendererCellAccessible>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RendererCellAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkRendererCellAccessible>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkRendererCellAccessible`.
    /// i.e., ownership is transferred to the `RendererCellAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkRendererCellAccessible>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `RendererCellAccessibleProtocol`
    /// Will retain `GtkRendererCellAccessible`.
    /// - Parameter other: an instance of a related type that implements `RendererCellAccessibleProtocol`
    @inlinable public init<T: RendererCellAccessibleProtocol>(rendererCellAccessible other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessibleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessibleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessibleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessibleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: RendererCellAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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

    /// Get the value of a RendererCellAccessible property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: RendererCellAccessiblePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a RendererCellAccessible property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: RendererCellAccessiblePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: RendererCellAccessible has no signals// MARK: RendererCellAccessible Class: RendererCellAccessibleProtocol extension (methods and fields)
public extension RendererCellAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRendererCellAccessible` instance.
    @inlinable var renderer_cell_accessible_ptr: UnsafeMutablePointer<GtkRendererCellAccessible>! { return ptr?.assumingMemoryBound(to: GtkRendererCellAccessible.self) }


    @inlinable var parent: GtkCellAccessible {
        get {
            let rv = renderer_cell_accessible_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRevealer` instance.
    var revealer_ptr: UnsafeMutablePointer<GtkRevealer>! { get }

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
public struct RevealerRef: RevealerProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkRevealer` instance.
    /// For type-safe access, use the generated, typed pointer `revealer_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RevealerRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRevealer>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRevealer>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRevealer>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRevealer>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `RevealerProtocol`
    @inlinable init<T: RevealerProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: RevealerProtocol>(_ other: T) -> RevealerRef { RevealerRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RevealerProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RevealerProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RevealerProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RevealerProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RevealerProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkRevealer`.
    @inlinable init() {
        let rv = gtk_revealer_new()
        ptr = UnsafeMutableRawPointer(rv)
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
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Revealer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkRevealer>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Revealer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkRevealer>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Revealer` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Revealer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Revealer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkRevealer>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Revealer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkRevealer>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkRevealer`.
    /// i.e., ownership is transferred to the `Revealer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkRevealer>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `RevealerProtocol`
    /// Will retain `GtkRevealer`.
    /// - Parameter other: an instance of a related type that implements `RevealerProtocol`
    @inlinable public init<T: RevealerProtocol>(revealer other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RevealerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RevealerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RevealerProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RevealerProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RevealerProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RevealerProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RevealerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RevealerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkRevealer`.
    @inlinable public init() {
        let rv = gtk_revealer_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum RevealerPropertyName: String, PropertyNameProtocol {
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: RevealerPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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

    /// Get the value of a Revealer property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: RevealerPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Revealer property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: RevealerPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Revealer has no signals// MARK: Revealer Class: RevealerProtocol extension (methods and fields)
public extension RevealerProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRevealer` instance.
    @inlinable var revealer_ptr: UnsafeMutablePointer<GtkRevealer>! { return ptr?.assumingMemoryBound(to: GtkRevealer.self) }

    /// Returns whether the child is fully revealed, in other words whether
    /// the transition to the revealed state is completed.
    @inlinable func getChildRevealed() -> Bool {
        let rv = ((gtk_revealer_get_child_revealed(revealer_ptr)) != 0)
        return rv
    }

    /// Returns whether the child is currently
    /// revealed. See `gtk_revealer_set_reveal_child()`.
    /// 
    /// This function returns `true` as soon as the transition
    /// is to the revealed state is started. To learn whether
    /// the child is fully revealed (ie the transition is completed),
    /// use `gtk_revealer_get_child_revealed()`.
    @inlinable func getRevealChild() -> Bool {
        let rv = ((gtk_revealer_get_reveal_child(revealer_ptr)) != 0)
        return rv
    }

    /// Returns the amount of time (in milliseconds) that
    /// transitions will take.
    @inlinable func getTransitionDuration() -> Int {
        let rv = Int(gtk_revealer_get_transition_duration(revealer_ptr))
        return rv
    }

    /// Gets the type of animation that will be used
    /// for transitions in `revealer`.
    @inlinable func getTransitionType() -> GtkRevealerTransitionType {
        let rv = gtk_revealer_get_transition_type(revealer_ptr)
        return rv
    }

    /// Tells the `GtkRevealer` to reveal or conceal its child.
    /// 
    /// The transition will be animated with the current
    /// transition type of `revealer`.
    @inlinable func set(revealChild: Bool) {
        gtk_revealer_set_reveal_child(revealer_ptr, gboolean((revealChild) ? 1 : 0))
    
    }

    /// Sets the duration that transitions will take.
    @inlinable func setTransition(duration: Int) {
        gtk_revealer_set_transition_duration(revealer_ptr, guint(duration))
    
    }

    /// Sets the type of animation that will be used for
    /// transitions in `revealer`. Available types include
    /// various kinds of fades and slides.
    @inlinable func setTransitionType(transition: GtkRevealerTransitionType) {
        gtk_revealer_set_transition_type(revealer_ptr, transition)
    
    }
    /// Returns whether the child is fully revealed, in other words whether
    /// the transition to the revealed state is completed.
    @inlinable var childRevealed: Bool {
        /// Returns whether the child is fully revealed, in other words whether
        /// the transition to the revealed state is completed.
        get {
            let rv = ((gtk_revealer_get_child_revealed(revealer_ptr)) != 0)
            return rv
        }
    }

    /// Returns whether the child is currently
    /// revealed. See `gtk_revealer_set_reveal_child()`.
    /// 
    /// This function returns `true` as soon as the transition
    /// is to the revealed state is started. To learn whether
    /// the child is fully revealed (ie the transition is completed),
    /// use `gtk_revealer_get_child_revealed()`.
    @inlinable var revealChild: Bool {
        /// Returns whether the child is currently
        /// revealed. See `gtk_revealer_set_reveal_child()`.
        /// 
        /// This function returns `true` as soon as the transition
        /// is to the revealed state is started. To learn whether
        /// the child is fully revealed (ie the transition is completed),
        /// use `gtk_revealer_get_child_revealed()`.
        get {
            let rv = ((gtk_revealer_get_reveal_child(revealer_ptr)) != 0)
            return rv
        }
        /// Tells the `GtkRevealer` to reveal or conceal its child.
        /// 
        /// The transition will be animated with the current
        /// transition type of `revealer`.
        nonmutating set {
            gtk_revealer_set_reveal_child(revealer_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns the amount of time (in milliseconds) that
    /// transitions will take.
    @inlinable var transitionDuration: Int {
        /// Returns the amount of time (in milliseconds) that
        /// transitions will take.
        get {
            let rv = Int(gtk_revealer_get_transition_duration(revealer_ptr))
            return rv
        }
        /// Sets the duration that transitions will take.
        nonmutating set {
            gtk_revealer_set_transition_duration(revealer_ptr, guint(newValue))
        }
    }

    /// Gets the type of animation that will be used
    /// for transitions in `revealer`.
    @inlinable var transitionType: GtkRevealerTransitionType {
        /// Gets the type of animation that will be used
        /// for transitions in `revealer`.
        get {
            let rv = gtk_revealer_get_transition_type(revealer_ptr)
            return rv
        }
        /// Sets the type of animation that will be used for
        /// transitions in `revealer`. Available types include
        /// various kinds of fades and slides.
        nonmutating set {
            gtk_revealer_set_transition_type(revealer_ptr, newValue)
        }
    }

    @inlinable var parentInstance: GtkBin {
        get {
            let rv = revealer_ptr.pointee.parent_instance
            return rv
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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkScale` instance.
    var scale_ptr: UnsafeMutablePointer<GtkScale>! { get }

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
public struct ScaleRef: ScaleProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkScale` instance.
    /// For type-safe access, use the generated, typed pointer `scale_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ScaleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkScale>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkScale>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkScale>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkScale>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `ScaleProtocol`
    @inlinable init<T: ScaleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ScaleProtocol>(_ other: T) -> ScaleRef { ScaleRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkScale`.
    @inlinable init<AdjustmentT: AdjustmentProtocol>( orientation: GtkOrientation, adjustment: AdjustmentT?) {
        let rv = gtk_scale_new(orientation, adjustment?.adjustment_ptr)
        ptr = UnsafeMutableRawPointer(rv)
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
    @inlinable init(range orientation: GtkOrientation, min: Double, max: Double, step: Double) {
        let rv = gtk_scale_new_with_range(orientation, gdouble(min), gdouble(max), gdouble(step))
        ptr = UnsafeMutableRawPointer(rv)
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
    @inlinable static func newWith(range orientation: GtkOrientation, min: Double, max: Double, step: Double) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_scale_new_with_range(orientation, gdouble(min), gdouble(max), gdouble(step)))) else { return nil }
        return rv
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
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Scale` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkScale>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Scale` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkScale>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Scale` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Scale` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Scale` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkScale>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Scale` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkScale>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkScale`.
    /// i.e., ownership is transferred to the `Scale` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkScale>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ScaleProtocol`
    /// Will retain `GtkScale`.
    /// - Parameter other: an instance of a related type that implements `ScaleProtocol`
    @inlinable public init<T: ScaleProtocol>(scale other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkScale`.
    @inlinable public init<AdjustmentT: AdjustmentProtocol>( orientation: GtkOrientation, adjustment: AdjustmentT?) {
        let rv = gtk_scale_new(orientation, adjustment?.adjustment_ptr)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
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
    @inlinable public init(range orientation: GtkOrientation, min: Double, max: Double, step: Double) {
        let rv = gtk_scale_new_with_range(orientation, gdouble(min), gdouble(max), gdouble(step))
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
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
    @inlinable public static func newWith(range orientation: GtkOrientation, min: Double, max: Double, step: Double) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_scale_new_with_range(orientation, gdouble(min), gdouble(max), gdouble(step)))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum ScalePropertyName: String, PropertyNameProtocol {
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ScalePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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

    /// Get the value of a Scale property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ScalePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Scale property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ScalePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of Scale
public extension ScaleProtocol {
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
    /// - Note: Representation of signal named `format-value`
    /// - Parameter flags: Flags
    /// - Parameter handler: allocated string representing `value`
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter value: the value to format
    @discardableResult
    func onFormatValue(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ScaleRef, _ value: Double) -> String ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ScaleRef, Double, String>
        let cCallback: @convention(c) (gpointer, gdouble, gpointer) -> UnsafeMutablePointer<gchar>? = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(ScaleRef(raw: unownedSelf), Double(arg1))
                let length = output.utf8CString.count
                let buffer = UnsafeMutablePointer<gchar>.allocate(capacity: length)
                buffer.initialize(from: output, count: length)
                return buffer
        }
        return signalConnectData(
            detailedSignal: "format-value", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::digits`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyDigits(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ScaleRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ScaleRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ScaleRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::digits", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::draw-value`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyDrawValue(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ScaleRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ScaleRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ScaleRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::draw-value", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::has-origin`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyHasOrigin(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ScaleRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ScaleRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ScaleRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::has-origin", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
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
    /// - Note: Representation of signal named `notify::value-pos`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyValuePos(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ScaleRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ScaleRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ScaleRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::value-pos", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: Scale Class: ScaleProtocol extension (methods and fields)
public extension ScaleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkScale` instance.
    @inlinable var scale_ptr: UnsafeMutablePointer<GtkScale>! { return ptr?.assumingMemoryBound(to: GtkScale.self) }

    /// Adds a mark at `value`.
    /// 
    /// A mark is indicated visually by drawing a tick mark next to the scale,
    /// and GTK+ makes it easy for the user to position the scale exactly at the
    /// marks value.
    /// 
    /// If `markup` is not `nil`, text is shown next to the tick mark.
    /// 
    /// To remove marks from a scale, use `gtk_scale_clear_marks()`.
    @inlinable func addMark(value: Double, position: GtkPositionType, markup: UnsafePointer<gchar>? = nil) {
        gtk_scale_add_mark(scale_ptr, gdouble(value), position, markup)
    
    }

    /// Removes any marks that have been added with `gtk_scale_add_mark()`.
    @inlinable func clearMarks() {
        gtk_scale_clear_marks(scale_ptr)
    
    }

    /// Gets the number of decimal places that are displayed in the value.
    @inlinable func getDigits() -> Int {
        let rv = Int(gtk_scale_get_digits(scale_ptr))
        return rv
    }

    /// Returns whether the current value is displayed as a string
    /// next to the slider.
    @inlinable func getDrawValue() -> Bool {
        let rv = ((gtk_scale_get_draw_value(scale_ptr)) != 0)
        return rv
    }

    /// Returns whether the scale has an origin.
    @inlinable func getHasOrigin() -> Bool {
        let rv = ((gtk_scale_get_has_origin(scale_ptr)) != 0)
        return rv
    }

    /// Gets the `PangoLayout` used to display the scale. The returned
    /// object is owned by the scale so does not need to be freed by
    /// the caller.
    @inlinable func getLayout() -> Pango.LayoutRef! {
        let rv = Pango.LayoutRef(gtk_scale_get_layout(scale_ptr))
        return rv
    }

    /// Obtains the coordinates where the scale will draw the
    /// `PangoLayout` representing the text in the scale. Remember
    /// when using the `PangoLayout` function you need to convert to
    /// and from pixels using `PANGO_PIXELS()` or `PANGO_SCALE`.
    /// 
    /// If the `GtkScale:draw`-value property is `false`, the return
    /// values are undefined.
    @inlinable func getLayoutOffsets(x: UnsafeMutablePointer<gint>! = nil, y: UnsafeMutablePointer<gint>! = nil) {
        gtk_scale_get_layout_offsets(scale_ptr, x, y)
    
    }

    /// Gets the position in which the current value is displayed.
    @inlinable func getValuePos() -> GtkPositionType {
        let rv = gtk_scale_get_value_pos(scale_ptr)
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
    @inlinable func set(digits: Int) {
        gtk_scale_set_digits(scale_ptr, gint(digits))
    
    }

    /// Specifies whether the current value is displayed as a string next
    /// to the slider.
    @inlinable func set(drawValue: Bool) {
        gtk_scale_set_draw_value(scale_ptr, gboolean((drawValue) ? 1 : 0))
    
    }

    /// If `GtkScale:has`-origin is set to `true` (the default), the scale will
    /// highlight the part of the trough between the origin (bottom or left side)
    /// and the current value.
    @inlinable func set(hasOrigin: Bool) {
        gtk_scale_set_has_origin(scale_ptr, gboolean((hasOrigin) ? 1 : 0))
    
    }

    /// Sets the position in which the current value is displayed.
    @inlinable func setValue(pos: GtkPositionType) {
        gtk_scale_set_value_pos(scale_ptr, pos)
    
    }
    @inlinable var digits: Int {
        /// Gets the number of decimal places that are displayed in the value.
        get {
            let rv = Int(gtk_scale_get_digits(scale_ptr))
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
        nonmutating set {
            gtk_scale_set_digits(scale_ptr, gint(newValue))
        }
    }

    /// Returns whether the current value is displayed as a string
    /// next to the slider.
    @inlinable var drawValue: Bool {
        /// Returns whether the current value is displayed as a string
        /// next to the slider.
        get {
            let rv = ((gtk_scale_get_draw_value(scale_ptr)) != 0)
            return rv
        }
        /// Specifies whether the current value is displayed as a string next
        /// to the slider.
        nonmutating set {
            gtk_scale_set_draw_value(scale_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns whether the scale has an origin.
    @inlinable var hasOrigin: Bool {
        /// Returns whether the scale has an origin.
        get {
            let rv = ((gtk_scale_get_has_origin(scale_ptr)) != 0)
            return rv
        }
        /// If `GtkScale:has`-origin is set to `true` (the default), the scale will
        /// highlight the part of the trough between the origin (bottom or left side)
        /// and the current value.
        nonmutating set {
            gtk_scale_set_has_origin(scale_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the `PangoLayout` used to display the scale. The returned
    /// object is owned by the scale so does not need to be freed by
    /// the caller.
    @inlinable var layout: Pango.LayoutRef! {
        /// Gets the `PangoLayout` used to display the scale. The returned
        /// object is owned by the scale so does not need to be freed by
        /// the caller.
        get {
            let rv = Pango.LayoutRef(gtk_scale_get_layout(scale_ptr))
            return rv
        }
    }

    /// Gets the position in which the current value is displayed.
    @inlinable var valuePos: GtkPositionType {
        /// Gets the position in which the current value is displayed.
        get {
            let rv = gtk_scale_get_value_pos(scale_ptr)
            return rv
        }
        /// Sets the position in which the current value is displayed.
        nonmutating set {
            gtk_scale_set_value_pos(scale_ptr, newValue)
        }
    }

    @inlinable var range: GtkRange {
        get {
            let rv = scale_ptr.pointee.range
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



