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

// MARK: - Notebook Class

/// The `NotebookProtocol` protocol exposes the methods and properties of an underlying `GtkNotebook` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Notebook`.
/// Alternatively, use `NotebookRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkNotebook` widget is a `GtkContainer` whose children are pages that
/// can be switched between using tab labels along one edge.
/// 
/// There are many configuration options for GtkNotebook. Among other
/// things, you can choose on which edge the tabs appear
/// (see `gtk_notebook_set_tab_pos()`), whether, if there are too many
/// tabs to fit the notebook should be made bigger or scrolling
/// arrows added (see `gtk_notebook_set_scrollable()`), and whether there
/// will be a popup menu allowing the users to switch pages.
/// (see `gtk_notebook_popup_enable()`, `gtk_notebook_popup_disable()`)
/// 
/// # GtkNotebook as GtkBuildable
/// 
/// The GtkNotebook implementation of the `GtkBuildable` interface
/// supports placing children into tabs by specifying “tab” as the
/// “type” attribute of a <child> element. Note that the content
/// of the tab must be created before the tab can be filled.
/// A tab child can be specified without specifying a <child>
/// type attribute.
/// 
/// To add a child widget in the notebooks action area, specify
/// "action-start" or “action-end” as the “type” attribute of the
/// <child> element.
/// 
/// An example of a UI definition fragment with GtkNotebook:
/// ```
/// <object class="GtkNotebook">
///   <child>
///     <object class="GtkLabel" id="notebook-content">
///       <property name="label">Content</property>
///     </object>
///   </child>
///   <child type="tab">
///     <object class="GtkLabel" id="notebook-tab">
///       <property name="label">Tab</property>
///     </object>
///   </child>
/// </object>
/// ```
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// notebook
/// ├── header.top
/// │   ├── [<action widget>]
/// │   ├── tabs
/// │   │   ├── [arrow]
/// │   │   ├── tab
/// │   │   │   ╰── <tab label>
/// ┊   ┊   ┊
/// │   │   ├── tab[.reorderable-page]
/// │   │   │   ╰── <tab label>
/// │   │   ╰── [arrow]
/// │   ╰── [<action widget>]
/// │
/// ╰── stack
///     ├── <child>
///     ┊
///     ╰── <child>
/// ```
/// 
/// GtkNotebook has a main CSS node with name notebook, a subnode
/// with name header and below that a subnode with name tabs which
/// contains one subnode per tab with name tab.
/// 
/// If action widgets are present, their CSS nodes are placed next
/// to the tabs node. If the notebook is scrollable, CSS nodes with
/// name arrow are placed as first and last child of the tabs node.
/// 
/// The main node gets the .frame style class when the notebook
/// has a border (see `gtk_notebook_set_show_border()`).
/// 
/// The header node gets one of the style class .top, .bottom,
/// .left or .right, depending on where the tabs are placed. For
/// reorderable pages, the tab node gets the .reorderable-page class.
/// 
/// A tab node gets the .dnd style class while it is moved with drag-and-drop.
/// 
/// The nodes are always arranged from left-to-right, regarldess of text direction.
public protocol NotebookProtocol: ContainerProtocol {
        /// Untyped pointer to the underlying `GtkNotebook` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkNotebook` instance.
    var notebook_ptr: UnsafeMutablePointer<GtkNotebook>! { get }

}

/// The `NotebookRef` type acts as a lightweight Swift reference to an underlying `GtkNotebook` instance.
/// It exposes methods that can operate on this data type through `NotebookProtocol` conformance.
/// Use `NotebookRef` only as an `unowned` reference to an existing `GtkNotebook` instance.
///
/// The `GtkNotebook` widget is a `GtkContainer` whose children are pages that
/// can be switched between using tab labels along one edge.
/// 
/// There are many configuration options for GtkNotebook. Among other
/// things, you can choose on which edge the tabs appear
/// (see `gtk_notebook_set_tab_pos()`), whether, if there are too many
/// tabs to fit the notebook should be made bigger or scrolling
/// arrows added (see `gtk_notebook_set_scrollable()`), and whether there
/// will be a popup menu allowing the users to switch pages.
/// (see `gtk_notebook_popup_enable()`, `gtk_notebook_popup_disable()`)
/// 
/// # GtkNotebook as GtkBuildable
/// 
/// The GtkNotebook implementation of the `GtkBuildable` interface
/// supports placing children into tabs by specifying “tab” as the
/// “type” attribute of a <child> element. Note that the content
/// of the tab must be created before the tab can be filled.
/// A tab child can be specified without specifying a <child>
/// type attribute.
/// 
/// To add a child widget in the notebooks action area, specify
/// "action-start" or “action-end” as the “type” attribute of the
/// <child> element.
/// 
/// An example of a UI definition fragment with GtkNotebook:
/// ```
/// <object class="GtkNotebook">
///   <child>
///     <object class="GtkLabel" id="notebook-content">
///       <property name="label">Content</property>
///     </object>
///   </child>
///   <child type="tab">
///     <object class="GtkLabel" id="notebook-tab">
///       <property name="label">Tab</property>
///     </object>
///   </child>
/// </object>
/// ```
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// notebook
/// ├── header.top
/// │   ├── [<action widget>]
/// │   ├── tabs
/// │   │   ├── [arrow]
/// │   │   ├── tab
/// │   │   │   ╰── <tab label>
/// ┊   ┊   ┊
/// │   │   ├── tab[.reorderable-page]
/// │   │   │   ╰── <tab label>
/// │   │   ╰── [arrow]
/// │   ╰── [<action widget>]
/// │
/// ╰── stack
///     ├── <child>
///     ┊
///     ╰── <child>
/// ```
/// 
/// GtkNotebook has a main CSS node with name notebook, a subnode
/// with name header and below that a subnode with name tabs which
/// contains one subnode per tab with name tab.
/// 
/// If action widgets are present, their CSS nodes are placed next
/// to the tabs node. If the notebook is scrollable, CSS nodes with
/// name arrow are placed as first and last child of the tabs node.
/// 
/// The main node gets the .frame style class when the notebook
/// has a border (see `gtk_notebook_set_show_border()`).
/// 
/// The header node gets one of the style class .top, .bottom,
/// .left or .right, depending on where the tabs are placed. For
/// reorderable pages, the tab node gets the .reorderable-page class.
/// 
/// A tab node gets the .dnd style class while it is moved with drag-and-drop.
/// 
/// The nodes are always arranged from left-to-right, regarldess of text direction.
public struct NotebookRef: NotebookProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkNotebook` instance.
    /// For type-safe access, use the generated, typed pointer `notebook_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension NotebookRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkNotebook>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkNotebook>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkNotebook>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkNotebook>?) {
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

    /// Reference intialiser for a related type that implements `NotebookProtocol`
    @inlinable init<T: NotebookProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: NotebookProtocol>(_ other: T) -> NotebookRef { NotebookRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkNotebook` widget with no pages.
    @inlinable init() {
        let rv = gtk_notebook_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `Notebook` type acts as a reference-counted owner of an underlying `GtkNotebook` instance.
/// It provides the methods that can operate on this data type through `NotebookProtocol` conformance.
/// Use `Notebook` as a strong reference or owner of a `GtkNotebook` instance.
///
/// The `GtkNotebook` widget is a `GtkContainer` whose children are pages that
/// can be switched between using tab labels along one edge.
/// 
/// There are many configuration options for GtkNotebook. Among other
/// things, you can choose on which edge the tabs appear
/// (see `gtk_notebook_set_tab_pos()`), whether, if there are too many
/// tabs to fit the notebook should be made bigger or scrolling
/// arrows added (see `gtk_notebook_set_scrollable()`), and whether there
/// will be a popup menu allowing the users to switch pages.
/// (see `gtk_notebook_popup_enable()`, `gtk_notebook_popup_disable()`)
/// 
/// # GtkNotebook as GtkBuildable
/// 
/// The GtkNotebook implementation of the `GtkBuildable` interface
/// supports placing children into tabs by specifying “tab” as the
/// “type” attribute of a <child> element. Note that the content
/// of the tab must be created before the tab can be filled.
/// A tab child can be specified without specifying a <child>
/// type attribute.
/// 
/// To add a child widget in the notebooks action area, specify
/// "action-start" or “action-end” as the “type” attribute of the
/// <child> element.
/// 
/// An example of a UI definition fragment with GtkNotebook:
/// ```
/// <object class="GtkNotebook">
///   <child>
///     <object class="GtkLabel" id="notebook-content">
///       <property name="label">Content</property>
///     </object>
///   </child>
///   <child type="tab">
///     <object class="GtkLabel" id="notebook-tab">
///       <property name="label">Tab</property>
///     </object>
///   </child>
/// </object>
/// ```
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// notebook
/// ├── header.top
/// │   ├── [<action widget>]
/// │   ├── tabs
/// │   │   ├── [arrow]
/// │   │   ├── tab
/// │   │   │   ╰── <tab label>
/// ┊   ┊   ┊
/// │   │   ├── tab[.reorderable-page]
/// │   │   │   ╰── <tab label>
/// │   │   ╰── [arrow]
/// │   ╰── [<action widget>]
/// │
/// ╰── stack
///     ├── <child>
///     ┊
///     ╰── <child>
/// ```
/// 
/// GtkNotebook has a main CSS node with name notebook, a subnode
/// with name header and below that a subnode with name tabs which
/// contains one subnode per tab with name tab.
/// 
/// If action widgets are present, their CSS nodes are placed next
/// to the tabs node. If the notebook is scrollable, CSS nodes with
/// name arrow are placed as first and last child of the tabs node.
/// 
/// The main node gets the .frame style class when the notebook
/// has a border (see `gtk_notebook_set_show_border()`).
/// 
/// The header node gets one of the style class .top, .bottom,
/// .left or .right, depending on where the tabs are placed. For
/// reorderable pages, the tab node gets the .reorderable-page class.
/// 
/// A tab node gets the .dnd style class while it is moved with drag-and-drop.
/// 
/// The nodes are always arranged from left-to-right, regarldess of text direction.
open class Notebook: Container, NotebookProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Notebook` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkNotebook>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Notebook` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkNotebook>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Notebook` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Notebook` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Notebook` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkNotebook>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Notebook` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkNotebook>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkNotebook`.
    /// i.e., ownership is transferred to the `Notebook` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkNotebook>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `NotebookProtocol`
    /// Will retain `GtkNotebook`.
    /// - Parameter other: an instance of a related type that implements `NotebookProtocol`
    @inlinable public init<T: NotebookProtocol>(notebook other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkNotebook` widget with no pages.
    @inlinable public init() {
        let rv = gtk_notebook_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum NotebookPropertyName: String, PropertyNameProtocol {
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
    case enablePopup = "enable-popup"
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
    /// Group name for tab drag and drop.
    case groupName = "group-name"
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
    case page = "page"
    case parent = "parent"
    case receivesDefault = "receives-default"
    case resizeMode = "resize-mode"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case scrollable = "scrollable"
    case sensitive = "sensitive"
    case showBorder = "show-border"
    case showTabs = "show-tabs"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    case tabPos = "tab-pos"
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

public extension NotebookProtocol {
    /// Bind a `NotebookPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: NotebookPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Notebook property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: NotebookPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Notebook property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: NotebookPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of Notebook
public extension NotebookProtocol {
    /// The `create`-window signal is emitted when a detachable
    /// tab is dropped on the root window.
    /// 
    /// A handler for this signal can create a window containing
    /// a notebook where the tab will be attached. It is also
    /// responsible for moving/resizing the window and adding the
    /// necessary properties to the notebook (e.g. the
    /// `GtkNotebook:group`-name ).
    /// - Note: Representation of signal named `create-window`
    /// - Parameter flags: Flags
    /// - Parameter handler: a `GtkNotebook` that `page` should be     added to, or `nil`.
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter page: the tab of `notebook` that is being detached
    /// - Parameter x: the X coordinate where the drop happens
    /// - Parameter y: the Y coordinate where the drop happens
    /// - Warning: Wrapper of this signal could not be generated because it contains unimplemented features: { (9)  Record return is not yet supported }
    /// - Note: Use this string for `signalConnectData` method
    static var onCreateWindow: String { "create-window" }
    /// - Note: Representation of signal named `change-current-page`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter object: none
    @discardableResult
    func onChangeCurrentPage(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NotebookRef, _ object: Int) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<NotebookRef, Int, Bool>
        let cCallback: @convention(c) (gpointer, gint, gpointer) -> gboolean = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(NotebookRef(raw: unownedSelf), Int(arg1))
            return gboolean((output) ? 1 : 0)
        }
        return signalConnectData(
            detailedSignal: "change-current-page", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// - Note: Representation of signal named `focus-tab`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter object: none
    @discardableResult
    func onFocusTab(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NotebookRef, _ object: NotebookTab) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<NotebookRef, NotebookTab, Bool>
        let cCallback: @convention(c) (gpointer, UInt32, gpointer) -> gboolean = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(NotebookRef(raw: unownedSelf), NotebookTab(arg1))
            return gboolean((output) ? 1 : 0)
        }
        return signalConnectData(
            detailedSignal: "focus-tab", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// - Note: Representation of signal named `move-focus-out`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter object: none
    @discardableResult
    func onMoveFocusOut(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NotebookRef, _ object: DirectionType) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<NotebookRef, DirectionType, Void>
        let cCallback: @convention(c) (gpointer, UInt32, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(NotebookRef(raw: unownedSelf), DirectionType(arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "move-focus-out", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// the `page`-added signal is emitted in the notebook
    /// right after a page is added to the notebook.
    /// - Note: Representation of signal named `page-added`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter child: the child `GtkWidget` affected
    /// - Parameter pageNum: the new page number for `child`
    @discardableResult
    func onPageAdded(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NotebookRef, _ child: WidgetRef, _ pageNum: UInt) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<NotebookRef, WidgetRef, UInt, Void>
        let cCallback: @convention(c) (gpointer, gpointer, guint, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(NotebookRef(raw: unownedSelf), WidgetRef(raw: arg1), UInt(arg2))
            return output
        }
        return signalConnectData(
            detailedSignal: "page-added", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// the `page`-removed signal is emitted in the notebook
    /// right after a page is removed from the notebook.
    /// - Note: Representation of signal named `page-removed`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter child: the child `GtkWidget` affected
    /// - Parameter pageNum: the `child` page number
    @discardableResult
    func onPageRemoved(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NotebookRef, _ child: WidgetRef, _ pageNum: UInt) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<NotebookRef, WidgetRef, UInt, Void>
        let cCallback: @convention(c) (gpointer, gpointer, guint, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(NotebookRef(raw: unownedSelf), WidgetRef(raw: arg1), UInt(arg2))
            return output
        }
        return signalConnectData(
            detailedSignal: "page-removed", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// the `page`-reordered signal is emitted in the notebook
    /// right after a page has been reordered.
    /// - Note: Representation of signal named `page-reordered`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter child: the child `GtkWidget` affected
    /// - Parameter pageNum: the new page number for `child`
    @discardableResult
    func onPageReordered(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NotebookRef, _ child: WidgetRef, _ pageNum: UInt) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<NotebookRef, WidgetRef, UInt, Void>
        let cCallback: @convention(c) (gpointer, gpointer, guint, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(NotebookRef(raw: unownedSelf), WidgetRef(raw: arg1), UInt(arg2))
            return output
        }
        return signalConnectData(
            detailedSignal: "page-reordered", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// - Note: Representation of signal named `reorder-tab`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter object: none
    /// - Parameter p0: none
    @discardableResult
    func onReorderTab(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NotebookRef, _ object: DirectionType, _ p0: Bool) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<NotebookRef, DirectionType, Bool, Bool>
        let cCallback: @convention(c) (gpointer, UInt32, gboolean, gpointer) -> gboolean = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(NotebookRef(raw: unownedSelf), DirectionType(arg1), ((arg2) != 0))
            return gboolean((output) ? 1 : 0)
        }
        return signalConnectData(
            detailedSignal: "reorder-tab", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// - Note: Representation of signal named `select-page`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter object: none
    @discardableResult
    func onSelectPage(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NotebookRef, _ object: Bool) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<NotebookRef, Bool, Bool>
        let cCallback: @convention(c) (gpointer, gboolean, gpointer) -> gboolean = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(NotebookRef(raw: unownedSelf), ((arg1) != 0))
            return gboolean((output) ? 1 : 0)
        }
        return signalConnectData(
            detailedSignal: "select-page", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// Emitted when the user or a function changes the current page.
    /// - Note: Representation of signal named `switch-page`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter page: the new current page
    /// - Parameter pageNum: the index of the page
    @discardableResult
    func onSwitchPage(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NotebookRef, _ page: WidgetRef, _ pageNum: UInt) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<NotebookRef, WidgetRef, UInt, Void>
        let cCallback: @convention(c) (gpointer, gpointer, guint, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(NotebookRef(raw: unownedSelf), WidgetRef(raw: arg1), UInt(arg2))
            return output
        }
        return signalConnectData(
            detailedSignal: "switch-page", 
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
    /// - Note: Representation of signal named `notify::enable-popup`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyEnablePopup(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NotebookRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<NotebookRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(NotebookRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::enable-popup", 
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
    /// - Note: Representation of signal named `notify::group-name`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyGroupName(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NotebookRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<NotebookRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(NotebookRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::group-name", 
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
    /// - Note: Representation of signal named `notify::page`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyPage(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NotebookRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<NotebookRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(NotebookRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::page", 
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
    /// - Note: Representation of signal named `notify::scrollable`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyScrollable(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NotebookRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<NotebookRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(NotebookRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::scrollable", 
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
    /// - Note: Representation of signal named `notify::show-border`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyShowBorder(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NotebookRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<NotebookRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(NotebookRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::show-border", 
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
    /// - Note: Representation of signal named `notify::show-tabs`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyShowTabs(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NotebookRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<NotebookRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(NotebookRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::show-tabs", 
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
    /// - Note: Representation of signal named `notify::tab-pos`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyTabPos(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NotebookRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<NotebookRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(NotebookRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::tab-pos", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: Notebook Class: NotebookProtocol extension (methods and fields)
public extension NotebookProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkNotebook` instance.
    @inlinable var notebook_ptr: UnsafeMutablePointer<GtkNotebook>! { return ptr?.assumingMemoryBound(to: GtkNotebook.self) }

    /// Appends a page to `notebook`.
    @inlinable func appendPage<WidgetT: WidgetProtocol>(child: WidgetT, tabLabel: WidgetT?) -> Int {
        let rv = Int(gtk_notebook_append_page(notebook_ptr, child.widget_ptr, tabLabel?.widget_ptr))
        return rv
    }

    /// Appends a page to `notebook`, specifying the widget to use as the
    /// label in the popup menu.
    @inlinable func appendPageMenu<WidgetT: WidgetProtocol>(child: WidgetT, tabLabel: WidgetT?, menuLabel: WidgetT?) -> Int {
        let rv = Int(gtk_notebook_append_page_menu(notebook_ptr, child.widget_ptr, tabLabel?.widget_ptr, menuLabel?.widget_ptr))
        return rv
    }

    /// Removes the child from the notebook.
    /// 
    /// This function is very similar to `gtk_container_remove()`,
    /// but additionally informs the notebook that the removal
    /// is happening as part of a tab DND operation, which should
    /// not be cancelled.
    @inlinable func detachTab<WidgetT: WidgetProtocol>(child: WidgetT) {
        gtk_notebook_detach_tab(notebook_ptr, child.widget_ptr)
    
    }

    /// Gets one of the action widgets. See `gtk_notebook_set_action_widget()`.
    @inlinable func getActionWidget(packType: GtkPackType) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_notebook_get_action_widget(notebook_ptr, packType))) else { return nil }
        return rv
    }

    /// Returns the page number of the current page.
    @inlinable func getCurrentPage() -> Int {
        let rv = Int(gtk_notebook_get_current_page(notebook_ptr))
        return rv
    }

    /// Gets the current group name for `notebook`.
    @inlinable func getGroupName() -> String! {
        let rv = gtk_notebook_get_group_name(notebook_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Retrieves the menu label widget of the page containing `child`.
    @inlinable func getMenuLabel<WidgetT: WidgetProtocol>(child: WidgetT) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_notebook_get_menu_label(notebook_ptr, child.widget_ptr))) else { return nil }
        return rv
    }

    /// Retrieves the text of the menu label for the page containing
    /// `child`.
    @inlinable func getMenuLabelText<WidgetT: WidgetProtocol>(child: WidgetT) -> String! {
        let rv = gtk_notebook_get_menu_label_text(notebook_ptr, child.widget_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the number of pages in a notebook.
    @inlinable func getNPages() -> Int {
        let rv = Int(gtk_notebook_get_n_pages(notebook_ptr))
        return rv
    }

    /// Returns the child widget contained in page number `page_num`.
    @inlinable func getNthPage(pageNum: Int) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_notebook_get_nth_page(notebook_ptr, gint(pageNum)))) else { return nil }
        return rv
    }

    /// Returns whether the tab label area has arrows for scrolling.
    /// See `gtk_notebook_set_scrollable()`.
    @inlinable func getScrollable() -> Bool {
        let rv = ((gtk_notebook_get_scrollable(notebook_ptr)) != 0)
        return rv
    }

    /// Returns whether a bevel will be drawn around the notebook pages.
    /// See `gtk_notebook_set_show_border()`.
    @inlinable func getShowBorder() -> Bool {
        let rv = ((gtk_notebook_get_show_border(notebook_ptr)) != 0)
        return rv
    }

    /// Returns whether the tabs of the notebook are shown.
    /// See `gtk_notebook_set_show_tabs()`.
    @inlinable func getShowTabs() -> Bool {
        let rv = ((gtk_notebook_get_show_tabs(notebook_ptr)) != 0)
        return rv
    }

    /// Returns whether the tab contents can be detached from `notebook`.
    @inlinable func getTabDetachable<WidgetT: WidgetProtocol>(child: WidgetT) -> Bool {
        let rv = ((gtk_notebook_get_tab_detachable(notebook_ptr, child.widget_ptr)) != 0)
        return rv
    }

    /// Returns the horizontal width of a tab border.
    ///
    /// **get_tab_hborder is deprecated:**
    /// this function returns zero
    @available(*, deprecated)
    @inlinable func getTabHborder() -> guint16 {
        let rv = gtk_notebook_get_tab_hborder(notebook_ptr)
        return rv
    }

    /// Returns the tab label widget for the page `child`.
    /// `nil` is returned if `child` is not in `notebook` or
    /// if no tab label has specifically been set for `child`.
    @inlinable func getTabLabel<WidgetT: WidgetProtocol>(child: WidgetT) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_notebook_get_tab_label(notebook_ptr, child.widget_ptr))) else { return nil }
        return rv
    }

    /// Retrieves the text of the tab label for the page containing
    /// `child`.
    @inlinable func getTabLabelText<WidgetT: WidgetProtocol>(child: WidgetT) -> String! {
        let rv = gtk_notebook_get_tab_label_text(notebook_ptr, child.widget_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the edge at which the tabs for switching pages in the
    /// notebook are drawn.
    @inlinable func getTabPos() -> GtkPositionType {
        let rv = gtk_notebook_get_tab_pos(notebook_ptr)
        return rv
    }

    /// Gets whether the tab can be reordered via drag and drop or not.
    @inlinable func getTabReorderable<WidgetT: WidgetProtocol>(child: WidgetT) -> Bool {
        let rv = ((gtk_notebook_get_tab_reorderable(notebook_ptr, child.widget_ptr)) != 0)
        return rv
    }

    /// Returns the vertical width of a tab border.
    ///
    /// **get_tab_vborder is deprecated:**
    /// this function returns zero
    @available(*, deprecated)
    @inlinable func getTabVborder() -> guint16 {
        let rv = gtk_notebook_get_tab_vborder(notebook_ptr)
        return rv
    }

    /// Insert a page into `notebook` at the given position.
    @inlinable func insertPage<WidgetT: WidgetProtocol>(child: WidgetT, tabLabel: WidgetT?, position: Int) -> Int {
        let rv = Int(gtk_notebook_insert_page(notebook_ptr, child.widget_ptr, tabLabel?.widget_ptr, gint(position)))
        return rv
    }

    /// Insert a page into `notebook` at the given position, specifying
    /// the widget to use as the label in the popup menu.
    @inlinable func insertPageMenu<WidgetT: WidgetProtocol>(child: WidgetT, tabLabel: WidgetT?, menuLabel: WidgetT?, position: Int) -> Int {
        let rv = Int(gtk_notebook_insert_page_menu(notebook_ptr, child.widget_ptr, tabLabel?.widget_ptr, menuLabel?.widget_ptr, gint(position)))
        return rv
    }

    /// Switches to the next page. Nothing happens if the current page is
    /// the last page.
    @inlinable func nextPage() {
        gtk_notebook_next_page(notebook_ptr)
    
    }

    /// Finds the index of the page which contains the given child
    /// widget.
    @inlinable func pageNum<WidgetT: WidgetProtocol>(child: WidgetT) -> Int {
        let rv = Int(gtk_notebook_page_num(notebook_ptr, child.widget_ptr))
        return rv
    }

    /// Disables the popup menu.
    @inlinable func popupDisable() {
        gtk_notebook_popup_disable(notebook_ptr)
    
    }

    /// Enables the popup menu: if the user clicks with the right
    /// mouse button on the tab labels, a menu with all the pages
    /// will be popped up.
    @inlinable func popupEnable() {
        gtk_notebook_popup_enable(notebook_ptr)
    
    }

    /// Prepends a page to `notebook`.
    @inlinable func prependPage<WidgetT: WidgetProtocol>(child: WidgetT, tabLabel: WidgetT?) -> Int {
        let rv = Int(gtk_notebook_prepend_page(notebook_ptr, child.widget_ptr, tabLabel?.widget_ptr))
        return rv
    }

    /// Prepends a page to `notebook`, specifying the widget to use as the
    /// label in the popup menu.
    @inlinable func prependPageMenu<WidgetT: WidgetProtocol>(child: WidgetT, tabLabel: WidgetT?, menuLabel: WidgetT?) -> Int {
        let rv = Int(gtk_notebook_prepend_page_menu(notebook_ptr, child.widget_ptr, tabLabel?.widget_ptr, menuLabel?.widget_ptr))
        return rv
    }

    /// Switches to the previous page. Nothing happens if the current page
    /// is the first page.
    @inlinable func prevPage() {
        gtk_notebook_prev_page(notebook_ptr)
    
    }

    /// Removes a page from the notebook given its index
    /// in the notebook.
    @inlinable func removePage(pageNum: Int) {
        gtk_notebook_remove_page(notebook_ptr, gint(pageNum))
    
    }

    /// Reorders the page containing `child`, so that it appears in position
    /// `position`. If `position` is greater than or equal to the number of
    /// children in the list or negative, `child` will be moved to the end
    /// of the list.
    @inlinable func reorder<WidgetT: WidgetProtocol>(child: WidgetT, position: Int) {
        gtk_notebook_reorder_child(notebook_ptr, child.widget_ptr, gint(position))
    
    }

    /// Sets `widget` as one of the action widgets. Depending on the pack type
    /// the widget will be placed before or after the tabs. You can use
    /// a `GtkBox` if you need to pack more than one widget on the same side.
    /// 
    /// Note that action widgets are “internal” children of the notebook and thus
    /// not included in the list returned from `gtk_container_foreach()`.
    @inlinable func setAction<WidgetT: WidgetProtocol>(widget: WidgetT, packType: GtkPackType) {
        gtk_notebook_set_action_widget(notebook_ptr, widget.widget_ptr, packType)
    
    }

    /// Switches to the page number `page_num`.
    /// 
    /// Note that due to historical reasons, GtkNotebook refuses
    /// to switch to a page unless the child widget is visible.
    /// Therefore, it is recommended to show child widgets before
    /// adding them to a notebook.
    @inlinable func setCurrentPage(pageNum: Int) {
        gtk_notebook_set_current_page(notebook_ptr, gint(pageNum))
    
    }

    /// Sets a group name for `notebook`.
    /// 
    /// Notebooks with the same name will be able to exchange tabs
    /// via drag and drop. A notebook with a `nil` group name will
    /// not be able to exchange tabs with any other notebook.
    @inlinable func set(groupName: UnsafePointer<gchar>? = nil) {
        gtk_notebook_set_group_name(notebook_ptr, groupName)
    
    }

    /// Changes the menu label for the page containing `child`.
    @inlinable func setMenuLabel<WidgetT: WidgetProtocol>(child: WidgetT, menuLabel: WidgetT?) {
        gtk_notebook_set_menu_label(notebook_ptr, child.widget_ptr, menuLabel?.widget_ptr)
    
    }

    /// Creates a new label and sets it as the menu label of `child`.
    @inlinable func setMenuLabelText<WidgetT: WidgetProtocol>(child: WidgetT, menuText: UnsafePointer<gchar>!) {
        gtk_notebook_set_menu_label_text(notebook_ptr, child.widget_ptr, menuText)
    
    }

    /// Sets whether the tab label area will have arrows for
    /// scrolling if there are too many tabs to fit in the area.
    @inlinable func set(scrollable: Bool) {
        gtk_notebook_set_scrollable(notebook_ptr, gboolean((scrollable) ? 1 : 0))
    
    }

    /// Sets whether a bevel will be drawn around the notebook pages.
    /// This only has a visual effect when the tabs are not shown.
    /// See `gtk_notebook_set_show_tabs()`.
    @inlinable func set(showBorder: Bool) {
        gtk_notebook_set_show_border(notebook_ptr, gboolean((showBorder) ? 1 : 0))
    
    }

    /// Sets whether to show the tabs for the notebook or not.
    @inlinable func set(showTabs: Bool) {
        gtk_notebook_set_show_tabs(notebook_ptr, gboolean((showTabs) ? 1 : 0))
    
    }

    /// Sets whether the tab can be detached from `notebook` to another
    /// notebook or widget.
    /// 
    /// Note that 2 notebooks must share a common group identificator
    /// (see `gtk_notebook_set_group_name()`) to allow automatic tabs
    /// interchange between them.
    /// 
    /// If you want a widget to interact with a notebook through DnD
    /// (i.e.: accept dragged tabs from it) it must be set as a drop
    /// destination and accept the target “GTK_NOTEBOOK_TAB”. The notebook
    /// will fill the selection with a GtkWidget** pointing to the child
    /// widget that corresponds to the dropped tab.
    /// 
    /// Note that you should use `gtk_notebook_detach_tab()` instead
    /// of `gtk_container_remove()` if you want to remove the tab from
    /// the source notebook as part of accepting a drop. Otherwise,
    /// the source notebook will think that the dragged tab was
    /// removed from underneath the ongoing drag operation, and
    /// will initiate a drag cancel animation.
    /// 
    /// (C Language Example):
    /// ```C
    ///  static void
    ///  on_drag_data_received (GtkWidget        *widget,
    ///                         GdkDragContext   *context,
    ///                         gint              x,
    ///                         gint              y,
    ///                         GtkSelectionData *data,
    ///                         guint             info,
    ///                         guint             time,
    ///                         gpointer          user_data)
    ///  {
    ///    GtkWidget *notebook;
    ///    GtkWidget **child;
    /// 
    ///    notebook = gtk_drag_get_source_widget (context);
    ///    child = (void*) gtk_selection_data_get_data (data);
    /// 
    ///    // process_widget (*child);
    /// 
    ///    gtk_notebook_detach_tab (GTK_NOTEBOOK (notebook), *child);
    ///  }
    /// ```
    /// 
    /// If you want a notebook to accept drags from other widgets,
    /// you will have to set your own DnD code to do it.
    @inlinable func setTabDetachable<WidgetT: WidgetProtocol>(child: WidgetT, detachable: Bool) {
        gtk_notebook_set_tab_detachable(notebook_ptr, child.widget_ptr, gboolean((detachable) ? 1 : 0))
    
    }

    /// Changes the tab label for `child`.
    /// If `nil` is specified for `tab_label`, then the page will
    /// have the label “page N”.
    @inlinable func setTabLabel<WidgetT: WidgetProtocol>(child: WidgetT, tabLabel: WidgetT?) {
        gtk_notebook_set_tab_label(notebook_ptr, child.widget_ptr, tabLabel?.widget_ptr)
    
    }

    /// Creates a new label and sets it as the tab label for the page
    /// containing `child`.
    @inlinable func setTabLabelText<WidgetT: WidgetProtocol>(child: WidgetT, tabText: UnsafePointer<gchar>!) {
        gtk_notebook_set_tab_label_text(notebook_ptr, child.widget_ptr, tabText)
    
    }

    /// Sets the edge at which the tabs for switching pages in the
    /// notebook are drawn.
    @inlinable func setTab(pos: GtkPositionType) {
        gtk_notebook_set_tab_pos(notebook_ptr, pos)
    
    }

    /// Sets whether the notebook tab can be reordered
    /// via drag and drop or not.
    @inlinable func setTabReorderable<WidgetT: WidgetProtocol>(child: WidgetT, reorderable: Bool) {
        gtk_notebook_set_tab_reorderable(notebook_ptr, child.widget_ptr, gboolean((reorderable) ? 1 : 0))
    
    }
    /// Returns the page number of the current page.
    @inlinable var currentPage: Int {
        /// Returns the page number of the current page.
        get {
            let rv = Int(gtk_notebook_get_current_page(notebook_ptr))
            return rv
        }
        /// Switches to the page number `page_num`.
        /// 
        /// Note that due to historical reasons, GtkNotebook refuses
        /// to switch to a page unless the child widget is visible.
        /// Therefore, it is recommended to show child widgets before
        /// adding them to a notebook.
        nonmutating set {
            gtk_notebook_set_current_page(notebook_ptr, gint(newValue))
        }
    }

    /// Gets the current group name for `notebook`.
    @inlinable var groupName: String! {
        /// Gets the current group name for `notebook`.
        get {
            let rv = gtk_notebook_get_group_name(notebook_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets a group name for `notebook`.
        /// 
        /// Notebooks with the same name will be able to exchange tabs
        /// via drag and drop. A notebook with a `nil` group name will
        /// not be able to exchange tabs with any other notebook.
        nonmutating set {
            gtk_notebook_set_group_name(notebook_ptr, newValue)
        }
    }

    /// Gets the number of pages in a notebook.
    @inlinable var nPages: Int {
        /// Gets the number of pages in a notebook.
        get {
            let rv = Int(gtk_notebook_get_n_pages(notebook_ptr))
            return rv
        }
    }

    @inlinable var scrollable: Bool {
        /// Returns whether the tab label area has arrows for scrolling.
        /// See `gtk_notebook_set_scrollable()`.
        get {
            let rv = ((gtk_notebook_get_scrollable(notebook_ptr)) != 0)
            return rv
        }
        /// Sets whether the tab label area will have arrows for
        /// scrolling if there are too many tabs to fit in the area.
        nonmutating set {
            gtk_notebook_set_scrollable(notebook_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns whether a bevel will be drawn around the notebook pages.
    /// See `gtk_notebook_set_show_border()`.
    @inlinable var showBorder: Bool {
        /// Returns whether a bevel will be drawn around the notebook pages.
        /// See `gtk_notebook_set_show_border()`.
        get {
            let rv = ((gtk_notebook_get_show_border(notebook_ptr)) != 0)
            return rv
        }
        /// Sets whether a bevel will be drawn around the notebook pages.
        /// This only has a visual effect when the tabs are not shown.
        /// See `gtk_notebook_set_show_tabs()`.
        nonmutating set {
            gtk_notebook_set_show_border(notebook_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns whether the tabs of the notebook are shown.
    /// See `gtk_notebook_set_show_tabs()`.
    @inlinable var showTabs: Bool {
        /// Returns whether the tabs of the notebook are shown.
        /// See `gtk_notebook_set_show_tabs()`.
        get {
            let rv = ((gtk_notebook_get_show_tabs(notebook_ptr)) != 0)
            return rv
        }
        /// Sets whether to show the tabs for the notebook or not.
        nonmutating set {
            gtk_notebook_set_show_tabs(notebook_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns the horizontal width of a tab border.
    ///
    /// **get_tab_hborder is deprecated:**
    /// this function returns zero
    @inlinable var tabHborder: guint16 {
        /// Returns the horizontal width of a tab border.
        ///
        /// **get_tab_hborder is deprecated:**
        /// this function returns zero
        @available(*, deprecated)
    get {
            let rv = gtk_notebook_get_tab_hborder(notebook_ptr)
            return rv
        }
    }

    /// Gets the edge at which the tabs for switching pages in the
    /// notebook are drawn.
    @inlinable var tabPos: GtkPositionType {
        /// Gets the edge at which the tabs for switching pages in the
        /// notebook are drawn.
        get {
            let rv = gtk_notebook_get_tab_pos(notebook_ptr)
            return rv
        }
        /// Sets the edge at which the tabs for switching pages in the
        /// notebook are drawn.
        nonmutating set {
            gtk_notebook_set_tab_pos(notebook_ptr, newValue)
        }
    }

    /// Returns the vertical width of a tab border.
    ///
    /// **get_tab_vborder is deprecated:**
    /// this function returns zero
    @inlinable var tabVborder: guint16 {
        /// Returns the vertical width of a tab border.
        ///
        /// **get_tab_vborder is deprecated:**
        /// this function returns zero
        @available(*, deprecated)
    get {
            let rv = gtk_notebook_get_tab_vborder(notebook_ptr)
            return rv
        }
    }

    // var container is unavailable because container is private

    // var priv is unavailable because priv is private

}



// MARK: - NotebookAccessible Class

/// The `NotebookAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkNotebookAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NotebookAccessible`.
/// Alternatively, use `NotebookAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol NotebookAccessibleProtocol: ContainerAccessibleProtocol, Atk.SelectionProtocol {
        /// Untyped pointer to the underlying `GtkNotebookAccessible` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkNotebookAccessible` instance.
    var notebook_accessible_ptr: UnsafeMutablePointer<GtkNotebookAccessible>! { get }

}

/// The `NotebookAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkNotebookAccessible` instance.
/// It exposes methods that can operate on this data type through `NotebookAccessibleProtocol` conformance.
/// Use `NotebookAccessibleRef` only as an `unowned` reference to an existing `GtkNotebookAccessible` instance.
///

public struct NotebookAccessibleRef: NotebookAccessibleProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkNotebookAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `notebook_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension NotebookAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkNotebookAccessible>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkNotebookAccessible>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkNotebookAccessible>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkNotebookAccessible>?) {
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

    /// Reference intialiser for a related type that implements `NotebookAccessibleProtocol`
    @inlinable init<T: NotebookAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: NotebookAccessibleProtocol>(_ other: T) -> NotebookAccessibleRef { NotebookAccessibleRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookAccessibleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookAccessibleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookAccessibleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookAccessibleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookAccessibleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `NotebookAccessible` type acts as a reference-counted owner of an underlying `GtkNotebookAccessible` instance.
/// It provides the methods that can operate on this data type through `NotebookAccessibleProtocol` conformance.
/// Use `NotebookAccessible` as a strong reference or owner of a `GtkNotebookAccessible` instance.
///

open class NotebookAccessible: ContainerAccessible, NotebookAccessibleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NotebookAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkNotebookAccessible>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NotebookAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkNotebookAccessible>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NotebookAccessible` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NotebookAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NotebookAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkNotebookAccessible>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NotebookAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkNotebookAccessible>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkNotebookAccessible`.
    /// i.e., ownership is transferred to the `NotebookAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkNotebookAccessible>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `NotebookAccessibleProtocol`
    /// Will retain `GtkNotebookAccessible`.
    /// - Parameter other: an instance of a related type that implements `NotebookAccessibleProtocol`
    @inlinable public init<T: NotebookAccessibleProtocol>(notebookAccessible other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookAccessibleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookAccessibleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookAccessibleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookAccessibleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum NotebookAccessiblePropertyName: String, PropertyNameProtocol {
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

public extension NotebookAccessibleProtocol {
    /// Bind a `NotebookAccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: NotebookAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a NotebookAccessible property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: NotebookAccessiblePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a NotebookAccessible property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: NotebookAccessiblePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: NotebookAccessible has no signals// MARK: NotebookAccessible Class: NotebookAccessibleProtocol extension (methods and fields)
public extension NotebookAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkNotebookAccessible` instance.
    @inlinable var notebook_accessible_ptr: UnsafeMutablePointer<GtkNotebookAccessible>! { return ptr?.assumingMemoryBound(to: GtkNotebookAccessible.self) }


    @inlinable var parent: GtkContainerAccessible {
        get {
            let rv = notebook_accessible_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - NotebookPageAccessible Class

/// The `NotebookPageAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkNotebookPageAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NotebookPageAccessible`.
/// Alternatively, use `NotebookPageAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol NotebookPageAccessibleProtocol: Atk.ObjectProtocol, Atk.ComponentProtocol {
        /// Untyped pointer to the underlying `GtkNotebookPageAccessible` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkNotebookPageAccessible` instance.
    var notebook_page_accessible_ptr: UnsafeMutablePointer<GtkNotebookPageAccessible>! { get }

}

/// The `NotebookPageAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkNotebookPageAccessible` instance.
/// It exposes methods that can operate on this data type through `NotebookPageAccessibleProtocol` conformance.
/// Use `NotebookPageAccessibleRef` only as an `unowned` reference to an existing `GtkNotebookPageAccessible` instance.
///

public struct NotebookPageAccessibleRef: NotebookPageAccessibleProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkNotebookPageAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `notebook_page_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension NotebookPageAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkNotebookPageAccessible>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkNotebookPageAccessible>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkNotebookPageAccessible>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkNotebookPageAccessible>?) {
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

    /// Reference intialiser for a related type that implements `NotebookPageAccessibleProtocol`
    @inlinable init<T: NotebookPageAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: NotebookPageAccessibleProtocol>(_ other: T) -> NotebookPageAccessibleRef { NotebookPageAccessibleRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageAccessibleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageAccessibleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageAccessibleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageAccessibleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageAccessibleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `NotebookPageAccessible` type acts as a reference-counted owner of an underlying `GtkNotebookPageAccessible` instance.
/// It provides the methods that can operate on this data type through `NotebookPageAccessibleProtocol` conformance.
/// Use `NotebookPageAccessible` as a strong reference or owner of a `GtkNotebookPageAccessible` instance.
///

open class NotebookPageAccessible: Atk.Object, NotebookPageAccessibleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NotebookPageAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkNotebookPageAccessible>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NotebookPageAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkNotebookPageAccessible>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NotebookPageAccessible` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NotebookPageAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NotebookPageAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkNotebookPageAccessible>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NotebookPageAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkNotebookPageAccessible>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkNotebookPageAccessible`.
    /// i.e., ownership is transferred to the `NotebookPageAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkNotebookPageAccessible>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `NotebookPageAccessibleProtocol`
    /// Will retain `GtkNotebookPageAccessible`.
    /// - Parameter other: an instance of a related type that implements `NotebookPageAccessibleProtocol`
    @inlinable public init<T: NotebookPageAccessibleProtocol>(notebookPageAccessible other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageAccessibleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageAccessibleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageAccessibleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageAccessibleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotebookPageAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum NotebookPageAccessiblePropertyName: String, PropertyNameProtocol {
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

public extension NotebookPageAccessibleProtocol {
    /// Bind a `NotebookPageAccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: NotebookPageAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a NotebookPageAccessible property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: NotebookPageAccessiblePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a NotebookPageAccessible property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: NotebookPageAccessiblePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: NotebookPageAccessible has no signals// MARK: NotebookPageAccessible Class: NotebookPageAccessibleProtocol extension (methods and fields)
public extension NotebookPageAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkNotebookPageAccessible` instance.
    @inlinable var notebook_page_accessible_ptr: UnsafeMutablePointer<GtkNotebookPageAccessible>! { return ptr?.assumingMemoryBound(to: GtkNotebookPageAccessible.self) }

    @inlinable func invalidate() {
        gtk_notebook_page_accessible_invalidate(notebook_page_accessible_ptr)
    
    }

    @inlinable var parent: AtkObject {
        get {
            let rv = notebook_page_accessible_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - NumerableIcon Class

/// The `NumerableIconProtocol` protocol exposes the methods and properties of an underlying `GtkNumerableIcon` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NumerableIcon`.
/// Alternatively, use `NumerableIconRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkNumerableIcon is a subclass of `GEmblemedIcon` that can
/// show a number or short string as an emblem. The number can
/// be overlayed on top of another emblem, if desired.
/// 
/// It supports theming by taking font and color information
/// from a provided `GtkStyleContext`; see
/// `gtk_numerable_icon_set_style_context()`.
/// 
/// Typical numerable icons:
/// ![](numerableicon.png)
/// ![](numerableicon2.png)
public protocol NumerableIconProtocol: GIO.EmblemedIconProtocol, GIO.IconProtocol {
        /// Untyped pointer to the underlying `GtkNumerableIcon` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkNumerableIcon` instance.
    var numerable_icon_ptr: UnsafeMutablePointer<GtkNumerableIcon>! { get }

}

/// The `NumerableIconRef` type acts as a lightweight Swift reference to an underlying `GtkNumerableIcon` instance.
/// It exposes methods that can operate on this data type through `NumerableIconProtocol` conformance.
/// Use `NumerableIconRef` only as an `unowned` reference to an existing `GtkNumerableIcon` instance.
///
/// GtkNumerableIcon is a subclass of `GEmblemedIcon` that can
/// show a number or short string as an emblem. The number can
/// be overlayed on top of another emblem, if desired.
/// 
/// It supports theming by taking font and color information
/// from a provided `GtkStyleContext`; see
/// `gtk_numerable_icon_set_style_context()`.
/// 
/// Typical numerable icons:
/// ![](numerableicon.png)
/// ![](numerableicon2.png)
public struct NumerableIconRef: NumerableIconProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkNumerableIcon` instance.
    /// For type-safe access, use the generated, typed pointer `numerable_icon_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension NumerableIconRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkNumerableIcon>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkNumerableIcon>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkNumerableIcon>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkNumerableIcon>?) {
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

    /// Reference intialiser for a related type that implements `NumerableIconProtocol`
    @inlinable init<T: NumerableIconProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: NumerableIconProtocol>(_ other: T) -> NumerableIconRef { NumerableIconRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumerableIconProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumerableIconProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumerableIconProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumerableIconProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumerableIconProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `NumerableIcon` type acts as a reference-counted owner of an underlying `GtkNumerableIcon` instance.
/// It provides the methods that can operate on this data type through `NumerableIconProtocol` conformance.
/// Use `NumerableIcon` as a strong reference or owner of a `GtkNumerableIcon` instance.
///
/// GtkNumerableIcon is a subclass of `GEmblemedIcon` that can
/// show a number or short string as an emblem. The number can
/// be overlayed on top of another emblem, if desired.
/// 
/// It supports theming by taking font and color information
/// from a provided `GtkStyleContext`; see
/// `gtk_numerable_icon_set_style_context()`.
/// 
/// Typical numerable icons:
/// ![](numerableicon.png)
/// ![](numerableicon2.png)
open class NumerableIcon: GIO.EmblemedIcon, NumerableIconProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NumerableIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkNumerableIcon>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NumerableIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkNumerableIcon>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NumerableIcon` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NumerableIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NumerableIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkNumerableIcon>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NumerableIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkNumerableIcon>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkNumerableIcon`.
    /// i.e., ownership is transferred to the `NumerableIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkNumerableIcon>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `NumerableIconProtocol`
    /// Will retain `GtkNumerableIcon`.
    /// - Parameter other: an instance of a related type that implements `NumerableIconProtocol`
    @inlinable public init<T: NumerableIconProtocol>(numerableIcon other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumerableIconProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumerableIconProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumerableIconProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumerableIconProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumerableIconProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumerableIconProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumerableIconProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NumerableIconProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum NumerableIconPropertyName: String, PropertyNameProtocol {
    case backgroundIcon = "background-icon"
    case backgroundIconName = "background-icon-name"
    case count = "count"
    case gicon = "gicon"
    case label = "label"
    case styleContext = "style-context"
}

public extension NumerableIconProtocol {
    /// Bind a `NumerableIconPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: NumerableIconPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a NumerableIcon property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: NumerableIconPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a NumerableIcon property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: NumerableIconPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: NumerableIcon has no signals// MARK: NumerableIcon Class: NumerableIconProtocol extension (methods and fields)
public extension NumerableIconProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkNumerableIcon` instance.
    @inlinable var numerable_icon_ptr: UnsafeMutablePointer<GtkNumerableIcon>! { return ptr?.assumingMemoryBound(to: GtkNumerableIcon.self) }

    /// Returns the `GIcon` that was set as the base background image, or
    /// `nil` if there’s none. The caller of this function does not own
    /// a reference to the returned `GIcon`.
    ///
    /// **get_background_gicon is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func getBackgroundIcon() -> GIO.IconRef! {
        let rv = GIO.IconRef(gtk_numerable_icon_get_background_gicon(numerable_icon_ptr))
        return rv
    }

    /// Returns the icon name used as the base background image,
    /// or `nil` if there’s none.
    ///
    /// **get_background_icon_name is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func getBackgroundIconName() -> String! {
        let rv = gtk_numerable_icon_get_background_icon_name(numerable_icon_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns the value currently displayed by `self`.
    ///
    /// **get_count is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func getCount() -> Int {
        let rv = Int(gtk_numerable_icon_get_count(numerable_icon_ptr))
        return rv
    }

    /// Returns the currently displayed label of the icon, or `nil`.
    ///
    /// **get_label is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func getLabel() -> String! {
        let rv = gtk_numerable_icon_get_label(numerable_icon_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns the `GtkStyleContext` used by the icon for theming,
    /// or `nil` if there’s none.
    ///
    /// **get_style_context is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func getStyleContext() -> StyleContextRef! {
        let rv = StyleContextRef(gconstpointer: gconstpointer(gtk_numerable_icon_get_style_context(numerable_icon_ptr)))
        return rv
    }

    /// Updates the icon to use `icon` as the base background image.
    /// If `icon` is `nil`, `self` will go back using style information
    /// or default theming for its background image.
    /// 
    /// If this method is called and an icon name was already set as
    /// background for the icon, `icon` will be used, i.e. the last method
    /// called between `gtk_numerable_icon_set_background_gicon()` and
    /// `gtk_numerable_icon_set_background_icon_name()` has always priority.
    ///
    /// **set_background_gicon is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func setBackgroundIcon(icon: GIO.IconRef? = nil) {
        gtk_numerable_icon_set_background_gicon(numerable_icon_ptr, icon?.icon_ptr)
    
    }
    /// Updates the icon to use `icon` as the base background image.
    /// If `icon` is `nil`, `self` will go back using style information
    /// or default theming for its background image.
    /// 
    /// If this method is called and an icon name was already set as
    /// background for the icon, `icon` will be used, i.e. the last method
    /// called between `gtk_numerable_icon_set_background_gicon()` and
    /// `gtk_numerable_icon_set_background_icon_name()` has always priority.
    ///
    /// **set_background_gicon is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func setBackgroundIcon<IconT: GIO.IconProtocol>(icon: IconT?) {
        gtk_numerable_icon_set_background_gicon(numerable_icon_ptr, icon?.icon_ptr)
    
    }

    /// Updates the icon to use the icon named `icon_name` from the
    /// current icon theme as the base background image. If `icon_name`
    /// is `nil`, `self` will go back using style information or default
    /// theming for its background image.
    /// 
    /// If this method is called and a `GIcon` was already set as
    /// background for the icon, `icon_name` will be used, i.e. the
    /// last method called between `gtk_numerable_icon_set_background_icon_name()`
    /// and `gtk_numerable_icon_set_background_gicon()` has always priority.
    ///
    /// **set_background_icon_name is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func setBackground(iconName: UnsafePointer<gchar>? = nil) {
        gtk_numerable_icon_set_background_icon_name(numerable_icon_ptr, iconName)
    
    }

    /// Sets the currently displayed value of `self` to `count`.
    /// 
    /// The numeric value is always clamped to make it two digits, i.e.
    /// between -99 and 99. Setting a count of zero removes the emblem.
    /// If this method is called, and a label was already set on the icon,
    /// it will automatically be reset to `nil` before rendering the number,
    /// i.e. the last method called between `gtk_numerable_icon_set_count()`
    /// and `gtk_numerable_icon_set_label()` has always priority.
    ///
    /// **set_count is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func set(count: Int) {
        gtk_numerable_icon_set_count(numerable_icon_ptr, gint(count))
    
    }

    /// Sets the currently displayed value of `self` to the string
    /// in `label`. Setting an empty label removes the emblem.
    /// 
    /// Note that this is meant for displaying short labels, such as
    /// roman numbers, or single letters. For roman numbers, consider
    /// using the Unicode characters U+2160 - U+217F. Strings longer
    /// than two characters will likely not be rendered very well.
    /// 
    /// If this method is called, and a number was already set on the
    /// icon, it will automatically be reset to zero before rendering
    /// the label, i.e. the last method called between
    /// `gtk_numerable_icon_set_label()` and `gtk_numerable_icon_set_count()`
    /// has always priority.
    ///
    /// **set_label is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func set(label: UnsafePointer<gchar>? = nil) {
        gtk_numerable_icon_set_label(numerable_icon_ptr, label)
    
    }

    /// Updates the icon to fetch theme information from the
    /// given `GtkStyleContext`.
    ///
    /// **set_style_context is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func setStyleContext<StyleContextT: StyleContextProtocol>(style: StyleContextT) {
        gtk_numerable_icon_set_style_context(numerable_icon_ptr, style.style_context_ptr)
    
    }
    /// Returns the `GIcon` that was set as the base background image, or
    /// `nil` if there’s none. The caller of this function does not own
    /// a reference to the returned `GIcon`.
    ///
    /// **get_background_gicon is deprecated:**
    /// This method is deprecated.
    @inlinable var backgroundIcon: GIO.IconRef! {
        /// Returns the `GIcon` that was set as the base background image, or
        /// `nil` if there’s none. The caller of this function does not own
        /// a reference to the returned `GIcon`.
        ///
        /// **get_background_gicon is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated)
    get {
            let rv = GIO.IconRef(gtk_numerable_icon_get_background_gicon(numerable_icon_ptr))
            return rv
        }
        /// Updates the icon to use `icon` as the base background image.
        /// If `icon` is `nil`, `self` will go back using style information
        /// or default theming for its background image.
        /// 
        /// If this method is called and an icon name was already set as
        /// background for the icon, `icon` will be used, i.e. the last method
        /// called between `gtk_numerable_icon_set_background_gicon()` and
        /// `gtk_numerable_icon_set_background_icon_name()` has always priority.
        ///
        /// **set_background_gicon is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated)
    nonmutating set {
            gtk_numerable_icon_set_background_gicon(numerable_icon_ptr, UnsafeMutablePointer<GIcon>(newValue?.icon_ptr))
        }
    }

    /// Returns the icon name used as the base background image,
    /// or `nil` if there’s none.
    ///
    /// **get_background_icon_name is deprecated:**
    /// This method is deprecated.
    @inlinable var backgroundIconName: String! {
        /// Returns the icon name used as the base background image,
        /// or `nil` if there’s none.
        ///
        /// **get_background_icon_name is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated)
    get {
            let rv = gtk_numerable_icon_get_background_icon_name(numerable_icon_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Updates the icon to use the icon named `icon_name` from the
        /// current icon theme as the base background image. If `icon_name`
        /// is `nil`, `self` will go back using style information or default
        /// theming for its background image.
        /// 
        /// If this method is called and a `GIcon` was already set as
        /// background for the icon, `icon_name` will be used, i.e. the
        /// last method called between `gtk_numerable_icon_set_background_icon_name()`
        /// and `gtk_numerable_icon_set_background_gicon()` has always priority.
        ///
        /// **set_background_icon_name is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated)
    nonmutating set {
            gtk_numerable_icon_set_background_icon_name(numerable_icon_ptr, newValue)
        }
    }

    @inlinable var count: Int {
        /// Returns the value currently displayed by `self`.
        ///
        /// **get_count is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated)
    get {
            let rv = Int(gtk_numerable_icon_get_count(numerable_icon_ptr))
            return rv
        }
        /// Sets the currently displayed value of `self` to `count`.
        /// 
        /// The numeric value is always clamped to make it two digits, i.e.
        /// between -99 and 99. Setting a count of zero removes the emblem.
        /// If this method is called, and a label was already set on the icon,
        /// it will automatically be reset to `nil` before rendering the number,
        /// i.e. the last method called between `gtk_numerable_icon_set_count()`
        /// and `gtk_numerable_icon_set_label()` has always priority.
        ///
        /// **set_count is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated)
    nonmutating set {
            gtk_numerable_icon_set_count(numerable_icon_ptr, gint(newValue))
        }
    }

    @inlinable var label: String! {
        /// Returns the currently displayed label of the icon, or `nil`.
        ///
        /// **get_label is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated)
    get {
            let rv = gtk_numerable_icon_get_label(numerable_icon_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the currently displayed value of `self` to the string
        /// in `label`. Setting an empty label removes the emblem.
        /// 
        /// Note that this is meant for displaying short labels, such as
        /// roman numbers, or single letters. For roman numbers, consider
        /// using the Unicode characters U+2160 - U+217F. Strings longer
        /// than two characters will likely not be rendered very well.
        /// 
        /// If this method is called, and a number was already set on the
        /// icon, it will automatically be reset to zero before rendering
        /// the label, i.e. the last method called between
        /// `gtk_numerable_icon_set_label()` and `gtk_numerable_icon_set_count()`
        /// has always priority.
        ///
        /// **set_label is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated)
    nonmutating set {
            gtk_numerable_icon_set_label(numerable_icon_ptr, newValue)
        }
    }

    /// Returns the `GtkStyleContext` used by the icon for theming,
    /// or `nil` if there’s none.
    ///
    /// **get_style_context is deprecated:**
    /// This method is deprecated.
    @inlinable var styleContext: StyleContextRef! {
        /// Returns the `GtkStyleContext` used by the icon for theming,
        /// or `nil` if there’s none.
        ///
        /// **get_style_context is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated)
    get {
            let rv = StyleContextRef(gconstpointer: gconstpointer(gtk_numerable_icon_get_style_context(numerable_icon_ptr)))
            return rv
        }
        /// Updates the icon to fetch theme information from the
        /// given `GtkStyleContext`.
        ///
        /// **set_style_context is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated)
    nonmutating set {
            gtk_numerable_icon_set_style_context(numerable_icon_ptr, UnsafeMutablePointer<GtkStyleContext>(newValue?.style_context_ptr))
        }
    }

    @inlinable var parent: GEmblemedIcon {
        get {
            let rv = numerable_icon_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - OffscreenWindow Class

/// The `OffscreenWindowProtocol` protocol exposes the methods and properties of an underlying `GtkOffscreenWindow` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `OffscreenWindow`.
/// Alternatively, use `OffscreenWindowRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkOffscreenWindow is strictly intended to be used for obtaining
/// snapshots of widgets that are not part of a normal widget hierarchy.
/// Since `GtkOffscreenWindow` is a toplevel widget you cannot obtain
/// snapshots of a full window with it since you cannot pack a toplevel
/// widget in another toplevel.
/// 
/// The idea is to take a widget and manually set the state of it,
/// add it to a GtkOffscreenWindow and then retrieve the snapshot
/// as a `cairo_surface_t` or `GdkPixbuf`.
/// 
/// GtkOffscreenWindow derives from `GtkWindow` only as an implementation
/// detail.  Applications should not use any API specific to `GtkWindow`
/// to operate on this object.  It should be treated as a `GtkBin` that
/// has no parent widget.
/// 
/// When contained offscreen widgets are redrawn, GtkOffscreenWindow
/// will emit a `GtkWidget::damage`-event signal.
public protocol OffscreenWindowProtocol: WindowProtocol {
        /// Untyped pointer to the underlying `GtkOffscreenWindow` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkOffscreenWindow` instance.
    var offscreen_window_ptr: UnsafeMutablePointer<GtkOffscreenWindow>! { get }

}

/// The `OffscreenWindowRef` type acts as a lightweight Swift reference to an underlying `GtkOffscreenWindow` instance.
/// It exposes methods that can operate on this data type through `OffscreenWindowProtocol` conformance.
/// Use `OffscreenWindowRef` only as an `unowned` reference to an existing `GtkOffscreenWindow` instance.
///
/// GtkOffscreenWindow is strictly intended to be used for obtaining
/// snapshots of widgets that are not part of a normal widget hierarchy.
/// Since `GtkOffscreenWindow` is a toplevel widget you cannot obtain
/// snapshots of a full window with it since you cannot pack a toplevel
/// widget in another toplevel.
/// 
/// The idea is to take a widget and manually set the state of it,
/// add it to a GtkOffscreenWindow and then retrieve the snapshot
/// as a `cairo_surface_t` or `GdkPixbuf`.
/// 
/// GtkOffscreenWindow derives from `GtkWindow` only as an implementation
/// detail.  Applications should not use any API specific to `GtkWindow`
/// to operate on this object.  It should be treated as a `GtkBin` that
/// has no parent widget.
/// 
/// When contained offscreen widgets are redrawn, GtkOffscreenWindow
/// will emit a `GtkWidget::damage`-event signal.
public struct OffscreenWindowRef: OffscreenWindowProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkOffscreenWindow` instance.
    /// For type-safe access, use the generated, typed pointer `offscreen_window_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension OffscreenWindowRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkOffscreenWindow>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkOffscreenWindow>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkOffscreenWindow>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkOffscreenWindow>?) {
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

    /// Reference intialiser for a related type that implements `OffscreenWindowProtocol`
    @inlinable init<T: OffscreenWindowProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: OffscreenWindowProtocol>(_ other: T) -> OffscreenWindowRef { OffscreenWindowRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenWindowProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenWindowProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenWindowProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenWindowProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenWindowProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a toplevel container widget that is used to retrieve
    /// snapshots of widgets without showing them on the screen.
    @inlinable init() {
        let rv = gtk_offscreen_window_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `OffscreenWindow` type acts as a reference-counted owner of an underlying `GtkOffscreenWindow` instance.
/// It provides the methods that can operate on this data type through `OffscreenWindowProtocol` conformance.
/// Use `OffscreenWindow` as a strong reference or owner of a `GtkOffscreenWindow` instance.
///
/// GtkOffscreenWindow is strictly intended to be used for obtaining
/// snapshots of widgets that are not part of a normal widget hierarchy.
/// Since `GtkOffscreenWindow` is a toplevel widget you cannot obtain
/// snapshots of a full window with it since you cannot pack a toplevel
/// widget in another toplevel.
/// 
/// The idea is to take a widget and manually set the state of it,
/// add it to a GtkOffscreenWindow and then retrieve the snapshot
/// as a `cairo_surface_t` or `GdkPixbuf`.
/// 
/// GtkOffscreenWindow derives from `GtkWindow` only as an implementation
/// detail.  Applications should not use any API specific to `GtkWindow`
/// to operate on this object.  It should be treated as a `GtkBin` that
/// has no parent widget.
/// 
/// When contained offscreen widgets are redrawn, GtkOffscreenWindow
/// will emit a `GtkWidget::damage`-event signal.
open class OffscreenWindow: Window, OffscreenWindowProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OffscreenWindow` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkOffscreenWindow>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OffscreenWindow` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkOffscreenWindow>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OffscreenWindow` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OffscreenWindow` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OffscreenWindow` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkOffscreenWindow>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OffscreenWindow` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkOffscreenWindow>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkOffscreenWindow`.
    /// i.e., ownership is transferred to the `OffscreenWindow` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkOffscreenWindow>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `OffscreenWindowProtocol`
    /// Will retain `GtkOffscreenWindow`.
    /// - Parameter other: an instance of a related type that implements `OffscreenWindowProtocol`
    @inlinable public init<T: OffscreenWindowProtocol>(offscreenWindow other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenWindowProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenWindowProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenWindowProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenWindowProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenWindowProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenWindowProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenWindowProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OffscreenWindowProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a toplevel container widget that is used to retrieve
    /// snapshots of widgets without showing them on the screen.
    @inlinable public init() {
        let rv = gtk_offscreen_window_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum OffscreenWindowPropertyName: String, PropertyNameProtocol {
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

public extension OffscreenWindowProtocol {
    /// Bind a `OffscreenWindowPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: OffscreenWindowPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a OffscreenWindow property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: OffscreenWindowPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a OffscreenWindow property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: OffscreenWindowPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: OffscreenWindow has no signals// MARK: OffscreenWindow Class: OffscreenWindowProtocol extension (methods and fields)
public extension OffscreenWindowProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkOffscreenWindow` instance.
    @inlinable var offscreen_window_ptr: UnsafeMutablePointer<GtkOffscreenWindow>! { return ptr?.assumingMemoryBound(to: GtkOffscreenWindow.self) }

    /// Retrieves a snapshot of the contained widget in the form of
    /// a `GdkPixbuf`.  This is a new pixbuf with a reference count of 1,
    /// and the application should unreference it once it is no longer
    /// needed.
    @inlinable func getPixbuf() -> PixbufRef! {
        let rv = PixbufRef(gconstpointer: gconstpointer(gtk_offscreen_window_get_pixbuf(offscreen_window_ptr)))
        return rv
    }

    /// Retrieves a snapshot of the contained widget in the form of
    /// a `cairo_surface_t`.  If you need to keep this around over window
    /// resizes then you should add a reference to it.
    @inlinable func getSurface() -> Cairo.SurfaceRef! {
        let rv = Cairo.SurfaceRef(gtk_offscreen_window_get_surface(offscreen_window_ptr))
        return rv
    }
    /// Retrieves a snapshot of the contained widget in the form of
    /// a `GdkPixbuf`.  This is a new pixbuf with a reference count of 1,
    /// and the application should unreference it once it is no longer
    /// needed.
    @inlinable var pixbuf: PixbufRef! {
        /// Retrieves a snapshot of the contained widget in the form of
        /// a `GdkPixbuf`.  This is a new pixbuf with a reference count of 1,
        /// and the application should unreference it once it is no longer
        /// needed.
        get {
            let rv = PixbufRef(gconstpointer: gconstpointer(gtk_offscreen_window_get_pixbuf(offscreen_window_ptr)))
            return rv
        }
    }

    /// Retrieves a snapshot of the contained widget in the form of
    /// a `cairo_surface_t`.  If you need to keep this around over window
    /// resizes then you should add a reference to it.
    @inlinable var surface: Cairo.SurfaceRef! {
        /// Retrieves a snapshot of the contained widget in the form of
        /// a `cairo_surface_t`.  If you need to keep this around over window
        /// resizes then you should add a reference to it.
        get {
            let rv = Cairo.SurfaceRef(gtk_offscreen_window_get_surface(offscreen_window_ptr))
            return rv
        }
    }

    @inlinable var parentObject: GtkWindow {
        get {
            let rv = offscreen_window_ptr.pointee.parent_object
            return rv
        }
    }

}



