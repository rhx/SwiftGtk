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

// MARK: - AboutDialog Class

/// The `AboutDialogProtocol` protocol exposes the methods and properties of an underlying `GtkAboutDialog` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AboutDialog`.
/// Alternatively, use `AboutDialogRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The GtkAboutDialog offers a simple way to display information about
/// a program like its logo, name, copyright, website and license. It is
/// also possible to give credits to the authors, documenters, translators
/// and artists who have worked on the program. An about dialog is typically
/// opened when the user selects the `About` option from the `Help` menu.
/// All parts of the dialog are optional.
/// 
/// About dialogs often contain links and email addresses. GtkAboutDialog
/// displays these as clickable links. By default, it calls `gtk_show_uri_on_window()`
/// when a user clicks one. The behaviour can be overridden with the
/// `GtkAboutDialog::activate`-link signal.
/// 
/// To specify a person with an email address, use a string like
/// "Edgar Allan Poe <edgar\`poe.com`>". To specify a website with a title,
/// use a string like "GTK+ team http://www.gtk.org".
/// 
/// To make constructing a GtkAboutDialog as convenient as possible, you can
/// use the function `gtk_show_about_dialog()` which constructs and shows a dialog
/// and keeps it around so that it can be shown again.
/// 
/// Note that GTK+ sets a default title of ``_("About %s")`` on the dialog
/// window (where \`s` is replaced by the name of the application, but in
/// order to ensure proper translation of the title, applications should
/// set the title property explicitly when constructing a GtkAboutDialog,
/// as shown in the following example:
/// (C Language Example):
/// ```C
/// GdkPixbuf *example_logo = gdk_pixbuf_new_from_file ("./logo.png", NULL);
/// gtk_show_about_dialog (NULL,
///                        "program-name", "ExampleCode",
///                        "logo", example_logo,
///                        "title", _("About ExampleCode"),
///                        NULL);
/// ```
/// 
/// It is also possible to show a `GtkAboutDialog` like any other `GtkDialog`,
/// e.g. using `gtk_dialog_run()`. In this case, you might need to know that
/// the “Close” button returns the `GTK_RESPONSE_CANCEL` response id.
public protocol AboutDialogProtocol: DialogProtocol {
        /// Untyped pointer to the underlying `GtkAboutDialog` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkAboutDialog` instance.
    var about_dialog_ptr: UnsafeMutablePointer<GtkAboutDialog>! { get }

}

/// The `AboutDialogRef` type acts as a lightweight Swift reference to an underlying `GtkAboutDialog` instance.
/// It exposes methods that can operate on this data type through `AboutDialogProtocol` conformance.
/// Use `AboutDialogRef` only as an `unowned` reference to an existing `GtkAboutDialog` instance.
///
/// The GtkAboutDialog offers a simple way to display information about
/// a program like its logo, name, copyright, website and license. It is
/// also possible to give credits to the authors, documenters, translators
/// and artists who have worked on the program. An about dialog is typically
/// opened when the user selects the `About` option from the `Help` menu.
/// All parts of the dialog are optional.
/// 
/// About dialogs often contain links and email addresses. GtkAboutDialog
/// displays these as clickable links. By default, it calls `gtk_show_uri_on_window()`
/// when a user clicks one. The behaviour can be overridden with the
/// `GtkAboutDialog::activate`-link signal.
/// 
/// To specify a person with an email address, use a string like
/// "Edgar Allan Poe <edgar\`poe.com`>". To specify a website with a title,
/// use a string like "GTK+ team http://www.gtk.org".
/// 
/// To make constructing a GtkAboutDialog as convenient as possible, you can
/// use the function `gtk_show_about_dialog()` which constructs and shows a dialog
/// and keeps it around so that it can be shown again.
/// 
/// Note that GTK+ sets a default title of ``_("About %s")`` on the dialog
/// window (where \`s` is replaced by the name of the application, but in
/// order to ensure proper translation of the title, applications should
/// set the title property explicitly when constructing a GtkAboutDialog,
/// as shown in the following example:
/// (C Language Example):
/// ```C
/// GdkPixbuf *example_logo = gdk_pixbuf_new_from_file ("./logo.png", NULL);
/// gtk_show_about_dialog (NULL,
///                        "program-name", "ExampleCode",
///                        "logo", example_logo,
///                        "title", _("About ExampleCode"),
///                        NULL);
/// ```
/// 
/// It is also possible to show a `GtkAboutDialog` like any other `GtkDialog`,
/// e.g. using `gtk_dialog_run()`. In this case, you might need to know that
/// the “Close” button returns the `GTK_RESPONSE_CANCEL` response id.
public struct AboutDialogRef: AboutDialogProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkAboutDialog` instance.
    /// For type-safe access, use the generated, typed pointer `about_dialog_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AboutDialogRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkAboutDialog>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkAboutDialog>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkAboutDialog>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkAboutDialog>?) {
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

    /// Reference intialiser for a related type that implements `AboutDialogProtocol`
    @inlinable init<T: AboutDialogProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: AboutDialogProtocol>(_ other: T) -> AboutDialogRef { AboutDialogRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AboutDialogProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AboutDialogProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AboutDialogProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AboutDialogProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AboutDialogProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkAboutDialog`.
    @inlinable init() {
        let rv = gtk_about_dialog_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `AboutDialog` type acts as a reference-counted owner of an underlying `GtkAboutDialog` instance.
/// It provides the methods that can operate on this data type through `AboutDialogProtocol` conformance.
/// Use `AboutDialog` as a strong reference or owner of a `GtkAboutDialog` instance.
///
/// The GtkAboutDialog offers a simple way to display information about
/// a program like its logo, name, copyright, website and license. It is
/// also possible to give credits to the authors, documenters, translators
/// and artists who have worked on the program. An about dialog is typically
/// opened when the user selects the `About` option from the `Help` menu.
/// All parts of the dialog are optional.
/// 
/// About dialogs often contain links and email addresses. GtkAboutDialog
/// displays these as clickable links. By default, it calls `gtk_show_uri_on_window()`
/// when a user clicks one. The behaviour can be overridden with the
/// `GtkAboutDialog::activate`-link signal.
/// 
/// To specify a person with an email address, use a string like
/// "Edgar Allan Poe <edgar\`poe.com`>". To specify a website with a title,
/// use a string like "GTK+ team http://www.gtk.org".
/// 
/// To make constructing a GtkAboutDialog as convenient as possible, you can
/// use the function `gtk_show_about_dialog()` which constructs and shows a dialog
/// and keeps it around so that it can be shown again.
/// 
/// Note that GTK+ sets a default title of ``_("About %s")`` on the dialog
/// window (where \`s` is replaced by the name of the application, but in
/// order to ensure proper translation of the title, applications should
/// set the title property explicitly when constructing a GtkAboutDialog,
/// as shown in the following example:
/// (C Language Example):
/// ```C
/// GdkPixbuf *example_logo = gdk_pixbuf_new_from_file ("./logo.png", NULL);
/// gtk_show_about_dialog (NULL,
///                        "program-name", "ExampleCode",
///                        "logo", example_logo,
///                        "title", _("About ExampleCode"),
///                        NULL);
/// ```
/// 
/// It is also possible to show a `GtkAboutDialog` like any other `GtkDialog`,
/// e.g. using `gtk_dialog_run()`. In this case, you might need to know that
/// the “Close” button returns the `GTK_RESPONSE_CANCEL` response id.
open class AboutDialog: Dialog, AboutDialogProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AboutDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkAboutDialog>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AboutDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkAboutDialog>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AboutDialog` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AboutDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AboutDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkAboutDialog>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AboutDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkAboutDialog>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkAboutDialog`.
    /// i.e., ownership is transferred to the `AboutDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkAboutDialog>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `AboutDialogProtocol`
    /// Will retain `GtkAboutDialog`.
    /// - Parameter other: an instance of a related type that implements `AboutDialogProtocol`
    @inlinable public init<T: AboutDialogProtocol>(aboutDialog other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AboutDialogProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AboutDialogProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AboutDialogProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AboutDialogProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AboutDialogProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AboutDialogProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AboutDialogProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AboutDialogProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkAboutDialog`.
    @inlinable override public init() {
        let rv = gtk_about_dialog_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum AboutDialogPropertyName: String, PropertyNameProtocol {
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
    /// The people who contributed artwork to the program, as a `nil`-terminated
    /// array of strings. Each string may contain email addresses and URLs, which
    /// will be displayed as links, see the introduction for more details.
    case artists = "artists"
    /// The widget to which this window is attached.
    /// See `gtk_window_set_attached_to()`.
    /// 
    /// Examples of places where specifying this relation is useful are
    /// for instance a `GtkMenu` created by a `GtkComboBox`, a completion
    /// popup window created by `GtkEntry` or a typeahead search entry
    /// created by `GtkTreeView`.
    case attachedTo = "attached-to"
    /// The authors of the program, as a `nil`-terminated array of strings.
    /// Each string may contain email addresses and URLs, which will be displayed
    /// as links, see the introduction for more details.
    case authors = "authors"
    case borderWidth = "border-width"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case child = "child"
    /// Comments about the program. This string is displayed in a label
    /// in the main dialog, thus it should be a short explanation of
    /// the main purpose of the program, not a detailed list of features.
    case comments = "comments"
    case compositeChild = "composite-child"
    /// Copyright information for the program.
    case copyright = "copyright"
    /// Whether the window should be decorated by the window manager.
    case decorated = "decorated"
    case defaultHeight = "default-height"
    case defaultWidth = "default-width"
    /// Whether the window frame should have a close button.
    case deletable = "deletable"
    case destroyWithParent = "destroy-with-parent"
    /// The people documenting the program, as a `nil`-terminated array of strings.
    /// Each string may contain email addresses and URLs, which will be displayed
    /// as links, see the introduction for more details.
    case documenters = "documenters"
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
    /// The license of the program. This string is displayed in a
    /// text view in a secondary dialog, therefore it is fine to use
    /// a long multi-paragraph text. Note that the text is only wrapped
    /// in the text view if the "wrap-license" property is set to `true`;
    /// otherwise the text itself must contain the intended linebreaks.
    /// When setting this property to a non-`nil` value, the
    /// `GtkAboutDialog:license`-type property is set to `GTK_LICENSE_CUSTOM`
    /// as a side effect.
    case license = "license"
    /// The license of the program, as a value of the `GtkLicense` enumeration.
    /// 
    /// The `GtkAboutDialog` will automatically fill out a standard disclaimer
    /// and link the user to the appropriate online resource for the license
    /// text.
    /// 
    /// If `GTK_LICENSE_UNKNOWN` is used, the link used will be the same
    /// specified in the `GtkAboutDialog:website` property.
    /// 
    /// If `GTK_LICENSE_CUSTOM` is used, the current contents of the
    /// `GtkAboutDialog:license` property are used.
    /// 
    /// For any other `GtkLicense` value, the contents of the
    /// `GtkAboutDialog:license` property are also set by this property as
    /// a side effect.
    case licenseType = "license-type"
    /// A logo for the about box. If it is `nil`, the default window icon
    /// set with `gtk_window_set_default_icon()` will be used.
    case logo = "logo"
    /// A named icon to use as the logo for the about box. This property
    /// overrides the `GtkAboutDialog:logo` property.
    case logoIconName = "logo-icon-name"
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
    /// The name of the program.
    /// If this is not set, it defaults to `g_get_application_name()`.
    case programName = "program-name"
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
    /// Credits to the translators. This string should be marked as translatable.
    /// The string may contain email addresses and URLs, which will be displayed
    /// as links, see the introduction for more details.
    case translatorCredits = "translator-credits"
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
    /// The version of the program.
    case version = "version"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    /// The URL for the link to the website of the program.
    /// This should be a string starting with "http://.
    case website = "website"
    /// The label for the link to the website of the program.
    case websiteLabel = "website-label"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
    case windowPosition = "window-position"
    /// Whether to wrap the text in the license dialog.
    case wrapLicense = "wrap-license"
}

public extension AboutDialogProtocol {
    /// Bind a `AboutDialogPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: AboutDialogPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a AboutDialog property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: AboutDialogPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a AboutDialog property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: AboutDialogPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of AboutDialog
public extension AboutDialogProtocol {
    /// The signal which gets emitted to activate a URI.
    /// Applications may connect to it to override the default behaviour,
    /// which is to call `gtk_show_uri_on_window()`.
    /// - Note: Representation of signal named `activate-link`
    /// - Parameter flags: Flags
    /// - Parameter handler: `true` if the link has been activated
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter uri: the URI that is activated
    @discardableResult
    func onActivateLink(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AboutDialogRef, _ uri: String) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<AboutDialogRef, String, Bool>
        let cCallback: @convention(c) (gpointer, UnsafeMutablePointer<gchar>?, gpointer) -> gboolean = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(AboutDialogRef(raw: unownedSelf), arg1.map({ String(cString: $0) })!)
            return gboolean((output) ? 1 : 0)
        }
        return signalConnectData(
            detailedSignal: "activate-link", 
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
    /// - Note: Representation of signal named `notify::artists`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyArtists(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AboutDialogRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<AboutDialogRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AboutDialogRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::artists", 
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
    /// - Note: Representation of signal named `notify::authors`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyAuthors(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AboutDialogRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<AboutDialogRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AboutDialogRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::authors", 
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
    /// - Note: Representation of signal named `notify::comments`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyComments(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AboutDialogRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<AboutDialogRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AboutDialogRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::comments", 
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
    /// - Note: Representation of signal named `notify::copyright`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyCopyright(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AboutDialogRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<AboutDialogRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AboutDialogRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::copyright", 
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
    /// - Note: Representation of signal named `notify::documenters`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyDocumenters(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AboutDialogRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<AboutDialogRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AboutDialogRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::documenters", 
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
    /// - Note: Representation of signal named `notify::license`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyLicense(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AboutDialogRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<AboutDialogRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AboutDialogRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::license", 
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
    /// - Note: Representation of signal named `notify::license-type`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyLicenseType(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AboutDialogRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<AboutDialogRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AboutDialogRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::license-type", 
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
    /// - Note: Representation of signal named `notify::logo`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyLogo(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AboutDialogRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<AboutDialogRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AboutDialogRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::logo", 
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
    /// - Note: Representation of signal named `notify::logo-icon-name`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyLogoIconName(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AboutDialogRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<AboutDialogRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AboutDialogRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::logo-icon-name", 
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
    /// - Note: Representation of signal named `notify::program-name`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyProgramName(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AboutDialogRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<AboutDialogRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AboutDialogRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::program-name", 
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
    /// - Note: Representation of signal named `notify::translator-credits`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyTranslatorCredits(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AboutDialogRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<AboutDialogRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AboutDialogRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::translator-credits", 
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
    /// - Note: Representation of signal named `notify::version`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyVersion(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AboutDialogRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<AboutDialogRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AboutDialogRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::version", 
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
    /// - Note: Representation of signal named `notify::website`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyWebsite(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AboutDialogRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<AboutDialogRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AboutDialogRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::website", 
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
    /// - Note: Representation of signal named `notify::website-label`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyWebsiteLabel(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AboutDialogRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<AboutDialogRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AboutDialogRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::website-label", 
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
    /// - Note: Representation of signal named `notify::wrap-license`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyWrapLicense(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AboutDialogRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<AboutDialogRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AboutDialogRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::wrap-license", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: AboutDialog Class: AboutDialogProtocol extension (methods and fields)
public extension AboutDialogProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAboutDialog` instance.
    @inlinable var about_dialog_ptr: UnsafeMutablePointer<GtkAboutDialog>! { return ptr?.assumingMemoryBound(to: GtkAboutDialog.self) }

    /// Creates a new section in the Credits page.
    @inlinable func addCreditSection(sectionName: UnsafePointer<gchar>!, people: UnsafeMutablePointer<UnsafePointer<gchar>?>!) {
        gtk_about_dialog_add_credit_section(about_dialog_ptr, sectionName, people)
    
    }

    /// Returns the string which are displayed in the artists tab
    /// of the secondary credits dialog.
    @inlinable func getArtists() -> UnsafePointer<UnsafePointer<gchar>?>! {
        let rv = gtk_about_dialog_get_artists(about_dialog_ptr)
        return rv
    }

    /// Returns the string which are displayed in the authors tab
    /// of the secondary credits dialog.
    @inlinable func getAuthors() -> UnsafePointer<UnsafePointer<gchar>?>! {
        let rv = gtk_about_dialog_get_authors(about_dialog_ptr)
        return rv
    }

    /// Returns the comments string.
    @inlinable func getComments() -> String! {
        let rv = gtk_about_dialog_get_comments(about_dialog_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns the copyright string.
    @inlinable func getCopyright() -> String! {
        let rv = gtk_about_dialog_get_copyright(about_dialog_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns the string which are displayed in the documenters
    /// tab of the secondary credits dialog.
    @inlinable func getDocumenters() -> UnsafePointer<UnsafePointer<gchar>?>! {
        let rv = gtk_about_dialog_get_documenters(about_dialog_ptr)
        return rv
    }

    /// Returns the license information.
    @inlinable func getLicense() -> String! {
        let rv = gtk_about_dialog_get_license(about_dialog_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Retrieves the license set using `gtk_about_dialog_set_license_type()`
    @inlinable func getLicenseType() -> GtkLicense {
        let rv = gtk_about_dialog_get_license_type(about_dialog_ptr)
        return rv
    }

    /// Returns the pixbuf displayed as logo in the about dialog.
    @inlinable func getLogo() -> PixbufRef! {
        let rv = PixbufRef(gconstpointer: gconstpointer(gtk_about_dialog_get_logo(about_dialog_ptr)))
        return rv
    }

    /// Returns the icon name displayed as logo in the about dialog.
    @inlinable func getLogoIconName() -> String! {
        let rv = gtk_about_dialog_get_logo_icon_name(about_dialog_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns the program name displayed in the about dialog.
    @inlinable func getProgramName() -> String! {
        let rv = gtk_about_dialog_get_program_name(about_dialog_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns the translator credits string which is displayed
    /// in the translators tab of the secondary credits dialog.
    @inlinable func getTranslatorCredits() -> String! {
        let rv = gtk_about_dialog_get_translator_credits(about_dialog_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns the version string.
    @inlinable func getVersion() -> String! {
        let rv = gtk_about_dialog_get_version(about_dialog_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns the website URL.
    @inlinable func getWebsite() -> String! {
        let rv = gtk_about_dialog_get_website(about_dialog_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns the label used for the website link.
    @inlinable func getWebsiteLabel() -> String! {
        let rv = gtk_about_dialog_get_website_label(about_dialog_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns whether the license text in `about` is
    /// automatically wrapped.
    @inlinable func getWrapLicense() -> Bool {
        let rv = ((gtk_about_dialog_get_wrap_license(about_dialog_ptr)) != 0)
        return rv
    }

    /// Sets the strings which are displayed in the artists tab
    /// of the secondary credits dialog.
    @inlinable func set(artists: UnsafeMutablePointer<UnsafePointer<gchar>?>!) {
        gtk_about_dialog_set_artists(about_dialog_ptr, artists)
    
    }

    /// Sets the strings which are displayed in the authors tab
    /// of the secondary credits dialog.
    @inlinable func set(authors: UnsafeMutablePointer<UnsafePointer<gchar>?>!) {
        gtk_about_dialog_set_authors(about_dialog_ptr, authors)
    
    }

    /// Sets the comments string to display in the about dialog.
    /// This should be a short string of one or two lines.
    @inlinable func set(comments: UnsafePointer<gchar>? = nil) {
        gtk_about_dialog_set_comments(about_dialog_ptr, comments)
    
    }

    /// Sets the copyright string to display in the about dialog.
    /// This should be a short string of one or two lines.
    @inlinable func set(copyright: UnsafePointer<gchar>? = nil) {
        gtk_about_dialog_set_copyright(about_dialog_ptr, copyright)
    
    }

    /// Sets the strings which are displayed in the documenters tab
    /// of the secondary credits dialog.
    @inlinable func set(documenters: UnsafeMutablePointer<UnsafePointer<gchar>?>!) {
        gtk_about_dialog_set_documenters(about_dialog_ptr, documenters)
    
    }

    /// Sets the license information to be displayed in the secondary
    /// license dialog. If `license` is `nil`, the license button is
    /// hidden.
    @inlinable func set(license: UnsafePointer<gchar>? = nil) {
        gtk_about_dialog_set_license(about_dialog_ptr, license)
    
    }

    /// Sets the license of the application showing the `about` dialog from a
    /// list of known licenses.
    /// 
    /// This function overrides the license set using
    /// `gtk_about_dialog_set_license()`.
    @inlinable func set(licenseType: GtkLicense) {
        gtk_about_dialog_set_license_type(about_dialog_ptr, licenseType)
    
    }

    /// Sets the pixbuf to be displayed as logo in the about dialog.
    /// If it is `nil`, the default window icon set with
    /// `gtk_window_set_default_icon()` will be used.
    @inlinable func set(logo: PixbufRef? = nil) {
        gtk_about_dialog_set_logo(about_dialog_ptr, logo?.pixbuf_ptr)
    
    }
    /// Sets the pixbuf to be displayed as logo in the about dialog.
    /// If it is `nil`, the default window icon set with
    /// `gtk_window_set_default_icon()` will be used.
    @inlinable func set<PixbufT: PixbufProtocol>(logo: PixbufT?) {
        gtk_about_dialog_set_logo(about_dialog_ptr, logo?.pixbuf_ptr)
    
    }

    /// Sets the pixbuf to be displayed as logo in the about dialog.
    /// If it is `nil`, the default window icon set with
    /// `gtk_window_set_default_icon()` will be used.
    @inlinable func setLogo(iconName: UnsafePointer<gchar>? = nil) {
        gtk_about_dialog_set_logo_icon_name(about_dialog_ptr, iconName)
    
    }

    /// Sets the name to display in the about dialog.
    /// If this is not set, it defaults to `g_get_application_name()`.
    @inlinable func setProgram(name: UnsafePointer<gchar>!) {
        gtk_about_dialog_set_program_name(about_dialog_ptr, name)
    
    }

    /// Sets the translator credits string which is displayed in
    /// the translators tab of the secondary credits dialog.
    /// 
    /// The intended use for this string is to display the translator
    /// of the language which is currently used in the user interface.
    /// Using `gettext()`, a simple way to achieve that is to mark the
    /// string for translation:
    /// (C Language Example):
    /// ```C
    /// GtkWidget *about = gtk_about_dialog_new ();
    /// gtk_about_dialog_set_translator_credits (GTK_ABOUT_DIALOG (about),
    ///                                          _("translator-credits"));
    /// ```
    /// It is a good idea to use the customary msgid “translator-credits” for this
    /// purpose, since translators will already know the purpose of that msgid, and
    /// since `GtkAboutDialog` will detect if “translator-credits” is untranslated
    /// and hide the tab.
    @inlinable func set(translatorCredits: UnsafePointer<gchar>? = nil) {
        gtk_about_dialog_set_translator_credits(about_dialog_ptr, translatorCredits)
    
    }

    /// Sets the version string to display in the about dialog.
    @inlinable func set(version: UnsafePointer<gchar>? = nil) {
        gtk_about_dialog_set_version(about_dialog_ptr, version)
    
    }

    /// Sets the URL to use for the website link.
    @inlinable func set(website: UnsafePointer<gchar>? = nil) {
        gtk_about_dialog_set_website(about_dialog_ptr, website)
    
    }

    /// Sets the label to be used for the website link.
    @inlinable func set(websiteLabel: UnsafePointer<gchar>!) {
        gtk_about_dialog_set_website_label(about_dialog_ptr, websiteLabel)
    
    }

    /// Sets whether the license text in `about` is
    /// automatically wrapped.
    @inlinable func set(wrapLicense: Bool) {
        gtk_about_dialog_set_wrap_license(about_dialog_ptr, gboolean((wrapLicense) ? 1 : 0))
    
    }
    /// The people who contributed artwork to the program, as a `nil`-terminated
    /// array of strings. Each string may contain email addresses and URLs, which
    /// will be displayed as links, see the introduction for more details.
    @inlinable var artists: UnsafePointer<UnsafePointer<gchar>?>! {
        /// Returns the string which are displayed in the artists tab
        /// of the secondary credits dialog.
        get {
            let rv = gtk_about_dialog_get_artists(about_dialog_ptr)
            return rv
        }
        /// Sets the strings which are displayed in the artists tab
        /// of the secondary credits dialog.
        nonmutating set {
            gtk_about_dialog_set_artists(about_dialog_ptr, UnsafeMutablePointer(mutating: newValue))
        }
    }

    /// The authors of the program, as a `nil`-terminated array of strings.
    /// Each string may contain email addresses and URLs, which will be displayed
    /// as links, see the introduction for more details.
    @inlinable var authors: UnsafePointer<UnsafePointer<gchar>?>! {
        /// Returns the string which are displayed in the authors tab
        /// of the secondary credits dialog.
        get {
            let rv = gtk_about_dialog_get_authors(about_dialog_ptr)
            return rv
        }
        /// Sets the strings which are displayed in the authors tab
        /// of the secondary credits dialog.
        nonmutating set {
            gtk_about_dialog_set_authors(about_dialog_ptr, UnsafeMutablePointer(mutating: newValue))
        }
    }

    /// Comments about the program. This string is displayed in a label
    /// in the main dialog, thus it should be a short explanation of
    /// the main purpose of the program, not a detailed list of features.
    @inlinable var comments: String! {
        /// Returns the comments string.
        get {
            let rv = gtk_about_dialog_get_comments(about_dialog_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the comments string to display in the about dialog.
        /// This should be a short string of one or two lines.
        nonmutating set {
            gtk_about_dialog_set_comments(about_dialog_ptr, newValue)
        }
    }

    /// Copyright information for the program.
    @inlinable var copyright: String! {
        /// Returns the copyright string.
        get {
            let rv = gtk_about_dialog_get_copyright(about_dialog_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the copyright string to display in the about dialog.
        /// This should be a short string of one or two lines.
        nonmutating set {
            gtk_about_dialog_set_copyright(about_dialog_ptr, newValue)
        }
    }

    /// The people documenting the program, as a `nil`-terminated array of strings.
    /// Each string may contain email addresses and URLs, which will be displayed
    /// as links, see the introduction for more details.
    @inlinable var documenters: UnsafePointer<UnsafePointer<gchar>?>! {
        /// Returns the string which are displayed in the documenters
        /// tab of the secondary credits dialog.
        get {
            let rv = gtk_about_dialog_get_documenters(about_dialog_ptr)
            return rv
        }
        /// Sets the strings which are displayed in the documenters tab
        /// of the secondary credits dialog.
        nonmutating set {
            gtk_about_dialog_set_documenters(about_dialog_ptr, UnsafeMutablePointer(mutating: newValue))
        }
    }

    /// The license of the program. This string is displayed in a
    /// text view in a secondary dialog, therefore it is fine to use
    /// a long multi-paragraph text. Note that the text is only wrapped
    /// in the text view if the "wrap-license" property is set to `true`;
    /// otherwise the text itself must contain the intended linebreaks.
    /// When setting this property to a non-`nil` value, the
    /// `GtkAboutDialog:license`-type property is set to `GTK_LICENSE_CUSTOM`
    /// as a side effect.
    @inlinable var license: String! {
        /// Returns the license information.
        get {
            let rv = gtk_about_dialog_get_license(about_dialog_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the license information to be displayed in the secondary
        /// license dialog. If `license` is `nil`, the license button is
        /// hidden.
        nonmutating set {
            gtk_about_dialog_set_license(about_dialog_ptr, newValue)
        }
    }

    /// Retrieves the license set using `gtk_about_dialog_set_license_type()`
    @inlinable var licenseType: GtkLicense {
        /// Retrieves the license set using `gtk_about_dialog_set_license_type()`
        get {
            let rv = gtk_about_dialog_get_license_type(about_dialog_ptr)
            return rv
        }
        /// Sets the license of the application showing the `about` dialog from a
        /// list of known licenses.
        /// 
        /// This function overrides the license set using
        /// `gtk_about_dialog_set_license()`.
        nonmutating set {
            gtk_about_dialog_set_license_type(about_dialog_ptr, newValue)
        }
    }

    /// A logo for the about box. If it is `nil`, the default window icon
    /// set with `gtk_window_set_default_icon()` will be used.
    @inlinable var logo: PixbufRef! {
        /// Returns the pixbuf displayed as logo in the about dialog.
        get {
            let rv = PixbufRef(gconstpointer: gconstpointer(gtk_about_dialog_get_logo(about_dialog_ptr)))
            return rv
        }
        /// Sets the pixbuf to be displayed as logo in the about dialog.
        /// If it is `nil`, the default window icon set with
        /// `gtk_window_set_default_icon()` will be used.
        nonmutating set {
            gtk_about_dialog_set_logo(about_dialog_ptr, UnsafeMutablePointer<GdkPixbuf>(newValue?.pixbuf_ptr))
        }
    }

    /// Returns the icon name displayed as logo in the about dialog.
    @inlinable var logoIconName: String! {
        /// Returns the icon name displayed as logo in the about dialog.
        get {
            let rv = gtk_about_dialog_get_logo_icon_name(about_dialog_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the pixbuf to be displayed as logo in the about dialog.
        /// If it is `nil`, the default window icon set with
        /// `gtk_window_set_default_icon()` will be used.
        nonmutating set {
            gtk_about_dialog_set_logo_icon_name(about_dialog_ptr, newValue)
        }
    }

    /// Returns the program name displayed in the about dialog.
    @inlinable var programName: String! {
        /// Returns the program name displayed in the about dialog.
        get {
            let rv = gtk_about_dialog_get_program_name(about_dialog_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the name to display in the about dialog.
        /// If this is not set, it defaults to `g_get_application_name()`.
        nonmutating set {
            gtk_about_dialog_set_program_name(about_dialog_ptr, newValue)
        }
    }

    /// Returns the translator credits string which is displayed
    /// in the translators tab of the secondary credits dialog.
    @inlinable var translatorCredits: String! {
        /// Returns the translator credits string which is displayed
        /// in the translators tab of the secondary credits dialog.
        get {
            let rv = gtk_about_dialog_get_translator_credits(about_dialog_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the translator credits string which is displayed in
        /// the translators tab of the secondary credits dialog.
        /// 
        /// The intended use for this string is to display the translator
        /// of the language which is currently used in the user interface.
        /// Using `gettext()`, a simple way to achieve that is to mark the
        /// string for translation:
        /// (C Language Example):
        /// ```C
        /// GtkWidget *about = gtk_about_dialog_new ();
        /// gtk_about_dialog_set_translator_credits (GTK_ABOUT_DIALOG (about),
        ///                                          _("translator-credits"));
        /// ```
        /// It is a good idea to use the customary msgid “translator-credits” for this
        /// purpose, since translators will already know the purpose of that msgid, and
        /// since `GtkAboutDialog` will detect if “translator-credits” is untranslated
        /// and hide the tab.
        nonmutating set {
            gtk_about_dialog_set_translator_credits(about_dialog_ptr, newValue)
        }
    }

    /// The version of the program.
    @inlinable var version: String! {
        /// Returns the version string.
        get {
            let rv = gtk_about_dialog_get_version(about_dialog_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the version string to display in the about dialog.
        nonmutating set {
            gtk_about_dialog_set_version(about_dialog_ptr, newValue)
        }
    }

    /// The URL for the link to the website of the program.
    /// This should be a string starting with "http://.
    @inlinable var website: String! {
        /// Returns the website URL.
        get {
            let rv = gtk_about_dialog_get_website(about_dialog_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the URL to use for the website link.
        nonmutating set {
            gtk_about_dialog_set_website(about_dialog_ptr, newValue)
        }
    }

    /// Returns the label used for the website link.
    @inlinable var websiteLabel: String! {
        /// Returns the label used for the website link.
        get {
            let rv = gtk_about_dialog_get_website_label(about_dialog_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the label to be used for the website link.
        nonmutating set {
            gtk_about_dialog_set_website_label(about_dialog_ptr, newValue)
        }
    }

    /// Returns whether the license text in `about` is
    /// automatically wrapped.
    @inlinable var wrapLicense: Bool {
        /// Returns whether the license text in `about` is
        /// automatically wrapped.
        get {
            let rv = ((gtk_about_dialog_get_wrap_license(about_dialog_ptr)) != 0)
            return rv
        }
        /// Sets whether the license text in `about` is
        /// automatically wrapped.
        nonmutating set {
            gtk_about_dialog_set_wrap_license(about_dialog_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    @inlinable var parentInstance: GtkDialog {
        get {
            let rv = about_dialog_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - AccelGroup Class

/// The `AccelGroupProtocol` protocol exposes the methods and properties of an underlying `GtkAccelGroup` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AccelGroup`.
/// Alternatively, use `AccelGroupRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GtkAccelGroup` represents a group of keyboard accelerators,
/// typically attached to a toplevel `GtkWindow` (with
/// `gtk_window_add_accel_group()`). Usually you won’t need to create a
/// `GtkAccelGroup` directly; instead, when using `GtkUIManager`, GTK+
/// automatically sets up the accelerators for your menus in the ui
/// manager’s `GtkAccelGroup`.
/// 
/// Note that “accelerators” are different from
/// “mnemonics”. Accelerators are shortcuts for
/// activating a menu item; they appear alongside the menu item they’re a
/// shortcut for. For example “Ctrl+Q” might appear alongside the “Quit”
/// menu item. Mnemonics are shortcuts for GUI elements such as text
/// entries or buttons; they appear as underlined characters. See
/// `gtk_label_new_with_mnemonic()`. Menu items can have both accelerators
/// and mnemonics, of course.
public protocol AccelGroupProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GtkAccelGroup` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkAccelGroup` instance.
    var accel_group_ptr: UnsafeMutablePointer<GtkAccelGroup>! { get }

}

/// The `AccelGroupRef` type acts as a lightweight Swift reference to an underlying `GtkAccelGroup` instance.
/// It exposes methods that can operate on this data type through `AccelGroupProtocol` conformance.
/// Use `AccelGroupRef` only as an `unowned` reference to an existing `GtkAccelGroup` instance.
///
/// A `GtkAccelGroup` represents a group of keyboard accelerators,
/// typically attached to a toplevel `GtkWindow` (with
/// `gtk_window_add_accel_group()`). Usually you won’t need to create a
/// `GtkAccelGroup` directly; instead, when using `GtkUIManager`, GTK+
/// automatically sets up the accelerators for your menus in the ui
/// manager’s `GtkAccelGroup`.
/// 
/// Note that “accelerators” are different from
/// “mnemonics”. Accelerators are shortcuts for
/// activating a menu item; they appear alongside the menu item they’re a
/// shortcut for. For example “Ctrl+Q” might appear alongside the “Quit”
/// menu item. Mnemonics are shortcuts for GUI elements such as text
/// entries or buttons; they appear as underlined characters. See
/// `gtk_label_new_with_mnemonic()`. Menu items can have both accelerators
/// and mnemonics, of course.
public struct AccelGroupRef: AccelGroupProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkAccelGroup` instance.
    /// For type-safe access, use the generated, typed pointer `accel_group_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AccelGroupRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkAccelGroup>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkAccelGroup>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkAccelGroup>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkAccelGroup>?) {
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

    /// Reference intialiser for a related type that implements `AccelGroupProtocol`
    @inlinable init<T: AccelGroupProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: AccelGroupProtocol>(_ other: T) -> AccelGroupRef { AccelGroupRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkAccelGroup`.
    @inlinable init() {
        let rv = gtk_accel_group_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Finds the `GtkAccelGroup` to which `closure` is connected;
    /// see `gtk_accel_group_connect()`.
    @inlinable static func fromAccel<ClosureT: GLibObject.ClosureProtocol>(accelClosure closure: ClosureT) -> AccelGroupRef! {
        guard let rv = AccelGroupRef(gconstpointer: gconstpointer(gtk_accel_group_from_accel_closure(closure.closure_ptr))) else { return nil }
        return rv
    }
}

/// The `AccelGroup` type acts as a reference-counted owner of an underlying `GtkAccelGroup` instance.
/// It provides the methods that can operate on this data type through `AccelGroupProtocol` conformance.
/// Use `AccelGroup` as a strong reference or owner of a `GtkAccelGroup` instance.
///
/// A `GtkAccelGroup` represents a group of keyboard accelerators,
/// typically attached to a toplevel `GtkWindow` (with
/// `gtk_window_add_accel_group()`). Usually you won’t need to create a
/// `GtkAccelGroup` directly; instead, when using `GtkUIManager`, GTK+
/// automatically sets up the accelerators for your menus in the ui
/// manager’s `GtkAccelGroup`.
/// 
/// Note that “accelerators” are different from
/// “mnemonics”. Accelerators are shortcuts for
/// activating a menu item; they appear alongside the menu item they’re a
/// shortcut for. For example “Ctrl+Q” might appear alongside the “Quit”
/// menu item. Mnemonics are shortcuts for GUI elements such as text
/// entries or buttons; they appear as underlined characters. See
/// `gtk_label_new_with_mnemonic()`. Menu items can have both accelerators
/// and mnemonics, of course.
open class AccelGroup: GLibObject.Object, AccelGroupProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AccelGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkAccelGroup>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AccelGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkAccelGroup>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AccelGroup` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AccelGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AccelGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkAccelGroup>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AccelGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkAccelGroup>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkAccelGroup`.
    /// i.e., ownership is transferred to the `AccelGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkAccelGroup>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `AccelGroupProtocol`
    /// Will retain `GtkAccelGroup`.
    /// - Parameter other: an instance of a related type that implements `AccelGroupProtocol`
    @inlinable public init<T: AccelGroupProtocol>(accelGroup other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelGroupProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkAccelGroup`.
    @inlinable public init() {
        let rv = gtk_accel_group_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Finds the `GtkAccelGroup` to which `closure` is connected;
    /// see `gtk_accel_group_connect()`.
    @inlinable public static func fromAccel<ClosureT: GLibObject.ClosureProtocol>(accelClosure closure: ClosureT) -> AccelGroup! {
        guard let rv = AccelGroup(gconstpointer: gconstpointer(gtk_accel_group_from_accel_closure(closure.closure_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum AccelGroupPropertyName: String, PropertyNameProtocol {
    case isLocked = "is-locked"
    case modifierMask = "modifier-mask"
}

public extension AccelGroupProtocol {
    /// Bind a `AccelGroupPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: AccelGroupPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a AccelGroup property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: AccelGroupPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a AccelGroup property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: AccelGroupPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of AccelGroup
public extension AccelGroupProtocol {
    /// The accel-activate signal is an implementation detail of
    /// `GtkAccelGroup` and not meant to be used by applications.
    /// - Note: Representation of signal named `accel-activate`
    /// - Parameter flags: Flags
    /// - Parameter handler: `true` if the accelerator was activated
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter acceleratable: the object on which the accelerator was activated
    /// - Parameter keyval: the accelerator keyval
    /// - Parameter modifier: the modifier combination of the accelerator
    @discardableResult
    func onAccelActivate(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AccelGroupRef, _ acceleratable: GLibObject.ObjectRef, _ keyval: UInt, _ modifier: Gdk.ModifierType) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder4<AccelGroupRef, GLibObject.ObjectRef, UInt, Gdk.ModifierType, Bool>
        let cCallback: @convention(c) (gpointer, gpointer, guint, UInt32, gpointer) -> gboolean = { unownedSelf, arg1, arg2, arg3, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(AccelGroupRef(raw: unownedSelf), GLibObject.ObjectRef(raw: arg1), UInt(arg2), Gdk.ModifierType(arg3))
            return gboolean((output) ? 1 : 0)
        }
        return signalConnectData(
            detailedSignal: "accel-activate", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The accel-changed signal is emitted when an entry
    /// is added to or removed from the accel group.
    /// 
    /// Widgets like `GtkAccelLabel` which display an associated
    /// accelerator should connect to this signal, and rebuild
    /// their visual representation if the `accel_closure` is theirs.
    /// - Note: Representation of signal named `accel-changed`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter keyval: the accelerator keyval
    /// - Parameter modifier: the modifier combination of the accelerator
    /// - Parameter accelClosure: the `GClosure` of the accelerator
    @discardableResult
    func onAccelChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AccelGroupRef, _ keyval: UInt, _ modifier: Gdk.ModifierType, _ accelClosure: GLibObject.ClosureRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder4<AccelGroupRef, UInt, Gdk.ModifierType, GLibObject.ClosureRef, Void>
        let cCallback: @convention(c) (gpointer, guint, UInt32, gpointer, gpointer) -> Void = { unownedSelf, arg1, arg2, arg3, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AccelGroupRef(raw: unownedSelf), UInt(arg1), Gdk.ModifierType(arg2), GLibObject.ClosureRef(raw: arg3))
            return output
        }
        return signalConnectData(
            detailedSignal: "accel-changed", 
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
    /// - Note: Representation of signal named `notify::is-locked`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyIsLocked(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AccelGroupRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<AccelGroupRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AccelGroupRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::is-locked", 
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
    /// - Note: Representation of signal named `notify::modifier-mask`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyModifierMask(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AccelGroupRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<AccelGroupRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AccelGroupRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::modifier-mask", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: AccelGroup Class: AccelGroupProtocol extension (methods and fields)
public extension AccelGroupProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAccelGroup` instance.
    @inlinable var accel_group_ptr: UnsafeMutablePointer<GtkAccelGroup>! { return ptr?.assumingMemoryBound(to: GtkAccelGroup.self) }

    /// Finds the first accelerator in `accel_group` that matches
    /// `accel_key` and `accel_mods`, and activates it.
    @inlinable func activate<ObjectT: GLibObject.ObjectProtocol>(accelQuark: GQuark, acceleratable: ObjectT, accelKey: Int, accelMods: Gdk.ModifierType) -> Bool {
        let rv = ((gtk_accel_group_activate(accel_group_ptr, accelQuark, acceleratable.object_ptr, guint(accelKey), accelMods.value)) != 0)
        return rv
    }

    /// Installs an accelerator in this group. When `accel_group` is being
    /// activated in response to a call to `gtk_accel_groups_activate()`,
    /// `closure` will be invoked if the `accel_key` and `accel_mods` from
    /// `gtk_accel_groups_activate()` match those of this connection.
    /// 
    /// The signature used for the `closure` is that of `GtkAccelGroupActivate`.
    /// 
    /// Note that, due to implementation details, a single closure can
    /// only be connected to one accelerator group.
    @inlinable func connect<ClosureT: GLibObject.ClosureProtocol>(accelKey: Int, accelMods: Gdk.ModifierType, accelFlags: AccelFlags, closure: ClosureT) {
        gtk_accel_group_connect(accel_group_ptr, guint(accelKey), accelMods.value, accelFlags.value, closure.closure_ptr)
    
    }

    /// Installs an accelerator in this group, using an accelerator path
    /// to look up the appropriate key and modifiers (see
    /// `gtk_accel_map_add_entry()`). When `accel_group` is being activated
    /// in response to a call to `gtk_accel_groups_activate()`, `closure` will
    /// be invoked if the `accel_key` and `accel_mods` from
    /// `gtk_accel_groups_activate()` match the key and modifiers for the path.
    /// 
    /// The signature used for the `closure` is that of `GtkAccelGroupActivate`.
    /// 
    /// Note that `accel_path` string will be stored in a `GQuark`. Therefore,
    /// if you pass a static string, you can save some memory by interning it
    /// first with `g_intern_static_string()`.
    @inlinable func connectByPath<ClosureT: GLibObject.ClosureProtocol>(accelPath: UnsafePointer<gchar>!, closure: ClosureT) {
        gtk_accel_group_connect_by_path(accel_group_ptr, accelPath, closure.closure_ptr)
    
    }

    /// Removes an accelerator previously installed through
    /// `gtk_accel_group_connect()`.
    /// 
    /// Since 2.20 `closure` can be `nil`.
    @inlinable func disconnect(closure: GLibObject.ClosureRef? = nil) -> Bool {
        let rv = ((gtk_accel_group_disconnect(accel_group_ptr, closure?.closure_ptr)) != 0)
        return rv
    }
    /// Removes an accelerator previously installed through
    /// `gtk_accel_group_connect()`.
    /// 
    /// Since 2.20 `closure` can be `nil`.
    @inlinable func disconnect<ClosureT: GLibObject.ClosureProtocol>(closure: ClosureT?) -> Bool {
        let rv = ((gtk_accel_group_disconnect(accel_group_ptr, closure?.closure_ptr)) != 0)
        return rv
    }

    /// Removes an accelerator previously installed through
    /// `gtk_accel_group_connect()`.
    @inlinable func disconnectKey(accelKey: Int, accelMods: Gdk.ModifierType) -> Bool {
        let rv = ((gtk_accel_group_disconnect_key(accel_group_ptr, guint(accelKey), accelMods.value)) != 0)
        return rv
    }

    /// Finds the first entry in an accelerator group for which
    /// `find_func` returns `true` and returns its `GtkAccelKey`.
    @inlinable func find(findFunc: GtkAccelGroupFindFunc?, data: gpointer! = nil) -> AccelKeyRef! {
        let rv = AccelKeyRef(gconstpointer: gconstpointer(gtk_accel_group_find(accel_group_ptr, findFunc, data)))
        return rv
    }

    /// Locks are added and removed using `gtk_accel_group_lock()` and
    /// `gtk_accel_group_unlock()`.
    @inlinable func getIsLocked() -> Bool {
        let rv = ((gtk_accel_group_get_is_locked(accel_group_ptr)) != 0)
        return rv
    }

    /// Gets a `GdkModifierType` representing the mask for this
    /// `accel_group`. For example, `GDK_CONTROL_MASK`, `GDK_SHIFT_MASK`, etc.
    @inlinable func getModifierMask() -> Gdk.ModifierType {
        let rv = Gdk.ModifierType(gtk_accel_group_get_modifier_mask(accel_group_ptr))
        return rv
    }

    /// Locks the given accelerator group.
    /// 
    /// Locking an acelerator group prevents the accelerators contained
    /// within it to be changed during runtime. Refer to
    /// `gtk_accel_map_change_entry()` about runtime accelerator changes.
    /// 
    /// If called more than once, `accel_group` remains locked until
    /// `gtk_accel_group_unlock()` has been called an equivalent number
    /// of times.
    @inlinable func lock() {
        gtk_accel_group_lock(accel_group_ptr)
    
    }

    /// Queries an accelerator group for all entries matching `accel_key`
    /// and `accel_mods`.
    @inlinable func query(accelKey: Int, accelMods: Gdk.ModifierType, nEntries: UnsafeMutablePointer<guint>! = nil) -> UnsafeMutablePointer<GtkAccelGroupEntry>! {
        let rv = gtk_accel_group_query(accel_group_ptr, guint(accelKey), accelMods.value, nEntries)
        return rv
    }

    /// Undoes the last call to `gtk_accel_group_lock()` on this `accel_group`.
    @inlinable func unlock() {
        gtk_accel_group_unlock(accel_group_ptr)
    
    }
    /// Locks are added and removed using `gtk_accel_group_lock()` and
    /// `gtk_accel_group_unlock()`.
    @inlinable var isLocked: Bool {
        /// Locks are added and removed using `gtk_accel_group_lock()` and
        /// `gtk_accel_group_unlock()`.
        get {
            let rv = ((gtk_accel_group_get_is_locked(accel_group_ptr)) != 0)
            return rv
        }
    }

    /// Gets a `GdkModifierType` representing the mask for this
    /// `accel_group`. For example, `GDK_CONTROL_MASK`, `GDK_SHIFT_MASK`, etc.
    @inlinable var modifierMask: Gdk.ModifierType {
        /// Gets a `GdkModifierType` representing the mask for this
        /// `accel_group`. For example, `GDK_CONTROL_MASK`, `GDK_SHIFT_MASK`, etc.
        get {
            let rv = Gdk.ModifierType(gtk_accel_group_get_modifier_mask(accel_group_ptr))
            return rv
        }
    }

    @inlinable var parent: GObject {
        get {
            let rv = accel_group_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - AccelLabel Class

/// The `AccelLabelProtocol` protocol exposes the methods and properties of an underlying `GtkAccelLabel` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AccelLabel`.
/// Alternatively, use `AccelLabelRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkAccelLabel` widget is a subclass of `GtkLabel` that also displays an
/// accelerator key on the right of the label text, e.g. “Ctrl+S”.
/// It is commonly used in menus to show the keyboard short-cuts for commands.
/// 
/// The accelerator key to display is typically not set explicitly (although it
/// can be, with `gtk_accel_label_set_accel()`). Instead, the `GtkAccelLabel` displays
/// the accelerators which have been added to a particular widget. This widget is
/// set by calling `gtk_accel_label_set_accel_widget()`.
/// 
/// For example, a `GtkMenuItem` widget may have an accelerator added to emit
/// the “activate” signal when the “Ctrl+S” key combination is pressed.
/// A `GtkAccelLabel` is created and added to the `GtkMenuItem`, and
/// `gtk_accel_label_set_accel_widget()` is called with the `GtkMenuItem` as the
/// second argument. The `GtkAccelLabel` will now display “Ctrl+S” after its label.
/// 
/// Note that creating a `GtkMenuItem` with `gtk_menu_item_new_with_label()` (or
/// one of the similar functions for `GtkCheckMenuItem` and `GtkRadioMenuItem`)
/// automatically adds a `GtkAccelLabel` to the `GtkMenuItem` and calls
/// `gtk_accel_label_set_accel_widget()` to set it up for you.
/// 
/// A `GtkAccelLabel` will only display accelerators which have `GTK_ACCEL_VISIBLE`
/// set (see `GtkAccelFlags`).
/// A `GtkAccelLabel` can display multiple accelerators and even signal names,
/// though it is almost always used to display just one accelerator key.
/// 
/// ## Creating a simple menu item with an accelerator key.
/// 
/// (C Language Example):
/// ```C
///   GtkWidget *window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
///   GtkWidget *menu = gtk_menu_new ();
///   GtkWidget *save_item;
///   GtkAccelGroup *accel_group;
/// 
///   // Create a GtkAccelGroup and add it to the window.
///   accel_group = gtk_accel_group_new ();
///   gtk_window_add_accel_group (GTK_WINDOW (window), accel_group);
/// 
///   // Create the menu item using the convenience function.
///   save_item = gtk_menu_item_new_with_label ("Save");
///   gtk_widget_show (save_item);
///   gtk_container_add (GTK_CONTAINER (menu), save_item);
/// 
///   // Now add the accelerator to the GtkMenuItem. Note that since we
///   // called gtk_menu_item_new_with_label() to create the GtkMenuItem
///   // the GtkAccelLabel is automatically set up to display the
///   // GtkMenuItem accelerators. We just need to make sure we use
///   // GTK_ACCEL_VISIBLE here.
///   gtk_widget_add_accelerator (save_item, "activate", accel_group,
///                               GDK_KEY_s, GDK_CONTROL_MASK, GTK_ACCEL_VISIBLE);
/// ```
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// label
/// ╰── accelerator
/// ```
/// 
/// Like `GtkLabel`, GtkAccelLabel has a main CSS node with the name label.
/// It adds a subnode with name accelerator.
public protocol AccelLabelProtocol: LabelProtocol {
        /// Untyped pointer to the underlying `GtkAccelLabel` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkAccelLabel` instance.
    var accel_label_ptr: UnsafeMutablePointer<GtkAccelLabel>! { get }

}

/// The `AccelLabelRef` type acts as a lightweight Swift reference to an underlying `GtkAccelLabel` instance.
/// It exposes methods that can operate on this data type through `AccelLabelProtocol` conformance.
/// Use `AccelLabelRef` only as an `unowned` reference to an existing `GtkAccelLabel` instance.
///
/// The `GtkAccelLabel` widget is a subclass of `GtkLabel` that also displays an
/// accelerator key on the right of the label text, e.g. “Ctrl+S”.
/// It is commonly used in menus to show the keyboard short-cuts for commands.
/// 
/// The accelerator key to display is typically not set explicitly (although it
/// can be, with `gtk_accel_label_set_accel()`). Instead, the `GtkAccelLabel` displays
/// the accelerators which have been added to a particular widget. This widget is
/// set by calling `gtk_accel_label_set_accel_widget()`.
/// 
/// For example, a `GtkMenuItem` widget may have an accelerator added to emit
/// the “activate” signal when the “Ctrl+S” key combination is pressed.
/// A `GtkAccelLabel` is created and added to the `GtkMenuItem`, and
/// `gtk_accel_label_set_accel_widget()` is called with the `GtkMenuItem` as the
/// second argument. The `GtkAccelLabel` will now display “Ctrl+S” after its label.
/// 
/// Note that creating a `GtkMenuItem` with `gtk_menu_item_new_with_label()` (or
/// one of the similar functions for `GtkCheckMenuItem` and `GtkRadioMenuItem`)
/// automatically adds a `GtkAccelLabel` to the `GtkMenuItem` and calls
/// `gtk_accel_label_set_accel_widget()` to set it up for you.
/// 
/// A `GtkAccelLabel` will only display accelerators which have `GTK_ACCEL_VISIBLE`
/// set (see `GtkAccelFlags`).
/// A `GtkAccelLabel` can display multiple accelerators and even signal names,
/// though it is almost always used to display just one accelerator key.
/// 
/// ## Creating a simple menu item with an accelerator key.
/// 
/// (C Language Example):
/// ```C
///   GtkWidget *window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
///   GtkWidget *menu = gtk_menu_new ();
///   GtkWidget *save_item;
///   GtkAccelGroup *accel_group;
/// 
///   // Create a GtkAccelGroup and add it to the window.
///   accel_group = gtk_accel_group_new ();
///   gtk_window_add_accel_group (GTK_WINDOW (window), accel_group);
/// 
///   // Create the menu item using the convenience function.
///   save_item = gtk_menu_item_new_with_label ("Save");
///   gtk_widget_show (save_item);
///   gtk_container_add (GTK_CONTAINER (menu), save_item);
/// 
///   // Now add the accelerator to the GtkMenuItem. Note that since we
///   // called gtk_menu_item_new_with_label() to create the GtkMenuItem
///   // the GtkAccelLabel is automatically set up to display the
///   // GtkMenuItem accelerators. We just need to make sure we use
///   // GTK_ACCEL_VISIBLE here.
///   gtk_widget_add_accelerator (save_item, "activate", accel_group,
///                               GDK_KEY_s, GDK_CONTROL_MASK, GTK_ACCEL_VISIBLE);
/// ```
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// label
/// ╰── accelerator
/// ```
/// 
/// Like `GtkLabel`, GtkAccelLabel has a main CSS node with the name label.
/// It adds a subnode with name accelerator.
public struct AccelLabelRef: AccelLabelProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkAccelLabel` instance.
    /// For type-safe access, use the generated, typed pointer `accel_label_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AccelLabelRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkAccelLabel>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkAccelLabel>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkAccelLabel>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkAccelLabel>?) {
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

    /// Reference intialiser for a related type that implements `AccelLabelProtocol`
    @inlinable init<T: AccelLabelProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: AccelLabelProtocol>(_ other: T) -> AccelLabelRef { AccelLabelRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelLabelProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelLabelProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelLabelProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelLabelProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelLabelProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkAccelLabel`.
    @inlinable init( string: UnsafePointer<gchar>!) {
        let rv = gtk_accel_label_new(string)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `AccelLabel` type acts as a reference-counted owner of an underlying `GtkAccelLabel` instance.
/// It provides the methods that can operate on this data type through `AccelLabelProtocol` conformance.
/// Use `AccelLabel` as a strong reference or owner of a `GtkAccelLabel` instance.
///
/// The `GtkAccelLabel` widget is a subclass of `GtkLabel` that also displays an
/// accelerator key on the right of the label text, e.g. “Ctrl+S”.
/// It is commonly used in menus to show the keyboard short-cuts for commands.
/// 
/// The accelerator key to display is typically not set explicitly (although it
/// can be, with `gtk_accel_label_set_accel()`). Instead, the `GtkAccelLabel` displays
/// the accelerators which have been added to a particular widget. This widget is
/// set by calling `gtk_accel_label_set_accel_widget()`.
/// 
/// For example, a `GtkMenuItem` widget may have an accelerator added to emit
/// the “activate” signal when the “Ctrl+S” key combination is pressed.
/// A `GtkAccelLabel` is created and added to the `GtkMenuItem`, and
/// `gtk_accel_label_set_accel_widget()` is called with the `GtkMenuItem` as the
/// second argument. The `GtkAccelLabel` will now display “Ctrl+S” after its label.
/// 
/// Note that creating a `GtkMenuItem` with `gtk_menu_item_new_with_label()` (or
/// one of the similar functions for `GtkCheckMenuItem` and `GtkRadioMenuItem`)
/// automatically adds a `GtkAccelLabel` to the `GtkMenuItem` and calls
/// `gtk_accel_label_set_accel_widget()` to set it up for you.
/// 
/// A `GtkAccelLabel` will only display accelerators which have `GTK_ACCEL_VISIBLE`
/// set (see `GtkAccelFlags`).
/// A `GtkAccelLabel` can display multiple accelerators and even signal names,
/// though it is almost always used to display just one accelerator key.
/// 
/// ## Creating a simple menu item with an accelerator key.
/// 
/// (C Language Example):
/// ```C
///   GtkWidget *window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
///   GtkWidget *menu = gtk_menu_new ();
///   GtkWidget *save_item;
///   GtkAccelGroup *accel_group;
/// 
///   // Create a GtkAccelGroup and add it to the window.
///   accel_group = gtk_accel_group_new ();
///   gtk_window_add_accel_group (GTK_WINDOW (window), accel_group);
/// 
///   // Create the menu item using the convenience function.
///   save_item = gtk_menu_item_new_with_label ("Save");
///   gtk_widget_show (save_item);
///   gtk_container_add (GTK_CONTAINER (menu), save_item);
/// 
///   // Now add the accelerator to the GtkMenuItem. Note that since we
///   // called gtk_menu_item_new_with_label() to create the GtkMenuItem
///   // the GtkAccelLabel is automatically set up to display the
///   // GtkMenuItem accelerators. We just need to make sure we use
///   // GTK_ACCEL_VISIBLE here.
///   gtk_widget_add_accelerator (save_item, "activate", accel_group,
///                               GDK_KEY_s, GDK_CONTROL_MASK, GTK_ACCEL_VISIBLE);
/// ```
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// label
/// ╰── accelerator
/// ```
/// 
/// Like `GtkLabel`, GtkAccelLabel has a main CSS node with the name label.
/// It adds a subnode with name accelerator.
open class AccelLabel: Label, AccelLabelProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AccelLabel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkAccelLabel>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AccelLabel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkAccelLabel>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AccelLabel` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AccelLabel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AccelLabel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkAccelLabel>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AccelLabel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkAccelLabel>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkAccelLabel`.
    /// i.e., ownership is transferred to the `AccelLabel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkAccelLabel>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `AccelLabelProtocol`
    /// Will retain `GtkAccelLabel`.
    /// - Parameter other: an instance of a related type that implements `AccelLabelProtocol`
    @inlinable public init<T: AccelLabelProtocol>(accelLabel other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelLabelProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelLabelProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelLabelProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelLabelProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelLabelProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelLabelProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelLabelProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelLabelProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkAccelLabel`.
    @inlinable public init( string: UnsafePointer<gchar>!) {
        let rv = gtk_accel_label_new(string)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum AccelLabelPropertyName: String, PropertyNameProtocol {
    case accelClosure = "accel-closure"
    case accelWidget = "accel-widget"
    /// The angle that the baseline of the label makes with the horizontal,
    /// in degrees, measured counterclockwise. An angle of 90 reads from
    /// from bottom to top, an angle of 270, from top to bottom. Ignored
    /// if the label is selectable.
    case angle = "angle"
    case appPaintable = "app-paintable"
    case attributes = "attributes"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case compositeChild = "composite-child"
    case cursorPosition = "cursor-position"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
    /// The preferred place to ellipsize the string, if the label does
    /// not have enough room to display the entire string, specified as a
    /// `PangoEllipsizeMode`.
    /// 
    /// Note that setting this property to a value other than
    /// `PANGO_ELLIPSIZE_NONE` has the side-effect that the label requests
    /// only enough space to display the ellipsis "...". In particular, this
    /// means that ellipsizing labels do not work well in notebook tabs, unless
    /// the `GtkNotebook` tab-expand child property is set to `true`. Other ways
    /// to set a label's width are `gtk_widget_set_size_request()` and
    /// `gtk_label_set_width_chars()`.
    case ellipsize = "ellipsize"
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
    case justify = "justify"
    /// The contents of the label.
    /// 
    /// If the string contains [Pango XML markup](#PangoMarkupFormat), you will
    /// have to set the `GtkLabel:use`-markup property to `true` in order for the
    /// label to display the markup attributes. See also `gtk_label_set_markup()`
    /// for a convenience function that sets both this property and the
    /// `GtkLabel:use`-markup property at the same time.
    /// 
    /// If the string contains underlines acting as mnemonics, you will have to
    /// set the `GtkLabel:use`-underline property to `true` in order for the label
    /// to display them.
    case label = "label"
    /// The number of lines to which an ellipsized, wrapping label
    /// should be limited. This property has no effect if the
    /// label is not wrapping or ellipsized. Set this property to
    /// -1 if you don't want to limit the number of lines.
    case lines = "lines"
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
    /// The desired maximum width of the label, in characters. If this property
    /// is set to -1, the width will be calculated automatically.
    /// 
    /// See the section on [text layout](#label-text-layout)
    /// for details of how `GtkLabel:width`-chars and `GtkLabel:max`-width-chars
    /// determine the width of ellipsized and wrapped labels.
    case maxWidthChars = "max-width-chars"
    case mnemonicKeyval = "mnemonic-keyval"
    case mnemonicWidget = "mnemonic-widget"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case pattern = "pattern"
    case receivesDefault = "receives-default"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case selectable = "selectable"
    case selectionBound = "selection-bound"
    case sensitive = "sensitive"
    /// Whether the label is in single line mode. In single line mode,
    /// the height of the label does not depend on the actual text, it
    /// is always set to ascent + descent of the font. This can be an
    /// advantage in situations where resizing the label because of text
    /// changes would be distracting, e.g. in a statusbar.
    case singleLineMode = "single-line-mode"
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
    /// Set this property to `true` to make the label track which links
    /// have been visited. It will then apply the `GTK_STATE_FLAG_VISITED`
    /// when rendering this link, in addition to `GTK_STATE_FLAG_LINK`.
    case trackVisitedLinks = "track-visited-links"
    case useMarkup = "use-markup"
    case useUnderline = "use-underline"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    /// The desired width of the label, in characters. If this property is set to
    /// -1, the width will be calculated automatically.
    /// 
    /// See the section on [text layout](#label-text-layout)
    /// for details of how `GtkLabel:width`-chars and `GtkLabel:max`-width-chars
    /// determine the width of ellipsized and wrapped labels.
    case widthChars = "width-chars"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
    case wrap = "wrap"
    /// If line wrapping is on (see the `GtkLabel:wrap` property) this controls
    /// how the line wrapping is done. The default is `PANGO_WRAP_WORD`, which
    /// means wrap on word boundaries.
    case wrapMode = "wrap-mode"
    /// The xalign property determines the horizontal aligment of the label text
    /// inside the labels size allocation. Compare this to `GtkWidget:halign`,
    /// which determines how the labels size allocation is positioned in the
    /// space available for the label.
    case xalign = "xalign"
    /// The amount of space to add on the left and right of the widget, in
    /// pixels.
    ///
    /// **xpad is deprecated:**
    /// Use gtk_widget_set_margin_start() and
    ///   gtk_widget_set_margin_end() instead
    case xpad = "xpad"
    /// The yalign property determines the vertical aligment of the label text
    /// inside the labels size allocation. Compare this to `GtkWidget:valign`,
    /// which determines how the labels size allocation is positioned in the
    /// space available for the label.
    case yalign = "yalign"
    /// The amount of space to add on the top and bottom of the widget, in
    /// pixels.
    ///
    /// **ypad is deprecated:**
    /// Use gtk_widget_set_margin_top() and
    ///   gtk_widget_set_margin_bottom() instead
    case ypad = "ypad"
}

public extension AccelLabelProtocol {
    /// Bind a `AccelLabelPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: AccelLabelPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a AccelLabel property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: AccelLabelPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a AccelLabel property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: AccelLabelPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: AccelLabel has no signals// MARK: AccelLabel Class: AccelLabelProtocol extension (methods and fields)
public extension AccelLabelProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAccelLabel` instance.
    @inlinable var accel_label_ptr: UnsafeMutablePointer<GtkAccelLabel>! { return ptr?.assumingMemoryBound(to: GtkAccelLabel.self) }

    /// Gets the keyval and modifier mask set with
    /// `gtk_accel_label_set_accel()`.
    @inlinable func getAccel(acceleratorKey: UnsafeMutablePointer<guint>!, acceleratorMods: UnsafeMutablePointer<GdkModifierType>!) {
        gtk_accel_label_get_accel(accel_label_ptr, acceleratorKey, acceleratorMods)
    
    }

    /// Fetches the widget monitored by this accelerator label. See
    /// `gtk_accel_label_set_accel_widget()`.
    @inlinable func getAccelWidget() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_accel_label_get_accel_widget(accel_label_ptr))) else { return nil }
        return rv
    }

    /// Returns the width needed to display the accelerator `key(s)`.
    /// This is used by menus to align all of the `GtkMenuItem` widgets, and shouldn't
    /// be needed by applications.
    @inlinable func getAccelWidth() -> Int {
        let rv = Int(gtk_accel_label_get_accel_width(accel_label_ptr))
        return rv
    }

    /// Recreates the string representing the accelerator keys.
    /// This should not be needed since the string is automatically updated whenever
    /// accelerators are added or removed from the associated widget.
    @inlinable func refetch() -> Bool {
        let rv = ((gtk_accel_label_refetch(accel_label_ptr)) != 0)
        return rv
    }

    /// Manually sets a keyval and modifier mask as the accelerator rendered
    /// by `accel_label`.
    /// 
    /// If a keyval and modifier are explicitly set then these values are
    /// used regardless of any associated accel closure or widget.
    /// 
    /// Providing an `accelerator_key` of 0 removes the manual setting.
    @inlinable func setAccel(acceleratorKey: Int, acceleratorMods: Gdk.ModifierType) {
        gtk_accel_label_set_accel(accel_label_ptr, guint(acceleratorKey), acceleratorMods.value)
    
    }

    /// Sets the closure to be monitored by this accelerator label. The closure
    /// must be connected to an accelerator group; see `gtk_accel_group_connect()`.
    /// Passing `nil` for `accel_closure` will dissociate `accel_label` from its
    /// current closure, if any.
    @inlinable func set(accelClosure: GLibObject.ClosureRef? = nil) {
        gtk_accel_label_set_accel_closure(accel_label_ptr, accelClosure?.closure_ptr)
    
    }
    /// Sets the closure to be monitored by this accelerator label. The closure
    /// must be connected to an accelerator group; see `gtk_accel_group_connect()`.
    /// Passing `nil` for `accel_closure` will dissociate `accel_label` from its
    /// current closure, if any.
    @inlinable func set<ClosureT: GLibObject.ClosureProtocol>(accelClosure: ClosureT?) {
        gtk_accel_label_set_accel_closure(accel_label_ptr, accelClosure?.closure_ptr)
    
    }

    /// Sets the widget to be monitored by this accelerator label. Passing `nil` for
    /// `accel_widget` will dissociate `accel_label` from its current widget, if any.
    @inlinable func set(accelWidget: WidgetRef? = nil) {
        gtk_accel_label_set_accel_widget(accel_label_ptr, accelWidget?.widget_ptr)
    
    }
    /// Sets the widget to be monitored by this accelerator label. Passing `nil` for
    /// `accel_widget` will dissociate `accel_label` from its current widget, if any.
    @inlinable func set<WidgetT: WidgetProtocol>(accelWidget: WidgetT?) {
        gtk_accel_label_set_accel_widget(accel_label_ptr, accelWidget?.widget_ptr)
    
    }
    /// Fetches the widget monitored by this accelerator label. See
    /// `gtk_accel_label_set_accel_widget()`.
    @inlinable var accelWidget: WidgetRef! {
        /// Fetches the widget monitored by this accelerator label. See
        /// `gtk_accel_label_set_accel_widget()`.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_accel_label_get_accel_widget(accel_label_ptr))) else { return nil }
            return rv
        }
        /// Sets the widget to be monitored by this accelerator label. Passing `nil` for
        /// `accel_widget` will dissociate `accel_label` from its current widget, if any.
        nonmutating set {
            gtk_accel_label_set_accel_widget(accel_label_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }

    /// Returns the width needed to display the accelerator `key(s)`.
    /// This is used by menus to align all of the `GtkMenuItem` widgets, and shouldn't
    /// be needed by applications.
    @inlinable var accelWidth: Int {
        /// Returns the width needed to display the accelerator `key(s)`.
        /// This is used by menus to align all of the `GtkMenuItem` widgets, and shouldn't
        /// be needed by applications.
        get {
            let rv = Int(gtk_accel_label_get_accel_width(accel_label_ptr))
            return rv
        }
    }

    @inlinable var label: GtkLabel {
        get {
            let rv = accel_label_ptr.pointee.label
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - AccelMap Class

/// The `AccelMapProtocol` protocol exposes the methods and properties of an underlying `GtkAccelMap` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AccelMap`.
/// Alternatively, use `AccelMapRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Accelerator maps are used to define runtime configurable accelerators.
/// Functions for manipulating them are are usually used by higher level
/// convenience mechanisms like `GtkUIManager` and are thus considered
/// “low-level”. You’ll want to use them if you’re manually creating menus that
/// should have user-configurable accelerators.
/// 
/// An accelerator is uniquely defined by:
/// - accelerator path
/// - accelerator key
/// - accelerator modifiers
/// 
/// The accelerator path must consist of
/// “<WINDOWTYPE>/Category1/Category2/.../Action”, where WINDOWTYPE
/// should be a unique application-specific identifier that corresponds
/// to the kind of window the accelerator is being used in, e.g.
/// “Gimp-Image”, “Abiword-Document” or “Gnumeric-Settings”.
/// The “Category1/.../Action” portion is most appropriately chosen by
/// the action the accelerator triggers, i.e. for accelerators on menu
/// items, choose the item’s menu path, e.g. “File/Save As”,
/// “Image/View/Zoom” or “Edit/Select All”. So a full valid accelerator
/// path may look like: “<Gimp-Toolbox>/File/Dialogs/Tool Options...”.
/// 
/// All accelerators are stored inside one global `GtkAccelMap` that can
/// be obtained using `gtk_accel_map_get()`. See
/// [Monitoring changes](#monitoring-changes) for additional
/// details.
/// 
/// # Manipulating accelerators
/// 
/// New accelerators can be added using `gtk_accel_map_add_entry()`.
/// To search for specific accelerator, use `gtk_accel_map_lookup_entry()`.
/// Modifications of existing accelerators should be done using
/// `gtk_accel_map_change_entry()`.
/// 
/// In order to avoid having some accelerators changed, they can be
/// locked using `gtk_accel_map_lock_path()`. Unlocking is done using
/// `gtk_accel_map_unlock_path()`.
/// 
/// # Saving and loading accelerator maps
/// 
/// Accelerator maps can be saved to and loaded from some external
/// resource. For simple saving and loading from file,
/// `gtk_accel_map_save()` and `gtk_accel_map_load()` are provided.
/// Saving and loading can also be done by providing file descriptor
/// to `gtk_accel_map_save_fd()` and `gtk_accel_map_load_fd()`.
/// 
/// # Monitoring changes
/// 
/// `GtkAccelMap` object is only useful for monitoring changes of
/// accelerators. By connecting to `GtkAccelMap::changed` signal, one
/// can monitor changes of all accelerators. It is also possible to
/// monitor only single accelerator path by using it as a detail of
/// the `GtkAccelMap::changed` signal.
public protocol AccelMapProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GtkAccelMap` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkAccelMap` instance.
    var accel_map_ptr: UnsafeMutablePointer<GtkAccelMap>! { get }

}

/// The `AccelMapRef` type acts as a lightweight Swift reference to an underlying `GtkAccelMap` instance.
/// It exposes methods that can operate on this data type through `AccelMapProtocol` conformance.
/// Use `AccelMapRef` only as an `unowned` reference to an existing `GtkAccelMap` instance.
///
/// Accelerator maps are used to define runtime configurable accelerators.
/// Functions for manipulating them are are usually used by higher level
/// convenience mechanisms like `GtkUIManager` and are thus considered
/// “low-level”. You’ll want to use them if you’re manually creating menus that
/// should have user-configurable accelerators.
/// 
/// An accelerator is uniquely defined by:
/// - accelerator path
/// - accelerator key
/// - accelerator modifiers
/// 
/// The accelerator path must consist of
/// “<WINDOWTYPE>/Category1/Category2/.../Action”, where WINDOWTYPE
/// should be a unique application-specific identifier that corresponds
/// to the kind of window the accelerator is being used in, e.g.
/// “Gimp-Image”, “Abiword-Document” or “Gnumeric-Settings”.
/// The “Category1/.../Action” portion is most appropriately chosen by
/// the action the accelerator triggers, i.e. for accelerators on menu
/// items, choose the item’s menu path, e.g. “File/Save As”,
/// “Image/View/Zoom” or “Edit/Select All”. So a full valid accelerator
/// path may look like: “<Gimp-Toolbox>/File/Dialogs/Tool Options...”.
/// 
/// All accelerators are stored inside one global `GtkAccelMap` that can
/// be obtained using `gtk_accel_map_get()`. See
/// [Monitoring changes](#monitoring-changes) for additional
/// details.
/// 
/// # Manipulating accelerators
/// 
/// New accelerators can be added using `gtk_accel_map_add_entry()`.
/// To search for specific accelerator, use `gtk_accel_map_lookup_entry()`.
/// Modifications of existing accelerators should be done using
/// `gtk_accel_map_change_entry()`.
/// 
/// In order to avoid having some accelerators changed, they can be
/// locked using `gtk_accel_map_lock_path()`. Unlocking is done using
/// `gtk_accel_map_unlock_path()`.
/// 
/// # Saving and loading accelerator maps
/// 
/// Accelerator maps can be saved to and loaded from some external
/// resource. For simple saving and loading from file,
/// `gtk_accel_map_save()` and `gtk_accel_map_load()` are provided.
/// Saving and loading can also be done by providing file descriptor
/// to `gtk_accel_map_save_fd()` and `gtk_accel_map_load_fd()`.
/// 
/// # Monitoring changes
/// 
/// `GtkAccelMap` object is only useful for monitoring changes of
/// accelerators. By connecting to `GtkAccelMap::changed` signal, one
/// can monitor changes of all accelerators. It is also possible to
/// monitor only single accelerator path by using it as a detail of
/// the `GtkAccelMap::changed` signal.
public struct AccelMapRef: AccelMapProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkAccelMap` instance.
    /// For type-safe access, use the generated, typed pointer `accel_map_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AccelMapRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkAccelMap>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkAccelMap>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkAccelMap>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkAccelMap>?) {
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

    /// Reference intialiser for a related type that implements `AccelMapProtocol`
    @inlinable init<T: AccelMapProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: AccelMapProtocol>(_ other: T) -> AccelMapRef { AccelMapRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelMapProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelMapProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelMapProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelMapProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelMapProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Gets the singleton global `GtkAccelMap` object. This object
    /// is useful only for notification of changes to the accelerator
    /// map via the `changed` signal; it isn’t a parameter to the
    /// other accelerator map functions.
    @inlinable static func accelMapGet() -> AccelMapRef! {
        guard let rv = AccelMapRef(gconstpointer: gconstpointer(gtk_accel_map_get())) else { return nil }
        return rv
    }
}

/// The `AccelMap` type acts as a reference-counted owner of an underlying `GtkAccelMap` instance.
/// It provides the methods that can operate on this data type through `AccelMapProtocol` conformance.
/// Use `AccelMap` as a strong reference or owner of a `GtkAccelMap` instance.
///
/// Accelerator maps are used to define runtime configurable accelerators.
/// Functions for manipulating them are are usually used by higher level
/// convenience mechanisms like `GtkUIManager` and are thus considered
/// “low-level”. You’ll want to use them if you’re manually creating menus that
/// should have user-configurable accelerators.
/// 
/// An accelerator is uniquely defined by:
/// - accelerator path
/// - accelerator key
/// - accelerator modifiers
/// 
/// The accelerator path must consist of
/// “<WINDOWTYPE>/Category1/Category2/.../Action”, where WINDOWTYPE
/// should be a unique application-specific identifier that corresponds
/// to the kind of window the accelerator is being used in, e.g.
/// “Gimp-Image”, “Abiword-Document” or “Gnumeric-Settings”.
/// The “Category1/.../Action” portion is most appropriately chosen by
/// the action the accelerator triggers, i.e. for accelerators on menu
/// items, choose the item’s menu path, e.g. “File/Save As”,
/// “Image/View/Zoom” or “Edit/Select All”. So a full valid accelerator
/// path may look like: “<Gimp-Toolbox>/File/Dialogs/Tool Options...”.
/// 
/// All accelerators are stored inside one global `GtkAccelMap` that can
/// be obtained using `gtk_accel_map_get()`. See
/// [Monitoring changes](#monitoring-changes) for additional
/// details.
/// 
/// # Manipulating accelerators
/// 
/// New accelerators can be added using `gtk_accel_map_add_entry()`.
/// To search for specific accelerator, use `gtk_accel_map_lookup_entry()`.
/// Modifications of existing accelerators should be done using
/// `gtk_accel_map_change_entry()`.
/// 
/// In order to avoid having some accelerators changed, they can be
/// locked using `gtk_accel_map_lock_path()`. Unlocking is done using
/// `gtk_accel_map_unlock_path()`.
/// 
/// # Saving and loading accelerator maps
/// 
/// Accelerator maps can be saved to and loaded from some external
/// resource. For simple saving and loading from file,
/// `gtk_accel_map_save()` and `gtk_accel_map_load()` are provided.
/// Saving and loading can also be done by providing file descriptor
/// to `gtk_accel_map_save_fd()` and `gtk_accel_map_load_fd()`.
/// 
/// # Monitoring changes
/// 
/// `GtkAccelMap` object is only useful for monitoring changes of
/// accelerators. By connecting to `GtkAccelMap::changed` signal, one
/// can monitor changes of all accelerators. It is also possible to
/// monitor only single accelerator path by using it as a detail of
/// the `GtkAccelMap::changed` signal.
open class AccelMap: GLibObject.Object, AccelMapProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AccelMap` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkAccelMap>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AccelMap` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkAccelMap>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AccelMap` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AccelMap` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AccelMap` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkAccelMap>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AccelMap` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkAccelMap>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkAccelMap`.
    /// i.e., ownership is transferred to the `AccelMap` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkAccelMap>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `AccelMapProtocol`
    /// Will retain `GtkAccelMap`.
    /// - Parameter other: an instance of a related type that implements `AccelMapProtocol`
    @inlinable public init<T: AccelMapProtocol>(accelMap other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelMapProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelMapProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelMapProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelMapProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelMapProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelMapProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelMapProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccelMapProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }


    /// Gets the singleton global `GtkAccelMap` object. This object
    /// is useful only for notification of changes to the accelerator
    /// map via the `changed` signal; it isn’t a parameter to the
    /// other accelerator map functions.
    @inlinable public static func accelMapGet() -> AccelMap! {
        guard let rv = AccelMap(gconstpointer: gconstpointer(gtk_accel_map_get())) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

// MARK: no AccelMap properties

// MARK: Signals of AccelMap
public extension AccelMapProtocol {
    /// Notifies of a change in the global accelerator map.
    /// The path is also used as the detail for the signal,
    /// so it is possible to connect to
    /// changed```accel_path`.
    /// - Note: Representation of signal named `changed`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter accelPath: the path of the accelerator that changed
    /// - Parameter accelKey: the key value for the new accelerator
    /// - Parameter accelMods: the modifier mask for the new accelerator
    @discardableResult
    func onChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AccelMapRef, _ accelPath: String, _ accelKey: UInt, _ accelMods: Gdk.ModifierType) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder4<AccelMapRef, String, UInt, Gdk.ModifierType, Void>
        let cCallback: @convention(c) (gpointer, UnsafeMutablePointer<gchar>?, guint, UInt32, gpointer) -> Void = { unownedSelf, arg1, arg2, arg3, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AccelMapRef(raw: unownedSelf), arg1.map({ String(cString: $0) })!, UInt(arg2), Gdk.ModifierType(arg3))
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
    
    
}

// MARK: AccelMap Class: AccelMapProtocol extension (methods and fields)
public extension AccelMapProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAccelMap` instance.
    @inlinable var accel_map_ptr: UnsafeMutablePointer<GtkAccelMap>! { return ptr?.assumingMemoryBound(to: GtkAccelMap.self) }



}



// MARK: - Accessible Class

/// The `AccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Accessible`.
/// Alternatively, use `AccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkAccessible` class is the base class for accessible
/// implementations for `GtkWidget` subclasses. It is a thin
/// wrapper around `AtkObject`, which adds facilities for associating
/// a widget with its accessible object.
/// 
/// An accessible implementation for a third-party widget should
/// derive from `GtkAccessible` and implement the suitable interfaces
/// from ATK, such as `AtkText` or `AtkSelection`. To establish
/// the connection between the widget class and its corresponding
/// acccessible implementation, override the get_accessible vfunc
/// in `GtkWidgetClass`.
public protocol AccessibleProtocol: Atk.ObjectProtocol {
        /// Untyped pointer to the underlying `GtkAccessible` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkAccessible` instance.
    var accessible_ptr: UnsafeMutablePointer<GtkAccessible>! { get }

}

/// The `AccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkAccessible` instance.
/// It exposes methods that can operate on this data type through `AccessibleProtocol` conformance.
/// Use `AccessibleRef` only as an `unowned` reference to an existing `GtkAccessible` instance.
///
/// The `GtkAccessible` class is the base class for accessible
/// implementations for `GtkWidget` subclasses. It is a thin
/// wrapper around `AtkObject`, which adds facilities for associating
/// a widget with its accessible object.
/// 
/// An accessible implementation for a third-party widget should
/// derive from `GtkAccessible` and implement the suitable interfaces
/// from ATK, such as `AtkText` or `AtkSelection`. To establish
/// the connection between the widget class and its corresponding
/// acccessible implementation, override the get_accessible vfunc
/// in `GtkWidgetClass`.
public struct AccessibleRef: AccessibleProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkAccessible>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkAccessible>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkAccessible>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkAccessible>?) {
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

    /// Reference intialiser for a related type that implements `AccessibleProtocol`
    @inlinable init<T: AccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: AccessibleProtocol>(_ other: T) -> AccessibleRef { AccessibleRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Accessible` type acts as a reference-counted owner of an underlying `GtkAccessible` instance.
/// It provides the methods that can operate on this data type through `AccessibleProtocol` conformance.
/// Use `Accessible` as a strong reference or owner of a `GtkAccessible` instance.
///
/// The `GtkAccessible` class is the base class for accessible
/// implementations for `GtkWidget` subclasses. It is a thin
/// wrapper around `AtkObject`, which adds facilities for associating
/// a widget with its accessible object.
/// 
/// An accessible implementation for a third-party widget should
/// derive from `GtkAccessible` and implement the suitable interfaces
/// from ATK, such as `AtkText` or `AtkSelection`. To establish
/// the connection between the widget class and its corresponding
/// acccessible implementation, override the get_accessible vfunc
/// in `GtkWidgetClass`.
open class Accessible: Atk.Object, AccessibleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Accessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkAccessible>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Accessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkAccessible>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Accessible` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Accessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Accessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkAccessible>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Accessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkAccessible>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkAccessible`.
    /// i.e., ownership is transferred to the `Accessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkAccessible>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `AccessibleProtocol`
    /// Will retain `GtkAccessible`.
    /// - Parameter other: an instance of a related type that implements `AccessibleProtocol`
    @inlinable public init<T: AccessibleProtocol>(accessible other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum AccessiblePropertyName: String, PropertyNameProtocol {
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

public extension AccessibleProtocol {
    /// Bind a `AccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: AccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Accessible property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: AccessiblePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Accessible property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: AccessiblePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Accessible has no signals// MARK: Accessible Class: AccessibleProtocol extension (methods and fields)
public extension AccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAccessible` instance.
    @inlinable var accessible_ptr: UnsafeMutablePointer<GtkAccessible>! { return ptr?.assumingMemoryBound(to: GtkAccessible.self) }

    /// This function specifies the callback function to be called
    /// when the widget corresponding to a GtkAccessible is destroyed.
    ///
    /// **connect_widget_destroyed is deprecated:**
    /// Use gtk_accessible_set_widget() and its vfuncs.
    @available(*, deprecated)
    @inlinable func connectWidgetDestroyed() {
        gtk_accessible_connect_widget_destroyed(accessible_ptr)
    
    }

    /// Gets the `GtkWidget` corresponding to the `GtkAccessible`.
    /// The returned widget does not have a reference added, so
    /// you do not need to unref it.
    @inlinable func getWidget() -> WidgetRef! {
        let rv = WidgetRef(gconstpointer: gconstpointer(gtk_accessible_get_widget(accessible_ptr)))
        return rv
    }

    /// Sets the `GtkWidget` corresponding to the `GtkAccessible`.
    /// 
    /// `accessible` will not hold a reference to `widget`.
    /// It is the caller’s responsibility to ensure that when `widget`
    /// is destroyed, the widget is unset by calling this function
    /// again with `widget` set to `nil`.
    @inlinable func set(widget: WidgetRef? = nil) {
        gtk_accessible_set_widget(accessible_ptr, widget?.widget_ptr)
    
    }
    /// Sets the `GtkWidget` corresponding to the `GtkAccessible`.
    /// 
    /// `accessible` will not hold a reference to `widget`.
    /// It is the caller’s responsibility to ensure that when `widget`
    /// is destroyed, the widget is unset by calling this function
    /// again with `widget` set to `nil`.
    @inlinable func set<WidgetT: WidgetProtocol>(widget: WidgetT?) {
        gtk_accessible_set_widget(accessible_ptr, widget?.widget_ptr)
    
    }
    @inlinable var widget: WidgetRef! {
        /// Gets the `GtkWidget` corresponding to the `GtkAccessible`.
        /// The returned widget does not have a reference added, so
        /// you do not need to unref it.
        get {
            let rv = WidgetRef(gconstpointer: gconstpointer(gtk_accessible_get_widget(accessible_ptr)))
            return rv
        }
        /// Sets the `GtkWidget` corresponding to the `GtkAccessible`.
        /// 
        /// `accessible` will not hold a reference to `widget`.
        /// It is the caller’s responsibility to ensure that when `widget`
        /// is destroyed, the widget is unset by calling this function
        /// again with `widget` set to `nil`.
        nonmutating set {
            gtk_accessible_set_widget(accessible_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }

    @inlinable var parent: AtkObject {
        get {
            let rv = accessible_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - Action Class

/// The `ActionProtocol` protocol exposes the methods and properties of an underlying `GtkAction` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Action`.
/// Alternatively, use `ActionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// > In GTK+ 3.10, GtkAction has been deprecated. Use `GAction`
/// > instead, and associate actions with `GtkActionable` widgets. Use
/// > `GMenuModel` for creating menus with `gtk_menu_new_from_model()`.
/// 
/// Actions represent operations that the user can be perform, along with
/// some information how it should be presented in the interface. Each action
/// provides methods to create icons, menu items and toolbar items
/// representing itself.
/// 
/// As well as the callback that is called when the action gets activated,
/// the following also gets associated with the action:
/// 
/// - a name (not translated, for path lookup)
/// 
/// - a label (translated, for display)
/// 
/// - an accelerator
/// 
/// - whether label indicates a stock id
/// 
/// - a tooltip (optional, translated)
/// 
/// - a toolbar label (optional, shorter than label)
/// 
/// 
/// The action will also have some state information:
/// 
/// - visible (shown/hidden)
/// 
/// - sensitive (enabled/disabled)
/// 
/// Apart from regular actions, there are [toggle actions](#GtkToggleAction),
/// which can be toggled between two states and
/// [radio actions](#GtkRadioAction), of which only one in a group
/// can be in the “active” state. Other actions can be implemented as `GtkAction`
/// subclasses.
/// 
/// Each action can have one or more proxy widgets. To act as an action proxy,
/// widget needs to implement `GtkActivatable` interface. Proxies mirror the state
/// of the action and should change when the action’s state changes. Properties
/// that are always mirrored by proxies are `GtkAction:sensitive` and
/// `GtkAction:visible`. `GtkAction:gicon`, `GtkAction:icon`-name, `GtkAction:label`,
/// `GtkAction:short`-label and `GtkAction:stock`-id properties are only mirorred
/// if proxy widget has `GtkActivatable:use`-action-appearance property set to
/// `true`.
/// 
/// When the proxy is activated, it should activate its action.
public protocol ActionProtocol: GLibObject.ObjectProtocol, BuildableProtocol {
        /// Untyped pointer to the underlying `GtkAction` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkAction` instance.
    var action_ptr: UnsafeMutablePointer<GtkAction>! { get }

}

/// The `ActionRef` type acts as a lightweight Swift reference to an underlying `GtkAction` instance.
/// It exposes methods that can operate on this data type through `ActionProtocol` conformance.
/// Use `ActionRef` only as an `unowned` reference to an existing `GtkAction` instance.
///
/// > In GTK+ 3.10, GtkAction has been deprecated. Use `GAction`
/// > instead, and associate actions with `GtkActionable` widgets. Use
/// > `GMenuModel` for creating menus with `gtk_menu_new_from_model()`.
/// 
/// Actions represent operations that the user can be perform, along with
/// some information how it should be presented in the interface. Each action
/// provides methods to create icons, menu items and toolbar items
/// representing itself.
/// 
/// As well as the callback that is called when the action gets activated,
/// the following also gets associated with the action:
/// 
/// - a name (not translated, for path lookup)
/// 
/// - a label (translated, for display)
/// 
/// - an accelerator
/// 
/// - whether label indicates a stock id
/// 
/// - a tooltip (optional, translated)
/// 
/// - a toolbar label (optional, shorter than label)
/// 
/// 
/// The action will also have some state information:
/// 
/// - visible (shown/hidden)
/// 
/// - sensitive (enabled/disabled)
/// 
/// Apart from regular actions, there are [toggle actions](#GtkToggleAction),
/// which can be toggled between two states and
/// [radio actions](#GtkRadioAction), of which only one in a group
/// can be in the “active” state. Other actions can be implemented as `GtkAction`
/// subclasses.
/// 
/// Each action can have one or more proxy widgets. To act as an action proxy,
/// widget needs to implement `GtkActivatable` interface. Proxies mirror the state
/// of the action and should change when the action’s state changes. Properties
/// that are always mirrored by proxies are `GtkAction:sensitive` and
/// `GtkAction:visible`. `GtkAction:gicon`, `GtkAction:icon`-name, `GtkAction:label`,
/// `GtkAction:short`-label and `GtkAction:stock`-id properties are only mirorred
/// if proxy widget has `GtkActivatable:use`-action-appearance property set to
/// `true`.
/// 
/// When the proxy is activated, it should activate its action.
public struct ActionRef: ActionProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkAction` instance.
    /// For type-safe access, use the generated, typed pointer `action_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ActionRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkAction>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkAction>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkAction>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkAction>?) {
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

    /// Reference intialiser for a related type that implements `ActionProtocol`
    @inlinable init<T: ActionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ActionProtocol>(_ other: T) -> ActionRef { ActionRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkAction` object. To add the action to a
    /// `GtkActionGroup` and set the accelerator for the action,
    /// call `gtk_action_group_add_action_with_accel()`.
    /// See the [UI Definition section](#XML-UI) for information on allowed action
    /// names.
    ///
    /// **new is deprecated:**
    /// Use #GAction instead, associating it to a widget with
    /// #GtkActionable or creating a #GtkMenu with gtk_menu_new_from_model()
    @available(*, deprecated)
    @inlinable init( name: UnsafePointer<gchar>!, label: UnsafePointer<gchar>? = nil, tooltip: UnsafePointer<gchar>? = nil, stockID: UnsafePointer<gchar>? = nil) {
        let rv = gtk_action_new(name, label, tooltip, stockID)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `Action` type acts as a reference-counted owner of an underlying `GtkAction` instance.
/// It provides the methods that can operate on this data type through `ActionProtocol` conformance.
/// Use `Action` as a strong reference or owner of a `GtkAction` instance.
///
/// > In GTK+ 3.10, GtkAction has been deprecated. Use `GAction`
/// > instead, and associate actions with `GtkActionable` widgets. Use
/// > `GMenuModel` for creating menus with `gtk_menu_new_from_model()`.
/// 
/// Actions represent operations that the user can be perform, along with
/// some information how it should be presented in the interface. Each action
/// provides methods to create icons, menu items and toolbar items
/// representing itself.
/// 
/// As well as the callback that is called when the action gets activated,
/// the following also gets associated with the action:
/// 
/// - a name (not translated, for path lookup)
/// 
/// - a label (translated, for display)
/// 
/// - an accelerator
/// 
/// - whether label indicates a stock id
/// 
/// - a tooltip (optional, translated)
/// 
/// - a toolbar label (optional, shorter than label)
/// 
/// 
/// The action will also have some state information:
/// 
/// - visible (shown/hidden)
/// 
/// - sensitive (enabled/disabled)
/// 
/// Apart from regular actions, there are [toggle actions](#GtkToggleAction),
/// which can be toggled between two states and
/// [radio actions](#GtkRadioAction), of which only one in a group
/// can be in the “active” state. Other actions can be implemented as `GtkAction`
/// subclasses.
/// 
/// Each action can have one or more proxy widgets. To act as an action proxy,
/// widget needs to implement `GtkActivatable` interface. Proxies mirror the state
/// of the action and should change when the action’s state changes. Properties
/// that are always mirrored by proxies are `GtkAction:sensitive` and
/// `GtkAction:visible`. `GtkAction:gicon`, `GtkAction:icon`-name, `GtkAction:label`,
/// `GtkAction:short`-label and `GtkAction:stock`-id properties are only mirorred
/// if proxy widget has `GtkActivatable:use`-action-appearance property set to
/// `true`.
/// 
/// When the proxy is activated, it should activate its action.
open class Action: GLibObject.Object, ActionProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Action` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkAction>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Action` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkAction>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Action` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Action` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Action` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkAction>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Action` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkAction>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkAction`.
    /// i.e., ownership is transferred to the `Action` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkAction>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ActionProtocol`
    /// Will retain `GtkAction`.
    /// - Parameter other: an instance of a related type that implements `ActionProtocol`
    @inlinable public init<T: ActionProtocol>(action other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkAction` object. To add the action to a
    /// `GtkActionGroup` and set the accelerator for the action,
    /// call `gtk_action_group_add_action_with_accel()`.
    /// See the [UI Definition section](#XML-UI) for information on allowed action
    /// names.
    ///
    /// **new is deprecated:**
    /// Use #GAction instead, associating it to a widget with
    /// #GtkActionable or creating a #GtkMenu with gtk_menu_new_from_model()
    @available(*, deprecated)
    @inlinable public init( name: UnsafePointer<gchar>!, label: UnsafePointer<gchar>? = nil, tooltip: UnsafePointer<gchar>? = nil, stockID: UnsafePointer<gchar>? = nil) {
        let rv = gtk_action_new(name, label, tooltip, stockID)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum ActionPropertyName: String, PropertyNameProtocol {
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

public extension ActionProtocol {
    /// Bind a `ActionPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ActionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Action property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ActionPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Action property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ActionPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of Action
public extension ActionProtocol {
    /// The "activate" signal is emitted when the action is activated.
    /// - Note: Representation of signal named `activate`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onActivate(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ActionRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<ActionRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ActionRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "activate", 
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
    /// - Note: Representation of signal named `notify::action-group`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyActionGroup(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ActionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ActionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ActionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::action-group", 
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
    /// - Note: Representation of signal named `notify::always-show-image`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyAlwaysShowImage(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ActionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ActionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ActionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::always-show-image", 
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
    /// - Note: Representation of signal named `notify::gicon`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyIcon(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ActionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ActionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ActionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::gicon", 
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
    /// - Note: Representation of signal named `notify::hide-if-empty`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyHideIfEmpty(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ActionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ActionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ActionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::hide-if-empty", 
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
    /// - Note: Representation of signal named `notify::icon-name`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyIconName(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ActionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ActionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ActionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::icon-name", 
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
    /// - Note: Representation of signal named `notify::is-important`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyIsImportant(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ActionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ActionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ActionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::is-important", 
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
    /// - Note: Representation of signal named `notify::label`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyLabel(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ActionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ActionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ActionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::label", 
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
    /// - Note: Representation of signal named `notify::name`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyName(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ActionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ActionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ActionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::name", 
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
    /// - Note: Representation of signal named `notify::sensitive`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifySensitive(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ActionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ActionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ActionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::sensitive", 
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
    /// - Note: Representation of signal named `notify::short-label`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyShortLabel(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ActionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ActionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ActionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::short-label", 
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
    /// - Note: Representation of signal named `notify::stock-id`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyStockID(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ActionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ActionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ActionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::stock-id", 
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
    /// - Note: Representation of signal named `notify::tooltip`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyTooltip(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ActionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ActionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ActionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::tooltip", 
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
    /// - Note: Representation of signal named `notify::visible`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyVisible(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ActionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ActionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ActionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::visible", 
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
    /// - Note: Representation of signal named `notify::visible-horizontal`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyVisibleHorizontal(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ActionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ActionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ActionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::visible-horizontal", 
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
    /// - Note: Representation of signal named `notify::visible-overflown`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyVisibleOverflown(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ActionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ActionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ActionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::visible-overflown", 
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
    /// - Note: Representation of signal named `notify::visible-vertical`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyVisibleVertical(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ActionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ActionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ActionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::visible-vertical", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: Action Class: ActionProtocol extension (methods and fields)
public extension ActionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAction` instance.
    @inlinable var action_ptr: UnsafeMutablePointer<GtkAction>! { return ptr?.assumingMemoryBound(to: GtkAction.self) }

    /// Emits the “activate” signal on the specified action, if it isn't
    /// insensitive. This gets called by the proxy widgets when they get
    /// activated.
    /// 
    /// It can also be used to manually activate an action.
    ///
    /// **activate is deprecated:**
    /// Use g_action_group_activate_action() on a #GAction instead
    @available(*, deprecated)
    @inlinable func activate() {
        gtk_action_activate(action_ptr)
    
    }

    /// Disable activation signals from the action
    /// 
    /// This is needed when updating the state of your proxy
    /// `GtkActivatable` widget could result in calling `gtk_action_activate()`,
    /// this is a convenience function to avoid recursing in those
    /// cases (updating toggle state for instance).
    ///
    /// **block_activate is deprecated:**
    /// Use g_simple_action_set_enabled() to disable the
    /// #GSimpleAction instead
    @available(*, deprecated)
    @inlinable func blockActivate() {
        gtk_action_block_activate(action_ptr)
    
    }

    /// Installs the accelerator for `action` if `action` has an
    /// accel path and group. See `gtk_action_set_accel_path()` and
    /// `gtk_action_set_accel_group()`
    /// 
    /// Since multiple proxies may independently trigger the installation
    /// of the accelerator, the `action` counts the number of times this
    /// function has been called and doesn’t remove the accelerator until
    /// `gtk_action_disconnect_accelerator()` has been called as many times.
    ///
    /// **connect_accelerator is deprecated:**
    /// Use #GAction and the accelerator group on an associated
    /// #GtkMenu instead
    @available(*, deprecated)
    @inlinable func connectAccelerator() {
        gtk_action_connect_accelerator(action_ptr)
    
    }

    /// This function is intended for use by action implementations to
    /// create icons displayed in the proxy widgets.
    ///
    /// **create_icon is deprecated:**
    /// Use g_menu_item_set_icon() to set an icon on a #GMenuItem,
    /// or gtk_container_add() to add a #GtkImage to a #GtkButton
    @available(*, deprecated)
    @inlinable func createIcon(iconSize: GtkIconSize) -> WidgetRef! {
        let rv = WidgetRef(gconstpointer: gconstpointer(gtk_action_create_icon(action_ptr, iconSize)))
        return rv
    }

    /// If `action` provides a `GtkMenu` widget as a submenu for the menu
    /// item or the toolbar item it creates, this function returns an
    /// instance of that menu.
    ///
    /// **create_menu is deprecated:**
    /// Use #GAction and #GMenuModel instead, and create a
    /// #GtkMenu with gtk_menu_new_from_model()
    @available(*, deprecated)
    @inlinable func createMenu() -> WidgetRef! {
        let rv = WidgetRef(gconstpointer: gconstpointer(gtk_action_create_menu(action_ptr)))
        return rv
    }

    /// Creates a menu item widget that proxies for the given action.
    ///
    /// **create_menu_item is deprecated:**
    /// Use g_menu_item_new() and associate it with a #GAction
    /// instead.
    @available(*, deprecated)
    @inlinable func createMenuItem() -> WidgetRef! {
        let rv = WidgetRef(gconstpointer: gconstpointer(gtk_action_create_menu_item(action_ptr)))
        return rv
    }

    /// Creates a toolbar item widget that proxies for the given action.
    ///
    /// **create_tool_item is deprecated:**
    /// Use a #GtkToolItem and associate it with a #GAction using
    /// gtk_actionable_set_action_name() instead
    @available(*, deprecated)
    @inlinable func createToolItem() -> WidgetRef! {
        let rv = WidgetRef(gconstpointer: gconstpointer(gtk_action_create_tool_item(action_ptr)))
        return rv
    }

    /// Undoes the effect of one call to `gtk_action_connect_accelerator()`.
    ///
    /// **disconnect_accelerator is deprecated:**
    /// Use #GAction and the accelerator group on an associated
    /// #GtkMenu instead
    @available(*, deprecated)
    @inlinable func disconnectAccelerator() {
        gtk_action_disconnect_accelerator(action_ptr)
    
    }

    /// Returns the accel closure for this action.
    ///
    /// **get_accel_closure is deprecated:**
    /// Use #GAction and #GtkMenu instead, which have no
    /// equivalent for getting the accel closure
    @available(*, deprecated)
    @inlinable func getAccelClosure() -> GLibObject.ClosureRef! {
        let rv = GLibObject.ClosureRef(gtk_action_get_accel_closure(action_ptr))
        return rv
    }

    /// Returns the accel path for this action.
    ///
    /// **get_accel_path is deprecated:**
    /// Use #GAction and the accelerator path on an associated
    /// #GtkMenu instead
    @available(*, deprecated)
    @inlinable func getAccelPath() -> String! {
        let rv = gtk_action_get_accel_path(action_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns whether `action`'s menu item proxies will always
    /// show their image, if available.
    ///
    /// **get_always_show_image is deprecated:**
    /// Use g_menu_item_get_attribute_value() on a #GMenuItem
    /// instead
    @available(*, deprecated)
    @inlinable func getAlwaysShowImage() -> Bool {
        let rv = ((gtk_action_get_always_show_image(action_ptr)) != 0)
        return rv
    }

    /// Gets the gicon of `action`.
    ///
    /// **get_gicon is deprecated:**
    /// Use #GAction instead, and
    /// g_menu_item_get_attribute_value() to get an icon from a #GMenuItem
    /// associated with a #GAction
    @available(*, deprecated)
    @inlinable func getIcon() -> GIO.IconRef! {
        let rv = GIO.IconRef(gtk_action_get_gicon(action_ptr))
        return rv
    }

    /// Gets the icon name of `action`.
    ///
    /// **get_icon_name is deprecated:**
    /// Use #GAction instead, and
    /// g_menu_item_get_attribute_value() to get an icon from a #GMenuItem
    /// associated with a #GAction
    @available(*, deprecated)
    @inlinable func getIconName() -> String! {
        let rv = gtk_action_get_icon_name(action_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Checks whether `action` is important or not
    ///
    /// **get_is_important is deprecated:**
    /// Use #GAction instead, and control and monitor whether
    /// labels are shown directly
    @available(*, deprecated)
    @inlinable func getIsImportant() -> Bool {
        let rv = ((gtk_action_get_is_important(action_ptr)) != 0)
        return rv
    }

    /// Gets the label text of `action`.
    ///
    /// **get_label is deprecated:**
    /// Use #GAction instead, and get a label from a menu item
    /// with g_menu_item_get_attribute_value(). For #GtkActionable widgets, use the
    /// widget-specific API to get a label
    @available(*, deprecated)
    @inlinable func getLabel() -> String! {
        let rv = gtk_action_get_label(action_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns the name of the action.
    ///
    /// **get_name is deprecated:**
    /// Use g_action_get_name() on a #GAction instead
    @available(*, deprecated)
    @inlinable func getName() -> String! {
        let rv = gtk_action_get_name(action_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns the proxy widgets for an action.
    /// See also `gtk_activatable_get_related_action()`.
    ///
    /// **get_proxies is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func getProxies() -> GLib.SListRef! {
        let rv = GLib.SListRef(gtk_action_get_proxies(action_ptr))
        return rv
    }

    /// Returns whether the action itself is sensitive. Note that this doesn’t
    /// necessarily mean effective sensitivity. See `gtk_action_is_sensitive()`
    /// for that.
    ///
    /// **get_sensitive is deprecated:**
    /// Use g_action_get_enabled() on a #GAction
    /// instead
    @available(*, deprecated)
    @inlinable func getSensitive() -> Bool {
        let rv = ((gtk_action_get_sensitive(action_ptr)) != 0)
        return rv
    }

    /// Gets the short label text of `action`.
    ///
    /// **get_short_label is deprecated:**
    /// Use #GAction instead, which has no equivalent of short
    /// labels
    @available(*, deprecated)
    @inlinable func getShortLabel() -> String! {
        let rv = gtk_action_get_short_label(action_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the stock id of `action`.
    ///
    /// **get_stock_id is deprecated:**
    /// Use #GAction instead, which has no equivalent of stock
    /// items
    @available(*, deprecated)
    @inlinable func getStockID() -> String! {
        let rv = gtk_action_get_stock_id(action_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the tooltip text of `action`.
    ///
    /// **get_tooltip is deprecated:**
    /// Use #GAction instead, and get tooltips from associated
    /// #GtkActionable widgets with gtk_widget_get_tooltip_text()
    @available(*, deprecated)
    @inlinable func getTooltip() -> String! {
        let rv = gtk_action_get_tooltip(action_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns whether the action itself is visible. Note that this doesn’t
    /// necessarily mean effective visibility. See `gtk_action_is_sensitive()`
    /// for that.
    ///
    /// **get_visible is deprecated:**
    /// Use #GAction instead, and control and monitor the state of
    /// #GtkActionable widgets directly
    @available(*, deprecated)
    @inlinable func getVisible() -> Bool {
        let rv = ((gtk_action_get_visible(action_ptr)) != 0)
        return rv
    }

    /// Checks whether `action` is visible when horizontal
    ///
    /// **get_visible_horizontal is deprecated:**
    /// Use #GAction instead, and control and monitor the
    /// visibility of associated widgets and menu items directly
    @available(*, deprecated)
    @inlinable func getVisibleHorizontal() -> Bool {
        let rv = ((gtk_action_get_visible_horizontal(action_ptr)) != 0)
        return rv
    }

    /// Checks whether `action` is visible when horizontal
    ///
    /// **get_visible_vertical is deprecated:**
    /// Use #GAction instead, and control and monitor the
    /// visibility of associated widgets and menu items directly
    @available(*, deprecated)
    @inlinable func getVisibleVertical() -> Bool {
        let rv = ((gtk_action_get_visible_vertical(action_ptr)) != 0)
        return rv
    }

    /// Sets the `GtkAccelGroup` in which the accelerator for this action
    /// will be installed.
    ///
    /// **set_accel_group is deprecated:**
    /// Use #GAction and the accelerator group on an associated
    /// #GtkMenu instead
    @available(*, deprecated)
    @inlinable func set(accelGroup: AccelGroupRef? = nil) {
        gtk_action_set_accel_group(action_ptr, accelGroup?.accel_group_ptr)
    
    }
    /// Sets the `GtkAccelGroup` in which the accelerator for this action
    /// will be installed.
    ///
    /// **set_accel_group is deprecated:**
    /// Use #GAction and the accelerator group on an associated
    /// #GtkMenu instead
    @available(*, deprecated)
    @inlinable func set<AccelGroupT: AccelGroupProtocol>(accelGroup: AccelGroupT?) {
        gtk_action_set_accel_group(action_ptr, accelGroup?.accel_group_ptr)
    
    }

    /// Sets the accel path for this action.  All proxy widgets associated
    /// with the action will have this accel path, so that their
    /// accelerators are consistent.
    /// 
    /// Note that `accel_path` string will be stored in a `GQuark`. Therefore, if you
    /// pass a static string, you can save some memory by interning it first with
    /// `g_intern_static_string()`.
    ///
    /// **set_accel_path is deprecated:**
    /// Use #GAction and the accelerator path on an associated
    /// #GtkMenu instead
    @available(*, deprecated)
    @inlinable func set(accelPath: UnsafePointer<gchar>!) {
        gtk_action_set_accel_path(action_ptr, accelPath)
    
    }

    /// Sets whether `action`'s menu item proxies will ignore the
    /// `GtkSettings:gtk`-menu-images setting and always show their image, if available.
    /// 
    /// Use this if the menu item would be useless or hard to use
    /// without their image.
    ///
    /// **set_always_show_image is deprecated:**
    /// Use g_menu_item_set_icon() on a #GMenuItem instead, if the
    /// item should have an image
    @available(*, deprecated)
    @inlinable func setAlwaysShowImage(alwaysShow: Bool) {
        gtk_action_set_always_show_image(action_ptr, gboolean((alwaysShow) ? 1 : 0))
    
    }

    /// Sets the icon of `action`.
    ///
    /// **set_gicon is deprecated:**
    /// Use #GAction instead, and g_menu_item_set_icon() to set an
    /// icon on a #GMenuItem associated with a #GAction, or gtk_container_add() to
    /// add a #GtkImage to a #GtkButton
    @available(*, deprecated)
    @inlinable func setIcon<IconT: GIO.IconProtocol>(icon: IconT) {
        gtk_action_set_gicon(action_ptr, icon.icon_ptr)
    
    }

    /// Sets the icon name on `action`
    ///
    /// **set_icon_name is deprecated:**
    /// Use #GAction instead, and g_menu_item_set_icon() to set an
    /// icon on a #GMenuItem associated with a #GAction, or gtk_container_add() to
    /// add a #GtkImage to a #GtkButton
    @available(*, deprecated)
    @inlinable func set(iconName: UnsafePointer<gchar>!) {
        gtk_action_set_icon_name(action_ptr, iconName)
    
    }

    /// Sets whether the action is important, this attribute is used
    /// primarily by toolbar items to decide whether to show a label
    /// or not.
    ///
    /// **set_is_important is deprecated:**
    /// Use #GAction instead, and control and monitor whether
    /// labels are shown directly
    @available(*, deprecated)
    @inlinable func set(isImportant: Bool) {
        gtk_action_set_is_important(action_ptr, gboolean((isImportant) ? 1 : 0))
    
    }

    /// Sets the label of `action`.
    ///
    /// **set_label is deprecated:**
    /// Use #GAction instead, and set a label on a menu item with
    /// g_menu_item_set_label(). For #GtkActionable widgets, use the widget-specific
    /// API to set a label
    @available(*, deprecated)
    @inlinable func set(label: UnsafePointer<gchar>!) {
        gtk_action_set_label(action_ptr, label)
    
    }

    /// Sets the :sensitive property of the action to `sensitive`. Note that
    /// this doesn’t necessarily mean effective sensitivity. See
    /// `gtk_action_is_sensitive()`
    /// for that.
    ///
    /// **set_sensitive is deprecated:**
    /// Use g_simple_action_set_enabled() on a #GSimpleAction
    /// instead
    @available(*, deprecated)
    @inlinable func set(sensitive: Bool) {
        gtk_action_set_sensitive(action_ptr, gboolean((sensitive) ? 1 : 0))
    
    }

    /// Sets a shorter label text on `action`.
    ///
    /// **set_short_label is deprecated:**
    /// Use #GAction instead, which has no equivalent of short
    /// labels
    @available(*, deprecated)
    @inlinable func set(shortLabel: UnsafePointer<gchar>!) {
        gtk_action_set_short_label(action_ptr, shortLabel)
    
    }

    /// Sets the stock id on `action`
    ///
    /// **set_stock_id is deprecated:**
    /// Use #GAction instead, which has no equivalent of stock
    /// items
    @available(*, deprecated)
    @inlinable func set(stockID: UnsafePointer<gchar>!) {
        gtk_action_set_stock_id(action_ptr, stockID)
    
    }

    /// Sets the tooltip text on `action`
    ///
    /// **set_tooltip is deprecated:**
    /// Use #GAction instead, and set tooltips on associated
    /// #GtkActionable widgets with gtk_widget_set_tooltip_text()
    @available(*, deprecated)
    @inlinable func set(tooltip: UnsafePointer<gchar>!) {
        gtk_action_set_tooltip(action_ptr, tooltip)
    
    }

    /// Sets the :visible property of the action to `visible`. Note that
    /// this doesn’t necessarily mean effective visibility. See
    /// `gtk_action_is_visible()`
    /// for that.
    ///
    /// **set_visible is deprecated:**
    /// Use #GAction instead, and control and monitor the state of
    /// #GtkActionable widgets directly
    @available(*, deprecated)
    @inlinable func set(visible: Bool) {
        gtk_action_set_visible(action_ptr, gboolean((visible) ? 1 : 0))
    
    }

    /// Sets whether `action` is visible when horizontal
    ///
    /// **set_visible_horizontal is deprecated:**
    /// Use #GAction instead, and control and monitor the
    /// visibility of associated widgets and menu items directly
    @available(*, deprecated)
    @inlinable func set(visibleHorizontal: Bool) {
        gtk_action_set_visible_horizontal(action_ptr, gboolean((visibleHorizontal) ? 1 : 0))
    
    }

    /// Sets whether `action` is visible when vertical
    ///
    /// **set_visible_vertical is deprecated:**
    /// Use #GAction instead, and control and monitor the
    /// visibility of associated widgets and menu items directly
    @available(*, deprecated)
    @inlinable func set(visibleVertical: Bool) {
        gtk_action_set_visible_vertical(action_ptr, gboolean((visibleVertical) ? 1 : 0))
    
    }

    /// Reenable activation signals from the action
    ///
    /// **unblock_activate is deprecated:**
    /// Use g_simple_action_set_enabled() to enable the
    /// #GSimpleAction instead
    @available(*, deprecated)
    @inlinable func unblockActivate() {
        gtk_action_unblock_activate(action_ptr)
    
    }
    /// Returns the accel closure for this action.
    ///
    /// **get_accel_closure is deprecated:**
    /// Use #GAction and #GtkMenu instead, which have no
    /// equivalent for getting the accel closure
    @inlinable var accelClosure: GLibObject.ClosureRef! {
        /// Returns the accel closure for this action.
        ///
        /// **get_accel_closure is deprecated:**
        /// Use #GAction and #GtkMenu instead, which have no
        /// equivalent for getting the accel closure
        @available(*, deprecated)
    get {
            let rv = GLibObject.ClosureRef(gtk_action_get_accel_closure(action_ptr))
            return rv
        }
    }

    /// Returns the accel path for this action.
    ///
    /// **get_accel_path is deprecated:**
    /// Use #GAction and the accelerator path on an associated
    /// #GtkMenu instead
    @inlinable var accelPath: String! {
        /// Returns the accel path for this action.
        ///
        /// **get_accel_path is deprecated:**
        /// Use #GAction and the accelerator path on an associated
        /// #GtkMenu instead
        @available(*, deprecated)
    get {
            let rv = gtk_action_get_accel_path(action_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the accel path for this action.  All proxy widgets associated
        /// with the action will have this accel path, so that their
        /// accelerators are consistent.
        /// 
        /// Note that `accel_path` string will be stored in a `GQuark`. Therefore, if you
        /// pass a static string, you can save some memory by interning it first with
        /// `g_intern_static_string()`.
        ///
        /// **set_accel_path is deprecated:**
        /// Use #GAction and the accelerator path on an associated
        /// #GtkMenu instead
        @available(*, deprecated)
    nonmutating set {
            gtk_action_set_accel_path(action_ptr, newValue)
        }
    }

    /// Returns whether `action`'s menu item proxies will always
    /// show their image, if available.
    ///
    /// **get_always_show_image is deprecated:**
    /// Use g_menu_item_get_attribute_value() on a #GMenuItem
    /// instead
    @inlinable var alwaysShowImage: Bool {
        /// Returns whether `action`'s menu item proxies will always
        /// show their image, if available.
        ///
        /// **get_always_show_image is deprecated:**
        /// Use g_menu_item_get_attribute_value() on a #GMenuItem
        /// instead
        @available(*, deprecated)
    get {
            let rv = ((gtk_action_get_always_show_image(action_ptr)) != 0)
            return rv
        }
        /// Sets whether `action`'s menu item proxies will ignore the
        /// `GtkSettings:gtk`-menu-images setting and always show their image, if available.
        /// 
        /// Use this if the menu item would be useless or hard to use
        /// without their image.
        ///
        /// **set_always_show_image is deprecated:**
        /// Use g_menu_item_set_icon() on a #GMenuItem instead, if the
        /// item should have an image
        @available(*, deprecated)
    nonmutating set {
            gtk_action_set_always_show_image(action_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

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
    @inlinable var gicon: GIO.IconRef! {
        /// Gets the gicon of `action`.
        ///
        /// **get_gicon is deprecated:**
        /// Use #GAction instead, and
        /// g_menu_item_get_attribute_value() to get an icon from a #GMenuItem
        /// associated with a #GAction
        @available(*, deprecated)
    get {
            let rv = GIO.IconRef(gtk_action_get_gicon(action_ptr))
            return rv
        }
        /// Sets the icon of `action`.
        ///
        /// **set_gicon is deprecated:**
        /// Use #GAction instead, and g_menu_item_set_icon() to set an
        /// icon on a #GMenuItem associated with a #GAction, or gtk_container_add() to
        /// add a #GtkImage to a #GtkButton
        @available(*, deprecated)
    nonmutating set {
            gtk_action_set_gicon(action_ptr, UnsafeMutablePointer<GIcon>(newValue?.icon_ptr))
        }
    }

    /// Gets the icon name of `action`.
    ///
    /// **get_icon_name is deprecated:**
    /// Use #GAction instead, and
    /// g_menu_item_get_attribute_value() to get an icon from a #GMenuItem
    /// associated with a #GAction
    @inlinable var iconName: String! {
        /// Gets the icon name of `action`.
        ///
        /// **get_icon_name is deprecated:**
        /// Use #GAction instead, and
        /// g_menu_item_get_attribute_value() to get an icon from a #GMenuItem
        /// associated with a #GAction
        @available(*, deprecated)
    get {
            let rv = gtk_action_get_icon_name(action_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the icon name on `action`
        ///
        /// **set_icon_name is deprecated:**
        /// Use #GAction instead, and g_menu_item_set_icon() to set an
        /// icon on a #GMenuItem associated with a #GAction, or gtk_container_add() to
        /// add a #GtkImage to a #GtkButton
        @available(*, deprecated)
    nonmutating set {
            gtk_action_set_icon_name(action_ptr, newValue)
        }
    }

    /// Checks whether `action` is important or not
    ///
    /// **get_is_important is deprecated:**
    /// Use #GAction instead, and control and monitor whether
    /// labels are shown directly
    @inlinable var isImportant: Bool {
        /// Checks whether `action` is important or not
        ///
        /// **get_is_important is deprecated:**
        /// Use #GAction instead, and control and monitor whether
        /// labels are shown directly
        @available(*, deprecated)
    get {
            let rv = ((gtk_action_get_is_important(action_ptr)) != 0)
            return rv
        }
        /// Sets whether the action is important, this attribute is used
        /// primarily by toolbar items to decide whether to show a label
        /// or not.
        ///
        /// **set_is_important is deprecated:**
        /// Use #GAction instead, and control and monitor whether
        /// labels are shown directly
        @available(*, deprecated)
    nonmutating set {
            gtk_action_set_is_important(action_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns whether the action is effectively sensitive.
    ///
    /// **is_sensitive is deprecated:**
    /// Use g_action_get_enabled() on a #GAction
    /// instead
    @inlinable var isSensitive: Bool {
        /// Returns whether the action is effectively sensitive.
        ///
        /// **is_sensitive is deprecated:**
        /// Use g_action_get_enabled() on a #GAction
        /// instead
        @available(*, deprecated)
    get {
            let rv = ((gtk_action_is_sensitive(action_ptr)) != 0)
            return rv
        }
    }

    /// Returns whether the action is effectively visible.
    ///
    /// **is_visible is deprecated:**
    /// Use #GAction instead, and control and monitor the state of
    /// #GtkActionable widgets directly
    @inlinable var isVisible: Bool {
        /// Returns whether the action is effectively visible.
        ///
        /// **is_visible is deprecated:**
        /// Use #GAction instead, and control and monitor the state of
        /// #GtkActionable widgets directly
        @available(*, deprecated)
    get {
            let rv = ((gtk_action_is_visible(action_ptr)) != 0)
            return rv
        }
    }

    /// The label used for menu items and buttons that activate
    /// this action. If the label is `nil`, GTK+ uses the stock
    /// label specified via the stock-id property.
    /// 
    /// This is an appearance property and thus only applies if
    /// `GtkActivatable:use`-action-appearance is `true`.
    ///
    /// **label is deprecated:**
    /// Use the "label" attribute on #GMenuItem instead
    @inlinable var label: String! {
        /// Gets the label text of `action`.
        ///
        /// **get_label is deprecated:**
        /// Use #GAction instead, and get a label from a menu item
        /// with g_menu_item_get_attribute_value(). For #GtkActionable widgets, use the
        /// widget-specific API to get a label
        @available(*, deprecated)
    get {
            let rv = gtk_action_get_label(action_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the label of `action`.
        ///
        /// **set_label is deprecated:**
        /// Use #GAction instead, and set a label on a menu item with
        /// g_menu_item_set_label(). For #GtkActionable widgets, use the widget-specific
        /// API to set a label
        @available(*, deprecated)
    nonmutating set {
            gtk_action_set_label(action_ptr, newValue)
        }
    }

    /// A unique name for the action.
    ///
    /// **name is deprecated:**
    /// Use #GAction:name instead
    @inlinable var name: String! {
        /// Returns the name of the action.
        ///
        /// **get_name is deprecated:**
        /// Use g_action_get_name() on a #GAction instead
        @available(*, deprecated)
    get {
            let rv = gtk_action_get_name(action_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Returns the proxy widgets for an action.
    /// See also `gtk_activatable_get_related_action()`.
    ///
    /// **get_proxies is deprecated:**
    /// This method is deprecated.
    @inlinable var proxies: GLib.SListRef! {
        /// Returns the proxy widgets for an action.
        /// See also `gtk_activatable_get_related_action()`.
        ///
        /// **get_proxies is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated)
    get {
            let rv = GLib.SListRef(gtk_action_get_proxies(action_ptr))
            return rv
        }
    }

    /// Whether the action is enabled.
    ///
    /// **sensitive is deprecated:**
    /// Use #GAction:enabled and #GSimpleAction:enabled
    /// instead
    @inlinable var sensitive: Bool {
        /// Returns whether the action itself is sensitive. Note that this doesn’t
        /// necessarily mean effective sensitivity. See `gtk_action_is_sensitive()`
        /// for that.
        ///
        /// **get_sensitive is deprecated:**
        /// Use g_action_get_enabled() on a #GAction
        /// instead
        @available(*, deprecated)
    get {
            let rv = ((gtk_action_get_sensitive(action_ptr)) != 0)
            return rv
        }
        /// Sets the :sensitive property of the action to `sensitive`. Note that
        /// this doesn’t necessarily mean effective sensitivity. See
        /// `gtk_action_is_sensitive()`
        /// for that.
        ///
        /// **set_sensitive is deprecated:**
        /// Use g_simple_action_set_enabled() on a #GSimpleAction
        /// instead
        @available(*, deprecated)
    nonmutating set {
            gtk_action_set_sensitive(action_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the short label text of `action`.
    ///
    /// **get_short_label is deprecated:**
    /// Use #GAction instead, which has no equivalent of short
    /// labels
    @inlinable var shortLabel: String! {
        /// Gets the short label text of `action`.
        ///
        /// **get_short_label is deprecated:**
        /// Use #GAction instead, which has no equivalent of short
        /// labels
        @available(*, deprecated)
    get {
            let rv = gtk_action_get_short_label(action_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets a shorter label text on `action`.
        ///
        /// **set_short_label is deprecated:**
        /// Use #GAction instead, which has no equivalent of short
        /// labels
        @available(*, deprecated)
    nonmutating set {
            gtk_action_set_short_label(action_ptr, newValue)
        }
    }

    /// Gets the stock id of `action`.
    ///
    /// **get_stock_id is deprecated:**
    /// Use #GAction instead, which has no equivalent of stock
    /// items
    @inlinable var stockID: String! {
        /// Gets the stock id of `action`.
        ///
        /// **get_stock_id is deprecated:**
        /// Use #GAction instead, which has no equivalent of stock
        /// items
        @available(*, deprecated)
    get {
            let rv = gtk_action_get_stock_id(action_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the stock id on `action`
        ///
        /// **set_stock_id is deprecated:**
        /// Use #GAction instead, which has no equivalent of stock
        /// items
        @available(*, deprecated)
    nonmutating set {
            gtk_action_set_stock_id(action_ptr, newValue)
        }
    }

    /// A tooltip for this action.
    ///
    /// **tooltip is deprecated:**
    /// Use gtk_widget_set_tooltip_text() instead
    @inlinable var tooltip: String! {
        /// Gets the tooltip text of `action`.
        ///
        /// **get_tooltip is deprecated:**
        /// Use #GAction instead, and get tooltips from associated
        /// #GtkActionable widgets with gtk_widget_get_tooltip_text()
        @available(*, deprecated)
    get {
            let rv = gtk_action_get_tooltip(action_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the tooltip text on `action`
        ///
        /// **set_tooltip is deprecated:**
        /// Use #GAction instead, and set tooltips on associated
        /// #GtkActionable widgets with gtk_widget_set_tooltip_text()
        @available(*, deprecated)
    nonmutating set {
            gtk_action_set_tooltip(action_ptr, newValue)
        }
    }

    /// Whether the action is visible.
    ///
    /// **visible is deprecated:**
    /// There is no corresponding replacement when using
    /// #GAction
    @inlinable var visible: Bool {
        /// Returns whether the action itself is visible. Note that this doesn’t
        /// necessarily mean effective visibility. See `gtk_action_is_sensitive()`
        /// for that.
        ///
        /// **get_visible is deprecated:**
        /// Use #GAction instead, and control and monitor the state of
        /// #GtkActionable widgets directly
        @available(*, deprecated)
    get {
            let rv = ((gtk_action_get_visible(action_ptr)) != 0)
            return rv
        }
        /// Sets the :visible property of the action to `visible`. Note that
        /// this doesn’t necessarily mean effective visibility. See
        /// `gtk_action_is_visible()`
        /// for that.
        ///
        /// **set_visible is deprecated:**
        /// Use #GAction instead, and control and monitor the state of
        /// #GtkActionable widgets directly
        @available(*, deprecated)
    nonmutating set {
            gtk_action_set_visible(action_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Checks whether `action` is visible when horizontal
    ///
    /// **get_visible_horizontal is deprecated:**
    /// Use #GAction instead, and control and monitor the
    /// visibility of associated widgets and menu items directly
    @inlinable var visibleHorizontal: Bool {
        /// Checks whether `action` is visible when horizontal
        ///
        /// **get_visible_horizontal is deprecated:**
        /// Use #GAction instead, and control and monitor the
        /// visibility of associated widgets and menu items directly
        @available(*, deprecated)
    get {
            let rv = ((gtk_action_get_visible_horizontal(action_ptr)) != 0)
            return rv
        }
        /// Sets whether `action` is visible when horizontal
        ///
        /// **set_visible_horizontal is deprecated:**
        /// Use #GAction instead, and control and monitor the
        /// visibility of associated widgets and menu items directly
        @available(*, deprecated)
    nonmutating set {
            gtk_action_set_visible_horizontal(action_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Checks whether `action` is visible when horizontal
    ///
    /// **get_visible_vertical is deprecated:**
    /// Use #GAction instead, and control and monitor the
    /// visibility of associated widgets and menu items directly
    @inlinable var visibleVertical: Bool {
        /// Checks whether `action` is visible when horizontal
        ///
        /// **get_visible_vertical is deprecated:**
        /// Use #GAction instead, and control and monitor the
        /// visibility of associated widgets and menu items directly
        @available(*, deprecated)
    get {
            let rv = ((gtk_action_get_visible_vertical(action_ptr)) != 0)
            return rv
        }
        /// Sets whether `action` is visible when vertical
        ///
        /// **set_visible_vertical is deprecated:**
        /// Use #GAction instead, and control and monitor the
        /// visibility of associated widgets and menu items directly
        @available(*, deprecated)
    nonmutating set {
            gtk_action_set_visible_vertical(action_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    @inlinable var object: GObject {
        get {
            let rv = action_ptr.pointee.object
            return rv
        }
    }

    // var privateData is unavailable because private_data is private

}



// MARK: - ActionBar Class

/// The `ActionBarProtocol` protocol exposes the methods and properties of an underlying `GtkActionBar` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ActionBar`.
/// Alternatively, use `ActionBarRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkActionBar is designed to present contextual actions. It is
/// expected to be displayed below the content and expand horizontally
/// to fill the area.
/// 
/// It allows placing children at the start or the end. In addition, it
/// contains an internal centered box which is centered with respect to
/// the full width of the box, even if the children at either side take
/// up different amounts of space.
/// 
/// # CSS nodes
/// 
/// GtkActionBar has a single CSS node with name actionbar.
public protocol ActionBarProtocol: BinProtocol {
        /// Untyped pointer to the underlying `GtkActionBar` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkActionBar` instance.
    var action_bar_ptr: UnsafeMutablePointer<GtkActionBar>! { get }

}

/// The `ActionBarRef` type acts as a lightweight Swift reference to an underlying `GtkActionBar` instance.
/// It exposes methods that can operate on this data type through `ActionBarProtocol` conformance.
/// Use `ActionBarRef` only as an `unowned` reference to an existing `GtkActionBar` instance.
///
/// GtkActionBar is designed to present contextual actions. It is
/// expected to be displayed below the content and expand horizontally
/// to fill the area.
/// 
/// It allows placing children at the start or the end. In addition, it
/// contains an internal centered box which is centered with respect to
/// the full width of the box, even if the children at either side take
/// up different amounts of space.
/// 
/// # CSS nodes
/// 
/// GtkActionBar has a single CSS node with name actionbar.
public struct ActionBarRef: ActionBarProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkActionBar` instance.
    /// For type-safe access, use the generated, typed pointer `action_bar_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ActionBarRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkActionBar>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkActionBar>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkActionBar>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkActionBar>?) {
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

    /// Reference intialiser for a related type that implements `ActionBarProtocol`
    @inlinable init<T: ActionBarProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ActionBarProtocol>(_ other: T) -> ActionBarRef { ActionBarRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionBarProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionBarProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionBarProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionBarProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionBarProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkActionBar` widget.
    @inlinable init() {
        let rv = gtk_action_bar_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `ActionBar` type acts as a reference-counted owner of an underlying `GtkActionBar` instance.
/// It provides the methods that can operate on this data type through `ActionBarProtocol` conformance.
/// Use `ActionBar` as a strong reference or owner of a `GtkActionBar` instance.
///
/// GtkActionBar is designed to present contextual actions. It is
/// expected to be displayed below the content and expand horizontally
/// to fill the area.
/// 
/// It allows placing children at the start or the end. In addition, it
/// contains an internal centered box which is centered with respect to
/// the full width of the box, even if the children at either side take
/// up different amounts of space.
/// 
/// # CSS nodes
/// 
/// GtkActionBar has a single CSS node with name actionbar.
open class ActionBar: Bin, ActionBarProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkActionBar>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkActionBar>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionBar` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkActionBar>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkActionBar>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkActionBar`.
    /// i.e., ownership is transferred to the `ActionBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkActionBar>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ActionBarProtocol`
    /// Will retain `GtkActionBar`.
    /// - Parameter other: an instance of a related type that implements `ActionBarProtocol`
    @inlinable public init<T: ActionBarProtocol>(actionBar other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionBarProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionBarProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionBarProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionBarProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionBarProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionBarProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionBarProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionBarProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkActionBar` widget.
    @inlinable public init() {
        let rv = gtk_action_bar_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum ActionBarPropertyName: String, PropertyNameProtocol {
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

public extension ActionBarProtocol {
    /// Bind a `ActionBarPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ActionBarPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a ActionBar property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ActionBarPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a ActionBar property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ActionBarPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: ActionBar has no signals// MARK: ActionBar Class: ActionBarProtocol extension (methods and fields)
public extension ActionBarProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkActionBar` instance.
    @inlinable var action_bar_ptr: UnsafeMutablePointer<GtkActionBar>! { return ptr?.assumingMemoryBound(to: GtkActionBar.self) }

    /// Retrieves the center bar widget of the bar.
    @inlinable func getCenterWidget() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_action_bar_get_center_widget(action_bar_ptr))) else { return nil }
        return rv
    }

    /// Adds `child` to `action_bar`, packed with reference to the
    /// end of the `action_bar`.
    @inlinable func packEnd<WidgetT: WidgetProtocol>(child: WidgetT) {
        gtk_action_bar_pack_end(action_bar_ptr, child.widget_ptr)
    
    }

    /// Adds `child` to `action_bar`, packed with reference to the
    /// start of the `action_bar`.
    @inlinable func packStart<WidgetT: WidgetProtocol>(child: WidgetT) {
        gtk_action_bar_pack_start(action_bar_ptr, child.widget_ptr)
    
    }

    /// Sets the center widget for the `GtkActionBar`.
    @inlinable func set(centerWidget: WidgetRef? = nil) {
        gtk_action_bar_set_center_widget(action_bar_ptr, centerWidget?.widget_ptr)
    
    }
    /// Sets the center widget for the `GtkActionBar`.
    @inlinable func set<WidgetT: WidgetProtocol>(centerWidget: WidgetT?) {
        gtk_action_bar_set_center_widget(action_bar_ptr, centerWidget?.widget_ptr)
    
    }
    /// Retrieves the center bar widget of the bar.
    @inlinable var centerWidget: WidgetRef! {
        /// Retrieves the center bar widget of the bar.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_action_bar_get_center_widget(action_bar_ptr))) else { return nil }
            return rv
        }
        /// Sets the center widget for the `GtkActionBar`.
        nonmutating set {
            gtk_action_bar_set_center_widget(action_bar_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }

    // var bin is unavailable because bin is private

}



// MARK: - ActionGroup Class

/// The `ActionGroupProtocol` protocol exposes the methods and properties of an underlying `GtkActionGroup` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ActionGroup`.
/// Alternatively, use `ActionGroupRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Actions are organised into groups. An action group is essentially a
/// map from names to `GtkAction` objects.
/// 
/// All actions that would make sense to use in a particular context
/// should be in a single group. Multiple action groups may be used for a
/// particular user interface. In fact, it is expected that most nontrivial
/// applications will make use of multiple groups. For example, in an
/// application that can edit multiple documents, one group holding global
/// actions (e.g. quit, about, new), and one group per document holding
/// actions that act on that document (eg. save, cut/copy/paste, etc). Each
/// window’s menus would be constructed from a combination of two action
/// groups.
/// 
/// ## Accelerators ## <a name="Action-Accel"></a>
/// 
/// Accelerators are handled by the GTK+ accelerator map. All actions are
/// assigned an accelerator path (which normally has the form
/// `<Actions>/group-name/action-name`) and a shortcut is associated with
/// this accelerator path. All menuitems and toolitems take on this accelerator
/// path. The GTK+ accelerator map code makes sure that the correct shortcut
/// is displayed next to the menu item.
/// 
/// # GtkActionGroup as GtkBuildable # <a name="GtkActionGroup-BUILDER-UI"></a>
/// 
/// The `GtkActionGroup` implementation of the `GtkBuildable` interface accepts
/// `GtkAction` objects as <child> elements in UI definitions.
/// 
/// Note that it is probably more common to define actions and action groups
/// in the code, since they are directly related to what the code can do.
/// 
/// The GtkActionGroup implementation of the GtkBuildable interface supports
/// a custom <accelerator> element, which has attributes named “key“ and
/// “modifiers“ and allows to specify accelerators. This is similar to the
/// <accelerator> element of `GtkWidget`, the main difference is that
/// it doesn’t allow you to specify a signal.
/// 
/// ## A `GtkDialog` UI definition fragment. ##
/// ```
/// <object class="GtkActionGroup" id="actiongroup">
///   <child>
///       <object class="GtkAction" id="About">
///           <property name="name">About</property>
///           <property name="stock_id">gtk-about</property>
///           <signal handler="about_activate" name="activate"/>
///       </object>
///       <accelerator key="F1" modifiers="GDK_CONTROL_MASK | GDK_SHIFT_MASK"/>
///   </child>
/// </object>
/// ```
/// 
public protocol ActionGroupProtocol: GLibObject.ObjectProtocol, BuildableProtocol {
        /// Untyped pointer to the underlying `GtkActionGroup` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkActionGroup` instance.
    var action_group_ptr: UnsafeMutablePointer<GtkActionGroup>! { get }

}

/// The `ActionGroupRef` type acts as a lightweight Swift reference to an underlying `GtkActionGroup` instance.
/// It exposes methods that can operate on this data type through `ActionGroupProtocol` conformance.
/// Use `ActionGroupRef` only as an `unowned` reference to an existing `GtkActionGroup` instance.
///
/// Actions are organised into groups. An action group is essentially a
/// map from names to `GtkAction` objects.
/// 
/// All actions that would make sense to use in a particular context
/// should be in a single group. Multiple action groups may be used for a
/// particular user interface. In fact, it is expected that most nontrivial
/// applications will make use of multiple groups. For example, in an
/// application that can edit multiple documents, one group holding global
/// actions (e.g. quit, about, new), and one group per document holding
/// actions that act on that document (eg. save, cut/copy/paste, etc). Each
/// window’s menus would be constructed from a combination of two action
/// groups.
/// 
/// ## Accelerators ## <a name="Action-Accel"></a>
/// 
/// Accelerators are handled by the GTK+ accelerator map. All actions are
/// assigned an accelerator path (which normally has the form
/// `<Actions>/group-name/action-name`) and a shortcut is associated with
/// this accelerator path. All menuitems and toolitems take on this accelerator
/// path. The GTK+ accelerator map code makes sure that the correct shortcut
/// is displayed next to the menu item.
/// 
/// # GtkActionGroup as GtkBuildable # <a name="GtkActionGroup-BUILDER-UI"></a>
/// 
/// The `GtkActionGroup` implementation of the `GtkBuildable` interface accepts
/// `GtkAction` objects as <child> elements in UI definitions.
/// 
/// Note that it is probably more common to define actions and action groups
/// in the code, since they are directly related to what the code can do.
/// 
/// The GtkActionGroup implementation of the GtkBuildable interface supports
/// a custom <accelerator> element, which has attributes named “key“ and
/// “modifiers“ and allows to specify accelerators. This is similar to the
/// <accelerator> element of `GtkWidget`, the main difference is that
/// it doesn’t allow you to specify a signal.
/// 
/// ## A `GtkDialog` UI definition fragment. ##
/// ```
/// <object class="GtkActionGroup" id="actiongroup">
///   <child>
///       <object class="GtkAction" id="About">
///           <property name="name">About</property>
///           <property name="stock_id">gtk-about</property>
///           <signal handler="about_activate" name="activate"/>
///       </object>
///       <accelerator key="F1" modifiers="GDK_CONTROL_MASK | GDK_SHIFT_MASK"/>
///   </child>
/// </object>
/// ```
/// 
public struct ActionGroupRef: ActionGroupProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkActionGroup` instance.
    /// For type-safe access, use the generated, typed pointer `action_group_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ActionGroupRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkActionGroup>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkActionGroup>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkActionGroup>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkActionGroup>?) {
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

    /// Reference intialiser for a related type that implements `ActionGroupProtocol`
    @inlinable init<T: ActionGroupProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ActionGroupProtocol>(_ other: T) -> ActionGroupRef { ActionGroupRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkActionGroup` object. The name of the action group
    /// is used when associating [keybindings](#Action-Accel)
    /// with the actions.
    ///
    /// **new is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable init( name: UnsafePointer<gchar>!) {
        let rv = gtk_action_group_new(name)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `ActionGroup` type acts as a reference-counted owner of an underlying `GtkActionGroup` instance.
/// It provides the methods that can operate on this data type through `ActionGroupProtocol` conformance.
/// Use `ActionGroup` as a strong reference or owner of a `GtkActionGroup` instance.
///
/// Actions are organised into groups. An action group is essentially a
/// map from names to `GtkAction` objects.
/// 
/// All actions that would make sense to use in a particular context
/// should be in a single group. Multiple action groups may be used for a
/// particular user interface. In fact, it is expected that most nontrivial
/// applications will make use of multiple groups. For example, in an
/// application that can edit multiple documents, one group holding global
/// actions (e.g. quit, about, new), and one group per document holding
/// actions that act on that document (eg. save, cut/copy/paste, etc). Each
/// window’s menus would be constructed from a combination of two action
/// groups.
/// 
/// ## Accelerators ## <a name="Action-Accel"></a>
/// 
/// Accelerators are handled by the GTK+ accelerator map. All actions are
/// assigned an accelerator path (which normally has the form
/// `<Actions>/group-name/action-name`) and a shortcut is associated with
/// this accelerator path. All menuitems and toolitems take on this accelerator
/// path. The GTK+ accelerator map code makes sure that the correct shortcut
/// is displayed next to the menu item.
/// 
/// # GtkActionGroup as GtkBuildable # <a name="GtkActionGroup-BUILDER-UI"></a>
/// 
/// The `GtkActionGroup` implementation of the `GtkBuildable` interface accepts
/// `GtkAction` objects as <child> elements in UI definitions.
/// 
/// Note that it is probably more common to define actions and action groups
/// in the code, since they are directly related to what the code can do.
/// 
/// The GtkActionGroup implementation of the GtkBuildable interface supports
/// a custom <accelerator> element, which has attributes named “key“ and
/// “modifiers“ and allows to specify accelerators. This is similar to the
/// <accelerator> element of `GtkWidget`, the main difference is that
/// it doesn’t allow you to specify a signal.
/// 
/// ## A `GtkDialog` UI definition fragment. ##
/// ```
/// <object class="GtkActionGroup" id="actiongroup">
///   <child>
///       <object class="GtkAction" id="About">
///           <property name="name">About</property>
///           <property name="stock_id">gtk-about</property>
///           <signal handler="about_activate" name="activate"/>
///       </object>
///       <accelerator key="F1" modifiers="GDK_CONTROL_MASK | GDK_SHIFT_MASK"/>
///   </child>
/// </object>
/// ```
/// 
open class ActionGroup: GLibObject.Object, ActionGroupProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkActionGroup>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkActionGroup>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionGroup` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkActionGroup>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkActionGroup>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkActionGroup`.
    /// i.e., ownership is transferred to the `ActionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkActionGroup>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ActionGroupProtocol`
    /// Will retain `GtkActionGroup`.
    /// - Parameter other: an instance of a related type that implements `ActionGroupProtocol`
    @inlinable public init<T: ActionGroupProtocol>(actionGroup other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkActionGroup` object. The name of the action group
    /// is used when associating [keybindings](#Action-Accel)
    /// with the actions.
    ///
    /// **new is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable public init( name: UnsafePointer<gchar>!) {
        let rv = gtk_action_group_new(name)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum ActionGroupPropertyName: String, PropertyNameProtocol {
    /// The accelerator group the actions of this group should use.
    ///
    /// **accel-group is deprecated:**
    /// This method is deprecated.
    case accelGroup = "accel-group"
    /// A name for the action.
    ///
    /// **name is deprecated:**
    /// This method is deprecated.
    case name = "name"
    /// Whether the action group is enabled.
    ///
    /// **sensitive is deprecated:**
    /// This method is deprecated.
    case sensitive = "sensitive"
    /// Whether the action group is visible.
    ///
    /// **visible is deprecated:**
    /// This method is deprecated.
    case visible = "visible"
}

public extension ActionGroupProtocol {
    /// Bind a `ActionGroupPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ActionGroupPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a ActionGroup property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ActionGroupPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a ActionGroup property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ActionGroupPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of ActionGroup
public extension ActionGroupProtocol {
    /// The `connect`-proxy signal is emitted after connecting a proxy to
    /// an action in the group. Note that the proxy may have been connected
    /// to a different action before.
    /// 
    /// This is intended for simple customizations for which a custom action
    /// class would be too clumsy, e.g. showing tooltips for menuitems in the
    /// statusbar.
    /// 
    /// `GtkUIManager` proxies the signal and provides global notification
    /// just before any action is connected to a proxy, which is probably more
    /// convenient to use.
    /// - Note: Representation of signal named `connect-proxy`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter action: the action
    /// - Parameter proxy: the proxy
    @discardableResult
    func onConnectProxy(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ActionGroupRef, _ action: ActionRef, _ proxy: WidgetRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<ActionGroupRef, ActionRef, WidgetRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ActionGroupRef(raw: unownedSelf), ActionRef(raw: arg1), WidgetRef(raw: arg2))
            return output
        }
        return signalConnectData(
            detailedSignal: "connect-proxy", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `disconnect`-proxy signal is emitted after disconnecting a proxy
    /// from an action in the group.
    /// 
    /// `GtkUIManager` proxies the signal and provides global notification
    /// just before any action is connected to a proxy, which is probably more
    /// convenient to use.
    /// - Note: Representation of signal named `disconnect-proxy`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter action: the action
    /// - Parameter proxy: the proxy
    @discardableResult
    func onDisconnectProxy(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ActionGroupRef, _ action: ActionRef, _ proxy: WidgetRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<ActionGroupRef, ActionRef, WidgetRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ActionGroupRef(raw: unownedSelf), ActionRef(raw: arg1), WidgetRef(raw: arg2))
            return output
        }
        return signalConnectData(
            detailedSignal: "disconnect-proxy", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `post`-activate signal is emitted just after the `action` in the
    /// `action_group` is activated
    /// 
    /// This is intended for `GtkUIManager` to proxy the signal and provide global
    /// notification just after any action is activated.
    /// - Note: Representation of signal named `post-activate`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter action: the action
    @discardableResult
    func onPostActivate(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ActionGroupRef, _ action: ActionRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ActionGroupRef, ActionRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ActionGroupRef(raw: unownedSelf), ActionRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "post-activate", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `pre`-activate signal is emitted just before the `action` in the
    /// `action_group` is activated
    /// 
    /// This is intended for `GtkUIManager` to proxy the signal and provide global
    /// notification just before any action is activated.
    /// - Note: Representation of signal named `pre-activate`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter action: the action
    @discardableResult
    func onPreActivate(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ActionGroupRef, _ action: ActionRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ActionGroupRef, ActionRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ActionGroupRef(raw: unownedSelf), ActionRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "pre-activate", 
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
    /// - Note: Representation of signal named `notify::accel-group`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyAccelGroup(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ActionGroupRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ActionGroupRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ActionGroupRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::accel-group", 
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
    /// - Note: Representation of signal named `notify::name`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyName(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ActionGroupRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ActionGroupRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ActionGroupRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::name", 
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
    /// - Note: Representation of signal named `notify::sensitive`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifySensitive(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ActionGroupRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ActionGroupRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ActionGroupRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::sensitive", 
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
    /// - Note: Representation of signal named `notify::visible`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyVisible(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ActionGroupRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ActionGroupRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ActionGroupRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::visible", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: ActionGroup Class: ActionGroupProtocol extension (methods and fields)
public extension ActionGroupProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkActionGroup` instance.
    @inlinable var action_group_ptr: UnsafeMutablePointer<GtkActionGroup>! { return ptr?.assumingMemoryBound(to: GtkActionGroup.self) }

    /// Adds an action object to the action group. Note that this function
    /// does not set up the accel path of the action, which can lead to problems
    /// if a user tries to modify the accelerator of a menuitem associated with
    /// the action. Therefore you must either set the accel path yourself with
    /// `gtk_action_set_accel_path()`, or use
    /// `gtk_action_group_add_action_with_accel (..., NULL)`.
    ///
    /// **add_action is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func add<ActionT: ActionProtocol>(action: ActionT) {
        gtk_action_group_add_action(action_group_ptr, action.action_ptr)
    
    }

    /// Adds an action object to the action group and sets up the accelerator.
    /// 
    /// If `accelerator` is `nil`, attempts to use the accelerator associated
    /// with the stock_id of the action.
    /// 
    /// Accel paths are set to `<Actions>/group-name/action-name`.
    ///
    /// **add_action_with_accel is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func addActionWithAccel<ActionT: ActionProtocol>(action: ActionT, accelerator: UnsafePointer<gchar>? = nil) {
        gtk_action_group_add_action_with_accel(action_group_ptr, action.action_ptr, accelerator)
    
    }

    /// This is a convenience function to create a number of actions and add them
    /// to the action group.
    /// 
    /// The “activate” signals of the actions are connected to the callbacks
    /// and their accel paths are set to `<Actions>/group-name/action-name`.
    ///
    /// **add_actions is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func addActions(entries: UnsafePointer<GtkActionEntry>!, nEntries: Int, userData: gpointer! = nil) {
        gtk_action_group_add_actions(action_group_ptr, entries, guint(nEntries), userData)
    
    }

    /// This variant of `gtk_action_group_add_actions()` adds a `GDestroyNotify`
    /// callback for `user_data`.
    ///
    /// **add_actions_full is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func addActionsFull(entries: UnsafePointer<GtkActionEntry>!, nEntries: Int, userData: gpointer! = nil, destroy: GDestroyNotify? = nil) {
        gtk_action_group_add_actions_full(action_group_ptr, entries, guint(nEntries), userData, destroy)
    
    }

    /// This is a convenience routine to create a group of radio actions and
    /// add them to the action group.
    /// 
    /// The “changed” signal of the first radio action is connected to the
    /// `on_change` callback and the accel paths of the actions are set to
    /// `<Actions>/group-name/action-name`.
    ///
    /// **add_radio_actions is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func addRadioActions(entries: UnsafePointer<GtkRadioActionEntry>!, nEntries: Int, value: Int, onChange: GCallback?, userData: gpointer! = nil) {
        gtk_action_group_add_radio_actions(action_group_ptr, entries, guint(nEntries), gint(value), onChange, userData)
    
    }

    /// This variant of `gtk_action_group_add_radio_actions()` adds a
    /// `GDestroyNotify` callback for `user_data`.
    ///
    /// **add_radio_actions_full is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func addRadioActionsFull(entries: UnsafePointer<GtkRadioActionEntry>!, nEntries: Int, value: Int, onChange: GCallback?, userData: gpointer! = nil, destroy: GDestroyNotify?) {
        gtk_action_group_add_radio_actions_full(action_group_ptr, entries, guint(nEntries), gint(value), onChange, userData, destroy)
    
    }

    /// This is a convenience function to create a number of toggle actions and add them
    /// to the action group.
    /// 
    /// The “activate” signals of the actions are connected to the callbacks
    /// and their accel paths are set to `<Actions>/group-name/action-name`.
    ///
    /// **add_toggle_actions is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func addToggleActions(entries: UnsafePointer<GtkToggleActionEntry>!, nEntries: Int, userData: gpointer! = nil) {
        gtk_action_group_add_toggle_actions(action_group_ptr, entries, guint(nEntries), userData)
    
    }

    /// This variant of `gtk_action_group_add_toggle_actions()` adds a
    /// `GDestroyNotify` callback for `user_data`.
    ///
    /// **add_toggle_actions_full is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func addToggleActionsFull(entries: UnsafePointer<GtkToggleActionEntry>!, nEntries: Int, userData: gpointer! = nil, destroy: GDestroyNotify? = nil) {
        gtk_action_group_add_toggle_actions_full(action_group_ptr, entries, guint(nEntries), userData, destroy)
    
    }

    /// Gets the accelerator group.
    ///
    /// **get_accel_group is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func getAccelGroup() -> AccelGroupRef! {
        let rv = AccelGroupRef(gconstpointer: gconstpointer(gtk_action_group_get_accel_group(action_group_ptr)))
        return rv
    }

    /// Looks up an action in the action group by name.
    ///
    /// **get_action is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func getAction(actionName: UnsafePointer<gchar>!) -> ActionRef! {
        let rv = ActionRef(gconstpointer: gconstpointer(gtk_action_group_get_action(action_group_ptr, actionName)))
        return rv
    }

    /// Gets the name of the action group.
    ///
    /// **get_name is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func getName() -> String! {
        let rv = gtk_action_group_get_name(action_group_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns `true` if the group is sensitive.  The constituent actions
    /// can only be logically sensitive (see `gtk_action_is_sensitive()`) if
    /// they are sensitive (see `gtk_action_get_sensitive()`) and their group
    /// is sensitive.
    ///
    /// **get_sensitive is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func getSensitive() -> Bool {
        let rv = ((gtk_action_group_get_sensitive(action_group_ptr)) != 0)
        return rv
    }

    /// Returns `true` if the group is visible.  The constituent actions
    /// can only be logically visible (see `gtk_action_is_visible()`) if
    /// they are visible (see `gtk_action_get_visible()`) and their group
    /// is visible.
    ///
    /// **get_visible is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func getVisible() -> Bool {
        let rv = ((gtk_action_group_get_visible(action_group_ptr)) != 0)
        return rv
    }

    /// Lists the actions in the action group.
    ///
    /// **list_actions is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func listActions() -> GLib.ListRef! {
        let rv = GLib.ListRef(gtk_action_group_list_actions(action_group_ptr))
        return rv
    }

    /// Removes an action object from the action group.
    ///
    /// **remove_action is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func remove<ActionT: ActionProtocol>(action: ActionT) {
        gtk_action_group_remove_action(action_group_ptr, action.action_ptr)
    
    }

    /// Sets the accelerator group to be used by every action in this group.
    ///
    /// **set_accel_group is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func set(accelGroup: AccelGroupRef? = nil) {
        gtk_action_group_set_accel_group(action_group_ptr, accelGroup?.accel_group_ptr)
    
    }
    /// Sets the accelerator group to be used by every action in this group.
    ///
    /// **set_accel_group is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func set<AccelGroupT: AccelGroupProtocol>(accelGroup: AccelGroupT?) {
        gtk_action_group_set_accel_group(action_group_ptr, accelGroup?.accel_group_ptr)
    
    }

    /// Changes the sensitivity of `action_group`
    ///
    /// **set_sensitive is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func set(sensitive: Bool) {
        gtk_action_group_set_sensitive(action_group_ptr, gboolean((sensitive) ? 1 : 0))
    
    }

    /// Sets a function to be used for translating the `label` and `tooltip` of
    /// `GtkActionEntrys` added by `gtk_action_group_add_actions()`.
    /// 
    /// If you’re using `gettext()`, it is enough to set the translation domain
    /// with `gtk_action_group_set_translation_domain()`.
    ///
    /// **set_translate_func is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func setTranslateFunc(`func`: GtkTranslateFunc?, data: gpointer! = nil, notify: GDestroyNotify?) {
        gtk_action_group_set_translate_func(action_group_ptr, `func`, data, notify)
    
    }

    /// Sets the translation domain and uses `g_dgettext()` for translating the
    /// `label` and `tooltip` of `GtkActionEntrys` added by
    /// `gtk_action_group_add_actions()`.
    /// 
    /// If you’re not using `gettext()` for localization, see
    /// `gtk_action_group_set_translate_func()`.
    ///
    /// **set_translation_domain is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func setTranslation(domain: UnsafePointer<gchar>? = nil) {
        gtk_action_group_set_translation_domain(action_group_ptr, domain)
    
    }

    /// Changes the visible of `action_group`.
    ///
    /// **set_visible is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func set(visible: Bool) {
        gtk_action_group_set_visible(action_group_ptr, gboolean((visible) ? 1 : 0))
    
    }

    /// Translates a string using the function set with
    /// `gtk_action_group_set_translate_func()`. This
    /// is mainly intended for language bindings.
    ///
    /// **translate_string is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func translate(string: UnsafePointer<gchar>!) -> String! {
        let rv = gtk_action_group_translate_string(action_group_ptr, string).map({ String(cString: $0) })
        return rv
    }
    /// Gets the accelerator group.
    ///
    /// **get_accel_group is deprecated:**
    /// This method is deprecated.
    @inlinable var accelGroup: AccelGroupRef! {
        /// Gets the accelerator group.
        ///
        /// **get_accel_group is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated)
    get {
            let rv = AccelGroupRef(gconstpointer: gconstpointer(gtk_action_group_get_accel_group(action_group_ptr)))
            return rv
        }
        /// Sets the accelerator group to be used by every action in this group.
        ///
        /// **set_accel_group is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated)
    nonmutating set {
            gtk_action_group_set_accel_group(action_group_ptr, UnsafeMutablePointer<GtkAccelGroup>(newValue?.accel_group_ptr))
        }
    }

    /// A name for the action.
    ///
    /// **name is deprecated:**
    /// This method is deprecated.
    @inlinable var name: String! {
        /// Gets the name of the action group.
        ///
        /// **get_name is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated)
    get {
            let rv = gtk_action_group_get_name(action_group_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Whether the action group is enabled.
    ///
    /// **sensitive is deprecated:**
    /// This method is deprecated.
    @inlinable var sensitive: Bool {
        /// Returns `true` if the group is sensitive.  The constituent actions
        /// can only be logically sensitive (see `gtk_action_is_sensitive()`) if
        /// they are sensitive (see `gtk_action_get_sensitive()`) and their group
        /// is sensitive.
        ///
        /// **get_sensitive is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated)
    get {
            let rv = ((gtk_action_group_get_sensitive(action_group_ptr)) != 0)
            return rv
        }
        /// Changes the sensitivity of `action_group`
        ///
        /// **set_sensitive is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated)
    nonmutating set {
            gtk_action_group_set_sensitive(action_group_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Whether the action group is visible.
    ///
    /// **visible is deprecated:**
    /// This method is deprecated.
    @inlinable var visible: Bool {
        /// Returns `true` if the group is visible.  The constituent actions
        /// can only be logically visible (see `gtk_action_is_visible()`) if
        /// they are visible (see `gtk_action_get_visible()`) and their group
        /// is visible.
        ///
        /// **get_visible is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated)
    get {
            let rv = ((gtk_action_group_get_visible(action_group_ptr)) != 0)
            return rv
        }
        /// Changes the visible of `action_group`.
        ///
        /// **set_visible is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated)
    nonmutating set {
            gtk_action_group_set_visible(action_group_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    @inlinable var parent: GObject {
        get {
            let rv = action_group_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - Adjustment Class

/// The `AdjustmentProtocol` protocol exposes the methods and properties of an underlying `GtkAdjustment` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Adjustment`.
/// Alternatively, use `AdjustmentRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkAdjustment` object represents a value which has an associated lower
/// and upper bound, together with step and page increments, and a page size.
/// It is used within several GTK+ widgets, including `GtkSpinButton`, `GtkViewport`,
/// and `GtkRange` (which is a base class for `GtkScrollbar` and `GtkScale`).
/// 
/// The `GtkAdjustment` object does not update the value itself. Instead
/// it is left up to the owner of the `GtkAdjustment` to control the value.
public protocol AdjustmentProtocol: GLibObject.InitiallyUnownedProtocol {
        /// Untyped pointer to the underlying `GtkAdjustment` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkAdjustment` instance.
    var adjustment_ptr: UnsafeMutablePointer<GtkAdjustment>! { get }

}

/// The `AdjustmentRef` type acts as a lightweight Swift reference to an underlying `GtkAdjustment` instance.
/// It exposes methods that can operate on this data type through `AdjustmentProtocol` conformance.
/// Use `AdjustmentRef` only as an `unowned` reference to an existing `GtkAdjustment` instance.
///
/// The `GtkAdjustment` object represents a value which has an associated lower
/// and upper bound, together with step and page increments, and a page size.
/// It is used within several GTK+ widgets, including `GtkSpinButton`, `GtkViewport`,
/// and `GtkRange` (which is a base class for `GtkScrollbar` and `GtkScale`).
/// 
/// The `GtkAdjustment` object does not update the value itself. Instead
/// it is left up to the owner of the `GtkAdjustment` to control the value.
public struct AdjustmentRef: AdjustmentProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkAdjustment` instance.
    /// For type-safe access, use the generated, typed pointer `adjustment_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AdjustmentRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkAdjustment>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkAdjustment>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkAdjustment>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkAdjustment>?) {
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

    /// Reference intialiser for a related type that implements `AdjustmentProtocol`
    @inlinable init<T: AdjustmentProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: AdjustmentProtocol>(_ other: T) -> AdjustmentRef { AdjustmentRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AdjustmentProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AdjustmentProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AdjustmentProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AdjustmentProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AdjustmentProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkAdjustment`.
    @inlinable init( value: Double, lower: Double, upper: Double, stepIncrement: Double, pageIncrement: Double, pageSize: Double) {
        let rv = gtk_adjustment_new(gdouble(value), gdouble(lower), gdouble(upper), gdouble(stepIncrement), gdouble(pageIncrement), gdouble(pageSize))
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `Adjustment` type acts as a reference-counted owner of an underlying `GtkAdjustment` instance.
/// It provides the methods that can operate on this data type through `AdjustmentProtocol` conformance.
/// Use `Adjustment` as a strong reference or owner of a `GtkAdjustment` instance.
///
/// The `GtkAdjustment` object represents a value which has an associated lower
/// and upper bound, together with step and page increments, and a page size.
/// It is used within several GTK+ widgets, including `GtkSpinButton`, `GtkViewport`,
/// and `GtkRange` (which is a base class for `GtkScrollbar` and `GtkScale`).
/// 
/// The `GtkAdjustment` object does not update the value itself. Instead
/// it is left up to the owner of the `GtkAdjustment` to control the value.
open class Adjustment: GLibObject.InitiallyUnowned, AdjustmentProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Adjustment` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkAdjustment>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Adjustment` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkAdjustment>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Adjustment` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Adjustment` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Adjustment` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkAdjustment>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Adjustment` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkAdjustment>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkAdjustment`.
    /// i.e., ownership is transferred to the `Adjustment` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkAdjustment>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `AdjustmentProtocol`
    /// Will retain `GtkAdjustment`.
    /// - Parameter other: an instance of a related type that implements `AdjustmentProtocol`
    @inlinable public init<T: AdjustmentProtocol>(adjustment other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AdjustmentProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AdjustmentProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AdjustmentProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AdjustmentProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AdjustmentProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AdjustmentProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AdjustmentProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AdjustmentProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkAdjustment`.
    @inlinable public init( value: Double, lower: Double, upper: Double, stepIncrement: Double, pageIncrement: Double, pageSize: Double) {
        let rv = gtk_adjustment_new(gdouble(value), gdouble(lower), gdouble(upper), gdouble(stepIncrement), gdouble(pageIncrement), gdouble(pageSize))
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum AdjustmentPropertyName: String, PropertyNameProtocol {
    /// The minimum value of the adjustment.
    case lower = "lower"
    /// The page increment of the adjustment.
    case pageIncrement = "page-increment"
    /// The page size of the adjustment.
    /// Note that the page-size is irrelevant and should be set to zero
    /// if the adjustment is used for a simple scalar value, e.g. in a
    /// `GtkSpinButton`.
    case pageSize = "page-size"
    /// The step increment of the adjustment.
    case stepIncrement = "step-increment"
    /// The maximum value of the adjustment.
    /// Note that values will be restricted by
    /// `upper - page-size` if the page-size
    /// property is nonzero.
    case upper = "upper"
    /// The value of the adjustment.
    case value = "value"
}

public extension AdjustmentProtocol {
    /// Bind a `AdjustmentPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: AdjustmentPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Adjustment property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: AdjustmentPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Adjustment property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: AdjustmentPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of Adjustment
public extension AdjustmentProtocol {
    /// Emitted when one or more of the `GtkAdjustment` properties have been
    /// changed, other than the `GtkAdjustment:value` property.
    /// - Note: Representation of signal named `changed`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AdjustmentRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<AdjustmentRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AdjustmentRef(raw: unownedSelf))
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
    
    /// Emitted when the `GtkAdjustment:value` property has been changed.
    /// - Note: Representation of signal named `value-changed`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onValueChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AdjustmentRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<AdjustmentRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AdjustmentRef(raw: unownedSelf))
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
    /// - Note: Representation of signal named `notify::lower`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyLower(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AdjustmentRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<AdjustmentRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AdjustmentRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::lower", 
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
    /// - Note: Representation of signal named `notify::page-increment`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyPageIncrement(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AdjustmentRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<AdjustmentRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AdjustmentRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::page-increment", 
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
    /// - Note: Representation of signal named `notify::page-size`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyPageSize(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AdjustmentRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<AdjustmentRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AdjustmentRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::page-size", 
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
    /// - Note: Representation of signal named `notify::step-increment`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyStepIncrement(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AdjustmentRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<AdjustmentRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AdjustmentRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::step-increment", 
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
    /// - Note: Representation of signal named `notify::upper`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyUpper(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AdjustmentRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<AdjustmentRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AdjustmentRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::upper", 
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
    /// - Note: Representation of signal named `notify::value`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyValue(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AdjustmentRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<AdjustmentRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AdjustmentRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::value", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: Adjustment Class: AdjustmentProtocol extension (methods and fields)
public extension AdjustmentProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAdjustment` instance.
    @inlinable var adjustment_ptr: UnsafeMutablePointer<GtkAdjustment>! { return ptr?.assumingMemoryBound(to: GtkAdjustment.self) }

    /// Emits a `GtkAdjustment::changed` signal from the `GtkAdjustment`.
    /// This is typically called by the owner of the `GtkAdjustment` after it has
    /// changed any of the `GtkAdjustment` properties other than the value.
    ///
    /// **changed is deprecated:**
    /// GTK+ emits #GtkAdjustment::changed itself whenever any
    ///    of the properties (other than value) change
    @available(*, deprecated)
    @inlinable func changed() {
        gtk_adjustment_changed(adjustment_ptr)
    
    }

    /// Updates the `GtkAdjustment:value` property to ensure that the range
    /// between `lower` and `upper` is in the current page (i.e. between
    /// `GtkAdjustment:value` and `GtkAdjustment:value` + `GtkAdjustment:page`-size).
    /// If the range is larger than the page size, then only the start of it will
    /// be in the current page.
    /// 
    /// A `GtkAdjustment::value`-changed signal will be emitted if the value is changed.
    @inlinable func clampPage(lower: Double, upper: Double) {
        gtk_adjustment_clamp_page(adjustment_ptr, gdouble(lower), gdouble(upper))
    
    }

    /// Sets all properties of the adjustment at once.
    /// 
    /// Use this function to avoid multiple emissions of the
    /// `GtkAdjustment::changed` signal. See `gtk_adjustment_set_lower()`
    /// for an alternative way of compressing multiple emissions of
    /// `GtkAdjustment::changed` into one.
    @inlinable func configure(value: Double, lower: Double, upper: Double, stepIncrement: Double, pageIncrement: Double, pageSize: Double) {
        gtk_adjustment_configure(adjustment_ptr, gdouble(value), gdouble(lower), gdouble(upper), gdouble(stepIncrement), gdouble(pageIncrement), gdouble(pageSize))
    
    }

    /// Retrieves the minimum value of the adjustment.
    @inlinable func getLower() -> Double {
        let rv = Double(gtk_adjustment_get_lower(adjustment_ptr))
        return rv
    }

    /// Gets the smaller of step increment and page increment.
    @inlinable func getMinimumIncrement() -> Double {
        let rv = Double(gtk_adjustment_get_minimum_increment(adjustment_ptr))
        return rv
    }

    /// Retrieves the page increment of the adjustment.
    @inlinable func getPageIncrement() -> Double {
        let rv = Double(gtk_adjustment_get_page_increment(adjustment_ptr))
        return rv
    }

    /// Retrieves the page size of the adjustment.
    @inlinable func getPageSize() -> Double {
        let rv = Double(gtk_adjustment_get_page_size(adjustment_ptr))
        return rv
    }

    /// Retrieves the step increment of the adjustment.
    @inlinable func getStepIncrement() -> Double {
        let rv = Double(gtk_adjustment_get_step_increment(adjustment_ptr))
        return rv
    }

    /// Retrieves the maximum value of the adjustment.
    @inlinable func getUpper() -> Double {
        let rv = Double(gtk_adjustment_get_upper(adjustment_ptr))
        return rv
    }

    /// Gets the current value of the adjustment.
    /// See `gtk_adjustment_set_value()`.
    @inlinable func getValue() -> Double {
        let rv = Double(gtk_adjustment_get_value(adjustment_ptr))
        return rv
    }

    /// Sets the minimum value of the adjustment.
    /// 
    /// When setting multiple adjustment properties via their individual
    /// setters, multiple `GtkAdjustment::changed` signals will be emitted.
    /// However, since the emission of the `GtkAdjustment::changed` signal
    /// is tied to the emission of the `GObject::notify` signals of the changed
    /// properties, it’s possible to compress the `GtkAdjustment::changed`
    /// signals into one by calling `g_object_freeze_notify()` and
    /// `g_object_thaw_notify()` around the calls to the individual setters.
    /// 
    /// Alternatively, using a single `g_object_set()` for all the properties
    /// to change, or using `gtk_adjustment_configure()` has the same effect
    /// of compressing `GtkAdjustment::changed` emissions.
    @inlinable func set(lower: Double) {
        gtk_adjustment_set_lower(adjustment_ptr, gdouble(lower))
    
    }

    /// Sets the page increment of the adjustment.
    /// 
    /// See `gtk_adjustment_set_lower()` about how to compress multiple
    /// emissions of the `GtkAdjustment::changed` signal when setting
    /// multiple adjustment properties.
    @inlinable func set(pageIncrement: Double) {
        gtk_adjustment_set_page_increment(adjustment_ptr, gdouble(pageIncrement))
    
    }

    /// Sets the page size of the adjustment.
    /// 
    /// See `gtk_adjustment_set_lower()` about how to compress multiple
    /// emissions of the GtkAdjustment`changed` signal when setting
    /// multiple adjustment properties.
    @inlinable func set(pageSize: Double) {
        gtk_adjustment_set_page_size(adjustment_ptr, gdouble(pageSize))
    
    }

    /// Sets the step increment of the adjustment.
    /// 
    /// See `gtk_adjustment_set_lower()` about how to compress multiple
    /// emissions of the `GtkAdjustment::changed` signal when setting
    /// multiple adjustment properties.
    @inlinable func set(stepIncrement: Double) {
        gtk_adjustment_set_step_increment(adjustment_ptr, gdouble(stepIncrement))
    
    }

    /// Sets the maximum value of the adjustment.
    /// 
    /// Note that values will be restricted by `upper - page-size`
    /// if the page-size property is nonzero.
    /// 
    /// See `gtk_adjustment_set_lower()` about how to compress multiple
    /// emissions of the `GtkAdjustment::changed` signal when setting
    /// multiple adjustment properties.
    @inlinable func set(upper: Double) {
        gtk_adjustment_set_upper(adjustment_ptr, gdouble(upper))
    
    }

    /// Sets the `GtkAdjustment` value. The value is clamped to lie between
    /// `GtkAdjustment:lower` and `GtkAdjustment:upper`.
    /// 
    /// Note that for adjustments which are used in a `GtkScrollbar`, the
    /// effective range of allowed values goes from `GtkAdjustment:lower` to
    /// `GtkAdjustment:upper` - `GtkAdjustment:page`-size.
    @inlinable func set(value: Double) {
        gtk_adjustment_set_value(adjustment_ptr, gdouble(value))
    
    }

    /// Emits a `GtkAdjustment::value`-changed signal from the `GtkAdjustment`.
    /// This is typically called by the owner of the `GtkAdjustment` after it has
    /// changed the `GtkAdjustment:value` property.
    ///
    /// **value_changed is deprecated:**
    /// GTK+ emits #GtkAdjustment::value-changed itself whenever
    ///    the value changes
    @available(*, deprecated)
    @inlinable func valueChanged() {
        gtk_adjustment_value_changed(adjustment_ptr)
    
    }
    /// The minimum value of the adjustment.
    @inlinable var lower: Double {
        /// Retrieves the minimum value of the adjustment.
        get {
            let rv = Double(gtk_adjustment_get_lower(adjustment_ptr))
            return rv
        }
        /// Sets the minimum value of the adjustment.
        /// 
        /// When setting multiple adjustment properties via their individual
        /// setters, multiple `GtkAdjustment::changed` signals will be emitted.
        /// However, since the emission of the `GtkAdjustment::changed` signal
        /// is tied to the emission of the `GObject::notify` signals of the changed
        /// properties, it’s possible to compress the `GtkAdjustment::changed`
        /// signals into one by calling `g_object_freeze_notify()` and
        /// `g_object_thaw_notify()` around the calls to the individual setters.
        /// 
        /// Alternatively, using a single `g_object_set()` for all the properties
        /// to change, or using `gtk_adjustment_configure()` has the same effect
        /// of compressing `GtkAdjustment::changed` emissions.
        nonmutating set {
            gtk_adjustment_set_lower(adjustment_ptr, gdouble(newValue))
        }
    }

    /// Gets the smaller of step increment and page increment.
    @inlinable var minimumIncrement: Double {
        /// Gets the smaller of step increment and page increment.
        get {
            let rv = Double(gtk_adjustment_get_minimum_increment(adjustment_ptr))
            return rv
        }
    }

    /// Retrieves the page increment of the adjustment.
    @inlinable var pageIncrement: Double {
        /// Retrieves the page increment of the adjustment.
        get {
            let rv = Double(gtk_adjustment_get_page_increment(adjustment_ptr))
            return rv
        }
        /// Sets the page increment of the adjustment.
        /// 
        /// See `gtk_adjustment_set_lower()` about how to compress multiple
        /// emissions of the `GtkAdjustment::changed` signal when setting
        /// multiple adjustment properties.
        nonmutating set {
            gtk_adjustment_set_page_increment(adjustment_ptr, gdouble(newValue))
        }
    }

    /// Retrieves the page size of the adjustment.
    @inlinable var pageSize: Double {
        /// Retrieves the page size of the adjustment.
        get {
            let rv = Double(gtk_adjustment_get_page_size(adjustment_ptr))
            return rv
        }
        /// Sets the page size of the adjustment.
        /// 
        /// See `gtk_adjustment_set_lower()` about how to compress multiple
        /// emissions of the GtkAdjustment`changed` signal when setting
        /// multiple adjustment properties.
        nonmutating set {
            gtk_adjustment_set_page_size(adjustment_ptr, gdouble(newValue))
        }
    }

    /// Retrieves the step increment of the adjustment.
    @inlinable var stepIncrement: Double {
        /// Retrieves the step increment of the adjustment.
        get {
            let rv = Double(gtk_adjustment_get_step_increment(adjustment_ptr))
            return rv
        }
        /// Sets the step increment of the adjustment.
        /// 
        /// See `gtk_adjustment_set_lower()` about how to compress multiple
        /// emissions of the `GtkAdjustment::changed` signal when setting
        /// multiple adjustment properties.
        nonmutating set {
            gtk_adjustment_set_step_increment(adjustment_ptr, gdouble(newValue))
        }
    }

    /// The maximum value of the adjustment.
    /// Note that values will be restricted by
    /// `upper - page-size` if the page-size
    /// property is nonzero.
    @inlinable var upper: Double {
        /// Retrieves the maximum value of the adjustment.
        get {
            let rv = Double(gtk_adjustment_get_upper(adjustment_ptr))
            return rv
        }
        /// Sets the maximum value of the adjustment.
        /// 
        /// Note that values will be restricted by `upper - page-size`
        /// if the page-size property is nonzero.
        /// 
        /// See `gtk_adjustment_set_lower()` about how to compress multiple
        /// emissions of the `GtkAdjustment::changed` signal when setting
        /// multiple adjustment properties.
        nonmutating set {
            gtk_adjustment_set_upper(adjustment_ptr, gdouble(newValue))
        }
    }

    /// The value of the adjustment.
    @inlinable var value: Double {
        /// Gets the current value of the adjustment.
        /// See `gtk_adjustment_set_value()`.
        get {
            let rv = Double(gtk_adjustment_get_value(adjustment_ptr))
            return rv
        }
        /// Sets the `GtkAdjustment` value. The value is clamped to lie between
        /// `GtkAdjustment:lower` and `GtkAdjustment:upper`.
        /// 
        /// Note that for adjustments which are used in a `GtkScrollbar`, the
        /// effective range of allowed values goes from `GtkAdjustment:lower` to
        /// `GtkAdjustment:upper` - `GtkAdjustment:page`-size.
        nonmutating set {
            gtk_adjustment_set_value(adjustment_ptr, gdouble(newValue))
        }
    }

    @inlinable var parentInstance: GInitiallyUnowned {
        get {
            let rv = adjustment_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - Alignment Class

/// The `AlignmentProtocol` protocol exposes the methods and properties of an underlying `GtkAlignment` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Alignment`.
/// Alternatively, use `AlignmentRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkAlignment` widget controls the alignment and size of its child widget.
/// It has four settings: xscale, yscale, xalign, and yalign.
/// 
/// The scale settings are used to specify how much the child widget should
/// expand to fill the space allocated to the `GtkAlignment`.
/// The values can range from 0 (meaning the child doesn’t expand at all) to
/// 1 (meaning the child expands to fill all of the available space).
/// 
/// The align settings are used to place the child widget within the available
/// area. The values range from 0 (top or left) to 1 (bottom or right).
/// Of course, if the scale settings are both set to 1, the alignment settings
/// have no effect.
/// 
/// GtkAlignment has been deprecated in 3.14 and should not be used in
/// newly-written code. The desired effect can be achieved by using the
/// `GtkWidget:halign`, `GtkWidget:valign` and `GtkWidget:margin` properties on the
/// child widget.
public protocol AlignmentProtocol: BinProtocol {
        /// Untyped pointer to the underlying `GtkAlignment` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkAlignment` instance.
    var alignment_ptr: UnsafeMutablePointer<GtkAlignment>! { get }

}

/// The `AlignmentRef` type acts as a lightweight Swift reference to an underlying `GtkAlignment` instance.
/// It exposes methods that can operate on this data type through `AlignmentProtocol` conformance.
/// Use `AlignmentRef` only as an `unowned` reference to an existing `GtkAlignment` instance.
///
/// The `GtkAlignment` widget controls the alignment and size of its child widget.
/// It has four settings: xscale, yscale, xalign, and yalign.
/// 
/// The scale settings are used to specify how much the child widget should
/// expand to fill the space allocated to the `GtkAlignment`.
/// The values can range from 0 (meaning the child doesn’t expand at all) to
/// 1 (meaning the child expands to fill all of the available space).
/// 
/// The align settings are used to place the child widget within the available
/// area. The values range from 0 (top or left) to 1 (bottom or right).
/// Of course, if the scale settings are both set to 1, the alignment settings
/// have no effect.
/// 
/// GtkAlignment has been deprecated in 3.14 and should not be used in
/// newly-written code. The desired effect can be achieved by using the
/// `GtkWidget:halign`, `GtkWidget:valign` and `GtkWidget:margin` properties on the
/// child widget.
public struct AlignmentRef: AlignmentProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkAlignment` instance.
    /// For type-safe access, use the generated, typed pointer `alignment_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AlignmentRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkAlignment>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkAlignment>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkAlignment>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkAlignment>?) {
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

    /// Reference intialiser for a related type that implements `AlignmentProtocol`
    @inlinable init<T: AlignmentProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: AlignmentProtocol>(_ other: T) -> AlignmentRef { AlignmentRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AlignmentProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AlignmentProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AlignmentProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AlignmentProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AlignmentProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkAlignment`.
    ///
    /// **new is deprecated:**
    /// Use #GtkWidget alignment and margin properties
    @available(*, deprecated)
    @inlinable init( xalign: Double, yalign: Double, xscale: Double, yscale: Double) {
        let rv = gtk_alignment_new(gfloat(xalign), gfloat(yalign), gfloat(xscale), gfloat(yscale))
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `Alignment` type acts as a reference-counted owner of an underlying `GtkAlignment` instance.
/// It provides the methods that can operate on this data type through `AlignmentProtocol` conformance.
/// Use `Alignment` as a strong reference or owner of a `GtkAlignment` instance.
///
/// The `GtkAlignment` widget controls the alignment and size of its child widget.
/// It has four settings: xscale, yscale, xalign, and yalign.
/// 
/// The scale settings are used to specify how much the child widget should
/// expand to fill the space allocated to the `GtkAlignment`.
/// The values can range from 0 (meaning the child doesn’t expand at all) to
/// 1 (meaning the child expands to fill all of the available space).
/// 
/// The align settings are used to place the child widget within the available
/// area. The values range from 0 (top or left) to 1 (bottom or right).
/// Of course, if the scale settings are both set to 1, the alignment settings
/// have no effect.
/// 
/// GtkAlignment has been deprecated in 3.14 and should not be used in
/// newly-written code. The desired effect can be achieved by using the
/// `GtkWidget:halign`, `GtkWidget:valign` and `GtkWidget:margin` properties on the
/// child widget.
open class Alignment: Bin, AlignmentProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Alignment` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkAlignment>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Alignment` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkAlignment>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Alignment` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Alignment` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Alignment` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkAlignment>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Alignment` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkAlignment>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkAlignment`.
    /// i.e., ownership is transferred to the `Alignment` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkAlignment>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `AlignmentProtocol`
    /// Will retain `GtkAlignment`.
    /// - Parameter other: an instance of a related type that implements `AlignmentProtocol`
    @inlinable public init<T: AlignmentProtocol>(alignment other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AlignmentProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AlignmentProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AlignmentProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AlignmentProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AlignmentProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AlignmentProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AlignmentProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AlignmentProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkAlignment`.
    ///
    /// **new is deprecated:**
    /// Use #GtkWidget alignment and margin properties
    @available(*, deprecated)
    @inlinable public init( xalign: Double, yalign: Double, xscale: Double, yscale: Double) {
        let rv = gtk_alignment_new(gfloat(xalign), gfloat(yalign), gfloat(xscale), gfloat(yscale))
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum AlignmentPropertyName: String, PropertyNameProtocol {
    case appPaintable = "app-paintable"
    case borderWidth = "border-width"
    /// The padding to insert at the bottom of the widget.
    ///
    /// **bottom-padding is deprecated:**
    /// Use gtk_widget_set_margin_bottom() instead
    case bottomPadding = "bottom-padding"
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
    /// The padding to insert at the left of the widget.
    ///
    /// **left-padding is deprecated:**
    /// Use gtk_widget_set_margin_start() instead
    case leftPadding = "left-padding"
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
    /// The padding to insert at the right of the widget.
    ///
    /// **right-padding is deprecated:**
    /// Use gtk_widget_set_margin_end() instead
    case rightPadding = "right-padding"
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
    /// The padding to insert at the top of the widget.
    ///
    /// **top-padding is deprecated:**
    /// Use gtk_widget_set_margin_top() instead
    case topPadding = "top-padding"
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
    /// Horizontal position of child in available space. A value of 0.0
    /// will flush the child left (or right, in RTL locales); a value
    /// of 1.0 will flush the child right (or left, in RTL locales).
    ///
    /// **xalign is deprecated:**
    /// Use gtk_widget_set_halign() on the child instead
    case xalign = "xalign"
    /// If available horizontal space is bigger than needed, how much
    /// of it to use for the child. A value of 0.0 means none; a value
    /// of 1.0 means all.
    ///
    /// **xscale is deprecated:**
    /// Use gtk_widget_set_hexpand() on the child instead
    case xscale = "xscale"
    /// Vertical position of child in available space. A value of 0.0
    /// will flush the child to the top; a value of 1.0 will flush the
    /// child to the bottom.
    ///
    /// **yalign is deprecated:**
    /// Use gtk_widget_set_valign() on the child instead
    case yalign = "yalign"
    /// If available vertical space is bigger than needed, how much
    /// of it to use for the child. A value of 0.0 means none; a value
    /// of 1.0 means all.
    ///
    /// **yscale is deprecated:**
    /// Use gtk_widget_set_vexpand() on the child instead
    case yscale = "yscale"
}

public extension AlignmentProtocol {
    /// Bind a `AlignmentPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: AlignmentPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Alignment property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: AlignmentPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Alignment property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: AlignmentPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Alignment has no signals// MARK: Alignment Class: AlignmentProtocol extension (methods and fields)
public extension AlignmentProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAlignment` instance.
    @inlinable var alignment_ptr: UnsafeMutablePointer<GtkAlignment>! { return ptr?.assumingMemoryBound(to: GtkAlignment.self) }

    /// Gets the padding on the different sides of the widget.
    /// See gtk_alignment_set_padding ().
    ///
    /// **get_padding is deprecated:**
    /// Use #GtkWidget alignment and margin properties
    @available(*, deprecated)
    @inlinable func getPadding(paddingTop: UnsafeMutablePointer<guint>! = nil, paddingBottom: UnsafeMutablePointer<guint>! = nil, paddingLeft: UnsafeMutablePointer<guint>! = nil, paddingRight: UnsafeMutablePointer<guint>! = nil) {
        gtk_alignment_get_padding(alignment_ptr, paddingTop, paddingBottom, paddingLeft, paddingRight)
    
    }

    /// Sets the `GtkAlignment` values.
    ///
    /// **set is deprecated:**
    /// Use #GtkWidget alignment and margin properties
    @available(*, deprecated)
    @inlinable func set(xalign: Double, yalign: Double, xscale: Double, yscale: Double) {
        gtk_alignment_set(alignment_ptr, gfloat(xalign), gfloat(yalign), gfloat(xscale), gfloat(yscale))
    
    }

    /// Sets the padding on the different sides of the widget.
    /// The padding adds blank space to the sides of the widget. For instance,
    /// this can be used to indent the child widget towards the right by adding
    /// padding on the left.
    ///
    /// **set_padding is deprecated:**
    /// Use #GtkWidget alignment and margin properties
    @available(*, deprecated)
    @inlinable func setPadding(paddingTop: Int, paddingBottom: Int, paddingLeft: Int, paddingRight: Int) {
        gtk_alignment_set_padding(alignment_ptr, guint(paddingTop), guint(paddingBottom), guint(paddingLeft), guint(paddingRight))
    
    }

    @inlinable var bin: GtkBin {
        get {
            let rv = alignment_ptr.pointee.bin
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - AppChooserButton Class

/// The `AppChooserButtonProtocol` protocol exposes the methods and properties of an underlying `GtkAppChooserButton` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AppChooserButton`.
/// Alternatively, use `AppChooserButtonRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkAppChooserButton` is a widget that lets the user select
/// an application. It implements the `GtkAppChooser` interface.
/// 
/// Initially, a `GtkAppChooserButton` selects the first application
/// in its list, which will either be the most-recently used application
/// or, if `GtkAppChooserButton:show`-default-item is `true`, the
/// default application.
/// 
/// The list of applications shown in a `GtkAppChooserButton` includes
/// the recommended applications for the given content type. When
/// `GtkAppChooserButton:show`-default-item is set, the default application
/// is also included. To let the user chooser other applications,
/// you can set the `GtkAppChooserButton:show`-dialog-item property,
/// which allows to open a full `GtkAppChooserDialog`.
/// 
/// It is possible to add custom items to the list, using
/// `gtk_app_chooser_button_append_custom_item()`. These items cause
/// the `GtkAppChooserButton::custom`-item-activated signal to be
/// emitted when they are selected.
/// 
/// To track changes in the selected application, use the
/// `GtkComboBox::changed` signal.
public protocol AppChooserButtonProtocol: ComboBoxProtocol, AppChooserProtocol {
        /// Untyped pointer to the underlying `GtkAppChooserButton` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkAppChooserButton` instance.
    var app_chooser_button_ptr: UnsafeMutablePointer<GtkAppChooserButton>! { get }

}

/// The `AppChooserButtonRef` type acts as a lightweight Swift reference to an underlying `GtkAppChooserButton` instance.
/// It exposes methods that can operate on this data type through `AppChooserButtonProtocol` conformance.
/// Use `AppChooserButtonRef` only as an `unowned` reference to an existing `GtkAppChooserButton` instance.
///
/// The `GtkAppChooserButton` is a widget that lets the user select
/// an application. It implements the `GtkAppChooser` interface.
/// 
/// Initially, a `GtkAppChooserButton` selects the first application
/// in its list, which will either be the most-recently used application
/// or, if `GtkAppChooserButton:show`-default-item is `true`, the
/// default application.
/// 
/// The list of applications shown in a `GtkAppChooserButton` includes
/// the recommended applications for the given content type. When
/// `GtkAppChooserButton:show`-default-item is set, the default application
/// is also included. To let the user chooser other applications,
/// you can set the `GtkAppChooserButton:show`-dialog-item property,
/// which allows to open a full `GtkAppChooserDialog`.
/// 
/// It is possible to add custom items to the list, using
/// `gtk_app_chooser_button_append_custom_item()`. These items cause
/// the `GtkAppChooserButton::custom`-item-activated signal to be
/// emitted when they are selected.
/// 
/// To track changes in the selected application, use the
/// `GtkComboBox::changed` signal.
public struct AppChooserButtonRef: AppChooserButtonProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkAppChooserButton` instance.
    /// For type-safe access, use the generated, typed pointer `app_chooser_button_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AppChooserButtonRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkAppChooserButton>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkAppChooserButton>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkAppChooserButton>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkAppChooserButton>?) {
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

    /// Reference intialiser for a related type that implements `AppChooserButtonProtocol`
    @inlinable init<T: AppChooserButtonProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: AppChooserButtonProtocol>(_ other: T) -> AppChooserButtonRef { AppChooserButtonRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserButtonProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserButtonProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserButtonProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserButtonProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserButtonProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkAppChooserButton` for applications
    /// that can handle content of the given type.
    @inlinable init( contentType: UnsafePointer<gchar>!) {
        let rv = gtk_app_chooser_button_new(contentType)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `AppChooserButton` type acts as a reference-counted owner of an underlying `GtkAppChooserButton` instance.
/// It provides the methods that can operate on this data type through `AppChooserButtonProtocol` conformance.
/// Use `AppChooserButton` as a strong reference or owner of a `GtkAppChooserButton` instance.
///
/// The `GtkAppChooserButton` is a widget that lets the user select
/// an application. It implements the `GtkAppChooser` interface.
/// 
/// Initially, a `GtkAppChooserButton` selects the first application
/// in its list, which will either be the most-recently used application
/// or, if `GtkAppChooserButton:show`-default-item is `true`, the
/// default application.
/// 
/// The list of applications shown in a `GtkAppChooserButton` includes
/// the recommended applications for the given content type. When
/// `GtkAppChooserButton:show`-default-item is set, the default application
/// is also included. To let the user chooser other applications,
/// you can set the `GtkAppChooserButton:show`-dialog-item property,
/// which allows to open a full `GtkAppChooserDialog`.
/// 
/// It is possible to add custom items to the list, using
/// `gtk_app_chooser_button_append_custom_item()`. These items cause
/// the `GtkAppChooserButton::custom`-item-activated signal to be
/// emitted when they are selected.
/// 
/// To track changes in the selected application, use the
/// `GtkComboBox::changed` signal.
open class AppChooserButton: ComboBox, AppChooserButtonProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppChooserButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkAppChooserButton>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppChooserButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkAppChooserButton>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppChooserButton` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppChooserButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppChooserButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkAppChooserButton>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppChooserButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkAppChooserButton>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkAppChooserButton`.
    /// i.e., ownership is transferred to the `AppChooserButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkAppChooserButton>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `AppChooserButtonProtocol`
    /// Will retain `GtkAppChooserButton`.
    /// - Parameter other: an instance of a related type that implements `AppChooserButtonProtocol`
    @inlinable public init<T: AppChooserButtonProtocol>(appChooserButton other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserButtonProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserButtonProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserButtonProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserButtonProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserButtonProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserButtonProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserButtonProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserButtonProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkAppChooserButton` for applications
    /// that can handle content of the given type.
    @inlinable public init( contentType: UnsafePointer<gchar>!) {
        let rv = gtk_app_chooser_button_new(contentType)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum AppChooserButtonPropertyName: String, PropertyNameProtocol {
    /// The item which is currently active. If the model is a non-flat treemodel,
    /// and the active item is not an immediate child of the root of the tree,
    /// this property has the value
    /// `gtk_tree_path_get_indices (path)[0]`,
    /// where `path` is the `GtkTreePath` of the active item.
    case active = "active"
    /// The value of the ID column of the active row.
    case activeID = "active-id"
    /// The add-tearoffs property controls whether generated menus
    /// have tearoff menu items.
    /// 
    /// Note that this only affects menu style combo boxes.
    ///
    /// **add-tearoffs is deprecated:**
    /// This method is deprecated.
    case addTearoffs = "add-tearoffs"
    case appPaintable = "app-paintable"
    case borderWidth = "border-width"
    /// Whether the dropdown button is sensitive when
    /// the model is empty.
    case buttonSensitivity = "button-sensitivity"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    /// The `GtkCellArea` used to layout cell renderers for this combo box.
    /// 
    /// If no area is specified when creating the combo box with `gtk_combo_box_new_with_area()`
    /// a horizontally oriented `GtkCellAreaBox` will be used.
    case cellArea = "cell-area"
    case child = "child"
    /// If this is set to a non-negative value, it must be the index of a column
    /// of type `G_TYPE_INT` in the model. The value in that column for each item
    /// will determine how many columns that item will span in the popup.
    /// Therefore, values in this column must be greater than zero, and the sum of
    /// an item’s column position + span should not exceed `GtkComboBox:wrap`-width.
    case columnSpanColumn = "column-span-column"
    case compositeChild = "composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
    /// The column in the combo box's model to associate with strings from the entry
    /// if the combo was created with `GtkComboBox:has`-entry = `true`.
    case entryTextColumn = "entry-text-column"
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
    /// Whether the combo box has an entry.
    case hasEntry = "has-entry"
    case hasFocus = "has-focus"
    /// The has-frame property controls whether a frame
    /// is drawn around the entry.
    case hasFrame = "has-frame"
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
    /// The text to show at the top of the dialog that can be
    /// opened from the button. The string may contain Pango markup.
    case heading = "heading"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    /// The column in the combo box's model that provides string
    /// IDs for the values in the model, if != -1.
    case idColumn = "id-column"
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
    /// The model from which the combo box takes the values shown
    /// in the list.
    case model = "model"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    /// Whether the popup's width should be a fixed width matching the
    /// allocated width of the combo box.
    case popupFixedWidth = "popup-fixed-width"
    /// Whether the combo boxes dropdown is popped up.
    /// Note that this property is mainly useful, because
    /// it allows you to connect to notify`popup`-shown.
    case popupShown = "popup-shown"
    case receivesDefault = "receives-default"
    case resizeMode = "resize-mode"
    /// If this is set to a non-negative value, it must be the index of a column
    /// of type `G_TYPE_INT` in the model. The value in that column for each item
    /// will determine how many rows that item will span in the popup. Therefore,
    /// values in this column must be greater than zero.
    case rowSpanColumn = "row-span-column"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// The `GtkAppChooserButton:show`-default-item property determines
    /// whether the dropdown menu should show the default application
    /// on top for the provided content type.
    case showDefaultItem = "show-default-item"
    /// The `GtkAppChooserButton:show`-dialog-item property determines
    /// whether the dropdown menu should show an item that triggers
    /// a `GtkAppChooserDialog` when clicked.
    case showDialogItem = "show-dialog-item"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    /// A title that may be displayed by the window manager
    /// when the popup is torn-off.
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
    /// If wrap-width is set to a positive value, items in the popup will be laid
    /// out along multiple columns, starting a new row on reaching the wrap width.
    case wrapWidth = "wrap-width"
}

public extension AppChooserButtonProtocol {
    /// Bind a `AppChooserButtonPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: AppChooserButtonPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a AppChooserButton property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: AppChooserButtonPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a AppChooserButton property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: AppChooserButtonPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of AppChooserButton
public extension AppChooserButtonProtocol {
    /// Emitted when a custom item, previously added with
    /// `gtk_app_chooser_button_append_custom_item()`, is activated from the
    /// dropdown menu.
    /// - Note: Representation of signal named `custom-item-activated`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter itemName: the name of the activated item
    @discardableResult
    func onCustomItemActivated(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AppChooserButtonRef, _ itemName: String) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<AppChooserButtonRef, String, Void>
        let cCallback: @convention(c) (gpointer, UnsafeMutablePointer<gchar>?, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AppChooserButtonRef(raw: unownedSelf), arg1.map({ String(cString: $0) })!)
            return output
        }
        return signalConnectData(
            detailedSignal: "custom-item-activated", 
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
    /// - Note: Representation of signal named `notify::heading`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyHeading(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AppChooserButtonRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<AppChooserButtonRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AppChooserButtonRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::heading", 
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
    /// - Note: Representation of signal named `notify::show-default-item`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyShowDefaultItem(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AppChooserButtonRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<AppChooserButtonRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AppChooserButtonRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::show-default-item", 
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
    /// - Note: Representation of signal named `notify::show-dialog-item`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyShowDialogItem(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AppChooserButtonRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<AppChooserButtonRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AppChooserButtonRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::show-dialog-item", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: AppChooserButton Class: AppChooserButtonProtocol extension (methods and fields)
public extension AppChooserButtonProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAppChooserButton` instance.
    @inlinable var app_chooser_button_ptr: UnsafeMutablePointer<GtkAppChooserButton>! { return ptr?.assumingMemoryBound(to: GtkAppChooserButton.self) }

    /// Appends a custom item to the list of applications that is shown
    /// in the popup; the item name must be unique per-widget.
    /// Clients can use the provided name as a detail for the
    /// `GtkAppChooserButton::custom`-item-activated signal, to add a
    /// callback for the activation of a particular custom item in the list.
    /// See also `gtk_app_chooser_button_append_separator()`.
    @inlinable func appendCustomItem<IconT: GIO.IconProtocol>(name: UnsafePointer<gchar>!, label: UnsafePointer<gchar>!, icon: IconT) {
        gtk_app_chooser_button_append_custom_item(app_chooser_button_ptr, name, label, icon.icon_ptr)
    
    }

    /// Appends a separator to the list of applications that is shown
    /// in the popup.
    @inlinable func appendSeparator() {
        gtk_app_chooser_button_append_separator(app_chooser_button_ptr)
    
    }

    /// Returns the text to display at the top of the dialog.
    @inlinable func getHeading() -> String! {
        let rv = gtk_app_chooser_button_get_heading(app_chooser_button_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns the current value of the `GtkAppChooserButton:show`-default-item
    /// property.
    @inlinable func getShowDefaultItem() -> Bool {
        let rv = ((gtk_app_chooser_button_get_show_default_item(app_chooser_button_ptr)) != 0)
        return rv
    }

    /// Returns the current value of the `GtkAppChooserButton:show`-dialog-item
    /// property.
    @inlinable func getShowDialogItem() -> Bool {
        let rv = ((gtk_app_chooser_button_get_show_dialog_item(app_chooser_button_ptr)) != 0)
        return rv
    }

    /// Selects a custom item previously added with
    /// `gtk_app_chooser_button_append_custom_item()`.
    /// 
    /// Use `gtk_app_chooser_refresh()` to bring the selection
    /// to its initial state.
    @inlinable func setActiveCustomItem(name: UnsafePointer<gchar>!) {
        gtk_app_chooser_button_set_active_custom_item(app_chooser_button_ptr, name)
    
    }

    /// Sets the text to display at the top of the dialog.
    /// If the heading is not set, the dialog displays a default text.
    @inlinable func set(heading: UnsafePointer<gchar>!) {
        gtk_app_chooser_button_set_heading(app_chooser_button_ptr, heading)
    
    }

    /// Sets whether the dropdown menu of this button should show the
    /// default application for the given content type at top.
    @inlinable func setShowDefaultItem(setting: Bool) {
        gtk_app_chooser_button_set_show_default_item(app_chooser_button_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Sets whether the dropdown menu of this button should show an
    /// entry to trigger a `GtkAppChooserDialog`.
    @inlinable func setShowDialogItem(setting: Bool) {
        gtk_app_chooser_button_set_show_dialog_item(app_chooser_button_ptr, gboolean((setting) ? 1 : 0))
    
    }
    /// The text to show at the top of the dialog that can be
    /// opened from the button. The string may contain Pango markup.
    @inlinable var heading: String! {
        /// Returns the text to display at the top of the dialog.
        get {
            let rv = gtk_app_chooser_button_get_heading(app_chooser_button_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the text to display at the top of the dialog.
        /// If the heading is not set, the dialog displays a default text.
        nonmutating set {
            gtk_app_chooser_button_set_heading(app_chooser_button_ptr, newValue)
        }
    }

    /// Returns the current value of the `GtkAppChooserButton:show`-default-item
    /// property.
    @inlinable var showDefaultItem: Bool {
        /// Returns the current value of the `GtkAppChooserButton:show`-default-item
        /// property.
        get {
            let rv = ((gtk_app_chooser_button_get_show_default_item(app_chooser_button_ptr)) != 0)
            return rv
        }
        /// Sets whether the dropdown menu of this button should show the
        /// default application for the given content type at top.
        nonmutating set {
            gtk_app_chooser_button_set_show_default_item(app_chooser_button_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns the current value of the `GtkAppChooserButton:show`-dialog-item
    /// property.
    @inlinable var showDialogItem: Bool {
        /// Returns the current value of the `GtkAppChooserButton:show`-dialog-item
        /// property.
        get {
            let rv = ((gtk_app_chooser_button_get_show_dialog_item(app_chooser_button_ptr)) != 0)
            return rv
        }
        /// Sets whether the dropdown menu of this button should show an
        /// entry to trigger a `GtkAppChooserDialog`.
        nonmutating set {
            gtk_app_chooser_button_set_show_dialog_item(app_chooser_button_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    @inlinable var parent: GtkComboBox {
        get {
            let rv = app_chooser_button_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - AppChooserDialog Class

/// The `AppChooserDialogProtocol` protocol exposes the methods and properties of an underlying `GtkAppChooserDialog` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AppChooserDialog`.
/// Alternatively, use `AppChooserDialogRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkAppChooserDialog` shows a `GtkAppChooserWidget` inside a `GtkDialog`.
/// 
/// Note that `GtkAppChooserDialog` does not have any interesting methods
/// of its own. Instead, you should get the embedded `GtkAppChooserWidget`
/// using `gtk_app_chooser_dialog_get_widget()` and call its methods if
/// the generic `GtkAppChooser` interface is not sufficient for your needs.
/// 
/// To set the heading that is shown above the `GtkAppChooserWidget`,
/// use `gtk_app_chooser_dialog_set_heading()`.
public protocol AppChooserDialogProtocol: DialogProtocol, AppChooserProtocol {
        /// Untyped pointer to the underlying `GtkAppChooserDialog` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkAppChooserDialog` instance.
    var app_chooser_dialog_ptr: UnsafeMutablePointer<GtkAppChooserDialog>! { get }

}

/// The `AppChooserDialogRef` type acts as a lightweight Swift reference to an underlying `GtkAppChooserDialog` instance.
/// It exposes methods that can operate on this data type through `AppChooserDialogProtocol` conformance.
/// Use `AppChooserDialogRef` only as an `unowned` reference to an existing `GtkAppChooserDialog` instance.
///
/// `GtkAppChooserDialog` shows a `GtkAppChooserWidget` inside a `GtkDialog`.
/// 
/// Note that `GtkAppChooserDialog` does not have any interesting methods
/// of its own. Instead, you should get the embedded `GtkAppChooserWidget`
/// using `gtk_app_chooser_dialog_get_widget()` and call its methods if
/// the generic `GtkAppChooser` interface is not sufficient for your needs.
/// 
/// To set the heading that is shown above the `GtkAppChooserWidget`,
/// use `gtk_app_chooser_dialog_set_heading()`.
public struct AppChooserDialogRef: AppChooserDialogProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkAppChooserDialog` instance.
    /// For type-safe access, use the generated, typed pointer `app_chooser_dialog_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AppChooserDialogRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkAppChooserDialog>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkAppChooserDialog>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkAppChooserDialog>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkAppChooserDialog>?) {
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

    /// Reference intialiser for a related type that implements `AppChooserDialogProtocol`
    @inlinable init<T: AppChooserDialogProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: AppChooserDialogProtocol>(_ other: T) -> AppChooserDialogRef { AppChooserDialogRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserDialogProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserDialogProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserDialogProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserDialogProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserDialogProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkAppChooserDialog` for the provided `GFile`,
    /// to allow the user to select an application for it.
    @inlinable init<FileT: GIO.FileProtocol, WindowT: WindowProtocol>( parent: WindowT?, flags: DialogFlags, file: FileT) {
        let rv = gtk_app_chooser_dialog_new(parent?.window_ptr, flags.value, file.file_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkAppChooserDialog` for the provided content type,
    /// to allow the user to select an application for it.
    @inlinable init<WindowT: WindowProtocol>(contentType parent: WindowT?, flags: DialogFlags, contentType: UnsafePointer<gchar>!) {
        let rv = gtk_app_chooser_dialog_new_for_content_type(parent?.window_ptr, flags.value, contentType)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GtkAppChooserDialog` for the provided content type,
    /// to allow the user to select an application for it.
    @inlinable static func newFor<WindowT: WindowProtocol>(contentType parent: WindowT?, flags: DialogFlags, contentType: UnsafePointer<gchar>!) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_app_chooser_dialog_new_for_content_type(parent?.window_ptr, flags.value, contentType))) else { return nil }
        return rv
    }
}

/// The `AppChooserDialog` type acts as a reference-counted owner of an underlying `GtkAppChooserDialog` instance.
/// It provides the methods that can operate on this data type through `AppChooserDialogProtocol` conformance.
/// Use `AppChooserDialog` as a strong reference or owner of a `GtkAppChooserDialog` instance.
///
/// `GtkAppChooserDialog` shows a `GtkAppChooserWidget` inside a `GtkDialog`.
/// 
/// Note that `GtkAppChooserDialog` does not have any interesting methods
/// of its own. Instead, you should get the embedded `GtkAppChooserWidget`
/// using `gtk_app_chooser_dialog_get_widget()` and call its methods if
/// the generic `GtkAppChooser` interface is not sufficient for your needs.
/// 
/// To set the heading that is shown above the `GtkAppChooserWidget`,
/// use `gtk_app_chooser_dialog_set_heading()`.
open class AppChooserDialog: Dialog, AppChooserDialogProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppChooserDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkAppChooserDialog>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppChooserDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkAppChooserDialog>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppChooserDialog` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppChooserDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppChooserDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkAppChooserDialog>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppChooserDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkAppChooserDialog>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkAppChooserDialog`.
    /// i.e., ownership is transferred to the `AppChooserDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkAppChooserDialog>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `AppChooserDialogProtocol`
    /// Will retain `GtkAppChooserDialog`.
    /// - Parameter other: an instance of a related type that implements `AppChooserDialogProtocol`
    @inlinable public init<T: AppChooserDialogProtocol>(appChooserDialog other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserDialogProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserDialogProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserDialogProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserDialogProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserDialogProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserDialogProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserDialogProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserDialogProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkAppChooserDialog` for the provided `GFile`,
    /// to allow the user to select an application for it.
    @inlinable public init<FileT: GIO.FileProtocol, WindowT: WindowProtocol>( parent: WindowT?, flags: DialogFlags, file: FileT) {
        let rv = gtk_app_chooser_dialog_new(parent?.window_ptr, flags.value, file.file_ptr)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkAppChooserDialog` for the provided content type,
    /// to allow the user to select an application for it.
    @inlinable public init<WindowT: WindowProtocol>(contentType parent: WindowT?, flags: DialogFlags, contentType: UnsafePointer<gchar>!) {
        let rv = gtk_app_chooser_dialog_new_for_content_type(parent?.window_ptr, flags.value, contentType)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkAppChooserDialog` for the provided content type,
    /// to allow the user to select an application for it.
    @inlinable public static func newFor<WindowT: WindowProtocol>(contentType parent: WindowT?, flags: DialogFlags, contentType: UnsafePointer<gchar>!) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_app_chooser_dialog_new_for_content_type(parent?.window_ptr, flags.value, contentType))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum AppChooserDialogPropertyName: String, PropertyNameProtocol {
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
    /// The GFile used by the `GtkAppChooserDialog`.
    /// The dialog's `GtkAppChooserWidget` content type will be guessed from the
    /// file, if present.
    case gfile = "gfile"
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
    /// The text to show at the top of the dialog.
    /// The string may contain Pango markup.
    case heading = "heading"
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

public extension AppChooserDialogProtocol {
    /// Bind a `AppChooserDialogPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: AppChooserDialogPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a AppChooserDialog property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: AppChooserDialogPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a AppChooserDialog property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: AppChooserDialogPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: AppChooserDialog has no signals// MARK: AppChooserDialog Class: AppChooserDialogProtocol extension (methods and fields)
public extension AppChooserDialogProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAppChooserDialog` instance.
    @inlinable var app_chooser_dialog_ptr: UnsafeMutablePointer<GtkAppChooserDialog>! { return ptr?.assumingMemoryBound(to: GtkAppChooserDialog.self) }

    /// Returns the text to display at the top of the dialog.
    @inlinable func getHeading() -> String! {
        let rv = gtk_app_chooser_dialog_get_heading(app_chooser_dialog_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns the `GtkAppChooserWidget` of this dialog.
    @inlinable func getWidget() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_app_chooser_dialog_get_widget(app_chooser_dialog_ptr))) else { return nil }
        return rv
    }

    /// Sets the text to display at the top of the dialog.
    /// If the heading is not set, the dialog displays a default text.
    @inlinable func set(heading: UnsafePointer<gchar>!) {
        gtk_app_chooser_dialog_set_heading(app_chooser_dialog_ptr, heading)
    
    }
    /// The text to show at the top of the dialog.
    /// The string may contain Pango markup.
    @inlinable var heading: String! {
        /// Returns the text to display at the top of the dialog.
        get {
            let rv = gtk_app_chooser_dialog_get_heading(app_chooser_dialog_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the text to display at the top of the dialog.
        /// If the heading is not set, the dialog displays a default text.
        nonmutating set {
            gtk_app_chooser_dialog_set_heading(app_chooser_dialog_ptr, newValue)
        }
    }

    /// Returns the `GtkAppChooserWidget` of this dialog.
    @inlinable var widget: WidgetRef! {
        /// Returns the `GtkAppChooserWidget` of this dialog.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_app_chooser_dialog_get_widget(app_chooser_dialog_ptr))) else { return nil }
            return rv
        }
    }

    @inlinable var parent: GtkDialog {
        get {
            let rv = app_chooser_dialog_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - AppChooserWidget Class

/// The `AppChooserWidgetProtocol` protocol exposes the methods and properties of an underlying `GtkAppChooserWidget` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AppChooserWidget`.
/// Alternatively, use `AppChooserWidgetRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkAppChooserWidget` is a widget for selecting applications.
/// It is the main building block for `GtkAppChooserDialog`. Most
/// applications only need to use the latter; but you can use
/// this widget as part of a larger widget if you have special needs.
/// 
/// `GtkAppChooserWidget` offers detailed control over what applications
/// are shown, using the
/// `GtkAppChooserWidget:show`-default,
/// `GtkAppChooserWidget:show`-recommended,
/// `GtkAppChooserWidget:show`-fallback,
/// `GtkAppChooserWidget:show`-other and
/// `GtkAppChooserWidget:show`-all
/// properties. See the `GtkAppChooser` documentation for more information
/// about these groups of applications.
/// 
/// To keep track of the selected application, use the
/// `GtkAppChooserWidget::application`-selected and `GtkAppChooserWidget::application`-activated signals.
/// 
/// # CSS nodes
/// 
/// GtkAppChooserWidget has a single CSS node with name appchooser.
public protocol AppChooserWidgetProtocol: BoxProtocol, AppChooserProtocol {
        /// Untyped pointer to the underlying `GtkAppChooserWidget` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkAppChooserWidget` instance.
    var app_chooser_widget_ptr: UnsafeMutablePointer<GtkAppChooserWidget>! { get }

}

/// The `AppChooserWidgetRef` type acts as a lightweight Swift reference to an underlying `GtkAppChooserWidget` instance.
/// It exposes methods that can operate on this data type through `AppChooserWidgetProtocol` conformance.
/// Use `AppChooserWidgetRef` only as an `unowned` reference to an existing `GtkAppChooserWidget` instance.
///
/// `GtkAppChooserWidget` is a widget for selecting applications.
/// It is the main building block for `GtkAppChooserDialog`. Most
/// applications only need to use the latter; but you can use
/// this widget as part of a larger widget if you have special needs.
/// 
/// `GtkAppChooserWidget` offers detailed control over what applications
/// are shown, using the
/// `GtkAppChooserWidget:show`-default,
/// `GtkAppChooserWidget:show`-recommended,
/// `GtkAppChooserWidget:show`-fallback,
/// `GtkAppChooserWidget:show`-other and
/// `GtkAppChooserWidget:show`-all
/// properties. See the `GtkAppChooser` documentation for more information
/// about these groups of applications.
/// 
/// To keep track of the selected application, use the
/// `GtkAppChooserWidget::application`-selected and `GtkAppChooserWidget::application`-activated signals.
/// 
/// # CSS nodes
/// 
/// GtkAppChooserWidget has a single CSS node with name appchooser.
public struct AppChooserWidgetRef: AppChooserWidgetProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkAppChooserWidget` instance.
    /// For type-safe access, use the generated, typed pointer `app_chooser_widget_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AppChooserWidgetRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkAppChooserWidget>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkAppChooserWidget>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkAppChooserWidget>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkAppChooserWidget>?) {
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

    /// Reference intialiser for a related type that implements `AppChooserWidgetProtocol`
    @inlinable init<T: AppChooserWidgetProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: AppChooserWidgetProtocol>(_ other: T) -> AppChooserWidgetRef { AppChooserWidgetRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserWidgetProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserWidgetProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserWidgetProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserWidgetProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserWidgetProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkAppChooserWidget` for applications
    /// that can handle content of the given type.
    @inlinable init( contentType: UnsafePointer<gchar>!) {
        let rv = gtk_app_chooser_widget_new(contentType)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `AppChooserWidget` type acts as a reference-counted owner of an underlying `GtkAppChooserWidget` instance.
/// It provides the methods that can operate on this data type through `AppChooserWidgetProtocol` conformance.
/// Use `AppChooserWidget` as a strong reference or owner of a `GtkAppChooserWidget` instance.
///
/// `GtkAppChooserWidget` is a widget for selecting applications.
/// It is the main building block for `GtkAppChooserDialog`. Most
/// applications only need to use the latter; but you can use
/// this widget as part of a larger widget if you have special needs.
/// 
/// `GtkAppChooserWidget` offers detailed control over what applications
/// are shown, using the
/// `GtkAppChooserWidget:show`-default,
/// `GtkAppChooserWidget:show`-recommended,
/// `GtkAppChooserWidget:show`-fallback,
/// `GtkAppChooserWidget:show`-other and
/// `GtkAppChooserWidget:show`-all
/// properties. See the `GtkAppChooser` documentation for more information
/// about these groups of applications.
/// 
/// To keep track of the selected application, use the
/// `GtkAppChooserWidget::application`-selected and `GtkAppChooserWidget::application`-activated signals.
/// 
/// # CSS nodes
/// 
/// GtkAppChooserWidget has a single CSS node with name appchooser.
open class AppChooserWidget: Box, AppChooserWidgetProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppChooserWidget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkAppChooserWidget>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppChooserWidget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkAppChooserWidget>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppChooserWidget` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppChooserWidget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppChooserWidget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkAppChooserWidget>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppChooserWidget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkAppChooserWidget>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkAppChooserWidget`.
    /// i.e., ownership is transferred to the `AppChooserWidget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkAppChooserWidget>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `AppChooserWidgetProtocol`
    /// Will retain `GtkAppChooserWidget`.
    /// - Parameter other: an instance of a related type that implements `AppChooserWidgetProtocol`
    @inlinable public init<T: AppChooserWidgetProtocol>(appChooserWidget other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserWidgetProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserWidgetProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserWidgetProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserWidgetProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserWidgetProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserWidgetProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserWidgetProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserWidgetProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkAppChooserWidget` for applications
    /// that can handle content of the given type.
    @inlinable public init( contentType: UnsafePointer<gchar>!) {
        let rv = gtk_app_chooser_widget_new(contentType)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum AppChooserWidgetPropertyName: String, PropertyNameProtocol {
    case appPaintable = "app-paintable"
    case baselinePosition = "baseline-position"
    case borderWidth = "border-width"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case child = "child"
    case compositeChild = "composite-child"
    /// The `GtkAppChooserWidget:default`-text property determines the text
    /// that appears in the widget when there are no applications for the
    /// given content type.
    /// See also `gtk_app_chooser_widget_set_default_text()`.
    case defaultText = "default-text"
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
    /// If the `GtkAppChooserWidget:show`-all property is `true`, the app
    /// chooser presents all applications in a single list, without
    /// subsections for default, recommended or related applications.
    case showAll = "show-all"
    /// The `show`-default property determines whether the app chooser
    /// should show the default handler for the content type in a
    /// separate section. If `false`, the default handler is listed
    /// among the recommended applications.
    case showDefault = "show-default"
    /// The `GtkAppChooserWidget:show`-fallback property determines whether
    /// the app chooser should show a section for fallback applications.
    /// If `false`, the fallback applications are listed among the other
    /// applications.
    case showFallback = "show-fallback"
    /// The `GtkAppChooserWidget:show`-other property determines whether
    /// the app chooser should show a section for other applications.
    case showOther = "show-other"
    /// The `GtkAppChooserWidget:show`-recommended property determines
    /// whether the app chooser should show a section for recommended
    /// applications. If `false`, the recommended applications are listed
    /// among the other applications.
    case showRecommended = "show-recommended"
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

public extension AppChooserWidgetProtocol {
    /// Bind a `AppChooserWidgetPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: AppChooserWidgetPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a AppChooserWidget property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: AppChooserWidgetPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a AppChooserWidget property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: AppChooserWidgetPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of AppChooserWidget
public extension AppChooserWidgetProtocol {
    /// Emitted when an application item is activated from the widget's list.
    /// 
    /// This usually happens when the user double clicks an item, or an item
    /// is selected and the user presses one of the keys Space, Shift+Space,
    /// Return or Enter.
    /// - Note: Representation of signal named `application-activated`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter application: the activated `GAppInfo`
    @discardableResult
    func onApplicationActivated(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AppChooserWidgetRef, _ application: GIO.AppInfoRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<AppChooserWidgetRef, GIO.AppInfoRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AppChooserWidgetRef(raw: unownedSelf), GIO.AppInfoRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "application-activated", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// Emitted when an application item is selected from the widget's list.
    /// - Note: Representation of signal named `application-selected`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter application: the selected `GAppInfo`
    @discardableResult
    func onApplicationSelected(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AppChooserWidgetRef, _ application: GIO.AppInfoRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<AppChooserWidgetRef, GIO.AppInfoRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AppChooserWidgetRef(raw: unownedSelf), GIO.AppInfoRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "application-selected", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// Emitted when a context menu is about to popup over an application item.
    /// Clients can insert menu items into the provided `GtkMenu` object in the
    /// callback of this signal; the context menu will be shown over the item
    /// if at least one item has been added to the menu.
    /// - Note: Representation of signal named `populate-popup`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter menu: the `GtkMenu` to populate
    /// - Parameter application: the current `GAppInfo`
    @discardableResult
    func onPopulatePopup(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AppChooserWidgetRef, _ menu: MenuRef, _ application: GIO.AppInfoRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<AppChooserWidgetRef, MenuRef, GIO.AppInfoRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AppChooserWidgetRef(raw: unownedSelf), MenuRef(raw: arg1), GIO.AppInfoRef(raw: arg2))
            return output
        }
        return signalConnectData(
            detailedSignal: "populate-popup", 
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
    /// - Note: Representation of signal named `notify::default-text`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyDefaultText(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AppChooserWidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<AppChooserWidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AppChooserWidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::default-text", 
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
    /// - Note: Representation of signal named `notify::show-all`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyShowAll(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AppChooserWidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<AppChooserWidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AppChooserWidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::show-all", 
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
    /// - Note: Representation of signal named `notify::show-default`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyShowDefault(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AppChooserWidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<AppChooserWidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AppChooserWidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::show-default", 
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
    /// - Note: Representation of signal named `notify::show-fallback`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyShowFallback(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AppChooserWidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<AppChooserWidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AppChooserWidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::show-fallback", 
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
    /// - Note: Representation of signal named `notify::show-other`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyShowOther(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AppChooserWidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<AppChooserWidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AppChooserWidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::show-other", 
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
    /// - Note: Representation of signal named `notify::show-recommended`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyShowRecommended(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AppChooserWidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<AppChooserWidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AppChooserWidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::show-recommended", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: AppChooserWidget Class: AppChooserWidgetProtocol extension (methods and fields)
public extension AppChooserWidgetProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAppChooserWidget` instance.
    @inlinable var app_chooser_widget_ptr: UnsafeMutablePointer<GtkAppChooserWidget>! { return ptr?.assumingMemoryBound(to: GtkAppChooserWidget.self) }

    /// Returns the text that is shown if there are not applications
    /// that can handle the content type.
    @inlinable func getDefaultText() -> String! {
        let rv = gtk_app_chooser_widget_get_default_text(app_chooser_widget_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns the current value of the `GtkAppChooserWidget:show`-all
    /// property.
    @inlinable func getShowAll() -> Bool {
        let rv = ((gtk_app_chooser_widget_get_show_all(app_chooser_widget_ptr)) != 0)
        return rv
    }

    /// Returns the current value of the `GtkAppChooserWidget:show`-default
    /// property.
    @inlinable func getShowDefault() -> Bool {
        let rv = ((gtk_app_chooser_widget_get_show_default(app_chooser_widget_ptr)) != 0)
        return rv
    }

    /// Returns the current value of the `GtkAppChooserWidget:show`-fallback
    /// property.
    @inlinable func getShowFallback() -> Bool {
        let rv = ((gtk_app_chooser_widget_get_show_fallback(app_chooser_widget_ptr)) != 0)
        return rv
    }

    /// Returns the current value of the `GtkAppChooserWidget:show`-other
    /// property.
    @inlinable func getShowOther() -> Bool {
        let rv = ((gtk_app_chooser_widget_get_show_other(app_chooser_widget_ptr)) != 0)
        return rv
    }

    /// Returns the current value of the `GtkAppChooserWidget:show`-recommended
    /// property.
    @inlinable func getShowRecommended() -> Bool {
        let rv = ((gtk_app_chooser_widget_get_show_recommended(app_chooser_widget_ptr)) != 0)
        return rv
    }

    /// Sets the text that is shown if there are not applications
    /// that can handle the content type.
    @inlinable func setDefault(text: UnsafePointer<gchar>!) {
        gtk_app_chooser_widget_set_default_text(app_chooser_widget_ptr, text)
    
    }

    /// Sets whether the app chooser should show all applications
    /// in a flat list.
    @inlinable func setShowAll(setting: Bool) {
        gtk_app_chooser_widget_set_show_all(app_chooser_widget_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Sets whether the app chooser should show the default handler
    /// for the content type in a separate section.
    @inlinable func setShowDefault(setting: Bool) {
        gtk_app_chooser_widget_set_show_default(app_chooser_widget_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Sets whether the app chooser should show related applications
    /// for the content type in a separate section.
    @inlinable func setShowFallback(setting: Bool) {
        gtk_app_chooser_widget_set_show_fallback(app_chooser_widget_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Sets whether the app chooser should show applications
    /// which are unrelated to the content type.
    @inlinable func setShowOther(setting: Bool) {
        gtk_app_chooser_widget_set_show_other(app_chooser_widget_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Sets whether the app chooser should show recommended applications
    /// for the content type in a separate section.
    @inlinable func setShowRecommended(setting: Bool) {
        gtk_app_chooser_widget_set_show_recommended(app_chooser_widget_ptr, gboolean((setting) ? 1 : 0))
    
    }
    /// Returns the text that is shown if there are not applications
    /// that can handle the content type.
    @inlinable var defaultText: String! {
        /// Returns the text that is shown if there are not applications
        /// that can handle the content type.
        get {
            let rv = gtk_app_chooser_widget_get_default_text(app_chooser_widget_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the text that is shown if there are not applications
        /// that can handle the content type.
        nonmutating set {
            gtk_app_chooser_widget_set_default_text(app_chooser_widget_ptr, newValue)
        }
    }

    /// Returns the current value of the `GtkAppChooserWidget:show`-all
    /// property.
    @inlinable var showAll: Bool {
        /// Returns the current value of the `GtkAppChooserWidget:show`-all
        /// property.
        get {
            let rv = ((gtk_app_chooser_widget_get_show_all(app_chooser_widget_ptr)) != 0)
            return rv
        }
        /// Sets whether the app chooser should show all applications
        /// in a flat list.
        nonmutating set {
            gtk_app_chooser_widget_set_show_all(app_chooser_widget_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns the current value of the `GtkAppChooserWidget:show`-default
    /// property.
    @inlinable var showDefault: Bool {
        /// Returns the current value of the `GtkAppChooserWidget:show`-default
        /// property.
        get {
            let rv = ((gtk_app_chooser_widget_get_show_default(app_chooser_widget_ptr)) != 0)
            return rv
        }
        /// Sets whether the app chooser should show the default handler
        /// for the content type in a separate section.
        nonmutating set {
            gtk_app_chooser_widget_set_show_default(app_chooser_widget_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns the current value of the `GtkAppChooserWidget:show`-fallback
    /// property.
    @inlinable var showFallback: Bool {
        /// Returns the current value of the `GtkAppChooserWidget:show`-fallback
        /// property.
        get {
            let rv = ((gtk_app_chooser_widget_get_show_fallback(app_chooser_widget_ptr)) != 0)
            return rv
        }
        /// Sets whether the app chooser should show related applications
        /// for the content type in a separate section.
        nonmutating set {
            gtk_app_chooser_widget_set_show_fallback(app_chooser_widget_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns the current value of the `GtkAppChooserWidget:show`-other
    /// property.
    @inlinable var showOther: Bool {
        /// Returns the current value of the `GtkAppChooserWidget:show`-other
        /// property.
        get {
            let rv = ((gtk_app_chooser_widget_get_show_other(app_chooser_widget_ptr)) != 0)
            return rv
        }
        /// Sets whether the app chooser should show applications
        /// which are unrelated to the content type.
        nonmutating set {
            gtk_app_chooser_widget_set_show_other(app_chooser_widget_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns the current value of the `GtkAppChooserWidget:show`-recommended
    /// property.
    @inlinable var showRecommended: Bool {
        /// Returns the current value of the `GtkAppChooserWidget:show`-recommended
        /// property.
        get {
            let rv = ((gtk_app_chooser_widget_get_show_recommended(app_chooser_widget_ptr)) != 0)
            return rv
        }
        /// Sets whether the app chooser should show recommended applications
        /// for the content type in a separate section.
        nonmutating set {
            gtk_app_chooser_widget_set_show_recommended(app_chooser_widget_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    @inlinable var parent: GtkBox {
        get {
            let rv = app_chooser_widget_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - Application Class

/// The `ApplicationProtocol` protocol exposes the methods and properties of an underlying `GtkApplication` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Application`.
/// Alternatively, use `ApplicationRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkApplication` is a class that handles many important aspects
/// of a GTK+ application in a convenient fashion, without enforcing
/// a one-size-fits-all application model.
/// 
/// Currently, GtkApplication handles GTK+ initialization, application
/// uniqueness, session management, provides some basic scriptability and
/// desktop shell integration by exporting actions and menus and manages a
/// list of toplevel windows whose life-cycle is automatically tied to the
/// life-cycle of your application.
/// 
/// While GtkApplication works fine with plain `GtkWindows`, it is recommended
/// to use it together with `GtkApplicationWindow`.
/// 
/// When GDK threads are enabled, GtkApplication will acquire the GDK
/// lock when invoking actions that arrive from other processes.  The GDK
/// lock is not touched for local action invocations.  In order to have
/// actions invoked in a predictable context it is therefore recommended
/// that the GDK lock be held while invoking actions locally with
/// `g_action_group_activate_action()`.  The same applies to actions
/// associated with `GtkApplicationWindow` and to the “activate” and
/// “open” `GApplication` methods.
/// 
/// ## Automatic resources ## <a name="automatic-resources"></a>
/// 
/// `GtkApplication` will automatically load menus from the `GtkBuilder`
/// resource located at "gtk/menus.ui", relative to the application's
/// resource base path (see `g_application_set_resource_base_path()`).  The
/// menu with the ID "app-menu" is taken as the application's app menu
/// and the menu with the ID "menubar" is taken as the application's
/// menubar.  Additional menus (most interesting submenus) can be named
/// and accessed via `gtk_application_get_menu_by_id()` which allows for
/// dynamic population of a part of the menu structure.
/// 
/// If the resources "gtk/menus-appmenu.ui" or "gtk/menus-traditional.ui" are
/// present then these files will be used in preference, depending on the value
/// of `gtk_application_prefers_app_menu()`. If the resource "gtk/menus-common.ui"
/// is present it will be loaded as well. This is useful for storing items that
/// are referenced from both "gtk/menus-appmenu.ui" and
/// "gtk/menus-traditional.ui".
/// 
/// It is also possible to provide the menus manually using
/// `gtk_application_set_app_menu()` and `gtk_application_set_menubar()`.
/// 
/// `GtkApplication` will also automatically setup an icon search path for
/// the default icon theme by appending "icons" to the resource base
/// path.  This allows your application to easily store its icons as
/// resources.  See `gtk_icon_theme_add_resource_path()` for more
/// information.
/// 
/// If there is a resource located at "gtk/help-overlay.ui" which
/// defines a `GtkShortcutsWindow` with ID "help_overlay" then GtkApplication
/// associates an instance of this shortcuts window with each
/// `GtkApplicationWindow` and sets up keyboard accelerators (Control-F1
/// and Control-?) to open it. To create a menu item that displays the
/// shortcuts window, associate the item with the action win.show-help-overlay.
/// 
/// ## A simple application ## <a name="gtkapplication"></a>
/// 
/// [A simple example](https://git.gnome.org/browse/gtk+/tree/examples/bp/bloatpad.c)
/// 
/// GtkApplication optionally registers with a session manager
/// of the users session (if you set the `GtkApplication:register`-session
/// property) and offers various functionality related to the session
/// life-cycle.
/// 
/// An application can block various ways to end the session with
/// the `gtk_application_inhibit()` function. Typical use cases for
/// this kind of inhibiting are long-running, uninterruptible operations,
/// such as burning a CD or performing a disk backup. The session
/// manager may not honor the inhibitor, but it can be expected to
/// inform the user about the negative consequences of ending the
/// session while inhibitors are present.
/// 
/// ## See Also ## <a name="seealso"></a>
/// [HowDoI: Using GtkApplication](https://wiki.gnome.org/HowDoI/GtkApplication),
/// [Getting Started with GTK+: Basics](https://developer.gnome.org/gtk3/stable/gtk-getting-started.html`id`-1.2.3.3)
public protocol ApplicationProtocol: GIO.ApplicationProtocol, GIO.ActionGroupProtocol, GIO.ActionMapProtocol {
        /// Untyped pointer to the underlying `GtkApplication` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkApplication` instance.
    var application_ptr: UnsafeMutablePointer<GtkApplication>! { get }

}

/// The `ApplicationRef` type acts as a lightweight Swift reference to an underlying `GtkApplication` instance.
/// It exposes methods that can operate on this data type through `ApplicationProtocol` conformance.
/// Use `ApplicationRef` only as an `unowned` reference to an existing `GtkApplication` instance.
///
/// `GtkApplication` is a class that handles many important aspects
/// of a GTK+ application in a convenient fashion, without enforcing
/// a one-size-fits-all application model.
/// 
/// Currently, GtkApplication handles GTK+ initialization, application
/// uniqueness, session management, provides some basic scriptability and
/// desktop shell integration by exporting actions and menus and manages a
/// list of toplevel windows whose life-cycle is automatically tied to the
/// life-cycle of your application.
/// 
/// While GtkApplication works fine with plain `GtkWindows`, it is recommended
/// to use it together with `GtkApplicationWindow`.
/// 
/// When GDK threads are enabled, GtkApplication will acquire the GDK
/// lock when invoking actions that arrive from other processes.  The GDK
/// lock is not touched for local action invocations.  In order to have
/// actions invoked in a predictable context it is therefore recommended
/// that the GDK lock be held while invoking actions locally with
/// `g_action_group_activate_action()`.  The same applies to actions
/// associated with `GtkApplicationWindow` and to the “activate” and
/// “open” `GApplication` methods.
/// 
/// ## Automatic resources ## <a name="automatic-resources"></a>
/// 
/// `GtkApplication` will automatically load menus from the `GtkBuilder`
/// resource located at "gtk/menus.ui", relative to the application's
/// resource base path (see `g_application_set_resource_base_path()`).  The
/// menu with the ID "app-menu" is taken as the application's app menu
/// and the menu with the ID "menubar" is taken as the application's
/// menubar.  Additional menus (most interesting submenus) can be named
/// and accessed via `gtk_application_get_menu_by_id()` which allows for
/// dynamic population of a part of the menu structure.
/// 
/// If the resources "gtk/menus-appmenu.ui" or "gtk/menus-traditional.ui" are
/// present then these files will be used in preference, depending on the value
/// of `gtk_application_prefers_app_menu()`. If the resource "gtk/menus-common.ui"
/// is present it will be loaded as well. This is useful for storing items that
/// are referenced from both "gtk/menus-appmenu.ui" and
/// "gtk/menus-traditional.ui".
/// 
/// It is also possible to provide the menus manually using
/// `gtk_application_set_app_menu()` and `gtk_application_set_menubar()`.
/// 
/// `GtkApplication` will also automatically setup an icon search path for
/// the default icon theme by appending "icons" to the resource base
/// path.  This allows your application to easily store its icons as
/// resources.  See `gtk_icon_theme_add_resource_path()` for more
/// information.
/// 
/// If there is a resource located at "gtk/help-overlay.ui" which
/// defines a `GtkShortcutsWindow` with ID "help_overlay" then GtkApplication
/// associates an instance of this shortcuts window with each
/// `GtkApplicationWindow` and sets up keyboard accelerators (Control-F1
/// and Control-?) to open it. To create a menu item that displays the
/// shortcuts window, associate the item with the action win.show-help-overlay.
/// 
/// ## A simple application ## <a name="gtkapplication"></a>
/// 
/// [A simple example](https://git.gnome.org/browse/gtk+/tree/examples/bp/bloatpad.c)
/// 
/// GtkApplication optionally registers with a session manager
/// of the users session (if you set the `GtkApplication:register`-session
/// property) and offers various functionality related to the session
/// life-cycle.
/// 
/// An application can block various ways to end the session with
/// the `gtk_application_inhibit()` function. Typical use cases for
/// this kind of inhibiting are long-running, uninterruptible operations,
/// such as burning a CD or performing a disk backup. The session
/// manager may not honor the inhibitor, but it can be expected to
/// inform the user about the negative consequences of ending the
/// session while inhibitors are present.
/// 
/// ## See Also ## <a name="seealso"></a>
/// [HowDoI: Using GtkApplication](https://wiki.gnome.org/HowDoI/GtkApplication),
/// [Getting Started with GTK+: Basics](https://developer.gnome.org/gtk3/stable/gtk-getting-started.html`id`-1.2.3.3)
public struct ApplicationRef: ApplicationProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkApplication` instance.
    /// For type-safe access, use the generated, typed pointer `application_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ApplicationRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkApplication>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkApplication>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkApplication>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkApplication>?) {
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

    /// Reference intialiser for a related type that implements `ApplicationProtocol`
    @inlinable init<T: ApplicationProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ApplicationProtocol>(_ other: T) -> ApplicationRef { ApplicationRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkApplication` instance.
    /// 
    /// When using `GtkApplication`, it is not necessary to call `gtk_init()`
    /// manually. It is called as soon as the application gets registered as
    /// the primary instance.
    /// 
    /// Concretely, `gtk_init()` is called in the default handler for the
    /// `GApplication::startup` signal. Therefore, `GtkApplication` subclasses should
    /// chain up in their `GApplication::startup` handler before using any GTK+ API.
    /// 
    /// Note that commandline arguments are not passed to `gtk_init()`.
    /// All GTK+ functionality that is available via commandline arguments
    /// can also be achieved by setting suitable environment variables
    /// such as `G_DEBUG`, so this should not be a big
    /// problem. If you absolutely must support GTK+ commandline arguments,
    /// you can explicitly call `gtk_init()` before creating the application
    /// instance.
    /// 
    /// If non-`nil`, the application ID must be valid.  See
    /// `g_application_id_is_valid()`.
    /// 
    /// If no application ID is given then some features (most notably application
    /// uniqueness) will be disabled. A null application ID is only allowed with
    /// GTK+ 3.6 or later.
    @inlinable init( applicationID: UnsafePointer<gchar>? = nil, flags: GIO.ApplicationFlags) {
        let rv = gtk_application_new(applicationID, flags.value)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `Application` type acts as a reference-counted owner of an underlying `GtkApplication` instance.
/// It provides the methods that can operate on this data type through `ApplicationProtocol` conformance.
/// Use `Application` as a strong reference or owner of a `GtkApplication` instance.
///
/// `GtkApplication` is a class that handles many important aspects
/// of a GTK+ application in a convenient fashion, without enforcing
/// a one-size-fits-all application model.
/// 
/// Currently, GtkApplication handles GTK+ initialization, application
/// uniqueness, session management, provides some basic scriptability and
/// desktop shell integration by exporting actions and menus and manages a
/// list of toplevel windows whose life-cycle is automatically tied to the
/// life-cycle of your application.
/// 
/// While GtkApplication works fine with plain `GtkWindows`, it is recommended
/// to use it together with `GtkApplicationWindow`.
/// 
/// When GDK threads are enabled, GtkApplication will acquire the GDK
/// lock when invoking actions that arrive from other processes.  The GDK
/// lock is not touched for local action invocations.  In order to have
/// actions invoked in a predictable context it is therefore recommended
/// that the GDK lock be held while invoking actions locally with
/// `g_action_group_activate_action()`.  The same applies to actions
/// associated with `GtkApplicationWindow` and to the “activate” and
/// “open” `GApplication` methods.
/// 
/// ## Automatic resources ## <a name="automatic-resources"></a>
/// 
/// `GtkApplication` will automatically load menus from the `GtkBuilder`
/// resource located at "gtk/menus.ui", relative to the application's
/// resource base path (see `g_application_set_resource_base_path()`).  The
/// menu with the ID "app-menu" is taken as the application's app menu
/// and the menu with the ID "menubar" is taken as the application's
/// menubar.  Additional menus (most interesting submenus) can be named
/// and accessed via `gtk_application_get_menu_by_id()` which allows for
/// dynamic population of a part of the menu structure.
/// 
/// If the resources "gtk/menus-appmenu.ui" or "gtk/menus-traditional.ui" are
/// present then these files will be used in preference, depending on the value
/// of `gtk_application_prefers_app_menu()`. If the resource "gtk/menus-common.ui"
/// is present it will be loaded as well. This is useful for storing items that
/// are referenced from both "gtk/menus-appmenu.ui" and
/// "gtk/menus-traditional.ui".
/// 
/// It is also possible to provide the menus manually using
/// `gtk_application_set_app_menu()` and `gtk_application_set_menubar()`.
/// 
/// `GtkApplication` will also automatically setup an icon search path for
/// the default icon theme by appending "icons" to the resource base
/// path.  This allows your application to easily store its icons as
/// resources.  See `gtk_icon_theme_add_resource_path()` for more
/// information.
/// 
/// If there is a resource located at "gtk/help-overlay.ui" which
/// defines a `GtkShortcutsWindow` with ID "help_overlay" then GtkApplication
/// associates an instance of this shortcuts window with each
/// `GtkApplicationWindow` and sets up keyboard accelerators (Control-F1
/// and Control-?) to open it. To create a menu item that displays the
/// shortcuts window, associate the item with the action win.show-help-overlay.
/// 
/// ## A simple application ## <a name="gtkapplication"></a>
/// 
/// [A simple example](https://git.gnome.org/browse/gtk+/tree/examples/bp/bloatpad.c)
/// 
/// GtkApplication optionally registers with a session manager
/// of the users session (if you set the `GtkApplication:register`-session
/// property) and offers various functionality related to the session
/// life-cycle.
/// 
/// An application can block various ways to end the session with
/// the `gtk_application_inhibit()` function. Typical use cases for
/// this kind of inhibiting are long-running, uninterruptible operations,
/// such as burning a CD or performing a disk backup. The session
/// manager may not honor the inhibitor, but it can be expected to
/// inform the user about the negative consequences of ending the
/// session while inhibitors are present.
/// 
/// ## See Also ## <a name="seealso"></a>
/// [HowDoI: Using GtkApplication](https://wiki.gnome.org/HowDoI/GtkApplication),
/// [Getting Started with GTK+: Basics](https://developer.gnome.org/gtk3/stable/gtk-getting-started.html`id`-1.2.3.3)
open class Application: GIO.Application, ApplicationProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Application` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkApplication>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Application` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkApplication>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Application` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Application` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Application` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkApplication>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Application` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkApplication>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkApplication`.
    /// i.e., ownership is transferred to the `Application` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkApplication>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ApplicationProtocol`
    /// Will retain `GtkApplication`.
    /// - Parameter other: an instance of a related type that implements `ApplicationProtocol`
    @inlinable public init<T: ApplicationProtocol>(_ other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkApplication` instance.
    /// 
    /// When using `GtkApplication`, it is not necessary to call `gtk_init()`
    /// manually. It is called as soon as the application gets registered as
    /// the primary instance.
    /// 
    /// Concretely, `gtk_init()` is called in the default handler for the
    /// `GApplication::startup` signal. Therefore, `GtkApplication` subclasses should
    /// chain up in their `GApplication::startup` handler before using any GTK+ API.
    /// 
    /// Note that commandline arguments are not passed to `gtk_init()`.
    /// All GTK+ functionality that is available via commandline arguments
    /// can also be achieved by setting suitable environment variables
    /// such as `G_DEBUG`, so this should not be a big
    /// problem. If you absolutely must support GTK+ commandline arguments,
    /// you can explicitly call `gtk_init()` before creating the application
    /// instance.
    /// 
    /// If non-`nil`, the application ID must be valid.  See
    /// `g_application_id_is_valid()`.
    /// 
    /// If no application ID is given then some features (most notably application
    /// uniqueness) will be disabled. A null application ID is only allowed with
    /// GTK+ 3.6 or later.
    @inlinable public override init( applicationID: UnsafePointer<gchar>? = nil, flags: GIO.ApplicationFlags) {
        let rv = gtk_application_new(applicationID, flags.value)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum ApplicationPropertyName: String, PropertyNameProtocol {
    case actionGroup = "action-group"
    case activeWindow = "active-window"
    case appMenu = "app-menu"
    case applicationID = "application-id"
    case flags = "flags"
    case inactivityTimeout = "inactivity-timeout"
    /// Whether the application is currently marked as busy through
    /// `g_application_mark_busy()` or `g_application_bind_busy_property()`.
    case isBusy = "is-busy"
    case isRegistered = "is-registered"
    case isRemote = "is-remote"
    case menubar = "menubar"
    /// Set this property to `true` to register with the session manager.
    case registerSession = "register-session"
    case resourceBasePath = "resource-base-path"
    /// This property is `true` if GTK+ believes that the screensaver is
    /// currently active. GTK+ only tracks session state (including this)
    /// when `GtkApplication::register`-session is set to `true`.
    /// 
    /// Tracking the screensaver state is supported on Linux.
    case screensaverActive = "screensaver-active"
}

public extension ApplicationProtocol {
    /// Bind a `ApplicationPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ApplicationPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Application property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ApplicationPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Application property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ApplicationPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of Application
public extension ApplicationProtocol {
    /// Emitted when the session manager is about to end the session, only
    /// if `GtkApplication::register`-session is `true`. Applications can
    /// connect to this signal and call `gtk_application_inhibit()` with
    /// `GTK_APPLICATION_INHIBIT_LOGOUT` to delay the end of the session
    /// until state has been saved.
    /// - Note: Representation of signal named `query-end`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onQueryEnd(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ApplicationRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<ApplicationRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ApplicationRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "query-end", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// Emitted when a `GtkWindow` is added to `application` through
    /// `gtk_application_add_window()`.
    /// - Note: Representation of signal named `window-added`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter window: the newly-added `GtkWindow`
    @discardableResult
    func onWindowAdded(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ApplicationRef, _ window: WindowRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ApplicationRef, WindowRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ApplicationRef(raw: unownedSelf), WindowRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "window-added", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// Emitted when a `GtkWindow` is removed from `application`,
    /// either as a side-effect of being destroyed or explicitly
    /// through `gtk_application_remove_window()`.
    /// - Note: Representation of signal named `window-removed`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter window: the `GtkWindow` that is being removed
    @discardableResult
    func onWindowRemoved(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ApplicationRef, _ window: WindowRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ApplicationRef, WindowRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ApplicationRef(raw: unownedSelf), WindowRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "window-removed", 
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
    /// - Note: Representation of signal named `notify::active-window`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyActiveWindow(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ApplicationRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ApplicationRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ApplicationRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::active-window", 
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
    /// - Note: Representation of signal named `notify::app-menu`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyAppMenu(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ApplicationRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ApplicationRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ApplicationRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::app-menu", 
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
    /// - Note: Representation of signal named `notify::menubar`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyMenubar(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ApplicationRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ApplicationRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ApplicationRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::menubar", 
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
    /// - Note: Representation of signal named `notify::register-session`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyRegisterSession(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ApplicationRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ApplicationRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ApplicationRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::register-session", 
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
    /// - Note: Representation of signal named `notify::screensaver-active`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyScreensaverActive(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ApplicationRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ApplicationRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ApplicationRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::screensaver-active", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: Application Class: ApplicationProtocol extension (methods and fields)
public extension ApplicationProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkApplication` instance.
    @inlinable var application_ptr: UnsafeMutablePointer<GtkApplication>! { return ptr?.assumingMemoryBound(to: GtkApplication.self) }

    /// Installs an accelerator that will cause the named action
    /// to be activated when the key combination specificed by `accelerator`
    /// is pressed.
    /// 
    /// `accelerator` must be a string that can be parsed by `gtk_accelerator_parse()`,
    /// e.g. "<Primary>q" or “<Control><Alt>p”.
    /// 
    /// `action_name` must be the name of an action as it would be used
    /// in the app menu, i.e. actions that have been added to the application
    /// are referred to with an “app.” prefix, and window-specific actions
    /// with a “win.” prefix.
    /// 
    /// GtkApplication also extracts accelerators out of “accel” attributes
    /// in the `GMenuModels` passed to `gtk_application_set_app_menu()` and
    /// `gtk_application_set_menubar()`, which is usually more convenient
    /// than calling this function for each accelerator.
    ///
    /// **add_accelerator is deprecated:**
    /// Use gtk_application_set_accels_for_action() instead
    @available(*, deprecated)
    @inlinable func add(accelerator: UnsafePointer<gchar>!, actionName: UnsafePointer<gchar>!, parameter: GLib.VariantRef? = nil) {
        gtk_application_add_accelerator(application_ptr, accelerator, actionName, parameter?.variant_ptr)
    
    }
    /// Installs an accelerator that will cause the named action
    /// to be activated when the key combination specificed by `accelerator`
    /// is pressed.
    /// 
    /// `accelerator` must be a string that can be parsed by `gtk_accelerator_parse()`,
    /// e.g. "<Primary>q" or “<Control><Alt>p”.
    /// 
    /// `action_name` must be the name of an action as it would be used
    /// in the app menu, i.e. actions that have been added to the application
    /// are referred to with an “app.” prefix, and window-specific actions
    /// with a “win.” prefix.
    /// 
    /// GtkApplication also extracts accelerators out of “accel” attributes
    /// in the `GMenuModels` passed to `gtk_application_set_app_menu()` and
    /// `gtk_application_set_menubar()`, which is usually more convenient
    /// than calling this function for each accelerator.
    ///
    /// **add_accelerator is deprecated:**
    /// Use gtk_application_set_accels_for_action() instead
    @available(*, deprecated)
    @inlinable func add<VariantT: GLib.VariantProtocol>(accelerator: UnsafePointer<gchar>!, actionName: UnsafePointer<gchar>!, parameter: VariantT?) {
        gtk_application_add_accelerator(application_ptr, accelerator, actionName, parameter?.variant_ptr)
    
    }

    /// Adds a window to `application`.
    /// 
    /// This call can only happen after the `application` has started;
    /// typically, you should add new application windows in response
    /// to the emission of the `GApplication::activate` signal.
    /// 
    /// This call is equivalent to setting the `GtkWindow:application`
    /// property of `window` to `application`.
    /// 
    /// Normally, the connection between the application and the window
    /// will remain until the window is destroyed, but you can explicitly
    /// remove it with `gtk_application_remove_window()`.
    /// 
    /// GTK+ will keep the `application` running as long as it has
    /// any windows.
    @inlinable func add<WindowT: WindowProtocol>(window: WindowT) {
        gtk_application_add_window(application_ptr, window.window_ptr)
    
    }

    /// Gets the accelerators that are currently associated with
    /// the given action.
    @inlinable func getAccelsForAction(detailedActionName: UnsafePointer<gchar>!) -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        let rv = gtk_application_get_accels_for_action(application_ptr, detailedActionName)
        return rv
    }

    /// Returns the list of actions (possibly empty) that `accel` maps to.
    /// Each item in the list is a detailed action name in the usual form.
    /// 
    /// This might be useful to discover if an accel already exists in
    /// order to prevent installation of a conflicting accelerator (from
    /// an accelerator editor or a plugin system, for example). Note that
    /// having more than one action per accelerator may not be a bad thing
    /// and might make sense in cases where the actions never appear in the
    /// same context.
    /// 
    /// In case there are no actions for a given accelerator, an empty array
    /// is returned.  `nil` is never returned.
    /// 
    /// It is a programmer error to pass an invalid accelerator string.
    /// If you are unsure, check it with `gtk_accelerator_parse()` first.
    @inlinable func getActionsFor(accel: UnsafePointer<gchar>!) -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        let rv = gtk_application_get_actions_for_accel(application_ptr, accel)
        return rv
    }

    /// Gets the “active” window for the application.
    /// 
    /// The active window is the one that was most recently focused (within
    /// the application).  This window may not have the focus at the moment
    /// if another application has it — this is just the most
    /// recently-focused window within this application.
    @inlinable func getActiveWindow() -> WindowRef! {
        let rv = WindowRef(gconstpointer: gconstpointer(gtk_application_get_active_window(application_ptr)))
        return rv
    }

    /// Returns the menu model that has been set with
    /// `gtk_application_set_app_menu()`.
    @inlinable func getAppMenu() -> GIO.MenuModelRef! {
        let rv = GIO.MenuModelRef(gtk_application_get_app_menu(application_ptr))
        return rv
    }

    /// Gets a menu from automatically loaded resources.
    /// See [Automatic resources](#automatic-resources)
    /// for more information.
    @inlinable func getMenuBy(id: UnsafePointer<gchar>!) -> GIO.MenuRef! {
        let rv = GIO.MenuRef(gtk_application_get_menu_by_id(application_ptr, id))
        return rv
    }

    /// Returns the menu model that has been set with
    /// `gtk_application_set_menubar()`.
    @inlinable func getMenubar() -> GIO.MenuModelRef! {
        let rv = GIO.MenuModelRef(gtk_application_get_menubar(application_ptr))
        return rv
    }

    /// Returns the `GtkApplicationWindow` with the given ID.
    /// 
    /// The ID of a `GtkApplicationWindow` can be retrieved with
    /// `gtk_application_window_get_id()`.
    @inlinable func getWindowBy(id: Int) -> WindowRef! {
        let rv = WindowRef(gconstpointer: gconstpointer(gtk_application_get_window_by_id(application_ptr, guint(id))))
        return rv
    }

    /// Gets a list of the `GtkWindows` associated with `application`.
    /// 
    /// The list is sorted by most recently focused window, such that the first
    /// element is the currently focused window. (Useful for choosing a parent
    /// for a transient window.)
    /// 
    /// The list that is returned should not be modified in any way. It will
    /// only remain valid until the next focus change or window creation or
    /// deletion.
    @inlinable func getWindows() -> GLib.ListRef! {
        let rv = GLib.ListRef(gtk_application_get_windows(application_ptr))
        return rv
    }

    /// Inform the session manager that certain types of actions should be
    /// inhibited. This is not guaranteed to work on all platforms and for
    /// all types of actions.
    /// 
    /// Applications should invoke this method when they begin an operation
    /// that should not be interrupted, such as creating a CD or DVD. The
    /// types of actions that may be blocked are specified by the `flags`
    /// parameter. When the application completes the operation it should
    /// call `gtk_application_uninhibit()` to remove the inhibitor. Note that
    /// an application can have multiple inhibitors, and all of them must
    /// be individually removed. Inhibitors are also cleared when the
    /// application exits.
    /// 
    /// Applications should not expect that they will always be able to block
    /// the action. In most cases, users will be given the option to force
    /// the action to take place.
    /// 
    /// Reasons should be short and to the point.
    /// 
    /// If `window` is given, the session manager may point the user to
    /// this window to find out more about why the action is inhibited.
    @inlinable func inhibit(window: WindowRef? = nil, flags: ApplicationInhibitFlags, reason: UnsafePointer<gchar>? = nil) -> Int {
        let rv = Int(gtk_application_inhibit(application_ptr, window?.window_ptr, flags.value, reason))
        return rv
    }
    /// Inform the session manager that certain types of actions should be
    /// inhibited. This is not guaranteed to work on all platforms and for
    /// all types of actions.
    /// 
    /// Applications should invoke this method when they begin an operation
    /// that should not be interrupted, such as creating a CD or DVD. The
    /// types of actions that may be blocked are specified by the `flags`
    /// parameter. When the application completes the operation it should
    /// call `gtk_application_uninhibit()` to remove the inhibitor. Note that
    /// an application can have multiple inhibitors, and all of them must
    /// be individually removed. Inhibitors are also cleared when the
    /// application exits.
    /// 
    /// Applications should not expect that they will always be able to block
    /// the action. In most cases, users will be given the option to force
    /// the action to take place.
    /// 
    /// Reasons should be short and to the point.
    /// 
    /// If `window` is given, the session manager may point the user to
    /// this window to find out more about why the action is inhibited.
    @inlinable func inhibit<WindowT: WindowProtocol>(window: WindowT?, flags: ApplicationInhibitFlags, reason: UnsafePointer<gchar>? = nil) -> Int {
        let rv = Int(gtk_application_inhibit(application_ptr, window?.window_ptr, flags.value, reason))
        return rv
    }

    /// Determines if any of the actions specified in `flags` are
    /// currently inhibited (possibly by another application).
    /// 
    /// Note that this information may not be available (for example
    /// when the application is running in a sandbox).
    @inlinable func isInhibited(flags: ApplicationInhibitFlags) -> Bool {
        let rv = ((gtk_application_is_inhibited(application_ptr, flags.value)) != 0)
        return rv
    }

    /// Lists the detailed action names which have associated accelerators.
    /// See `gtk_application_set_accels_for_action()`.
    @inlinable func listActionDescriptions() -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        let rv = gtk_application_list_action_descriptions(application_ptr)
        return rv
    }

    /// Determines if the desktop environment in which the application is
    /// running would prefer an application menu be shown.
    /// 
    /// If this function returns `true` then the application should call
    /// `gtk_application_set_app_menu()` with the contents of an application
    /// menu, which will be shown by the desktop environment.  If it returns
    /// `false` then you should consider using an alternate approach, such as
    /// a menubar.
    /// 
    /// The value returned by this function is purely advisory and you are
    /// free to ignore it.  If you call `gtk_application_set_app_menu()` even
    /// if the desktop environment doesn't support app menus, then a fallback
    /// will be provided.
    /// 
    /// Applications are similarly free not to set an app menu even if the
    /// desktop environment wants to show one.  In that case, a fallback will
    /// also be created by the desktop environment (GNOME, for example, uses
    /// a menu with only a "Quit" item in it).
    /// 
    /// The value returned by this function never changes.  Once it returns a
    /// particular value, it is guaranteed to always return the same value.
    /// 
    /// You may only call this function after the application has been
    /// registered and after the base startup handler has run.  You're most
    /// likely to want to use this from your own startup handler.  It may
    /// also make sense to consult this function while constructing UI (in
    /// activate, open or an action activation handler) in order to determine
    /// if you should show a gear menu or not.
    /// 
    /// This function will return `false` on Mac OS and a default app menu
    /// will be created automatically with the "usual" contents of that menu
    /// typical to most Mac OS applications.  If you call
    /// `gtk_application_set_app_menu()` anyway, then this menu will be
    /// replaced with your own.
    @inlinable func prefersAppMenu() -> Bool {
        let rv = ((gtk_application_prefers_app_menu(application_ptr)) != 0)
        return rv
    }

    /// Removes an accelerator that has been previously added
    /// with `gtk_application_add_accelerator()`.
    ///
    /// **remove_accelerator is deprecated:**
    /// Use gtk_application_set_accels_for_action() instead
    @available(*, deprecated)
    @inlinable func removeAccelerator(actionName: UnsafePointer<gchar>!, parameter: GLib.VariantRef? = nil) {
        gtk_application_remove_accelerator(application_ptr, actionName, parameter?.variant_ptr)
    
    }
    /// Removes an accelerator that has been previously added
    /// with `gtk_application_add_accelerator()`.
    ///
    /// **remove_accelerator is deprecated:**
    /// Use gtk_application_set_accels_for_action() instead
    @available(*, deprecated)
    @inlinable func removeAccelerator<VariantT: GLib.VariantProtocol>(actionName: UnsafePointer<gchar>!, parameter: VariantT?) {
        gtk_application_remove_accelerator(application_ptr, actionName, parameter?.variant_ptr)
    
    }

    /// Remove a window from `application`.
    /// 
    /// If `window` belongs to `application` then this call is equivalent to
    /// setting the `GtkWindow:application` property of `window` to
    /// `nil`.
    /// 
    /// The application may stop running as a result of a call to this
    /// function.
    @inlinable func remove<WindowT: WindowProtocol>(window: WindowT) {
        gtk_application_remove_window(application_ptr, window.window_ptr)
    
    }

    /// Sets zero or more keyboard accelerators that will trigger the
    /// given action. The first item in `accels` will be the primary
    /// accelerator, which may be displayed in the UI.
    /// 
    /// To remove all accelerators for an action, use an empty, zero-terminated
    /// array for `accels`.
    /// 
    /// For the `detailed_action_name`, see `g_action_parse_detailed_name()` and
    /// `g_action_print_detailed_name()`.
    @inlinable func setAccelsForAction(detailedActionName: UnsafePointer<gchar>!, accels: UnsafePointer<UnsafePointer<gchar>?>!) {
        gtk_application_set_accels_for_action(application_ptr, detailedActionName, accels)
    
    }

    /// Sets or unsets the application menu for `application`.
    /// 
    /// This can only be done in the primary instance of the application,
    /// after it has been registered.  `GApplication::startup` is a good place
    /// to call this.
    /// 
    /// The application menu is a single menu containing items that typically
    /// impact the application as a whole, rather than acting on a specific
    /// window or document.  For example, you would expect to see
    /// “Preferences” or “Quit” in an application menu, but not “Save” or
    /// “Print”.
    /// 
    /// If supported, the application menu will be rendered by the desktop
    /// environment.
    /// 
    /// Use the base `GActionMap` interface to add actions, to respond to the user
    /// selecting these menu items.
    @inlinable func set(appMenu: GIO.MenuModelRef? = nil) {
        gtk_application_set_app_menu(application_ptr, appMenu?.menu_model_ptr)
    
    }
    /// Sets or unsets the application menu for `application`.
    /// 
    /// This can only be done in the primary instance of the application,
    /// after it has been registered.  `GApplication::startup` is a good place
    /// to call this.
    /// 
    /// The application menu is a single menu containing items that typically
    /// impact the application as a whole, rather than acting on a specific
    /// window or document.  For example, you would expect to see
    /// “Preferences” or “Quit” in an application menu, but not “Save” or
    /// “Print”.
    /// 
    /// If supported, the application menu will be rendered by the desktop
    /// environment.
    /// 
    /// Use the base `GActionMap` interface to add actions, to respond to the user
    /// selecting these menu items.
    @inlinable func set<MenuModelT: GIO.MenuModelProtocol>(appMenu: MenuModelT?) {
        gtk_application_set_app_menu(application_ptr, appMenu?.menu_model_ptr)
    
    }

    /// Sets or unsets the menubar for windows of `application`.
    /// 
    /// This is a menubar in the traditional sense.
    /// 
    /// This can only be done in the primary instance of the application,
    /// after it has been registered.  `GApplication::startup` is a good place
    /// to call this.
    /// 
    /// Depending on the desktop environment, this may appear at the top of
    /// each window, or at the top of the screen.  In some environments, if
    /// both the application menu and the menubar are set, the application
    /// menu will be presented as if it were the first item of the menubar.
    /// Other environments treat the two as completely separate — for example,
    /// the application menu may be rendered by the desktop shell while the
    /// menubar (if set) remains in each individual window.
    /// 
    /// Use the base `GActionMap` interface to add actions, to respond to the
    /// user selecting these menu items.
    @inlinable func set(menubar: GIO.MenuModelRef? = nil) {
        gtk_application_set_menubar(application_ptr, menubar?.menu_model_ptr)
    
    }
    /// Sets or unsets the menubar for windows of `application`.
    /// 
    /// This is a menubar in the traditional sense.
    /// 
    /// This can only be done in the primary instance of the application,
    /// after it has been registered.  `GApplication::startup` is a good place
    /// to call this.
    /// 
    /// Depending on the desktop environment, this may appear at the top of
    /// each window, or at the top of the screen.  In some environments, if
    /// both the application menu and the menubar are set, the application
    /// menu will be presented as if it were the first item of the menubar.
    /// Other environments treat the two as completely separate — for example,
    /// the application menu may be rendered by the desktop shell while the
    /// menubar (if set) remains in each individual window.
    /// 
    /// Use the base `GActionMap` interface to add actions, to respond to the
    /// user selecting these menu items.
    @inlinable func set<MenuModelT: GIO.MenuModelProtocol>(menubar: MenuModelT?) {
        gtk_application_set_menubar(application_ptr, menubar?.menu_model_ptr)
    
    }

    /// Removes an inhibitor that has been established with `gtk_application_inhibit()`.
    /// Inhibitors are also cleared when the application exits.
    @inlinable func uninhibit(cookie: Int) {
        gtk_application_uninhibit(application_ptr, guint(cookie))
    
    }
    /// Gets the “active” window for the application.
    /// 
    /// The active window is the one that was most recently focused (within
    /// the application).  This window may not have the focus at the moment
    /// if another application has it — this is just the most
    /// recently-focused window within this application.
    @inlinable var activeWindow: WindowRef! {
        /// Gets the “active” window for the application.
        /// 
        /// The active window is the one that was most recently focused (within
        /// the application).  This window may not have the focus at the moment
        /// if another application has it — this is just the most
        /// recently-focused window within this application.
        get {
            let rv = WindowRef(gconstpointer: gconstpointer(gtk_application_get_active_window(application_ptr)))
            return rv
        }
    }

    /// Returns the menu model that has been set with
    /// `gtk_application_set_app_menu()`.
    @inlinable var appMenu: GIO.MenuModelRef! {
        /// Returns the menu model that has been set with
        /// `gtk_application_set_app_menu()`.
        get {
            let rv = GIO.MenuModelRef(gtk_application_get_app_menu(application_ptr))
            return rv
        }
        /// Sets or unsets the application menu for `application`.
        /// 
        /// This can only be done in the primary instance of the application,
        /// after it has been registered.  `GApplication::startup` is a good place
        /// to call this.
        /// 
        /// The application menu is a single menu containing items that typically
        /// impact the application as a whole, rather than acting on a specific
        /// window or document.  For example, you would expect to see
        /// “Preferences” or “Quit” in an application menu, but not “Save” or
        /// “Print”.
        /// 
        /// If supported, the application menu will be rendered by the desktop
        /// environment.
        /// 
        /// Use the base `GActionMap` interface to add actions, to respond to the user
        /// selecting these menu items.
        nonmutating set {
            gtk_application_set_app_menu(application_ptr, UnsafeMutablePointer<GMenuModel>(newValue?.menu_model_ptr))
        }
    }

    @inlinable var menubar: GIO.MenuModelRef! {
        /// Returns the menu model that has been set with
        /// `gtk_application_set_menubar()`.
        get {
            let rv = GIO.MenuModelRef(gtk_application_get_menubar(application_ptr))
            return rv
        }
        /// Sets or unsets the menubar for windows of `application`.
        /// 
        /// This is a menubar in the traditional sense.
        /// 
        /// This can only be done in the primary instance of the application,
        /// after it has been registered.  `GApplication::startup` is a good place
        /// to call this.
        /// 
        /// Depending on the desktop environment, this may appear at the top of
        /// each window, or at the top of the screen.  In some environments, if
        /// both the application menu and the menubar are set, the application
        /// menu will be presented as if it were the first item of the menubar.
        /// Other environments treat the two as completely separate — for example,
        /// the application menu may be rendered by the desktop shell while the
        /// menubar (if set) remains in each individual window.
        /// 
        /// Use the base `GActionMap` interface to add actions, to respond to the
        /// user selecting these menu items.
        nonmutating set {
            gtk_application_set_menubar(application_ptr, UnsafeMutablePointer<GMenuModel>(newValue?.menu_model_ptr))
        }
    }

    /// Gets a list of the `GtkWindows` associated with `application`.
    /// 
    /// The list is sorted by most recently focused window, such that the first
    /// element is the currently focused window. (Useful for choosing a parent
    /// for a transient window.)
    /// 
    /// The list that is returned should not be modified in any way. It will
    /// only remain valid until the next focus change or window creation or
    /// deletion.
    @inlinable var windows: GLib.ListRef! {
        /// Gets a list of the `GtkWindows` associated with `application`.
        /// 
        /// The list is sorted by most recently focused window, such that the first
        /// element is the currently focused window. (Useful for choosing a parent
        /// for a transient window.)
        /// 
        /// The list that is returned should not be modified in any way. It will
        /// only remain valid until the next focus change or window creation or
        /// deletion.
        get {
            let rv = GLib.ListRef(gtk_application_get_windows(application_ptr))
            return rv
        }
    }

    @inlinable var parent: GApplication {
        get {
            let rv = application_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - ApplicationWindow Class

/// The `ApplicationWindowProtocol` protocol exposes the methods and properties of an underlying `GtkApplicationWindow` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ApplicationWindow`.
/// Alternatively, use `ApplicationWindowRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkApplicationWindow` is a `GtkWindow` subclass that offers some
/// extra functionality for better integration with `GtkApplication`
/// features.  Notably, it can handle both the application menu as well
/// as the menubar. See `gtk_application_set_app_menu()` and
/// `gtk_application_set_menubar()`.
/// 
/// This class implements the `GActionGroup` and `GActionMap` interfaces,
/// to let you add window-specific actions that will be exported by the
/// associated `GtkApplication`, together with its application-wide
/// actions.  Window-specific actions are prefixed with the “win.”
/// prefix and application-wide actions are prefixed with the “app.”
/// prefix.  Actions must be addressed with the prefixed name when
/// referring to them from a `GMenuModel`.
/// 
/// Note that widgets that are placed inside a `GtkApplicationWindow`
/// can also activate these actions, if they implement the
/// `GtkActionable` interface.
/// 
/// As with `GtkApplication`, the GDK lock will be acquired when
/// processing actions arriving from other processes and should therefore
/// be held when activating actions locally (if GDK threads are enabled).
/// 
/// The settings `GtkSettings:gtk`-shell-shows-app-menu and
/// `GtkSettings:gtk`-shell-shows-menubar tell GTK+ whether the
/// desktop environment is showing the application menu and menubar
/// models outside the application as part of the desktop shell.
/// For instance, on OS X, both menus will be displayed remotely;
/// on Windows neither will be. gnome-shell (starting with version 3.4)
/// will display the application menu, but not the menubar.
/// 
/// If the desktop environment does not display the menubar, then
/// `GtkApplicationWindow` will automatically show a `GtkMenuBar` for it.
/// This behaviour can be overridden with the `GtkApplicationWindow:show`-menubar
/// property. If the desktop environment does not display the application
/// menu, then it will automatically be included in the menubar or in the
/// windows client-side decorations.
/// 
/// ## A GtkApplicationWindow with a menubar
/// 
/// (C Language Example):
/// ```C
/// GtkApplication *app = gtk_application_new ("org.gtk.test", 0);
/// 
/// GtkBuilder *builder = gtk_builder_new_from_string (
///     "<interface>"
///     "  <menu id='menubar'>"
///     "    <submenu label='_Edit'>"
///     "      <item label='_Copy' action='win.copy'/>"
///     "      <item label='_Paste' action='win.paste'/>"
///     "    </submenu>"
///     "  </menu>"
///     "</interface>",
///     -1);
/// 
/// GMenuModel *menubar = G_MENU_MODEL (gtk_builder_get_object (builder,
///                                                             "menubar"));
/// gtk_application_set_menubar (GTK_APPLICATION (app), menubar);
/// g_object_unref (builder);
/// 
/// // ...
/// 
/// GtkWidget *window = gtk_application_window_new (app);
/// ```
/// 
/// ## Handling fallback yourself
/// 
/// [A simple example](https://git.gnome.org/browse/gtk+/tree/examples/sunny.c)
/// 
/// The XML format understood by `GtkBuilder` for `GMenuModel` consists
/// of a toplevel `<menu>` element, which contains one or more `<item>`
/// elements. Each `<item>` element contains `<attribute>` and `<link>`
/// elements with a mandatory name attribute. `<link>` elements have the
/// same content model as `<menu>`. Instead of `<link name="submenu>` or
/// `<link name="section">`, you can use `<submenu>` or `<section>`
/// elements.
/// 
/// Attribute values can be translated using gettext, like other `GtkBuilder`
/// content. `<attribute>` elements can be marked for translation with a
/// `translatable="yes"` attribute. It is also possible to specify message
/// context and translator comments, using the context and comments attributes.
/// To make use of this, the `GtkBuilder` must have been given the gettext
/// domain to use.
/// 
/// The following attributes are used when constructing menu items:
/// - "label": a user-visible string to display
/// - "action": the prefixed name of the action to trigger
/// - "target": the parameter to use when activating the action
/// - "icon" and "verb-icon": names of icons that may be displayed
/// - "submenu-action": name of an action that may be used to determine
///      if a submenu can be opened
/// - "hidden-when": a string used to determine when the item will be hidden.
///      Possible values include "action-disabled", "action-missing", "macos-menubar".
/// 
/// The following attributes are used when constructing sections:
/// - "label": a user-visible string to use as section heading
/// - "display-hint": a string used to determine special formatting for the section.
///     Possible values include "horizontal-buttons".
/// - "text-direction": a string used to determine the `GtkTextDirection` to use
///     when "display-hint" is set to "horizontal-buttons". Possible values
///     include "rtl", "ltr", and "none".
/// 
/// The following attributes are used when constructing submenus:
/// - "label": a user-visible string to display
/// - "icon": icon name to display
public protocol ApplicationWindowProtocol: WindowProtocol, GIO.ActionGroupProtocol, GIO.ActionMapProtocol {
        /// Untyped pointer to the underlying `GtkApplicationWindow` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkApplicationWindow` instance.
    var application_window_ptr: UnsafeMutablePointer<GtkApplicationWindow>! { get }

}

/// The `ApplicationWindowRef` type acts as a lightweight Swift reference to an underlying `GtkApplicationWindow` instance.
/// It exposes methods that can operate on this data type through `ApplicationWindowProtocol` conformance.
/// Use `ApplicationWindowRef` only as an `unowned` reference to an existing `GtkApplicationWindow` instance.
///
/// `GtkApplicationWindow` is a `GtkWindow` subclass that offers some
/// extra functionality for better integration with `GtkApplication`
/// features.  Notably, it can handle both the application menu as well
/// as the menubar. See `gtk_application_set_app_menu()` and
/// `gtk_application_set_menubar()`.
/// 
/// This class implements the `GActionGroup` and `GActionMap` interfaces,
/// to let you add window-specific actions that will be exported by the
/// associated `GtkApplication`, together with its application-wide
/// actions.  Window-specific actions are prefixed with the “win.”
/// prefix and application-wide actions are prefixed with the “app.”
/// prefix.  Actions must be addressed with the prefixed name when
/// referring to them from a `GMenuModel`.
/// 
/// Note that widgets that are placed inside a `GtkApplicationWindow`
/// can also activate these actions, if they implement the
/// `GtkActionable` interface.
/// 
/// As with `GtkApplication`, the GDK lock will be acquired when
/// processing actions arriving from other processes and should therefore
/// be held when activating actions locally (if GDK threads are enabled).
/// 
/// The settings `GtkSettings:gtk`-shell-shows-app-menu and
/// `GtkSettings:gtk`-shell-shows-menubar tell GTK+ whether the
/// desktop environment is showing the application menu and menubar
/// models outside the application as part of the desktop shell.
/// For instance, on OS X, both menus will be displayed remotely;
/// on Windows neither will be. gnome-shell (starting with version 3.4)
/// will display the application menu, but not the menubar.
/// 
/// If the desktop environment does not display the menubar, then
/// `GtkApplicationWindow` will automatically show a `GtkMenuBar` for it.
/// This behaviour can be overridden with the `GtkApplicationWindow:show`-menubar
/// property. If the desktop environment does not display the application
/// menu, then it will automatically be included in the menubar or in the
/// windows client-side decorations.
/// 
/// ## A GtkApplicationWindow with a menubar
/// 
/// (C Language Example):
/// ```C
/// GtkApplication *app = gtk_application_new ("org.gtk.test", 0);
/// 
/// GtkBuilder *builder = gtk_builder_new_from_string (
///     "<interface>"
///     "  <menu id='menubar'>"
///     "    <submenu label='_Edit'>"
///     "      <item label='_Copy' action='win.copy'/>"
///     "      <item label='_Paste' action='win.paste'/>"
///     "    </submenu>"
///     "  </menu>"
///     "</interface>",
///     -1);
/// 
/// GMenuModel *menubar = G_MENU_MODEL (gtk_builder_get_object (builder,
///                                                             "menubar"));
/// gtk_application_set_menubar (GTK_APPLICATION (app), menubar);
/// g_object_unref (builder);
/// 
/// // ...
/// 
/// GtkWidget *window = gtk_application_window_new (app);
/// ```
/// 
/// ## Handling fallback yourself
/// 
/// [A simple example](https://git.gnome.org/browse/gtk+/tree/examples/sunny.c)
/// 
/// The XML format understood by `GtkBuilder` for `GMenuModel` consists
/// of a toplevel `<menu>` element, which contains one or more `<item>`
/// elements. Each `<item>` element contains `<attribute>` and `<link>`
/// elements with a mandatory name attribute. `<link>` elements have the
/// same content model as `<menu>`. Instead of `<link name="submenu>` or
/// `<link name="section">`, you can use `<submenu>` or `<section>`
/// elements.
/// 
/// Attribute values can be translated using gettext, like other `GtkBuilder`
/// content. `<attribute>` elements can be marked for translation with a
/// `translatable="yes"` attribute. It is also possible to specify message
/// context and translator comments, using the context and comments attributes.
/// To make use of this, the `GtkBuilder` must have been given the gettext
/// domain to use.
/// 
/// The following attributes are used when constructing menu items:
/// - "label": a user-visible string to display
/// - "action": the prefixed name of the action to trigger
/// - "target": the parameter to use when activating the action
/// - "icon" and "verb-icon": names of icons that may be displayed
/// - "submenu-action": name of an action that may be used to determine
///      if a submenu can be opened
/// - "hidden-when": a string used to determine when the item will be hidden.
///      Possible values include "action-disabled", "action-missing", "macos-menubar".
/// 
/// The following attributes are used when constructing sections:
/// - "label": a user-visible string to use as section heading
/// - "display-hint": a string used to determine special formatting for the section.
///     Possible values include "horizontal-buttons".
/// - "text-direction": a string used to determine the `GtkTextDirection` to use
///     when "display-hint" is set to "horizontal-buttons". Possible values
///     include "rtl", "ltr", and "none".
/// 
/// The following attributes are used when constructing submenus:
/// - "label": a user-visible string to display
/// - "icon": icon name to display
public struct ApplicationWindowRef: ApplicationWindowProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkApplicationWindow` instance.
    /// For type-safe access, use the generated, typed pointer `application_window_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ApplicationWindowRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkApplicationWindow>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkApplicationWindow>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkApplicationWindow>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkApplicationWindow>?) {
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

    /// Reference intialiser for a related type that implements `ApplicationWindowProtocol`
    @inlinable init<T: ApplicationWindowProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ApplicationWindowProtocol>(_ other: T) -> ApplicationWindowRef { ApplicationWindowRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationWindowProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationWindowProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationWindowProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationWindowProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationWindowProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkApplicationWindow`.
    @inlinable init<ApplicationT: ApplicationProtocol>( application: ApplicationT) {
        let rv = gtk_application_window_new(application.application_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `ApplicationWindow` type acts as a reference-counted owner of an underlying `GtkApplicationWindow` instance.
/// It provides the methods that can operate on this data type through `ApplicationWindowProtocol` conformance.
/// Use `ApplicationWindow` as a strong reference or owner of a `GtkApplicationWindow` instance.
///
/// `GtkApplicationWindow` is a `GtkWindow` subclass that offers some
/// extra functionality for better integration with `GtkApplication`
/// features.  Notably, it can handle both the application menu as well
/// as the menubar. See `gtk_application_set_app_menu()` and
/// `gtk_application_set_menubar()`.
/// 
/// This class implements the `GActionGroup` and `GActionMap` interfaces,
/// to let you add window-specific actions that will be exported by the
/// associated `GtkApplication`, together with its application-wide
/// actions.  Window-specific actions are prefixed with the “win.”
/// prefix and application-wide actions are prefixed with the “app.”
/// prefix.  Actions must be addressed with the prefixed name when
/// referring to them from a `GMenuModel`.
/// 
/// Note that widgets that are placed inside a `GtkApplicationWindow`
/// can also activate these actions, if they implement the
/// `GtkActionable` interface.
/// 
/// As with `GtkApplication`, the GDK lock will be acquired when
/// processing actions arriving from other processes and should therefore
/// be held when activating actions locally (if GDK threads are enabled).
/// 
/// The settings `GtkSettings:gtk`-shell-shows-app-menu and
/// `GtkSettings:gtk`-shell-shows-menubar tell GTK+ whether the
/// desktop environment is showing the application menu and menubar
/// models outside the application as part of the desktop shell.
/// For instance, on OS X, both menus will be displayed remotely;
/// on Windows neither will be. gnome-shell (starting with version 3.4)
/// will display the application menu, but not the menubar.
/// 
/// If the desktop environment does not display the menubar, then
/// `GtkApplicationWindow` will automatically show a `GtkMenuBar` for it.
/// This behaviour can be overridden with the `GtkApplicationWindow:show`-menubar
/// property. If the desktop environment does not display the application
/// menu, then it will automatically be included in the menubar or in the
/// windows client-side decorations.
/// 
/// ## A GtkApplicationWindow with a menubar
/// 
/// (C Language Example):
/// ```C
/// GtkApplication *app = gtk_application_new ("org.gtk.test", 0);
/// 
/// GtkBuilder *builder = gtk_builder_new_from_string (
///     "<interface>"
///     "  <menu id='menubar'>"
///     "    <submenu label='_Edit'>"
///     "      <item label='_Copy' action='win.copy'/>"
///     "      <item label='_Paste' action='win.paste'/>"
///     "    </submenu>"
///     "  </menu>"
///     "</interface>",
///     -1);
/// 
/// GMenuModel *menubar = G_MENU_MODEL (gtk_builder_get_object (builder,
///                                                             "menubar"));
/// gtk_application_set_menubar (GTK_APPLICATION (app), menubar);
/// g_object_unref (builder);
/// 
/// // ...
/// 
/// GtkWidget *window = gtk_application_window_new (app);
/// ```
/// 
/// ## Handling fallback yourself
/// 
/// [A simple example](https://git.gnome.org/browse/gtk+/tree/examples/sunny.c)
/// 
/// The XML format understood by `GtkBuilder` for `GMenuModel` consists
/// of a toplevel `<menu>` element, which contains one or more `<item>`
/// elements. Each `<item>` element contains `<attribute>` and `<link>`
/// elements with a mandatory name attribute. `<link>` elements have the
/// same content model as `<menu>`. Instead of `<link name="submenu>` or
/// `<link name="section">`, you can use `<submenu>` or `<section>`
/// elements.
/// 
/// Attribute values can be translated using gettext, like other `GtkBuilder`
/// content. `<attribute>` elements can be marked for translation with a
/// `translatable="yes"` attribute. It is also possible to specify message
/// context and translator comments, using the context and comments attributes.
/// To make use of this, the `GtkBuilder` must have been given the gettext
/// domain to use.
/// 
/// The following attributes are used when constructing menu items:
/// - "label": a user-visible string to display
/// - "action": the prefixed name of the action to trigger
/// - "target": the parameter to use when activating the action
/// - "icon" and "verb-icon": names of icons that may be displayed
/// - "submenu-action": name of an action that may be used to determine
///      if a submenu can be opened
/// - "hidden-when": a string used to determine when the item will be hidden.
///      Possible values include "action-disabled", "action-missing", "macos-menubar".
/// 
/// The following attributes are used when constructing sections:
/// - "label": a user-visible string to use as section heading
/// - "display-hint": a string used to determine special formatting for the section.
///     Possible values include "horizontal-buttons".
/// - "text-direction": a string used to determine the `GtkTextDirection` to use
///     when "display-hint" is set to "horizontal-buttons". Possible values
///     include "rtl", "ltr", and "none".
/// 
/// The following attributes are used when constructing submenus:
/// - "label": a user-visible string to display
/// - "icon": icon name to display
open class ApplicationWindow: Window, ApplicationWindowProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ApplicationWindow` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkApplicationWindow>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ApplicationWindow` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkApplicationWindow>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ApplicationWindow` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ApplicationWindow` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ApplicationWindow` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkApplicationWindow>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ApplicationWindow` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkApplicationWindow>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkApplicationWindow`.
    /// i.e., ownership is transferred to the `ApplicationWindow` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkApplicationWindow>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ApplicationWindowProtocol`
    /// Will retain `GtkApplicationWindow`.
    /// - Parameter other: an instance of a related type that implements `ApplicationWindowProtocol`
    @inlinable public init<T: ApplicationWindowProtocol>(applicationWindow other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationWindowProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationWindowProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationWindowProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationWindowProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationWindowProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationWindowProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationWindowProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationWindowProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkApplicationWindow`.
    @inlinable public init<ApplicationT: ApplicationProtocol>( application: ApplicationT) {
        let rv = gtk_application_window_new(application.application_ptr)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum ApplicationWindowPropertyName: String, PropertyNameProtocol {
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
    /// If this property is `true`, the window will display a menubar
    /// that includes the app menu and menubar, unless these are
    /// shown by the desktop shell. See `gtk_application_set_app_menu()`
    /// and `gtk_application_set_menubar()`.
    /// 
    /// If `false`, the window will not display a menubar, regardless
    /// of whether the desktop shell is showing the menus or not.
    case showMenubar = "show-menubar"
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

public extension ApplicationWindowProtocol {
    /// Bind a `ApplicationWindowPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ApplicationWindowPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a ApplicationWindow property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ApplicationWindowPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a ApplicationWindow property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ApplicationWindowPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: ApplicationWindow has no signals// MARK: ApplicationWindow Class: ApplicationWindowProtocol extension (methods and fields)
public extension ApplicationWindowProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkApplicationWindow` instance.
    @inlinable var application_window_ptr: UnsafeMutablePointer<GtkApplicationWindow>! { return ptr?.assumingMemoryBound(to: GtkApplicationWindow.self) }

    /// Gets the `GtkShortcutsWindow` that has been set up with
    /// a prior call to `gtk_application_window_set_help_overlay()`.
    @inlinable func getHelpOverlay() -> ShortcutsWindowRef! {
        let rv = ShortcutsWindowRef(gconstpointer: gconstpointer(gtk_application_window_get_help_overlay(application_window_ptr)))
        return rv
    }

    /// Returns the unique ID of the window. If the window has not yet been added to
    /// a `GtkApplication`, returns `0`.
    @inlinable func getID() -> Int {
        let rv = Int(gtk_application_window_get_id(application_window_ptr))
        return rv
    }

    /// Returns whether the window will display a menubar for the app menu
    /// and menubar as needed.
    @inlinable func getShowMenubar() -> Bool {
        let rv = ((gtk_application_window_get_show_menubar(application_window_ptr)) != 0)
        return rv
    }

    /// Associates a shortcuts window with the application window, and
    /// sets up an action with the name win.show-help-overlay to present
    /// it.
    /// 
    /// `window` takes resposibility for destroying `help_overlay`.
    @inlinable func set(helpOverlay: ShortcutsWindowRef? = nil) {
        gtk_application_window_set_help_overlay(application_window_ptr, helpOverlay?.shortcuts_window_ptr)
    
    }
    /// Associates a shortcuts window with the application window, and
    /// sets up an action with the name win.show-help-overlay to present
    /// it.
    /// 
    /// `window` takes resposibility for destroying `help_overlay`.
    @inlinable func set<ShortcutsWindowT: ShortcutsWindowProtocol>(helpOverlay: ShortcutsWindowT?) {
        gtk_application_window_set_help_overlay(application_window_ptr, helpOverlay?.shortcuts_window_ptr)
    
    }

    /// Sets whether the window will display a menubar for the app menu
    /// and menubar as needed.
    @inlinable func set(showMenubar: Bool) {
        gtk_application_window_set_show_menubar(application_window_ptr, gboolean((showMenubar) ? 1 : 0))
    
    }
    /// Gets the `GtkShortcutsWindow` that has been set up with
    /// a prior call to `gtk_application_window_set_help_overlay()`.
    @inlinable var helpOverlay: ShortcutsWindowRef! {
        /// Gets the `GtkShortcutsWindow` that has been set up with
        /// a prior call to `gtk_application_window_set_help_overlay()`.
        get {
            let rv = ShortcutsWindowRef(gconstpointer: gconstpointer(gtk_application_window_get_help_overlay(application_window_ptr)))
            return rv
        }
        /// Associates a shortcuts window with the application window, and
        /// sets up an action with the name win.show-help-overlay to present
        /// it.
        /// 
        /// `window` takes resposibility for destroying `help_overlay`.
        nonmutating set {
            gtk_application_window_set_help_overlay(application_window_ptr, UnsafeMutablePointer<GtkShortcutsWindow>(newValue?.shortcuts_window_ptr))
        }
    }

    /// Returns the unique ID of the window. If the window has not yet been added to
    /// a `GtkApplication`, returns `0`.
    @inlinable var id: Int {
        /// Returns the unique ID of the window. If the window has not yet been added to
        /// a `GtkApplication`, returns `0`.
        get {
            let rv = Int(gtk_application_window_get_id(application_window_ptr))
            return rv
        }
    }

    /// Returns whether the window will display a menubar for the app menu
    /// and menubar as needed.
    @inlinable var showMenubar: Bool {
        /// Returns whether the window will display a menubar for the app menu
        /// and menubar as needed.
        get {
            let rv = ((gtk_application_window_get_show_menubar(application_window_ptr)) != 0)
            return rv
        }
        /// Sets whether the window will display a menubar for the app menu
        /// and menubar as needed.
        nonmutating set {
            gtk_application_window_set_show_menubar(application_window_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    @inlinable var parentInstance: GtkWindow {
        get {
            let rv = application_window_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - Arrow Class

/// The `ArrowProtocol` protocol exposes the methods and properties of an underlying `GtkArrow` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Arrow`.
/// Alternatively, use `ArrowRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkArrow should be used to draw simple arrows that need to point in
/// one of the four cardinal directions (up, down, left, or right).  The
/// style of the arrow can be one of shadow in, shadow out, etched in, or
/// etched out.  Note that these directions and style types may be
/// amended in versions of GTK+ to come.
/// 
/// GtkArrow will fill any space alloted to it, but since it is inherited
/// from `GtkMisc`, it can be padded and/or aligned, to fill exactly the
/// space the programmer desires.
/// 
/// Arrows are created with a call to `gtk_arrow_new()`.  The direction or
/// style of an arrow can be changed after creation by using `gtk_arrow_set()`.
/// 
/// GtkArrow has been deprecated; you can simply use a `GtkImage` with a
/// suitable icon name, such as “pan-down-symbolic“. When replacing
/// GtkArrow by an image, pay attention to the fact that GtkArrow is
/// doing automatic flipping between `GTK_ARROW_LEFT` and `GTK_ARROW_RIGHT`,
/// depending on the text direction. To get the same effect with an image,
/// use the icon names “pan-start-symbolic“ and “pan-end-symbolic“, which
/// react to the text direction.
public protocol ArrowProtocol: MiscProtocol {
        /// Untyped pointer to the underlying `GtkArrow` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkArrow` instance.
    var arrow_ptr: UnsafeMutablePointer<GtkArrow>! { get }

}

/// The `ArrowRef` type acts as a lightweight Swift reference to an underlying `GtkArrow` instance.
/// It exposes methods that can operate on this data type through `ArrowProtocol` conformance.
/// Use `ArrowRef` only as an `unowned` reference to an existing `GtkArrow` instance.
///
/// GtkArrow should be used to draw simple arrows that need to point in
/// one of the four cardinal directions (up, down, left, or right).  The
/// style of the arrow can be one of shadow in, shadow out, etched in, or
/// etched out.  Note that these directions and style types may be
/// amended in versions of GTK+ to come.
/// 
/// GtkArrow will fill any space alloted to it, but since it is inherited
/// from `GtkMisc`, it can be padded and/or aligned, to fill exactly the
/// space the programmer desires.
/// 
/// Arrows are created with a call to `gtk_arrow_new()`.  The direction or
/// style of an arrow can be changed after creation by using `gtk_arrow_set()`.
/// 
/// GtkArrow has been deprecated; you can simply use a `GtkImage` with a
/// suitable icon name, such as “pan-down-symbolic“. When replacing
/// GtkArrow by an image, pay attention to the fact that GtkArrow is
/// doing automatic flipping between `GTK_ARROW_LEFT` and `GTK_ARROW_RIGHT`,
/// depending on the text direction. To get the same effect with an image,
/// use the icon names “pan-start-symbolic“ and “pan-end-symbolic“, which
/// react to the text direction.
public struct ArrowRef: ArrowProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkArrow` instance.
    /// For type-safe access, use the generated, typed pointer `arrow_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ArrowRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkArrow>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkArrow>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkArrow>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkArrow>?) {
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

    /// Reference intialiser for a related type that implements `ArrowProtocol`
    @inlinable init<T: ArrowProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ArrowProtocol>(_ other: T) -> ArrowRef { ArrowRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkArrow` widget.
    ///
    /// **new is deprecated:**
    /// Use a #GtkImage with a suitable icon.
    @available(*, deprecated)
    @inlinable init( arrowType: GtkArrowType, shadowType: GtkShadowType) {
        let rv = gtk_arrow_new(arrowType, shadowType)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `Arrow` type acts as a reference-counted owner of an underlying `GtkArrow` instance.
/// It provides the methods that can operate on this data type through `ArrowProtocol` conformance.
/// Use `Arrow` as a strong reference or owner of a `GtkArrow` instance.
///
/// GtkArrow should be used to draw simple arrows that need to point in
/// one of the four cardinal directions (up, down, left, or right).  The
/// style of the arrow can be one of shadow in, shadow out, etched in, or
/// etched out.  Note that these directions and style types may be
/// amended in versions of GTK+ to come.
/// 
/// GtkArrow will fill any space alloted to it, but since it is inherited
/// from `GtkMisc`, it can be padded and/or aligned, to fill exactly the
/// space the programmer desires.
/// 
/// Arrows are created with a call to `gtk_arrow_new()`.  The direction or
/// style of an arrow can be changed after creation by using `gtk_arrow_set()`.
/// 
/// GtkArrow has been deprecated; you can simply use a `GtkImage` with a
/// suitable icon name, such as “pan-down-symbolic“. When replacing
/// GtkArrow by an image, pay attention to the fact that GtkArrow is
/// doing automatic flipping between `GTK_ARROW_LEFT` and `GTK_ARROW_RIGHT`,
/// depending on the text direction. To get the same effect with an image,
/// use the icon names “pan-start-symbolic“ and “pan-end-symbolic“, which
/// react to the text direction.
open class Arrow: Misc, ArrowProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Arrow` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkArrow>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Arrow` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkArrow>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Arrow` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Arrow` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Arrow` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkArrow>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Arrow` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkArrow>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkArrow`.
    /// i.e., ownership is transferred to the `Arrow` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkArrow>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ArrowProtocol`
    /// Will retain `GtkArrow`.
    /// - Parameter other: an instance of a related type that implements `ArrowProtocol`
    @inlinable public init<T: ArrowProtocol>(arrow other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkArrow` widget.
    ///
    /// **new is deprecated:**
    /// Use a #GtkImage with a suitable icon.
    @available(*, deprecated)
    @inlinable public init( arrowType: GtkArrowType, shadowType: GtkShadowType) {
        let rv = gtk_arrow_new(arrowType, shadowType)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum ArrowPropertyName: String, PropertyNameProtocol {
    case appPaintable = "app-paintable"
    case arrowType = "arrow-type"
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
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    case shadowType = "shadow-type"
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
    /// The horizontal alignment. A value of 0.0 means left alignment (or right
    /// on RTL locales); a value of 1.0 means right alignment (or left on RTL
    /// locales).
    ///
    /// **xalign is deprecated:**
    /// Use gtk_widget_set_halign() instead. If you are using
    ///   #GtkLabel, use #GtkLabel:xalign instead.
    case xalign = "xalign"
    /// The amount of space to add on the left and right of the widget, in
    /// pixels.
    ///
    /// **xpad is deprecated:**
    /// Use gtk_widget_set_margin_start() and
    ///   gtk_widget_set_margin_end() instead
    case xpad = "xpad"
    /// The vertical alignment. A value of 0.0 means top alignment;
    /// a value of 1.0 means bottom alignment.
    ///
    /// **yalign is deprecated:**
    /// Use gtk_widget_set_valign() instead. If you are using
    ///   #GtkLabel, use #GtkLabel:yalign instead.
    case yalign = "yalign"
    /// The amount of space to add on the top and bottom of the widget, in
    /// pixels.
    ///
    /// **ypad is deprecated:**
    /// Use gtk_widget_set_margin_top() and
    ///   gtk_widget_set_margin_bottom() instead
    case ypad = "ypad"
}

public extension ArrowProtocol {
    /// Bind a `ArrowPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ArrowPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Arrow property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ArrowPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Arrow property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ArrowPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Arrow has no signals// MARK: Arrow Class: ArrowProtocol extension (methods and fields)
public extension ArrowProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkArrow` instance.
    @inlinable var arrow_ptr: UnsafeMutablePointer<GtkArrow>! { return ptr?.assumingMemoryBound(to: GtkArrow.self) }

    /// Sets the direction and style of the `GtkArrow`, `arrow`.
    ///
    /// **set is deprecated:**
    /// Use a #GtkImage with a suitable icon.
    @available(*, deprecated)
    @inlinable func set(arrowType: GtkArrowType, shadowType: GtkShadowType) {
        gtk_arrow_set(arrow_ptr, arrowType, shadowType)
    
    }

    @inlinable var misc: GtkMisc {
        get {
            let rv = arrow_ptr.pointee.misc
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - ArrowAccessible Class

/// The `ArrowAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkArrowAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ArrowAccessible`.
/// Alternatively, use `ArrowAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ArrowAccessibleProtocol: WidgetAccessibleProtocol, Atk.ImageProtocol {
        /// Untyped pointer to the underlying `GtkArrowAccessible` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkArrowAccessible` instance.
    var arrow_accessible_ptr: UnsafeMutablePointer<GtkArrowAccessible>! { get }

}

/// The `ArrowAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkArrowAccessible` instance.
/// It exposes methods that can operate on this data type through `ArrowAccessibleProtocol` conformance.
/// Use `ArrowAccessibleRef` only as an `unowned` reference to an existing `GtkArrowAccessible` instance.
///

public struct ArrowAccessibleRef: ArrowAccessibleProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkArrowAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `arrow_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ArrowAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkArrowAccessible>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkArrowAccessible>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkArrowAccessible>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkArrowAccessible>?) {
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

    /// Reference intialiser for a related type that implements `ArrowAccessibleProtocol`
    @inlinable init<T: ArrowAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ArrowAccessibleProtocol>(_ other: T) -> ArrowAccessibleRef { ArrowAccessibleRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowAccessibleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowAccessibleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowAccessibleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowAccessibleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowAccessibleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ArrowAccessible` type acts as a reference-counted owner of an underlying `GtkArrowAccessible` instance.
/// It provides the methods that can operate on this data type through `ArrowAccessibleProtocol` conformance.
/// Use `ArrowAccessible` as a strong reference or owner of a `GtkArrowAccessible` instance.
///

open class ArrowAccessible: WidgetAccessible, ArrowAccessibleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ArrowAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkArrowAccessible>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ArrowAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkArrowAccessible>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ArrowAccessible` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ArrowAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ArrowAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkArrowAccessible>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ArrowAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkArrowAccessible>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkArrowAccessible`.
    /// i.e., ownership is transferred to the `ArrowAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkArrowAccessible>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ArrowAccessibleProtocol`
    /// Will retain `GtkArrowAccessible`.
    /// - Parameter other: an instance of a related type that implements `ArrowAccessibleProtocol`
    @inlinable public init<T: ArrowAccessibleProtocol>(arrowAccessible other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowAccessibleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowAccessibleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowAccessibleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowAccessibleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrowAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum ArrowAccessiblePropertyName: String, PropertyNameProtocol {
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

public extension ArrowAccessibleProtocol {
    /// Bind a `ArrowAccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ArrowAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a ArrowAccessible property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ArrowAccessiblePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a ArrowAccessible property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ArrowAccessiblePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: ArrowAccessible has no signals// MARK: ArrowAccessible Class: ArrowAccessibleProtocol extension (methods and fields)
public extension ArrowAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkArrowAccessible` instance.
    @inlinable var arrow_accessible_ptr: UnsafeMutablePointer<GtkArrowAccessible>! { return ptr?.assumingMemoryBound(to: GtkArrowAccessible.self) }


    @inlinable var parent: GtkWidgetAccessible {
        get {
            let rv = arrow_accessible_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - AspectFrame Class

/// The `AspectFrameProtocol` protocol exposes the methods and properties of an underlying `GtkAspectFrame` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AspectFrame`.
/// Alternatively, use `AspectFrameRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkAspectFrame` is useful when you want
/// pack a widget so that it can resize but always retains
/// the same aspect ratio. For instance, one might be
/// drawing a small preview of a larger image. `GtkAspectFrame`
/// derives from `GtkFrame`, so it can draw a label and
/// a frame around the child. The frame will be
/// “shrink-wrapped” to the size of the child.
/// 
/// # CSS nodes
/// 
/// GtkAspectFrame uses a CSS node with name frame.
public protocol AspectFrameProtocol: FrameProtocol {
        /// Untyped pointer to the underlying `GtkAspectFrame` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkAspectFrame` instance.
    var aspect_frame_ptr: UnsafeMutablePointer<GtkAspectFrame>! { get }

}

/// The `AspectFrameRef` type acts as a lightweight Swift reference to an underlying `GtkAspectFrame` instance.
/// It exposes methods that can operate on this data type through `AspectFrameProtocol` conformance.
/// Use `AspectFrameRef` only as an `unowned` reference to an existing `GtkAspectFrame` instance.
///
/// The `GtkAspectFrame` is useful when you want
/// pack a widget so that it can resize but always retains
/// the same aspect ratio. For instance, one might be
/// drawing a small preview of a larger image. `GtkAspectFrame`
/// derives from `GtkFrame`, so it can draw a label and
/// a frame around the child. The frame will be
/// “shrink-wrapped” to the size of the child.
/// 
/// # CSS nodes
/// 
/// GtkAspectFrame uses a CSS node with name frame.
public struct AspectFrameRef: AspectFrameProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkAspectFrame` instance.
    /// For type-safe access, use the generated, typed pointer `aspect_frame_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AspectFrameRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkAspectFrame>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkAspectFrame>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkAspectFrame>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkAspectFrame>?) {
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

    /// Reference intialiser for a related type that implements `AspectFrameProtocol`
    @inlinable init<T: AspectFrameProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: AspectFrameProtocol>(_ other: T) -> AspectFrameRef { AspectFrameRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AspectFrameProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AspectFrameProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AspectFrameProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AspectFrameProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AspectFrameProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Create a new `GtkAspectFrame`.
    @inlinable init( label: UnsafePointer<gchar>? = nil, xalign: Double, yalign: Double, ratio: Double, obeyChild: Bool) {
        let rv = gtk_aspect_frame_new(label, gfloat(xalign), gfloat(yalign), gfloat(ratio), gboolean((obeyChild) ? 1 : 0))
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `AspectFrame` type acts as a reference-counted owner of an underlying `GtkAspectFrame` instance.
/// It provides the methods that can operate on this data type through `AspectFrameProtocol` conformance.
/// Use `AspectFrame` as a strong reference or owner of a `GtkAspectFrame` instance.
///
/// The `GtkAspectFrame` is useful when you want
/// pack a widget so that it can resize but always retains
/// the same aspect ratio. For instance, one might be
/// drawing a small preview of a larger image. `GtkAspectFrame`
/// derives from `GtkFrame`, so it can draw a label and
/// a frame around the child. The frame will be
/// “shrink-wrapped” to the size of the child.
/// 
/// # CSS nodes
/// 
/// GtkAspectFrame uses a CSS node with name frame.
open class AspectFrame: Frame, AspectFrameProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AspectFrame` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkAspectFrame>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AspectFrame` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkAspectFrame>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AspectFrame` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AspectFrame` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AspectFrame` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkAspectFrame>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AspectFrame` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkAspectFrame>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkAspectFrame`.
    /// i.e., ownership is transferred to the `AspectFrame` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkAspectFrame>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `AspectFrameProtocol`
    /// Will retain `GtkAspectFrame`.
    /// - Parameter other: an instance of a related type that implements `AspectFrameProtocol`
    @inlinable public init<T: AspectFrameProtocol>(aspectFrame other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AspectFrameProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AspectFrameProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AspectFrameProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AspectFrameProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AspectFrameProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AspectFrameProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AspectFrameProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AspectFrameProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Create a new `GtkAspectFrame`.
    @inlinable public init( label: UnsafePointer<gchar>? = nil, xalign: Double, yalign: Double, ratio: Double, obeyChild: Bool) {
        let rv = gtk_aspect_frame_new(label, gfloat(xalign), gfloat(yalign), gfloat(ratio), gboolean((obeyChild) ? 1 : 0))
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum AspectFramePropertyName: String, PropertyNameProtocol {
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
    case label = "label"
    case labelWidget = "label-widget"
    case labelXalign = "label-xalign"
    case labelYalign = "label-yalign"
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
    case obeyChild = "obey-child"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case ratio = "ratio"
    case receivesDefault = "receives-default"
    case resizeMode = "resize-mode"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    case shadowType = "shadow-type"
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
    case xalign = "xalign"
    case yalign = "yalign"
}

public extension AspectFrameProtocol {
    /// Bind a `AspectFramePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: AspectFramePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a AspectFrame property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: AspectFramePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a AspectFrame property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: AspectFramePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: AspectFrame has no signals// MARK: AspectFrame Class: AspectFrameProtocol extension (methods and fields)
public extension AspectFrameProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAspectFrame` instance.
    @inlinable var aspect_frame_ptr: UnsafeMutablePointer<GtkAspectFrame>! { return ptr?.assumingMemoryBound(to: GtkAspectFrame.self) }

    /// Set parameters for an existing `GtkAspectFrame`.
    @inlinable func set(xalign: Double, yalign: Double, ratio: Double, obeyChild: Bool) {
        gtk_aspect_frame_set(aspect_frame_ptr, gfloat(xalign), gfloat(yalign), gfloat(ratio), gboolean((obeyChild) ? 1 : 0))
    
    }

    @inlinable var frame: GtkFrame {
        get {
            let rv = aspect_frame_ptr.pointee.frame
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - Assistant Class

/// The `AssistantProtocol` protocol exposes the methods and properties of an underlying `GtkAssistant` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Assistant`.
/// Alternatively, use `AssistantRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GtkAssistant` is a widget used to represent a generally complex
/// operation splitted in several steps, guiding the user through its
/// pages and controlling the page flow to collect the necessary data.
/// 
/// The design of GtkAssistant is that it controls what buttons to show
/// and to make sensitive, based on what it knows about the page sequence
/// and the [type](#GtkAssistantPageType) of each page,
/// in addition to state information like the page
/// [completion](#gtk-assistant-set-page-complete)
/// and [committed](#gtk-assistant-commit) status.
/// 
/// If you have a case that doesn’t quite fit in `GtkAssistants` way of
/// handling buttons, you can use the `GTK_ASSISTANT_PAGE_CUSTOM` page
/// type and handle buttons yourself.
/// 
/// # GtkAssistant as GtkBuildable
/// 
/// The GtkAssistant implementation of the `GtkBuildable` interface
/// exposes the `action_area` as internal children with the name
/// “action_area”.
/// 
/// To add pages to an assistant in `GtkBuilder`, simply add it as a
/// child to the GtkAssistant object, and set its child properties
/// as necessary.
/// 
/// # CSS nodes
/// 
/// GtkAssistant has a single CSS node with the name assistant.
public protocol AssistantProtocol: WindowProtocol {
        /// Untyped pointer to the underlying `GtkAssistant` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkAssistant` instance.
    var assistant_ptr: UnsafeMutablePointer<GtkAssistant>! { get }

}

/// The `AssistantRef` type acts as a lightweight Swift reference to an underlying `GtkAssistant` instance.
/// It exposes methods that can operate on this data type through `AssistantProtocol` conformance.
/// Use `AssistantRef` only as an `unowned` reference to an existing `GtkAssistant` instance.
///
/// A `GtkAssistant` is a widget used to represent a generally complex
/// operation splitted in several steps, guiding the user through its
/// pages and controlling the page flow to collect the necessary data.
/// 
/// The design of GtkAssistant is that it controls what buttons to show
/// and to make sensitive, based on what it knows about the page sequence
/// and the [type](#GtkAssistantPageType) of each page,
/// in addition to state information like the page
/// [completion](#gtk-assistant-set-page-complete)
/// and [committed](#gtk-assistant-commit) status.
/// 
/// If you have a case that doesn’t quite fit in `GtkAssistants` way of
/// handling buttons, you can use the `GTK_ASSISTANT_PAGE_CUSTOM` page
/// type and handle buttons yourself.
/// 
/// # GtkAssistant as GtkBuildable
/// 
/// The GtkAssistant implementation of the `GtkBuildable` interface
/// exposes the `action_area` as internal children with the name
/// “action_area”.
/// 
/// To add pages to an assistant in `GtkBuilder`, simply add it as a
/// child to the GtkAssistant object, and set its child properties
/// as necessary.
/// 
/// # CSS nodes
/// 
/// GtkAssistant has a single CSS node with the name assistant.
public struct AssistantRef: AssistantProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkAssistant` instance.
    /// For type-safe access, use the generated, typed pointer `assistant_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AssistantRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkAssistant>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkAssistant>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkAssistant>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkAssistant>?) {
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

    /// Reference intialiser for a related type that implements `AssistantProtocol`
    @inlinable init<T: AssistantProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: AssistantProtocol>(_ other: T) -> AssistantRef { AssistantRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AssistantProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AssistantProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AssistantProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AssistantProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AssistantProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkAssistant`.
    @inlinable init() {
        let rv = gtk_assistant_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `Assistant` type acts as a reference-counted owner of an underlying `GtkAssistant` instance.
/// It provides the methods that can operate on this data type through `AssistantProtocol` conformance.
/// Use `Assistant` as a strong reference or owner of a `GtkAssistant` instance.
///
/// A `GtkAssistant` is a widget used to represent a generally complex
/// operation splitted in several steps, guiding the user through its
/// pages and controlling the page flow to collect the necessary data.
/// 
/// The design of GtkAssistant is that it controls what buttons to show
/// and to make sensitive, based on what it knows about the page sequence
/// and the [type](#GtkAssistantPageType) of each page,
/// in addition to state information like the page
/// [completion](#gtk-assistant-set-page-complete)
/// and [committed](#gtk-assistant-commit) status.
/// 
/// If you have a case that doesn’t quite fit in `GtkAssistants` way of
/// handling buttons, you can use the `GTK_ASSISTANT_PAGE_CUSTOM` page
/// type and handle buttons yourself.
/// 
/// # GtkAssistant as GtkBuildable
/// 
/// The GtkAssistant implementation of the `GtkBuildable` interface
/// exposes the `action_area` as internal children with the name
/// “action_area”.
/// 
/// To add pages to an assistant in `GtkBuilder`, simply add it as a
/// child to the GtkAssistant object, and set its child properties
/// as necessary.
/// 
/// # CSS nodes
/// 
/// GtkAssistant has a single CSS node with the name assistant.
open class Assistant: Window, AssistantProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Assistant` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkAssistant>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Assistant` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkAssistant>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Assistant` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Assistant` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Assistant` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkAssistant>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Assistant` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkAssistant>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkAssistant`.
    /// i.e., ownership is transferred to the `Assistant` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkAssistant>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `AssistantProtocol`
    /// Will retain `GtkAssistant`.
    /// - Parameter other: an instance of a related type that implements `AssistantProtocol`
    @inlinable public init<T: AssistantProtocol>(assistant other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AssistantProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AssistantProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AssistantProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AssistantProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AssistantProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AssistantProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AssistantProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AssistantProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkAssistant`.
    @inlinable public init() {
        let rv = gtk_assistant_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum AssistantPropertyName: String, PropertyNameProtocol {
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
    /// `true` if the assistant uses a `GtkHeaderBar` for action buttons
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

public extension AssistantProtocol {
    /// Bind a `AssistantPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: AssistantPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Assistant property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: AssistantPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Assistant property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: AssistantPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of Assistant
public extension AssistantProtocol {
    /// The `apply` signal is emitted when the apply button is clicked.
    /// 
    /// The default behavior of the `GtkAssistant` is to switch to the page
    /// after the current page, unless the current page is the last one.
    /// 
    /// A handler for the `apply` signal should carry out the actions for
    /// which the wizard has collected data. If the action takes a long time
    /// to complete, you might consider putting a page of type
    /// `GTK_ASSISTANT_PAGE_PROGRESS` after the confirmation page and handle
    /// this operation within the `GtkAssistant::prepare` signal of the progress
    /// page.
    /// - Note: Representation of signal named `apply`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onApply(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AssistantRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<AssistantRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AssistantRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "apply", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `cancel` signal is emitted when then the cancel button is clicked.
    /// - Note: Representation of signal named `cancel`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onCancel(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AssistantRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<AssistantRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AssistantRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "cancel", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `close` signal is emitted either when the close button of
    /// a summary page is clicked, or when the apply button in the last
    /// page in the flow (of type `GTK_ASSISTANT_PAGE_CONFIRM`) is clicked.
    /// - Note: Representation of signal named `close`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onClose(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AssistantRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<AssistantRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AssistantRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "close", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// - Note: Representation of signal named `escape`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onEscape(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AssistantRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<AssistantRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AssistantRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "escape", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `prepare` signal is emitted when a new page is set as the
    /// assistant's current page, before making the new page visible.
    /// 
    /// A handler for this signal can do any preparations which are
    /// necessary before showing `page`.
    /// - Note: Representation of signal named `prepare`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter page: the current page
    @discardableResult
    func onPrepare(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AssistantRef, _ page: WidgetRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<AssistantRef, WidgetRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AssistantRef(raw: unownedSelf), WidgetRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "prepare", 
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
    /// - Note: Representation of signal named `notify::use-header-bar`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyUseHeaderBar(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: AssistantRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<AssistantRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(AssistantRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::use-header-bar", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: Assistant Class: AssistantProtocol extension (methods and fields)
public extension AssistantProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAssistant` instance.
    @inlinable var assistant_ptr: UnsafeMutablePointer<GtkAssistant>! { return ptr?.assumingMemoryBound(to: GtkAssistant.self) }

    /// Adds a widget to the action area of a `GtkAssistant`.
    @inlinable func addActionWidget<WidgetT: WidgetProtocol>(child: WidgetT) {
        gtk_assistant_add_action_widget(assistant_ptr, child.widget_ptr)
    
    }

    /// Appends a page to the `assistant`.
    @inlinable func append<WidgetT: WidgetProtocol>(page: WidgetT) -> Int {
        let rv = Int(gtk_assistant_append_page(assistant_ptr, page.widget_ptr))
        return rv
    }

    /// Erases the visited page history so the back button is not
    /// shown on the current page, and removes the cancel button
    /// from subsequent pages.
    /// 
    /// Use this when the information provided up to the current
    /// page is hereafter deemed permanent and cannot be modified
    /// or undone. For example, showing a progress page to track
    /// a long-running, unreversible operation after the user has
    /// clicked apply on a confirmation page.
    @inlinable func commit() {
        gtk_assistant_commit(assistant_ptr)
    
    }

    /// Returns the page number of the current page.
    @inlinable func getCurrentPage() -> Int {
        let rv = Int(gtk_assistant_get_current_page(assistant_ptr))
        return rv
    }

    /// Returns the number of pages in the `assistant`
    @inlinable func getNPages() -> Int {
        let rv = Int(gtk_assistant_get_n_pages(assistant_ptr))
        return rv
    }

    /// Returns the child widget contained in page number `page_num`.
    @inlinable func getNthPage(pageNum: Int) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_assistant_get_nth_page(assistant_ptr, gint(pageNum)))) else { return nil }
        return rv
    }

    /// Gets whether `page` is complete.
    @inlinable func getPageComplete<WidgetT: WidgetProtocol>(page: WidgetT) -> Bool {
        let rv = ((gtk_assistant_get_page_complete(assistant_ptr, page.widget_ptr)) != 0)
        return rv
    }

    /// Gets whether page has padding.
    @inlinable func getPageHasPadding<WidgetT: WidgetProtocol>(page: WidgetT) -> Bool {
        let rv = ((gtk_assistant_get_page_has_padding(assistant_ptr, page.widget_ptr)) != 0)
        return rv
    }

    /// Gets the header image for `page`.
    ///
    /// **get_page_header_image is deprecated:**
    /// Since GTK+ 3.2, a header is no longer shown;
    ///     add your header decoration to the page content instead.
    @available(*, deprecated)
    @inlinable func getPageHeaderImage<WidgetT: WidgetProtocol>(page: WidgetT) -> PixbufRef! {
        let rv = PixbufRef(gconstpointer: gconstpointer(gtk_assistant_get_page_header_image(assistant_ptr, page.widget_ptr)))
        return rv
    }

    /// Gets the side image for `page`.
    ///
    /// **get_page_side_image is deprecated:**
    /// Since GTK+ 3.2, sidebar images are not
    ///     shown anymore.
    @available(*, deprecated)
    @inlinable func getPageSideImage<WidgetT: WidgetProtocol>(page: WidgetT) -> PixbufRef! {
        let rv = PixbufRef(gconstpointer: gconstpointer(gtk_assistant_get_page_side_image(assistant_ptr, page.widget_ptr)))
        return rv
    }

    /// Gets the title for `page`.
    @inlinable func getPageTitle<WidgetT: WidgetProtocol>(page: WidgetT) -> String! {
        let rv = gtk_assistant_get_page_title(assistant_ptr, page.widget_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the page type of `page`.
    @inlinable func getPageType<WidgetT: WidgetProtocol>(page: WidgetT) -> GtkAssistantPageType {
        let rv = gtk_assistant_get_page_type(assistant_ptr, page.widget_ptr)
        return rv
    }

    /// Inserts a page in the `assistant` at a given position.
    @inlinable func insert<WidgetT: WidgetProtocol>(page: WidgetT, position: Int) -> Int {
        let rv = Int(gtk_assistant_insert_page(assistant_ptr, page.widget_ptr, gint(position)))
        return rv
    }

    /// Navigate to the next page.
    /// 
    /// It is a programming error to call this function when
    /// there is no next page.
    /// 
    /// This function is for use when creating pages of the
    /// `GTK_ASSISTANT_PAGE_CUSTOM` type.
    @inlinable func nextPage() {
        gtk_assistant_next_page(assistant_ptr)
    
    }

    /// Prepends a page to the `assistant`.
    @inlinable func prepend<WidgetT: WidgetProtocol>(page: WidgetT) -> Int {
        let rv = Int(gtk_assistant_prepend_page(assistant_ptr, page.widget_ptr))
        return rv
    }

    /// Navigate to the previous visited page.
    /// 
    /// It is a programming error to call this function when
    /// no previous page is available.
    /// 
    /// This function is for use when creating pages of the
    /// `GTK_ASSISTANT_PAGE_CUSTOM` type.
    @inlinable func previousPage() {
        gtk_assistant_previous_page(assistant_ptr)
    
    }

    /// Removes a widget from the action area of a `GtkAssistant`.
    @inlinable func removeActionWidget<WidgetT: WidgetProtocol>(child: WidgetT) {
        gtk_assistant_remove_action_widget(assistant_ptr, child.widget_ptr)
    
    }

    /// Removes the `page_num`’s page from `assistant`.
    @inlinable func removePage(pageNum: Int) {
        gtk_assistant_remove_page(assistant_ptr, gint(pageNum))
    
    }

    /// Switches the page to `page_num`.
    /// 
    /// Note that this will only be necessary in custom buttons,
    /// as the `assistant` flow can be set with
    /// `gtk_assistant_set_forward_page_func()`.
    @inlinable func setCurrentPage(pageNum: Int) {
        gtk_assistant_set_current_page(assistant_ptr, gint(pageNum))
    
    }

    /// Sets the page forwarding function to be `page_func`.
    /// 
    /// This function will be used to determine what will be
    /// the next page when the user presses the forward button.
    /// Setting `page_func` to `nil` will make the assistant to
    /// use the default forward function, which just goes to the
    /// next visible page.
    @inlinable func setForward(pageFunc: GtkAssistantPageFunc? = nil, data: gpointer! = nil, destroy: GDestroyNotify?) {
        gtk_assistant_set_forward_page_func(assistant_ptr, pageFunc, data, destroy)
    
    }

    /// Sets whether `page` contents are complete.
    /// 
    /// This will make `assistant` update the buttons state
    /// to be able to continue the task.
    @inlinable func setPageComplete<WidgetT: WidgetProtocol>(page: WidgetT, complete: Bool) {
        gtk_assistant_set_page_complete(assistant_ptr, page.widget_ptr, gboolean((complete) ? 1 : 0))
    
    }

    /// Sets whether the assistant is adding padding around
    /// the page.
    @inlinable func setPageHasPadding<WidgetT: WidgetProtocol>(page: WidgetT, hasPadding: Bool) {
        gtk_assistant_set_page_has_padding(assistant_ptr, page.widget_ptr, gboolean((hasPadding) ? 1 : 0))
    
    }

    /// Sets a header image for `page`.
    ///
    /// **set_page_header_image is deprecated:**
    /// Since GTK+ 3.2, a header is no longer shown;
    ///     add your header decoration to the page content instead.
    @available(*, deprecated)
    @inlinable func setPageHeaderImage<WidgetT: WidgetProtocol>(page: WidgetT, pixbuf: PixbufRef? = nil) {
        gtk_assistant_set_page_header_image(assistant_ptr, page.widget_ptr, pixbuf?.pixbuf_ptr)
    
    }
    /// Sets a header image for `page`.
    ///
    /// **set_page_header_image is deprecated:**
    /// Since GTK+ 3.2, a header is no longer shown;
    ///     add your header decoration to the page content instead.
    @available(*, deprecated)
    @inlinable func setPageHeaderImage<PixbufT: PixbufProtocol, WidgetT: WidgetProtocol>(page: WidgetT, pixbuf: PixbufT?) {
        gtk_assistant_set_page_header_image(assistant_ptr, page.widget_ptr, pixbuf?.pixbuf_ptr)
    
    }

    /// Sets a side image for `page`.
    /// 
    /// This image used to be displayed in the side area of the assistant
    /// when `page` is the current page.
    ///
    /// **set_page_side_image is deprecated:**
    /// Since GTK+ 3.2, sidebar images are not
    ///     shown anymore.
    @available(*, deprecated)
    @inlinable func setPageSideImage<WidgetT: WidgetProtocol>(page: WidgetT, pixbuf: PixbufRef? = nil) {
        gtk_assistant_set_page_side_image(assistant_ptr, page.widget_ptr, pixbuf?.pixbuf_ptr)
    
    }
    /// Sets a side image for `page`.
    /// 
    /// This image used to be displayed in the side area of the assistant
    /// when `page` is the current page.
    ///
    /// **set_page_side_image is deprecated:**
    /// Since GTK+ 3.2, sidebar images are not
    ///     shown anymore.
    @available(*, deprecated)
    @inlinable func setPageSideImage<PixbufT: PixbufProtocol, WidgetT: WidgetProtocol>(page: WidgetT, pixbuf: PixbufT?) {
        gtk_assistant_set_page_side_image(assistant_ptr, page.widget_ptr, pixbuf?.pixbuf_ptr)
    
    }

    /// Sets a title for `page`.
    /// 
    /// The title is displayed in the header area of the assistant
    /// when `page` is the current page.
    @inlinable func setPageTitle<WidgetT: WidgetProtocol>(page: WidgetT, title: UnsafePointer<gchar>!) {
        gtk_assistant_set_page_title(assistant_ptr, page.widget_ptr, title)
    
    }

    /// Sets the page type for `page`.
    /// 
    /// The page type determines the page behavior in the `assistant`.
    @inlinable func setPageType<WidgetT: WidgetProtocol>(page: WidgetT, type: GtkAssistantPageType) {
        gtk_assistant_set_page_type(assistant_ptr, page.widget_ptr, type)
    
    }

    /// Forces `assistant` to recompute the buttons state.
    /// 
    /// GTK+ automatically takes care of this in most situations,
    /// e.g. when the user goes to a different page, or when the
    /// visibility or completeness of a page changes.
    /// 
    /// One situation where it can be necessary to call this
    /// function is when changing a value on the current page
    /// affects the future page flow of the assistant.
    @inlinable func updateButtonsState() {
        gtk_assistant_update_buttons_state(assistant_ptr)
    
    }
    /// Returns the page number of the current page.
    @inlinable var currentPage: Int {
        /// Returns the page number of the current page.
        get {
            let rv = Int(gtk_assistant_get_current_page(assistant_ptr))
            return rv
        }
        /// Switches the page to `page_num`.
        /// 
        /// Note that this will only be necessary in custom buttons,
        /// as the `assistant` flow can be set with
        /// `gtk_assistant_set_forward_page_func()`.
        nonmutating set {
            gtk_assistant_set_current_page(assistant_ptr, gint(newValue))
        }
    }

    /// Returns the number of pages in the `assistant`
    @inlinable var nPages: Int {
        /// Returns the number of pages in the `assistant`
        get {
            let rv = Int(gtk_assistant_get_n_pages(assistant_ptr))
            return rv
        }
    }

    @inlinable var parent: GtkWindow {
        get {
            let rv = assistant_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - Bin Class

/// The `BinProtocol` protocol exposes the methods and properties of an underlying `GtkBin` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Bin`.
/// Alternatively, use `BinRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkBin` widget is a container with just one child.
/// It is not very useful itself, but it is useful for deriving subclasses,
/// since it provides common code needed for handling a single child widget.
/// 
/// Many GTK+ widgets are subclasses of `GtkBin`, including `GtkWindow`,
/// `GtkButton`, `GtkFrame`, `GtkHandleBox` or `GtkScrolledWindow`.
public protocol BinProtocol: ContainerProtocol {
        /// Untyped pointer to the underlying `GtkBin` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkBin` instance.
    var bin_ptr: UnsafeMutablePointer<GtkBin>! { get }

}

/// The `BinRef` type acts as a lightweight Swift reference to an underlying `GtkBin` instance.
/// It exposes methods that can operate on this data type through `BinProtocol` conformance.
/// Use `BinRef` only as an `unowned` reference to an existing `GtkBin` instance.
///
/// The `GtkBin` widget is a container with just one child.
/// It is not very useful itself, but it is useful for deriving subclasses,
/// since it provides common code needed for handling a single child widget.
/// 
/// Many GTK+ widgets are subclasses of `GtkBin`, including `GtkWindow`,
/// `GtkButton`, `GtkFrame`, `GtkHandleBox` or `GtkScrolledWindow`.
public struct BinRef: BinProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkBin` instance.
    /// For type-safe access, use the generated, typed pointer `bin_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BinRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkBin>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkBin>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkBin>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkBin>?) {
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

    /// Reference intialiser for a related type that implements `BinProtocol`
    @inlinable init<T: BinProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: BinProtocol>(_ other: T) -> BinRef { BinRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BinProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BinProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BinProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BinProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BinProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Bin` type acts as a reference-counted owner of an underlying `GtkBin` instance.
/// It provides the methods that can operate on this data type through `BinProtocol` conformance.
/// Use `Bin` as a strong reference or owner of a `GtkBin` instance.
///
/// The `GtkBin` widget is a container with just one child.
/// It is not very useful itself, but it is useful for deriving subclasses,
/// since it provides common code needed for handling a single child widget.
/// 
/// Many GTK+ widgets are subclasses of `GtkBin`, including `GtkWindow`,
/// `GtkButton`, `GtkFrame`, `GtkHandleBox` or `GtkScrolledWindow`.
open class Bin: Container, BinProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Bin` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkBin>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Bin` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkBin>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Bin` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Bin` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Bin` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkBin>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Bin` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkBin>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkBin`.
    /// i.e., ownership is transferred to the `Bin` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkBin>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `BinProtocol`
    /// Will retain `GtkBin`.
    /// - Parameter other: an instance of a related type that implements `BinProtocol`
    @inlinable public init<T: BinProtocol>(bin other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BinProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BinProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BinProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BinProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BinProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BinProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BinProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BinProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum BinPropertyName: String, PropertyNameProtocol {
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

public extension BinProtocol {
    /// Bind a `BinPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: BinPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Bin property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: BinPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Bin property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: BinPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Bin has no signals// MARK: Bin Class: BinProtocol extension (methods and fields)
public extension BinProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBin` instance.
    @inlinable var bin_ptr: UnsafeMutablePointer<GtkBin>! { return ptr?.assumingMemoryBound(to: GtkBin.self) }

    /// Gets the child of the `GtkBin`, or `nil` if the bin contains
    /// no child widget. The returned widget does not have a reference
    /// added, so you do not need to unref it.
    @inlinable func getChild() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_bin_get_child(bin_ptr))) else { return nil }
        return rv
    }
    /// Gets the child of the `GtkBin`, or `nil` if the bin contains
    /// no child widget. The returned widget does not have a reference
    /// added, so you do not need to unref it.
    @inlinable var child: WidgetRef! {
        /// Gets the child of the `GtkBin`, or `nil` if the bin contains
        /// no child widget. The returned widget does not have a reference
        /// added, so you do not need to unref it.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_bin_get_child(bin_ptr))) else { return nil }
            return rv
        }
    }

    @inlinable var container: GtkContainer {
        get {
            let rv = bin_ptr.pointee.container
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



