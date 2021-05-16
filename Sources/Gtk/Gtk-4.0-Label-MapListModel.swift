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

// MARK: - Label Class

/// The `LabelProtocol` protocol exposes the methods and properties of an underlying `GtkLabel` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Label`.
/// Alternatively, use `LabelRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkLabel` widget displays a small amount of text.
/// 
/// As the name implies, most labels are used to label another widget
/// such as a [class`Button`].
/// 
/// ![An example GtkLabel](label.png)
/// 
/// # CSS nodes
/// 
/// ```
/// label
/// ├── [selection]
/// ├── [link]
/// ┊
/// ╰── [link]
/// ```
/// 
/// `GtkLabel` has a single CSS node with the name label. A wide variety
/// of style classes may be applied to labels, such as .title, .subtitle,
/// .dim-label, etc. In the `GtkShortcutsWindow`, labels are used with the
/// .keycap style class.
/// 
/// If the label has a selection, it gets a subnode with name selection.
/// 
/// If the label has links, there is one subnode per link. These subnodes
/// carry the link or visited state depending on whether they have been
/// visited. In this case, label node also gets a .link style class.
/// 
/// # GtkLabel as GtkBuildable
/// 
/// The GtkLabel implementation of the GtkBuildable interface supports a
/// custom &lt;attributes&gt; element, which supports any number of &lt;attribute&gt;
/// elements. The &lt;attribute&gt; element has attributes named “name“, “value“,
/// “start“ and “end“ and allows you to specify [struct`Pango.Attribute`]
/// values for this label.
/// 
/// An example of a UI definition fragment specifying Pango attributes:
/// ```xml
/// &lt;object class="GtkLabel"&gt;
///   &lt;attributes&gt;
///     &lt;attribute name="weight" value="PANGO_WEIGHT_BOLD"/&gt;
///     &lt;attribute name="background" value="red" start="5" end="10"/&gt;
///   &lt;/attributes&gt;
/// &lt;/object&gt;
/// ```
/// 
/// The start and end attributes specify the range of characters to which the
/// Pango attribute applies. If start and end are not specified, the attribute is
/// applied to the whole text. Note that specifying ranges does not make much
/// sense with translatable attributes. Use markup embedded in the translatable
/// content instead.
/// 
/// # Accessibility
/// 
/// `GtkLabel` uses the `GTK_ACCESSIBLE_ROLE_LABEL` role.
/// 
/// # Mnemonics
/// 
/// Labels may contain “mnemonics”. Mnemonics are underlined characters in the
/// label, used for keyboard navigation. Mnemonics are created by providing a
/// string with an underscore before the mnemonic character, such as `"_File"`,
/// to the functions [ctor`Gtk.Label.new_with_mnemonic`] or
/// [method`Gtk.Label.set_text_with_mnemonic`].
/// 
/// Mnemonics automatically activate any activatable widget the label is
/// inside, such as a [class`Gtk.Button`]; if the label is not inside the
/// mnemonic’s target widget, you have to tell the label about the target
/// using [class`Gtk.Label.set_mnemonic_widget`]. Here’s a simple example where
/// the label is inside a button:
/// 
/// ```c
/// // Pressing Alt+H will activate this button
/// GtkWidget *button = gtk_button_new ();
/// GtkWidget *label = gtk_label_new_with_mnemonic ("_Hello");
/// gtk_button_set_child (GTK_BUTTON (button), label);
/// ```
/// 
/// There’s a convenience function to create buttons with a mnemonic label
/// already inside:
/// 
/// ```c
/// // Pressing Alt+H will activate this button
/// GtkWidget *button = gtk_button_new_with_mnemonic ("_Hello");
/// ```
/// 
/// To create a mnemonic for a widget alongside the label, such as a
/// [class`Gtk.Entry`], you have to point the label at the entry with
/// [method`Gtk.Label.set_mnemonic_widget`]:
/// 
/// ```c
/// // Pressing Alt+H will focus the entry
/// GtkWidget *entry = gtk_entry_new ();
/// GtkWidget *label = gtk_label_new_with_mnemonic ("_Hello");
/// gtk_label_set_mnemonic_widget (GTK_LABEL (label), entry);
/// ```
/// 
/// # Markup (styled text)
/// 
/// To make it easy to format text in a label (changing colors,
/// fonts, etc.), label text can be provided in a simple
/// markup format:
/// 
/// Here’s how to create a label with a small font:
/// ```c
/// GtkWidget *label = gtk_label_new (NULL);
/// gtk_label_set_markup (GTK_LABEL (label), "&lt;small&gt;Small text&lt;/small&gt;");
/// ```
/// 
/// (See the Pango manual for complete documentation] of available
/// tags, [func`Pango.parse_markup`])
/// 
/// The markup passed to `gtk_label_set_markup()` must be valid; for example,
/// literal &lt;, &gt; and & characters must be escaped as &lt;, &gt;, and &amp;.
/// If you pass text obtained from the user, file, or a network to
/// [method`Gtk.Label.set_markup`], you’ll want to escape it with
/// `g_markup_escape_text()` or `g_markup_printf_escaped()`.
/// 
/// Markup strings are just a convenient way to set the [struct`Pango.AttrList`]
/// on a label; [method`Gtk.Label.set_attributes`] may be a simpler way to set
/// attributes in some cases. Be careful though; [struct`Pango.AttrList`] tends
/// to cause internationalization problems, unless you’re applying attributes
/// to the entire string (i.e. unless you set the range of each attribute
/// to [0, `G_MAXINT`)). The reason is that specifying the start_index and
/// end_index for a [struct`Pango.Attribute`] requires knowledge of the exact
/// string being displayed, so translations will cause problems.
/// 
/// # Selectable labels
/// 
/// Labels can be made selectable with [method`Gtk.Label.set_selectable`].
/// Selectable labels allow the user to copy the label contents to
/// the clipboard. Only labels that contain useful-to-copy information
/// — such as error messages — should be made selectable.
/// 
/// # Text layout
/// 
/// A label can contain any number of paragraphs, but will have
/// performance problems if it contains more than a small number.
/// Paragraphs are separated by newlines or other paragraph separators
/// understood by Pango.
/// 
/// Labels can automatically wrap text if you call [method`Gtk.Label.set_wrap`].
/// 
/// [method`Gtk.Label.set_justify`] sets how the lines in a label align
/// with one another. If you want to set how the label as a whole aligns
/// in its available space, see the [property`Gtk.Widget:halign`] and
/// [property`Gtk.Widget:valign`] properties.
/// 
/// The [property`Gtk.Label:width-chars`] and [property`Gtk.Label:max-width-chars`]
/// properties can be used to control the size allocation of ellipsized or
/// wrapped labels. For ellipsizing labels, if either is specified (and less
/// than the actual text size), it is used as the minimum width, and the actual
/// text size is used as the natural width of the label. For wrapping labels,
/// width-chars is used as the minimum width, if specified, and max-width-chars
/// is used as the natural width. Even if max-width-chars specified, wrapping
/// labels will be rewrapped to use all of the available width.
/// 
/// # Links
/// 
/// GTK supports markup for clickable hyperlinks in addition to regular Pango
/// markup. The markup for links is borrowed from HTML, using the `&lt;a&gt;` with
/// “href“, “title“ and “class“ attributes. GTK renders links similar to the
/// way they appear in web browsers, with colored, underlined text. The “title“
/// attribute is displayed as a tooltip on the link. The “class“ attribute is
/// used as style class on the CSS node for the link.
/// 
/// An example looks like this:
/// 
/// ```c
/// const char *text =
/// "Go to the"
/// "&lt;a href=\"http://www.gtk.org title=\"&lt;i&gt;Our&lt;/i&gt; website\"&gt;"
/// "GTK website&lt;/a&gt; for more...";
/// GtkWidget *label = gtk_label_new (NULL);
/// gtk_label_set_markup (GTK_LABEL (label), text);
/// ```
/// 
/// It is possible to implement custom handling for links and their tooltips
/// with the [signal`Gtk.Label::activate-link`] signal and the
/// [method`Gtk.Label.get_current_uri`] function.
public protocol LabelProtocol: WidgetProtocol {
        /// Untyped pointer to the underlying `GtkLabel` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkLabel` instance.
    var label_ptr: UnsafeMutablePointer<GtkLabel>! { get }

    /// Required Initialiser for types conforming to `LabelProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `LabelRef` type acts as a lightweight Swift reference to an underlying `GtkLabel` instance.
/// It exposes methods that can operate on this data type through `LabelProtocol` conformance.
/// Use `LabelRef` only as an `unowned` reference to an existing `GtkLabel` instance.
///
/// The `GtkLabel` widget displays a small amount of text.
/// 
/// As the name implies, most labels are used to label another widget
/// such as a [class`Button`].
/// 
/// ![An example GtkLabel](label.png)
/// 
/// # CSS nodes
/// 
/// ```
/// label
/// ├── [selection]
/// ├── [link]
/// ┊
/// ╰── [link]
/// ```
/// 
/// `GtkLabel` has a single CSS node with the name label. A wide variety
/// of style classes may be applied to labels, such as .title, .subtitle,
/// .dim-label, etc. In the `GtkShortcutsWindow`, labels are used with the
/// .keycap style class.
/// 
/// If the label has a selection, it gets a subnode with name selection.
/// 
/// If the label has links, there is one subnode per link. These subnodes
/// carry the link or visited state depending on whether they have been
/// visited. In this case, label node also gets a .link style class.
/// 
/// # GtkLabel as GtkBuildable
/// 
/// The GtkLabel implementation of the GtkBuildable interface supports a
/// custom &lt;attributes&gt; element, which supports any number of &lt;attribute&gt;
/// elements. The &lt;attribute&gt; element has attributes named “name“, “value“,
/// “start“ and “end“ and allows you to specify [struct`Pango.Attribute`]
/// values for this label.
/// 
/// An example of a UI definition fragment specifying Pango attributes:
/// ```xml
/// &lt;object class="GtkLabel"&gt;
///   &lt;attributes&gt;
///     &lt;attribute name="weight" value="PANGO_WEIGHT_BOLD"/&gt;
///     &lt;attribute name="background" value="red" start="5" end="10"/&gt;
///   &lt;/attributes&gt;
/// &lt;/object&gt;
/// ```
/// 
/// The start and end attributes specify the range of characters to which the
/// Pango attribute applies. If start and end are not specified, the attribute is
/// applied to the whole text. Note that specifying ranges does not make much
/// sense with translatable attributes. Use markup embedded in the translatable
/// content instead.
/// 
/// # Accessibility
/// 
/// `GtkLabel` uses the `GTK_ACCESSIBLE_ROLE_LABEL` role.
/// 
/// # Mnemonics
/// 
/// Labels may contain “mnemonics”. Mnemonics are underlined characters in the
/// label, used for keyboard navigation. Mnemonics are created by providing a
/// string with an underscore before the mnemonic character, such as `"_File"`,
/// to the functions [ctor`Gtk.Label.new_with_mnemonic`] or
/// [method`Gtk.Label.set_text_with_mnemonic`].
/// 
/// Mnemonics automatically activate any activatable widget the label is
/// inside, such as a [class`Gtk.Button`]; if the label is not inside the
/// mnemonic’s target widget, you have to tell the label about the target
/// using [class`Gtk.Label.set_mnemonic_widget`]. Here’s a simple example where
/// the label is inside a button:
/// 
/// ```c
/// // Pressing Alt+H will activate this button
/// GtkWidget *button = gtk_button_new ();
/// GtkWidget *label = gtk_label_new_with_mnemonic ("_Hello");
/// gtk_button_set_child (GTK_BUTTON (button), label);
/// ```
/// 
/// There’s a convenience function to create buttons with a mnemonic label
/// already inside:
/// 
/// ```c
/// // Pressing Alt+H will activate this button
/// GtkWidget *button = gtk_button_new_with_mnemonic ("_Hello");
/// ```
/// 
/// To create a mnemonic for a widget alongside the label, such as a
/// [class`Gtk.Entry`], you have to point the label at the entry with
/// [method`Gtk.Label.set_mnemonic_widget`]:
/// 
/// ```c
/// // Pressing Alt+H will focus the entry
/// GtkWidget *entry = gtk_entry_new ();
/// GtkWidget *label = gtk_label_new_with_mnemonic ("_Hello");
/// gtk_label_set_mnemonic_widget (GTK_LABEL (label), entry);
/// ```
/// 
/// # Markup (styled text)
/// 
/// To make it easy to format text in a label (changing colors,
/// fonts, etc.), label text can be provided in a simple
/// markup format:
/// 
/// Here’s how to create a label with a small font:
/// ```c
/// GtkWidget *label = gtk_label_new (NULL);
/// gtk_label_set_markup (GTK_LABEL (label), "&lt;small&gt;Small text&lt;/small&gt;");
/// ```
/// 
/// (See the Pango manual for complete documentation] of available
/// tags, [func`Pango.parse_markup`])
/// 
/// The markup passed to `gtk_label_set_markup()` must be valid; for example,
/// literal &lt;, &gt; and & characters must be escaped as &lt;, &gt;, and &amp;.
/// If you pass text obtained from the user, file, or a network to
/// [method`Gtk.Label.set_markup`], you’ll want to escape it with
/// `g_markup_escape_text()` or `g_markup_printf_escaped()`.
/// 
/// Markup strings are just a convenient way to set the [struct`Pango.AttrList`]
/// on a label; [method`Gtk.Label.set_attributes`] may be a simpler way to set
/// attributes in some cases. Be careful though; [struct`Pango.AttrList`] tends
/// to cause internationalization problems, unless you’re applying attributes
/// to the entire string (i.e. unless you set the range of each attribute
/// to [0, `G_MAXINT`)). The reason is that specifying the start_index and
/// end_index for a [struct`Pango.Attribute`] requires knowledge of the exact
/// string being displayed, so translations will cause problems.
/// 
/// # Selectable labels
/// 
/// Labels can be made selectable with [method`Gtk.Label.set_selectable`].
/// Selectable labels allow the user to copy the label contents to
/// the clipboard. Only labels that contain useful-to-copy information
/// — such as error messages — should be made selectable.
/// 
/// # Text layout
/// 
/// A label can contain any number of paragraphs, but will have
/// performance problems if it contains more than a small number.
/// Paragraphs are separated by newlines or other paragraph separators
/// understood by Pango.
/// 
/// Labels can automatically wrap text if you call [method`Gtk.Label.set_wrap`].
/// 
/// [method`Gtk.Label.set_justify`] sets how the lines in a label align
/// with one another. If you want to set how the label as a whole aligns
/// in its available space, see the [property`Gtk.Widget:halign`] and
/// [property`Gtk.Widget:valign`] properties.
/// 
/// The [property`Gtk.Label:width-chars`] and [property`Gtk.Label:max-width-chars`]
/// properties can be used to control the size allocation of ellipsized or
/// wrapped labels. For ellipsizing labels, if either is specified (and less
/// than the actual text size), it is used as the minimum width, and the actual
/// text size is used as the natural width of the label. For wrapping labels,
/// width-chars is used as the minimum width, if specified, and max-width-chars
/// is used as the natural width. Even if max-width-chars specified, wrapping
/// labels will be rewrapped to use all of the available width.
/// 
/// # Links
/// 
/// GTK supports markup for clickable hyperlinks in addition to regular Pango
/// markup. The markup for links is borrowed from HTML, using the `&lt;a&gt;` with
/// “href“, “title“ and “class“ attributes. GTK renders links similar to the
/// way they appear in web browsers, with colored, underlined text. The “title“
/// attribute is displayed as a tooltip on the link. The “class“ attribute is
/// used as style class on the CSS node for the link.
/// 
/// An example looks like this:
/// 
/// ```c
/// const char *text =
/// "Go to the"
/// "&lt;a href=\"http://www.gtk.org title=\"&lt;i&gt;Our&lt;/i&gt; website\"&gt;"
/// "GTK website&lt;/a&gt; for more...";
/// GtkWidget *label = gtk_label_new (NULL);
/// gtk_label_set_markup (GTK_LABEL (label), text);
/// ```
/// 
/// It is possible to implement custom handling for links and their tooltips
/// with the [signal`Gtk.Label::activate-link`] signal and the
/// [method`Gtk.Label.get_current_uri`] function.
public struct LabelRef: LabelProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkLabel` instance.
    /// For type-safe access, use the generated, typed pointer `label_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LabelRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkLabel>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkLabel>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkLabel>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkLabel>?) {
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

    /// Reference intialiser for a related type that implements `LabelProtocol`
    @inlinable init<T: LabelProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: LabelProtocol>(_ other: T) -> LabelRef { LabelRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new label with the given text inside it.
    /// 
    /// You can pass `nil` to get an empty label widget.
    @inlinable init( str: UnsafePointer<CChar>? = nil) {
        let rv = gtk_label_new(str)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkLabel`, containing the text in `str`.
    /// 
    /// If characters in `str` are preceded by an underscore, they are
    /// underlined. If you need a literal underscore character in a label, use
    /// '__' (two underscores). The first underlined character represents a
    /// keyboard accelerator called a mnemonic. The mnemonic key can be used
    /// to activate another widget, chosen automatically, or explicitly using
    /// [method`Gtk.Label.set_mnemonic_widget`].
    /// 
    /// If [method`Gtk.Label.set_mnemonic_widget`] is not called, then the first
    /// activatable ancestor of the `GtkLabel` will be chosen as the mnemonic
    /// widget. For instance, if the label is inside a button or menu item,
    /// the button or menu item will automatically become the mnemonic widget
    /// and be activated by the mnemonic.
    @inlinable init(mnemonic str: UnsafePointer<CChar>? = nil) {
        let rv = gtk_label_new_with_mnemonic(str)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GtkLabel`, containing the text in `str`.
    /// 
    /// If characters in `str` are preceded by an underscore, they are
    /// underlined. If you need a literal underscore character in a label, use
    /// '__' (two underscores). The first underlined character represents a
    /// keyboard accelerator called a mnemonic. The mnemonic key can be used
    /// to activate another widget, chosen automatically, or explicitly using
    /// [method`Gtk.Label.set_mnemonic_widget`].
    /// 
    /// If [method`Gtk.Label.set_mnemonic_widget`] is not called, then the first
    /// activatable ancestor of the `GtkLabel` will be chosen as the mnemonic
    /// widget. For instance, if the label is inside a button or menu item,
    /// the button or menu item will automatically become the mnemonic widget
    /// and be activated by the mnemonic.
    @inlinable static func newWith(mnemonic str: UnsafePointer<CChar>? = nil) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_label_new_with_mnemonic(str))) else { return nil }
        return rv
    }
}

/// The `Label` type acts as a reference-counted owner of an underlying `GtkLabel` instance.
/// It provides the methods that can operate on this data type through `LabelProtocol` conformance.
/// Use `Label` as a strong reference or owner of a `GtkLabel` instance.
///
/// The `GtkLabel` widget displays a small amount of text.
/// 
/// As the name implies, most labels are used to label another widget
/// such as a [class`Button`].
/// 
/// ![An example GtkLabel](label.png)
/// 
/// # CSS nodes
/// 
/// ```
/// label
/// ├── [selection]
/// ├── [link]
/// ┊
/// ╰── [link]
/// ```
/// 
/// `GtkLabel` has a single CSS node with the name label. A wide variety
/// of style classes may be applied to labels, such as .title, .subtitle,
/// .dim-label, etc. In the `GtkShortcutsWindow`, labels are used with the
/// .keycap style class.
/// 
/// If the label has a selection, it gets a subnode with name selection.
/// 
/// If the label has links, there is one subnode per link. These subnodes
/// carry the link or visited state depending on whether they have been
/// visited. In this case, label node also gets a .link style class.
/// 
/// # GtkLabel as GtkBuildable
/// 
/// The GtkLabel implementation of the GtkBuildable interface supports a
/// custom &lt;attributes&gt; element, which supports any number of &lt;attribute&gt;
/// elements. The &lt;attribute&gt; element has attributes named “name“, “value“,
/// “start“ and “end“ and allows you to specify [struct`Pango.Attribute`]
/// values for this label.
/// 
/// An example of a UI definition fragment specifying Pango attributes:
/// ```xml
/// &lt;object class="GtkLabel"&gt;
///   &lt;attributes&gt;
///     &lt;attribute name="weight" value="PANGO_WEIGHT_BOLD"/&gt;
///     &lt;attribute name="background" value="red" start="5" end="10"/&gt;
///   &lt;/attributes&gt;
/// &lt;/object&gt;
/// ```
/// 
/// The start and end attributes specify the range of characters to which the
/// Pango attribute applies. If start and end are not specified, the attribute is
/// applied to the whole text. Note that specifying ranges does not make much
/// sense with translatable attributes. Use markup embedded in the translatable
/// content instead.
/// 
/// # Accessibility
/// 
/// `GtkLabel` uses the `GTK_ACCESSIBLE_ROLE_LABEL` role.
/// 
/// # Mnemonics
/// 
/// Labels may contain “mnemonics”. Mnemonics are underlined characters in the
/// label, used for keyboard navigation. Mnemonics are created by providing a
/// string with an underscore before the mnemonic character, such as `"_File"`,
/// to the functions [ctor`Gtk.Label.new_with_mnemonic`] or
/// [method`Gtk.Label.set_text_with_mnemonic`].
/// 
/// Mnemonics automatically activate any activatable widget the label is
/// inside, such as a [class`Gtk.Button`]; if the label is not inside the
/// mnemonic’s target widget, you have to tell the label about the target
/// using [class`Gtk.Label.set_mnemonic_widget`]. Here’s a simple example where
/// the label is inside a button:
/// 
/// ```c
/// // Pressing Alt+H will activate this button
/// GtkWidget *button = gtk_button_new ();
/// GtkWidget *label = gtk_label_new_with_mnemonic ("_Hello");
/// gtk_button_set_child (GTK_BUTTON (button), label);
/// ```
/// 
/// There’s a convenience function to create buttons with a mnemonic label
/// already inside:
/// 
/// ```c
/// // Pressing Alt+H will activate this button
/// GtkWidget *button = gtk_button_new_with_mnemonic ("_Hello");
/// ```
/// 
/// To create a mnemonic for a widget alongside the label, such as a
/// [class`Gtk.Entry`], you have to point the label at the entry with
/// [method`Gtk.Label.set_mnemonic_widget`]:
/// 
/// ```c
/// // Pressing Alt+H will focus the entry
/// GtkWidget *entry = gtk_entry_new ();
/// GtkWidget *label = gtk_label_new_with_mnemonic ("_Hello");
/// gtk_label_set_mnemonic_widget (GTK_LABEL (label), entry);
/// ```
/// 
/// # Markup (styled text)
/// 
/// To make it easy to format text in a label (changing colors,
/// fonts, etc.), label text can be provided in a simple
/// markup format:
/// 
/// Here’s how to create a label with a small font:
/// ```c
/// GtkWidget *label = gtk_label_new (NULL);
/// gtk_label_set_markup (GTK_LABEL (label), "&lt;small&gt;Small text&lt;/small&gt;");
/// ```
/// 
/// (See the Pango manual for complete documentation] of available
/// tags, [func`Pango.parse_markup`])
/// 
/// The markup passed to `gtk_label_set_markup()` must be valid; for example,
/// literal &lt;, &gt; and & characters must be escaped as &lt;, &gt;, and &amp;.
/// If you pass text obtained from the user, file, or a network to
/// [method`Gtk.Label.set_markup`], you’ll want to escape it with
/// `g_markup_escape_text()` or `g_markup_printf_escaped()`.
/// 
/// Markup strings are just a convenient way to set the [struct`Pango.AttrList`]
/// on a label; [method`Gtk.Label.set_attributes`] may be a simpler way to set
/// attributes in some cases. Be careful though; [struct`Pango.AttrList`] tends
/// to cause internationalization problems, unless you’re applying attributes
/// to the entire string (i.e. unless you set the range of each attribute
/// to [0, `G_MAXINT`)). The reason is that specifying the start_index and
/// end_index for a [struct`Pango.Attribute`] requires knowledge of the exact
/// string being displayed, so translations will cause problems.
/// 
/// # Selectable labels
/// 
/// Labels can be made selectable with [method`Gtk.Label.set_selectable`].
/// Selectable labels allow the user to copy the label contents to
/// the clipboard. Only labels that contain useful-to-copy information
/// — such as error messages — should be made selectable.
/// 
/// # Text layout
/// 
/// A label can contain any number of paragraphs, but will have
/// performance problems if it contains more than a small number.
/// Paragraphs are separated by newlines or other paragraph separators
/// understood by Pango.
/// 
/// Labels can automatically wrap text if you call [method`Gtk.Label.set_wrap`].
/// 
/// [method`Gtk.Label.set_justify`] sets how the lines in a label align
/// with one another. If you want to set how the label as a whole aligns
/// in its available space, see the [property`Gtk.Widget:halign`] and
/// [property`Gtk.Widget:valign`] properties.
/// 
/// The [property`Gtk.Label:width-chars`] and [property`Gtk.Label:max-width-chars`]
/// properties can be used to control the size allocation of ellipsized or
/// wrapped labels. For ellipsizing labels, if either is specified (and less
/// than the actual text size), it is used as the minimum width, and the actual
/// text size is used as the natural width of the label. For wrapping labels,
/// width-chars is used as the minimum width, if specified, and max-width-chars
/// is used as the natural width. Even if max-width-chars specified, wrapping
/// labels will be rewrapped to use all of the available width.
/// 
/// # Links
/// 
/// GTK supports markup for clickable hyperlinks in addition to regular Pango
/// markup. The markup for links is borrowed from HTML, using the `&lt;a&gt;` with
/// “href“, “title“ and “class“ attributes. GTK renders links similar to the
/// way they appear in web browsers, with colored, underlined text. The “title“
/// attribute is displayed as a tooltip on the link. The “class“ attribute is
/// used as style class on the CSS node for the link.
/// 
/// An example looks like this:
/// 
/// ```c
/// const char *text =
/// "Go to the"
/// "&lt;a href=\"http://www.gtk.org title=\"&lt;i&gt;Our&lt;/i&gt; website\"&gt;"
/// "GTK website&lt;/a&gt; for more...";
/// GtkWidget *label = gtk_label_new (NULL);
/// gtk_label_set_markup (GTK_LABEL (label), text);
/// ```
/// 
/// It is possible to implement custom handling for links and their tooltips
/// with the [signal`Gtk.Label::activate-link`] signal and the
/// [method`Gtk.Label.get_current_uri`] function.
open class Label: Widget, LabelProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Label` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkLabel>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Label` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkLabel>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Label` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Label` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Label` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkLabel>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Label` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkLabel>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkLabel`.
    /// i.e., ownership is transferred to the `Label` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkLabel>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `LabelProtocol`
    /// Will retain `GtkLabel`.
    /// - Parameter other: an instance of a related type that implements `LabelProtocol`
    @inlinable public init<T: LabelProtocol>(label other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new label with the given text inside it.
    /// 
    /// You can pass `nil` to get an empty label widget.
    @inlinable public init( str: UnsafePointer<CChar>? = nil) {
        let rv = gtk_label_new(str)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkLabel`, containing the text in `str`.
    /// 
    /// If characters in `str` are preceded by an underscore, they are
    /// underlined. If you need a literal underscore character in a label, use
    /// '__' (two underscores). The first underlined character represents a
    /// keyboard accelerator called a mnemonic. The mnemonic key can be used
    /// to activate another widget, chosen automatically, or explicitly using
    /// [method`Gtk.Label.set_mnemonic_widget`].
    /// 
    /// If [method`Gtk.Label.set_mnemonic_widget`] is not called, then the first
    /// activatable ancestor of the `GtkLabel` will be chosen as the mnemonic
    /// widget. For instance, if the label is inside a button or menu item,
    /// the button or menu item will automatically become the mnemonic widget
    /// and be activated by the mnemonic.
    @inlinable public init(mnemonic str: UnsafePointer<CChar>? = nil) {
        let rv = gtk_label_new_with_mnemonic(str)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkLabel`, containing the text in `str`.
    /// 
    /// If characters in `str` are preceded by an underscore, they are
    /// underlined. If you need a literal underscore character in a label, use
    /// '__' (two underscores). The first underlined character represents a
    /// keyboard accelerator called a mnemonic. The mnemonic key can be used
    /// to activate another widget, chosen automatically, or explicitly using
    /// [method`Gtk.Label.set_mnemonic_widget`].
    /// 
    /// If [method`Gtk.Label.set_mnemonic_widget`] is not called, then the first
    /// activatable ancestor of the `GtkLabel` will be chosen as the mnemonic
    /// widget. For instance, if the label is inside a button or menu item,
    /// the button or menu item will automatically become the mnemonic widget
    /// and be activated by the mnemonic.
    @inlinable public static func newWith(mnemonic str: UnsafePointer<CChar>? = nil) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_label_new_with_mnemonic(str))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum LabelPropertyName: String, PropertyNameProtocol {
    /// A list of style attributes to apply to the text of the label.
    case attributes = "attributes"
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    /// Whether the widget can receive pointer events.
    case canTarget = "can-target"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`.
    case cursor = "cursor"
    /// The preferred place to ellipsize the string, if the label does
    /// not have enough room to display the entire string.
    /// 
    /// Note that setting this property to a value other than
    /// `PANGO_ELLIPSIZE_NONE` has the side-effect that the label requests
    /// only enough space to display the ellipsis "...". In particular, this
    /// means that ellipsizing labels do not work well in notebook tabs, unless
    /// the [property`Gtk.NotebookPage:tab-expand`] child property is set to `true`.
    /// Other ways to set a label's width are [method`Gtk.Widget.set_size_request`]
    /// and [method`Gtk.Label.set_width_chars`].
    case ellipsize = "ellipsize"
    /// A menu model whose contents will be appended to the context menu.
    case extraMenu = "extra-menu"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// How to distribute horizontal space if widget gets extra space.
    case halign = "halign"
    /// Whether the widget is the default widget.
    case hasDefault = "has-default"
    /// Whether the widget has the input focus.
    case hasFocus = "has-focus"
    /// Enables or disables the emission of the `query-tooltip` signal on `widget`.
    /// 
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using [signal`Gtk.Widget::query-tooltip`] to
    /// determine whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    /// Override for height request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case heightRequest = "height-request"
    /// Whether to expand horizontally.
    case hexpand = "hexpand"
    /// Whether to use the `hexpand` property.
    case hexpandSet = "hexpand-set"
    /// The alignment of the lines in the text of the label, relative to each other.
    /// 
    /// This does *not* affect the alignment of the label within its allocation.
    /// See [property`Gtk.Label:xalign`] for that.
    case justify = "justify"
    /// The contents of the label.
    /// 
    /// If the string contains Pango markup (see [func`Pango.parse_markup`]),
    /// you will have to set the [property`Gtk.Label:use-markup`] property to
    /// `true` in order for the label to display the markup attributes. See also
    /// [method`Gtk.Label.set_markup`] for a convenience function that sets both
    /// this property and the [property`Gtk.Label:use-markup`] property at the
    /// same time.
    /// 
    /// If the string contains underlines acting as mnemonics, you will have to
    /// set the [property`Gtk.Label:use-underline`] property to `true` in order
    /// for the label to display them.
    case label = "label"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case layoutManager = "layout-manager"
    /// The number of lines to which an ellipsized, wrapping label
    /// should be limited.
    /// 
    /// This property has no effect if the label is not wrapping or ellipsized.
    /// Set this property to -1 if you don't want to limit the number of lines.
    case lines = "lines"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginEnd = "margin-end"
    /// Margin on start of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginTop = "margin-top"
    /// The desired maximum width of the label, in characters.
    /// 
    /// If this property is set to -1, the width will be calculated automatically.
    /// 
    /// See the section on [text layout](#label-text-layout) for details of how
    /// [property`Gtk.Label:width-chars`] and [property`Gtk.Label:max-width-chars`]
    /// determine the width of ellipsized and wrapped labels.
    case maxWidthChars = "max-width-chars"
    /// The mnemonic accelerator key for the label.
    case mnemonicKeyval = "mnemonic-keyval"
    /// The widget to be activated when the labels mnemonic key is pressed.
    case mnemonicWidget = "mnemonic-widget"
    /// The name of the widget.
    case name = "name"
    /// The requested opacity of the widget.
    case opacity = "opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    /// The parent widget of this widget.
    case parent = "parent"
    /// Whether the widget will receive the default action when it is focused.
    case receivesDefault = "receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget.
    case scaleFactor = "scale-factor"
    /// Whether the label text can be selected with the mouse.
    case selectable = "selectable"
    /// Whether the widget responds to input.
    case sensitive = "sensitive"
    /// Whether the label is in single line mode.
    /// 
    /// In single line mode, the height of the label does not depend on the
    /// actual text, it is always set to ascent + descent of the font. This
    /// can be an advantage in situations where resizing the label because
    /// of text changes would be distracting, e.g. in a statusbar.
    case singleLineMode = "single-line-mode"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with Pango markup.
    /// 
    /// Also see [method`Gtk.Tooltip.set_markup`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see [method`Gtk.Tooltip.set_text`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// `true` if the text of the label includes Pango markup.
    /// 
    /// See [func`Pango.parse_markup`].
    case useMarkup = "use-markup"
    /// `true` if the text of the label indicates a mnemonic with _.
    case useUnderline = "use-underline"
    /// How to distribute vertical space if widget gets extra space.
    case valign = "valign"
    /// Whether to expand vertically.
    case vexpand = "vexpand"
    /// Whether to use the `vexpand` property.
    case vexpandSet = "vexpand-set"
    /// Whether the widget is visible.
    case visible = "visible"
    /// The desired width of the label, in characters.
    /// 
    /// If this property is set to -1, the width will be calculated automatically.
    /// 
    /// See the section on [text layout](#label-text-layout) for details of how
    /// [property`Gtk.Label:width-chars`] and [property`Gtk.Label:max-width-chars`]
    /// determine the width of ellipsized and wrapped labels.
    case widthChars = "width-chars"
    /// Override for width request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case widthRequest = "width-request"
    /// `true` if the label text will wrap if it gets too wide.
    case wrap = "wrap"
    /// Controls how the line wrapping is done.
    /// 
    /// This only affects the formatting if line wrapping is on (see the
    /// [property`Gtk.Label:wrap`] property). The default is `PANGO_WRAP_WORD`,
    /// which means wrap on word boundaries.
    case wrapMode = "wrap-mode"
    /// The horizontal alignment of the label text inside its size allocation.
    /// 
    /// Compare this to [property`Gtk.Widget:halign`], which determines how the
    /// labels size allocation is positioned in the space available for the label.
    case xalign = "xalign"
    /// The vertical alignment of the label text inside its size allocation.
    /// 
    /// Compare this to [property`Gtk.Widget:valign`], which determines how the
    /// labels size allocation is positioned in the space available for the label.
    case yalign = "yalign"
}

public extension LabelProtocol {
    /// Bind a `LabelPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: LabelPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Label property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: LabelPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Label property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: LabelPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum LabelSignalName: String, SignalNameProtocol {
    /// Gets emitted when the user activates a link in the label.
    /// 
    /// The `activate-current-link` is a [keybinding signal](class.SignalAction.html).
    /// 
    /// Applications may also emit the signal with `g_signal_emit_by_name()`
    /// if they need to control activation of URIs programmatically.
    /// 
    /// The default bindings for this signal are all forms of the Enter key.
    case activateCurrentLink = "activate-current-link"
    /// Gets emitted to activate a URI.
    /// 
    /// Applications may connect to it to override the default behaviour,
    /// which is to call `gtk_show_uri()`.
    case activateLink = "activate-link"
    /// Gets emitted to copy the slection to the clipboard.
    /// 
    /// The `copy-clipboard` signal is a [keybinding signal](class.SignalAction.html).
    /// 
    /// The default binding for this signal is Ctrl-c.
    case copyClipboard = "copy-clipboard"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold.
    /// 
    /// May result in finalization of the widget if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// Emitted when the text direction of a widget changes.
    case directionChanged = "direction-changed"
    /// Emitted when `widget` is hidden.
    case hide = "hide"
    /// Emitted if keyboard navigation fails.
    /// 
    /// See [method`Gtk.Widget.keynav_failed`] for details.
    case keynavFailed = "keynav-failed"
    /// Emitted when `widget` is going to be mapped.
    /// 
    /// A widget is mapped when the widget is visible (which is controlled with
    /// [property`Gtk.Widget:visible`]) and all its parents up to the toplevel widget
    /// are also visible.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of [signal`Gtk.Widget::unmap`].
    case map = "map"
    /// Emitted when a widget is activated via a mnemonic.
    /// 
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// Gets emitted when the user initiates a cursor movement.
    /// 
    /// The `move-cursor` signal is a [keybinding signal](class.SignalAction.html).
    /// If the cursor is not visible in `entry`, this signal causes the viewport to
    /// be moved instead.
    /// 
    /// Applications should not connect to it, but may emit it with
    /// `g_signal_emit_by_name()` if they need to control the cursor
    /// programmatically.
    /// 
    /// The default bindings for this signal come in two variants,
    /// the variant with the Shift modifier extends the selection,
    /// the variant without the Shift modifier does not.
    /// There are too many key combinations to list them all here.
    /// - Arrow keys move by individual characters/lines
    /// - Ctrl-arrow key combinations move by words/paragraphs
    /// - Home/End keys move to the ends of the buffer
    case moveCursor = "move-cursor"
    /// Emitted when the focus is moved.
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
    /// Emitted when the widgets tooltip is about to be shown.
    /// 
    /// This happens when the [property`Gtk.Widget:has-tooltip`] property
    /// is `true` and the hover timeout has expired with the cursor hovering
    /// "above" `widget`; or emitted when `widget` got focus in keyboard mode.
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
    /// Emitted when `widget` is associated with a `GdkSurface`.
    /// 
    /// This means that [method`Gtk.Widget.realize`] has been called
    /// or the widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// Emitted when `widget` is shown.
    case show = "show"
    /// Emitted when the widget state changes.
    /// 
    /// See [method`Gtk.Widget.get_state_flags`].
    case stateFlagsChanged = "state-flags-changed"
    /// Emitted when `widget` is going to be unmapped.
    /// 
    /// A widget is unmapped when either it or any of its parents up to the
    /// toplevel widget have been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer,
    /// it can be used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// Emitted when the `GdkSurface` associated with `widget` is destroyed.
    /// 
    /// This means that [method`Gtk.Widget.unrealize`] has been called
    /// or the widget has been unmapped (that is, it is going to be hidden).
    case unrealize = "unrealize"
    /// A list of style attributes to apply to the text of the label.
    case notifyAttributes = "notify::attributes"
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCanFocus = "notify::can-focus"
    /// Whether the widget can receive pointer events.
    case notifyCanTarget = "notify::can-target"
    /// A list of css classes applied to this widget.
    case notifyCssClasses = "notify::css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCssName = "notify::css-name"
    /// The cursor used by `widget`.
    case notifyCursor = "notify::cursor"
    /// The preferred place to ellipsize the string, if the label does
    /// not have enough room to display the entire string.
    /// 
    /// Note that setting this property to a value other than
    /// `PANGO_ELLIPSIZE_NONE` has the side-effect that the label requests
    /// only enough space to display the ellipsis "...". In particular, this
    /// means that ellipsizing labels do not work well in notebook tabs, unless
    /// the [property`Gtk.NotebookPage:tab-expand`] child property is set to `true`.
    /// Other ways to set a label's width are [method`Gtk.Widget.set_size_request`]
    /// and [method`Gtk.Label.set_width_chars`].
    case notifyEllipsize = "notify::ellipsize"
    /// A menu model whose contents will be appended to the context menu.
    case notifyExtraMenu = "notify::extra-menu"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case notifyFocusable = "notify::focusable"
    /// How to distribute horizontal space if widget gets extra space.
    case notifyHalign = "notify::halign"
    /// Whether the widget is the default widget.
    case notifyHasDefault = "notify::has-default"
    /// Whether the widget has the input focus.
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of the `query-tooltip` signal on `widget`.
    /// 
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using [signal`Gtk.Widget::query-tooltip`] to
    /// determine whether it will provide a tooltip or not.
    case notifyHasTooltip = "notify::has-tooltip"
    /// Override for height request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `hexpand` property.
    case notifyHexpandSet = "notify::hexpand-set"
    /// The alignment of the lines in the text of the label, relative to each other.
    /// 
    /// This does *not* affect the alignment of the label within its allocation.
    /// See [property`Gtk.Label:xalign`] for that.
    case notifyJustify = "notify::justify"
    /// The contents of the label.
    /// 
    /// If the string contains Pango markup (see [func`Pango.parse_markup`]),
    /// you will have to set the [property`Gtk.Label:use-markup`] property to
    /// `true` in order for the label to display the markup attributes. See also
    /// [method`Gtk.Label.set_markup`] for a convenience function that sets both
    /// this property and the [property`Gtk.Label:use-markup`] property at the
    /// same time.
    /// 
    /// If the string contains underlines acting as mnemonics, you will have to
    /// set the [property`Gtk.Label:use-underline`] property to `true` in order
    /// for the label to display them.
    case notifyLabel = "notify::label"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyLayoutManager = "notify::layout-manager"
    /// The number of lines to which an ellipsized, wrapping label
    /// should be limited.
    /// 
    /// This property has no effect if the label is not wrapping or ellipsized.
    /// Set this property to -1 if you don't want to limit the number of lines.
    case notifyLines = "notify::lines"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on start of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginTop = "notify::margin-top"
    /// The desired maximum width of the label, in characters.
    /// 
    /// If this property is set to -1, the width will be calculated automatically.
    /// 
    /// See the section on [text layout](#label-text-layout) for details of how
    /// [property`Gtk.Label:width-chars`] and [property`Gtk.Label:max-width-chars`]
    /// determine the width of ellipsized and wrapped labels.
    case notifyMaxWidthChars = "notify::max-width-chars"
    /// The mnemonic accelerator key for the label.
    case notifyMnemonicKeyval = "notify::mnemonic-keyval"
    /// The widget to be activated when the labels mnemonic key is pressed.
    case notifyMnemonicWidget = "notify::mnemonic-widget"
    /// The name of the widget.
    case notifyName = "notify::name"
    /// The requested opacity of the widget.
    case notifyOpacity = "notify::opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyOverflow = "notify::overflow"
    /// The parent widget of this widget.
    case notifyParent = "notify::parent"
    /// Whether the widget will receive the default action when it is focused.
    case notifyReceivesDefault = "notify::receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case notifyRoot = "notify::root"
    /// The scale factor of the widget.
    case notifyScaleFactor = "notify::scale-factor"
    /// Whether the label text can be selected with the mouse.
    case notifySelectable = "notify::selectable"
    /// Whether the widget responds to input.
    case notifySensitive = "notify::sensitive"
    /// Whether the label is in single line mode.
    /// 
    /// In single line mode, the height of the label does not depend on the
    /// actual text, it is always set to ascent + descent of the font. This
    /// can be an advantage in situations where resizing the label because
    /// of text changes would be distracting, e.g. in a statusbar.
    case notifySingleLineMode = "notify::single-line-mode"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with Pango markup.
    /// 
    /// Also see [method`Gtk.Tooltip.set_markup`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see [method`Gtk.Tooltip.set_text`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    /// `true` if the text of the label includes Pango markup.
    /// 
    /// See [func`Pango.parse_markup`].
    case notifyUseMarkup = "notify::use-markup"
    /// `true` if the text of the label indicates a mnemonic with _.
    case notifyUseUnderline = "notify::use-underline"
    /// How to distribute vertical space if widget gets extra space.
    case notifyValign = "notify::valign"
    /// Whether to expand vertically.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `vexpand` property.
    case notifyVexpandSet = "notify::vexpand-set"
    /// Whether the widget is visible.
    case notifyVisible = "notify::visible"
    /// The desired width of the label, in characters.
    /// 
    /// If this property is set to -1, the width will be calculated automatically.
    /// 
    /// See the section on [text layout](#label-text-layout) for details of how
    /// [property`Gtk.Label:width-chars`] and [property`Gtk.Label:max-width-chars`]
    /// determine the width of ellipsized and wrapped labels.
    case notifyWidthChars = "notify::width-chars"
    /// Override for width request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case notifyWidthRequest = "notify::width-request"
    /// `true` if the label text will wrap if it gets too wide.
    case notifyWrap = "notify::wrap"
    /// Controls how the line wrapping is done.
    /// 
    /// This only affects the formatting if line wrapping is on (see the
    /// [property`Gtk.Label:wrap`] property). The default is `PANGO_WRAP_WORD`,
    /// which means wrap on word boundaries.
    case notifyWrapMode = "notify::wrap-mode"
    /// The horizontal alignment of the label text inside its size allocation.
    /// 
    /// Compare this to [property`Gtk.Widget:halign`], which determines how the
    /// labels size allocation is positioned in the space available for the label.
    case notifyXalign = "notify::xalign"
    /// The vertical alignment of the label text inside its size allocation.
    /// 
    /// Compare this to [property`Gtk.Widget:valign`], which determines how the
    /// labels size allocation is positioned in the space available for the label.
    case notifyYalign = "notify::yalign"
}

// MARK: Label signals
public extension LabelProtocol {
    /// Connect a Swift signal handler to the given, typed `LabelSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: LabelSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `LabelSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: LabelSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Gets emitted when the user activates a link in the label.
    /// 
    /// The `activate-current-link` is a [keybinding signal](class.SignalAction.html).
    /// 
    /// Applications may also emit the signal with `g_signal_emit_by_name()`
    /// if they need to control activation of URIs programmatically.
    /// 
    /// The default bindings for this signal are all forms of the Enter key.
    /// - Note: This represents the underlying `activate-current-link` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `activateCurrentLink` signal is emitted
    @discardableResult @inlinable func onActivateCurrentLink(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<LabelRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .activateCurrentLink,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `activate-current-link` signal for using the `connect(signal:)` methods
    static var activateCurrentLinkSignal: LabelSignalName { .activateCurrentLink }
    
    /// Gets emitted to activate a URI.
    /// 
    /// Applications may connect to it to override the default behaviour,
    /// which is to call `gtk_show_uri()`.
    /// - Note: This represents the underlying `activate-link` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter uri: the URI that is activated
    /// - Parameter handler: `true` if the link has been activated
    /// Run the given callback whenever the `activateLink` signal is emitted
    @discardableResult @inlinable func onActivateLink(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ uri: String) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, String, Bool>
        let cCallback: @convention(c) (gpointer, UnsafeMutablePointer<gchar>?, gpointer) -> gboolean = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(LabelRef(raw: unownedSelf), arg1.map({ String(cString: $0) })!)
            return gboolean((output) ? 1 : 0)
        }
        return connect(
            signal: .activateLink,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `activate-link` signal for using the `connect(signal:)` methods
    static var activateLinkSignal: LabelSignalName { .activateLink }
    
    /// Gets emitted to copy the slection to the clipboard.
    /// 
    /// The `copy-clipboard` signal is a [keybinding signal](class.SignalAction.html).
    /// 
    /// The default binding for this signal is Ctrl-c.
    /// - Note: This represents the underlying `copy-clipboard` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `copyClipboard` signal is emitted
    @discardableResult @inlinable func onCopyClipboard(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<LabelRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .copyClipboard,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `copy-clipboard` signal for using the `connect(signal:)` methods
    static var copyClipboardSignal: LabelSignalName { .copyClipboard }
    
    /// Gets emitted when the user initiates a cursor movement.
    /// 
    /// The `move-cursor` signal is a [keybinding signal](class.SignalAction.html).
    /// If the cursor is not visible in `entry`, this signal causes the viewport to
    /// be moved instead.
    /// 
    /// Applications should not connect to it, but may emit it with
    /// `g_signal_emit_by_name()` if they need to control the cursor
    /// programmatically.
    /// 
    /// The default bindings for this signal come in two variants,
    /// the variant with the Shift modifier extends the selection,
    /// the variant without the Shift modifier does not.
    /// There are too many key combinations to list them all here.
    /// - Arrow keys move by individual characters/lines
    /// - Ctrl-arrow key combinations move by words/paragraphs
    /// - Home/End keys move to the ends of the buffer
    /// - Note: This represents the underlying `move-cursor` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter step: the granularity of the move, as a `GtkMovementStep`
    /// - Parameter count: the number of `step` units to move
    /// - Parameter extendSelection: `true` if the move should extend the selection
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `moveCursor` signal is emitted
    @discardableResult @inlinable func onMoveCursor(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ step: MovementStep, _ count: Int, _ extendSelection: Bool) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder4<LabelRef, MovementStep, Int, Bool, Void>
        let cCallback: @convention(c) (gpointer, UInt32, gint, gboolean, gpointer) -> Void = { unownedSelf, arg1, arg2, arg3, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), MovementStep(arg1), Int(arg2), ((arg3) != 0))
            return output
        }
        return connect(
            signal: .moveCursor,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `move-cursor` signal for using the `connect(signal:)` methods
    static var moveCursorSignal: LabelSignalName { .moveCursor }
    
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
    /// - Note: This represents the underlying `notify::attributes` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyAttributes` signal is emitted
    @discardableResult @inlinable func onNotifyAttributes(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyAttributes,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::attributes` signal for using the `connect(signal:)` methods
    static var notifyAttributesSignal: LabelSignalName { .notifyAttributes }
    
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
    /// - Note: This represents the underlying `notify::ellipsize` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyEllipsize` signal is emitted
    @discardableResult @inlinable func onNotifyEllipsize(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyEllipsize,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::ellipsize` signal for using the `connect(signal:)` methods
    static var notifyEllipsizeSignal: LabelSignalName { .notifyEllipsize }
    
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
    /// - Note: This represents the underlying `notify::extra-menu` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyExtraMenu` signal is emitted
    @discardableResult @inlinable func onNotifyExtraMenu(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyExtraMenu,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::extra-menu` signal for using the `connect(signal:)` methods
    static var notifyExtraMenuSignal: LabelSignalName { .notifyExtraMenu }
    
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
    /// - Note: This represents the underlying `notify::justify` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyJustify` signal is emitted
    @discardableResult @inlinable func onNotifyJustify(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyJustify,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::justify` signal for using the `connect(signal:)` methods
    static var notifyJustifySignal: LabelSignalName { .notifyJustify }
    
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
    /// - Note: This represents the underlying `notify::label` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyLabel` signal is emitted
    @discardableResult @inlinable func onNotifyLabel(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyLabel,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::label` signal for using the `connect(signal:)` methods
    static var notifyLabelSignal: LabelSignalName { .notifyLabel }
    
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
    /// - Note: This represents the underlying `notify::lines` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyLines` signal is emitted
    @discardableResult @inlinable func onNotifyLines(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyLines,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::lines` signal for using the `connect(signal:)` methods
    static var notifyLinesSignal: LabelSignalName { .notifyLines }
    
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
    /// - Note: This represents the underlying `notify::max-width-chars` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyMaxWidthChars` signal is emitted
    @discardableResult @inlinable func onNotifyMaxWidthChars(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyMaxWidthChars,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::max-width-chars` signal for using the `connect(signal:)` methods
    static var notifyMaxWidthCharsSignal: LabelSignalName { .notifyMaxWidthChars }
    
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
    /// - Note: This represents the underlying `notify::mnemonic-keyval` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyMnemonicKeyval` signal is emitted
    @discardableResult @inlinable func onNotifyMnemonicKeyval(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyMnemonicKeyval,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::mnemonic-keyval` signal for using the `connect(signal:)` methods
    static var notifyMnemonicKeyvalSignal: LabelSignalName { .notifyMnemonicKeyval }
    
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
    /// - Note: This represents the underlying `notify::mnemonic-widget` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyMnemonicWidget` signal is emitted
    @discardableResult @inlinable func onNotifyMnemonicWidget(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyMnemonicWidget,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::mnemonic-widget` signal for using the `connect(signal:)` methods
    static var notifyMnemonicWidgetSignal: LabelSignalName { .notifyMnemonicWidget }
    
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
    /// - Note: This represents the underlying `notify::selectable` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifySelectable` signal is emitted
    @discardableResult @inlinable func onNotifySelectable(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifySelectable,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::selectable` signal for using the `connect(signal:)` methods
    static var notifySelectableSignal: LabelSignalName { .notifySelectable }
    
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
    /// - Note: This represents the underlying `notify::single-line-mode` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifySingleLineMode` signal is emitted
    @discardableResult @inlinable func onNotifySingleLineMode(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifySingleLineMode,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::single-line-mode` signal for using the `connect(signal:)` methods
    static var notifySingleLineModeSignal: LabelSignalName { .notifySingleLineMode }
    
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
    /// - Note: This represents the underlying `notify::use-markup` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyUseMarkup` signal is emitted
    @discardableResult @inlinable func onNotifyUseMarkup(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyUseMarkup,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::use-markup` signal for using the `connect(signal:)` methods
    static var notifyUseMarkupSignal: LabelSignalName { .notifyUseMarkup }
    
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
    /// - Note: This represents the underlying `notify::use-underline` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyUseUnderline` signal is emitted
    @discardableResult @inlinable func onNotifyUseUnderline(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyUseUnderline,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::use-underline` signal for using the `connect(signal:)` methods
    static var notifyUseUnderlineSignal: LabelSignalName { .notifyUseUnderline }
    
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
    /// - Note: This represents the underlying `notify::width-chars` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyWidthChars` signal is emitted
    @discardableResult @inlinable func onNotifyWidthChars(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyWidthChars,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::width-chars` signal for using the `connect(signal:)` methods
    static var notifyWidthCharsSignal: LabelSignalName { .notifyWidthChars }
    
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
    /// - Note: This represents the underlying `notify::wrap` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyWrap` signal is emitted
    @discardableResult @inlinable func onNotifyWrap(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyWrap,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::wrap` signal for using the `connect(signal:)` methods
    static var notifyWrapSignal: LabelSignalName { .notifyWrap }
    
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
    /// - Note: This represents the underlying `notify::wrap-mode` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyWrapMode` signal is emitted
    @discardableResult @inlinable func onNotifyWrapMode(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyWrapMode,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::wrap-mode` signal for using the `connect(signal:)` methods
    static var notifyWrapModeSignal: LabelSignalName { .notifyWrapMode }
    
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
    /// - Note: This represents the underlying `notify::xalign` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyXalign` signal is emitted
    @discardableResult @inlinable func onNotifyXalign(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyXalign,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::xalign` signal for using the `connect(signal:)` methods
    static var notifyXalignSignal: LabelSignalName { .notifyXalign }
    
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
    /// - Note: This represents the underlying `notify::yalign` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyYalign` signal is emitted
    @discardableResult @inlinable func onNotifyYalign(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LabelRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LabelRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LabelRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyYalign,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::yalign` signal for using the `connect(signal:)` methods
    static var notifyYalignSignal: LabelSignalName { .notifyYalign }
    
}

// MARK: Label Class: LabelProtocol extension (methods and fields)
public extension LabelProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLabel` instance.
    @inlinable var label_ptr: UnsafeMutablePointer<GtkLabel>! { return ptr?.assumingMemoryBound(to: GtkLabel.self) }

    /// Gets the labels attribute list.
    /// 
    /// This is the [struct`Pango.AttrList`] that was set on the label using
    /// [method`Gtk.Label.set_attributes`], if any. This function does not
    /// reflect attributes that come from the labels markup (see
    /// [method`Gtk.Label.set_markup`]). If you want to get the effective
    /// attributes for the label, use
    /// `pango_layout_get_attribute (gtk_label_get_layout (self))`.
    @inlinable func getAttributes() -> Pango.AttrListRef! {
        let rv = Pango.AttrListRef(gtk_label_get_attributes(label_ptr))
        return rv
    }

    /// Returns the URI for the currently active link in the label.
    /// 
    /// The active link is the one under the mouse pointer or, in a
    /// selectable label, the link in which the text cursor is currently
    /// positioned.
    /// 
    /// This function is intended for use in a [signal`Gtk.Label::activate-link`]
    /// handler or for use in a [signal`Gtk.Widget::query-tooltip`] handler.
    @inlinable func getCurrentUri() -> String! {
        let rv = gtk_label_get_current_uri(label_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns the ellipsizing position of the label.
    /// 
    /// See [method`Gtk.Label.set_ellipsize`].
    @inlinable func getEllipsize() -> PangoEllipsizeMode {
        let rv = gtk_label_get_ellipsize(label_ptr)
        return rv
    }

    /// Gets the extra menu model of `label`.
    /// 
    /// See [method`Gtk.Label.set_extra_menu`].
    @inlinable func getExtraMenu() -> GIO.MenuModelRef! {
        let rv = GIO.MenuModelRef(gtk_label_get_extra_menu(label_ptr))
        return rv
    }

    /// Returns the justification of the label.
    /// 
    /// See [method`Gtk.Label.set_justify`].
    @inlinable func getJustify() -> GtkJustification {
        let rv = gtk_label_get_justify(label_ptr)
        return rv
    }

    /// Fetches the text from a label.
    /// 
    /// The returned text includes any embedded underlines indicating
    /// mnemonics and Pango markup. (See [method`Gtk.Label.get_text`]).
    @inlinable func getLabel() -> String! {
        let rv = gtk_label_get_label(label_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the `PangoLayout` used to display the label.
    /// 
    /// The layout is useful to e.g. convert text positions to pixel
    /// positions, in combination with [method`Gtk.Label.get_layout_offsets`].
    /// The returned layout is owned by the `label` so need not be
    /// freed by the caller. The `label` is free to recreate its layout
    /// at any time, so it should be considered read-only.
    @inlinable func getLayout() -> Pango.LayoutRef! {
        let rv = Pango.LayoutRef(gtk_label_get_layout(label_ptr))
        return rv
    }

    /// Obtains the coordinates where the label will draw its `PangoLayout`.
    /// 
    /// The coordinates are useful to convert mouse events into coordinates
    /// inside the [class`Pango.Layout`], e.g. to take some action if some part
    /// of the label is clicked. Remember when using the [class`Pango.Layout`]
    /// functions you need to convert to and from pixels using `PANGO_PIXELS()`
    /// or [constant`Pango.SCALE`].
    @inlinable func getLayoutOffsets(x: UnsafeMutablePointer<gint>! = nil, y: UnsafeMutablePointer<gint>! = nil) {
        gtk_label_get_layout_offsets(label_ptr, x, y)
    
    }

    /// Gets the number of lines to which an ellipsized, wrapping
    /// label should be limited.
    /// 
    /// See [method`Gtk.Label.set_lines`].
    @inlinable func getLines() -> Int {
        let rv = Int(gtk_label_get_lines(label_ptr))
        return rv
    }

    /// Retrieves the desired maximum width of `label`, in characters.
    /// 
    /// See [method`Gtk.Label.set_width_chars`].
    @inlinable func getMaxWidthChars() -> Int {
        let rv = Int(gtk_label_get_max_width_chars(label_ptr))
        return rv
    }

    /// Return the mnemonic accelerator.
    /// 
    /// If the label has been set so that it has a mnemonic key this function
    /// returns the keyval used for the mnemonic accelerator. If there is no
    /// mnemonic set up it returns `GDK_KEY_VoidSymbol`.
    @inlinable func getMnemonicKeyval() -> Int {
        let rv = Int(gtk_label_get_mnemonic_keyval(label_ptr))
        return rv
    }

    /// Retrieves the target of the mnemonic (keyboard shortcut) of this
    /// label.
    /// 
    /// See [method`Gtk.Label.set_mnemonic_widget`].
    @inlinable func getMnemonicWidget() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_label_get_mnemonic_widget(label_ptr))) else { return nil }
        return rv
    }

    /// Returns whether the label is selectable.
    @inlinable func getSelectable() -> Bool {
        let rv = ((gtk_label_get_selectable(label_ptr)) != 0)
        return rv
    }

    /// Gets the selected range of characters in the label.
    @inlinable func getSelectionBounds(start: UnsafeMutablePointer<gint>!, end: UnsafeMutablePointer<gint>!) -> Bool {
        let rv = ((gtk_label_get_selection_bounds(label_ptr, start, end)) != 0)
        return rv
    }

    /// Returns whether the label is in single line mode.
    @inlinable func getSingleLineMode() -> Bool {
        let rv = ((gtk_label_get_single_line_mode(label_ptr)) != 0)
        return rv
    }

    /// Fetches the text from a label.
    /// 
    /// The returned text is as it appears on screen. This does not include
    /// any embedded underlines indicating mnemonics or Pango markup. (See
    /// [method`Gtk.Label.get_label`])
    @inlinable func getText() -> String! {
        let rv = gtk_label_get_text(label_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns whether the label’s text is interpreted as Pango markup.
    /// 
    /// See [method`Gtk.Label.set_use_markup`].
    @inlinable func getUseMarkup() -> Bool {
        let rv = ((gtk_label_get_use_markup(label_ptr)) != 0)
        return rv
    }

    /// Returns whether an embedded underlines in the label indicate mnemonics.
    /// 
    /// See [method`Gtk.Label.set_use_underline`].
    @inlinable func getUseUnderline() -> Bool {
        let rv = ((gtk_label_get_use_underline(label_ptr)) != 0)
        return rv
    }

    /// Retrieves the desired width of `label`, in characters.
    /// 
    /// See [method`Gtk.Label.set_width_chars`].
    @inlinable func getWidthChars() -> Int {
        let rv = Int(gtk_label_get_width_chars(label_ptr))
        return rv
    }

    /// Returns whether lines in the label are automatically wrapped.
    /// 
    /// See [method`Gtk.Label.set_wrap`].
    @inlinable func getWrap() -> Bool {
        let rv = ((gtk_label_get_wrap(label_ptr)) != 0)
        return rv
    }

    /// Returns line wrap mode used by the label.
    /// 
    /// See [method`Gtk.Label.set_wrap_mode`].
    @inlinable func getWrapMode() -> PangoWrapMode {
        let rv = gtk_label_get_wrap_mode(label_ptr)
        return rv
    }

    /// Gets the `xalign` of the label.
    /// 
    /// See the [property`Gtk.Label:xalign`] property.
    @inlinable func getXalign() -> CFloat {
        let rv = gtk_label_get_xalign(label_ptr)
        return rv
    }

    /// Gets the `yalign` of the label.
    /// 
    /// See the [property`Gtk.Label:yalign`] property.
    @inlinable func getYalign() -> CFloat {
        let rv = gtk_label_get_yalign(label_ptr)
        return rv
    }

    /// Selects a range of characters in the label, if the label is selectable.
    /// 
    /// See [method`Gtk.Label.set_selectable`]. If the label is not selectable,
    /// this function has no effect. If `start_offset` or
    /// `end_offset` are -1, then the end of the label will be substituted.
    @inlinable func selectRegion(startOffset: Int, endOffset: Int) {
        gtk_label_select_region(label_ptr, gint(startOffset), gint(endOffset))
    
    }

    /// Apply attributes to the label text.
    /// 
    /// The attributes set with this function will be applied and merged with
    /// any other attributes previously effected by way of the
    /// [property`Gtk.Label:use-underline`] or [property`Gtk.Label:use-markup`]
    /// properties. While it is not recommended to mix markup strings with
    /// manually set attributes, if you must; know that the attributes will
    /// be applied to the label after the markup string is parsed.
    @inlinable func setAttributes(attrs: Pango.AttrListRef? = nil) {
        gtk_label_set_attributes(label_ptr, attrs?.attr_list_ptr)
    
    }
    /// Apply attributes to the label text.
    /// 
    /// The attributes set with this function will be applied and merged with
    /// any other attributes previously effected by way of the
    /// [property`Gtk.Label:use-underline`] or [property`Gtk.Label:use-markup`]
    /// properties. While it is not recommended to mix markup strings with
    /// manually set attributes, if you must; know that the attributes will
    /// be applied to the label after the markup string is parsed.
    @inlinable func setAttributes<AttrListT: Pango.AttrListProtocol>(attrs: AttrListT?) {
        gtk_label_set_attributes(label_ptr, attrs?.attr_list_ptr)
    
    }

    /// Sets the mode used to ellipsizei the text.
    /// 
    /// The text will be ellipsized if there is not enough space
    /// to render the entire string.
    @inlinable func setEllipsize(mode: PangoEllipsizeMode) {
        gtk_label_set_ellipsize(label_ptr, mode)
    
    }

    /// Sets a menu model to add when constructing
    /// the context menu for `label`.
    @inlinable func setExtraMenu(model: GIO.MenuModelRef? = nil) {
        gtk_label_set_extra_menu(label_ptr, model?.menu_model_ptr)
    
    }
    /// Sets a menu model to add when constructing
    /// the context menu for `label`.
    @inlinable func setExtraMenu<MenuModelT: GIO.MenuModelProtocol>(model: MenuModelT?) {
        gtk_label_set_extra_menu(label_ptr, model?.menu_model_ptr)
    
    }

    /// Sets the alignment of the lines in the text of the label relative to
    /// each other.
    /// 
    /// `GTK_JUSTIFY_LEFT` is the default value when the widget is first created
    /// with [ctor`Gtk.Label.new`]. If you instead want to set the alignment of
    /// the label as a whole, use [method`Gtk.Widget.set_halign`] instead.
    /// [method`Gtk.Label.set_justify`] has no effect on labels containing
    /// only a single line.
    @inlinable func setJustify(jtype: GtkJustification) {
        gtk_label_set_justify(label_ptr, jtype)
    
    }

    /// Sets the text of the label.
    /// 
    /// The label is interpreted as including embedded underlines and/or Pango
    /// markup depending on the values of the [property`Gtk.Label:use-underline`]
    /// and [property`Gtk.Label:use-markup`] properties.
    @inlinable func setLabel(str: UnsafePointer<CChar>!) {
        gtk_label_set_label(label_ptr, str)
    
    }

    /// Sets the number of lines to which an ellipsized, wrapping label
    /// should be limited.
    /// 
    /// This has no effect if the label is not wrapping or ellipsized.
    /// Set this to -1 if you don’t want to limit the number of lines.
    @inlinable func set(lines: Int) {
        gtk_label_set_lines(label_ptr, gint(lines))
    
    }

    /// Sets the labels text and attributes from markup.
    /// 
    /// The string must be marked up with Pango markup
    /// (see [func`Pango.parse_markup`]).
    /// 
    /// If the `str` is external data, you may need to escape it
    /// with `g_markup_escape_text()` or `g_markup_printf_escaped()`:
    /// 
    /// ```c
    /// GtkWidget *self = gtk_label_new (NULL);
    /// const char *str = "...";
    /// const char *format = "&lt;span style=\"italic\"&gt;\`s`&lt;/span&gt;";
    /// char *markup;
    /// 
    /// markup = g_markup_printf_escaped (format, str);
    /// gtk_label_set_markup (GTK_LABEL (self), markup);
    /// g_free (markup);
    /// ```
    /// 
    /// This function will set the [property`Gtk.Label:use-markup`] property
    /// to `true` as a side effect.
    /// 
    /// If you set the label contents using the [property`Gtk.Label:label`]
    /// property you should also ensure that you set the
    /// [property`Gtk.Label:use-markup`] property accordingly.
    /// 
    /// See also: [method`Gtk.Label.set_text`]
    @inlinable func setMarkup(str: UnsafePointer<CChar>!) {
        gtk_label_set_markup(label_ptr, str)
    
    }

    /// Sets the labels text, attributes and mnemonic from markup.
    /// 
    /// Parses `str` which is marked up with Pango markup (see [func`Pango.parse_markup`]),
    /// setting the label’s text and attribute list based on the parse results.
    /// If characters in `str` are preceded by an underscore, they are underlined
    /// indicating that they represent a keyboard accelerator called a mnemonic.
    /// 
    /// The mnemonic key can be used to activate another widget, chosen
    /// automatically, or explicitly using method`Gtk.Label.set_mnemonic_widget`].
    @inlinable func setMarkupWithMnemonic(str: UnsafePointer<CChar>!) {
        gtk_label_set_markup_with_mnemonic(label_ptr, str)
    
    }

    /// Sets the desired maximum width in characters of `label` to `n_chars`.
    @inlinable func setMaxWidthChars(nChars: Int) {
        gtk_label_set_max_width_chars(label_ptr, gint(nChars))
    
    }

    /// Associate the label with its mnemonic target.
    /// 
    /// If the label has been set so that it has a mnemonic key (using
    /// i.e. [method`Gtk.Label.set_markup_with_mnemonic`],
    /// [method`Gtk.Label.set_text_with_mnemonic`],
    /// [ctor`Gtk.Label.new_with_mnemonic`]
    /// or the [property`Gtk.Label:use_underline`] property) the label can be
    /// associated with a widget that is the target of the mnemonic. When the
    /// label is inside a widget (like a [class`Gtk.Button`] or a
    /// [class`Gtk.Notebook`] tab) it is automatically associated with the correct
    /// widget, but sometimes (i.e. when the target is a [class`Gtk.Entry`] next to
    /// the label) you need to set it explicitly using this function.
    /// 
    /// The target widget will be accelerated by emitting the
    /// [signal`GtkWidget::mnemonic-activate`] signal on it. The default handler for
    /// this signal will activate the widget if there are no mnemonic collisions
    /// and toggle focus between the colliding widgets otherwise.
    @inlinable func setMnemonic(widget: WidgetRef? = nil) {
        gtk_label_set_mnemonic_widget(label_ptr, widget?.widget_ptr)
    
    }
    /// Associate the label with its mnemonic target.
    /// 
    /// If the label has been set so that it has a mnemonic key (using
    /// i.e. [method`Gtk.Label.set_markup_with_mnemonic`],
    /// [method`Gtk.Label.set_text_with_mnemonic`],
    /// [ctor`Gtk.Label.new_with_mnemonic`]
    /// or the [property`Gtk.Label:use_underline`] property) the label can be
    /// associated with a widget that is the target of the mnemonic. When the
    /// label is inside a widget (like a [class`Gtk.Button`] or a
    /// [class`Gtk.Notebook`] tab) it is automatically associated with the correct
    /// widget, but sometimes (i.e. when the target is a [class`Gtk.Entry`] next to
    /// the label) you need to set it explicitly using this function.
    /// 
    /// The target widget will be accelerated by emitting the
    /// [signal`GtkWidget::mnemonic-activate`] signal on it. The default handler for
    /// this signal will activate the widget if there are no mnemonic collisions
    /// and toggle focus between the colliding widgets otherwise.
    @inlinable func setMnemonic<WidgetT: WidgetProtocol>(widget: WidgetT?) {
        gtk_label_set_mnemonic_widget(label_ptr, widget?.widget_ptr)
    
    }

    /// Makes text in the label selectable.
    /// 
    /// Selectable labels allow the user to select text from the label,
    /// for copy-and-paste.
    @inlinable func setSelectable(setting: Bool) {
        gtk_label_set_selectable(label_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Sets whether the label is in single line mode.
    @inlinable func set(singleLineMode: Bool) {
        gtk_label_set_single_line_mode(label_ptr, gboolean((singleLineMode) ? 1 : 0))
    
    }

    /// Sets the text within the `GtkLabel` widget.
    /// 
    /// It overwrites any text that was there before.
    /// 
    /// This function will clear any previously set mnemonic accelerators,
    /// and set the [property`Gtk.Label:use-underline` property] to `false` as
    /// a side effect.
    /// 
    /// This function will set the [property`Gtk.Label:use-markup`] property
    /// to `false` as a side effect.
    /// 
    /// See also: [method`Gtk.Label.set_markup`]
    @inlinable func setText(str: UnsafePointer<CChar>!) {
        gtk_label_set_text(label_ptr, str)
    
    }

    /// Sets the label’s text from the string `str`.
    /// 
    /// If characters in `str` are preceded by an underscore, they are underlined
    /// indicating that they represent a keyboard accelerator called a mnemonic.
    /// The mnemonic key can be used to activate another widget, chosen
    /// automatically, or explicitly using [method`Gtk.Label.set_mnemonic_widget`].
    @inlinable func setTextWithMnemonic(str: UnsafePointer<CChar>!) {
        gtk_label_set_text_with_mnemonic(label_ptr, str)
    
    }

    /// Sets whether the text of the label contains markup.
    /// 
    /// See [method`Gtk.Label.set_markup`].
    @inlinable func setUseMarkup(setting: Bool) {
        gtk_label_set_use_markup(label_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Sets whether underlines in the text indicate mnemonics.
    @inlinable func setUseUnderline(setting: Bool) {
        gtk_label_set_use_underline(label_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Sets the desired width in characters of `label` to `n_chars`.
    @inlinable func setWidthChars(nChars: Int) {
        gtk_label_set_width_chars(label_ptr, gint(nChars))
    
    }

    /// Toggles line wrapping within the `GtkLabel` widget.
    /// 
    /// `true` makes it break lines if text exceeds the widget’s size.
    /// `false` lets the text get cut off by the edge of the widget if
    /// it exceeds the widget size.
    /// 
    /// Note that setting line wrapping to `true` does not make the label
    /// wrap at its parent container’s width, because GTK widgets
    /// conceptually can’t make their requisition depend on the parent
    /// container’s size. For a label that wraps at a specific position,
    /// set the label’s width using [method`Gtk.Widget.set_size_request`].
    @inlinable func set(wrap: Bool) {
        gtk_label_set_wrap(label_ptr, gboolean((wrap) ? 1 : 0))
    
    }

    /// Controls how line wrapping is done.
    /// 
    /// This only affects the label if line wrapping is on. (See
    /// [method`Gtk.Label.set_wrap`]) The default is `PANGO_WRAP_WORD`
    /// which means wrap on word boundaries.
    @inlinable func set(wrapMode: PangoWrapMode) {
        gtk_label_set_wrap_mode(label_ptr, wrapMode)
    
    }

    /// Sets the `xalign` of the label.
    /// 
    /// See the [property`Gtk.Label:xalign`] property.
    @inlinable func set(xalign: CFloat) {
        gtk_label_set_xalign(label_ptr, xalign)
    
    }

    /// Sets the `yalign` of the label.
    /// 
    /// See the [property`Gtk.Label:yalign`] property.
    @inlinable func set(yalign: CFloat) {
        gtk_label_set_yalign(label_ptr, yalign)
    
    }
    /// A list of style attributes to apply to the text of the label.
    @inlinable var attributes: Pango.AttrListRef! {
        /// Gets the labels attribute list.
        /// 
        /// This is the [struct`Pango.AttrList`] that was set on the label using
        /// [method`Gtk.Label.set_attributes`], if any. This function does not
        /// reflect attributes that come from the labels markup (see
        /// [method`Gtk.Label.set_markup`]). If you want to get the effective
        /// attributes for the label, use
        /// `pango_layout_get_attribute (gtk_label_get_layout (self))`.
        get {
            let rv = Pango.AttrListRef(gtk_label_get_attributes(label_ptr))
            return rv
        }
        /// Apply attributes to the label text.
        /// 
        /// The attributes set with this function will be applied and merged with
        /// any other attributes previously effected by way of the
        /// [property`Gtk.Label:use-underline`] or [property`Gtk.Label:use-markup`]
        /// properties. While it is not recommended to mix markup strings with
        /// manually set attributes, if you must; know that the attributes will
        /// be applied to the label after the markup string is parsed.
        nonmutating set {
            gtk_label_set_attributes(label_ptr, UnsafeMutablePointer<PangoAttrList>(newValue?.attr_list_ptr))
        }
    }

    /// Returns the URI for the currently active link in the label.
    /// 
    /// The active link is the one under the mouse pointer or, in a
    /// selectable label, the link in which the text cursor is currently
    /// positioned.
    /// 
    /// This function is intended for use in a [signal`Gtk.Label::activate-link`]
    /// handler or for use in a [signal`Gtk.Widget::query-tooltip`] handler.
    @inlinable var currentUri: String! {
        /// Returns the URI for the currently active link in the label.
        /// 
        /// The active link is the one under the mouse pointer or, in a
        /// selectable label, the link in which the text cursor is currently
        /// positioned.
        /// 
        /// This function is intended for use in a [signal`Gtk.Label::activate-link`]
        /// handler or for use in a [signal`Gtk.Widget::query-tooltip`] handler.
        get {
            let rv = gtk_label_get_current_uri(label_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// The preferred place to ellipsize the string, if the label does
    /// not have enough room to display the entire string.
    /// 
    /// Note that setting this property to a value other than
    /// `PANGO_ELLIPSIZE_NONE` has the side-effect that the label requests
    /// only enough space to display the ellipsis "...". In particular, this
    /// means that ellipsizing labels do not work well in notebook tabs, unless
    /// the [property`Gtk.NotebookPage:tab-expand`] child property is set to `true`.
    /// Other ways to set a label's width are [method`Gtk.Widget.set_size_request`]
    /// and [method`Gtk.Label.set_width_chars`].
    @inlinable var ellipsize: PangoEllipsizeMode {
        /// Returns the ellipsizing position of the label.
        /// 
        /// See [method`Gtk.Label.set_ellipsize`].
        get {
            let rv = gtk_label_get_ellipsize(label_ptr)
            return rv
        }
        /// Sets the mode used to ellipsizei the text.
        /// 
        /// The text will be ellipsized if there is not enough space
        /// to render the entire string.
        nonmutating set {
            gtk_label_set_ellipsize(label_ptr, newValue)
        }
    }

    /// Gets the extra menu model of `label`.
    /// 
    /// See [method`Gtk.Label.set_extra_menu`].
    @inlinable var extraMenu: GIO.MenuModelRef! {
        /// Gets the extra menu model of `label`.
        /// 
        /// See [method`Gtk.Label.set_extra_menu`].
        get {
            let rv = GIO.MenuModelRef(gtk_label_get_extra_menu(label_ptr))
            return rv
        }
        /// Sets a menu model to add when constructing
        /// the context menu for `label`.
        nonmutating set {
            gtk_label_set_extra_menu(label_ptr, UnsafeMutablePointer<GMenuModel>(newValue?.menu_model_ptr))
        }
    }

    /// The alignment of the lines in the text of the label, relative to each other.
    /// 
    /// This does *not* affect the alignment of the label within its allocation.
    /// See [property`Gtk.Label:xalign`] for that.
    @inlinable var justify: GtkJustification {
        /// Returns the justification of the label.
        /// 
        /// See [method`Gtk.Label.set_justify`].
        get {
            let rv = gtk_label_get_justify(label_ptr)
            return rv
        }
        /// Sets the alignment of the lines in the text of the label relative to
        /// each other.
        /// 
        /// `GTK_JUSTIFY_LEFT` is the default value when the widget is first created
        /// with [ctor`Gtk.Label.new`]. If you instead want to set the alignment of
        /// the label as a whole, use [method`Gtk.Widget.set_halign`] instead.
        /// [method`Gtk.Label.set_justify`] has no effect on labels containing
        /// only a single line.
        nonmutating set {
            gtk_label_set_justify(label_ptr, newValue)
        }
    }

    /// The contents of the label.
    /// 
    /// If the string contains Pango markup (see [func`Pango.parse_markup`]),
    /// you will have to set the [property`Gtk.Label:use-markup`] property to
    /// `true` in order for the label to display the markup attributes. See also
    /// [method`Gtk.Label.set_markup`] for a convenience function that sets both
    /// this property and the [property`Gtk.Label:use-markup`] property at the
    /// same time.
    /// 
    /// If the string contains underlines acting as mnemonics, you will have to
    /// set the [property`Gtk.Label:use-underline`] property to `true` in order
    /// for the label to display them.
    @inlinable var label: String! {
        /// Fetches the text from a label.
        /// 
        /// The returned text includes any embedded underlines indicating
        /// mnemonics and Pango markup. (See [method`Gtk.Label.get_text`]).
        get {
            let rv = gtk_label_get_label(label_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the text of the label.
        /// 
        /// The label is interpreted as including embedded underlines and/or Pango
        /// markup depending on the values of the [property`Gtk.Label:use-underline`]
        /// and [property`Gtk.Label:use-markup`] properties.
        nonmutating set {
            gtk_label_set_label(label_ptr, newValue)
        }
    }

    /// Gets the `PangoLayout` used to display the label.
    /// 
    /// The layout is useful to e.g. convert text positions to pixel
    /// positions, in combination with [method`Gtk.Label.get_layout_offsets`].
    /// The returned layout is owned by the `label` so need not be
    /// freed by the caller. The `label` is free to recreate its layout
    /// at any time, so it should be considered read-only.
    @inlinable var layout: Pango.LayoutRef! {
        /// Gets the `PangoLayout` used to display the label.
        /// 
        /// The layout is useful to e.g. convert text positions to pixel
        /// positions, in combination with [method`Gtk.Label.get_layout_offsets`].
        /// The returned layout is owned by the `label` so need not be
        /// freed by the caller. The `label` is free to recreate its layout
        /// at any time, so it should be considered read-only.
        get {
            let rv = Pango.LayoutRef(gtk_label_get_layout(label_ptr))
            return rv
        }
    }

    /// The number of lines to which an ellipsized, wrapping label
    /// should be limited.
    /// 
    /// This property has no effect if the label is not wrapping or ellipsized.
    /// Set this property to -1 if you don't want to limit the number of lines.
    @inlinable var lines: Int {
        /// Gets the number of lines to which an ellipsized, wrapping
        /// label should be limited.
        /// 
        /// See [method`Gtk.Label.set_lines`].
        get {
            let rv = Int(gtk_label_get_lines(label_ptr))
            return rv
        }
        /// Sets the number of lines to which an ellipsized, wrapping label
        /// should be limited.
        /// 
        /// This has no effect if the label is not wrapping or ellipsized.
        /// Set this to -1 if you don’t want to limit the number of lines.
        nonmutating set {
            gtk_label_set_lines(label_ptr, gint(newValue))
        }
    }

    /// Retrieves the desired maximum width of `label`, in characters.
    /// 
    /// See [method`Gtk.Label.set_width_chars`].
    @inlinable var maxWidthChars: Int {
        /// Retrieves the desired maximum width of `label`, in characters.
        /// 
        /// See [method`Gtk.Label.set_width_chars`].
        get {
            let rv = Int(gtk_label_get_max_width_chars(label_ptr))
            return rv
        }
        /// Sets the desired maximum width in characters of `label` to `n_chars`.
        nonmutating set {
            gtk_label_set_max_width_chars(label_ptr, gint(newValue))
        }
    }

    /// Return the mnemonic accelerator.
    /// 
    /// If the label has been set so that it has a mnemonic key this function
    /// returns the keyval used for the mnemonic accelerator. If there is no
    /// mnemonic set up it returns `GDK_KEY_VoidSymbol`.
    @inlinable var mnemonicKeyval: Int {
        /// Return the mnemonic accelerator.
        /// 
        /// If the label has been set so that it has a mnemonic key this function
        /// returns the keyval used for the mnemonic accelerator. If there is no
        /// mnemonic set up it returns `GDK_KEY_VoidSymbol`.
        get {
            let rv = Int(gtk_label_get_mnemonic_keyval(label_ptr))
            return rv
        }
    }

    /// Retrieves the target of the mnemonic (keyboard shortcut) of this
    /// label.
    /// 
    /// See [method`Gtk.Label.set_mnemonic_widget`].
    @inlinable var mnemonicWidget: WidgetRef! {
        /// Retrieves the target of the mnemonic (keyboard shortcut) of this
        /// label.
        /// 
        /// See [method`Gtk.Label.set_mnemonic_widget`].
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_label_get_mnemonic_widget(label_ptr))) else { return nil }
            return rv
        }
        /// Associate the label with its mnemonic target.
        /// 
        /// If the label has been set so that it has a mnemonic key (using
        /// i.e. [method`Gtk.Label.set_markup_with_mnemonic`],
        /// [method`Gtk.Label.set_text_with_mnemonic`],
        /// [ctor`Gtk.Label.new_with_mnemonic`]
        /// or the [property`Gtk.Label:use_underline`] property) the label can be
        /// associated with a widget that is the target of the mnemonic. When the
        /// label is inside a widget (like a [class`Gtk.Button`] or a
        /// [class`Gtk.Notebook`] tab) it is automatically associated with the correct
        /// widget, but sometimes (i.e. when the target is a [class`Gtk.Entry`] next to
        /// the label) you need to set it explicitly using this function.
        /// 
        /// The target widget will be accelerated by emitting the
        /// [signal`GtkWidget::mnemonic-activate`] signal on it. The default handler for
        /// this signal will activate the widget if there are no mnemonic collisions
        /// and toggle focus between the colliding widgets otherwise.
        nonmutating set {
            gtk_label_set_mnemonic_widget(label_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }

    /// Whether the label text can be selected with the mouse.
    @inlinable var selectable: Bool {
        /// Returns whether the label is selectable.
        get {
            let rv = ((gtk_label_get_selectable(label_ptr)) != 0)
            return rv
        }
        /// Makes text in the label selectable.
        /// 
        /// Selectable labels allow the user to select text from the label,
        /// for copy-and-paste.
        nonmutating set {
            gtk_label_set_selectable(label_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns whether the label is in single line mode.
    @inlinable var singleLineMode: Bool {
        /// Returns whether the label is in single line mode.
        get {
            let rv = ((gtk_label_get_single_line_mode(label_ptr)) != 0)
            return rv
        }
        /// Sets whether the label is in single line mode.
        nonmutating set {
            gtk_label_set_single_line_mode(label_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Fetches the text from a label.
    /// 
    /// The returned text is as it appears on screen. This does not include
    /// any embedded underlines indicating mnemonics or Pango markup. (See
    /// [method`Gtk.Label.get_label`])
    @inlinable var text: String! {
        /// Fetches the text from a label.
        /// 
        /// The returned text is as it appears on screen. This does not include
        /// any embedded underlines indicating mnemonics or Pango markup. (See
        /// [method`Gtk.Label.get_label`])
        get {
            let rv = gtk_label_get_text(label_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the text within the `GtkLabel` widget.
        /// 
        /// It overwrites any text that was there before.
        /// 
        /// This function will clear any previously set mnemonic accelerators,
        /// and set the [property`Gtk.Label:use-underline` property] to `false` as
        /// a side effect.
        /// 
        /// This function will set the [property`Gtk.Label:use-markup`] property
        /// to `false` as a side effect.
        /// 
        /// See also: [method`Gtk.Label.set_markup`]
        nonmutating set {
            gtk_label_set_text(label_ptr, newValue)
        }
    }

    /// Returns whether the label’s text is interpreted as Pango markup.
    /// 
    /// See [method`Gtk.Label.set_use_markup`].
    @inlinable var useMarkup: Bool {
        /// Returns whether the label’s text is interpreted as Pango markup.
        /// 
        /// See [method`Gtk.Label.set_use_markup`].
        get {
            let rv = ((gtk_label_get_use_markup(label_ptr)) != 0)
            return rv
        }
        /// Sets whether the text of the label contains markup.
        /// 
        /// See [method`Gtk.Label.set_markup`].
        nonmutating set {
            gtk_label_set_use_markup(label_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns whether an embedded underlines in the label indicate mnemonics.
    /// 
    /// See [method`Gtk.Label.set_use_underline`].
    @inlinable var useUnderline: Bool {
        /// Returns whether an embedded underlines in the label indicate mnemonics.
        /// 
        /// See [method`Gtk.Label.set_use_underline`].
        get {
            let rv = ((gtk_label_get_use_underline(label_ptr)) != 0)
            return rv
        }
        /// Sets whether underlines in the text indicate mnemonics.
        nonmutating set {
            gtk_label_set_use_underline(label_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Retrieves the desired width of `label`, in characters.
    /// 
    /// See [method`Gtk.Label.set_width_chars`].
    @inlinable var widthChars: Int {
        /// Retrieves the desired width of `label`, in characters.
        /// 
        /// See [method`Gtk.Label.set_width_chars`].
        get {
            let rv = Int(gtk_label_get_width_chars(label_ptr))
            return rv
        }
        /// Sets the desired width in characters of `label` to `n_chars`.
        nonmutating set {
            gtk_label_set_width_chars(label_ptr, gint(newValue))
        }
    }

    /// `true` if the label text will wrap if it gets too wide.
    @inlinable var wrap: Bool {
        /// Returns whether lines in the label are automatically wrapped.
        /// 
        /// See [method`Gtk.Label.set_wrap`].
        get {
            let rv = ((gtk_label_get_wrap(label_ptr)) != 0)
            return rv
        }
        /// Toggles line wrapping within the `GtkLabel` widget.
        /// 
        /// `true` makes it break lines if text exceeds the widget’s size.
        /// `false` lets the text get cut off by the edge of the widget if
        /// it exceeds the widget size.
        /// 
        /// Note that setting line wrapping to `true` does not make the label
        /// wrap at its parent container’s width, because GTK widgets
        /// conceptually can’t make their requisition depend on the parent
        /// container’s size. For a label that wraps at a specific position,
        /// set the label’s width using [method`Gtk.Widget.set_size_request`].
        nonmutating set {
            gtk_label_set_wrap(label_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns line wrap mode used by the label.
    /// 
    /// See [method`Gtk.Label.set_wrap_mode`].
    @inlinable var wrapMode: PangoWrapMode {
        /// Returns line wrap mode used by the label.
        /// 
        /// See [method`Gtk.Label.set_wrap_mode`].
        get {
            let rv = gtk_label_get_wrap_mode(label_ptr)
            return rv
        }
        /// Controls how line wrapping is done.
        /// 
        /// This only affects the label if line wrapping is on. (See
        /// [method`Gtk.Label.set_wrap`]) The default is `PANGO_WRAP_WORD`
        /// which means wrap on word boundaries.
        nonmutating set {
            gtk_label_set_wrap_mode(label_ptr, newValue)
        }
    }

    /// The horizontal alignment of the label text inside its size allocation.
    /// 
    /// Compare this to [property`Gtk.Widget:halign`], which determines how the
    /// labels size allocation is positioned in the space available for the label.
    @inlinable var xalign: CFloat {
        /// Gets the `xalign` of the label.
        /// 
        /// See the [property`Gtk.Label:xalign`] property.
        get {
            let rv = gtk_label_get_xalign(label_ptr)
            return rv
        }
        /// Sets the `xalign` of the label.
        /// 
        /// See the [property`Gtk.Label:xalign`] property.
        nonmutating set {
            gtk_label_set_xalign(label_ptr, newValue)
        }
    }

    /// The vertical alignment of the label text inside its size allocation.
    /// 
    /// Compare this to [property`Gtk.Widget:valign`], which determines how the
    /// labels size allocation is positioned in the space available for the label.
    @inlinable var yalign: CFloat {
        /// Gets the `yalign` of the label.
        /// 
        /// See the [property`Gtk.Label:yalign`] property.
        get {
            let rv = gtk_label_get_yalign(label_ptr)
            return rv
        }
        /// Sets the `yalign` of the label.
        /// 
        /// See the [property`Gtk.Label:yalign`] property.
        nonmutating set {
            gtk_label_set_yalign(label_ptr, newValue)
        }
    }


}



// MARK: - LayoutChild Class

/// The `LayoutChildProtocol` protocol exposes the methods and properties of an underlying `GtkLayoutChild` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LayoutChild`.
/// Alternatively, use `LayoutChildRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkLayoutChild` is the base class for objects that are meant to hold
/// layout properties.
/// 
/// If a `GtkLayoutManager` has per-child properties, like their packing type,
/// or the horizontal and vertical span, or the icon name, then the layout
/// manager should use a `GtkLayoutChild` implementation to store those properties.
/// 
/// A `GtkLayoutChild` instance is only ever valid while a widget is part
/// of a layout.
public protocol LayoutChildProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GtkLayoutChild` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkLayoutChild` instance.
    var layout_child_ptr: UnsafeMutablePointer<GtkLayoutChild>! { get }

    /// Required Initialiser for types conforming to `LayoutChildProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `LayoutChildRef` type acts as a lightweight Swift reference to an underlying `GtkLayoutChild` instance.
/// It exposes methods that can operate on this data type through `LayoutChildProtocol` conformance.
/// Use `LayoutChildRef` only as an `unowned` reference to an existing `GtkLayoutChild` instance.
///
/// `GtkLayoutChild` is the base class for objects that are meant to hold
/// layout properties.
/// 
/// If a `GtkLayoutManager` has per-child properties, like their packing type,
/// or the horizontal and vertical span, or the icon name, then the layout
/// manager should use a `GtkLayoutChild` implementation to store those properties.
/// 
/// A `GtkLayoutChild` instance is only ever valid while a widget is part
/// of a layout.
public struct LayoutChildRef: LayoutChildProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkLayoutChild` instance.
    /// For type-safe access, use the generated, typed pointer `layout_child_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LayoutChildRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkLayoutChild>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkLayoutChild>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkLayoutChild>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkLayoutChild>?) {
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

    /// Reference intialiser for a related type that implements `LayoutChildProtocol`
    @inlinable init<T: LayoutChildProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: LayoutChildProtocol>(_ other: T) -> LayoutChildRef { LayoutChildRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutChildProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutChildProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutChildProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutChildProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutChildProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `LayoutChild` type acts as a reference-counted owner of an underlying `GtkLayoutChild` instance.
/// It provides the methods that can operate on this data type through `LayoutChildProtocol` conformance.
/// Use `LayoutChild` as a strong reference or owner of a `GtkLayoutChild` instance.
///
/// `GtkLayoutChild` is the base class for objects that are meant to hold
/// layout properties.
/// 
/// If a `GtkLayoutManager` has per-child properties, like their packing type,
/// or the horizontal and vertical span, or the icon name, then the layout
/// manager should use a `GtkLayoutChild` implementation to store those properties.
/// 
/// A `GtkLayoutChild` instance is only ever valid while a widget is part
/// of a layout.
open class LayoutChild: GLibObject.Object, LayoutChildProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LayoutChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkLayoutChild>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LayoutChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkLayoutChild>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LayoutChild` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LayoutChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LayoutChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkLayoutChild>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LayoutChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkLayoutChild>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkLayoutChild`.
    /// i.e., ownership is transferred to the `LayoutChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkLayoutChild>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `LayoutChildProtocol`
    /// Will retain `GtkLayoutChild`.
    /// - Parameter other: an instance of a related type that implements `LayoutChildProtocol`
    @inlinable public init<T: LayoutChildProtocol>(layoutChild other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutChildProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutChildProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutChildProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutChildProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutChildProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutChildProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutChildProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutChildProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum LayoutChildPropertyName: String, PropertyNameProtocol {
    /// The widget that is associated to the `GtkLayoutChild` instance.
    case childWidget = "child-widget"
    /// The layout manager that created the `GtkLayoutChild` instance.
    case layoutManager = "layout-manager"
}

public extension LayoutChildProtocol {
    /// Bind a `LayoutChildPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: LayoutChildPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a LayoutChild property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: LayoutChildPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a LayoutChild property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: LayoutChildPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum LayoutChildSignalName: String, SignalNameProtocol {
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
    /// The widget that is associated to the `GtkLayoutChild` instance.
    case notifyChildWidget = "notify::child-widget"
    /// The layout manager that created the `GtkLayoutChild` instance.
    case notifyLayoutManager = "notify::layout-manager"
}

// MARK: LayoutChild has no signals
// MARK: LayoutChild Class: LayoutChildProtocol extension (methods and fields)
public extension LayoutChildProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLayoutChild` instance.
    @inlinable var layout_child_ptr: UnsafeMutablePointer<GtkLayoutChild>! { return ptr?.assumingMemoryBound(to: GtkLayoutChild.self) }

    /// Retrieves the `GtkWidget` associated to the given `layout_child`.
    @inlinable func getChildWidget() -> WidgetRef! {
        let rv = WidgetRef(gconstpointer: gconstpointer(gtk_layout_child_get_child_widget(layout_child_ptr)))
        return rv
    }

    /// Retrieves the `GtkLayoutManager` instance that created the
    /// given `layout_child`.
    @inlinable func getLayoutManager() -> LayoutManagerRef! {
        let rv = LayoutManagerRef(gconstpointer: gconstpointer(gtk_layout_child_get_layout_manager(layout_child_ptr)))
        return rv
    }
    /// Retrieves the `GtkWidget` associated to the given `layout_child`.
    @inlinable var childWidget: WidgetRef! {
        /// Retrieves the `GtkWidget` associated to the given `layout_child`.
        get {
            let rv = WidgetRef(gconstpointer: gconstpointer(gtk_layout_child_get_child_widget(layout_child_ptr)))
            return rv
        }
    }

    /// Retrieves the `GtkLayoutManager` instance that created the
    /// given `layout_child`.
    @inlinable var layoutManager: LayoutManagerRef! {
        /// Retrieves the `GtkLayoutManager` instance that created the
        /// given `layout_child`.
        get {
            let rv = LayoutManagerRef(gconstpointer: gconstpointer(gtk_layout_child_get_layout_manager(layout_child_ptr)))
            return rv
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = layout_child_ptr.pointee.parent_instance
            return rv
        }
    }

}



// MARK: - LayoutManager Class

/// The `LayoutManagerProtocol` protocol exposes the methods and properties of an underlying `GtkLayoutManager` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LayoutManager`.
/// Alternatively, use `LayoutManagerRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Layout managers are delegate classes that handle the preferred size
/// and the allocation of a widget.
/// 
/// You typically subclass `GtkLayoutManager` if you want to implement a
/// layout policy for the children of a widget, or if you want to determine
/// the size of a widget depending on its contents.
/// 
/// Each `GtkWidget` can only have a `GtkLayoutManager` instance associated
/// to it at any given time; it is possible, though, to replace the layout
/// manager instance using [method`Gtk.Widget.set_layout_manager`].
/// 
/// ## Layout properties
/// 
/// A layout manager can expose properties for controlling the layout of
/// each child, by creating an object type derived from [class`Gtk.LayoutChild`]
/// and installing the properties on it as normal `GObject` properties.
/// 
/// Each `GtkLayoutChild` instance storing the layout properties for a
/// specific child is created through the [method`Gtk.LayoutManager.get_layout_child`]
/// method; a `GtkLayoutManager` controls the creation of its `GtkLayoutChild`
/// instances by overriding the `GtkLayoutManagerClass.create_layout_child()`
/// virtual function. The typical implementation should look like:
/// 
/// ```c
/// static GtkLayoutChild *
/// create_layout_child (GtkLayoutManager *manager,
///                      GtkWidget        *container,
///                      GtkWidget        *child)
/// {
///   return g_object_new (your_layout_child_get_type (),
///                        "layout-manager", manager,
///                        "child-widget", child,
///                        NULL);
/// }
/// ```
/// 
/// The [property`Gtk.LayoutChild:layout-manager`] and
/// [property`Gtk.LayoutChild:child-widget`] properties
/// on the newly created `GtkLayoutChild` instance are mandatory. The
/// `GtkLayoutManager` will cache the newly created `GtkLayoutChild` instance
/// until the widget is removed from its parent, or the parent removes the
/// layout manager.
/// 
/// Each `GtkLayoutManager` instance creating a `GtkLayoutChild` should use
/// [method`Gtk.LayoutManager.get_layout_child`] every time it needs to query
/// the layout properties; each `GtkLayoutChild` instance should call
/// [method`Gtk.LayoutManager.layout_changed`] every time a property is
/// updated, in order to queue a new size measuring and allocation.
public protocol LayoutManagerProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GtkLayoutManager` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkLayoutManager` instance.
    var layout_manager_ptr: UnsafeMutablePointer<GtkLayoutManager>! { get }

    /// Required Initialiser for types conforming to `LayoutManagerProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `LayoutManagerRef` type acts as a lightweight Swift reference to an underlying `GtkLayoutManager` instance.
/// It exposes methods that can operate on this data type through `LayoutManagerProtocol` conformance.
/// Use `LayoutManagerRef` only as an `unowned` reference to an existing `GtkLayoutManager` instance.
///
/// Layout managers are delegate classes that handle the preferred size
/// and the allocation of a widget.
/// 
/// You typically subclass `GtkLayoutManager` if you want to implement a
/// layout policy for the children of a widget, or if you want to determine
/// the size of a widget depending on its contents.
/// 
/// Each `GtkWidget` can only have a `GtkLayoutManager` instance associated
/// to it at any given time; it is possible, though, to replace the layout
/// manager instance using [method`Gtk.Widget.set_layout_manager`].
/// 
/// ## Layout properties
/// 
/// A layout manager can expose properties for controlling the layout of
/// each child, by creating an object type derived from [class`Gtk.LayoutChild`]
/// and installing the properties on it as normal `GObject` properties.
/// 
/// Each `GtkLayoutChild` instance storing the layout properties for a
/// specific child is created through the [method`Gtk.LayoutManager.get_layout_child`]
/// method; a `GtkLayoutManager` controls the creation of its `GtkLayoutChild`
/// instances by overriding the `GtkLayoutManagerClass.create_layout_child()`
/// virtual function. The typical implementation should look like:
/// 
/// ```c
/// static GtkLayoutChild *
/// create_layout_child (GtkLayoutManager *manager,
///                      GtkWidget        *container,
///                      GtkWidget        *child)
/// {
///   return g_object_new (your_layout_child_get_type (),
///                        "layout-manager", manager,
///                        "child-widget", child,
///                        NULL);
/// }
/// ```
/// 
/// The [property`Gtk.LayoutChild:layout-manager`] and
/// [property`Gtk.LayoutChild:child-widget`] properties
/// on the newly created `GtkLayoutChild` instance are mandatory. The
/// `GtkLayoutManager` will cache the newly created `GtkLayoutChild` instance
/// until the widget is removed from its parent, or the parent removes the
/// layout manager.
/// 
/// Each `GtkLayoutManager` instance creating a `GtkLayoutChild` should use
/// [method`Gtk.LayoutManager.get_layout_child`] every time it needs to query
/// the layout properties; each `GtkLayoutChild` instance should call
/// [method`Gtk.LayoutManager.layout_changed`] every time a property is
/// updated, in order to queue a new size measuring and allocation.
public struct LayoutManagerRef: LayoutManagerProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkLayoutManager` instance.
    /// For type-safe access, use the generated, typed pointer `layout_manager_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LayoutManagerRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkLayoutManager>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkLayoutManager>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkLayoutManager>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkLayoutManager>?) {
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

    /// Reference intialiser for a related type that implements `LayoutManagerProtocol`
    @inlinable init<T: LayoutManagerProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: LayoutManagerProtocol>(_ other: T) -> LayoutManagerRef { LayoutManagerRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutManagerProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutManagerProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutManagerProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutManagerProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutManagerProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `LayoutManager` type acts as a reference-counted owner of an underlying `GtkLayoutManager` instance.
/// It provides the methods that can operate on this data type through `LayoutManagerProtocol` conformance.
/// Use `LayoutManager` as a strong reference or owner of a `GtkLayoutManager` instance.
///
/// Layout managers are delegate classes that handle the preferred size
/// and the allocation of a widget.
/// 
/// You typically subclass `GtkLayoutManager` if you want to implement a
/// layout policy for the children of a widget, or if you want to determine
/// the size of a widget depending on its contents.
/// 
/// Each `GtkWidget` can only have a `GtkLayoutManager` instance associated
/// to it at any given time; it is possible, though, to replace the layout
/// manager instance using [method`Gtk.Widget.set_layout_manager`].
/// 
/// ## Layout properties
/// 
/// A layout manager can expose properties for controlling the layout of
/// each child, by creating an object type derived from [class`Gtk.LayoutChild`]
/// and installing the properties on it as normal `GObject` properties.
/// 
/// Each `GtkLayoutChild` instance storing the layout properties for a
/// specific child is created through the [method`Gtk.LayoutManager.get_layout_child`]
/// method; a `GtkLayoutManager` controls the creation of its `GtkLayoutChild`
/// instances by overriding the `GtkLayoutManagerClass.create_layout_child()`
/// virtual function. The typical implementation should look like:
/// 
/// ```c
/// static GtkLayoutChild *
/// create_layout_child (GtkLayoutManager *manager,
///                      GtkWidget        *container,
///                      GtkWidget        *child)
/// {
///   return g_object_new (your_layout_child_get_type (),
///                        "layout-manager", manager,
///                        "child-widget", child,
///                        NULL);
/// }
/// ```
/// 
/// The [property`Gtk.LayoutChild:layout-manager`] and
/// [property`Gtk.LayoutChild:child-widget`] properties
/// on the newly created `GtkLayoutChild` instance are mandatory. The
/// `GtkLayoutManager` will cache the newly created `GtkLayoutChild` instance
/// until the widget is removed from its parent, or the parent removes the
/// layout manager.
/// 
/// Each `GtkLayoutManager` instance creating a `GtkLayoutChild` should use
/// [method`Gtk.LayoutManager.get_layout_child`] every time it needs to query
/// the layout properties; each `GtkLayoutChild` instance should call
/// [method`Gtk.LayoutManager.layout_changed`] every time a property is
/// updated, in order to queue a new size measuring and allocation.
open class LayoutManager: GLibObject.Object, LayoutManagerProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LayoutManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkLayoutManager>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LayoutManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkLayoutManager>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LayoutManager` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LayoutManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LayoutManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkLayoutManager>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LayoutManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkLayoutManager>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkLayoutManager`.
    /// i.e., ownership is transferred to the `LayoutManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkLayoutManager>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `LayoutManagerProtocol`
    /// Will retain `GtkLayoutManager`.
    /// - Parameter other: an instance of a related type that implements `LayoutManagerProtocol`
    @inlinable public init<T: LayoutManagerProtocol>(layoutManager other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutManagerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutManagerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutManagerProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutManagerProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutManagerProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutManagerProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutManagerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutManagerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no LayoutManager properties

public enum LayoutManagerSignalName: String, SignalNameProtocol {
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

// MARK: LayoutManager has no signals
// MARK: LayoutManager Class: LayoutManagerProtocol extension (methods and fields)
public extension LayoutManagerProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLayoutManager` instance.
    @inlinable var layout_manager_ptr: UnsafeMutablePointer<GtkLayoutManager>! { return ptr?.assumingMemoryBound(to: GtkLayoutManager.self) }

    /// Assigns the given `width`, `height`, and `baseline` to
    /// a `widget`, and computes the position and sizes of the children of
    /// the `widget` using the layout management policy of `manager`.
    @inlinable func allocate<WidgetT: WidgetProtocol>(widget: WidgetT, width: Int, height: Int, baseline: Int) {
        gtk_layout_manager_allocate(layout_manager_ptr, widget.widget_ptr, gint(width), gint(height), gint(baseline))
    
    }

    /// Retrieves a `GtkLayoutChild` instance for the `GtkLayoutManager`,
    /// creating one if necessary.
    /// 
    /// The `child` widget must be a child of the widget using `manager`.
    /// 
    /// The `GtkLayoutChild` instance is owned by the `GtkLayoutManager`,
    /// and is guaranteed to exist as long as `child` is a child of the
    /// `GtkWidget` using the given `GtkLayoutManager`.
    @inlinable func getLayout<WidgetT: WidgetProtocol>(child: WidgetT) -> LayoutChildRef! {
        let rv = LayoutChildRef(gconstpointer: gconstpointer(gtk_layout_manager_get_layout_child(layout_manager_ptr, child.widget_ptr)))
        return rv
    }

    /// Retrieves the request mode of `manager`.
    @inlinable func getRequestMode() -> GtkSizeRequestMode {
        let rv = gtk_layout_manager_get_request_mode(layout_manager_ptr)
        return rv
    }

    /// Retrieves the `GtkWidget` using the given `GtkLayoutManager`.
    @inlinable func getWidget() -> WidgetRef! {
        let rv = WidgetRef(gconstpointer: gconstpointer(gtk_layout_manager_get_widget(layout_manager_ptr)))
        return rv
    }

    /// Queues a resize on the `GtkWidget` using `manager`, if any.
    /// 
    /// This function should be called by subclasses of `GtkLayoutManager`
    /// in response to changes to their layout management policies.
    @inlinable func layoutChanged() {
        gtk_layout_manager_layout_changed(layout_manager_ptr)
    
    }

    /// Measures the size of the `widget` using `manager`, for the
    /// given `orientation` and size.
    /// 
    /// See the [class`Gtk.Widget`] documentation on layout management for
    /// more details.
    @inlinable func measure<WidgetT: WidgetProtocol>(widget: WidgetT, orientation: GtkOrientation, `for` size: Int, minimum: UnsafeMutablePointer<gint>! = nil, natural: UnsafeMutablePointer<gint>! = nil, minimumBaseline: UnsafeMutablePointer<gint>! = nil, naturalBaseline: UnsafeMutablePointer<gint>! = nil) {
        gtk_layout_manager_measure(layout_manager_ptr, widget.widget_ptr, orientation, gint(size), minimum, natural, minimumBaseline, naturalBaseline)
    
    }
    /// Retrieves the request mode of `manager`.
    @inlinable var requestMode: GtkSizeRequestMode {
        /// Retrieves the request mode of `manager`.
        get {
            let rv = gtk_layout_manager_get_request_mode(layout_manager_ptr)
            return rv
        }
    }

    /// Retrieves the `GtkWidget` using the given `GtkLayoutManager`.
    @inlinable var widget: WidgetRef! {
        /// Retrieves the `GtkWidget` using the given `GtkLayoutManager`.
        get {
            let rv = WidgetRef(gconstpointer: gconstpointer(gtk_layout_manager_get_widget(layout_manager_ptr)))
            return rv
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = layout_manager_ptr.pointee.parent_instance
            return rv
        }
    }

}



// MARK: - LevelBar Class

/// The `LevelBarProtocol` protocol exposes the methods and properties of an underlying `GtkLevelBar` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LevelBar`.
/// Alternatively, use `LevelBarRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkLevelBar` is a widget that can be used as a level indicator.
/// 
/// Typical use cases are displaying the strength of a password, or
/// showing the charge level of a battery.
/// 
/// ![An example GtkLevelBar](levelbar.png)
/// 
/// Use [method`Gtk.LevelBar.set_value`] to set the current value, and
/// [method`Gtk.LevelBar.add_offset_value`] to set the value offsets at which
/// the bar will be considered in a different state. GTK will add a few
/// offsets by default on the level bar: `GTK_LEVEL_BAR_OFFSET_LOW`,
/// `GTK_LEVEL_BAR_OFFSET_HIGH` and `GTK_LEVEL_BAR_OFFSET_FULL`, with
/// values 0.25, 0.75 and 1.0 respectively.
/// 
/// Note that it is your responsibility to update preexisting offsets
/// when changing the minimum or maximum value. GTK will simply clamp
/// them to the new range.
/// 
/// ## Adding a custom offset on the bar
/// 
/// ```c
/// static GtkWidget *
/// create_level_bar (void)
/// {
///   GtkWidget *widget;
///   GtkLevelBar *bar;
/// 
///   widget = gtk_level_bar_new ();
///   bar = GTK_LEVEL_BAR (widget);
/// 
///   // This changes the value of the default low offset
/// 
///   gtk_level_bar_add_offset_value (bar,
///                                   GTK_LEVEL_BAR_OFFSET_LOW,
///                                   0.10);
/// 
///   // This adds a new offset to the bar; the application will
///   // be able to change its color CSS like this:
///   //
///   // levelbar block.my-offset {
///   //   background-color: magenta;
///   //   border-style: solid;
///   //   border-color: black;
///   //   border-style: 1px;
///   // }
/// 
///   gtk_level_bar_add_offset_value (bar, "my-offset", 0.60);
/// 
///   return widget;
/// }
/// ```
/// 
/// The default interval of values is between zero and one, but it’s possible
/// to modify the interval using [method`Gtk.LevelBar.set_min_value`] and
/// [method`Gtk.LevelBar.set_max_value`]. The value will be always drawn in
/// proportion to the admissible interval, i.e. a value of 15 with a specified
/// interval between 10 and 20 is equivalent to a value of 0.5 with an interval
/// between 0 and 1. When `GTK_LEVEL_BAR_MODE_DISCRETE` is used, the bar level
/// is rendered as a finite number of separated blocks instead of a single one.
/// The number of blocks that will be rendered is equal to the number of units
/// specified by the admissible interval.
/// 
/// For instance, to build a bar rendered with five blocks, it’s sufficient to
/// set the minimum value to 0 and the maximum value to 5 after changing the
/// indicator mode to discrete.
/// 
/// # GtkLevelBar as GtkBuildable
/// 
/// The `GtkLevelBar` implementation of the `GtkBuildable` interface supports a
/// custom &lt;offsets&gt; element, which can contain any number of &lt;offset&gt; elements,
/// each of which must have name and value attributes.
/// 
/// # CSS nodes
/// 
/// ```
/// levelbar[.discrete]
/// ╰── trough
///     ├── block.filled.level-name
///     ┊
///     ├── block.empty
///     ┊
/// ```
/// 
/// `GtkLevelBar` has a main CSS node with name levelbar and one of the style
/// classes .discrete or .continuous and a subnode with name trough. Below the
/// trough node are a number of nodes with name block and style class .filled
/// or .empty. In continuous mode, there is exactly one node of each, in discrete
/// mode, the number of filled and unfilled nodes corresponds to blocks that are
/// drawn. The block.filled nodes also get a style class .level-name corresponding
/// to the level for the current value.
/// 
/// In horizontal orientation, the nodes are always arranged from left to right,
/// regardless of text direction.
/// 
/// # Accessibility
/// 
/// `GtkLevelBar` uses the `GTK_ACCESSIBLE_ROLE_METER` role.
public protocol LevelBarProtocol: WidgetProtocol, OrientableProtocol {
        /// Untyped pointer to the underlying `GtkLevelBar` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkLevelBar` instance.
    var level_bar_ptr: UnsafeMutablePointer<GtkLevelBar>! { get }

    /// Required Initialiser for types conforming to `LevelBarProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `LevelBarRef` type acts as a lightweight Swift reference to an underlying `GtkLevelBar` instance.
/// It exposes methods that can operate on this data type through `LevelBarProtocol` conformance.
/// Use `LevelBarRef` only as an `unowned` reference to an existing `GtkLevelBar` instance.
///
/// `GtkLevelBar` is a widget that can be used as a level indicator.
/// 
/// Typical use cases are displaying the strength of a password, or
/// showing the charge level of a battery.
/// 
/// ![An example GtkLevelBar](levelbar.png)
/// 
/// Use [method`Gtk.LevelBar.set_value`] to set the current value, and
/// [method`Gtk.LevelBar.add_offset_value`] to set the value offsets at which
/// the bar will be considered in a different state. GTK will add a few
/// offsets by default on the level bar: `GTK_LEVEL_BAR_OFFSET_LOW`,
/// `GTK_LEVEL_BAR_OFFSET_HIGH` and `GTK_LEVEL_BAR_OFFSET_FULL`, with
/// values 0.25, 0.75 and 1.0 respectively.
/// 
/// Note that it is your responsibility to update preexisting offsets
/// when changing the minimum or maximum value. GTK will simply clamp
/// them to the new range.
/// 
/// ## Adding a custom offset on the bar
/// 
/// ```c
/// static GtkWidget *
/// create_level_bar (void)
/// {
///   GtkWidget *widget;
///   GtkLevelBar *bar;
/// 
///   widget = gtk_level_bar_new ();
///   bar = GTK_LEVEL_BAR (widget);
/// 
///   // This changes the value of the default low offset
/// 
///   gtk_level_bar_add_offset_value (bar,
///                                   GTK_LEVEL_BAR_OFFSET_LOW,
///                                   0.10);
/// 
///   // This adds a new offset to the bar; the application will
///   // be able to change its color CSS like this:
///   //
///   // levelbar block.my-offset {
///   //   background-color: magenta;
///   //   border-style: solid;
///   //   border-color: black;
///   //   border-style: 1px;
///   // }
/// 
///   gtk_level_bar_add_offset_value (bar, "my-offset", 0.60);
/// 
///   return widget;
/// }
/// ```
/// 
/// The default interval of values is between zero and one, but it’s possible
/// to modify the interval using [method`Gtk.LevelBar.set_min_value`] and
/// [method`Gtk.LevelBar.set_max_value`]. The value will be always drawn in
/// proportion to the admissible interval, i.e. a value of 15 with a specified
/// interval between 10 and 20 is equivalent to a value of 0.5 with an interval
/// between 0 and 1. When `GTK_LEVEL_BAR_MODE_DISCRETE` is used, the bar level
/// is rendered as a finite number of separated blocks instead of a single one.
/// The number of blocks that will be rendered is equal to the number of units
/// specified by the admissible interval.
/// 
/// For instance, to build a bar rendered with five blocks, it’s sufficient to
/// set the minimum value to 0 and the maximum value to 5 after changing the
/// indicator mode to discrete.
/// 
/// # GtkLevelBar as GtkBuildable
/// 
/// The `GtkLevelBar` implementation of the `GtkBuildable` interface supports a
/// custom &lt;offsets&gt; element, which can contain any number of &lt;offset&gt; elements,
/// each of which must have name and value attributes.
/// 
/// # CSS nodes
/// 
/// ```
/// levelbar[.discrete]
/// ╰── trough
///     ├── block.filled.level-name
///     ┊
///     ├── block.empty
///     ┊
/// ```
/// 
/// `GtkLevelBar` has a main CSS node with name levelbar and one of the style
/// classes .discrete or .continuous and a subnode with name trough. Below the
/// trough node are a number of nodes with name block and style class .filled
/// or .empty. In continuous mode, there is exactly one node of each, in discrete
/// mode, the number of filled and unfilled nodes corresponds to blocks that are
/// drawn. The block.filled nodes also get a style class .level-name corresponding
/// to the level for the current value.
/// 
/// In horizontal orientation, the nodes are always arranged from left to right,
/// regardless of text direction.
/// 
/// # Accessibility
/// 
/// `GtkLevelBar` uses the `GTK_ACCESSIBLE_ROLE_METER` role.
public struct LevelBarRef: LevelBarProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkLevelBar` instance.
    /// For type-safe access, use the generated, typed pointer `level_bar_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LevelBarRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkLevelBar>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkLevelBar>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkLevelBar>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkLevelBar>?) {
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

    /// Reference intialiser for a related type that implements `LevelBarProtocol`
    @inlinable init<T: LevelBarProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: LevelBarProtocol>(_ other: T) -> LevelBarRef { LevelBarRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkLevelBar`.
    @inlinable init() {
        let rv = gtk_level_bar_new()
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkLevelBar` for the specified interval.
    @inlinable init(interval minValue: CDouble, maxValue: CDouble) {
        let rv = gtk_level_bar_new_for_interval(minValue, maxValue)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GtkLevelBar` for the specified interval.
    @inlinable static func newFor(interval minValue: CDouble, maxValue: CDouble) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_level_bar_new_for_interval(minValue, maxValue))) else { return nil }
        return rv
    }
}

/// The `LevelBar` type acts as a reference-counted owner of an underlying `GtkLevelBar` instance.
/// It provides the methods that can operate on this data type through `LevelBarProtocol` conformance.
/// Use `LevelBar` as a strong reference or owner of a `GtkLevelBar` instance.
///
/// `GtkLevelBar` is a widget that can be used as a level indicator.
/// 
/// Typical use cases are displaying the strength of a password, or
/// showing the charge level of a battery.
/// 
/// ![An example GtkLevelBar](levelbar.png)
/// 
/// Use [method`Gtk.LevelBar.set_value`] to set the current value, and
/// [method`Gtk.LevelBar.add_offset_value`] to set the value offsets at which
/// the bar will be considered in a different state. GTK will add a few
/// offsets by default on the level bar: `GTK_LEVEL_BAR_OFFSET_LOW`,
/// `GTK_LEVEL_BAR_OFFSET_HIGH` and `GTK_LEVEL_BAR_OFFSET_FULL`, with
/// values 0.25, 0.75 and 1.0 respectively.
/// 
/// Note that it is your responsibility to update preexisting offsets
/// when changing the minimum or maximum value. GTK will simply clamp
/// them to the new range.
/// 
/// ## Adding a custom offset on the bar
/// 
/// ```c
/// static GtkWidget *
/// create_level_bar (void)
/// {
///   GtkWidget *widget;
///   GtkLevelBar *bar;
/// 
///   widget = gtk_level_bar_new ();
///   bar = GTK_LEVEL_BAR (widget);
/// 
///   // This changes the value of the default low offset
/// 
///   gtk_level_bar_add_offset_value (bar,
///                                   GTK_LEVEL_BAR_OFFSET_LOW,
///                                   0.10);
/// 
///   // This adds a new offset to the bar; the application will
///   // be able to change its color CSS like this:
///   //
///   // levelbar block.my-offset {
///   //   background-color: magenta;
///   //   border-style: solid;
///   //   border-color: black;
///   //   border-style: 1px;
///   // }
/// 
///   gtk_level_bar_add_offset_value (bar, "my-offset", 0.60);
/// 
///   return widget;
/// }
/// ```
/// 
/// The default interval of values is between zero and one, but it’s possible
/// to modify the interval using [method`Gtk.LevelBar.set_min_value`] and
/// [method`Gtk.LevelBar.set_max_value`]. The value will be always drawn in
/// proportion to the admissible interval, i.e. a value of 15 with a specified
/// interval between 10 and 20 is equivalent to a value of 0.5 with an interval
/// between 0 and 1. When `GTK_LEVEL_BAR_MODE_DISCRETE` is used, the bar level
/// is rendered as a finite number of separated blocks instead of a single one.
/// The number of blocks that will be rendered is equal to the number of units
/// specified by the admissible interval.
/// 
/// For instance, to build a bar rendered with five blocks, it’s sufficient to
/// set the minimum value to 0 and the maximum value to 5 after changing the
/// indicator mode to discrete.
/// 
/// # GtkLevelBar as GtkBuildable
/// 
/// The `GtkLevelBar` implementation of the `GtkBuildable` interface supports a
/// custom &lt;offsets&gt; element, which can contain any number of &lt;offset&gt; elements,
/// each of which must have name and value attributes.
/// 
/// # CSS nodes
/// 
/// ```
/// levelbar[.discrete]
/// ╰── trough
///     ├── block.filled.level-name
///     ┊
///     ├── block.empty
///     ┊
/// ```
/// 
/// `GtkLevelBar` has a main CSS node with name levelbar and one of the style
/// classes .discrete or .continuous and a subnode with name trough. Below the
/// trough node are a number of nodes with name block and style class .filled
/// or .empty. In continuous mode, there is exactly one node of each, in discrete
/// mode, the number of filled and unfilled nodes corresponds to blocks that are
/// drawn. The block.filled nodes also get a style class .level-name corresponding
/// to the level for the current value.
/// 
/// In horizontal orientation, the nodes are always arranged from left to right,
/// regardless of text direction.
/// 
/// # Accessibility
/// 
/// `GtkLevelBar` uses the `GTK_ACCESSIBLE_ROLE_METER` role.
open class LevelBar: Widget, LevelBarProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LevelBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkLevelBar>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LevelBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkLevelBar>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LevelBar` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LevelBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LevelBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkLevelBar>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LevelBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkLevelBar>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkLevelBar`.
    /// i.e., ownership is transferred to the `LevelBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkLevelBar>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `LevelBarProtocol`
    /// Will retain `GtkLevelBar`.
    /// - Parameter other: an instance of a related type that implements `LevelBarProtocol`
    @inlinable public init<T: LevelBarProtocol>(levelBar other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkLevelBar`.
    @inlinable public init() {
        let rv = gtk_level_bar_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkLevelBar` for the specified interval.
    @inlinable public init(interval minValue: CDouble, maxValue: CDouble) {
        let rv = gtk_level_bar_new_for_interval(minValue, maxValue)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkLevelBar` for the specified interval.
    @inlinable public static func newFor(interval minValue: CDouble, maxValue: CDouble) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_level_bar_new_for_interval(minValue, maxValue))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum LevelBarPropertyName: String, PropertyNameProtocol {
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    /// Whether the widget can receive pointer events.
    case canTarget = "can-target"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`.
    case cursor = "cursor"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// How to distribute horizontal space if widget gets extra space.
    case halign = "halign"
    /// Whether the widget is the default widget.
    case hasDefault = "has-default"
    /// Whether the widget has the input focus.
    case hasFocus = "has-focus"
    /// Enables or disables the emission of the `query-tooltip` signal on `widget`.
    /// 
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using [signal`Gtk.Widget::query-tooltip`] to
    /// determine whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    /// Override for height request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case heightRequest = "height-request"
    /// Whether to expand horizontally.
    case hexpand = "hexpand"
    /// Whether to use the `hexpand` property.
    case hexpandSet = "hexpand-set"
    /// Whether the `GtkLeveBar` is inverted.
    /// 
    /// Level bars normally grow from top to bottom or left to right.
    /// Inverted level bars grow in the opposite direction.
    case inverted = "inverted"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case layoutManager = "layout-manager"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginEnd = "margin-end"
    /// Margin on start of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginTop = "margin-top"
    /// Determines the maximum value of the interval that can be displayed by the bar.
    case maxValue = "max-value"
    /// Determines the minimum value of the interval that can be displayed by the bar.
    case minValue = "min-value"
    /// Determines the way `GtkLevelBar` interprets the value properties to draw the
    /// level fill area.
    /// 
    /// Specifically, when the value is `GTK_LEVEL_BAR_MODE_CONTINUOUS`,
    /// `GtkLevelBar` will draw a single block representing the current value in
    /// that area; when the value is `GTK_LEVEL_BAR_MODE_DISCRETE`,
    /// the widget will draw a succession of separate blocks filling the
    /// draw area, with the number of blocks being equal to the units separating
    /// the integral roundings of [property`Gtk.LevelBar:min-value`] and
    /// [property`Gtk.LevelBar:max-value`].
    case mode = "mode"
    /// The name of the widget.
    case name = "name"
    /// The requested opacity of the widget.
    case opacity = "opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    /// The parent widget of this widget.
    case parent = "parent"
    /// Whether the widget will receive the default action when it is focused.
    case receivesDefault = "receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget.
    case scaleFactor = "scale-factor"
    /// Whether the widget responds to input.
    case sensitive = "sensitive"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with Pango markup.
    /// 
    /// Also see [method`Gtk.Tooltip.set_markup`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see [method`Gtk.Tooltip.set_text`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// How to distribute vertical space if widget gets extra space.
    case valign = "valign"
    /// Determines the currently filled value of the level bar.
    case value = "value"
    /// Whether to expand vertically.
    case vexpand = "vexpand"
    /// Whether to use the `vexpand` property.
    case vexpandSet = "vexpand-set"
    /// Whether the widget is visible.
    case visible = "visible"
    /// Override for width request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case widthRequest = "width-request"
}

public extension LevelBarProtocol {
    /// Bind a `LevelBarPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: LevelBarPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a LevelBar property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: LevelBarPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a LevelBar property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: LevelBarPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum LevelBarSignalName: String, SignalNameProtocol {
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold.
    /// 
    /// May result in finalization of the widget if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// Emitted when the text direction of a widget changes.
    case directionChanged = "direction-changed"
    /// Emitted when `widget` is hidden.
    case hide = "hide"
    /// Emitted if keyboard navigation fails.
    /// 
    /// See [method`Gtk.Widget.keynav_failed`] for details.
    case keynavFailed = "keynav-failed"
    /// Emitted when `widget` is going to be mapped.
    /// 
    /// A widget is mapped when the widget is visible (which is controlled with
    /// [property`Gtk.Widget:visible`]) and all its parents up to the toplevel widget
    /// are also visible.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of [signal`Gtk.Widget::unmap`].
    case map = "map"
    /// Emitted when a widget is activated via a mnemonic.
    /// 
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// Emitted when the focus is moved.
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
    /// Emitted when an offset specified on the bar changes value.
    /// 
    /// This typically is the result of a [method`Gtk.LevelBar.add_offset_value`]
    /// call.
    /// 
    /// The signal supports detailed connections; you can connect to the
    /// detailed signal "changed`x`" in order to only receive callbacks when
    /// the value of offset "x" changes.
    case offsetChanged = "offset-changed"
    /// Emitted when the widgets tooltip is about to be shown.
    /// 
    /// This happens when the [property`Gtk.Widget:has-tooltip`] property
    /// is `true` and the hover timeout has expired with the cursor hovering
    /// "above" `widget`; or emitted when `widget` got focus in keyboard mode.
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
    /// Emitted when `widget` is associated with a `GdkSurface`.
    /// 
    /// This means that [method`Gtk.Widget.realize`] has been called
    /// or the widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// Emitted when `widget` is shown.
    case show = "show"
    /// Emitted when the widget state changes.
    /// 
    /// See [method`Gtk.Widget.get_state_flags`].
    case stateFlagsChanged = "state-flags-changed"
    /// Emitted when `widget` is going to be unmapped.
    /// 
    /// A widget is unmapped when either it or any of its parents up to the
    /// toplevel widget have been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer,
    /// it can be used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// Emitted when the `GdkSurface` associated with `widget` is destroyed.
    /// 
    /// This means that [method`Gtk.Widget.unrealize`] has been called
    /// or the widget has been unmapped (that is, it is going to be hidden).
    case unrealize = "unrealize"
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCanFocus = "notify::can-focus"
    /// Whether the widget can receive pointer events.
    case notifyCanTarget = "notify::can-target"
    /// A list of css classes applied to this widget.
    case notifyCssClasses = "notify::css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCssName = "notify::css-name"
    /// The cursor used by `widget`.
    case notifyCursor = "notify::cursor"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case notifyFocusable = "notify::focusable"
    /// How to distribute horizontal space if widget gets extra space.
    case notifyHalign = "notify::halign"
    /// Whether the widget is the default widget.
    case notifyHasDefault = "notify::has-default"
    /// Whether the widget has the input focus.
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of the `query-tooltip` signal on `widget`.
    /// 
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using [signal`Gtk.Widget::query-tooltip`] to
    /// determine whether it will provide a tooltip or not.
    case notifyHasTooltip = "notify::has-tooltip"
    /// Override for height request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `hexpand` property.
    case notifyHexpandSet = "notify::hexpand-set"
    /// Whether the `GtkLeveBar` is inverted.
    /// 
    /// Level bars normally grow from top to bottom or left to right.
    /// Inverted level bars grow in the opposite direction.
    case notifyInverted = "notify::inverted"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyLayoutManager = "notify::layout-manager"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on start of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginTop = "notify::margin-top"
    /// Determines the maximum value of the interval that can be displayed by the bar.
    case notifyMaxValue = "notify::max-value"
    /// Determines the minimum value of the interval that can be displayed by the bar.
    case notifyMinValue = "notify::min-value"
    /// Determines the way `GtkLevelBar` interprets the value properties to draw the
    /// level fill area.
    /// 
    /// Specifically, when the value is `GTK_LEVEL_BAR_MODE_CONTINUOUS`,
    /// `GtkLevelBar` will draw a single block representing the current value in
    /// that area; when the value is `GTK_LEVEL_BAR_MODE_DISCRETE`,
    /// the widget will draw a succession of separate blocks filling the
    /// draw area, with the number of blocks being equal to the units separating
    /// the integral roundings of [property`Gtk.LevelBar:min-value`] and
    /// [property`Gtk.LevelBar:max-value`].
    case notifyMode = "notify::mode"
    /// The name of the widget.
    case notifyName = "notify::name"
    /// The requested opacity of the widget.
    case notifyOpacity = "notify::opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyOverflow = "notify::overflow"
    /// The parent widget of this widget.
    case notifyParent = "notify::parent"
    /// Whether the widget will receive the default action when it is focused.
    case notifyReceivesDefault = "notify::receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case notifyRoot = "notify::root"
    /// The scale factor of the widget.
    case notifyScaleFactor = "notify::scale-factor"
    /// Whether the widget responds to input.
    case notifySensitive = "notify::sensitive"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with Pango markup.
    /// 
    /// Also see [method`Gtk.Tooltip.set_markup`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see [method`Gtk.Tooltip.set_text`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    /// How to distribute vertical space if widget gets extra space.
    case notifyValign = "notify::valign"
    /// Determines the currently filled value of the level bar.
    case notifyValue = "notify::value"
    /// Whether to expand vertically.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `vexpand` property.
    case notifyVexpandSet = "notify::vexpand-set"
    /// Whether the widget is visible.
    case notifyVisible = "notify::visible"
    /// Override for width request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case notifyWidthRequest = "notify::width-request"
}

// MARK: LevelBar signals
public extension LevelBarProtocol {
    /// Connect a Swift signal handler to the given, typed `LevelBarSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: LevelBarSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `LevelBarSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: LevelBarSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted when an offset specified on the bar changes value.
    /// 
    /// This typically is the result of a [method`Gtk.LevelBar.add_offset_value`]
    /// call.
    /// 
    /// The signal supports detailed connections; you can connect to the
    /// detailed signal "changed`x`" in order to only receive callbacks when
    /// the value of offset "x" changes.
    /// - Note: This represents the underlying `offset-changed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter name: the name of the offset that changed value
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `offsetChanged` signal is emitted
    @discardableResult @inlinable func onOffsetChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LevelBarRef, _ name: String) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LevelBarRef, String, Void>
        let cCallback: @convention(c) (gpointer, UnsafeMutablePointer<gchar>?, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LevelBarRef(raw: unownedSelf), arg1.map({ String(cString: $0) })!)
            return output
        }
        return connect(
            signal: .offsetChanged,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `offset-changed` signal for using the `connect(signal:)` methods
    static var offsetChangedSignal: LevelBarSignalName { .offsetChanged }
    
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
    /// - Note: This represents the underlying `notify::inverted` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyInverted` signal is emitted
    @discardableResult @inlinable func onNotifyInverted(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LevelBarRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LevelBarRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LevelBarRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyInverted,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::inverted` signal for using the `connect(signal:)` methods
    static var notifyInvertedSignal: LevelBarSignalName { .notifyInverted }
    
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
    /// - Note: This represents the underlying `notify::max-value` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyMaxValue` signal is emitted
    @discardableResult @inlinable func onNotifyMaxValue(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LevelBarRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LevelBarRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LevelBarRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyMaxValue,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::max-value` signal for using the `connect(signal:)` methods
    static var notifyMaxValueSignal: LevelBarSignalName { .notifyMaxValue }
    
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
    /// - Note: This represents the underlying `notify::min-value` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyMinValue` signal is emitted
    @discardableResult @inlinable func onNotifyMinValue(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LevelBarRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LevelBarRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LevelBarRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyMinValue,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::min-value` signal for using the `connect(signal:)` methods
    static var notifyMinValueSignal: LevelBarSignalName { .notifyMinValue }
    
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
    /// - Note: This represents the underlying `notify::mode` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyMode` signal is emitted
    @discardableResult @inlinable func onNotifyMode(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LevelBarRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LevelBarRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LevelBarRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyMode,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::mode` signal for using the `connect(signal:)` methods
    static var notifyModeSignal: LevelBarSignalName { .notifyMode }
    
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
    /// - Note: This represents the underlying `notify::value` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyValue` signal is emitted
    @discardableResult @inlinable func onNotifyValue(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LevelBarRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LevelBarRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LevelBarRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyValue,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::value` signal for using the `connect(signal:)` methods
    static var notifyValueSignal: LevelBarSignalName { .notifyValue }
    
}

// MARK: LevelBar Class: LevelBarProtocol extension (methods and fields)
public extension LevelBarProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLevelBar` instance.
    @inlinable var level_bar_ptr: UnsafeMutablePointer<GtkLevelBar>! { return ptr?.assumingMemoryBound(to: GtkLevelBar.self) }

    /// Adds a new offset marker on `self` at the position specified by `value`.
    /// 
    /// When the bar value is in the interval topped by `value` (or between `value`
    /// and [property`Gtk.LevelBar:max-value`] in case the offset is the last one
    /// on the bar) a style class named `level-``name` will be applied
    /// when rendering the level bar fill.
    /// 
    /// If another offset marker named `name` exists, its value will be
    /// replaced by `value`.
    @inlinable func addOffsetValue(name: UnsafePointer<CChar>!, value: CDouble) {
        gtk_level_bar_add_offset_value(level_bar_ptr, name, value)
    
    }

    /// Returns whether the levelbar is inverted.
    @inlinable func getInverted() -> Bool {
        let rv = ((gtk_level_bar_get_inverted(level_bar_ptr)) != 0)
        return rv
    }

    /// Returns the `max-value` of the `GtkLevelBar`.
    @inlinable func getMaxValue() -> CDouble {
        let rv = gtk_level_bar_get_max_value(level_bar_ptr)
        return rv
    }

    /// Returns the `min-value of the `GtkLevelBar`.
    @inlinable func getMinValue() -> CDouble {
        let rv = gtk_level_bar_get_min_value(level_bar_ptr)
        return rv
    }

    /// Returns the `mode` of the `GtkLevelBar`.
    @inlinable func getMode() -> GtkLevelBarMode {
        let rv = gtk_level_bar_get_mode(level_bar_ptr)
        return rv
    }

    /// Fetches the value specified for the offset marker `name` in `self`.
    @inlinable func getOffsetValue(name: UnsafePointer<CChar>? = nil, value: UnsafeMutablePointer<CDouble>!) -> Bool {
        let rv = ((gtk_level_bar_get_offset_value(level_bar_ptr, name, value)) != 0)
        return rv
    }

    /// Returns the `value` of the `GtkLevelBar`.
    @inlinable func getValue() -> CDouble {
        let rv = gtk_level_bar_get_value(level_bar_ptr)
        return rv
    }

    /// Removes an offset marker from a `GtkLevelBar`.
    /// 
    /// The marker must have been previously added with
    /// [method`Gtk.LevelBar.add_offset_value`].
    @inlinable func removeOffsetValue(name: UnsafePointer<CChar>? = nil) {
        gtk_level_bar_remove_offset_value(level_bar_ptr, name)
    
    }

    /// Sets whether the `GtkLevelBar` is inverted.
    @inlinable func set(inverted: Bool) {
        gtk_level_bar_set_inverted(level_bar_ptr, gboolean((inverted) ? 1 : 0))
    
    }

    /// Sets the `max-value` of the `GtkLevelBar`.
    /// 
    /// You probably want to update preexisting level offsets after calling
    /// this function.
    @inlinable func setMax(value: CDouble) {
        gtk_level_bar_set_max_value(level_bar_ptr, value)
    
    }

    /// Sets the `min-value` of the `GtkLevelBar`.
    /// 
    /// You probably want to update preexisting level offsets after calling
    /// this function.
    @inlinable func setMin(value: CDouble) {
        gtk_level_bar_set_min_value(level_bar_ptr, value)
    
    }

    /// Sets the `mode` of the `GtkLevelBar`.
    @inlinable func set(mode: GtkLevelBarMode) {
        gtk_level_bar_set_mode(level_bar_ptr, mode)
    
    }

    /// Sets the value of the `GtkLevelBar`.
    @inlinable func set(value: CDouble) {
        gtk_level_bar_set_value(level_bar_ptr, value)
    
    }
    /// Whether the `GtkLeveBar` is inverted.
    /// 
    /// Level bars normally grow from top to bottom or left to right.
    /// Inverted level bars grow in the opposite direction.
    @inlinable var inverted: Bool {
        /// Returns whether the levelbar is inverted.
        get {
            let rv = ((gtk_level_bar_get_inverted(level_bar_ptr)) != 0)
            return rv
        }
        /// Sets whether the `GtkLevelBar` is inverted.
        nonmutating set {
            gtk_level_bar_set_inverted(level_bar_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns the `max-value` of the `GtkLevelBar`.
    @inlinable var maxValue: CDouble {
        /// Returns the `max-value` of the `GtkLevelBar`.
        get {
            let rv = gtk_level_bar_get_max_value(level_bar_ptr)
            return rv
        }
        /// Sets the `max-value` of the `GtkLevelBar`.
        /// 
        /// You probably want to update preexisting level offsets after calling
        /// this function.
        nonmutating set {
            gtk_level_bar_set_max_value(level_bar_ptr, newValue)
        }
    }

    /// Returns the `min-value of the `GtkLevelBar`.
    @inlinable var minValue: CDouble {
        /// Returns the `min-value of the `GtkLevelBar`.
        get {
            let rv = gtk_level_bar_get_min_value(level_bar_ptr)
            return rv
        }
        /// Sets the `min-value` of the `GtkLevelBar`.
        /// 
        /// You probably want to update preexisting level offsets after calling
        /// this function.
        nonmutating set {
            gtk_level_bar_set_min_value(level_bar_ptr, newValue)
        }
    }

    /// Determines the way `GtkLevelBar` interprets the value properties to draw the
    /// level fill area.
    /// 
    /// Specifically, when the value is `GTK_LEVEL_BAR_MODE_CONTINUOUS`,
    /// `GtkLevelBar` will draw a single block representing the current value in
    /// that area; when the value is `GTK_LEVEL_BAR_MODE_DISCRETE`,
    /// the widget will draw a succession of separate blocks filling the
    /// draw area, with the number of blocks being equal to the units separating
    /// the integral roundings of [property`Gtk.LevelBar:min-value`] and
    /// [property`Gtk.LevelBar:max-value`].
    @inlinable var mode: GtkLevelBarMode {
        /// Returns the `mode` of the `GtkLevelBar`.
        get {
            let rv = gtk_level_bar_get_mode(level_bar_ptr)
            return rv
        }
        /// Sets the `mode` of the `GtkLevelBar`.
        nonmutating set {
            gtk_level_bar_set_mode(level_bar_ptr, newValue)
        }
    }

    /// Determines the currently filled value of the level bar.
    @inlinable var value: CDouble {
        /// Returns the `value` of the `GtkLevelBar`.
        get {
            let rv = gtk_level_bar_get_value(level_bar_ptr)
            return rv
        }
        /// Sets the value of the `GtkLevelBar`.
        nonmutating set {
            gtk_level_bar_set_value(level_bar_ptr, newValue)
        }
    }


}



// MARK: - LinkButton Class

/// The `LinkButtonProtocol` protocol exposes the methods and properties of an underlying `GtkLinkButton` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LinkButton`.
/// Alternatively, use `LinkButtonRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GtkLinkButton` is a button with a hyperlink.
/// 
/// ![An example GtkLinkButton](link-button.png)
/// 
/// It is useful to show quick links to resources.
/// 
/// A link button is created by calling either [ctor`Gtk.LinkButton.new`] or
/// [ctor`Gtk.LinkButton.new_with_label`]. If using the former, the URI you
/// pass to the constructor is used as a label for the widget.
/// 
/// The URI bound to a `GtkLinkButton` can be set specifically using
/// [method`Gtk.LinkButton.set_uri`].
/// 
/// By default, `GtkLinkButton` calls [func`Gtk.show_uri`] when the button
/// is clicked. This behaviour can be overridden by connecting to the
/// [signal`Gtk.LinkButton::activate-link`] signal and returning `true` from
/// the signal handler.
/// 
/// # CSS nodes
/// 
/// `GtkLinkButton` has a single CSS node with name button. To differentiate
/// it from a plain `GtkButton`, it gets the .link style class.
/// 
/// # Accessibility
/// 
/// `GtkLinkButton` uses the `GTK_ACCESSIBLE_ROLE_LINK` role.
public protocol LinkButtonProtocol: ButtonProtocol {
        /// Untyped pointer to the underlying `GtkLinkButton` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkLinkButton` instance.
    var link_button_ptr: UnsafeMutablePointer<GtkLinkButton>! { get }

    /// Required Initialiser for types conforming to `LinkButtonProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `LinkButtonRef` type acts as a lightweight Swift reference to an underlying `GtkLinkButton` instance.
/// It exposes methods that can operate on this data type through `LinkButtonProtocol` conformance.
/// Use `LinkButtonRef` only as an `unowned` reference to an existing `GtkLinkButton` instance.
///
/// A `GtkLinkButton` is a button with a hyperlink.
/// 
/// ![An example GtkLinkButton](link-button.png)
/// 
/// It is useful to show quick links to resources.
/// 
/// A link button is created by calling either [ctor`Gtk.LinkButton.new`] or
/// [ctor`Gtk.LinkButton.new_with_label`]. If using the former, the URI you
/// pass to the constructor is used as a label for the widget.
/// 
/// The URI bound to a `GtkLinkButton` can be set specifically using
/// [method`Gtk.LinkButton.set_uri`].
/// 
/// By default, `GtkLinkButton` calls [func`Gtk.show_uri`] when the button
/// is clicked. This behaviour can be overridden by connecting to the
/// [signal`Gtk.LinkButton::activate-link`] signal and returning `true` from
/// the signal handler.
/// 
/// # CSS nodes
/// 
/// `GtkLinkButton` has a single CSS node with name button. To differentiate
/// it from a plain `GtkButton`, it gets the .link style class.
/// 
/// # Accessibility
/// 
/// `GtkLinkButton` uses the `GTK_ACCESSIBLE_ROLE_LINK` role.
public struct LinkButtonRef: LinkButtonProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkLinkButton` instance.
    /// For type-safe access, use the generated, typed pointer `link_button_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LinkButtonRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkLinkButton>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkLinkButton>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkLinkButton>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkLinkButton>?) {
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

    /// Reference intialiser for a related type that implements `LinkButtonProtocol`
    @inlinable init<T: LinkButtonProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: LinkButtonProtocol>(_ other: T) -> LinkButtonRef { LinkButtonRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkLinkButton` with the URI as its text.
    @inlinable init( uri: UnsafePointer<CChar>!) {
        let rv = gtk_link_button_new(uri)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkLinkButton` containing a label.
    @inlinable init(label uri: UnsafePointer<CChar>!, label: UnsafePointer<CChar>? = nil) {
        let rv = gtk_link_button_new_with_label(uri, label)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GtkLinkButton` containing a label.
    @inlinable static func linkButtonNewWith(label uri: UnsafePointer<CChar>!, label: UnsafePointer<CChar>? = nil) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_link_button_new_with_label(uri, label))) else { return nil }
        return rv
    }
}

/// The `LinkButton` type acts as a reference-counted owner of an underlying `GtkLinkButton` instance.
/// It provides the methods that can operate on this data type through `LinkButtonProtocol` conformance.
/// Use `LinkButton` as a strong reference or owner of a `GtkLinkButton` instance.
///
/// A `GtkLinkButton` is a button with a hyperlink.
/// 
/// ![An example GtkLinkButton](link-button.png)
/// 
/// It is useful to show quick links to resources.
/// 
/// A link button is created by calling either [ctor`Gtk.LinkButton.new`] or
/// [ctor`Gtk.LinkButton.new_with_label`]. If using the former, the URI you
/// pass to the constructor is used as a label for the widget.
/// 
/// The URI bound to a `GtkLinkButton` can be set specifically using
/// [method`Gtk.LinkButton.set_uri`].
/// 
/// By default, `GtkLinkButton` calls [func`Gtk.show_uri`] when the button
/// is clicked. This behaviour can be overridden by connecting to the
/// [signal`Gtk.LinkButton::activate-link`] signal and returning `true` from
/// the signal handler.
/// 
/// # CSS nodes
/// 
/// `GtkLinkButton` has a single CSS node with name button. To differentiate
/// it from a plain `GtkButton`, it gets the .link style class.
/// 
/// # Accessibility
/// 
/// `GtkLinkButton` uses the `GTK_ACCESSIBLE_ROLE_LINK` role.
open class LinkButton: Button, LinkButtonProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LinkButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkLinkButton>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LinkButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkLinkButton>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LinkButton` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LinkButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LinkButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkLinkButton>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LinkButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkLinkButton>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkLinkButton`.
    /// i.e., ownership is transferred to the `LinkButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkLinkButton>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `LinkButtonProtocol`
    /// Will retain `GtkLinkButton`.
    /// - Parameter other: an instance of a related type that implements `LinkButtonProtocol`
    @inlinable public init<T: LinkButtonProtocol>(linkButton other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkLinkButton` with the URI as its text.
    @inlinable public init( uri: UnsafePointer<CChar>!) {
        let rv = gtk_link_button_new(uri)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkLinkButton` containing a label.
    @inlinable public init(label uri: UnsafePointer<CChar>!, label: UnsafePointer<CChar>? = nil) {
        let rv = gtk_link_button_new_with_label(uri, label)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkLinkButton` containing a label.
    @inlinable public static func linkButtonNewWith(label uri: UnsafePointer<CChar>!, label: UnsafePointer<CChar>? = nil) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_link_button_new_with_label(uri, label))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum LinkButtonPropertyName: String, PropertyNameProtocol {
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    /// Whether the widget can receive pointer events.
    case canTarget = "can-target"
    /// The child widget.
    case child = "child"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`.
    case cursor = "cursor"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// How to distribute horizontal space if widget gets extra space.
    case halign = "halign"
    /// Whether the widget is the default widget.
    case hasDefault = "has-default"
    /// Whether the widget has the input focus.
    case hasFocus = "has-focus"
    /// Whether the button has a frame.
    case hasFrame = "has-frame"
    /// Enables or disables the emission of the `query-tooltip` signal on `widget`.
    /// 
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using [signal`Gtk.Widget::query-tooltip`] to
    /// determine whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    /// Override for height request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case heightRequest = "height-request"
    /// Whether to expand horizontally.
    case hexpand = "hexpand"
    /// Whether to use the `hexpand` property.
    case hexpandSet = "hexpand-set"
    /// The name of the icon used to automatically populate the button.
    case iconName = "icon-name"
    /// Text of the label inside the button, if the button contains a label widget.
    case label = "label"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case layoutManager = "layout-manager"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginEnd = "margin-end"
    /// Margin on start of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginTop = "margin-top"
    /// The name of the widget.
    case name = "name"
    /// The requested opacity of the widget.
    case opacity = "opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    /// The parent widget of this widget.
    case parent = "parent"
    /// Whether the widget will receive the default action when it is focused.
    case receivesDefault = "receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget.
    case scaleFactor = "scale-factor"
    /// Whether the widget responds to input.
    case sensitive = "sensitive"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with Pango markup.
    /// 
    /// Also see [method`Gtk.Tooltip.set_markup`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see [method`Gtk.Tooltip.set_text`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// The URI bound to this button.
    case uri = "uri"
    /// If set, an underline in the text indicates that the following character is
    /// to be used as mnemonic.
    case useUnderline = "use-underline"
    /// How to distribute vertical space if widget gets extra space.
    case valign = "valign"
    /// Whether to expand vertically.
    case vexpand = "vexpand"
    /// Whether to use the `vexpand` property.
    case vexpandSet = "vexpand-set"
    /// Whether the widget is visible.
    case visible = "visible"
    /// The 'visited' state of this button.
    /// 
    /// A visited link is drawn in a different color.
    case visited = "visited"
    /// Override for width request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case widthRequest = "width-request"
}

public extension LinkButtonProtocol {
    /// Bind a `LinkButtonPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: LinkButtonPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a LinkButton property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: LinkButtonPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a LinkButton property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: LinkButtonPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum LinkButtonSignalName: String, SignalNameProtocol {
    /// Emitted to animate press then release.
    /// 
    /// This is an action signal. Applications should never connect
    /// to this signal, but use the [signal`Gtk.Button::clicked`] signal.
    case activate = "activate"
    /// Emitted each time the `GtkLinkButton` is clicked.
    /// 
    /// The default handler will call [func`Gtk.show_uri`] with the URI
    /// stored inside the [property`Gtk.LinkButton:uri`] property.
    /// 
    /// To override the default behavior, you can connect to the
    /// `activate-link` signal and stop the propagation of the signal
    /// by returning `true` from your handler.
    case activateLink = "activate-link"
    /// Emitted when the button has been activated (pressed and released).
    case clicked = "clicked"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold.
    /// 
    /// May result in finalization of the widget if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// Emitted when the text direction of a widget changes.
    case directionChanged = "direction-changed"
    /// Emitted when `widget` is hidden.
    case hide = "hide"
    /// Emitted if keyboard navigation fails.
    /// 
    /// See [method`Gtk.Widget.keynav_failed`] for details.
    case keynavFailed = "keynav-failed"
    /// Emitted when `widget` is going to be mapped.
    /// 
    /// A widget is mapped when the widget is visible (which is controlled with
    /// [property`Gtk.Widget:visible`]) and all its parents up to the toplevel widget
    /// are also visible.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of [signal`Gtk.Widget::unmap`].
    case map = "map"
    /// Emitted when a widget is activated via a mnemonic.
    /// 
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// Emitted when the focus is moved.
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
    /// Emitted when the widgets tooltip is about to be shown.
    /// 
    /// This happens when the [property`Gtk.Widget:has-tooltip`] property
    /// is `true` and the hover timeout has expired with the cursor hovering
    /// "above" `widget`; or emitted when `widget` got focus in keyboard mode.
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
    /// Emitted when `widget` is associated with a `GdkSurface`.
    /// 
    /// This means that [method`Gtk.Widget.realize`] has been called
    /// or the widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// Emitted when `widget` is shown.
    case show = "show"
    /// Emitted when the widget state changes.
    /// 
    /// See [method`Gtk.Widget.get_state_flags`].
    case stateFlagsChanged = "state-flags-changed"
    /// Emitted when `widget` is going to be unmapped.
    /// 
    /// A widget is unmapped when either it or any of its parents up to the
    /// toplevel widget have been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer,
    /// it can be used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// Emitted when the `GdkSurface` associated with `widget` is destroyed.
    /// 
    /// This means that [method`Gtk.Widget.unrealize`] has been called
    /// or the widget has been unmapped (that is, it is going to be hidden).
    case unrealize = "unrealize"
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCanFocus = "notify::can-focus"
    /// Whether the widget can receive pointer events.
    case notifyCanTarget = "notify::can-target"
    /// The child widget.
    case notifyChild = "notify::child"
    /// A list of css classes applied to this widget.
    case notifyCssClasses = "notify::css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCssName = "notify::css-name"
    /// The cursor used by `widget`.
    case notifyCursor = "notify::cursor"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case notifyFocusable = "notify::focusable"
    /// How to distribute horizontal space if widget gets extra space.
    case notifyHalign = "notify::halign"
    /// Whether the widget is the default widget.
    case notifyHasDefault = "notify::has-default"
    /// Whether the widget has the input focus.
    case notifyHasFocus = "notify::has-focus"
    /// Whether the button has a frame.
    case notifyHasFrame = "notify::has-frame"
    /// Enables or disables the emission of the `query-tooltip` signal on `widget`.
    /// 
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using [signal`Gtk.Widget::query-tooltip`] to
    /// determine whether it will provide a tooltip or not.
    case notifyHasTooltip = "notify::has-tooltip"
    /// Override for height request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `hexpand` property.
    case notifyHexpandSet = "notify::hexpand-set"
    /// The name of the icon used to automatically populate the button.
    case notifyIconName = "notify::icon-name"
    /// Text of the label inside the button, if the button contains a label widget.
    case notifyLabel = "notify::label"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyLayoutManager = "notify::layout-manager"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on start of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginTop = "notify::margin-top"
    /// The name of the widget.
    case notifyName = "notify::name"
    /// The requested opacity of the widget.
    case notifyOpacity = "notify::opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyOverflow = "notify::overflow"
    /// The parent widget of this widget.
    case notifyParent = "notify::parent"
    /// Whether the widget will receive the default action when it is focused.
    case notifyReceivesDefault = "notify::receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case notifyRoot = "notify::root"
    /// The scale factor of the widget.
    case notifyScaleFactor = "notify::scale-factor"
    /// Whether the widget responds to input.
    case notifySensitive = "notify::sensitive"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with Pango markup.
    /// 
    /// Also see [method`Gtk.Tooltip.set_markup`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see [method`Gtk.Tooltip.set_text`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    /// The URI bound to this button.
    case notifyUri = "notify::uri"
    /// If set, an underline in the text indicates that the following character is
    /// to be used as mnemonic.
    case notifyUseUnderline = "notify::use-underline"
    /// How to distribute vertical space if widget gets extra space.
    case notifyValign = "notify::valign"
    /// Whether to expand vertically.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `vexpand` property.
    case notifyVexpandSet = "notify::vexpand-set"
    /// Whether the widget is visible.
    case notifyVisible = "notify::visible"
    /// The 'visited' state of this button.
    /// 
    /// A visited link is drawn in a different color.
    case notifyVisited = "notify::visited"
    /// Override for width request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case notifyWidthRequest = "notify::width-request"
}

// MARK: LinkButton signals
public extension LinkButtonProtocol {
    /// Connect a Swift signal handler to the given, typed `LinkButtonSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: LinkButtonSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `LinkButtonSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: LinkButtonSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted each time the `GtkLinkButton` is clicked.
    /// 
    /// The default handler will call [func`Gtk.show_uri`] with the URI
    /// stored inside the [property`Gtk.LinkButton:uri`] property.
    /// 
    /// To override the default behavior, you can connect to the
    /// `activate-link` signal and stop the propagation of the signal
    /// by returning `true` from your handler.
    /// - Note: This represents the underlying `activate-link` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: `true` if the signal has been handled
    /// Run the given callback whenever the `activateLink` signal is emitted
    @discardableResult @inlinable func onActivateLink(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LinkButtonRef) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<LinkButtonRef, Bool>
        let cCallback: @convention(c) (gpointer, gpointer) -> gboolean = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(LinkButtonRef(raw: unownedSelf))
            return gboolean((output) ? 1 : 0)
        }
        return connect(
            signal: .activateLink,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `activate-link` signal for using the `connect(signal:)` methods
    static var activateLinkSignal: LinkButtonSignalName { .activateLink }
    
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
    /// - Note: This represents the underlying `notify::uri` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyUri` signal is emitted
    @discardableResult @inlinable func onNotifyUri(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LinkButtonRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LinkButtonRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LinkButtonRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyUri,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::uri` signal for using the `connect(signal:)` methods
    static var notifyUriSignal: LinkButtonSignalName { .notifyUri }
    
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
    /// - Note: This represents the underlying `notify::visited` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyVisited` signal is emitted
    @discardableResult @inlinable func onNotifyVisited(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LinkButtonRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LinkButtonRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LinkButtonRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyVisited,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::visited` signal for using the `connect(signal:)` methods
    static var notifyVisitedSignal: LinkButtonSignalName { .notifyVisited }
    
}

// MARK: LinkButton Class: LinkButtonProtocol extension (methods and fields)
public extension LinkButtonProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLinkButton` instance.
    @inlinable var link_button_ptr: UnsafeMutablePointer<GtkLinkButton>! { return ptr?.assumingMemoryBound(to: GtkLinkButton.self) }

    /// Retrieves the URI of the `GtkLinkButton`.
    @inlinable func getUri() -> String! {
        let rv = gtk_link_button_get_uri(link_button_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Retrieves the “visited” state of the `GtkLinkButton`.
    /// 
    /// The button becomes visited when it is clicked. If the URI
    /// is changed on the button, the “visited” state is unset again.
    /// 
    /// The state may also be changed using [method`Gtk.LinkButton.set_visited`].
    @inlinable func getVisited() -> Bool {
        let rv = ((gtk_link_button_get_visited(link_button_ptr)) != 0)
        return rv
    }

    /// Sets `uri` as the URI where the `GtkLinkButton` points.
    /// 
    /// As a side-effect this unsets the “visited” state of the button.
    @inlinable func set(uri: UnsafePointer<CChar>!) {
        gtk_link_button_set_uri(link_button_ptr, uri)
    
    }

    /// Sets the “visited” state of the `GtkLinkButton`.
    /// 
    /// See [method`Gtk.LinkButton.get_visited`] for more details.
    @inlinable func set(visited: Bool) {
        gtk_link_button_set_visited(link_button_ptr, gboolean((visited) ? 1 : 0))
    
    }
    /// The URI bound to this button.
    @inlinable var uri: String! {
        /// Retrieves the URI of the `GtkLinkButton`.
        get {
            let rv = gtk_link_button_get_uri(link_button_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets `uri` as the URI where the `GtkLinkButton` points.
        /// 
        /// As a side-effect this unsets the “visited” state of the button.
        nonmutating set {
            gtk_link_button_set_uri(link_button_ptr, newValue)
        }
    }

    /// The 'visited' state of this button.
    /// 
    /// A visited link is drawn in a different color.
    @inlinable var visited: Bool {
        /// Retrieves the “visited” state of the `GtkLinkButton`.
        /// 
        /// The button becomes visited when it is clicked. If the URI
        /// is changed on the button, the “visited” state is unset again.
        /// 
        /// The state may also be changed using [method`Gtk.LinkButton.set_visited`].
        get {
            let rv = ((gtk_link_button_get_visited(link_button_ptr)) != 0)
            return rv
        }
        /// Sets the “visited” state of the `GtkLinkButton`.
        /// 
        /// See [method`Gtk.LinkButton.get_visited`] for more details.
        nonmutating set {
            gtk_link_button_set_visited(link_button_ptr, gboolean((newValue) ? 1 : 0))
        }
    }


}



// MARK: - ListBase Class

/// The `ListBaseProtocol` protocol exposes the methods and properties of an underlying `GtkListBase` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListBase`.
/// Alternatively, use `ListBaseRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkListBase` is the abstract base class for GTK's list widgets.
public protocol ListBaseProtocol: WidgetProtocol, OrientableProtocol, ScrollableProtocol {
        /// Untyped pointer to the underlying `GtkListBase` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkListBase` instance.
    var list_base_ptr: UnsafeMutablePointer<GtkListBase>! { get }

    /// Required Initialiser for types conforming to `ListBaseProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ListBaseRef` type acts as a lightweight Swift reference to an underlying `GtkListBase` instance.
/// It exposes methods that can operate on this data type through `ListBaseProtocol` conformance.
/// Use `ListBaseRef` only as an `unowned` reference to an existing `GtkListBase` instance.
///
/// `GtkListBase` is the abstract base class for GTK's list widgets.
public struct ListBaseRef: ListBaseProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkListBase` instance.
    /// For type-safe access, use the generated, typed pointer `list_base_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ListBaseRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkListBase>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkListBase>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkListBase>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkListBase>?) {
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

    /// Reference intialiser for a related type that implements `ListBaseProtocol`
    @inlinable init<T: ListBaseProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ListBaseProtocol>(_ other: T) -> ListBaseRef { ListBaseRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBaseProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBaseProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBaseProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBaseProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBaseProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ListBase` type acts as a reference-counted owner of an underlying `GtkListBase` instance.
/// It provides the methods that can operate on this data type through `ListBaseProtocol` conformance.
/// Use `ListBase` as a strong reference or owner of a `GtkListBase` instance.
///
/// `GtkListBase` is the abstract base class for GTK's list widgets.
open class ListBase: Widget, ListBaseProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBase` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkListBase>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBase` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkListBase>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBase` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBase` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBase` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkListBase>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBase` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkListBase>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkListBase`.
    /// i.e., ownership is transferred to the `ListBase` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkListBase>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ListBaseProtocol`
    /// Will retain `GtkListBase`.
    /// - Parameter other: an instance of a related type that implements `ListBaseProtocol`
    @inlinable public init<T: ListBaseProtocol>(listBase other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBaseProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBaseProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBaseProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBaseProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBaseProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBaseProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBaseProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBaseProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum ListBasePropertyName: String, PropertyNameProtocol {
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    /// Whether the widget can receive pointer events.
    case canTarget = "can-target"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`.
    case cursor = "cursor"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// How to distribute horizontal space if widget gets extra space.
    case halign = "halign"
    /// Whether the widget is the default widget.
    case hasDefault = "has-default"
    /// Whether the widget has the input focus.
    case hasFocus = "has-focus"
    /// Enables or disables the emission of the `query-tooltip` signal on `widget`.
    /// 
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using [signal`Gtk.Widget::query-tooltip`] to
    /// determine whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    /// Override for height request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case heightRequest = "height-request"
    /// Whether to expand horizontally.
    case hexpand = "hexpand"
    /// Whether to use the `hexpand` property.
    case hexpandSet = "hexpand-set"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case layoutManager = "layout-manager"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginEnd = "margin-end"
    /// Margin on start of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginTop = "margin-top"
    /// The name of the widget.
    case name = "name"
    /// The requested opacity of the widget.
    case opacity = "opacity"
    /// The orientation of the list. See GtkOrientable:orientation
    /// for details.
    case orientation = "orientation"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    /// The parent widget of this widget.
    case parent = "parent"
    /// Whether the widget will receive the default action when it is focused.
    case receivesDefault = "receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget.
    case scaleFactor = "scale-factor"
    /// Whether the widget responds to input.
    case sensitive = "sensitive"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with Pango markup.
    /// 
    /// Also see [method`Gtk.Tooltip.set_markup`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see [method`Gtk.Tooltip.set_text`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// How to distribute vertical space if widget gets extra space.
    case valign = "valign"
    /// Whether to expand vertically.
    case vexpand = "vexpand"
    /// Whether to use the `vexpand` property.
    case vexpandSet = "vexpand-set"
    /// Whether the widget is visible.
    case visible = "visible"
    /// Override for width request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case widthRequest = "width-request"
}

public extension ListBaseProtocol {
    /// Bind a `ListBasePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ListBasePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a ListBase property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ListBasePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a ListBase property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ListBasePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum ListBaseSignalName: String, SignalNameProtocol {
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold.
    /// 
    /// May result in finalization of the widget if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// Emitted when the text direction of a widget changes.
    case directionChanged = "direction-changed"
    /// Emitted when `widget` is hidden.
    case hide = "hide"
    /// Emitted if keyboard navigation fails.
    /// 
    /// See [method`Gtk.Widget.keynav_failed`] for details.
    case keynavFailed = "keynav-failed"
    /// Emitted when `widget` is going to be mapped.
    /// 
    /// A widget is mapped when the widget is visible (which is controlled with
    /// [property`Gtk.Widget:visible`]) and all its parents up to the toplevel widget
    /// are also visible.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of [signal`Gtk.Widget::unmap`].
    case map = "map"
    /// Emitted when a widget is activated via a mnemonic.
    /// 
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// Emitted when the focus is moved.
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
    /// Emitted when the widgets tooltip is about to be shown.
    /// 
    /// This happens when the [property`Gtk.Widget:has-tooltip`] property
    /// is `true` and the hover timeout has expired with the cursor hovering
    /// "above" `widget`; or emitted when `widget` got focus in keyboard mode.
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
    /// Emitted when `widget` is associated with a `GdkSurface`.
    /// 
    /// This means that [method`Gtk.Widget.realize`] has been called
    /// or the widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// Emitted when `widget` is shown.
    case show = "show"
    /// Emitted when the widget state changes.
    /// 
    /// See [method`Gtk.Widget.get_state_flags`].
    case stateFlagsChanged = "state-flags-changed"
    /// Emitted when `widget` is going to be unmapped.
    /// 
    /// A widget is unmapped when either it or any of its parents up to the
    /// toplevel widget have been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer,
    /// it can be used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// Emitted when the `GdkSurface` associated with `widget` is destroyed.
    /// 
    /// This means that [method`Gtk.Widget.unrealize`] has been called
    /// or the widget has been unmapped (that is, it is going to be hidden).
    case unrealize = "unrealize"
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCanFocus = "notify::can-focus"
    /// Whether the widget can receive pointer events.
    case notifyCanTarget = "notify::can-target"
    /// A list of css classes applied to this widget.
    case notifyCssClasses = "notify::css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCssName = "notify::css-name"
    /// The cursor used by `widget`.
    case notifyCursor = "notify::cursor"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case notifyFocusable = "notify::focusable"
    /// How to distribute horizontal space if widget gets extra space.
    case notifyHalign = "notify::halign"
    /// Whether the widget is the default widget.
    case notifyHasDefault = "notify::has-default"
    /// Whether the widget has the input focus.
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of the `query-tooltip` signal on `widget`.
    /// 
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using [signal`Gtk.Widget::query-tooltip`] to
    /// determine whether it will provide a tooltip or not.
    case notifyHasTooltip = "notify::has-tooltip"
    /// Override for height request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `hexpand` property.
    case notifyHexpandSet = "notify::hexpand-set"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyLayoutManager = "notify::layout-manager"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on start of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginTop = "notify::margin-top"
    /// The name of the widget.
    case notifyName = "notify::name"
    /// The requested opacity of the widget.
    case notifyOpacity = "notify::opacity"
    /// The orientation of the list. See GtkOrientable:orientation
    /// for details.
    case notifyOrientation = "notify::orientation"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyOverflow = "notify::overflow"
    /// The parent widget of this widget.
    case notifyParent = "notify::parent"
    /// Whether the widget will receive the default action when it is focused.
    case notifyReceivesDefault = "notify::receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case notifyRoot = "notify::root"
    /// The scale factor of the widget.
    case notifyScaleFactor = "notify::scale-factor"
    /// Whether the widget responds to input.
    case notifySensitive = "notify::sensitive"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with Pango markup.
    /// 
    /// Also see [method`Gtk.Tooltip.set_markup`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see [method`Gtk.Tooltip.set_text`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    /// How to distribute vertical space if widget gets extra space.
    case notifyValign = "notify::valign"
    /// Whether to expand vertically.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `vexpand` property.
    case notifyVexpandSet = "notify::vexpand-set"
    /// Whether the widget is visible.
    case notifyVisible = "notify::visible"
    /// Override for width request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case notifyWidthRequest = "notify::width-request"
}

// MARK: ListBase has no signals
// MARK: ListBase Class: ListBaseProtocol extension (methods and fields)
public extension ListBaseProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkListBase` instance.
    @inlinable var list_base_ptr: UnsafeMutablePointer<GtkListBase>! { return ptr?.assumingMemoryBound(to: GtkListBase.self) }



}



// MARK: - ListBox Class

/// The `ListBoxProtocol` protocol exposes the methods and properties of an underlying `GtkListBox` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListBox`.
/// Alternatively, use `ListBoxRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkListBox` is a vertical list.
/// 
/// A `GtkListBox` only contains `GtkListBoxRow` children. These rows can
/// by dynamically sorted and filtered, and headers can be added dynamically
/// depending on the row content. It also allows keyboard and mouse navigation
/// and selection like a typical list.
/// 
/// Using `GtkListBox` is often an alternative to `GtkTreeView`, especially
/// when the list contents has a more complicated layout than what is allowed
/// by a `GtkCellRenderer`, or when the contents is interactive (i.e. has a
/// button in it).
/// 
/// Although a `GtkListBox` must have only `GtkListBoxRow` children, you can
/// add any kind of widget to it via [method`Gtk.ListBox.prepend`],
/// [method`Gtk.ListBox.append`] and [method`Gtk.ListBox.insert`] and a
/// `GtkListBoxRow` widget will automatically be inserted between the list
/// and the widget.
/// 
/// `GtkListBoxRows` can be marked as activatable or selectable. If a row is
/// activatable, [signal`Gtk.ListBox::row-activated`] will be emitted for it when
/// the user tries to activate it. If it is selectable, the row will be marked
/// as selected when the user tries to select it.
/// 
/// # GtkListBox as GtkBuildable
/// 
/// The `GtkListBox` implementation of the `GtkBuildable` interface supports
/// setting a child as the placeholder by specifying “placeholder” as the “type”
/// attribute of a &lt;child&gt; element. See [method`Gtk.ListBox.set_placeholder`]
/// for info.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// list[.separators][.rich-list][.navigation-sidebar]
/// ╰── row[.activatable]
/// ```
/// 
/// `GtkListBox` uses a single CSS node named list. It may carry the .separators
/// style class, when the [property`Gtk.ListBox:show-separators`] property is set.
/// Each `GtkListBoxRow` uses a single CSS node named row. The row nodes get the
/// .activatable style class added when appropriate.
/// 
/// The main list node may also carry style classes to select
/// the style of [list presentation](section-list-widget.html`list-styles`):
/// .rich-list, .navigation-sidebar or .data-table.
/// 
/// # Accessibility
/// 
/// `GtkListBox` uses the `GTK_ACCESSIBLE_ROLE_LIST` role and `GtkListBoxRow` uses
/// the `GTK_ACCESSIBLE_ROLE_LIST_ITEM` role.
public protocol ListBoxProtocol: WidgetProtocol {
        /// Untyped pointer to the underlying `GtkListBox` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkListBox` instance.
    var list_box_ptr: UnsafeMutablePointer<GtkListBox>! { get }

    /// Required Initialiser for types conforming to `ListBoxProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ListBoxRef` type acts as a lightweight Swift reference to an underlying `GtkListBox` instance.
/// It exposes methods that can operate on this data type through `ListBoxProtocol` conformance.
/// Use `ListBoxRef` only as an `unowned` reference to an existing `GtkListBox` instance.
///
/// `GtkListBox` is a vertical list.
/// 
/// A `GtkListBox` only contains `GtkListBoxRow` children. These rows can
/// by dynamically sorted and filtered, and headers can be added dynamically
/// depending on the row content. It also allows keyboard and mouse navigation
/// and selection like a typical list.
/// 
/// Using `GtkListBox` is often an alternative to `GtkTreeView`, especially
/// when the list contents has a more complicated layout than what is allowed
/// by a `GtkCellRenderer`, or when the contents is interactive (i.e. has a
/// button in it).
/// 
/// Although a `GtkListBox` must have only `GtkListBoxRow` children, you can
/// add any kind of widget to it via [method`Gtk.ListBox.prepend`],
/// [method`Gtk.ListBox.append`] and [method`Gtk.ListBox.insert`] and a
/// `GtkListBoxRow` widget will automatically be inserted between the list
/// and the widget.
/// 
/// `GtkListBoxRows` can be marked as activatable or selectable. If a row is
/// activatable, [signal`Gtk.ListBox::row-activated`] will be emitted for it when
/// the user tries to activate it. If it is selectable, the row will be marked
/// as selected when the user tries to select it.
/// 
/// # GtkListBox as GtkBuildable
/// 
/// The `GtkListBox` implementation of the `GtkBuildable` interface supports
/// setting a child as the placeholder by specifying “placeholder” as the “type”
/// attribute of a &lt;child&gt; element. See [method`Gtk.ListBox.set_placeholder`]
/// for info.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// list[.separators][.rich-list][.navigation-sidebar]
/// ╰── row[.activatable]
/// ```
/// 
/// `GtkListBox` uses a single CSS node named list. It may carry the .separators
/// style class, when the [property`Gtk.ListBox:show-separators`] property is set.
/// Each `GtkListBoxRow` uses a single CSS node named row. The row nodes get the
/// .activatable style class added when appropriate.
/// 
/// The main list node may also carry style classes to select
/// the style of [list presentation](section-list-widget.html`list-styles`):
/// .rich-list, .navigation-sidebar or .data-table.
/// 
/// # Accessibility
/// 
/// `GtkListBox` uses the `GTK_ACCESSIBLE_ROLE_LIST` role and `GtkListBoxRow` uses
/// the `GTK_ACCESSIBLE_ROLE_LIST_ITEM` role.
public struct ListBoxRef: ListBoxProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkListBox` instance.
    /// For type-safe access, use the generated, typed pointer `list_box_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ListBoxRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkListBox>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkListBox>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkListBox>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkListBox>?) {
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

    /// Reference intialiser for a related type that implements `ListBoxProtocol`
    @inlinable init<T: ListBoxProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ListBoxProtocol>(_ other: T) -> ListBoxRef { ListBoxRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkListBox` container.
    @inlinable init() {
        let rv = gtk_list_box_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `ListBox` type acts as a reference-counted owner of an underlying `GtkListBox` instance.
/// It provides the methods that can operate on this data type through `ListBoxProtocol` conformance.
/// Use `ListBox` as a strong reference or owner of a `GtkListBox` instance.
///
/// `GtkListBox` is a vertical list.
/// 
/// A `GtkListBox` only contains `GtkListBoxRow` children. These rows can
/// by dynamically sorted and filtered, and headers can be added dynamically
/// depending on the row content. It also allows keyboard and mouse navigation
/// and selection like a typical list.
/// 
/// Using `GtkListBox` is often an alternative to `GtkTreeView`, especially
/// when the list contents has a more complicated layout than what is allowed
/// by a `GtkCellRenderer`, or when the contents is interactive (i.e. has a
/// button in it).
/// 
/// Although a `GtkListBox` must have only `GtkListBoxRow` children, you can
/// add any kind of widget to it via [method`Gtk.ListBox.prepend`],
/// [method`Gtk.ListBox.append`] and [method`Gtk.ListBox.insert`] and a
/// `GtkListBoxRow` widget will automatically be inserted between the list
/// and the widget.
/// 
/// `GtkListBoxRows` can be marked as activatable or selectable. If a row is
/// activatable, [signal`Gtk.ListBox::row-activated`] will be emitted for it when
/// the user tries to activate it. If it is selectable, the row will be marked
/// as selected when the user tries to select it.
/// 
/// # GtkListBox as GtkBuildable
/// 
/// The `GtkListBox` implementation of the `GtkBuildable` interface supports
/// setting a child as the placeholder by specifying “placeholder” as the “type”
/// attribute of a &lt;child&gt; element. See [method`Gtk.ListBox.set_placeholder`]
/// for info.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// list[.separators][.rich-list][.navigation-sidebar]
/// ╰── row[.activatable]
/// ```
/// 
/// `GtkListBox` uses a single CSS node named list. It may carry the .separators
/// style class, when the [property`Gtk.ListBox:show-separators`] property is set.
/// Each `GtkListBoxRow` uses a single CSS node named row. The row nodes get the
/// .activatable style class added when appropriate.
/// 
/// The main list node may also carry style classes to select
/// the style of [list presentation](section-list-widget.html`list-styles`):
/// .rich-list, .navigation-sidebar or .data-table.
/// 
/// # Accessibility
/// 
/// `GtkListBox` uses the `GTK_ACCESSIBLE_ROLE_LIST` role and `GtkListBoxRow` uses
/// the `GTK_ACCESSIBLE_ROLE_LIST_ITEM` role.
open class ListBox: Widget, ListBoxProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBox` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkListBox>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBox` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkListBox>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBox` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBox` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBox` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkListBox>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBox` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkListBox>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkListBox`.
    /// i.e., ownership is transferred to the `ListBox` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkListBox>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ListBoxProtocol`
    /// Will retain `GtkListBox`.
    /// - Parameter other: an instance of a related type that implements `ListBoxProtocol`
    @inlinable public init<T: ListBoxProtocol>(listBox other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkListBox` container.
    @inlinable public init() {
        let rv = gtk_list_box_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum ListBoxPropertyName: String, PropertyNameProtocol {
    /// Whether to accept unpaired release events.
    case acceptUnpairedRelease = "accept-unpaired-release"
    /// Determines whether children can be activated with a single
    /// click, or require a double-click.
    case activateOnSingleClick = "activate-on-single-click"
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    /// Whether the widget can receive pointer events.
    case canTarget = "can-target"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`.
    case cursor = "cursor"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// How to distribute horizontal space if widget gets extra space.
    case halign = "halign"
    /// Whether the widget is the default widget.
    case hasDefault = "has-default"
    /// Whether the widget has the input focus.
    case hasFocus = "has-focus"
    /// Enables or disables the emission of the `query-tooltip` signal on `widget`.
    /// 
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using [signal`Gtk.Widget::query-tooltip`] to
    /// determine whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    /// Override for height request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case heightRequest = "height-request"
    /// Whether to expand horizontally.
    case hexpand = "hexpand"
    /// Whether to use the `hexpand` property.
    case hexpandSet = "hexpand-set"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case layoutManager = "layout-manager"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginEnd = "margin-end"
    /// Margin on start of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginTop = "margin-top"
    /// The name of the widget.
    case name = "name"
    /// The requested opacity of the widget.
    case opacity = "opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    /// The parent widget of this widget.
    case parent = "parent"
    /// Whether the widget will receive the default action when it is focused.
    case receivesDefault = "receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget.
    case scaleFactor = "scale-factor"
    /// The selection mode used by the list box.
    case selectionMode = "selection-mode"
    /// Whether the widget responds to input.
    case sensitive = "sensitive"
    /// Whether to show separators between rows.
    case showSeparators = "show-separators"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with Pango markup.
    /// 
    /// Also see [method`Gtk.Tooltip.set_markup`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see [method`Gtk.Tooltip.set_text`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// How to distribute vertical space if widget gets extra space.
    case valign = "valign"
    /// Whether to expand vertically.
    case vexpand = "vexpand"
    /// Whether to use the `vexpand` property.
    case vexpandSet = "vexpand-set"
    /// Whether the widget is visible.
    case visible = "visible"
    /// Override for width request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case widthRequest = "width-request"
}

public extension ListBoxProtocol {
    /// Bind a `ListBoxPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ListBoxPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a ListBox property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ListBoxPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a ListBox property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ListBoxPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum ListBoxSignalName: String, SignalNameProtocol {
    case activateCursorRow = "activate-cursor-row"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold.
    /// 
    /// May result in finalization of the widget if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// Emitted when the text direction of a widget changes.
    case directionChanged = "direction-changed"
    /// Emitted when `widget` is hidden.
    case hide = "hide"
    /// Emitted if keyboard navigation fails.
    /// 
    /// See [method`Gtk.Widget.keynav_failed`] for details.
    case keynavFailed = "keynav-failed"
    /// Emitted when `widget` is going to be mapped.
    /// 
    /// A widget is mapped when the widget is visible (which is controlled with
    /// [property`Gtk.Widget:visible`]) and all its parents up to the toplevel widget
    /// are also visible.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of [signal`Gtk.Widget::unmap`].
    case map = "map"
    /// Emitted when a widget is activated via a mnemonic.
    /// 
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    case moveCursor = "move-cursor"
    /// Emitted when the focus is moved.
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
    /// Emitted when the widgets tooltip is about to be shown.
    /// 
    /// This happens when the [property`Gtk.Widget:has-tooltip`] property
    /// is `true` and the hover timeout has expired with the cursor hovering
    /// "above" `widget`; or emitted when `widget` got focus in keyboard mode.
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
    /// Emitted when `widget` is associated with a `GdkSurface`.
    /// 
    /// This means that [method`Gtk.Widget.realize`] has been called
    /// or the widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// Emitted when a row has been activated by the user.
    case rowActivated = "row-activated"
    /// Emitted when a new row is selected, or (with a `nil` `row`)
    /// when the selection is cleared.
    /// 
    /// When the `box` is using `GTK_SELECTION_MULTIPLE`, this signal will not
    /// give you the full picture of selection changes, and you should use
    /// the [signal`Gtk.ListBox::selected-rows-changed`] signal instead.
    case rowSelected = "row-selected"
    /// Emitted to select all children of the box, if the selection
    /// mode permits it.
    /// 
    /// This is a [keybinding signal](class.SignalAction.html).
    /// 
    /// The default binding for this signal is &lt;kbd&gt;Ctrl&lt;/kbd&gt;-&lt;kbd&gt;a&lt;/kbd&gt;.
    case selectAll = "select-all"
    /// Emitted when the set of selected rows changes.
    case selectedRowsChanged = "selected-rows-changed"
    /// Emitted when `widget` is shown.
    case show = "show"
    /// Emitted when the widget state changes.
    /// 
    /// See [method`Gtk.Widget.get_state_flags`].
    case stateFlagsChanged = "state-flags-changed"
    case toggleCursorRow = "toggle-cursor-row"
    /// Emitted when `widget` is going to be unmapped.
    /// 
    /// A widget is unmapped when either it or any of its parents up to the
    /// toplevel widget have been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer,
    /// it can be used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// Emitted when the `GdkSurface` associated with `widget` is destroyed.
    /// 
    /// This means that [method`Gtk.Widget.unrealize`] has been called
    /// or the widget has been unmapped (that is, it is going to be hidden).
    case unrealize = "unrealize"
    /// Emitted to unselect all children of the box, if the selection
    /// mode permits it.
    /// 
    /// This is a [keybinding signal](class.SignalAction.html).
    /// 
    /// The default binding for this signal is
    /// &lt;kbd&gt;Ctrl&lt;/kbd&gt;-&lt;kbd&gt;Shift&lt;/kbd&gt;-&lt;kbd&gt;a&lt;/kbd&gt;.
    case unselectAll = "unselect-all"
    /// Whether to accept unpaired release events.
    case notifyAcceptUnpairedRelease = "notify::accept-unpaired-release"
    /// Determines whether children can be activated with a single
    /// click, or require a double-click.
    case notifyActivateOnSingleClick = "notify::activate-on-single-click"
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCanFocus = "notify::can-focus"
    /// Whether the widget can receive pointer events.
    case notifyCanTarget = "notify::can-target"
    /// A list of css classes applied to this widget.
    case notifyCssClasses = "notify::css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCssName = "notify::css-name"
    /// The cursor used by `widget`.
    case notifyCursor = "notify::cursor"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case notifyFocusable = "notify::focusable"
    /// How to distribute horizontal space if widget gets extra space.
    case notifyHalign = "notify::halign"
    /// Whether the widget is the default widget.
    case notifyHasDefault = "notify::has-default"
    /// Whether the widget has the input focus.
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of the `query-tooltip` signal on `widget`.
    /// 
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using [signal`Gtk.Widget::query-tooltip`] to
    /// determine whether it will provide a tooltip or not.
    case notifyHasTooltip = "notify::has-tooltip"
    /// Override for height request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `hexpand` property.
    case notifyHexpandSet = "notify::hexpand-set"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyLayoutManager = "notify::layout-manager"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on start of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginTop = "notify::margin-top"
    /// The name of the widget.
    case notifyName = "notify::name"
    /// The requested opacity of the widget.
    case notifyOpacity = "notify::opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyOverflow = "notify::overflow"
    /// The parent widget of this widget.
    case notifyParent = "notify::parent"
    /// Whether the widget will receive the default action when it is focused.
    case notifyReceivesDefault = "notify::receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case notifyRoot = "notify::root"
    /// The scale factor of the widget.
    case notifyScaleFactor = "notify::scale-factor"
    /// The selection mode used by the list box.
    case notifySelectionMode = "notify::selection-mode"
    /// Whether the widget responds to input.
    case notifySensitive = "notify::sensitive"
    /// Whether to show separators between rows.
    case notifyShowSeparators = "notify::show-separators"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with Pango markup.
    /// 
    /// Also see [method`Gtk.Tooltip.set_markup`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see [method`Gtk.Tooltip.set_text`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    /// How to distribute vertical space if widget gets extra space.
    case notifyValign = "notify::valign"
    /// Whether to expand vertically.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `vexpand` property.
    case notifyVexpandSet = "notify::vexpand-set"
    /// Whether the widget is visible.
    case notifyVisible = "notify::visible"
    /// Override for width request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case notifyWidthRequest = "notify::width-request"
}

// MARK: ListBox signals
public extension ListBoxProtocol {
    /// Connect a Swift signal handler to the given, typed `ListBoxSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: ListBoxSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `ListBoxSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: ListBoxSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// - Note: This represents the underlying `activate-cursor-row` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `activateCursorRow` signal is emitted
    @discardableResult @inlinable func onActivateCursorRow(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ListBoxRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<ListBoxRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ListBoxRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .activateCursorRow,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `activate-cursor-row` signal for using the `connect(signal:)` methods
    static var activateCursorRowSignal: ListBoxSignalName { .activateCursorRow }
    
    /// - Note: This represents the underlying `move-cursor` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter object: none
    /// - Parameter p0: none
    /// - Parameter p1: none
    /// - Parameter p2: none
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `moveCursor` signal is emitted
    @discardableResult @inlinable func onMoveCursor(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ListBoxRef, _ object: MovementStep, _ p0: Int, _ p1: Bool, _ p2: Bool) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder5<ListBoxRef, MovementStep, Int, Bool, Bool, Void>
        let cCallback: @convention(c) (gpointer, UInt32, gint, gboolean, gboolean, gpointer) -> Void = { unownedSelf, arg1, arg2, arg3, arg4, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ListBoxRef(raw: unownedSelf), MovementStep(arg1), Int(arg2), ((arg3) != 0), ((arg4) != 0))
            return output
        }
        return connect(
            signal: .moveCursor,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `move-cursor` signal for using the `connect(signal:)` methods
    static var moveCursorSignal: ListBoxSignalName { .moveCursor }
    
    /// Emitted when a row has been activated by the user.
    /// - Note: This represents the underlying `row-activated` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter row: the activated row
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `rowActivated` signal is emitted
    @discardableResult @inlinable func onRowActivated(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ListBoxRef, _ row: ListBoxRowRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ListBoxRef, ListBoxRowRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ListBoxRef(raw: unownedSelf), ListBoxRowRef(raw: arg1))
            return output
        }
        return connect(
            signal: .rowActivated,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `row-activated` signal for using the `connect(signal:)` methods
    static var rowActivatedSignal: ListBoxSignalName { .rowActivated }
    
    /// Emitted when a new row is selected, or (with a `nil` `row`)
    /// when the selection is cleared.
    /// 
    /// When the `box` is using `GTK_SELECTION_MULTIPLE`, this signal will not
    /// give you the full picture of selection changes, and you should use
    /// the [signal`Gtk.ListBox::selected-rows-changed`] signal instead.
    /// - Note: This represents the underlying `row-selected` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter row: the selected row
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `rowSelected` signal is emitted
    @discardableResult @inlinable func onRowSelected(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ListBoxRef, _ row: ListBoxRowRef?) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ListBoxRef, ListBoxRowRef?, Void>
        let cCallback: @convention(c) (gpointer, gpointer?, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ListBoxRef(raw: unownedSelf), arg1.flatMap(ListBoxRowRef.init(raw:)))
            return output
        }
        return connect(
            signal: .rowSelected,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `row-selected` signal for using the `connect(signal:)` methods
    static var rowSelectedSignal: ListBoxSignalName { .rowSelected }
    
    /// Emitted to select all children of the box, if the selection
    /// mode permits it.
    /// 
    /// This is a [keybinding signal](class.SignalAction.html).
    /// 
    /// The default binding for this signal is &lt;kbd&gt;Ctrl&lt;/kbd&gt;-&lt;kbd&gt;a&lt;/kbd&gt;.
    /// - Note: This represents the underlying `select-all` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `selectAll` signal is emitted
    @discardableResult @inlinable func onSelectAll(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ListBoxRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<ListBoxRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ListBoxRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .selectAll,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `select-all` signal for using the `connect(signal:)` methods
    static var selectAllSignal: ListBoxSignalName { .selectAll }
    
    /// Emitted when the set of selected rows changes.
    /// - Note: This represents the underlying `selected-rows-changed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `selectedRowsChanged` signal is emitted
    @discardableResult @inlinable func onSelectedRowsChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ListBoxRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<ListBoxRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ListBoxRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .selectedRowsChanged,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `selected-rows-changed` signal for using the `connect(signal:)` methods
    static var selectedRowsChangedSignal: ListBoxSignalName { .selectedRowsChanged }
    
    /// - Note: This represents the underlying `toggle-cursor-row` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `toggleCursorRow` signal is emitted
    @discardableResult @inlinable func onToggleCursorRow(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ListBoxRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<ListBoxRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ListBoxRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .toggleCursorRow,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `toggle-cursor-row` signal for using the `connect(signal:)` methods
    static var toggleCursorRowSignal: ListBoxSignalName { .toggleCursorRow }
    
    /// Emitted to unselect all children of the box, if the selection
    /// mode permits it.
    /// 
    /// This is a [keybinding signal](class.SignalAction.html).
    /// 
    /// The default binding for this signal is
    /// &lt;kbd&gt;Ctrl&lt;/kbd&gt;-&lt;kbd&gt;Shift&lt;/kbd&gt;-&lt;kbd&gt;a&lt;/kbd&gt;.
    /// - Note: This represents the underlying `unselect-all` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `unselectAll` signal is emitted
    @discardableResult @inlinable func onUnselectAll(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ListBoxRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<ListBoxRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ListBoxRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .unselectAll,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `unselect-all` signal for using the `connect(signal:)` methods
    static var unselectAllSignal: ListBoxSignalName { .unselectAll }
    
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
    /// - Note: This represents the underlying `notify::accept-unpaired-release` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyAcceptUnpairedRelease` signal is emitted
    @discardableResult @inlinable func onNotifyAcceptUnpairedRelease(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ListBoxRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ListBoxRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ListBoxRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyAcceptUnpairedRelease,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::accept-unpaired-release` signal for using the `connect(signal:)` methods
    static var notifyAcceptUnpairedReleaseSignal: ListBoxSignalName { .notifyAcceptUnpairedRelease }
    
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
    /// - Note: This represents the underlying `notify::activate-on-single-click` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyActivateOnSingleClick` signal is emitted
    @discardableResult @inlinable func onNotifyActivateOnSingleClick(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ListBoxRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ListBoxRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ListBoxRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyActivateOnSingleClick,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::activate-on-single-click` signal for using the `connect(signal:)` methods
    static var notifyActivateOnSingleClickSignal: ListBoxSignalName { .notifyActivateOnSingleClick }
    
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
    /// - Note: This represents the underlying `notify::selection-mode` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifySelectionMode` signal is emitted
    @discardableResult @inlinable func onNotifySelectionMode(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ListBoxRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ListBoxRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ListBoxRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifySelectionMode,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::selection-mode` signal for using the `connect(signal:)` methods
    static var notifySelectionModeSignal: ListBoxSignalName { .notifySelectionMode }
    
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
    /// - Note: This represents the underlying `notify::show-separators` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyShowSeparators` signal is emitted
    @discardableResult @inlinable func onNotifyShowSeparators(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ListBoxRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ListBoxRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ListBoxRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyShowSeparators,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::show-separators` signal for using the `connect(signal:)` methods
    static var notifyShowSeparatorsSignal: ListBoxSignalName { .notifyShowSeparators }
    
}

// MARK: ListBox Class: ListBoxProtocol extension (methods and fields)
public extension ListBoxProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkListBox` instance.
    @inlinable var list_box_ptr: UnsafeMutablePointer<GtkListBox>! { return ptr?.assumingMemoryBound(to: GtkListBox.self) }

    /// Append a widget to the list.
    /// 
    /// If a sort function is set, the widget will
    /// actually be inserted at the calculated position.
    @inlinable func append<WidgetT: WidgetProtocol>(child: WidgetT) {
        gtk_list_box_append(list_box_ptr, child.widget_ptr)
    
    }

    /// Binds `model` to `box`.
    /// 
    /// If `box` was already bound to a model, that previous binding is
    /// destroyed.
    /// 
    /// The contents of `box` are cleared and then filled with widgets that
    /// represent items from `model`. `box` is updated whenever `model` changes.
    /// If `model` is `nil`, `box` is left empty.
    /// 
    /// It is undefined to add or remove widgets directly (for example, with
    /// [method`Gtk.ListBox.insert`]) while `box` is bound to a model.
    /// 
    /// Note that using a model is incompatible with the filtering and sorting
    /// functionality in `GtkListBox`. When using a model, filtering and sorting
    /// should be implemented by the model.
    @inlinable func bind(model: GIO.ListModelRef? = nil, createWidgetFunc: GtkListBoxCreateWidgetFunc? = nil, userData: gpointer! = nil, userDataFreeFunc: GDestroyNotify?) {
        gtk_list_box_bind_model(list_box_ptr, model?.list_model_ptr, createWidgetFunc, userData, userDataFreeFunc)
    
    }
    /// Binds `model` to `box`.
    /// 
    /// If `box` was already bound to a model, that previous binding is
    /// destroyed.
    /// 
    /// The contents of `box` are cleared and then filled with widgets that
    /// represent items from `model`. `box` is updated whenever `model` changes.
    /// If `model` is `nil`, `box` is left empty.
    /// 
    /// It is undefined to add or remove widgets directly (for example, with
    /// [method`Gtk.ListBox.insert`]) while `box` is bound to a model.
    /// 
    /// Note that using a model is incompatible with the filtering and sorting
    /// functionality in `GtkListBox`. When using a model, filtering and sorting
    /// should be implemented by the model.
    @inlinable func bind<ListModelT: GIO.ListModelProtocol>(model: ListModelT?, createWidgetFunc: GtkListBoxCreateWidgetFunc? = nil, userData: gpointer! = nil, userDataFreeFunc: GDestroyNotify?) {
        gtk_list_box_bind_model(list_box_ptr, model?.list_model_ptr, createWidgetFunc, userData, userDataFreeFunc)
    
    }

    /// Add a drag highlight to a row.
    /// 
    /// This is a helper function for implementing DnD onto a `GtkListBox`.
    /// The passed in `row` will be highlighted by setting the
    /// `GTK_STATE_FLAG_DROP_ACTIVE` state and any previously highlighted
    /// row will be unhighlighted.
    /// 
    /// The row will also be unhighlighted when the widget gets
    /// a drag leave event.
    @inlinable func dragHighlight<ListBoxRowT: ListBoxRowProtocol>(row: ListBoxRowT) {
        gtk_list_box_drag_highlight_row(list_box_ptr, row.list_box_row_ptr)
    
    }

    /// If a row has previously been highlighted via `gtk_list_box_drag_highlight_row()`,
    /// it will have the highlight removed.
    @inlinable func dragUnhighlightRow() {
        gtk_list_box_drag_unhighlight_row(list_box_ptr)
    
    }

    /// Returns whether rows activate on single clicks.
    @inlinable func getActivateOnSingleClick() -> Bool {
        let rv = ((gtk_list_box_get_activate_on_single_click(list_box_ptr)) != 0)
        return rv
    }

    /// Gets the adjustment (if any) that the widget uses to
    /// for vertical scrolling.
    @inlinable func getAdjustment() -> AdjustmentRef! {
        let rv = AdjustmentRef(gconstpointer: gconstpointer(gtk_list_box_get_adjustment(list_box_ptr)))
        return rv
    }

    /// Gets the n-th child in the list (not counting headers).
    /// 
    /// If `index_` is negative or larger than the number of items in the
    /// list, `nil` is returned.
    @inlinable func getRowAtIndex(index_: Int) -> ListBoxRowRef! {
        let rv = ListBoxRowRef(gconstpointer: gconstpointer(gtk_list_box_get_row_at_index(list_box_ptr, gint(index_))))
        return rv
    }

    /// Gets the row at the `y` position.
    @inlinable func getRowAt(y: Int) -> ListBoxRowRef! {
        let rv = ListBoxRowRef(gconstpointer: gconstpointer(gtk_list_box_get_row_at_y(list_box_ptr, gint(y))))
        return rv
    }

    /// Gets the selected row, or `nil` if no rows are selected.
    /// 
    /// Note that the box may allow multiple selection, in which
    /// case you should use [method`Gtk.ListBox.selected_foreach`] to
    /// find all selected rows.
    @inlinable func getSelectedRow() -> ListBoxRowRef! {
        let rv = ListBoxRowRef(gconstpointer: gconstpointer(gtk_list_box_get_selected_row(list_box_ptr)))
        return rv
    }

    /// Creates a list of all selected children.
    @inlinable func getSelectedRows() -> GLib.ListRef! {
        let rv = GLib.ListRef(gtk_list_box_get_selected_rows(list_box_ptr))
        return rv
    }

    /// Gets the selection mode of the listbox.
    @inlinable func getSelectionMode() -> GtkSelectionMode {
        let rv = gtk_list_box_get_selection_mode(list_box_ptr)
        return rv
    }

    /// Returns whether the list box should show separators
    /// between rows.
    @inlinable func getShowSeparators() -> Bool {
        let rv = ((gtk_list_box_get_show_separators(list_box_ptr)) != 0)
        return rv
    }

    /// Insert the `child` into the `box` at `position`.
    /// 
    /// If a sort function is
    /// set, the widget will actually be inserted at the calculated position.
    /// 
    /// If `position` is -1, or larger than the total number of items in the
    /// `box`, then the `child` will be appended to the end.
    @inlinable func insert<WidgetT: WidgetProtocol>(child: WidgetT, position: Int) {
        gtk_list_box_insert(list_box_ptr, child.widget_ptr, gint(position))
    
    }

    /// Update the filtering for all rows.
    /// 
    /// Call this when result
    /// of the filter function on the `box` is changed due
    /// to an external factor. For instance, this would be used
    /// if the filter function just looked for a specific search
    /// string and the entry with the search string has changed.
    @inlinable func invalidateFilter() {
        gtk_list_box_invalidate_filter(list_box_ptr)
    
    }

    /// Update the separators for all rows.
    /// 
    /// Call this when result
    /// of the header function on the `box` is changed due
    /// to an external factor.
    @inlinable func invalidateHeaders() {
        gtk_list_box_invalidate_headers(list_box_ptr)
    
    }

    /// Update the sorting for all rows.
    /// 
    /// Call this when result
    /// of the sort function on the `box` is changed due
    /// to an external factor.
    @inlinable func invalidateSort() {
        gtk_list_box_invalidate_sort(list_box_ptr)
    
    }

    /// Prepend a widget to the list.
    /// 
    /// If a sort function is set, the widget will
    /// actually be inserted at the calculated position.
    @inlinable func prepend<WidgetT: WidgetProtocol>(child: WidgetT) {
        gtk_list_box_prepend(list_box_ptr, child.widget_ptr)
    
    }

    /// Removes a child from `box`.
    @inlinable func remove<WidgetT: WidgetProtocol>(child: WidgetT) {
        gtk_list_box_remove(list_box_ptr, child.widget_ptr)
    
    }

    /// Select all children of `box`, if the selection mode allows it.
    @inlinable func selectAll() {
        gtk_list_box_select_all(list_box_ptr)
    
    }

    /// Make `row` the currently selected row.
    @inlinable func select(row: ListBoxRowRef? = nil) {
        gtk_list_box_select_row(list_box_ptr, row?.list_box_row_ptr)
    
    }
    /// Make `row` the currently selected row.
    @inlinable func select<ListBoxRowT: ListBoxRowProtocol>(row: ListBoxRowT?) {
        gtk_list_box_select_row(list_box_ptr, row?.list_box_row_ptr)
    
    }

    /// Calls a function for each selected child.
    /// 
    /// Note that the selection cannot be modified from within this function.
    @inlinable func selectedForeach(`func`: GtkListBoxForeachFunc?, data: gpointer! = nil) {
        gtk_list_box_selected_foreach(list_box_ptr, `func`, data)
    
    }

    /// If `single` is `true`, rows will be activated when you click on them,
    /// otherwise you need to double-click.
    @inlinable func setActivateOnSingleClick(single: Bool) {
        gtk_list_box_set_activate_on_single_click(list_box_ptr, gboolean((single) ? 1 : 0))
    
    }

    /// Sets the adjustment (if any) that the widget uses to
    /// for vertical scrolling.
    /// 
    /// For instance, this is used to get the page size for
    /// PageUp/Down key handling.
    /// 
    /// In the normal case when the `box` is packed inside
    /// a `GtkScrolledWindow` the adjustment from that will
    /// be picked up automatically, so there is no need
    /// to manually do that.
    @inlinable func set(adjustment: AdjustmentRef? = nil) {
        gtk_list_box_set_adjustment(list_box_ptr, adjustment?.adjustment_ptr)
    
    }
    /// Sets the adjustment (if any) that the widget uses to
    /// for vertical scrolling.
    /// 
    /// For instance, this is used to get the page size for
    /// PageUp/Down key handling.
    /// 
    /// In the normal case when the `box` is packed inside
    /// a `GtkScrolledWindow` the adjustment from that will
    /// be picked up automatically, so there is no need
    /// to manually do that.
    @inlinable func set<AdjustmentT: AdjustmentProtocol>(adjustment: AdjustmentT?) {
        gtk_list_box_set_adjustment(list_box_ptr, adjustment?.adjustment_ptr)
    
    }

    /// By setting a filter function on the `box` one can decide dynamically which
    /// of the rows to show.
    /// 
    /// For instance, to implement a search function on a list that
    /// filters the original list to only show the matching rows.
    /// 
    /// The `filter_func` will be called for each row after the call, and
    /// it will continue to be called each time a row changes (via
    /// [method`Gtk.ListBoxRow.changed`]) or when [method`Gtk.ListBox.invalidate_filter`]
    /// is called.
    /// 
    /// Note that using a filter function is incompatible with using a model
    /// (see [method`Gtk.ListBox.bind_model`]).
    @inlinable func set(filterFunc: GtkListBoxFilterFunc? = nil, userData: gpointer! = nil, destroy: GDestroyNotify?) {
        gtk_list_box_set_filter_func(list_box_ptr, filterFunc, userData, destroy)
    
    }

    /// Sets a header function.
    /// 
    /// By setting a header function on the `box` one can dynamically add headers
    /// in front of rows, depending on the contents of the row and its position
    /// in the list.
    /// 
    /// For instance, one could use it to add headers in front of the first item
    /// of a new kind, in a list sorted by the kind.
    /// 
    /// The `update_header` can look at the current header widget using
    /// [method`Gtk.ListBoxRow.get_header`] and either update the state of the widget
    /// as needed, or set a new one using [method`Gtk.ListBoxRow.set_header`]. If no
    /// header is needed, set the header to `nil`.
    /// 
    /// Note that you may get many calls `update_header` to this for a particular
    /// row when e.g. changing things that don’t affect the header. In this case
    /// it is important for performance to not blindly replace an existing header
    /// with an identical one.
    /// 
    /// The `update_header` function will be called for each row after the call,
    /// and it will continue to be called each time a row changes (via
    /// [method`Gtk.ListBoxRow.changed`]) and when the row before changes (either
    /// by [method`Gtk.ListBoxRow.changed`] on the previous row, or when the previous
    /// row becomes a different row). It is also called for all rows when
    /// [method`Gtk.ListBox.invalidate_headers`] is called.
    @inlinable func setHeaderFunc(updateHeader: GtkListBoxUpdateHeaderFunc? = nil, userData: gpointer! = nil, destroy: GDestroyNotify?) {
        gtk_list_box_set_header_func(list_box_ptr, updateHeader, userData, destroy)
    
    }

    /// Sets the placeholder widget that is shown in the list when
    /// it doesn't display any visible children.
    @inlinable func set(placeholder: WidgetRef? = nil) {
        gtk_list_box_set_placeholder(list_box_ptr, placeholder?.widget_ptr)
    
    }
    /// Sets the placeholder widget that is shown in the list when
    /// it doesn't display any visible children.
    @inlinable func set<WidgetT: WidgetProtocol>(placeholder: WidgetT?) {
        gtk_list_box_set_placeholder(list_box_ptr, placeholder?.widget_ptr)
    
    }

    /// Sets how selection works in the listbox.
    @inlinable func setSelection(mode: GtkSelectionMode) {
        gtk_list_box_set_selection_mode(list_box_ptr, mode)
    
    }

    /// Sets whether the list box should show separators
    /// between rows.
    @inlinable func set(showSeparators: Bool) {
        gtk_list_box_set_show_separators(list_box_ptr, gboolean((showSeparators) ? 1 : 0))
    
    }

    /// Sets a sort function.
    /// 
    /// By setting a sort function on the `box` one can dynamically reorder
    /// the rows of the list, based on the contents of the rows.
    /// 
    /// The `sort_func` will be called for each row after the call, and will
    /// continue to be called each time a row changes (via
    /// [method`Gtk.ListBoxRow.changed`]) and when [method`Gtk.ListBox.invalidate_sort`]
    /// is called.
    /// 
    /// Note that using a sort function is incompatible with using a model
    /// (see [method`Gtk.ListBox.bind_model`]).
    @inlinable func set(sortFunc: GtkListBoxSortFunc? = nil, userData: gpointer! = nil, destroy: GDestroyNotify?) {
        gtk_list_box_set_sort_func(list_box_ptr, sortFunc, userData, destroy)
    
    }

    /// Unselect all children of `box`, if the selection mode allows it.
    @inlinable func unselectAll() {
        gtk_list_box_unselect_all(list_box_ptr)
    
    }

    /// Unselects a single row of `box`, if the selection mode allows it.
    @inlinable func unselect<ListBoxRowT: ListBoxRowProtocol>(row: ListBoxRowT) {
        gtk_list_box_unselect_row(list_box_ptr, row.list_box_row_ptr)
    
    }
    /// Returns whether rows activate on single clicks.
    @inlinable var activateOnSingleClick: Bool {
        /// Returns whether rows activate on single clicks.
        get {
            let rv = ((gtk_list_box_get_activate_on_single_click(list_box_ptr)) != 0)
            return rv
        }
        /// If `single` is `true`, rows will be activated when you click on them,
        /// otherwise you need to double-click.
        nonmutating set {
            gtk_list_box_set_activate_on_single_click(list_box_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the adjustment (if any) that the widget uses to
    /// for vertical scrolling.
    @inlinable var adjustment: AdjustmentRef! {
        /// Gets the adjustment (if any) that the widget uses to
        /// for vertical scrolling.
        get {
            let rv = AdjustmentRef(gconstpointer: gconstpointer(gtk_list_box_get_adjustment(list_box_ptr)))
            return rv
        }
        /// Sets the adjustment (if any) that the widget uses to
        /// for vertical scrolling.
        /// 
        /// For instance, this is used to get the page size for
        /// PageUp/Down key handling.
        /// 
        /// In the normal case when the `box` is packed inside
        /// a `GtkScrolledWindow` the adjustment from that will
        /// be picked up automatically, so there is no need
        /// to manually do that.
        nonmutating set {
            gtk_list_box_set_adjustment(list_box_ptr, UnsafeMutablePointer<GtkAdjustment>(newValue?.adjustment_ptr))
        }
    }

    /// Gets the selected row, or `nil` if no rows are selected.
    /// 
    /// Note that the box may allow multiple selection, in which
    /// case you should use [method`Gtk.ListBox.selected_foreach`] to
    /// find all selected rows.
    @inlinable var selectedRow: ListBoxRowRef! {
        /// Gets the selected row, or `nil` if no rows are selected.
        /// 
        /// Note that the box may allow multiple selection, in which
        /// case you should use [method`Gtk.ListBox.selected_foreach`] to
        /// find all selected rows.
        get {
            let rv = ListBoxRowRef(gconstpointer: gconstpointer(gtk_list_box_get_selected_row(list_box_ptr)))
            return rv
        }
    }

    /// Creates a list of all selected children.
    @inlinable var selectedRows: GLib.ListRef! {
        /// Creates a list of all selected children.
        get {
            let rv = GLib.ListRef(gtk_list_box_get_selected_rows(list_box_ptr))
            return rv
        }
    }

    /// Gets the selection mode of the listbox.
    @inlinable var selectionMode: GtkSelectionMode {
        /// Gets the selection mode of the listbox.
        get {
            let rv = gtk_list_box_get_selection_mode(list_box_ptr)
            return rv
        }
        /// Sets how selection works in the listbox.
        nonmutating set {
            gtk_list_box_set_selection_mode(list_box_ptr, newValue)
        }
    }

    /// Returns whether the list box should show separators
    /// between rows.
    @inlinable var showSeparators: Bool {
        /// Returns whether the list box should show separators
        /// between rows.
        get {
            let rv = ((gtk_list_box_get_show_separators(list_box_ptr)) != 0)
            return rv
        }
        /// Sets whether the list box should show separators
        /// between rows.
        nonmutating set {
            gtk_list_box_set_show_separators(list_box_ptr, gboolean((newValue) ? 1 : 0))
        }
    }


}



// MARK: - ListBoxRow Class

/// The `ListBoxRowProtocol` protocol exposes the methods and properties of an underlying `GtkListBoxRow` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListBoxRow`.
/// Alternatively, use `ListBoxRowRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkListBoxRow` is the kind of widget that can be added to a `GtkListBox`.
public protocol ListBoxRowProtocol: WidgetProtocol, ActionableProtocol {
        /// Untyped pointer to the underlying `GtkListBoxRow` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkListBoxRow` instance.
    var list_box_row_ptr: UnsafeMutablePointer<GtkListBoxRow>! { get }

    /// Required Initialiser for types conforming to `ListBoxRowProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ListBoxRowRef` type acts as a lightweight Swift reference to an underlying `GtkListBoxRow` instance.
/// It exposes methods that can operate on this data type through `ListBoxRowProtocol` conformance.
/// Use `ListBoxRowRef` only as an `unowned` reference to an existing `GtkListBoxRow` instance.
///
/// `GtkListBoxRow` is the kind of widget that can be added to a `GtkListBox`.
public struct ListBoxRowRef: ListBoxRowProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkListBoxRow` instance.
    /// For type-safe access, use the generated, typed pointer `list_box_row_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ListBoxRowRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkListBoxRow>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkListBoxRow>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkListBoxRow>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkListBoxRow>?) {
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

    /// Reference intialiser for a related type that implements `ListBoxRowProtocol`
    @inlinable init<T: ListBoxRowProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ListBoxRowProtocol>(_ other: T) -> ListBoxRowRef { ListBoxRowRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkListBoxRow`.
    @inlinable init() {
        let rv = gtk_list_box_row_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `ListBoxRow` type acts as a reference-counted owner of an underlying `GtkListBoxRow` instance.
/// It provides the methods that can operate on this data type through `ListBoxRowProtocol` conformance.
/// Use `ListBoxRow` as a strong reference or owner of a `GtkListBoxRow` instance.
///
/// `GtkListBoxRow` is the kind of widget that can be added to a `GtkListBox`.
open class ListBoxRow: Widget, ListBoxRowProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBoxRow` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkListBoxRow>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBoxRow` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkListBoxRow>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBoxRow` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBoxRow` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBoxRow` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkListBoxRow>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBoxRow` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkListBoxRow>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkListBoxRow`.
    /// i.e., ownership is transferred to the `ListBoxRow` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkListBoxRow>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ListBoxRowProtocol`
    /// Will retain `GtkListBoxRow`.
    /// - Parameter other: an instance of a related type that implements `ListBoxRowProtocol`
    @inlinable public init<T: ListBoxRowProtocol>(listBoxRow other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkListBoxRow`.
    @inlinable public init() {
        let rv = gtk_list_box_row_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum ListBoxRowPropertyName: String, PropertyNameProtocol {
    /// Determines whether the `row-activated`
    /// signal will be emitted for this row.
    case activatable = "activatable"
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    /// Whether the widget can receive pointer events.
    case canTarget = "can-target"
    /// The child widget.
    case child = "child"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`.
    case cursor = "cursor"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// How to distribute horizontal space if widget gets extra space.
    case halign = "halign"
    /// Whether the widget is the default widget.
    case hasDefault = "has-default"
    /// Whether the widget has the input focus.
    case hasFocus = "has-focus"
    /// Enables or disables the emission of the `query-tooltip` signal on `widget`.
    /// 
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using [signal`Gtk.Widget::query-tooltip`] to
    /// determine whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    /// Override for height request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case heightRequest = "height-request"
    /// Whether to expand horizontally.
    case hexpand = "hexpand"
    /// Whether to use the `hexpand` property.
    case hexpandSet = "hexpand-set"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case layoutManager = "layout-manager"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginEnd = "margin-end"
    /// Margin on start of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginTop = "margin-top"
    /// The name of the widget.
    case name = "name"
    /// The requested opacity of the widget.
    case opacity = "opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    /// The parent widget of this widget.
    case parent = "parent"
    /// Whether the widget will receive the default action when it is focused.
    case receivesDefault = "receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget.
    case scaleFactor = "scale-factor"
    /// Determines whether this row can be selected.
    case selectable = "selectable"
    /// Whether the widget responds to input.
    case sensitive = "sensitive"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with Pango markup.
    /// 
    /// Also see [method`Gtk.Tooltip.set_markup`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see [method`Gtk.Tooltip.set_text`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// How to distribute vertical space if widget gets extra space.
    case valign = "valign"
    /// Whether to expand vertically.
    case vexpand = "vexpand"
    /// Whether to use the `vexpand` property.
    case vexpandSet = "vexpand-set"
    /// Whether the widget is visible.
    case visible = "visible"
    /// Override for width request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case widthRequest = "width-request"
}

public extension ListBoxRowProtocol {
    /// Bind a `ListBoxRowPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ListBoxRowPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a ListBoxRow property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ListBoxRowPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a ListBoxRow property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ListBoxRowPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum ListBoxRowSignalName: String, SignalNameProtocol {
    /// This is a keybinding signal, which will cause this row to be activated.
    /// 
    /// If you want to be notified when the user activates a row (by key or not),
    /// use the [signal`Gtk.ListBox::row-activated`] signal on the row’s parent
    /// `GtkListBox`.
    case activate = "activate"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold.
    /// 
    /// May result in finalization of the widget if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// Emitted when the text direction of a widget changes.
    case directionChanged = "direction-changed"
    /// Emitted when `widget` is hidden.
    case hide = "hide"
    /// Emitted if keyboard navigation fails.
    /// 
    /// See [method`Gtk.Widget.keynav_failed`] for details.
    case keynavFailed = "keynav-failed"
    /// Emitted when `widget` is going to be mapped.
    /// 
    /// A widget is mapped when the widget is visible (which is controlled with
    /// [property`Gtk.Widget:visible`]) and all its parents up to the toplevel widget
    /// are also visible.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of [signal`Gtk.Widget::unmap`].
    case map = "map"
    /// Emitted when a widget is activated via a mnemonic.
    /// 
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// Emitted when the focus is moved.
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
    /// Emitted when the widgets tooltip is about to be shown.
    /// 
    /// This happens when the [property`Gtk.Widget:has-tooltip`] property
    /// is `true` and the hover timeout has expired with the cursor hovering
    /// "above" `widget`; or emitted when `widget` got focus in keyboard mode.
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
    /// Emitted when `widget` is associated with a `GdkSurface`.
    /// 
    /// This means that [method`Gtk.Widget.realize`] has been called
    /// or the widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// Emitted when `widget` is shown.
    case show = "show"
    /// Emitted when the widget state changes.
    /// 
    /// See [method`Gtk.Widget.get_state_flags`].
    case stateFlagsChanged = "state-flags-changed"
    /// Emitted when `widget` is going to be unmapped.
    /// 
    /// A widget is unmapped when either it or any of its parents up to the
    /// toplevel widget have been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer,
    /// it can be used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// Emitted when the `GdkSurface` associated with `widget` is destroyed.
    /// 
    /// This means that [method`Gtk.Widget.unrealize`] has been called
    /// or the widget has been unmapped (that is, it is going to be hidden).
    case unrealize = "unrealize"
    /// Determines whether the `row-activated`
    /// signal will be emitted for this row.
    case notifyActivatable = "notify::activatable"
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCanFocus = "notify::can-focus"
    /// Whether the widget can receive pointer events.
    case notifyCanTarget = "notify::can-target"
    /// The child widget.
    case notifyChild = "notify::child"
    /// A list of css classes applied to this widget.
    case notifyCssClasses = "notify::css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCssName = "notify::css-name"
    /// The cursor used by `widget`.
    case notifyCursor = "notify::cursor"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case notifyFocusable = "notify::focusable"
    /// How to distribute horizontal space if widget gets extra space.
    case notifyHalign = "notify::halign"
    /// Whether the widget is the default widget.
    case notifyHasDefault = "notify::has-default"
    /// Whether the widget has the input focus.
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of the `query-tooltip` signal on `widget`.
    /// 
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using [signal`Gtk.Widget::query-tooltip`] to
    /// determine whether it will provide a tooltip or not.
    case notifyHasTooltip = "notify::has-tooltip"
    /// Override for height request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `hexpand` property.
    case notifyHexpandSet = "notify::hexpand-set"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyLayoutManager = "notify::layout-manager"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on start of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginTop = "notify::margin-top"
    /// The name of the widget.
    case notifyName = "notify::name"
    /// The requested opacity of the widget.
    case notifyOpacity = "notify::opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyOverflow = "notify::overflow"
    /// The parent widget of this widget.
    case notifyParent = "notify::parent"
    /// Whether the widget will receive the default action when it is focused.
    case notifyReceivesDefault = "notify::receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case notifyRoot = "notify::root"
    /// The scale factor of the widget.
    case notifyScaleFactor = "notify::scale-factor"
    /// Determines whether this row can be selected.
    case notifySelectable = "notify::selectable"
    /// Whether the widget responds to input.
    case notifySensitive = "notify::sensitive"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with Pango markup.
    /// 
    /// Also see [method`Gtk.Tooltip.set_markup`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see [method`Gtk.Tooltip.set_text`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    /// How to distribute vertical space if widget gets extra space.
    case notifyValign = "notify::valign"
    /// Whether to expand vertically.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `vexpand` property.
    case notifyVexpandSet = "notify::vexpand-set"
    /// Whether the widget is visible.
    case notifyVisible = "notify::visible"
    /// Override for width request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case notifyWidthRequest = "notify::width-request"
}

// MARK: ListBoxRow signals
public extension ListBoxRowProtocol {
    /// Connect a Swift signal handler to the given, typed `ListBoxRowSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: ListBoxRowSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `ListBoxRowSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: ListBoxRowSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// This is a keybinding signal, which will cause this row to be activated.
    /// 
    /// If you want to be notified when the user activates a row (by key or not),
    /// use the [signal`Gtk.ListBox::row-activated`] signal on the row’s parent
    /// `GtkListBox`.
    /// - Note: This represents the underlying `activate` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `activate` signal is emitted
    @discardableResult @inlinable func onActivate(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ListBoxRowRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<ListBoxRowRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ListBoxRowRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .activate,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `activate` signal for using the `connect(signal:)` methods
    static var activateSignal: ListBoxRowSignalName { .activate }
    
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
    /// - Note: This represents the underlying `notify::activatable` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyActivatable` signal is emitted
    @discardableResult @inlinable func onNotifyActivatable(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ListBoxRowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ListBoxRowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ListBoxRowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyActivatable,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::activatable` signal for using the `connect(signal:)` methods
    static var notifyActivatableSignal: ListBoxRowSignalName { .notifyActivatable }
    
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
    /// - Note: This represents the underlying `notify::child` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyChild` signal is emitted
    @discardableResult @inlinable func onNotifyChild(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ListBoxRowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ListBoxRowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ListBoxRowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyChild,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::child` signal for using the `connect(signal:)` methods
    static var notifyChildSignal: ListBoxRowSignalName { .notifyChild }
    
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
    /// - Note: This represents the underlying `notify::selectable` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifySelectable` signal is emitted
    @discardableResult @inlinable func onNotifySelectable(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ListBoxRowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ListBoxRowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ListBoxRowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifySelectable,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::selectable` signal for using the `connect(signal:)` methods
    static var notifySelectableSignal: ListBoxRowSignalName { .notifySelectable }
    
}

// MARK: ListBoxRow Class: ListBoxRowProtocol extension (methods and fields)
public extension ListBoxRowProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkListBoxRow` instance.
    @inlinable var list_box_row_ptr: UnsafeMutablePointer<GtkListBoxRow>! { return ptr?.assumingMemoryBound(to: GtkListBoxRow.self) }

    /// Marks `row` as changed, causing any state that depends on this
    /// to be updated.
    /// 
    /// This affects sorting, filtering and headers.
    /// 
    /// Note that calls to this method must be in sync with the data
    /// used for the row functions. For instance, if the list is
    /// mirroring some external data set, and *two* rows changed in the
    /// external data set then when you call `gtk_list_box_row_changed()`
    /// on the first row the sort function must only read the new data
    /// for the first of the two changed rows, otherwise the resorting
    /// of the rows will be wrong.
    /// 
    /// This generally means that if you don’t fully control the data
    /// model you have to duplicate the data that affects the listbox
    /// row functions into the row widgets themselves. Another alternative
    /// is to call [method`Gtk.ListBox.invalidate_sort`] on any model change,
    /// but that is more expensive.
    @inlinable func changed() {
        gtk_list_box_row_changed(list_box_row_ptr)
    
    }

    /// Gets whether the row is activatable.
    @inlinable func getActivatable() -> Bool {
        let rv = ((gtk_list_box_row_get_activatable(list_box_row_ptr)) != 0)
        return rv
    }

    /// Gets the child widget of `row`.
    @inlinable func getChild() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_list_box_row_get_child(list_box_row_ptr))) else { return nil }
        return rv
    }

    /// Returns the current header of the `row`.
    /// 
    /// This can be used
    /// in a [callback`Gtk.ListBoxUpdateHeaderFunc`] to see if
    /// there is a header set already, and if so to update
    /// the state of it.
    @inlinable func getHeader() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_list_box_row_get_header(list_box_row_ptr))) else { return nil }
        return rv
    }

    /// Gets the current index of the `row` in its `GtkListBox` container.
    @inlinable func getIndex() -> Int {
        let rv = Int(gtk_list_box_row_get_index(list_box_row_ptr))
        return rv
    }

    /// Gets whether the row can be selected.
    @inlinable func getSelectable() -> Bool {
        let rv = ((gtk_list_box_row_get_selectable(list_box_row_ptr)) != 0)
        return rv
    }

    /// Set whether the row is activatable.
    @inlinable func set(activatable: Bool) {
        gtk_list_box_row_set_activatable(list_box_row_ptr, gboolean((activatable) ? 1 : 0))
    
    }

    /// Sets the child widget of `self`.
    @inlinable func set(child: WidgetRef? = nil) {
        gtk_list_box_row_set_child(list_box_row_ptr, child?.widget_ptr)
    
    }
    /// Sets the child widget of `self`.
    @inlinable func set<WidgetT: WidgetProtocol>(child: WidgetT?) {
        gtk_list_box_row_set_child(list_box_row_ptr, child?.widget_ptr)
    
    }

    /// Sets the current header of the `row`.
    /// 
    /// This is only allowed to be called
    /// from a [callback`Gtk.ListBoxUpdateHeaderFunc`].
    /// It will replace any existing header in the row,
    /// and be shown in front of the row in the listbox.
    @inlinable func set(header: WidgetRef? = nil) {
        gtk_list_box_row_set_header(list_box_row_ptr, header?.widget_ptr)
    
    }
    /// Sets the current header of the `row`.
    /// 
    /// This is only allowed to be called
    /// from a [callback`Gtk.ListBoxUpdateHeaderFunc`].
    /// It will replace any existing header in the row,
    /// and be shown in front of the row in the listbox.
    @inlinable func set<WidgetT: WidgetProtocol>(header: WidgetT?) {
        gtk_list_box_row_set_header(list_box_row_ptr, header?.widget_ptr)
    
    }

    /// Set whether the row can be selected.
    @inlinable func set(selectable: Bool) {
        gtk_list_box_row_set_selectable(list_box_row_ptr, gboolean((selectable) ? 1 : 0))
    
    }
    /// Determines whether the `row-activated`
    /// signal will be emitted for this row.
    @inlinable var activatable: Bool {
        /// Gets whether the row is activatable.
        get {
            let rv = ((gtk_list_box_row_get_activatable(list_box_row_ptr)) != 0)
            return rv
        }
        /// Set whether the row is activatable.
        nonmutating set {
            gtk_list_box_row_set_activatable(list_box_row_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// The child widget.
    @inlinable var child: WidgetRef! {
        /// Gets the child widget of `row`.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_list_box_row_get_child(list_box_row_ptr))) else { return nil }
            return rv
        }
        /// Sets the child widget of `self`.
        nonmutating set {
            gtk_list_box_row_set_child(list_box_row_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }

    /// Returns the current header of the `row`.
    /// 
    /// This can be used
    /// in a [callback`Gtk.ListBoxUpdateHeaderFunc`] to see if
    /// there is a header set already, and if so to update
    /// the state of it.
    @inlinable var header: WidgetRef! {
        /// Returns the current header of the `row`.
        /// 
        /// This can be used
        /// in a [callback`Gtk.ListBoxUpdateHeaderFunc`] to see if
        /// there is a header set already, and if so to update
        /// the state of it.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_list_box_row_get_header(list_box_row_ptr))) else { return nil }
            return rv
        }
        /// Sets the current header of the `row`.
        /// 
        /// This is only allowed to be called
        /// from a [callback`Gtk.ListBoxUpdateHeaderFunc`].
        /// It will replace any existing header in the row,
        /// and be shown in front of the row in the listbox.
        nonmutating set {
            gtk_list_box_row_set_header(list_box_row_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }

    /// Gets the current index of the `row` in its `GtkListBox` container.
    @inlinable var index: Int {
        /// Gets the current index of the `row` in its `GtkListBox` container.
        get {
            let rv = Int(gtk_list_box_row_get_index(list_box_row_ptr))
            return rv
        }
    }

    /// Returns whether the child is currently selected in its
    /// `GtkListBox` container.
    @inlinable var isSelected: Bool {
        /// Returns whether the child is currently selected in its
        /// `GtkListBox` container.
        get {
            let rv = ((gtk_list_box_row_is_selected(list_box_row_ptr)) != 0)
            return rv
        }
    }

    /// Determines whether this row can be selected.
    @inlinable var selectable: Bool {
        /// Gets whether the row can be selected.
        get {
            let rv = ((gtk_list_box_row_get_selectable(list_box_row_ptr)) != 0)
            return rv
        }
        /// Set whether the row can be selected.
        nonmutating set {
            gtk_list_box_row_set_selectable(list_box_row_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    @inlinable var parentInstance: GtkWidget {
        get {
            let rv = list_box_row_ptr.pointee.parent_instance
            return rv
        }
    }

}



// MARK: - ListItem Class

/// The `ListItemProtocol` protocol exposes the methods and properties of an underlying `GtkListItem` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListItem`.
/// Alternatively, use `ListItemRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkListItem` is used by list widgets to represent items in a `GListModel`.
/// 
/// The `GtkListItem`s are managed by the list widget (with its factory)
/// and cannot be created by applications, but they need to be populated
/// by application code. This is done by calling [method`Gtk.ListItem.set_child`].
/// 
/// `GtkListItem`s exist in 2 stages:
/// 
/// 1. The unbound stage where the listitem is not currently connected to
///    an item in the list. In that case, the [property`Gtk.ListItem:item`]
///    property is set to `nil`.
/// 
/// 2. The bound stage where the listitem references an item from the list.
///    The [property`Gtk.ListItem:item`] property is not `nil`.
public protocol ListItemProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GtkListItem` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkListItem` instance.
    var list_item_ptr: UnsafeMutablePointer<GtkListItem>! { get }

    /// Required Initialiser for types conforming to `ListItemProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ListItemRef` type acts as a lightweight Swift reference to an underlying `GtkListItem` instance.
/// It exposes methods that can operate on this data type through `ListItemProtocol` conformance.
/// Use `ListItemRef` only as an `unowned` reference to an existing `GtkListItem` instance.
///
/// `GtkListItem` is used by list widgets to represent items in a `GListModel`.
/// 
/// The `GtkListItem`s are managed by the list widget (with its factory)
/// and cannot be created by applications, but they need to be populated
/// by application code. This is done by calling [method`Gtk.ListItem.set_child`].
/// 
/// `GtkListItem`s exist in 2 stages:
/// 
/// 1. The unbound stage where the listitem is not currently connected to
///    an item in the list. In that case, the [property`Gtk.ListItem:item`]
///    property is set to `nil`.
/// 
/// 2. The bound stage where the listitem references an item from the list.
///    The [property`Gtk.ListItem:item`] property is not `nil`.
public struct ListItemRef: ListItemProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkListItem` instance.
    /// For type-safe access, use the generated, typed pointer `list_item_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ListItemRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkListItem>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkListItem>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkListItem>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkListItem>?) {
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

    /// Reference intialiser for a related type that implements `ListItemProtocol`
    @inlinable init<T: ListItemProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ListItemProtocol>(_ other: T) -> ListItemRef { ListItemRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListItemProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListItemProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListItemProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListItemProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListItemProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ListItem` type acts as a reference-counted owner of an underlying `GtkListItem` instance.
/// It provides the methods that can operate on this data type through `ListItemProtocol` conformance.
/// Use `ListItem` as a strong reference or owner of a `GtkListItem` instance.
///
/// `GtkListItem` is used by list widgets to represent items in a `GListModel`.
/// 
/// The `GtkListItem`s are managed by the list widget (with its factory)
/// and cannot be created by applications, but they need to be populated
/// by application code. This is done by calling [method`Gtk.ListItem.set_child`].
/// 
/// `GtkListItem`s exist in 2 stages:
/// 
/// 1. The unbound stage where the listitem is not currently connected to
///    an item in the list. In that case, the [property`Gtk.ListItem:item`]
///    property is set to `nil`.
/// 
/// 2. The bound stage where the listitem references an item from the list.
///    The [property`Gtk.ListItem:item`] property is not `nil`.
open class ListItem: GLibObject.Object, ListItemProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkListItem>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkListItem>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListItem` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkListItem>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkListItem>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkListItem`.
    /// i.e., ownership is transferred to the `ListItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkListItem>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ListItemProtocol`
    /// Will retain `GtkListItem`.
    /// - Parameter other: an instance of a related type that implements `ListItemProtocol`
    @inlinable public init<T: ListItemProtocol>(listItem other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListItemProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListItemProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListItemProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListItemProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListItemProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListItemProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListItemProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListItemProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum ListItemPropertyName: String, PropertyNameProtocol {
    /// If the item can be activated by the user.
    case activatable = "activatable"
    /// Widget used for display.
    case child = "child"
    /// Displayed item.
    case item = "item"
    /// Position of the item.
    case position = "position"
    /// If the item can be selected by the user.
    case selectable = "selectable"
    /// If the item is currently selected.
    case selected = "selected"
}

public extension ListItemProtocol {
    /// Bind a `ListItemPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ListItemPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a ListItem property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ListItemPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a ListItem property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ListItemPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum ListItemSignalName: String, SignalNameProtocol {
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
    /// If the item can be activated by the user.
    case notifyActivatable = "notify::activatable"
    /// Widget used for display.
    case notifyChild = "notify::child"
    /// Displayed item.
    case notifyItem = "notify::item"
    /// Position of the item.
    case notifyPosition = "notify::position"
    /// If the item can be selected by the user.
    case notifySelectable = "notify::selectable"
    /// If the item is currently selected.
    case notifySelected = "notify::selected"
}

// MARK: ListItem has no signals
// MARK: ListItem Class: ListItemProtocol extension (methods and fields)
public extension ListItemProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkListItem` instance.
    @inlinable var list_item_ptr: UnsafeMutablePointer<GtkListItem>! { return ptr?.assumingMemoryBound(to: GtkListItem.self) }

    /// Checks if a list item has been set to be activatable via
    /// `gtk_list_item_set_activatable()`.
    @inlinable func getActivatable() -> Bool {
        let rv = ((gtk_list_item_get_activatable(list_item_ptr)) != 0)
        return rv
    }

    /// Gets the child previously set via `gtk_list_item_set_child()` or
    /// `nil` if none was set.
    @inlinable func getChild() -> WidgetRef! {
        let rv = WidgetRef(gconstpointer: gconstpointer(gtk_list_item_get_child(list_item_ptr)))
        return rv
    }

    /// Gets the model item that associated with `self`.
    /// 
    /// If `self` is unbound, this function returns `nil`.
    @inlinable func getItem() -> GLibObject.ObjectRef! {
        let rv = GLibObject.ObjectRef(gpointer: gtk_list_item_get_item(list_item_ptr))
        return rv
    }

    /// Gets the position in the model that `self` currently displays.
    /// 
    /// If `self` is unbound, `GTK_INVALID_LIST_POSITION` is returned.
    @inlinable func getPosition() -> Int {
        let rv = Int(gtk_list_item_get_position(list_item_ptr))
        return rv
    }

    /// Checks if a list item has been set to be selectable via
    /// `gtk_list_item_set_selectable()`.
    /// 
    /// Do not confuse this function with [method`Gtk.ListItem.get_selected`].
    @inlinable func getSelectable() -> Bool {
        let rv = ((gtk_list_item_get_selectable(list_item_ptr)) != 0)
        return rv
    }

    /// Checks if the item is displayed as selected.
    /// 
    /// The selected state is maintained by the liste widget and its model
    /// and cannot be set otherwise.
    @inlinable func getSelected() -> Bool {
        let rv = ((gtk_list_item_get_selected(list_item_ptr)) != 0)
        return rv
    }

    /// Sets `self` to be activatable.
    /// 
    /// If an item is activatable, double-clicking on the item, using
    /// the Return key or calling `gtk_widget_activate()` will activate
    /// the item. Activating instructs the containing view to handle
    /// activation. `GtkListView` for example will be emitting the
    /// [signal`Gtk.ListView::activate`] signal.
    /// 
    /// By default, list items are activatable.
    @inlinable func set(activatable: Bool) {
        gtk_list_item_set_activatable(list_item_ptr, gboolean((activatable) ? 1 : 0))
    
    }

    /// Sets the child to be used for this listitem.
    /// 
    /// This function is typically called by applications when
    /// setting up a listitem so that the widget can be reused when
    /// binding it multiple times.
    @inlinable func set(child: WidgetRef? = nil) {
        gtk_list_item_set_child(list_item_ptr, child?.widget_ptr)
    
    }
    /// Sets the child to be used for this listitem.
    /// 
    /// This function is typically called by applications when
    /// setting up a listitem so that the widget can be reused when
    /// binding it multiple times.
    @inlinable func set<WidgetT: WidgetProtocol>(child: WidgetT?) {
        gtk_list_item_set_child(list_item_ptr, child?.widget_ptr)
    
    }

    /// Sets `self` to be selectable.
    /// 
    /// If an item is selectable, clicking on the item or using the keyboard
    /// will try to select or unselect the item. If this succeeds is up to
    /// the model to determine, as it is managing the selected state.
    /// 
    /// Note that this means that making an item non-selectable has no
    /// influence on the selected state at all. A non-selectable item
    /// may still be selected.
    /// 
    /// By default, list items are selectable. When rebinding them to
    /// a new item, they will also be reset to be selectable by GTK.
    @inlinable func set(selectable: Bool) {
        gtk_list_item_set_selectable(list_item_ptr, gboolean((selectable) ? 1 : 0))
    
    }
    /// If the item can be activated by the user.
    @inlinable var activatable: Bool {
        /// Checks if a list item has been set to be activatable via
        /// `gtk_list_item_set_activatable()`.
        get {
            let rv = ((gtk_list_item_get_activatable(list_item_ptr)) != 0)
            return rv
        }
        /// Sets `self` to be activatable.
        /// 
        /// If an item is activatable, double-clicking on the item, using
        /// the Return key or calling `gtk_widget_activate()` will activate
        /// the item. Activating instructs the containing view to handle
        /// activation. `GtkListView` for example will be emitting the
        /// [signal`Gtk.ListView::activate`] signal.
        /// 
        /// By default, list items are activatable.
        nonmutating set {
            gtk_list_item_set_activatable(list_item_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Widget used for display.
    @inlinable var child: WidgetRef! {
        /// Gets the child previously set via `gtk_list_item_set_child()` or
        /// `nil` if none was set.
        get {
            let rv = WidgetRef(gconstpointer: gconstpointer(gtk_list_item_get_child(list_item_ptr)))
            return rv
        }
        /// Sets the child to be used for this listitem.
        /// 
        /// This function is typically called by applications when
        /// setting up a listitem so that the widget can be reused when
        /// binding it multiple times.
        nonmutating set {
            gtk_list_item_set_child(list_item_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }

    /// Displayed item.
    @inlinable var item: GLibObject.ObjectRef! {
        /// Gets the model item that associated with `self`.
        /// 
        /// If `self` is unbound, this function returns `nil`.
        get {
            let rv = GLibObject.ObjectRef(gpointer: gtk_list_item_get_item(list_item_ptr))
            return rv
        }
    }

    /// Position of the item.
    @inlinable var position: Int {
        /// Gets the position in the model that `self` currently displays.
        /// 
        /// If `self` is unbound, `GTK_INVALID_LIST_POSITION` is returned.
        get {
            let rv = Int(gtk_list_item_get_position(list_item_ptr))
            return rv
        }
    }

    /// If the item can be selected by the user.
    @inlinable var selectable: Bool {
        /// Checks if a list item has been set to be selectable via
        /// `gtk_list_item_set_selectable()`.
        /// 
        /// Do not confuse this function with [method`Gtk.ListItem.get_selected`].
        get {
            let rv = ((gtk_list_item_get_selectable(list_item_ptr)) != 0)
            return rv
        }
        /// Sets `self` to be selectable.
        /// 
        /// If an item is selectable, clicking on the item or using the keyboard
        /// will try to select or unselect the item. If this succeeds is up to
        /// the model to determine, as it is managing the selected state.
        /// 
        /// Note that this means that making an item non-selectable has no
        /// influence on the selected state at all. A non-selectable item
        /// may still be selected.
        /// 
        /// By default, list items are selectable. When rebinding them to
        /// a new item, they will also be reset to be selectable by GTK.
        nonmutating set {
            gtk_list_item_set_selectable(list_item_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// If the item is currently selected.
    @inlinable var selected: Bool {
        /// Checks if the item is displayed as selected.
        /// 
        /// The selected state is maintained by the liste widget and its model
        /// and cannot be set otherwise.
        get {
            let rv = ((gtk_list_item_get_selected(list_item_ptr)) != 0)
            return rv
        }
    }


}



// MARK: - ListItemFactory Class

/// The `ListItemFactoryProtocol` protocol exposes the methods and properties of an underlying `GtkListItemFactory` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListItemFactory`.
/// Alternatively, use `ListItemFactoryRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GtkListItemFactory` creates widgets for the items taken from a `GListModel`.
/// 
/// This is one of the core concepts of handling list widgets such
/// as [class`Gtk.ListView`] or [class`Gtk.GridView`].
/// 
/// The `GtkListItemFactory` is tasked with creating widgets for items
/// taken from the model when the views need them and updating them as
/// the items displayed by the view change.
/// 
/// A view is usually only able to display anything after both a factory
/// and a model have been set on the view. So it is important that you do
/// not skip this step when setting up your first view.
/// 
/// Because views do not display the whole list at once but only a few
/// items, they only need to maintain a few widgets at a time. They will
/// instruct the `GtkListItemFactory` to create these widgets and bind them
/// to the items that are currently displayed.
/// 
/// As the list model changes or the user scrolls to the list, the items will
/// change and the view will instruct the factory to bind the widgets to those
/// new items.
/// 
/// The actual widgets used for displaying those widgets is provided by you.
/// 
/// When the factory needs widgets created, it will create a `GtkListItem`
/// and hand it to your code to set up a widget for. This list item will provide
/// various properties with information about what item to display and provide
/// you with some opportunities to configure its behavior. See the
/// [class`Gtk.ListItem`] documentation for further details.
/// 
/// Various implementations of `GtkListItemFactory` exist to allow you different
/// ways to provide those widgets. The most common implementations are
/// [class`Gtk.BuilderListItemFactory`] which takes a `GtkBuilder` .ui file
/// and then creates widgets and manages everything automatically from the
/// information in that file and [class`Gtk.SignalListItemFactory`] which allows
/// you to connect to signals with your own code and retain full control over
/// how the widgets are setup and managed.
/// 
/// A `GtkListItemFactory` is supposed to be final - that means its behavior should
/// not change and the first widget created from it should behave the same way as
/// the last widget created from it.
/// If you intend to do changes to the behavior, it is recommended that you create
/// a new `GtkListItemFactory` which will allow the views to recreate its widgets.
/// 
/// Once you have chosen your factory and created it, you need to set it
/// on the view widget you want to use it with, such as via
/// [method`Gtk.ListView.set_factory`]. Reusing factories across different
/// views is allowed, but very uncommon.
public protocol ListItemFactoryProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GtkListItemFactory` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkListItemFactory` instance.
    var list_item_factory_ptr: UnsafeMutablePointer<GtkListItemFactory>! { get }

    /// Required Initialiser for types conforming to `ListItemFactoryProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ListItemFactoryRef` type acts as a lightweight Swift reference to an underlying `GtkListItemFactory` instance.
/// It exposes methods that can operate on this data type through `ListItemFactoryProtocol` conformance.
/// Use `ListItemFactoryRef` only as an `unowned` reference to an existing `GtkListItemFactory` instance.
///
/// A `GtkListItemFactory` creates widgets for the items taken from a `GListModel`.
/// 
/// This is one of the core concepts of handling list widgets such
/// as [class`Gtk.ListView`] or [class`Gtk.GridView`].
/// 
/// The `GtkListItemFactory` is tasked with creating widgets for items
/// taken from the model when the views need them and updating them as
/// the items displayed by the view change.
/// 
/// A view is usually only able to display anything after both a factory
/// and a model have been set on the view. So it is important that you do
/// not skip this step when setting up your first view.
/// 
/// Because views do not display the whole list at once but only a few
/// items, they only need to maintain a few widgets at a time. They will
/// instruct the `GtkListItemFactory` to create these widgets and bind them
/// to the items that are currently displayed.
/// 
/// As the list model changes or the user scrolls to the list, the items will
/// change and the view will instruct the factory to bind the widgets to those
/// new items.
/// 
/// The actual widgets used for displaying those widgets is provided by you.
/// 
/// When the factory needs widgets created, it will create a `GtkListItem`
/// and hand it to your code to set up a widget for. This list item will provide
/// various properties with information about what item to display and provide
/// you with some opportunities to configure its behavior. See the
/// [class`Gtk.ListItem`] documentation for further details.
/// 
/// Various implementations of `GtkListItemFactory` exist to allow you different
/// ways to provide those widgets. The most common implementations are
/// [class`Gtk.BuilderListItemFactory`] which takes a `GtkBuilder` .ui file
/// and then creates widgets and manages everything automatically from the
/// information in that file and [class`Gtk.SignalListItemFactory`] which allows
/// you to connect to signals with your own code and retain full control over
/// how the widgets are setup and managed.
/// 
/// A `GtkListItemFactory` is supposed to be final - that means its behavior should
/// not change and the first widget created from it should behave the same way as
/// the last widget created from it.
/// If you intend to do changes to the behavior, it is recommended that you create
/// a new `GtkListItemFactory` which will allow the views to recreate its widgets.
/// 
/// Once you have chosen your factory and created it, you need to set it
/// on the view widget you want to use it with, such as via
/// [method`Gtk.ListView.set_factory`]. Reusing factories across different
/// views is allowed, but very uncommon.
public struct ListItemFactoryRef: ListItemFactoryProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkListItemFactory` instance.
    /// For type-safe access, use the generated, typed pointer `list_item_factory_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ListItemFactoryRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkListItemFactory>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkListItemFactory>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkListItemFactory>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkListItemFactory>?) {
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

    /// Reference intialiser for a related type that implements `ListItemFactoryProtocol`
    @inlinable init<T: ListItemFactoryProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ListItemFactoryProtocol>(_ other: T) -> ListItemFactoryRef { ListItemFactoryRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListItemFactoryProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListItemFactoryProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListItemFactoryProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListItemFactoryProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListItemFactoryProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ListItemFactory` type acts as a reference-counted owner of an underlying `GtkListItemFactory` instance.
/// It provides the methods that can operate on this data type through `ListItemFactoryProtocol` conformance.
/// Use `ListItemFactory` as a strong reference or owner of a `GtkListItemFactory` instance.
///
/// A `GtkListItemFactory` creates widgets for the items taken from a `GListModel`.
/// 
/// This is one of the core concepts of handling list widgets such
/// as [class`Gtk.ListView`] or [class`Gtk.GridView`].
/// 
/// The `GtkListItemFactory` is tasked with creating widgets for items
/// taken from the model when the views need them and updating them as
/// the items displayed by the view change.
/// 
/// A view is usually only able to display anything after both a factory
/// and a model have been set on the view. So it is important that you do
/// not skip this step when setting up your first view.
/// 
/// Because views do not display the whole list at once but only a few
/// items, they only need to maintain a few widgets at a time. They will
/// instruct the `GtkListItemFactory` to create these widgets and bind them
/// to the items that are currently displayed.
/// 
/// As the list model changes or the user scrolls to the list, the items will
/// change and the view will instruct the factory to bind the widgets to those
/// new items.
/// 
/// The actual widgets used for displaying those widgets is provided by you.
/// 
/// When the factory needs widgets created, it will create a `GtkListItem`
/// and hand it to your code to set up a widget for. This list item will provide
/// various properties with information about what item to display and provide
/// you with some opportunities to configure its behavior. See the
/// [class`Gtk.ListItem`] documentation for further details.
/// 
/// Various implementations of `GtkListItemFactory` exist to allow you different
/// ways to provide those widgets. The most common implementations are
/// [class`Gtk.BuilderListItemFactory`] which takes a `GtkBuilder` .ui file
/// and then creates widgets and manages everything automatically from the
/// information in that file and [class`Gtk.SignalListItemFactory`] which allows
/// you to connect to signals with your own code and retain full control over
/// how the widgets are setup and managed.
/// 
/// A `GtkListItemFactory` is supposed to be final - that means its behavior should
/// not change and the first widget created from it should behave the same way as
/// the last widget created from it.
/// If you intend to do changes to the behavior, it is recommended that you create
/// a new `GtkListItemFactory` which will allow the views to recreate its widgets.
/// 
/// Once you have chosen your factory and created it, you need to set it
/// on the view widget you want to use it with, such as via
/// [method`Gtk.ListView.set_factory`]. Reusing factories across different
/// views is allowed, but very uncommon.
open class ListItemFactory: GLibObject.Object, ListItemFactoryProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListItemFactory` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkListItemFactory>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListItemFactory` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkListItemFactory>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListItemFactory` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListItemFactory` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListItemFactory` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkListItemFactory>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListItemFactory` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkListItemFactory>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkListItemFactory`.
    /// i.e., ownership is transferred to the `ListItemFactory` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkListItemFactory>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ListItemFactoryProtocol`
    /// Will retain `GtkListItemFactory`.
    /// - Parameter other: an instance of a related type that implements `ListItemFactoryProtocol`
    @inlinable public init<T: ListItemFactoryProtocol>(listItemFactory other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListItemFactoryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListItemFactoryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListItemFactoryProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListItemFactoryProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListItemFactoryProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListItemFactoryProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListItemFactoryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListItemFactoryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ListItemFactory properties

public enum ListItemFactorySignalName: String, SignalNameProtocol {
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

// MARK: ListItemFactory has no signals
// MARK: ListItemFactory Class: ListItemFactoryProtocol extension (methods and fields)
public extension ListItemFactoryProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkListItemFactory` instance.
    @inlinable var list_item_factory_ptr: UnsafeMutablePointer<GtkListItemFactory>! { return ptr?.assumingMemoryBound(to: GtkListItemFactory.self) }



}



// MARK: - ListStore Class

/// The `ListStoreProtocol` protocol exposes the methods and properties of an underlying `GtkListStore` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListStore`.
/// Alternatively, use `ListStoreRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A list-like data structure that can be used with the GtkTreeView
/// 
/// The `GtkListStore` object is a list model for use with a `GtkTreeView`
/// widget.  It implements the `GtkTreeModel` interface, and consequentialy,
/// can use all of the methods available there.  It also implements the
/// `GtkTreeSortable` interface so it can be sorted by the view.
/// Finally, it also implements the tree
/// [drag and drop](#gtk4-GtkTreeView-drag-and-drop)
/// interfaces.
/// 
/// The `GtkListStore` can accept most GObject types as a column type, though
/// it can’t accept all custom types.  Internally, it will keep a copy of
/// data passed in (such as a string or a boxed pointer).  Columns that
/// accept `GObjects` are handled a little differently.  The
/// `GtkListStore` will keep a reference to the object instead of copying the
/// value.  As a result, if the object is modified, it is up to the
/// application writer to call `gtk_tree_model_row_changed()` to emit the
/// `GtkTreeModel::row_changed` signal.  This most commonly affects lists with
/// `GdkTextures` stored.
/// 
/// An example for creating a simple list store:
/// (C Language Example):
/// ```C
/// enum {
///   COLUMN_STRING,
///   COLUMN_INT,
///   COLUMN_BOOLEAN,
///   N_COLUMNS
/// };
/// 
/// {
///   GtkListStore *list_store;
///   GtkTreePath *path;
///   GtkTreeIter iter;
///   int i;
/// 
///   list_store = gtk_list_store_new (N_COLUMNS,
///                                    G_TYPE_STRING,
///                                    G_TYPE_INT,
///                                    G_TYPE_BOOLEAN);
/// 
///   for (i = 0; i < 10; i++)
///     {
///       char *some_data;
/// 
///       some_data = get_some_data (i);
/// 
///       // Add a new row to the model
///       gtk_list_store_append (list_store, &iter);
///       gtk_list_store_set (list_store, &iter,
///                           COLUMN_STRING, some_data,
///                           COLUMN_INT, i,
///                           COLUMN_BOOLEAN,  FALSE,
///                           -1);
/// 
///       // As the store will keep a copy of the string internally,
///       // we free some_data.
///       g_free (some_data);
///     }
/// 
///   // Modify a particular row
///   path = gtk_tree_path_new_from_string ("4");
///   gtk_tree_model_get_iter (GTK_TREE_MODEL (list_store),
///                            &iter,
///                            path);
///   gtk_tree_path_free (path);
///   gtk_list_store_set (list_store, &iter,
///                       COLUMN_BOOLEAN, TRUE,
///                       -1);
/// }
/// ```
/// 
/// # Performance Considerations
/// 
/// Internally, the `GtkListStore` was originally implemented with a linked list
/// with a tail pointer.  As a result, it was fast at data insertion and deletion,
/// and not fast at random data access.  The `GtkListStore` sets the
/// `GTK_TREE_MODEL_ITERS_PERSIST` flag, which means that `GtkTreeIters` can be
/// cached while the row exists.  Thus, if access to a particular row is needed
/// often and your code is expected to run on older versions of GTK, it is worth
/// keeping the iter around.
/// 
/// # Atomic Operations
/// 
/// It is important to note that only the methods
/// `gtk_list_store_insert_with_values()` and `gtk_list_store_insert_with_valuesv()`
/// are atomic, in the sense that the row is being appended to the store and the
/// values filled in in a single operation with regard to `GtkTreeModel` signaling.
/// In contrast, using e.g. `gtk_list_store_append()` and then `gtk_list_store_set()`
/// will first create a row, which triggers the `GtkTreeModel::row-inserted` signal
/// on `GtkListStore`. The row, however, is still empty, and any signal handler
/// connecting to `GtkTreeModel::row-inserted` on this particular store should be prepared
/// for the situation that the row might be empty. This is especially important
/// if you are wrapping the `GtkListStore` inside a `GtkTreeModelFilter` and are
/// using a `GtkTreeModelFilterVisibleFunc`. Using any of the non-atomic operations
/// to append rows to the `GtkListStore` will cause the
/// `GtkTreeModelFilterVisibleFunc` to be visited with an empty row first; the
/// function must be prepared for that.
/// 
/// # GtkListStore as GtkBuildable
/// 
/// The GtkListStore implementation of the GtkBuildable interface allows
/// to specify the model columns with a &lt;columns&gt; element that may contain
/// multiple &lt;column&gt; elements, each specifying one model column. The “type”
/// attribute specifies the data type for the column.
/// 
/// Additionally, it is possible to specify content for the list store
/// in the UI definition, with the &lt;data&gt; element. It can contain multiple
/// &lt;row&gt; elements, each specifying to content for one row of the list model.
/// Inside a &lt;row&gt;, the &lt;col&gt; elements specify the content for individual cells.
/// 
/// Note that it is probably more common to define your models in the code,
/// and one might consider it a layering violation to specify the content of
/// a list store in a UI definition, data, not presentation, and common wisdom
/// is to separate the two, as far as possible.
/// 
/// An example of a UI Definition fragment for a list store:
/// (C Language Example):
/// ```C
/// <object class="GtkListStore">
///   <columns>
///     <column type="gchararray"/>
///     <column type="gchararray"/>
///     <column type="gint"/>
///   </columns>
///   <data>
///     <row>
///       <col id="0">John</col>
///       <col id="1">Doe</col>
///       <col id="2">25</col>
///     </row>
///     <row>
///       <col id="0">Johan</col>
///       <col id="1">Dahlin</col>
///       <col id="2">50</col>
///     </row>
///   </data>
/// </object>
/// ```
/// 
public protocol ListStoreProtocol: GLibObject.ObjectProtocol, BuildableProtocol, TreeDragDestProtocol, TreeDragSourceProtocol, TreeModelProtocol, TreeSortableProtocol {
        /// Untyped pointer to the underlying `GtkListStore` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkListStore` instance.
    var list_store_ptr: UnsafeMutablePointer<GtkListStore>! { get }

    /// Required Initialiser for types conforming to `ListStoreProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ListStoreRef` type acts as a lightweight Swift reference to an underlying `GtkListStore` instance.
/// It exposes methods that can operate on this data type through `ListStoreProtocol` conformance.
/// Use `ListStoreRef` only as an `unowned` reference to an existing `GtkListStore` instance.
///
/// A list-like data structure that can be used with the GtkTreeView
/// 
/// The `GtkListStore` object is a list model for use with a `GtkTreeView`
/// widget.  It implements the `GtkTreeModel` interface, and consequentialy,
/// can use all of the methods available there.  It also implements the
/// `GtkTreeSortable` interface so it can be sorted by the view.
/// Finally, it also implements the tree
/// [drag and drop](#gtk4-GtkTreeView-drag-and-drop)
/// interfaces.
/// 
/// The `GtkListStore` can accept most GObject types as a column type, though
/// it can’t accept all custom types.  Internally, it will keep a copy of
/// data passed in (such as a string or a boxed pointer).  Columns that
/// accept `GObjects` are handled a little differently.  The
/// `GtkListStore` will keep a reference to the object instead of copying the
/// value.  As a result, if the object is modified, it is up to the
/// application writer to call `gtk_tree_model_row_changed()` to emit the
/// `GtkTreeModel::row_changed` signal.  This most commonly affects lists with
/// `GdkTextures` stored.
/// 
/// An example for creating a simple list store:
/// (C Language Example):
/// ```C
/// enum {
///   COLUMN_STRING,
///   COLUMN_INT,
///   COLUMN_BOOLEAN,
///   N_COLUMNS
/// };
/// 
/// {
///   GtkListStore *list_store;
///   GtkTreePath *path;
///   GtkTreeIter iter;
///   int i;
/// 
///   list_store = gtk_list_store_new (N_COLUMNS,
///                                    G_TYPE_STRING,
///                                    G_TYPE_INT,
///                                    G_TYPE_BOOLEAN);
/// 
///   for (i = 0; i < 10; i++)
///     {
///       char *some_data;
/// 
///       some_data = get_some_data (i);
/// 
///       // Add a new row to the model
///       gtk_list_store_append (list_store, &iter);
///       gtk_list_store_set (list_store, &iter,
///                           COLUMN_STRING, some_data,
///                           COLUMN_INT, i,
///                           COLUMN_BOOLEAN,  FALSE,
///                           -1);
/// 
///       // As the store will keep a copy of the string internally,
///       // we free some_data.
///       g_free (some_data);
///     }
/// 
///   // Modify a particular row
///   path = gtk_tree_path_new_from_string ("4");
///   gtk_tree_model_get_iter (GTK_TREE_MODEL (list_store),
///                            &iter,
///                            path);
///   gtk_tree_path_free (path);
///   gtk_list_store_set (list_store, &iter,
///                       COLUMN_BOOLEAN, TRUE,
///                       -1);
/// }
/// ```
/// 
/// # Performance Considerations
/// 
/// Internally, the `GtkListStore` was originally implemented with a linked list
/// with a tail pointer.  As a result, it was fast at data insertion and deletion,
/// and not fast at random data access.  The `GtkListStore` sets the
/// `GTK_TREE_MODEL_ITERS_PERSIST` flag, which means that `GtkTreeIters` can be
/// cached while the row exists.  Thus, if access to a particular row is needed
/// often and your code is expected to run on older versions of GTK, it is worth
/// keeping the iter around.
/// 
/// # Atomic Operations
/// 
/// It is important to note that only the methods
/// `gtk_list_store_insert_with_values()` and `gtk_list_store_insert_with_valuesv()`
/// are atomic, in the sense that the row is being appended to the store and the
/// values filled in in a single operation with regard to `GtkTreeModel` signaling.
/// In contrast, using e.g. `gtk_list_store_append()` and then `gtk_list_store_set()`
/// will first create a row, which triggers the `GtkTreeModel::row-inserted` signal
/// on `GtkListStore`. The row, however, is still empty, and any signal handler
/// connecting to `GtkTreeModel::row-inserted` on this particular store should be prepared
/// for the situation that the row might be empty. This is especially important
/// if you are wrapping the `GtkListStore` inside a `GtkTreeModelFilter` and are
/// using a `GtkTreeModelFilterVisibleFunc`. Using any of the non-atomic operations
/// to append rows to the `GtkListStore` will cause the
/// `GtkTreeModelFilterVisibleFunc` to be visited with an empty row first; the
/// function must be prepared for that.
/// 
/// # GtkListStore as GtkBuildable
/// 
/// The GtkListStore implementation of the GtkBuildable interface allows
/// to specify the model columns with a &lt;columns&gt; element that may contain
/// multiple &lt;column&gt; elements, each specifying one model column. The “type”
/// attribute specifies the data type for the column.
/// 
/// Additionally, it is possible to specify content for the list store
/// in the UI definition, with the &lt;data&gt; element. It can contain multiple
/// &lt;row&gt; elements, each specifying to content for one row of the list model.
/// Inside a &lt;row&gt;, the &lt;col&gt; elements specify the content for individual cells.
/// 
/// Note that it is probably more common to define your models in the code,
/// and one might consider it a layering violation to specify the content of
/// a list store in a UI definition, data, not presentation, and common wisdom
/// is to separate the two, as far as possible.
/// 
/// An example of a UI Definition fragment for a list store:
/// (C Language Example):
/// ```C
/// <object class="GtkListStore">
///   <columns>
///     <column type="gchararray"/>
///     <column type="gchararray"/>
///     <column type="gint"/>
///   </columns>
///   <data>
///     <row>
///       <col id="0">John</col>
///       <col id="1">Doe</col>
///       <col id="2">25</col>
///     </row>
///     <row>
///       <col id="0">Johan</col>
///       <col id="1">Dahlin</col>
///       <col id="2">50</col>
///     </row>
///   </data>
/// </object>
/// ```
/// 
public struct ListStoreRef: ListStoreProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkListStore` instance.
    /// For type-safe access, use the generated, typed pointer `list_store_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ListStoreRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkListStore>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkListStore>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkListStore>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkListStore>?) {
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

    /// Reference intialiser for a related type that implements `ListStoreProtocol`
    @inlinable init<T: ListStoreProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ListStoreProtocol>(_ other: T) -> ListStoreRef { ListStoreRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    
    // *** new() is not available because it has a varargs (...) parameter!


    /// Non-vararg creation function.  Used primarily by language bindings.
    @inlinable init(nColumns: Int, types: UnsafeMutablePointer<GType>!) {
        let rv = gtk_list_store_newv(gint(nColumns), types)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Non-vararg creation function.  Used primarily by language bindings.
    @inlinable static func listStoreNewv(nColumns: Int, types: UnsafeMutablePointer<GType>!) -> ListStoreRef! {
        guard let rv = ListStoreRef(gconstpointer: gconstpointer(gtk_list_store_newv(gint(nColumns), types))) else { return nil }
        return rv
    }
}

/// The `ListStore` type acts as a reference-counted owner of an underlying `GtkListStore` instance.
/// It provides the methods that can operate on this data type through `ListStoreProtocol` conformance.
/// Use `ListStore` as a strong reference or owner of a `GtkListStore` instance.
///
/// A list-like data structure that can be used with the GtkTreeView
/// 
/// The `GtkListStore` object is a list model for use with a `GtkTreeView`
/// widget.  It implements the `GtkTreeModel` interface, and consequentialy,
/// can use all of the methods available there.  It also implements the
/// `GtkTreeSortable` interface so it can be sorted by the view.
/// Finally, it also implements the tree
/// [drag and drop](#gtk4-GtkTreeView-drag-and-drop)
/// interfaces.
/// 
/// The `GtkListStore` can accept most GObject types as a column type, though
/// it can’t accept all custom types.  Internally, it will keep a copy of
/// data passed in (such as a string or a boxed pointer).  Columns that
/// accept `GObjects` are handled a little differently.  The
/// `GtkListStore` will keep a reference to the object instead of copying the
/// value.  As a result, if the object is modified, it is up to the
/// application writer to call `gtk_tree_model_row_changed()` to emit the
/// `GtkTreeModel::row_changed` signal.  This most commonly affects lists with
/// `GdkTextures` stored.
/// 
/// An example for creating a simple list store:
/// (C Language Example):
/// ```C
/// enum {
///   COLUMN_STRING,
///   COLUMN_INT,
///   COLUMN_BOOLEAN,
///   N_COLUMNS
/// };
/// 
/// {
///   GtkListStore *list_store;
///   GtkTreePath *path;
///   GtkTreeIter iter;
///   int i;
/// 
///   list_store = gtk_list_store_new (N_COLUMNS,
///                                    G_TYPE_STRING,
///                                    G_TYPE_INT,
///                                    G_TYPE_BOOLEAN);
/// 
///   for (i = 0; i < 10; i++)
///     {
///       char *some_data;
/// 
///       some_data = get_some_data (i);
/// 
///       // Add a new row to the model
///       gtk_list_store_append (list_store, &iter);
///       gtk_list_store_set (list_store, &iter,
///                           COLUMN_STRING, some_data,
///                           COLUMN_INT, i,
///                           COLUMN_BOOLEAN,  FALSE,
///                           -1);
/// 
///       // As the store will keep a copy of the string internally,
///       // we free some_data.
///       g_free (some_data);
///     }
/// 
///   // Modify a particular row
///   path = gtk_tree_path_new_from_string ("4");
///   gtk_tree_model_get_iter (GTK_TREE_MODEL (list_store),
///                            &iter,
///                            path);
///   gtk_tree_path_free (path);
///   gtk_list_store_set (list_store, &iter,
///                       COLUMN_BOOLEAN, TRUE,
///                       -1);
/// }
/// ```
/// 
/// # Performance Considerations
/// 
/// Internally, the `GtkListStore` was originally implemented with a linked list
/// with a tail pointer.  As a result, it was fast at data insertion and deletion,
/// and not fast at random data access.  The `GtkListStore` sets the
/// `GTK_TREE_MODEL_ITERS_PERSIST` flag, which means that `GtkTreeIters` can be
/// cached while the row exists.  Thus, if access to a particular row is needed
/// often and your code is expected to run on older versions of GTK, it is worth
/// keeping the iter around.
/// 
/// # Atomic Operations
/// 
/// It is important to note that only the methods
/// `gtk_list_store_insert_with_values()` and `gtk_list_store_insert_with_valuesv()`
/// are atomic, in the sense that the row is being appended to the store and the
/// values filled in in a single operation with regard to `GtkTreeModel` signaling.
/// In contrast, using e.g. `gtk_list_store_append()` and then `gtk_list_store_set()`
/// will first create a row, which triggers the `GtkTreeModel::row-inserted` signal
/// on `GtkListStore`. The row, however, is still empty, and any signal handler
/// connecting to `GtkTreeModel::row-inserted` on this particular store should be prepared
/// for the situation that the row might be empty. This is especially important
/// if you are wrapping the `GtkListStore` inside a `GtkTreeModelFilter` and are
/// using a `GtkTreeModelFilterVisibleFunc`. Using any of the non-atomic operations
/// to append rows to the `GtkListStore` will cause the
/// `GtkTreeModelFilterVisibleFunc` to be visited with an empty row first; the
/// function must be prepared for that.
/// 
/// # GtkListStore as GtkBuildable
/// 
/// The GtkListStore implementation of the GtkBuildable interface allows
/// to specify the model columns with a &lt;columns&gt; element that may contain
/// multiple &lt;column&gt; elements, each specifying one model column. The “type”
/// attribute specifies the data type for the column.
/// 
/// Additionally, it is possible to specify content for the list store
/// in the UI definition, with the &lt;data&gt; element. It can contain multiple
/// &lt;row&gt; elements, each specifying to content for one row of the list model.
/// Inside a &lt;row&gt;, the &lt;col&gt; elements specify the content for individual cells.
/// 
/// Note that it is probably more common to define your models in the code,
/// and one might consider it a layering violation to specify the content of
/// a list store in a UI definition, data, not presentation, and common wisdom
/// is to separate the two, as far as possible.
/// 
/// An example of a UI Definition fragment for a list store:
/// (C Language Example):
/// ```C
/// <object class="GtkListStore">
///   <columns>
///     <column type="gchararray"/>
///     <column type="gchararray"/>
///     <column type="gint"/>
///   </columns>
///   <data>
///     <row>
///       <col id="0">John</col>
///       <col id="1">Doe</col>
///       <col id="2">25</col>
///     </row>
///     <row>
///       <col id="0">Johan</col>
///       <col id="1">Dahlin</col>
///       <col id="2">50</col>
///     </row>
///   </data>
/// </object>
/// ```
/// 
open class ListStore: GLibObject.Object, ListStoreProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListStore` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkListStore>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListStore` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkListStore>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListStore` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListStore` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListStore` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkListStore>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListStore` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkListStore>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkListStore`.
    /// i.e., ownership is transferred to the `ListStore` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkListStore>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ListStoreProtocol`
    /// Will retain `GtkListStore`.
    /// - Parameter other: an instance of a related type that implements `ListStoreProtocol`
    @inlinable public init<T: ListStoreProtocol>(listStore other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }


    // *** new() is not available because it has a varargs (...) parameter!


    /// Non-vararg creation function.  Used primarily by language bindings.
    @inlinable public init(nColumns: Int, types: UnsafeMutablePointer<GType>!) {
        let rv = gtk_list_store_newv(gint(nColumns), types)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Non-vararg creation function.  Used primarily by language bindings.
    @inlinable public static func listStoreNewv(nColumns: Int, types: UnsafeMutablePointer<GType>!) -> ListStore! {
        guard let rv = ListStore(gconstpointer: gconstpointer(gtk_list_store_newv(gint(nColumns), types))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

// MARK: no ListStore properties

public enum ListStoreSignalName: String, SignalNameProtocol {
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

// MARK: ListStore has no signals
// MARK: ListStore Class: ListStoreProtocol extension (methods and fields)
public extension ListStoreProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkListStore` instance.
    @inlinable var list_store_ptr: UnsafeMutablePointer<GtkListStore>! { return ptr?.assumingMemoryBound(to: GtkListStore.self) }

    /// Appends a new row to `list_store`.  `iter` will be changed to point to this new
    /// row.  The row will be empty after this function is called.  To fill in
    /// values, you need to call `gtk_list_store_set()` or `gtk_list_store_set_value()`.
    @inlinable func append<TreeIterT: TreeIterProtocol>(iter: TreeIterT) {
        gtk_list_store_append(list_store_ptr, iter.tree_iter_ptr)
    
    }

    /// Removes all rows from the list store.
    @inlinable func clear() {
        gtk_list_store_clear(list_store_ptr)
    
    }

    /// Creates a new row at `position`.  `iter` will be changed to point to this new
    /// row.  If `position` is -1 or is larger than the number of rows on the list,
    /// then the new row will be appended to the list. The row will be empty after
    /// this function is called.  To fill in values, you need to call
    /// `gtk_list_store_set()` or `gtk_list_store_set_value()`.
    @inlinable func insert<TreeIterT: TreeIterProtocol>(iter: TreeIterT, position: Int) {
        gtk_list_store_insert(list_store_ptr, iter.tree_iter_ptr, gint(position))
    
    }

    /// Inserts a new row after `sibling`. If `sibling` is `nil`, then the row will be
    /// prepended to the beginning of the list. `iter` will be changed to point to
    /// this new row. The row will be empty after this function is called. To fill
    /// in values, you need to call `gtk_list_store_set()` or `gtk_list_store_set_value()`.
    @inlinable func insertAfter<TreeIterT: TreeIterProtocol>(iter: TreeIterT, sibling: TreeIterT?) {
        gtk_list_store_insert_after(list_store_ptr, iter.tree_iter_ptr, sibling?.tree_iter_ptr)
    
    }

    /// Inserts a new row before `sibling`. If `sibling` is `nil`, then the row will
    /// be appended to the end of the list. `iter` will be changed to point to this
    /// new row. The row will be empty after this function is called. To fill in
    /// values, you need to call `gtk_list_store_set()` or `gtk_list_store_set_value()`.
    @inlinable func insertBefore<TreeIterT: TreeIterProtocol>(iter: TreeIterT, sibling: TreeIterT?) {
        gtk_list_store_insert_before(list_store_ptr, iter.tree_iter_ptr, sibling?.tree_iter_ptr)
    
    }


    // *** insertWithValues() is not available because it has a varargs (...) parameter!


    /// A variant of `gtk_list_store_insert_with_values()` which
    /// takes the columns and values as two arrays, instead of
    /// varargs.
    /// 
    /// This function is mainly intended for language-bindings.
    @inlinable func insertWithValuesv(iter: TreeIterRef? = nil, position: Int, columns: UnsafeMutablePointer<CInt>!, values: UnsafeMutablePointer<GValue>!, nValues: Int) {
        gtk_list_store_insert_with_valuesv(list_store_ptr, iter?.tree_iter_ptr, gint(position), columns, values, gint(nValues))
    
    }
    /// A variant of `gtk_list_store_insert_with_values()` which
    /// takes the columns and values as two arrays, instead of
    /// varargs.
    /// 
    /// This function is mainly intended for language-bindings.
    @inlinable func insertWithValuesv<TreeIterT: TreeIterProtocol>(iter: TreeIterT?, position: Int, columns: UnsafeMutablePointer<CInt>!, values: UnsafeMutablePointer<GValue>!, nValues: Int) {
        gtk_list_store_insert_with_valuesv(list_store_ptr, iter?.tree_iter_ptr, gint(position), columns, values, gint(nValues))
    
    }

    /// >&gt; This function is slow. Only use it for debugging and/or testing
    /// &gt; purposes.
    /// 
    /// Checks if the given iter is a valid iter for this `GtkListStore`.
    @inlinable func iterIsValid<TreeIterT: TreeIterProtocol>(iter: TreeIterT) -> Bool {
        let rv = ((gtk_list_store_iter_is_valid(list_store_ptr, iter.tree_iter_ptr)) != 0)
        return rv
    }

    /// Moves `iter` in `store` to the position after `position`. Note that this
    /// function only works with unsorted stores. If `position` is `nil`, `iter`
    /// will be moved to the start of the list.
    @inlinable func moveAfter<TreeIterT: TreeIterProtocol>(iter: TreeIterT, position: TreeIterT?) {
        gtk_list_store_move_after(list_store_ptr, iter.tree_iter_ptr, position?.tree_iter_ptr)
    
    }

    /// Moves `iter` in `store` to the position before `position`. Note that this
    /// function only works with unsorted stores. If `position` is `nil`, `iter`
    /// will be moved to the end of the list.
    @inlinable func moveBefore<TreeIterT: TreeIterProtocol>(iter: TreeIterT, position: TreeIterT?) {
        gtk_list_store_move_before(list_store_ptr, iter.tree_iter_ptr, position?.tree_iter_ptr)
    
    }

    /// Prepends a new row to `list_store`. `iter` will be changed to point to this new
    /// row. The row will be empty after this function is called. To fill in
    /// values, you need to call `gtk_list_store_set()` or `gtk_list_store_set_value()`.
    @inlinable func prepend<TreeIterT: TreeIterProtocol>(iter: TreeIterT) {
        gtk_list_store_prepend(list_store_ptr, iter.tree_iter_ptr)
    
    }

    /// Removes the given row from the list store.  After being removed,
    /// `iter` is set to be the next valid row, or invalidated if it pointed
    /// to the last row in `list_store`.
    @inlinable func remove<TreeIterT: TreeIterProtocol>(iter: TreeIterT) -> Bool {
        let rv = ((gtk_list_store_remove(list_store_ptr, iter.tree_iter_ptr)) != 0)
        return rv
    }

    /// Reorders `store` to follow the order indicated by `new_order`. Note that
    /// this function only works with unsorted stores.
    @inlinable func reorder(newOrder: UnsafeMutablePointer<CInt>!) {
        gtk_list_store_reorder(list_store_ptr, newOrder)
    
    }


    // *** set() is not available because it has a varargs (...) parameter!


    /// This function is meant primarily for `GObjects` that inherit from `GtkListStore`,
    /// and should only be used when constructing a new `GtkListStore`.  It will not
    /// function after a row has been added, or a method on the `GtkTreeModel`
    /// interface is called.
    @inlinable func setColumnTypes(nColumns: Int, types: UnsafeMutablePointer<GType>!) {
        gtk_list_store_set_column_types(list_store_ptr, gint(nColumns), types)
    
    }

    /// See `gtk_list_store_set()`; this version takes a va_list for use by language
    /// bindings.
    @inlinable func setValist<TreeIterT: TreeIterProtocol>(iter: TreeIterT, varArgs: CVaListPointer) {
        gtk_list_store_set_valist(list_store_ptr, iter.tree_iter_ptr, varArgs)
    
    }

    /// Sets the data in the cell specified by `iter` and `column`.
    /// The type of `value` must be convertible to the type of the
    /// column.
    @inlinable func setValue<TreeIterT: TreeIterProtocol, ValueT: GLibObject.ValueProtocol>(iter: TreeIterT, column: Int, value: ValueT) {
        gtk_list_store_set_value(list_store_ptr, iter.tree_iter_ptr, gint(column), value.value_ptr)
    
    }

    /// A variant of `gtk_list_store_set_valist()` which
    /// takes the columns and values as two arrays, instead of
    /// varargs. This function is mainly intended for
    /// language-bindings and in case the number of columns to
    /// change is not known until run-time.
    @inlinable func setValuesv<TreeIterT: TreeIterProtocol>(iter: TreeIterT, columns: UnsafeMutablePointer<CInt>!, values: UnsafeMutablePointer<GValue>!, nValues: Int) {
        gtk_list_store_set_valuesv(list_store_ptr, iter.tree_iter_ptr, columns, values, gint(nValues))
    
    }

    /// Swaps `a` and `b` in `store`. Note that this function only works with
    /// unsorted stores.
    @inlinable func swap<TreeIterT: TreeIterProtocol>(a: TreeIterT, b: TreeIterT) {
        gtk_list_store_swap(list_store_ptr, a.tree_iter_ptr, b.tree_iter_ptr)
    
    }

    @inlinable var parent: GObject {
        get {
            let rv = list_store_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - ListView Class

/// The `ListViewProtocol` protocol exposes the methods and properties of an underlying `GtkListView` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListView`.
/// Alternatively, use `ListViewRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkListView` presents a large dynamic list of items.
/// 
/// `GtkListView` uses its factory to generate one row widget for each visible
/// item and shows them in a linear display, either vertically or horizontally.
/// 
/// The [property`Gtk.ListView:show-separators`] property offers a simple way to
/// display separators between the rows.
/// 
/// `GtkListView` allows the user to select items according to the selection
/// characteristics of the model. For models that allow multiple selected items,
/// it is possible to turn on _rubberband selection_, using
/// [property`Gtk.ListView:enable-rubberband`].
/// 
/// If you need multiple columns with headers, see [class`Gtk.ColumnView`].
/// 
/// To learn more about the list widget framework, see the
/// [overview](section-list-widget.html).
/// 
/// An example of using `GtkListView`:
/// ```c
/// static void
/// setup_listitem_cb (GtkListItemFactory *factory,
///                    GtkListItem        *list_item)
/// {
///   GtkWidget *image;
/// 
///   image = gtk_image_new ();
///   gtk_image_set_icon_size (GTK_IMAGE (image), GTK_ICON_SIZE_LARGE);
///   gtk_list_item_set_child (list_item, image);
/// }
/// 
/// static void
/// bind_listitem_cb (GtkListItemFactory *factory,
///                   GtkListItem        *list_item)
/// {
///   GtkWidget *image;
///   GAppInfo *app_info;
/// 
///   image = gtk_list_item_get_child (list_item);
///   app_info = gtk_list_item_get_item (list_item);
///   gtk_image_set_from_gicon (GTK_IMAGE (image), g_app_info_get_icon (app_info));
/// }
/// 
/// static void
/// activate_cb (GtkListView  *list,
///              guint         position,
///              gpointer      unused)
/// {
///   GAppInfo *app_info;
/// 
///   app_info = g_list_model_get_item (G_LIST_MODEL (gtk_list_view_get_model (list)), position);
///   g_app_info_launch (app_info, NULL, NULL, NULL);
///   g_object_unref (app_info);
/// }
/// 
/// ...
/// 
///   model = create_application_list ();
/// 
///   factory = gtk_signal_list_item_factory_new ();
///   g_signal_connect (factory, "setup", G_CALLBACK (setup_listitem_cb), NULL);
///   g_signal_connect (factory, "bind", G_CALLBACK (bind_listitem_cb), NULL);
/// 
///   list = gtk_list_view_new (GTK_SELECTION_MODEL (gtk_single_selection_new (model)), factory);
/// 
///   g_signal_connect (list, "activate", G_CALLBACK (activate_cb), NULL);
/// 
///   gtk_scrolled_window_set_child (GTK_SCROLLED_WINDOW (sw), list);
/// ```
/// 
/// # CSS nodes
/// 
/// ```
/// listview[.separators][.rich-list][.navigation-sidebar][.data-table]
/// ├── row
/// │
/// ├── row
/// │
/// ┊
/// ╰── [rubberband]
/// ```
/// 
/// `GtkListView` uses a single CSS node named listview. It may carry the
/// .separators style class, when `GtkListView`:show-separators property
/// is set. Each child widget uses a single CSS node named row. For
/// rubberband selection, a node with name rubberband is used.
/// 
/// The main listview node may also carry style classes to select
/// the style of [list presentation](ListContainers.html`list-styles`):
/// .rich-list, .navigation-sidebar or .data-table.
/// 
/// # Accessibility
/// 
/// `GtkListView` uses the `GTK_ACCESSIBLE_ROLE_LIST` role, and the list
/// items use the `GTK_ACCESSIBLE_ROLE_LIST_ITEM` role.
public protocol ListViewProtocol: ListBaseProtocol {
        /// Untyped pointer to the underlying `GtkListView` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkListView` instance.
    var list_view_ptr: UnsafeMutablePointer<GtkListView>! { get }

    /// Required Initialiser for types conforming to `ListViewProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ListViewRef` type acts as a lightweight Swift reference to an underlying `GtkListView` instance.
/// It exposes methods that can operate on this data type through `ListViewProtocol` conformance.
/// Use `ListViewRef` only as an `unowned` reference to an existing `GtkListView` instance.
///
/// `GtkListView` presents a large dynamic list of items.
/// 
/// `GtkListView` uses its factory to generate one row widget for each visible
/// item and shows them in a linear display, either vertically or horizontally.
/// 
/// The [property`Gtk.ListView:show-separators`] property offers a simple way to
/// display separators between the rows.
/// 
/// `GtkListView` allows the user to select items according to the selection
/// characteristics of the model. For models that allow multiple selected items,
/// it is possible to turn on _rubberband selection_, using
/// [property`Gtk.ListView:enable-rubberband`].
/// 
/// If you need multiple columns with headers, see [class`Gtk.ColumnView`].
/// 
/// To learn more about the list widget framework, see the
/// [overview](section-list-widget.html).
/// 
/// An example of using `GtkListView`:
/// ```c
/// static void
/// setup_listitem_cb (GtkListItemFactory *factory,
///                    GtkListItem        *list_item)
/// {
///   GtkWidget *image;
/// 
///   image = gtk_image_new ();
///   gtk_image_set_icon_size (GTK_IMAGE (image), GTK_ICON_SIZE_LARGE);
///   gtk_list_item_set_child (list_item, image);
/// }
/// 
/// static void
/// bind_listitem_cb (GtkListItemFactory *factory,
///                   GtkListItem        *list_item)
/// {
///   GtkWidget *image;
///   GAppInfo *app_info;
/// 
///   image = gtk_list_item_get_child (list_item);
///   app_info = gtk_list_item_get_item (list_item);
///   gtk_image_set_from_gicon (GTK_IMAGE (image), g_app_info_get_icon (app_info));
/// }
/// 
/// static void
/// activate_cb (GtkListView  *list,
///              guint         position,
///              gpointer      unused)
/// {
///   GAppInfo *app_info;
/// 
///   app_info = g_list_model_get_item (G_LIST_MODEL (gtk_list_view_get_model (list)), position);
///   g_app_info_launch (app_info, NULL, NULL, NULL);
///   g_object_unref (app_info);
/// }
/// 
/// ...
/// 
///   model = create_application_list ();
/// 
///   factory = gtk_signal_list_item_factory_new ();
///   g_signal_connect (factory, "setup", G_CALLBACK (setup_listitem_cb), NULL);
///   g_signal_connect (factory, "bind", G_CALLBACK (bind_listitem_cb), NULL);
/// 
///   list = gtk_list_view_new (GTK_SELECTION_MODEL (gtk_single_selection_new (model)), factory);
/// 
///   g_signal_connect (list, "activate", G_CALLBACK (activate_cb), NULL);
/// 
///   gtk_scrolled_window_set_child (GTK_SCROLLED_WINDOW (sw), list);
/// ```
/// 
/// # CSS nodes
/// 
/// ```
/// listview[.separators][.rich-list][.navigation-sidebar][.data-table]
/// ├── row
/// │
/// ├── row
/// │
/// ┊
/// ╰── [rubberband]
/// ```
/// 
/// `GtkListView` uses a single CSS node named listview. It may carry the
/// .separators style class, when `GtkListView`:show-separators property
/// is set. Each child widget uses a single CSS node named row. For
/// rubberband selection, a node with name rubberband is used.
/// 
/// The main listview node may also carry style classes to select
/// the style of [list presentation](ListContainers.html`list-styles`):
/// .rich-list, .navigation-sidebar or .data-table.
/// 
/// # Accessibility
/// 
/// `GtkListView` uses the `GTK_ACCESSIBLE_ROLE_LIST` role, and the list
/// items use the `GTK_ACCESSIBLE_ROLE_LIST_ITEM` role.
public struct ListViewRef: ListViewProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkListView` instance.
    /// For type-safe access, use the generated, typed pointer `list_view_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ListViewRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkListView>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkListView>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkListView>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkListView>?) {
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

    /// Reference intialiser for a related type that implements `ListViewProtocol`
    @inlinable init<T: ListViewProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ListViewProtocol>(_ other: T) -> ListViewRef { ListViewRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListViewProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListViewProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListViewProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListViewProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListViewProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkListView` that uses the given `factory` for
    /// mapping items to widgets.
    /// 
    /// The function takes ownership of the
    /// arguments, so you can write code like
    /// ```c
    /// list_view = gtk_list_view_new (create_model (),
    ///   gtk_builder_list_item_factory_new_from_resource ("/resource.ui"));
    /// ```
    @inlinable init<ListItemFactoryT: ListItemFactoryProtocol, SelectionModelT: SelectionModelProtocol>( model: SelectionModelT?, factory: ListItemFactoryT?) {
        let rv = gtk_list_view_new(model?.selection_model_ptr, factory?.list_item_factory_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `ListView` type acts as a reference-counted owner of an underlying `GtkListView` instance.
/// It provides the methods that can operate on this data type through `ListViewProtocol` conformance.
/// Use `ListView` as a strong reference or owner of a `GtkListView` instance.
///
/// `GtkListView` presents a large dynamic list of items.
/// 
/// `GtkListView` uses its factory to generate one row widget for each visible
/// item and shows them in a linear display, either vertically or horizontally.
/// 
/// The [property`Gtk.ListView:show-separators`] property offers a simple way to
/// display separators between the rows.
/// 
/// `GtkListView` allows the user to select items according to the selection
/// characteristics of the model. For models that allow multiple selected items,
/// it is possible to turn on _rubberband selection_, using
/// [property`Gtk.ListView:enable-rubberband`].
/// 
/// If you need multiple columns with headers, see [class`Gtk.ColumnView`].
/// 
/// To learn more about the list widget framework, see the
/// [overview](section-list-widget.html).
/// 
/// An example of using `GtkListView`:
/// ```c
/// static void
/// setup_listitem_cb (GtkListItemFactory *factory,
///                    GtkListItem        *list_item)
/// {
///   GtkWidget *image;
/// 
///   image = gtk_image_new ();
///   gtk_image_set_icon_size (GTK_IMAGE (image), GTK_ICON_SIZE_LARGE);
///   gtk_list_item_set_child (list_item, image);
/// }
/// 
/// static void
/// bind_listitem_cb (GtkListItemFactory *factory,
///                   GtkListItem        *list_item)
/// {
///   GtkWidget *image;
///   GAppInfo *app_info;
/// 
///   image = gtk_list_item_get_child (list_item);
///   app_info = gtk_list_item_get_item (list_item);
///   gtk_image_set_from_gicon (GTK_IMAGE (image), g_app_info_get_icon (app_info));
/// }
/// 
/// static void
/// activate_cb (GtkListView  *list,
///              guint         position,
///              gpointer      unused)
/// {
///   GAppInfo *app_info;
/// 
///   app_info = g_list_model_get_item (G_LIST_MODEL (gtk_list_view_get_model (list)), position);
///   g_app_info_launch (app_info, NULL, NULL, NULL);
///   g_object_unref (app_info);
/// }
/// 
/// ...
/// 
///   model = create_application_list ();
/// 
///   factory = gtk_signal_list_item_factory_new ();
///   g_signal_connect (factory, "setup", G_CALLBACK (setup_listitem_cb), NULL);
///   g_signal_connect (factory, "bind", G_CALLBACK (bind_listitem_cb), NULL);
/// 
///   list = gtk_list_view_new (GTK_SELECTION_MODEL (gtk_single_selection_new (model)), factory);
/// 
///   g_signal_connect (list, "activate", G_CALLBACK (activate_cb), NULL);
/// 
///   gtk_scrolled_window_set_child (GTK_SCROLLED_WINDOW (sw), list);
/// ```
/// 
/// # CSS nodes
/// 
/// ```
/// listview[.separators][.rich-list][.navigation-sidebar][.data-table]
/// ├── row
/// │
/// ├── row
/// │
/// ┊
/// ╰── [rubberband]
/// ```
/// 
/// `GtkListView` uses a single CSS node named listview. It may carry the
/// .separators style class, when `GtkListView`:show-separators property
/// is set. Each child widget uses a single CSS node named row. For
/// rubberband selection, a node with name rubberband is used.
/// 
/// The main listview node may also carry style classes to select
/// the style of [list presentation](ListContainers.html`list-styles`):
/// .rich-list, .navigation-sidebar or .data-table.
/// 
/// # Accessibility
/// 
/// `GtkListView` uses the `GTK_ACCESSIBLE_ROLE_LIST` role, and the list
/// items use the `GTK_ACCESSIBLE_ROLE_LIST_ITEM` role.
open class ListView: ListBase, ListViewProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListView` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkListView>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListView` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkListView>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListView` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListView` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListView` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkListView>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListView` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkListView>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkListView`.
    /// i.e., ownership is transferred to the `ListView` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkListView>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ListViewProtocol`
    /// Will retain `GtkListView`.
    /// - Parameter other: an instance of a related type that implements `ListViewProtocol`
    @inlinable public init<T: ListViewProtocol>(listView other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListViewProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListViewProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListViewProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListViewProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListViewProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListViewProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListViewProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListViewProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkListView` that uses the given `factory` for
    /// mapping items to widgets.
    /// 
    /// The function takes ownership of the
    /// arguments, so you can write code like
    /// ```c
    /// list_view = gtk_list_view_new (create_model (),
    ///   gtk_builder_list_item_factory_new_from_resource ("/resource.ui"));
    /// ```
    @inlinable public init<ListItemFactoryT: ListItemFactoryProtocol, SelectionModelT: SelectionModelProtocol>( model: SelectionModelT?, factory: ListItemFactoryT?) {
        let rv = gtk_list_view_new(model?.selection_model_ptr, factory?.list_item_factory_ptr)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum ListViewPropertyName: String, PropertyNameProtocol {
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    /// Whether the widget can receive pointer events.
    case canTarget = "can-target"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`.
    case cursor = "cursor"
    /// Allow rubberband selection.
    case enableRubberband = "enable-rubberband"
    /// Factory for populating list items.
    case factory = "factory"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// How to distribute horizontal space if widget gets extra space.
    case halign = "halign"
    /// Whether the widget is the default widget.
    case hasDefault = "has-default"
    /// Whether the widget has the input focus.
    case hasFocus = "has-focus"
    /// Enables or disables the emission of the `query-tooltip` signal on `widget`.
    /// 
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using [signal`Gtk.Widget::query-tooltip`] to
    /// determine whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    /// Override for height request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case heightRequest = "height-request"
    /// Whether to expand horizontally.
    case hexpand = "hexpand"
    /// Whether to use the `hexpand` property.
    case hexpandSet = "hexpand-set"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case layoutManager = "layout-manager"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginEnd = "margin-end"
    /// Margin on start of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginTop = "margin-top"
    /// Model for the items displayed.
    case model = "model"
    /// The name of the widget.
    case name = "name"
    /// The requested opacity of the widget.
    case opacity = "opacity"
    /// The orientation of the list. See GtkOrientable:orientation
    /// for details.
    case orientation = "orientation"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    /// The parent widget of this widget.
    case parent = "parent"
    /// Whether the widget will receive the default action when it is focused.
    case receivesDefault = "receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget.
    case scaleFactor = "scale-factor"
    /// Whether the widget responds to input.
    case sensitive = "sensitive"
    /// Show separators between rows.
    case showSeparators = "show-separators"
    /// Activate rows on single click and select them on hover.
    case singleClickActivate = "single-click-activate"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with Pango markup.
    /// 
    /// Also see [method`Gtk.Tooltip.set_markup`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see [method`Gtk.Tooltip.set_text`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// How to distribute vertical space if widget gets extra space.
    case valign = "valign"
    /// Whether to expand vertically.
    case vexpand = "vexpand"
    /// Whether to use the `vexpand` property.
    case vexpandSet = "vexpand-set"
    /// Whether the widget is visible.
    case visible = "visible"
    /// Override for width request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case widthRequest = "width-request"
}

public extension ListViewProtocol {
    /// Bind a `ListViewPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ListViewPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a ListView property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ListViewPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a ListView property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ListViewPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum ListViewSignalName: String, SignalNameProtocol {
    /// Emitted when a row has been activated by the user,
    /// usually via activating the GtkListView|list.activate-item action.
    /// 
    /// This allows for a convenient way to handle activation in a listview.
    /// See [method`Gtk.ListItem.set_activatable`] for details on how to use
    /// this signal.
    case activate = "activate"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold.
    /// 
    /// May result in finalization of the widget if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// Emitted when the text direction of a widget changes.
    case directionChanged = "direction-changed"
    /// Emitted when `widget` is hidden.
    case hide = "hide"
    /// Emitted if keyboard navigation fails.
    /// 
    /// See [method`Gtk.Widget.keynav_failed`] for details.
    case keynavFailed = "keynav-failed"
    /// Emitted when `widget` is going to be mapped.
    /// 
    /// A widget is mapped when the widget is visible (which is controlled with
    /// [property`Gtk.Widget:visible`]) and all its parents up to the toplevel widget
    /// are also visible.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of [signal`Gtk.Widget::unmap`].
    case map = "map"
    /// Emitted when a widget is activated via a mnemonic.
    /// 
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// Emitted when the focus is moved.
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
    /// Emitted when the widgets tooltip is about to be shown.
    /// 
    /// This happens when the [property`Gtk.Widget:has-tooltip`] property
    /// is `true` and the hover timeout has expired with the cursor hovering
    /// "above" `widget`; or emitted when `widget` got focus in keyboard mode.
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
    /// Emitted when `widget` is associated with a `GdkSurface`.
    /// 
    /// This means that [method`Gtk.Widget.realize`] has been called
    /// or the widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// Emitted when `widget` is shown.
    case show = "show"
    /// Emitted when the widget state changes.
    /// 
    /// See [method`Gtk.Widget.get_state_flags`].
    case stateFlagsChanged = "state-flags-changed"
    /// Emitted when `widget` is going to be unmapped.
    /// 
    /// A widget is unmapped when either it or any of its parents up to the
    /// toplevel widget have been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer,
    /// it can be used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// Emitted when the `GdkSurface` associated with `widget` is destroyed.
    /// 
    /// This means that [method`Gtk.Widget.unrealize`] has been called
    /// or the widget has been unmapped (that is, it is going to be hidden).
    case unrealize = "unrealize"
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCanFocus = "notify::can-focus"
    /// Whether the widget can receive pointer events.
    case notifyCanTarget = "notify::can-target"
    /// A list of css classes applied to this widget.
    case notifyCssClasses = "notify::css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCssName = "notify::css-name"
    /// The cursor used by `widget`.
    case notifyCursor = "notify::cursor"
    /// Allow rubberband selection.
    case notifyEnableRubberband = "notify::enable-rubberband"
    /// Factory for populating list items.
    case notifyFactory = "notify::factory"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case notifyFocusable = "notify::focusable"
    /// How to distribute horizontal space if widget gets extra space.
    case notifyHalign = "notify::halign"
    /// Whether the widget is the default widget.
    case notifyHasDefault = "notify::has-default"
    /// Whether the widget has the input focus.
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of the `query-tooltip` signal on `widget`.
    /// 
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using [signal`Gtk.Widget::query-tooltip`] to
    /// determine whether it will provide a tooltip or not.
    case notifyHasTooltip = "notify::has-tooltip"
    /// Override for height request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `hexpand` property.
    case notifyHexpandSet = "notify::hexpand-set"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyLayoutManager = "notify::layout-manager"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on start of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginTop = "notify::margin-top"
    /// Model for the items displayed.
    case notifyModel = "notify::model"
    /// The name of the widget.
    case notifyName = "notify::name"
    /// The requested opacity of the widget.
    case notifyOpacity = "notify::opacity"
    /// The orientation of the list. See GtkOrientable:orientation
    /// for details.
    case notifyOrientation = "notify::orientation"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyOverflow = "notify::overflow"
    /// The parent widget of this widget.
    case notifyParent = "notify::parent"
    /// Whether the widget will receive the default action when it is focused.
    case notifyReceivesDefault = "notify::receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case notifyRoot = "notify::root"
    /// The scale factor of the widget.
    case notifyScaleFactor = "notify::scale-factor"
    /// Whether the widget responds to input.
    case notifySensitive = "notify::sensitive"
    /// Show separators between rows.
    case notifyShowSeparators = "notify::show-separators"
    /// Activate rows on single click and select them on hover.
    case notifySingleClickActivate = "notify::single-click-activate"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with Pango markup.
    /// 
    /// Also see [method`Gtk.Tooltip.set_markup`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see [method`Gtk.Tooltip.set_text`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    /// How to distribute vertical space if widget gets extra space.
    case notifyValign = "notify::valign"
    /// Whether to expand vertically.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `vexpand` property.
    case notifyVexpandSet = "notify::vexpand-set"
    /// Whether the widget is visible.
    case notifyVisible = "notify::visible"
    /// Override for width request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case notifyWidthRequest = "notify::width-request"
}

// MARK: ListView signals
public extension ListViewProtocol {
    /// Connect a Swift signal handler to the given, typed `ListViewSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: ListViewSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `ListViewSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: ListViewSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted when a row has been activated by the user,
    /// usually via activating the GtkListView|list.activate-item action.
    /// 
    /// This allows for a convenient way to handle activation in a listview.
    /// See [method`Gtk.ListItem.set_activatable`] for details on how to use
    /// this signal.
    /// - Note: This represents the underlying `activate` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter position: position of item to activate
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `activate` signal is emitted
    @discardableResult @inlinable func onActivate(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ListViewRef, _ position: UInt) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ListViewRef, UInt, Void>
        let cCallback: @convention(c) (gpointer, guint, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ListViewRef(raw: unownedSelf), UInt(arg1))
            return output
        }
        return connect(
            signal: .activate,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `activate` signal for using the `connect(signal:)` methods
    static var activateSignal: ListViewSignalName { .activate }
    
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
    /// - Note: This represents the underlying `notify::enable-rubberband` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyEnableRubberband` signal is emitted
    @discardableResult @inlinable func onNotifyEnableRubberband(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ListViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ListViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ListViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyEnableRubberband,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::enable-rubberband` signal for using the `connect(signal:)` methods
    static var notifyEnableRubberbandSignal: ListViewSignalName { .notifyEnableRubberband }
    
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
    /// - Note: This represents the underlying `notify::factory` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyFactory` signal is emitted
    @discardableResult @inlinable func onNotifyFactory(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ListViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ListViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ListViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyFactory,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::factory` signal for using the `connect(signal:)` methods
    static var notifyFactorySignal: ListViewSignalName { .notifyFactory }
    
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
    /// - Note: This represents the underlying `notify::model` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyModel` signal is emitted
    @discardableResult @inlinable func onNotifyModel(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ListViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ListViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ListViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyModel,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::model` signal for using the `connect(signal:)` methods
    static var notifyModelSignal: ListViewSignalName { .notifyModel }
    
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
    /// - Note: This represents the underlying `notify::show-separators` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyShowSeparators` signal is emitted
    @discardableResult @inlinable func onNotifyShowSeparators(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ListViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ListViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ListViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyShowSeparators,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::show-separators` signal for using the `connect(signal:)` methods
    static var notifyShowSeparatorsSignal: ListViewSignalName { .notifyShowSeparators }
    
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
    /// - Note: This represents the underlying `notify::single-click-activate` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifySingleClickActivate` signal is emitted
    @discardableResult @inlinable func onNotifySingleClickActivate(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ListViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ListViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ListViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifySingleClickActivate,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::single-click-activate` signal for using the `connect(signal:)` methods
    static var notifySingleClickActivateSignal: ListViewSignalName { .notifySingleClickActivate }
    
}

// MARK: ListView Class: ListViewProtocol extension (methods and fields)
public extension ListViewProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkListView` instance.
    @inlinable var list_view_ptr: UnsafeMutablePointer<GtkListView>! { return ptr?.assumingMemoryBound(to: GtkListView.self) }

    /// Returns whether rows can be selected by dragging with the mouse.
    @inlinable func getEnableRubberband() -> Bool {
        let rv = ((gtk_list_view_get_enable_rubberband(list_view_ptr)) != 0)
        return rv
    }

    /// Gets the factory that's currently used to populate list items.
    @inlinable func getFactory() -> ListItemFactoryRef! {
        let rv = ListItemFactoryRef(gconstpointer: gconstpointer(gtk_list_view_get_factory(list_view_ptr)))
        return rv
    }

    /// Gets the model that's currently used to read the items displayed.
    @inlinable func getModel() -> SelectionModelRef! {
        let rv = SelectionModelRef(gconstpointer: gconstpointer(gtk_list_view_get_model(list_view_ptr)))
        return rv
    }

    /// Returns whether the list box should show separators
    /// between rows.
    @inlinable func getShowSeparators() -> Bool {
        let rv = ((gtk_list_view_get_show_separators(list_view_ptr)) != 0)
        return rv
    }

    /// Returns whether rows will be activated on single click and
    /// selected on hover.
    @inlinable func getSingleClickActivate() -> Bool {
        let rv = ((gtk_list_view_get_single_click_activate(list_view_ptr)) != 0)
        return rv
    }

    /// Sets whether selections can be changed by dragging with the mouse.
    @inlinable func set(enableRubberband: Bool) {
        gtk_list_view_set_enable_rubberband(list_view_ptr, gboolean((enableRubberband) ? 1 : 0))
    
    }

    /// Sets the `GtkListItemFactory` to use for populating list items.
    @inlinable func set(factory: ListItemFactoryRef? = nil) {
        gtk_list_view_set_factory(list_view_ptr, factory?.list_item_factory_ptr)
    
    }
    /// Sets the `GtkListItemFactory` to use for populating list items.
    @inlinable func set<ListItemFactoryT: ListItemFactoryProtocol>(factory: ListItemFactoryT?) {
        gtk_list_view_set_factory(list_view_ptr, factory?.list_item_factory_ptr)
    
    }

    /// Sets the model to use.
    /// 
    /// This must be a [iface`Gtk.SelectionModel`] to use.
    @inlinable func set(model: SelectionModelRef? = nil) {
        gtk_list_view_set_model(list_view_ptr, model?.selection_model_ptr)
    
    }
    /// Sets the model to use.
    /// 
    /// This must be a [iface`Gtk.SelectionModel`] to use.
    @inlinable func set<SelectionModelT: SelectionModelProtocol>(model: SelectionModelT?) {
        gtk_list_view_set_model(list_view_ptr, model?.selection_model_ptr)
    
    }

    /// Sets whether the list box should show separators
    /// between rows.
    @inlinable func set(showSeparators: Bool) {
        gtk_list_view_set_show_separators(list_view_ptr, gboolean((showSeparators) ? 1 : 0))
    
    }

    /// Sets whether rows should be activated on single click and
    /// selected on hover.
    @inlinable func set(singleClickActivate: Bool) {
        gtk_list_view_set_single_click_activate(list_view_ptr, gboolean((singleClickActivate) ? 1 : 0))
    
    }
    /// Returns whether rows can be selected by dragging with the mouse.
    @inlinable var enableRubberband: Bool {
        /// Returns whether rows can be selected by dragging with the mouse.
        get {
            let rv = ((gtk_list_view_get_enable_rubberband(list_view_ptr)) != 0)
            return rv
        }
        /// Sets whether selections can be changed by dragging with the mouse.
        nonmutating set {
            gtk_list_view_set_enable_rubberband(list_view_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Factory for populating list items.
    @inlinable var factory: ListItemFactoryRef! {
        /// Gets the factory that's currently used to populate list items.
        get {
            let rv = ListItemFactoryRef(gconstpointer: gconstpointer(gtk_list_view_get_factory(list_view_ptr)))
            return rv
        }
        /// Sets the `GtkListItemFactory` to use for populating list items.
        nonmutating set {
            gtk_list_view_set_factory(list_view_ptr, UnsafeMutablePointer<GtkListItemFactory>(newValue?.list_item_factory_ptr))
        }
    }

    /// Model for the items displayed.
    @inlinable var model: SelectionModelRef! {
        /// Gets the model that's currently used to read the items displayed.
        get {
            let rv = SelectionModelRef(gconstpointer: gconstpointer(gtk_list_view_get_model(list_view_ptr)))
            return rv
        }
        /// Sets the model to use.
        /// 
        /// This must be a [iface`Gtk.SelectionModel`] to use.
        nonmutating set {
            gtk_list_view_set_model(list_view_ptr, UnsafeMutablePointer<GtkSelectionModel>(newValue?.selection_model_ptr))
        }
    }

    /// Returns whether the list box should show separators
    /// between rows.
    @inlinable var showSeparators: Bool {
        /// Returns whether the list box should show separators
        /// between rows.
        get {
            let rv = ((gtk_list_view_get_show_separators(list_view_ptr)) != 0)
            return rv
        }
        /// Sets whether the list box should show separators
        /// between rows.
        nonmutating set {
            gtk_list_view_set_show_separators(list_view_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns whether rows will be activated on single click and
    /// selected on hover.
    @inlinable var singleClickActivate: Bool {
        /// Returns whether rows will be activated on single click and
        /// selected on hover.
        get {
            let rv = ((gtk_list_view_get_single_click_activate(list_view_ptr)) != 0)
            return rv
        }
        /// Sets whether rows should be activated on single click and
        /// selected on hover.
        nonmutating set {
            gtk_list_view_set_single_click_activate(list_view_ptr, gboolean((newValue) ? 1 : 0))
        }
    }


}



// MARK: - LockButton Class

/// The `LockButtonProtocol` protocol exposes the methods and properties of an underlying `GtkLockButton` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LockButton`.
/// Alternatively, use `LockButtonRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkLockButton` is a widget to obtain and revoke authorizations
/// needed to operate the controls.
/// 
/// ![An example GtkLockButton](lock-button.png)
/// 
/// It is typically used in preference dialogs or control panels.
/// 
/// The required authorization is represented by a `GPermission` object.
/// Concrete implementations of `GPermission` may use PolicyKit or some
/// other authorization framework. To obtain a PolicyKit-based
/// `GPermission`, use ``polkit_permission_new()``.
/// 
/// If the user is not currently allowed to perform the action, but can
/// obtain the permission, the widget looks like this:
/// 
/// ![](lockbutton-locked.png)
/// 
/// and the user can click the button to request the permission. Depending
/// on the platform, this may pop up an authentication dialog or ask the user
/// to authenticate in some other way. Once the user has obtained the permission,
/// the widget changes to this:
/// 
/// ![](lockbutton-unlocked.png)
/// 
/// and the permission can be dropped again by clicking the button. If the user
/// is not able to obtain the permission at all, the widget looks like this:
/// 
/// ![](lockbutton-sorry.png)
/// 
/// If the user has the permission and cannot drop it, the button is hidden.
/// 
/// The text (and tooltips) that are shown in the various cases can be adjusted
/// with the [property`Gtk.LockButton:text-lock`],
/// [property`Gtk.LockButton:text-unlock`],
/// [property`Gtk.LockButton:tooltip-lock`],
/// [property`Gtk.LockButton:tooltip-unlock`] and
/// [property`Gtk.LockButton:tooltip-not-authorized`] properties.
public protocol LockButtonProtocol: ButtonProtocol {
        /// Untyped pointer to the underlying `GtkLockButton` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkLockButton` instance.
    var lock_button_ptr: UnsafeMutablePointer<GtkLockButton>! { get }

    /// Required Initialiser for types conforming to `LockButtonProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `LockButtonRef` type acts as a lightweight Swift reference to an underlying `GtkLockButton` instance.
/// It exposes methods that can operate on this data type through `LockButtonProtocol` conformance.
/// Use `LockButtonRef` only as an `unowned` reference to an existing `GtkLockButton` instance.
///
/// `GtkLockButton` is a widget to obtain and revoke authorizations
/// needed to operate the controls.
/// 
/// ![An example GtkLockButton](lock-button.png)
/// 
/// It is typically used in preference dialogs or control panels.
/// 
/// The required authorization is represented by a `GPermission` object.
/// Concrete implementations of `GPermission` may use PolicyKit or some
/// other authorization framework. To obtain a PolicyKit-based
/// `GPermission`, use ``polkit_permission_new()``.
/// 
/// If the user is not currently allowed to perform the action, but can
/// obtain the permission, the widget looks like this:
/// 
/// ![](lockbutton-locked.png)
/// 
/// and the user can click the button to request the permission. Depending
/// on the platform, this may pop up an authentication dialog or ask the user
/// to authenticate in some other way. Once the user has obtained the permission,
/// the widget changes to this:
/// 
/// ![](lockbutton-unlocked.png)
/// 
/// and the permission can be dropped again by clicking the button. If the user
/// is not able to obtain the permission at all, the widget looks like this:
/// 
/// ![](lockbutton-sorry.png)
/// 
/// If the user has the permission and cannot drop it, the button is hidden.
/// 
/// The text (and tooltips) that are shown in the various cases can be adjusted
/// with the [property`Gtk.LockButton:text-lock`],
/// [property`Gtk.LockButton:text-unlock`],
/// [property`Gtk.LockButton:tooltip-lock`],
/// [property`Gtk.LockButton:tooltip-unlock`] and
/// [property`Gtk.LockButton:tooltip-not-authorized`] properties.
public struct LockButtonRef: LockButtonProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkLockButton` instance.
    /// For type-safe access, use the generated, typed pointer `lock_button_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LockButtonRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkLockButton>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkLockButton>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkLockButton>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkLockButton>?) {
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

    /// Reference intialiser for a related type that implements `LockButtonProtocol`
    @inlinable init<T: LockButtonProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: LockButtonProtocol>(_ other: T) -> LockButtonRef { LockButtonRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new lock button which reflects the `permission`.
    @inlinable init<PermissionT: GIO.PermissionProtocol>( permission: PermissionT?) {
        let rv = gtk_lock_button_new(permission?.permission_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `LockButton` type acts as a reference-counted owner of an underlying `GtkLockButton` instance.
/// It provides the methods that can operate on this data type through `LockButtonProtocol` conformance.
/// Use `LockButton` as a strong reference or owner of a `GtkLockButton` instance.
///
/// `GtkLockButton` is a widget to obtain and revoke authorizations
/// needed to operate the controls.
/// 
/// ![An example GtkLockButton](lock-button.png)
/// 
/// It is typically used in preference dialogs or control panels.
/// 
/// The required authorization is represented by a `GPermission` object.
/// Concrete implementations of `GPermission` may use PolicyKit or some
/// other authorization framework. To obtain a PolicyKit-based
/// `GPermission`, use ``polkit_permission_new()``.
/// 
/// If the user is not currently allowed to perform the action, but can
/// obtain the permission, the widget looks like this:
/// 
/// ![](lockbutton-locked.png)
/// 
/// and the user can click the button to request the permission. Depending
/// on the platform, this may pop up an authentication dialog or ask the user
/// to authenticate in some other way. Once the user has obtained the permission,
/// the widget changes to this:
/// 
/// ![](lockbutton-unlocked.png)
/// 
/// and the permission can be dropped again by clicking the button. If the user
/// is not able to obtain the permission at all, the widget looks like this:
/// 
/// ![](lockbutton-sorry.png)
/// 
/// If the user has the permission and cannot drop it, the button is hidden.
/// 
/// The text (and tooltips) that are shown in the various cases can be adjusted
/// with the [property`Gtk.LockButton:text-lock`],
/// [property`Gtk.LockButton:text-unlock`],
/// [property`Gtk.LockButton:tooltip-lock`],
/// [property`Gtk.LockButton:tooltip-unlock`] and
/// [property`Gtk.LockButton:tooltip-not-authorized`] properties.
open class LockButton: Button, LockButtonProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LockButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkLockButton>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LockButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkLockButton>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LockButton` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LockButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LockButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkLockButton>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LockButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkLockButton>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkLockButton`.
    /// i.e., ownership is transferred to the `LockButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkLockButton>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `LockButtonProtocol`
    /// Will retain `GtkLockButton`.
    /// - Parameter other: an instance of a related type that implements `LockButtonProtocol`
    @inlinable public init<T: LockButtonProtocol>(lockButton other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new lock button which reflects the `permission`.
    @inlinable public init<PermissionT: GIO.PermissionProtocol>( permission: PermissionT?) {
        let rv = gtk_lock_button_new(permission?.permission_ptr)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum LockButtonPropertyName: String, PropertyNameProtocol {
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    /// Whether the widget can receive pointer events.
    case canTarget = "can-target"
    /// The child widget.
    case child = "child"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`.
    case cursor = "cursor"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// How to distribute horizontal space if widget gets extra space.
    case halign = "halign"
    /// Whether the widget is the default widget.
    case hasDefault = "has-default"
    /// Whether the widget has the input focus.
    case hasFocus = "has-focus"
    /// Whether the button has a frame.
    case hasFrame = "has-frame"
    /// Enables or disables the emission of the `query-tooltip` signal on `widget`.
    /// 
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using [signal`Gtk.Widget::query-tooltip`] to
    /// determine whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    /// Override for height request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case heightRequest = "height-request"
    /// Whether to expand horizontally.
    case hexpand = "hexpand"
    /// Whether to use the `hexpand` property.
    case hexpandSet = "hexpand-set"
    /// The name of the icon used to automatically populate the button.
    case iconName = "icon-name"
    /// Text of the label inside the button, if the button contains a label widget.
    case label = "label"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case layoutManager = "layout-manager"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginEnd = "margin-end"
    /// Margin on start of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginTop = "margin-top"
    /// The name of the widget.
    case name = "name"
    /// The requested opacity of the widget.
    case opacity = "opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    /// The parent widget of this widget.
    case parent = "parent"
    /// The `GPermission object controlling this button.
    case permission = "permission"
    /// Whether the widget will receive the default action when it is focused.
    case receivesDefault = "receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget.
    case scaleFactor = "scale-factor"
    /// Whether the widget responds to input.
    case sensitive = "sensitive"
    /// The text to display when prompting the user to lock.
    case textLock = "text-lock"
    /// The text to display when prompting the user to unlock.
    case textUnlock = "text-unlock"
    /// The tooltip to display when prompting the user to lock.
    case tooltipLock = "tooltip-lock"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with Pango markup.
    /// 
    /// Also see [method`Gtk.Tooltip.set_markup`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// The tooltip to display when the user cannot obtain authorization.
    case tooltipNotAuthorized = "tooltip-not-authorized"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see [method`Gtk.Tooltip.set_text`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// The tooltip to display when prompting the user to unlock.
    case tooltipUnlock = "tooltip-unlock"
    /// If set, an underline in the text indicates that the following character is
    /// to be used as mnemonic.
    case useUnderline = "use-underline"
    /// How to distribute vertical space if widget gets extra space.
    case valign = "valign"
    /// Whether to expand vertically.
    case vexpand = "vexpand"
    /// Whether to use the `vexpand` property.
    case vexpandSet = "vexpand-set"
    /// Whether the widget is visible.
    case visible = "visible"
    /// Override for width request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case widthRequest = "width-request"
}

public extension LockButtonProtocol {
    /// Bind a `LockButtonPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: LockButtonPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a LockButton property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: LockButtonPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a LockButton property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: LockButtonPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum LockButtonSignalName: String, SignalNameProtocol {
    /// Emitted to animate press then release.
    /// 
    /// This is an action signal. Applications should never connect
    /// to this signal, but use the [signal`Gtk.Button::clicked`] signal.
    case activate = "activate"
    /// Emitted when the button has been activated (pressed and released).
    case clicked = "clicked"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold.
    /// 
    /// May result in finalization of the widget if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// Emitted when the text direction of a widget changes.
    case directionChanged = "direction-changed"
    /// Emitted when `widget` is hidden.
    case hide = "hide"
    /// Emitted if keyboard navigation fails.
    /// 
    /// See [method`Gtk.Widget.keynav_failed`] for details.
    case keynavFailed = "keynav-failed"
    /// Emitted when `widget` is going to be mapped.
    /// 
    /// A widget is mapped when the widget is visible (which is controlled with
    /// [property`Gtk.Widget:visible`]) and all its parents up to the toplevel widget
    /// are also visible.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of [signal`Gtk.Widget::unmap`].
    case map = "map"
    /// Emitted when a widget is activated via a mnemonic.
    /// 
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// Emitted when the focus is moved.
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
    /// Emitted when the widgets tooltip is about to be shown.
    /// 
    /// This happens when the [property`Gtk.Widget:has-tooltip`] property
    /// is `true` and the hover timeout has expired with the cursor hovering
    /// "above" `widget`; or emitted when `widget` got focus in keyboard mode.
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
    /// Emitted when `widget` is associated with a `GdkSurface`.
    /// 
    /// This means that [method`Gtk.Widget.realize`] has been called
    /// or the widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// Emitted when `widget` is shown.
    case show = "show"
    /// Emitted when the widget state changes.
    /// 
    /// See [method`Gtk.Widget.get_state_flags`].
    case stateFlagsChanged = "state-flags-changed"
    /// Emitted when `widget` is going to be unmapped.
    /// 
    /// A widget is unmapped when either it or any of its parents up to the
    /// toplevel widget have been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer,
    /// it can be used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// Emitted when the `GdkSurface` associated with `widget` is destroyed.
    /// 
    /// This means that [method`Gtk.Widget.unrealize`] has been called
    /// or the widget has been unmapped (that is, it is going to be hidden).
    case unrealize = "unrealize"
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCanFocus = "notify::can-focus"
    /// Whether the widget can receive pointer events.
    case notifyCanTarget = "notify::can-target"
    /// The child widget.
    case notifyChild = "notify::child"
    /// A list of css classes applied to this widget.
    case notifyCssClasses = "notify::css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCssName = "notify::css-name"
    /// The cursor used by `widget`.
    case notifyCursor = "notify::cursor"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case notifyFocusable = "notify::focusable"
    /// How to distribute horizontal space if widget gets extra space.
    case notifyHalign = "notify::halign"
    /// Whether the widget is the default widget.
    case notifyHasDefault = "notify::has-default"
    /// Whether the widget has the input focus.
    case notifyHasFocus = "notify::has-focus"
    /// Whether the button has a frame.
    case notifyHasFrame = "notify::has-frame"
    /// Enables or disables the emission of the `query-tooltip` signal on `widget`.
    /// 
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using [signal`Gtk.Widget::query-tooltip`] to
    /// determine whether it will provide a tooltip or not.
    case notifyHasTooltip = "notify::has-tooltip"
    /// Override for height request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `hexpand` property.
    case notifyHexpandSet = "notify::hexpand-set"
    /// The name of the icon used to automatically populate the button.
    case notifyIconName = "notify::icon-name"
    /// Text of the label inside the button, if the button contains a label widget.
    case notifyLabel = "notify::label"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyLayoutManager = "notify::layout-manager"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on start of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginTop = "notify::margin-top"
    /// The name of the widget.
    case notifyName = "notify::name"
    /// The requested opacity of the widget.
    case notifyOpacity = "notify::opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyOverflow = "notify::overflow"
    /// The parent widget of this widget.
    case notifyParent = "notify::parent"
    /// The `GPermission object controlling this button.
    case notifyPermission = "notify::permission"
    /// Whether the widget will receive the default action when it is focused.
    case notifyReceivesDefault = "notify::receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case notifyRoot = "notify::root"
    /// The scale factor of the widget.
    case notifyScaleFactor = "notify::scale-factor"
    /// Whether the widget responds to input.
    case notifySensitive = "notify::sensitive"
    /// The text to display when prompting the user to lock.
    case notifyTextLock = "notify::text-lock"
    /// The text to display when prompting the user to unlock.
    case notifyTextUnlock = "notify::text-unlock"
    /// The tooltip to display when prompting the user to lock.
    case notifyTooltipLock = "notify::tooltip-lock"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with Pango markup.
    /// 
    /// Also see [method`Gtk.Tooltip.set_markup`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// The tooltip to display when the user cannot obtain authorization.
    case notifyTooltipNotAuthorized = "notify::tooltip-not-authorized"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see [method`Gtk.Tooltip.set_text`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    /// The tooltip to display when prompting the user to unlock.
    case notifyTooltipUnlock = "notify::tooltip-unlock"
    /// If set, an underline in the text indicates that the following character is
    /// to be used as mnemonic.
    case notifyUseUnderline = "notify::use-underline"
    /// How to distribute vertical space if widget gets extra space.
    case notifyValign = "notify::valign"
    /// Whether to expand vertically.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `vexpand` property.
    case notifyVexpandSet = "notify::vexpand-set"
    /// Whether the widget is visible.
    case notifyVisible = "notify::visible"
    /// Override for width request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case notifyWidthRequest = "notify::width-request"
}

// MARK: LockButton has no signals
// MARK: LockButton Class: LockButtonProtocol extension (methods and fields)
public extension LockButtonProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLockButton` instance.
    @inlinable var lock_button_ptr: UnsafeMutablePointer<GtkLockButton>! { return ptr?.assumingMemoryBound(to: GtkLockButton.self) }

    /// Obtains the `GPermission` object that controls `button`.
    @inlinable func getPermission() -> GIO.PermissionRef! {
        let rv = GIO.PermissionRef(gtk_lock_button_get_permission(lock_button_ptr))
        return rv
    }

    /// Sets the `GPermission` object that controls `button`.
    @inlinable func set(permission: GIO.PermissionRef? = nil) {
        gtk_lock_button_set_permission(lock_button_ptr, permission?.permission_ptr)
    
    }
    /// Sets the `GPermission` object that controls `button`.
    @inlinable func set<PermissionT: GIO.PermissionProtocol>(permission: PermissionT?) {
        gtk_lock_button_set_permission(lock_button_ptr, permission?.permission_ptr)
    
    }
    /// The `GPermission object controlling this button.
    @inlinable var permission: GIO.PermissionRef! {
        /// Obtains the `GPermission` object that controls `button`.
        get {
            let rv = GIO.PermissionRef(gtk_lock_button_get_permission(lock_button_ptr))
            return rv
        }
        /// Sets the `GPermission` object that controls `button`.
        nonmutating set {
            gtk_lock_button_set_permission(lock_button_ptr, UnsafeMutablePointer<GPermission>(newValue?.permission_ptr))
        }
    }


}



// MARK: - MapListModel Class

/// The `MapListModelProtocol` protocol exposes the methods and properties of an underlying `GtkMapListModel` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MapListModel`.
/// Alternatively, use `MapListModelRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GtkMapListModel` maps the items in a list model to different items.
/// 
/// `GtkMapListModel` uses a [callback`Gtk.MapListModelMapFunc`].
/// 
/// Example: Create a list of `GtkEventControllers`
/// ```c
/// static gpointer
/// map_to_controllers (gpointer widget,
///                     gpointer data)
/// {
///   gpointer result = gtk_widget_observe_controllers (widget);
///   g_object_unref (widget);
///   return result;
/// }
/// 
/// widgets = gtk_widget_observe_children (widget);
/// 
/// controllers = gtk_map_list_model_new (G_TYPE_LIST_MODEL,
///                                       widgets,
///                                       map_to_controllers,
///                                       NULL, NULL);
/// 
/// model = gtk_flatten_list_model_new (GTK_TYPE_EVENT_CONTROLLER,
///                                     controllers);
/// ```
/// 
/// `GtkMapListModel` will attempt to discard the mapped objects as soon as
/// they are no longer needed and recreate them if necessary.
public protocol MapListModelProtocol: GLibObject.ObjectProtocol, GIO.ListModelProtocol {
        /// Untyped pointer to the underlying `GtkMapListModel` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMapListModel` instance.
    var map_list_model_ptr: UnsafeMutablePointer<GtkMapListModel>! { get }

    /// Required Initialiser for types conforming to `MapListModelProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `MapListModelRef` type acts as a lightweight Swift reference to an underlying `GtkMapListModel` instance.
/// It exposes methods that can operate on this data type through `MapListModelProtocol` conformance.
/// Use `MapListModelRef` only as an `unowned` reference to an existing `GtkMapListModel` instance.
///
/// A `GtkMapListModel` maps the items in a list model to different items.
/// 
/// `GtkMapListModel` uses a [callback`Gtk.MapListModelMapFunc`].
/// 
/// Example: Create a list of `GtkEventControllers`
/// ```c
/// static gpointer
/// map_to_controllers (gpointer widget,
///                     gpointer data)
/// {
///   gpointer result = gtk_widget_observe_controllers (widget);
///   g_object_unref (widget);
///   return result;
/// }
/// 
/// widgets = gtk_widget_observe_children (widget);
/// 
/// controllers = gtk_map_list_model_new (G_TYPE_LIST_MODEL,
///                                       widgets,
///                                       map_to_controllers,
///                                       NULL, NULL);
/// 
/// model = gtk_flatten_list_model_new (GTK_TYPE_EVENT_CONTROLLER,
///                                     controllers);
/// ```
/// 
/// `GtkMapListModel` will attempt to discard the mapped objects as soon as
/// they are no longer needed and recreate them if necessary.
public struct MapListModelRef: MapListModelProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkMapListModel` instance.
    /// For type-safe access, use the generated, typed pointer `map_list_model_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MapListModelRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMapListModel>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMapListModel>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMapListModel>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMapListModel>?) {
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

    /// Reference intialiser for a related type that implements `MapListModelProtocol`
    @inlinable init<T: MapListModelProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: MapListModelProtocol>(_ other: T) -> MapListModelRef { MapListModelRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapListModelProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapListModelProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapListModelProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapListModelProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapListModelProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkMapListModel` for the given arguments.
    @inlinable init<ListModelT: GIO.ListModelProtocol>( model: ListModelT?, mapFunc: GtkMapListModelMapFunc? = nil, userData: gpointer! = nil, userDestroy: GDestroyNotify?) {
        let rv = gtk_map_list_model_new(model?.list_model_ptr, mapFunc, userData, userDestroy)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `MapListModel` type acts as a reference-counted owner of an underlying `GtkMapListModel` instance.
/// It provides the methods that can operate on this data type through `MapListModelProtocol` conformance.
/// Use `MapListModel` as a strong reference or owner of a `GtkMapListModel` instance.
///
/// A `GtkMapListModel` maps the items in a list model to different items.
/// 
/// `GtkMapListModel` uses a [callback`Gtk.MapListModelMapFunc`].
/// 
/// Example: Create a list of `GtkEventControllers`
/// ```c
/// static gpointer
/// map_to_controllers (gpointer widget,
///                     gpointer data)
/// {
///   gpointer result = gtk_widget_observe_controllers (widget);
///   g_object_unref (widget);
///   return result;
/// }
/// 
/// widgets = gtk_widget_observe_children (widget);
/// 
/// controllers = gtk_map_list_model_new (G_TYPE_LIST_MODEL,
///                                       widgets,
///                                       map_to_controllers,
///                                       NULL, NULL);
/// 
/// model = gtk_flatten_list_model_new (GTK_TYPE_EVENT_CONTROLLER,
///                                     controllers);
/// ```
/// 
/// `GtkMapListModel` will attempt to discard the mapped objects as soon as
/// they are no longer needed and recreate them if necessary.
open class MapListModel: GLibObject.Object, MapListModelProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MapListModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkMapListModel>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MapListModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkMapListModel>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MapListModel` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MapListModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MapListModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkMapListModel>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MapListModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkMapListModel>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkMapListModel`.
    /// i.e., ownership is transferred to the `MapListModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkMapListModel>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `MapListModelProtocol`
    /// Will retain `GtkMapListModel`.
    /// - Parameter other: an instance of a related type that implements `MapListModelProtocol`
    @inlinable public init<T: MapListModelProtocol>(mapListModel other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapListModelProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapListModelProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapListModelProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapListModelProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapListModelProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapListModelProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapListModelProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MapListModelProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkMapListModel` for the given arguments.
    @inlinable public init<ListModelT: GIO.ListModelProtocol>( model: ListModelT?, mapFunc: GtkMapListModelMapFunc? = nil, userData: gpointer! = nil, userDestroy: GDestroyNotify?) {
        let rv = gtk_map_list_model_new(model?.list_model_ptr, mapFunc, userData, userDestroy)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum MapListModelPropertyName: String, PropertyNameProtocol {
    /// If a map is set for this model
    case hasMap = "has-map"
    /// The model being mapped.
    case model = "model"
}

public extension MapListModelProtocol {
    /// Bind a `MapListModelPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: MapListModelPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a MapListModel property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: MapListModelPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a MapListModel property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: MapListModelPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum MapListModelSignalName: String, SignalNameProtocol {
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
    /// If a map is set for this model
    case notifyHasMap = "notify::has-map"
    /// The model being mapped.
    case notifyModel = "notify::model"
}

// MARK: MapListModel has no signals
// MARK: MapListModel Class: MapListModelProtocol extension (methods and fields)
public extension MapListModelProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMapListModel` instance.
    @inlinable var map_list_model_ptr: UnsafeMutablePointer<GtkMapListModel>! { return ptr?.assumingMemoryBound(to: GtkMapListModel.self) }

    /// Gets the model that is currently being mapped or `nil` if none.
    @inlinable func getModel() -> GIO.ListModelRef! {
        let rv = GIO.ListModelRef(gtk_map_list_model_get_model(map_list_model_ptr))
        return rv
    }

    /// Checks if a map function is currently set on `self`.
    @inlinable func hasMap() -> Bool {
        let rv = ((gtk_map_list_model_has_map(map_list_model_ptr)) != 0)
        return rv
    }

    /// Sets the function used to map items.
    /// 
    /// The function will be called whenever an item needs to be mapped
    /// and must return the item to use for the given input item.
    /// 
    /// Note that `GtkMapListModel` may call this function multiple times
    /// on the same item, because it may delete items it doesn't need anymore.
    /// 
    /// GTK makes no effort to ensure that `map_func` conforms to the item type
    /// of `self`. It assumes that the caller knows what they are doing and the map
    /// function returns items of the appropriate type.
    @inlinable func set(mapFunc: GtkMapListModelMapFunc? = nil, userData: gpointer! = nil, userDestroy: GDestroyNotify?) {
        gtk_map_list_model_set_map_func(map_list_model_ptr, mapFunc, userData, userDestroy)
    
    }

    /// Sets the model to be mapped.
    /// 
    /// GTK makes no effort to ensure that `model` conforms to the item type
    /// expected by the map function. It assumes that the caller knows what
    /// they are doing and have set up an appropriate map function.
    @inlinable func set(model: GIO.ListModelRef? = nil) {
        gtk_map_list_model_set_model(map_list_model_ptr, model?.list_model_ptr)
    
    }
    /// Sets the model to be mapped.
    /// 
    /// GTK makes no effort to ensure that `model` conforms to the item type
    /// expected by the map function. It assumes that the caller knows what
    /// they are doing and have set up an appropriate map function.
    @inlinable func set<ListModelT: GIO.ListModelProtocol>(model: ListModelT?) {
        gtk_map_list_model_set_model(map_list_model_ptr, model?.list_model_ptr)
    
    }
    /// The model being mapped.
    @inlinable var model: GIO.ListModelRef! {
        /// Gets the model that is currently being mapped or `nil` if none.
        get {
            let rv = GIO.ListModelRef(gtk_map_list_model_get_model(map_list_model_ptr))
            return rv
        }
        /// Sets the model to be mapped.
        /// 
        /// GTK makes no effort to ensure that `model` conforms to the item type
        /// expected by the map function. It assumes that the caller knows what
        /// they are doing and have set up an appropriate map function.
        nonmutating set {
            gtk_map_list_model_set_model(map_list_model_ptr, UnsafeMutablePointer<GListModel>(newValue?.list_model_ptr))
        }
    }


}



